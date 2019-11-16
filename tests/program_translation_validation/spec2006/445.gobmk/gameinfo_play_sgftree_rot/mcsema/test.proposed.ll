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

declare %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4e2990.rotate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404430.sgftreeBack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
@G_0xafdfb0= global %G_0xafdfb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4097__rip__type = type <{ [4 x i8] }>
@G_0xb4097__rip_= global %G_0xb4097__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb40a5__rip__type = type <{ [4 x i8] }>
@G_0xb40a5__rip_= global %G_0xb40a5__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
@G_0xb6eec4= global %G_0xb6eec4_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x579c47_type = type <{ [8 x i8] }>
@G__0x579c47= global %G__0x579c47_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x579c4a_type = type <{ [8 x i8] }>
@G__0x579c4a= global %G__0x579c4a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ca87_type = type <{ [8 x i8] }>
@G__0x57ca87= global %G__0x57ca87_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57cac0_type = type <{ [8 x i8] }>
@G__0x57cac0= global %G__0x57cac0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57cad7_type = type <{ [8 x i8] }>
@G__0x57cad7= global %G__0x57cad7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57caf9_type = type <{ [8 x i8] }>
@G__0x57caf9= global %G__0x57caf9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57cb03_type = type <{ [8 x i8] }>
@G__0x57cb03= global %G__0x57cb03_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57cb47_type = type <{ [8 x i8] }>
@G__0x57cb47= global %G__0x57cb47_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @gameinfo_play_sgftree_rot(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .gameinfo_play_sgftree_rot:	 RIP: 42f020	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42f020	 Bytes: 1
  %loadMem_42f020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f020 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f020)
  store %struct.Memory* %call_42f020, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42f021	 Bytes: 3
  %loadMem_42f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f021 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f021)
  store %struct.Memory* %call_42f021, %struct.Memory** %MEMORY

  ; Code: subq $0xb0, %rsp	 RIP: 42f024	 Bytes: 7
  %loadMem_42f024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f024 = call %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f024)
  store %struct.Memory* %call_42f024, %struct.Memory** %MEMORY

  ; Code: movq $0x579c4a, %rax	 RIP: 42f02b	 Bytes: 10
  %loadMem_42f02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f02b = call %struct.Memory* @routine_movq__0x579c4a___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f02b)
  store %struct.Memory* %call_42f02b, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %r8	 RIP: 42f035	 Bytes: 4
  %loadMem_42f035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f035 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f035)
  store %struct.Memory* %call_42f035, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 42f039	 Bytes: 4
  %loadMem_42f039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f039 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f039)
  store %struct.Memory* %call_42f039, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 42f03d	 Bytes: 4
  %loadMem_42f03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f03d = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f03d)
  store %struct.Memory* %call_42f03d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 42f041	 Bytes: 4
  %loadMem_42f041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f041 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f041)
  store %struct.Memory* %call_42f041, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 42f045	 Bytes: 3
  %loadMem_42f045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f045 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f045)
  store %struct.Memory* %call_42f045, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x34(%rbp)	 RIP: 42f048	 Bytes: 7
  %loadMem_42f048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f048 = call %struct.Memory* @routine_movl__0x2__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f048)
  store %struct.Memory* %call_42f048, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x38(%rbp)	 RIP: 42f04f	 Bytes: 7
  %loadMem_42f04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f04f = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f04f)
  store %struct.Memory* %call_42f04f, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x3c(%rbp)	 RIP: 42f056	 Bytes: 7
  %loadMem_42f056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f056 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f056)
  store %struct.Memory* %call_42f056, %struct.Memory** %MEMORY

  ; Code: movl $0x270f, -0x40(%rbp)	 RIP: 42f05d	 Bytes: 7
  %loadMem_42f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f05d = call %struct.Memory* @routine_movl__0x270f__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f05d)
  store %struct.Memory* %call_42f05d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42f064	 Bytes: 7
  %loadMem_42f064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f064 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f064)
  store %struct.Memory* %call_42f064, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 42f06b	 Bytes: 4
  %loadMem_42f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f06b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f06b)
  store %struct.Memory* %call_42f06b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdi	 RIP: 42f06f	 Bytes: 3
  %loadMem_42f06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f06f = call %struct.Memory* @routine_movq___rdx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f06f)
  store %struct.Memory* %call_42f06f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42f072	 Bytes: 3
  %loadMem_42f072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f072 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f072)
  store %struct.Memory* %call_42f072, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 42f075	 Bytes: 3
  %loadMem_42f075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f075 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f075)
  store %struct.Memory* %call_42f075, %struct.Memory** %MEMORY

  ; Code: callq .sgfGetFloatProperty	 RIP: 42f078	 Bytes: 5
  %loadMem1_42f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f078 = call %struct.Memory* @routine_callq_.sgfGetFloatProperty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f078, i64 -184952, i64 5, i64 5)
  store %struct.Memory* %call1_42f078, %struct.Memory** %MEMORY

  %loadMem2_42f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f078 = load i64, i64* %3
  %call2_42f078 = call %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* %0, i64  %loadPC_42f078, %struct.Memory* %loadMem2_42f078)
  store %struct.Memory* %call2_42f078, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f07d	 Bytes: 3
  %loadMem_42f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f07d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f07d)
  store %struct.Memory* %call_42f07d, %struct.Memory** %MEMORY

  ; Code: jne .L_42f0b7	 RIP: 42f080	 Bytes: 6
  %loadMem_42f080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f080 = call %struct.Memory* @routine_jne_.L_42f0b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f080, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_42f080, %struct.Memory** %MEMORY

  %loadBr_42f080 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f080 = icmp eq i8 %loadBr_42f080, 1
  br i1 %cmpBr_42f080, label %block_.L_42f0b7, label %block_42f086

block_42f086:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42f086	 Bytes: 4
  %loadMem_42f086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f086 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f086)
  store %struct.Memory* %call_42f086, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 42f08a	 Bytes: 3
  %loadMem_42f08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f08a = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f08a)
  store %struct.Memory* %call_42f08a, %struct.Memory** %MEMORY

  ; Code: jne .L_42f0a5	 RIP: 42f08d	 Bytes: 6
  %loadMem_42f08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f08d = call %struct.Memory* @routine_jne_.L_42f0a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f08d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_42f08d, %struct.Memory** %MEMORY

  %loadBr_42f08d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f08d = icmp eq i8 %loadBr_42f08d, 1
  br i1 %cmpBr_42f08d, label %block_.L_42f0a5, label %block_42f093

block_42f093:
  ; Code: movss 0xb40a5(%rip), %xmm0	 RIP: 42f093	 Bytes: 8
  %loadMem_42f093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f093 = call %struct.Memory* @routine_movss_0xb40a5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f093)
  store %struct.Memory* %call_42f093, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x30(%rbp)	 RIP: 42f09b	 Bytes: 5
  %loadMem_42f09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f09b = call %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f09b)
  store %struct.Memory* %call_42f09b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f0b2	 RIP: 42f0a0	 Bytes: 5
  %loadMem_42f0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0a0 = call %struct.Memory* @routine_jmpq_.L_42f0b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0a0, i64 18, i64 5)
  store %struct.Memory* %call_42f0a0, %struct.Memory** %MEMORY

  br label %block_.L_42f0b2

  ; Code: .L_42f0a5:	 RIP: 42f0a5	 Bytes: 0
block_.L_42f0a5:

  ; Code: movss 0xb4097(%rip), %xmm0	 RIP: 42f0a5	 Bytes: 8
  %loadMem_42f0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0a5 = call %struct.Memory* @routine_movss_0xb4097__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0a5)
  store %struct.Memory* %call_42f0a5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x30(%rbp)	 RIP: 42f0ad	 Bytes: 5
  %loadMem_42f0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0ad = call %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0ad)
  store %struct.Memory* %call_42f0ad, %struct.Memory** %MEMORY

  ; Code: .L_42f0b2:	 RIP: 42f0b2	 Bytes: 0
  br label %block_.L_42f0b2
block_.L_42f0b2:

  ; Code: jmpq .L_42f0b7	 RIP: 42f0b2	 Bytes: 5
  %loadMem_42f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0b2 = call %struct.Memory* @routine_jmpq_.L_42f0b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0b2, i64 5, i64 5)
  store %struct.Memory* %call_42f0b2, %struct.Memory** %MEMORY

  br label %block_.L_42f0b7

  ; Code: .L_42f0b7:	 RIP: 42f0b7	 Bytes: 0
block_.L_42f0b7:

  ; Code: movq $0x579c47, %rsi	 RIP: 42f0b7	 Bytes: 10
  %loadMem_42f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0b7 = call %struct.Memory* @routine_movq__0x579c47___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0b7)
  store %struct.Memory* %call_42f0b7, %struct.Memory** %MEMORY

  ; Code: leaq -0x28(%rbp), %rdx	 RIP: 42f0c1	 Bytes: 4
  %loadMem_42f0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0c1 = call %struct.Memory* @routine_leaq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0c1)
  store %struct.Memory* %call_42f0c1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42f0c5	 Bytes: 4
  %loadMem_42f0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0c5)
  store %struct.Memory* %call_42f0c5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 42f0c9	 Bytes: 3
  %loadMem_42f0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0c9 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0c9)
  store %struct.Memory* %call_42f0c9, %struct.Memory** %MEMORY

  ; Code: callq .sgfGetIntProperty	 RIP: 42f0cc	 Bytes: 5
  %loadMem1_42f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f0cc = call %struct.Memory* @routine_callq_.sgfGetIntProperty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f0cc, i64 -185196, i64 5, i64 5)
  store %struct.Memory* %call1_42f0cc, %struct.Memory** %MEMORY

  %loadMem2_42f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0cc = load i64, i64* %3
  %call2_42f0cc = call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* %0, i64  %loadPC_42f0cc, %struct.Memory* %loadMem2_42f0cc)
  store %struct.Memory* %call2_42f0cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f0d1	 Bytes: 3
  %loadMem_42f0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0d1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0d1)
  store %struct.Memory* %call_42f0d1, %struct.Memory** %MEMORY

  ; Code: jne .L_42f0e1	 RIP: 42f0d4	 Bytes: 6
  %loadMem_42f0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0d4 = call %struct.Memory* @routine_jne_.L_42f0e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0d4, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_42f0d4, %struct.Memory** %MEMORY

  %loadBr_42f0d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f0d4 = icmp eq i8 %loadBr_42f0d4, 1
  br i1 %cmpBr_42f0d4, label %block_.L_42f0e1, label %block_42f0da

block_42f0da:
  ; Code: movl $0x13, -0x28(%rbp)	 RIP: 42f0da	 Bytes: 7
  %loadMem_42f0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0da = call %struct.Memory* @routine_movl__0x13__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0da)
  store %struct.Memory* %call_42f0da, %struct.Memory** %MEMORY

  ; Code: .L_42f0e1:	 RIP: 42f0e1	 Bytes: 0
  br label %block_.L_42f0e1
block_.L_42f0e1:

  ; Code: movl -0x28(%rbp), %edi	 RIP: 42f0e1	 Bytes: 3
  %loadMem_42f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0e1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0e1)
  store %struct.Memory* %call_42f0e1, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_clear_board	 RIP: 42f0e4	 Bytes: 5
  %loadMem1_42f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f0e4 = call %struct.Memory* @routine_callq_.gnugo_clear_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f0e4, i64 -3252, i64 5, i64 5)
  store %struct.Memory* %call1_42f0e4, %struct.Memory** %MEMORY

  %loadMem2_42f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0e4 = load i64, i64* %3
  %call2_42f0e4 = call %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* %0, i64  %loadPC_42f0e4, %struct.Memory* %loadMem2_42f0e4)
  store %struct.Memory* %call2_42f0e4, %struct.Memory** %MEMORY

  ; Code: movss -0x30(%rbp), %xmm0	 RIP: 42f0e9	 Bytes: 5
  %loadMem_42f0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0e9 = call %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0e9)
  store %struct.Memory* %call_42f0e9, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_set_komi	 RIP: 42f0ee	 Bytes: 5
  %loadMem1_42f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f0ee = call %struct.Memory* @routine_callq_.gnugo_set_komi(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f0ee, i64 -3150, i64 5, i64 5)
  store %struct.Memory* %call1_42f0ee, %struct.Memory** %MEMORY

  %loadMem2_42f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0ee = load i64, i64* %3
  %call2_42f0ee = call %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* %0, i64  %loadPC_42f0ee, %struct.Memory* %loadMem2_42f0ee)
  store %struct.Memory* %call2_42f0ee, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 42f0f3	 Bytes: 5
  %loadMem_42f0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0f3 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0f3)
  store %struct.Memory* %call_42f0f3, %struct.Memory** %MEMORY

  ; Code: je .L_42f1ed	 RIP: 42f0f8	 Bytes: 6
  %loadMem_42f0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0f8 = call %struct.Memory* @routine_je_.L_42f1ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0f8, i8* %BRANCH_TAKEN, i64 245, i64 6, i64 6)
  store %struct.Memory* %call_42f0f8, %struct.Memory** %MEMORY

  %loadBr_42f0f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f0f8 = icmp eq i8 %loadBr_42f0f8, 1
  br i1 %cmpBr_42f0f8, label %block_.L_42f1ed, label %block_42f0fe

block_42f0fe:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 42f0fe	 Bytes: 4
  %loadMem_42f0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f0fe = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f0fe)
  store %struct.Memory* %call_42f0fe, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f102	 Bytes: 3
  %loadMem_42f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f102 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f102)
  store %struct.Memory* %call_42f102, %struct.Memory** %MEMORY

  ; Code: cmpl $0x30, %ecx	 RIP: 42f105	 Bytes: 3
  %loadMem_42f105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f105 = call %struct.Memory* @routine_cmpl__0x30___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f105)
  store %struct.Memory* %call_42f105, %struct.Memory** %MEMORY

  ; Code: jle .L_42f160	 RIP: 42f108	 Bytes: 6
  %loadMem_42f108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f108 = call %struct.Memory* @routine_jle_.L_42f160(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f108, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_42f108, %struct.Memory** %MEMORY

  %loadBr_42f108 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f108 = icmp eq i8 %loadBr_42f108, 1
  br i1 %cmpBr_42f108, label %block_.L_42f160, label %block_42f10e

block_42f10e:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 42f10e	 Bytes: 4
  %loadMem_42f10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f10e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f10e)
  store %struct.Memory* %call_42f10e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f112	 Bytes: 3
  %loadMem_42f112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f112 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f112)
  store %struct.Memory* %call_42f112, %struct.Memory** %MEMORY

  ; Code: cmpl $0x39, %ecx	 RIP: 42f115	 Bytes: 3
  %loadMem_42f115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f115 = call %struct.Memory* @routine_cmpl__0x39___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f115)
  store %struct.Memory* %call_42f115, %struct.Memory** %MEMORY

  ; Code: jg .L_42f160	 RIP: 42f118	 Bytes: 6
  %loadMem_42f118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f118 = call %struct.Memory* @routine_jg_.L_42f160(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f118, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_42f118, %struct.Memory** %MEMORY

  %loadBr_42f118 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f118 = icmp eq i8 %loadBr_42f118, 1
  br i1 %cmpBr_42f118, label %block_.L_42f160, label %block_42f11e

block_42f11e:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42f11e	 Bytes: 4
  %loadMem_42f11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f11e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f11e)
  store %struct.Memory* %call_42f11e, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 42f122	 Bytes: 5
  %loadMem1_42f122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f122 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f122, i64 -188274, i64 5, i64 5)
  store %struct.Memory* %call1_42f122, %struct.Memory** %MEMORY

  %loadMem2_42f122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f122 = load i64, i64* %3
  %call2_42f122 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_42f122, %struct.Memory* %loadMem2_42f122)
  store %struct.Memory* %call2_42f122, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 42f127	 Bytes: 3
  %loadMem_42f127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f127 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f127)
  store %struct.Memory* %call_42f127, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %eax	 RIP: 42f12a	 Bytes: 7
  %loadMem_42f12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f12a = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f12a)
  store %struct.Memory* %call_42f12a, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %eax	 RIP: 42f131	 Bytes: 5
  %loadMem_42f131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f131 = call %struct.Memory* @routine_andl__0x80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f131)
  store %struct.Memory* %call_42f131, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f136	 Bytes: 3
  %loadMem_42f136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f136 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f136)
  store %struct.Memory* %call_42f136, %struct.Memory** %MEMORY

  ; Code: jne .L_42f144	 RIP: 42f139	 Bytes: 6
  %loadMem_42f139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f139 = call %struct.Memory* @routine_jne_.L_42f144(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f139, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42f139, %struct.Memory** %MEMORY

  %loadBr_42f139 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f139 = icmp eq i8 %loadBr_42f139, 1
  br i1 %cmpBr_42f139, label %block_.L_42f144, label %block_42f13f

block_42f13f:
  ; Code: jmpq .L_42f15b	 RIP: 42f13f	 Bytes: 5
  %loadMem_42f13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f13f = call %struct.Memory* @routine_jmpq_.L_42f15b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f13f, i64 28, i64 5)
  store %struct.Memory* %call_42f13f, %struct.Memory** %MEMORY

  br label %block_.L_42f15b

  ; Code: .L_42f144:	 RIP: 42f144	 Bytes: 0
block_.L_42f144:

  ; Code: movq $0x57cac0, %rdi	 RIP: 42f144	 Bytes: 10
  %loadMem_42f144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f144 = call %struct.Memory* @routine_movq__0x57cac0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f144)
  store %struct.Memory* %call_42f144, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %esi	 RIP: 42f14e	 Bytes: 3
  %loadMem_42f14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f14e = call %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f14e)
  store %struct.Memory* %call_42f14e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42f151	 Bytes: 2
  %loadMem_42f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f151 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f151)
  store %struct.Memory* %call_42f151, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42f153	 Bytes: 5
  %loadMem1_42f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f153 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f153, i64 142429, i64 5, i64 5)
  store %struct.Memory* %call1_42f153, %struct.Memory** %MEMORY

  %loadMem2_42f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f153 = load i64, i64* %3
  %call2_42f153 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42f153, %struct.Memory* %loadMem2_42f153)
  store %struct.Memory* %call2_42f153, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 42f158	 Bytes: 3
  %loadMem_42f158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f158 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f158)
  store %struct.Memory* %call_42f158, %struct.Memory** %MEMORY

  ; Code: .L_42f15b:	 RIP: 42f15b	 Bytes: 0
  br label %block_.L_42f15b
block_.L_42f15b:

  ; Code: jmpq .L_42f1e8	 RIP: 42f15b	 Bytes: 5
  %loadMem_42f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f15b = call %struct.Memory* @routine_jmpq_.L_42f1e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f15b, i64 141, i64 5)
  store %struct.Memory* %call_42f15b, %struct.Memory** %MEMORY

  br label %block_.L_42f1e8

  ; Code: .L_42f160:	 RIP: 42f160	 Bytes: 0
block_.L_42f160:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42f160	 Bytes: 4
  %loadMem_42f160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f160 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f160)
  store %struct.Memory* %call_42f160, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f164	 Bytes: 3
  %loadMem_42f164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f164 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f164)
  store %struct.Memory* %call_42f164, %struct.Memory** %MEMORY

  ; Code: subl $0x41, %ecx	 RIP: 42f167	 Bytes: 3
  %loadMem_42f167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f167 = call %struct.Memory* @routine_subl__0x41___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f167)
  store %struct.Memory* %call_42f167, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 42f16a	 Bytes: 3
  %loadMem_42f16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f16a = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f16a)
  store %struct.Memory* %call_42f16a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42f16d	 Bytes: 4
  %loadMem_42f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f16d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f16d)
  store %struct.Memory* %call_42f16d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f171	 Bytes: 3
  %loadMem_42f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f171 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f171)
  store %struct.Memory* %call_42f171, %struct.Memory** %MEMORY

  ; Code: cmpl $0x49, %ecx	 RIP: 42f174	 Bytes: 3
  %loadMem_42f174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f174 = call %struct.Memory* @routine_cmpl__0x49___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f174)
  store %struct.Memory* %call_42f174, %struct.Memory** %MEMORY

  ; Code: jl .L_42f186	 RIP: 42f177	 Bytes: 6
  %loadMem_42f177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f177 = call %struct.Memory* @routine_jl_.L_42f186(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f177, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_42f177, %struct.Memory** %MEMORY

  %loadBr_42f177 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f177 = icmp eq i8 %loadBr_42f177, 1
  br i1 %cmpBr_42f177, label %block_.L_42f186, label %block_42f17d

block_42f17d:
  ; Code: movl -0x3c(%rbp), %eax	 RIP: 42f17d	 Bytes: 3
  %loadMem_42f17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f17d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f17d)
  store %struct.Memory* %call_42f17d, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 42f180	 Bytes: 3
  %loadMem_42f180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f180 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f180)
  store %struct.Memory* %call_42f180, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 42f183	 Bytes: 3
  %loadMem_42f183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f183 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f183)
  store %struct.Memory* %call_42f183, %struct.Memory** %MEMORY

  ; Code: .L_42f186:	 RIP: 42f186	 Bytes: 0
  br label %block_.L_42f186
block_.L_42f186:

  ; Code: movl 0x7ae438, %eax	 RIP: 42f186	 Bytes: 7
  %loadMem_42f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f186 = call %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f186)
  store %struct.Memory* %call_42f186, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42f18d	 Bytes: 4
  %loadMem_42f18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f18d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f18d)
  store %struct.Memory* %call_42f18d, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 42f191	 Bytes: 4
  %loadMem_42f191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f191 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f191)
  store %struct.Memory* %call_42f191, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 42f195	 Bytes: 3
  %loadMem_42f195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f195 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f195)
  store %struct.Memory* %call_42f195, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 42f198	 Bytes: 3
  %loadMem_42f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f198 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f198)
  store %struct.Memory* %call_42f198, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 42f19b	 Bytes: 5
  %loadMem1_42f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f19b = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f19b, i64 -188395, i64 5, i64 5)
  store %struct.Memory* %call1_42f19b, %struct.Memory** %MEMORY

  %loadMem2_42f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f19b = load i64, i64* %3
  %call2_42f19b = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_42f19b, %struct.Memory* %loadMem2_42f19b)
  store %struct.Memory* %call2_42f19b, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %edx	 RIP: 42f1a0	 Bytes: 3
  %loadMem_42f1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1a0 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1a0)
  store %struct.Memory* %call_42f1a0, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edx	 RIP: 42f1a3	 Bytes: 2
  %loadMem_42f1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1a3 = call %struct.Memory* @routine_subl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1a3)
  store %struct.Memory* %call_42f1a3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x38(%rbp)	 RIP: 42f1a5	 Bytes: 3
  %loadMem_42f1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1a5 = call %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1a5)
  store %struct.Memory* %call_42f1a5, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %eax	 RIP: 42f1a8	 Bytes: 7
  %loadMem_42f1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1a8 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1a8)
  store %struct.Memory* %call_42f1a8, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %eax	 RIP: 42f1af	 Bytes: 5
  %loadMem_42f1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1af = call %struct.Memory* @routine_andl__0x80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1af)
  store %struct.Memory* %call_42f1af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f1b4	 Bytes: 3
  %loadMem_42f1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1b4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1b4)
  store %struct.Memory* %call_42f1b4, %struct.Memory** %MEMORY

  ; Code: jne .L_42f1c2	 RIP: 42f1b7	 Bytes: 6
  %loadMem_42f1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1b7 = call %struct.Memory* @routine_jne_.L_42f1c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1b7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42f1b7, %struct.Memory** %MEMORY

  %loadBr_42f1b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f1b7 = icmp eq i8 %loadBr_42f1b7, 1
  br i1 %cmpBr_42f1b7, label %block_.L_42f1c2, label %block_42f1bd

block_42f1bd:
  ; Code: jmpq .L_42f1e3	 RIP: 42f1bd	 Bytes: 5
  %loadMem_42f1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1bd = call %struct.Memory* @routine_jmpq_.L_42f1e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1bd, i64 38, i64 5)
  store %struct.Memory* %call_42f1bd, %struct.Memory** %MEMORY

  br label %block_.L_42f1e3

  ; Code: .L_42f1c2:	 RIP: 42f1c2	 Bytes: 0
block_.L_42f1c2:

  ; Code: movq $0x57cad7, %rdi	 RIP: 42f1c2	 Bytes: 10
  %loadMem_42f1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1c2 = call %struct.Memory* @routine_movq__0x57cad7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1c2)
  store %struct.Memory* %call_42f1c2, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 42f1cc	 Bytes: 3
  %loadMem_42f1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1cc = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1cc)
  store %struct.Memory* %call_42f1cc, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 42f1cf	 Bytes: 3
  %loadMem_42f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1cf = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1cf)
  store %struct.Memory* %call_42f1cf, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 42f1d2	 Bytes: 3
  %loadMem_42f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1d2 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1d2)
  store %struct.Memory* %call_42f1d2, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 42f1d5	 Bytes: 4
  %loadMem_42f1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1d5 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1d5)
  store %struct.Memory* %call_42f1d5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42f1d9	 Bytes: 2
  %loadMem_42f1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1d9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1d9)
  store %struct.Memory* %call_42f1d9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42f1db	 Bytes: 5
  %loadMem1_42f1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f1db = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f1db, i64 142293, i64 5, i64 5)
  store %struct.Memory* %call1_42f1db, %struct.Memory** %MEMORY

  %loadMem2_42f1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f1db = load i64, i64* %3
  %call2_42f1db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42f1db, %struct.Memory* %loadMem2_42f1db)
  store %struct.Memory* %call2_42f1db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 42f1e0	 Bytes: 3
  %loadMem_42f1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1e0 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1e0)
  store %struct.Memory* %call_42f1e0, %struct.Memory** %MEMORY

  ; Code: .L_42f1e3:	 RIP: 42f1e3	 Bytes: 0
  br label %block_.L_42f1e3
block_.L_42f1e3:

  ; Code: jmpq .L_42f1e8	 RIP: 42f1e3	 Bytes: 5
  %loadMem_42f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1e3 = call %struct.Memory* @routine_jmpq_.L_42f1e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1e3, i64 5, i64 5)
  store %struct.Memory* %call_42f1e3, %struct.Memory** %MEMORY

  br label %block_.L_42f1e8

  ; Code: .L_42f1e8:	 RIP: 42f1e8	 Bytes: 0
block_.L_42f1e8:

  ; Code: jmpq .L_42f1ed	 RIP: 42f1e8	 Bytes: 5
  %loadMem_42f1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1e8 = call %struct.Memory* @routine_jmpq_.L_42f1ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1e8, i64 5, i64 5)
  store %struct.Memory* %call_42f1e8, %struct.Memory** %MEMORY

  br label %block_.L_42f1ed

  ; Code: .L_42f1ed:	 RIP: 42f1ed	 Bytes: 0
block_.L_42f1ed:

  ; Code: movq $0x57ca87, %rsi	 RIP: 42f1ed	 Bytes: 10
  %loadMem_42f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1ed = call %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1ed)
  store %struct.Memory* %call_42f1ed, %struct.Memory** %MEMORY

  ; Code: leaq -0x2c(%rbp), %rdx	 RIP: 42f1f7	 Bytes: 4
  %loadMem_42f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1f7 = call %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1f7)
  store %struct.Memory* %call_42f1f7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42f1fb	 Bytes: 4
  %loadMem_42f1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1fb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1fb)
  store %struct.Memory* %call_42f1fb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 42f1ff	 Bytes: 3
  %loadMem_42f1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f1ff = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f1ff)
  store %struct.Memory* %call_42f1ff, %struct.Memory** %MEMORY

  ; Code: callq .sgfGetIntProperty	 RIP: 42f202	 Bytes: 5
  %loadMem1_42f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f202 = call %struct.Memory* @routine_callq_.sgfGetIntProperty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f202, i64 -185506, i64 5, i64 5)
  store %struct.Memory* %call1_42f202, %struct.Memory** %MEMORY

  %loadMem2_42f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f202 = load i64, i64* %3
  %call2_42f202 = call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* %0, i64  %loadPC_42f202, %struct.Memory* %loadMem2_42f202)
  store %struct.Memory* %call2_42f202, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f207	 Bytes: 3
  %loadMem_42f207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f207 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f207)
  store %struct.Memory* %call_42f207, %struct.Memory** %MEMORY

  ; Code: je .L_42f22a	 RIP: 42f20a	 Bytes: 6
  %loadMem_42f20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f20a = call %struct.Memory* @routine_je_.L_42f22a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f20a, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_42f20a, %struct.Memory** %MEMORY

  %loadBr_42f20a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f20a = icmp eq i8 %loadBr_42f20a, 1
  br i1 %cmpBr_42f20a, label %block_.L_42f22a, label %block_42f210

block_42f210:
  ; Code: cmpl $0x1, -0x2c(%rbp)	 RIP: 42f210	 Bytes: 4
  %loadMem_42f210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f210 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f210)
  store %struct.Memory* %call_42f210, %struct.Memory** %MEMORY

  ; Code: jle .L_42f22a	 RIP: 42f214	 Bytes: 6
  %loadMem_42f214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f214 = call %struct.Memory* @routine_jle_.L_42f22a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f214, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42f214, %struct.Memory** %MEMORY

  %loadBr_42f214 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f214 = icmp eq i8 %loadBr_42f214, 1
  br i1 %cmpBr_42f214, label %block_.L_42f22a, label %block_42f21a

block_42f21a:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 42f21a	 Bytes: 3
  %loadMem_42f21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f21a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f21a)
  store %struct.Memory* %call_42f21a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f21d	 Bytes: 4
  %loadMem_42f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f21d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f21d)
  store %struct.Memory* %call_42f21d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42f221	 Bytes: 2
  %loadMem_42f221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f221 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f221)
  store %struct.Memory* %call_42f221, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x34(%rbp)	 RIP: 42f223	 Bytes: 7
  %loadMem_42f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f223 = call %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f223)
  store %struct.Memory* %call_42f223, %struct.Memory** %MEMORY

  ; Code: .L_42f22a:	 RIP: 42f22a	 Bytes: 0
  br label %block_.L_42f22a
block_.L_42f22a:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42f22a	 Bytes: 4
  %loadMem_42f22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f22a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f22a)
  store %struct.Memory* %call_42f22a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x8(%rax)	 RIP: 42f22e	 Bytes: 8
  %loadMem_42f22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f22e = call %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f22e)
  store %struct.Memory* %call_42f22e, %struct.Memory** %MEMORY

  ; Code: .L_42f236:	 RIP: 42f236	 Bytes: 0
  br label %block_.L_42f236
block_.L_42f236:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42f236	 Bytes: 4
  %loadMem_42f236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f236 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f236)
  store %struct.Memory* %call_42f236, %struct.Memory** %MEMORY

  ; Code: callq .sgftreeForward	 RIP: 42f23a	 Bytes: 5
  %loadMem1_42f23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f23a = call %struct.Memory* @routine_callq_.sgftreeForward(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f23a, i64 -175482, i64 5, i64 5)
  store %struct.Memory* %call1_42f23a, %struct.Memory** %MEMORY

  %loadMem2_42f23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f23a = load i64, i64* %3
  %call2_42f23a = call %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* %0, i64  %loadPC_42f23a, %struct.Memory* %loadMem2_42f23a)
  store %struct.Memory* %call2_42f23a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f23f	 Bytes: 3
  %loadMem_42f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f23f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f23f)
  store %struct.Memory* %call_42f23f, %struct.Memory** %MEMORY

  ; Code: je .L_42f779	 RIP: 42f242	 Bytes: 6
  %loadMem_42f242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f242 = call %struct.Memory* @routine_je_.L_42f779(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f242, i8* %BRANCH_TAKEN, i64 1335, i64 6, i64 6)
  store %struct.Memory* %call_42f242, %struct.Memory** %MEMORY

  %loadBr_42f242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f242 = icmp eq i8 %loadBr_42f242, 1
  br i1 %cmpBr_42f242, label %block_.L_42f779, label %block_42f248

block_42f248:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 42f248	 Bytes: 4
  %loadMem_42f248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f248 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f248)
  store %struct.Memory* %call_42f248, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42f24c	 Bytes: 4
  %loadMem_42f24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f24c = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f24c)
  store %struct.Memory* %call_42f24c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42f250	 Bytes: 3
  %loadMem_42f250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f250 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f250)
  store %struct.Memory* %call_42f250, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 42f253	 Bytes: 4
  %loadMem_42f253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f253 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f253)
  store %struct.Memory* %call_42f253, %struct.Memory** %MEMORY

  ; Code: .L_42f257:	 RIP: 42f257	 Bytes: 0
  br label %block_.L_42f257
block_.L_42f257:

  ; Code: cmpq $0x0, -0x50(%rbp)	 RIP: 42f257	 Bytes: 5
  %loadMem_42f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f257 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f257)
  store %struct.Memory* %call_42f257, %struct.Memory** %MEMORY

  ; Code: je .L_42f774	 RIP: 42f25c	 Bytes: 6
  %loadMem_42f25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f25c = call %struct.Memory* @routine_je_.L_42f774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f25c, i8* %BRANCH_TAKEN, i64 1304, i64 6, i64 6)
  store %struct.Memory* %call_42f25c, %struct.Memory** %MEMORY

  %loadBr_42f25c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f25c = icmp eq i8 %loadBr_42f25c, 1
  br i1 %cmpBr_42f25c, label %block_.L_42f774, label %block_42f262

block_42f262:
  ; Code: movl 0xab0f24, %eax	 RIP: 42f262	 Bytes: 7
  %loadMem_42f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f262 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f262)
  store %struct.Memory* %call_42f262, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %eax	 RIP: 42f269	 Bytes: 5
  %loadMem_42f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f269 = call %struct.Memory* @routine_andl__0x80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f269)
  store %struct.Memory* %call_42f269, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f26e	 Bytes: 3
  %loadMem_42f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f26e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f26e)
  store %struct.Memory* %call_42f26e, %struct.Memory** %MEMORY

  ; Code: jne .L_42f27c	 RIP: 42f271	 Bytes: 6
  %loadMem_42f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f271 = call %struct.Memory* @routine_jne_.L_42f27c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f271, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42f271, %struct.Memory** %MEMORY

  %loadBr_42f271 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f271 = icmp eq i8 %loadBr_42f271, 1
  br i1 %cmpBr_42f271, label %block_.L_42f27c, label %block_42f277

block_42f277:
  ; Code: jmpq .L_42f2b6	 RIP: 42f277	 Bytes: 5
  %loadMem_42f277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f277 = call %struct.Memory* @routine_jmpq_.L_42f2b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f277, i64 63, i64 5)
  store %struct.Memory* %call_42f277, %struct.Memory** %MEMORY

  br label %block_.L_42f2b6

  ; Code: .L_42f27c:	 RIP: 42f27c	 Bytes: 0
block_.L_42f27c:

  ; Code: movq $0x57caf9, %rdi	 RIP: 42f27c	 Bytes: 10
  %loadMem_42f27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f27c = call %struct.Memory* @routine_movq__0x57caf9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f27c)
  store %struct.Memory* %call_42f27c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f286	 Bytes: 4
  %loadMem_42f286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f286 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f286)
  store %struct.Memory* %call_42f286, %struct.Memory** %MEMORY

  ; Code: movswl 0x8(%rax), %ecx	 RIP: 42f28a	 Bytes: 4
  %loadMem_42f28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f28a = call %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f28a)
  store %struct.Memory* %call_42f28a, %struct.Memory** %MEMORY

  ; Code: andl $0xff, %ecx	 RIP: 42f28e	 Bytes: 6
  %loadMem_42f28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f28e = call %struct.Memory* @routine_andl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f28e)
  store %struct.Memory* %call_42f28e, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f294	 Bytes: 4
  %loadMem_42f294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f294 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f294)
  store %struct.Memory* %call_42f294, %struct.Memory** %MEMORY

  ; Code: movswl 0x8(%rax), %edx	 RIP: 42f298	 Bytes: 4
  %loadMem_42f298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f298 = call %struct.Memory* @routine_movswl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f298)
  store %struct.Memory* %call_42f298, %struct.Memory** %MEMORY

  ; Code: sarl $0x8, %edx	 RIP: 42f29c	 Bytes: 3
  %loadMem_42f29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f29c = call %struct.Memory* @routine_sarl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f29c)
  store %struct.Memory* %call_42f29c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f29f	 Bytes: 4
  %loadMem_42f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f29f = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f29f)
  store %struct.Memory* %call_42f29f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42f2a3	 Bytes: 4
  %loadMem_42f2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2a3 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2a3)
  store %struct.Memory* %call_42f2a3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 42f2a7	 Bytes: 2
  %loadMem_42f2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2a7 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2a7)
  store %struct.Memory* %call_42f2a7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 42f2a9	 Bytes: 3
  %loadMem_42f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2a9 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2a9)
  store %struct.Memory* %call_42f2a9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42f2ac	 Bytes: 2
  %loadMem_42f2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2ac = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2ac)
  store %struct.Memory* %call_42f2ac, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42f2ae	 Bytes: 5
  %loadMem1_42f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f2ae = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f2ae, i64 142082, i64 5, i64 5)
  store %struct.Memory* %call1_42f2ae, %struct.Memory** %MEMORY

  %loadMem2_42f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f2ae = load i64, i64* %3
  %call2_42f2ae = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42f2ae, %struct.Memory* %loadMem2_42f2ae)
  store %struct.Memory* %call2_42f2ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 42f2b3	 Bytes: 3
  %loadMem_42f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2b3 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2b3)
  store %struct.Memory* %call_42f2b3, %struct.Memory** %MEMORY

  ; Code: .L_42f2b6:	 RIP: 42f2b6	 Bytes: 0
  br label %block_.L_42f2b6
block_.L_42f2b6:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f2b6	 Bytes: 4
  %loadMem_42f2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2b6 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2b6)
  store %struct.Memory* %call_42f2b6, %struct.Memory** %MEMORY

  ; Code: movswl 0x8(%rax), %ecx	 RIP: 42f2ba	 Bytes: 4
  %loadMem_42f2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2ba = call %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2ba)
  store %struct.Memory* %call_42f2ba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 42f2be	 Bytes: 2
  %loadMem_42f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2be = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2be)
  store %struct.Memory* %call_42f2be, %struct.Memory** %MEMORY

  ; Code: subl $0x2042, %edx	 RIP: 42f2c0	 Bytes: 6
  %loadMem_42f2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2c0 = call %struct.Memory* @routine_subl__0x2042___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2c0)
  store %struct.Memory* %call_42f2c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x70(%rbp)	 RIP: 42f2c6	 Bytes: 3
  %loadMem_42f2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2c6 = call %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2c6)
  store %struct.Memory* %call_42f2c6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x74(%rbp)	 RIP: 42f2c9	 Bytes: 3
  %loadMem_42f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2c9 = call %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2c9)
  store %struct.Memory* %call_42f2c9, %struct.Memory** %MEMORY

  ; Code: je .L_42f49a	 RIP: 42f2cc	 Bytes: 6
  %loadMem_42f2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2cc = call %struct.Memory* @routine_je_.L_42f49a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2cc, i8* %BRANCH_TAKEN, i64 462, i64 6, i64 6)
  store %struct.Memory* %call_42f2cc, %struct.Memory** %MEMORY

  %loadBr_42f2cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2cc = icmp eq i8 %loadBr_42f2cc, 1
  br i1 %cmpBr_42f2cc, label %block_.L_42f49a, label %block_42f2d2

block_42f2d2:
  ; Code: jmpq .L_42f2d7	 RIP: 42f2d2	 Bytes: 5
  %loadMem_42f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2d2 = call %struct.Memory* @routine_jmpq_.L_42f2d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2d2, i64 5, i64 5)
  store %struct.Memory* %call_42f2d2, %struct.Memory** %MEMORY

  br label %block_.L_42f2d7

  ; Code: .L_42f2d7:	 RIP: 42f2d7	 Bytes: 0
block_.L_42f2d7:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 42f2d7	 Bytes: 3
  %loadMem_42f2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2d7 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2d7)
  store %struct.Memory* %call_42f2d7, %struct.Memory** %MEMORY

  ; Code: subl $0x2057, %eax	 RIP: 42f2da	 Bytes: 5
  %loadMem_42f2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2da = call %struct.Memory* @routine_subl__0x2057___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2da)
  store %struct.Memory* %call_42f2da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 42f2df	 Bytes: 3
  %loadMem_42f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2df = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2df)
  store %struct.Memory* %call_42f2df, %struct.Memory** %MEMORY

  ; Code: je .L_42f49a	 RIP: 42f2e2	 Bytes: 6
  %loadMem_42f2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2e2 = call %struct.Memory* @routine_je_.L_42f49a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2e2, i8* %BRANCH_TAKEN, i64 440, i64 6, i64 6)
  store %struct.Memory* %call_42f2e2, %struct.Memory** %MEMORY

  %loadBr_42f2e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2e2 = icmp eq i8 %loadBr_42f2e2, 1
  br i1 %cmpBr_42f2e2, label %block_.L_42f49a, label %block_42f2e8

block_42f2e8:
  ; Code: jmpq .L_42f2ed	 RIP: 42f2e8	 Bytes: 5
  %loadMem_42f2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2e8 = call %struct.Memory* @routine_jmpq_.L_42f2ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2e8, i64 5, i64 5)
  store %struct.Memory* %call_42f2e8, %struct.Memory** %MEMORY

  br label %block_.L_42f2ed

  ; Code: .L_42f2ed:	 RIP: 42f2ed	 Bytes: 0
block_.L_42f2ed:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 42f2ed	 Bytes: 3
  %loadMem_42f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2ed = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2ed)
  store %struct.Memory* %call_42f2ed, %struct.Memory** %MEMORY

  ; Code: subl $0x4241, %eax	 RIP: 42f2f0	 Bytes: 5
  %loadMem_42f2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2f0 = call %struct.Memory* @routine_subl__0x4241___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2f0)
  store %struct.Memory* %call_42f2f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 42f2f5	 Bytes: 3
  %loadMem_42f2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2f5 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2f5)
  store %struct.Memory* %call_42f2f5, %struct.Memory** %MEMORY

  ; Code: je .L_42f34b	 RIP: 42f2f8	 Bytes: 6
  %loadMem_42f2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2f8 = call %struct.Memory* @routine_je_.L_42f34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2f8, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_42f2f8, %struct.Memory** %MEMORY

  %loadBr_42f2f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2f8 = icmp eq i8 %loadBr_42f2f8, 1
  br i1 %cmpBr_42f2f8, label %block_.L_42f34b, label %block_42f2fe

block_42f2fe:
  ; Code: jmpq .L_42f303	 RIP: 42f2fe	 Bytes: 5
  %loadMem_42f2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f2fe = call %struct.Memory* @routine_jmpq_.L_42f303(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f2fe, i64 5, i64 5)
  store %struct.Memory* %call_42f2fe, %struct.Memory** %MEMORY

  br label %block_.L_42f303

  ; Code: .L_42f303:	 RIP: 42f303	 Bytes: 0
block_.L_42f303:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 42f303	 Bytes: 3
  %loadMem_42f303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f303 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f303)
  store %struct.Memory* %call_42f303, %struct.Memory** %MEMORY

  ; Code: subl $0x4c49, %eax	 RIP: 42f306	 Bytes: 5
  %loadMem_42f306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f306 = call %struct.Memory* @routine_subl__0x4c49___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f306)
  store %struct.Memory* %call_42f306, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 42f30b	 Bytes: 3
  %loadMem_42f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f30b = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f30b)
  store %struct.Memory* %call_42f30b, %struct.Memory** %MEMORY

  ; Code: je .L_42f66f	 RIP: 42f30e	 Bytes: 6
  %loadMem_42f30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f30e = call %struct.Memory* @routine_je_.L_42f66f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f30e, i8* %BRANCH_TAKEN, i64 865, i64 6, i64 6)
  store %struct.Memory* %call_42f30e, %struct.Memory** %MEMORY

  %loadBr_42f30e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f30e = icmp eq i8 %loadBr_42f30e, 1
  br i1 %cmpBr_42f30e, label %block_.L_42f66f, label %block_42f314

block_42f314:
  ; Code: jmpq .L_42f319	 RIP: 42f314	 Bytes: 5
  %loadMem_42f314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f314 = call %struct.Memory* @routine_jmpq_.L_42f319(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f314, i64 5, i64 5)
  store %struct.Memory* %call_42f314, %struct.Memory** %MEMORY

  br label %block_.L_42f319

  ; Code: .L_42f319:	 RIP: 42f319	 Bytes: 0
block_.L_42f319:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 42f319	 Bytes: 3
  %loadMem_42f319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f319 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f319)
  store %struct.Memory* %call_42f319, %struct.Memory** %MEMORY

  ; Code: subl $0x4c50, %eax	 RIP: 42f31c	 Bytes: 5
  %loadMem_42f31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f31c = call %struct.Memory* @routine_subl__0x4c50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f31c)
  store %struct.Memory* %call_42f31c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 42f321	 Bytes: 6
  %loadMem_42f321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f321 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f321)
  store %struct.Memory* %call_42f321, %struct.Memory** %MEMORY

  ; Code: je .L_42f3fd	 RIP: 42f327	 Bytes: 6
  %loadMem_42f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f327 = call %struct.Memory* @routine_je_.L_42f3fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f327, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_42f327, %struct.Memory** %MEMORY

  %loadBr_42f327 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f327 = icmp eq i8 %loadBr_42f327, 1
  br i1 %cmpBr_42f327, label %block_.L_42f3fd, label %block_42f32d

block_42f32d:
  ; Code: jmpq .L_42f332	 RIP: 42f32d	 Bytes: 5
  %loadMem_42f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f32d = call %struct.Memory* @routine_jmpq_.L_42f332(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f32d, i64 5, i64 5)
  store %struct.Memory* %call_42f32d, %struct.Memory** %MEMORY

  br label %block_.L_42f332

  ; Code: .L_42f332:	 RIP: 42f332	 Bytes: 0
block_.L_42f332:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 42f332	 Bytes: 3
  %loadMem_42f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f332 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f332)
  store %struct.Memory* %call_42f332, %struct.Memory** %MEMORY

  ; Code: subl $0x5741, %eax	 RIP: 42f335	 Bytes: 5
  %loadMem_42f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f335 = call %struct.Memory* @routine_subl__0x5741___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f335)
  store %struct.Memory* %call_42f335, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 42f33a	 Bytes: 6
  %loadMem_42f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f33a = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f33a)
  store %struct.Memory* %call_42f33a, %struct.Memory** %MEMORY

  ; Code: je .L_42f3a4	 RIP: 42f340	 Bytes: 6
  %loadMem_42f340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f340 = call %struct.Memory* @routine_je_.L_42f3a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f340, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_42f340, %struct.Memory** %MEMORY

  %loadBr_42f340 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f340 = icmp eq i8 %loadBr_42f340, 1
  br i1 %cmpBr_42f340, label %block_.L_42f3a4, label %block_42f346

block_42f346:
  ; Code: jmpq .L_42f75f	 RIP: 42f346	 Bytes: 5
  %loadMem_42f346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f346 = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f346, i64 1049, i64 5)
  store %struct.Memory* %call_42f346, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f34b:	 RIP: 42f34b	 Bytes: 0
block_.L_42f34b:

  ; Code: leaq -0x54(%rbp), %rsi	 RIP: 42f34b	 Bytes: 4
  %loadMem_42f34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f34b = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f34b)
  store %struct.Memory* %call_42f34b, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 42f34f	 Bytes: 4
  %loadMem_42f34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f34f = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f34f)
  store %struct.Memory* %call_42f34f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 42f353	 Bytes: 4
  %loadMem_42f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f353 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f353)
  store %struct.Memory* %call_42f353, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 42f357	 Bytes: 7
  %loadMem_42f357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f357 = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f357)
  store %struct.Memory* %call_42f357, %struct.Memory** %MEMORY

  ; Code: callq .get_moveXY	 RIP: 42f35e	 Bytes: 5
  %loadMem1_42f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f35e = call %struct.Memory* @routine_callq_.get_moveXY(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f35e, i64 -188286, i64 5, i64 5)
  store %struct.Memory* %call1_42f35e, %struct.Memory** %MEMORY

  %loadMem2_42f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f35e = load i64, i64* %3
  %call2_42f35e = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64  %loadPC_42f35e, %struct.Memory* %loadMem2_42f35e)
  store %struct.Memory* %call2_42f35e, %struct.Memory** %MEMORY

  ; Code: leaq -0x54(%rbp), %rdx	 RIP: 42f363	 Bytes: 4
  %loadMem_42f363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f363 = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f363)
  store %struct.Memory* %call_42f363, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rcx	 RIP: 42f367	 Bytes: 4
  %loadMem_42f367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f367 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f367)
  store %struct.Memory* %call_42f367, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f36b	 Bytes: 3
  %loadMem_42f36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f36b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f36b)
  store %struct.Memory* %call_42f36b, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f36e	 Bytes: 3
  %loadMem_42f36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f36e = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f36e)
  store %struct.Memory* %call_42f36e, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %r8d	 RIP: 42f371	 Bytes: 8
  %loadMem_42f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f371 = call %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f371)
  store %struct.Memory* %call_42f371, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 42f379	 Bytes: 4
  %loadMem_42f379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f379 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f379)
  store %struct.Memory* %call_42f379, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 42f37d	 Bytes: 6
  %loadMem_42f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f37d = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f37d)
  store %struct.Memory* %call_42f37d, %struct.Memory** %MEMORY

  ; Code: callq .rotate	 RIP: 42f383	 Bytes: 5
  %loadMem1_42f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f383 = call %struct.Memory* @routine_callq_.rotate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f383, i64 734733, i64 5, i64 5)
  store %struct.Memory* %call1_42f383, %struct.Memory** %MEMORY

  %loadMem2_42f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f383 = load i64, i64* %3
  %call2_42f383 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64  %loadPC_42f383, %struct.Memory* %loadMem2_42f383)
  store %struct.Memory* %call2_42f383, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edx	 RIP: 42f388	 Bytes: 5
  %loadMem_42f388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f388 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f388)
  store %struct.Memory* %call_42f388, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f38d	 Bytes: 3
  %loadMem_42f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f38d = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f38d)
  store %struct.Memory* %call_42f38d, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f390	 Bytes: 3
  %loadMem_42f390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f390 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f390)
  store %struct.Memory* %call_42f390, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_add_stone	 RIP: 42f393	 Bytes: 5
  %loadMem1_42f393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f393 = call %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f393, i64 -3795, i64 5, i64 5)
  store %struct.Memory* %call1_42f393, %struct.Memory** %MEMORY

  %loadMem2_42f393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f393 = load i64, i64* %3
  %call2_42f393 = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64  %loadPC_42f393, %struct.Memory* %loadMem2_42f393)
  store %struct.Memory* %call2_42f393, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 42f398	 Bytes: 7
  %loadMem_42f398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f398 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f398)
  store %struct.Memory* %call_42f398, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f75f	 RIP: 42f39f	 Bytes: 5
  %loadMem_42f39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f39f = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f39f, i64 960, i64 5)
  store %struct.Memory* %call_42f39f, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f3a4:	 RIP: 42f3a4	 Bytes: 0
block_.L_42f3a4:

  ; Code: leaq -0x54(%rbp), %rsi	 RIP: 42f3a4	 Bytes: 4
  %loadMem_42f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3a4 = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3a4)
  store %struct.Memory* %call_42f3a4, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 42f3a8	 Bytes: 4
  %loadMem_42f3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3a8 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3a8)
  store %struct.Memory* %call_42f3a8, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 42f3ac	 Bytes: 4
  %loadMem_42f3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3ac = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3ac)
  store %struct.Memory* %call_42f3ac, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 42f3b0	 Bytes: 7
  %loadMem_42f3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3b0 = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3b0)
  store %struct.Memory* %call_42f3b0, %struct.Memory** %MEMORY

  ; Code: callq .get_moveXY	 RIP: 42f3b7	 Bytes: 5
  %loadMem1_42f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f3b7 = call %struct.Memory* @routine_callq_.get_moveXY(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f3b7, i64 -188375, i64 5, i64 5)
  store %struct.Memory* %call1_42f3b7, %struct.Memory** %MEMORY

  %loadMem2_42f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3b7 = load i64, i64* %3
  %call2_42f3b7 = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64  %loadPC_42f3b7, %struct.Memory* %loadMem2_42f3b7)
  store %struct.Memory* %call2_42f3b7, %struct.Memory** %MEMORY

  ; Code: leaq -0x54(%rbp), %rdx	 RIP: 42f3bc	 Bytes: 4
  %loadMem_42f3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3bc = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3bc)
  store %struct.Memory* %call_42f3bc, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rcx	 RIP: 42f3c0	 Bytes: 4
  %loadMem_42f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3c0 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3c0)
  store %struct.Memory* %call_42f3c0, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f3c4	 Bytes: 3
  %loadMem_42f3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3c4 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3c4)
  store %struct.Memory* %call_42f3c4, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f3c7	 Bytes: 3
  %loadMem_42f3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3c7 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3c7)
  store %struct.Memory* %call_42f3c7, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %r8d	 RIP: 42f3ca	 Bytes: 8
  %loadMem_42f3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3ca = call %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3ca)
  store %struct.Memory* %call_42f3ca, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 42f3d2	 Bytes: 4
  %loadMem_42f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3d2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3d2)
  store %struct.Memory* %call_42f3d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 42f3d6	 Bytes: 6
  %loadMem_42f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3d6 = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3d6)
  store %struct.Memory* %call_42f3d6, %struct.Memory** %MEMORY

  ; Code: callq .rotate	 RIP: 42f3dc	 Bytes: 5
  %loadMem1_42f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f3dc = call %struct.Memory* @routine_callq_.rotate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f3dc, i64 734644, i64 5, i64 5)
  store %struct.Memory* %call1_42f3dc, %struct.Memory** %MEMORY

  %loadMem2_42f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3dc = load i64, i64* %3
  %call2_42f3dc = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64  %loadPC_42f3dc, %struct.Memory* %loadMem2_42f3dc)
  store %struct.Memory* %call2_42f3dc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 42f3e1	 Bytes: 5
  %loadMem_42f3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3e1 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3e1)
  store %struct.Memory* %call_42f3e1, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f3e6	 Bytes: 3
  %loadMem_42f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3e6 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3e6)
  store %struct.Memory* %call_42f3e6, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f3e9	 Bytes: 3
  %loadMem_42f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3e9 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3e9)
  store %struct.Memory* %call_42f3e9, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_add_stone	 RIP: 42f3ec	 Bytes: 5
  %loadMem1_42f3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f3ec = call %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f3ec, i64 -3884, i64 5, i64 5)
  store %struct.Memory* %call1_42f3ec, %struct.Memory** %MEMORY

  %loadMem2_42f3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3ec = load i64, i64* %3
  %call2_42f3ec = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64  %loadPC_42f3ec, %struct.Memory* %loadMem2_42f3ec)
  store %struct.Memory* %call2_42f3ec, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 42f3f1	 Bytes: 7
  %loadMem_42f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3f1 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3f1)
  store %struct.Memory* %call_42f3f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f75f	 RIP: 42f3f8	 Bytes: 5
  %loadMem_42f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3f8 = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3f8, i64 871, i64 5)
  store %struct.Memory* %call_42f3f8, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f3fd:	 RIP: 42f3fd	 Bytes: 0
block_.L_42f3fd:

  ; Code: cmpl $0x0, 0xafdfb0	 RIP: 42f3fd	 Bytes: 8
  %loadMem_42f3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f3fd = call %struct.Memory* @routine_cmpl__0x0__0xafdfb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f3fd)
  store %struct.Memory* %call_42f3fd, %struct.Memory** %MEMORY

  ; Code: je .L_42f446	 RIP: 42f405	 Bytes: 6
  %loadMem_42f405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f405 = call %struct.Memory* @routine_je_.L_42f446(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f405, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_42f405, %struct.Memory** %MEMORY

  %loadBr_42f405 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f405 = icmp eq i8 %loadBr_42f405, 1
  br i1 %cmpBr_42f405, label %block_.L_42f446, label %block_42f40b

block_42f40b:
  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 42f40b	 Bytes: 4
  %loadMem_42f40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f40b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f40b)
  store %struct.Memory* %call_42f40b, %struct.Memory** %MEMORY

  ; Code: jne .L_42f446	 RIP: 42f40f	 Bytes: 6
  %loadMem_42f40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f40f = call %struct.Memory* @routine_jne_.L_42f446(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f40f, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_42f40f, %struct.Memory** %MEMORY

  %loadBr_42f40f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f40f = icmp eq i8 %loadBr_42f40f, 1
  br i1 %cmpBr_42f40f, label %block_.L_42f446, label %block_42f415

block_42f415:
  ; Code: xorl %eax, %eax	 RIP: 42f415	 Bytes: 2
  %loadMem_42f415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f415 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f415)
  store %struct.Memory* %call_42f415, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42f417	 Bytes: 2
  %loadMem_42f417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f417 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f417)
  store %struct.Memory* %call_42f417, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f419	 Bytes: 4
  %loadMem_42f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f419 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f419)
  store %struct.Memory* %call_42f419, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edi	 RIP: 42f41d	 Bytes: 2
  %loadMem_42f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f41d = call %struct.Memory* @routine_movl___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f41d)
  store %struct.Memory* %call_42f41d, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_sethand	 RIP: 42f41f	 Bytes: 5
  %loadMem1_42f41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f41f = call %struct.Memory* @routine_callq_.gnugo_sethand(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f41f, i64 -2543, i64 5, i64 5)
  store %struct.Memory* %call1_42f41f, %struct.Memory** %MEMORY

  %loadMem2_42f41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f41f = load i64, i64* %3
  %call2_42f41f = call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* %0, i64  %loadPC_42f41f, %struct.Memory* %loadMem2_42f41f)
  store %struct.Memory* %call2_42f41f, %struct.Memory** %MEMORY

  ; Code: movq $0x57ca87, %rsi	 RIP: 42f424	 Bytes: 10
  %loadMem_42f424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f424 = call %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f424)
  store %struct.Memory* %call_42f424, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42f42e	 Bytes: 4
  %loadMem_42f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f42e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f42e)
  store %struct.Memory* %call_42f42e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rdi	 RIP: 42f432	 Bytes: 3
  %loadMem_42f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f432 = call %struct.Memory* @routine_movq___rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f432)
  store %struct.Memory* %call_42f432, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f435	 Bytes: 4
  %loadMem_42f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f435 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f435)
  store %struct.Memory* %call_42f435, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 42f439	 Bytes: 2
  %loadMem_42f439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f439 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f439)
  store %struct.Memory* %call_42f439, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 42f43b	 Bytes: 6
  %loadMem_42f43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f43b = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f43b)
  store %struct.Memory* %call_42f43b, %struct.Memory** %MEMORY

  ; Code: callq .sgfOverwritePropertyInt	 RIP: 42f441	 Bytes: 5
  %loadMem1_42f441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f441 = call %struct.Memory* @routine_callq_.sgfOverwritePropertyInt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f441, i64 -185361, i64 5, i64 5)
  store %struct.Memory* %call1_42f441, %struct.Memory** %MEMORY

  %loadMem2_42f441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f441 = load i64, i64* %3
  %call2_42f441 = call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* %0, i64  %loadPC_42f441, %struct.Memory* %loadMem2_42f441)
  store %struct.Memory* %call2_42f441, %struct.Memory** %MEMORY

  ; Code: .L_42f446:	 RIP: 42f446	 Bytes: 0
  br label %block_.L_42f446
block_.L_42f446:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f446	 Bytes: 4
  %loadMem_42f446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f446 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f446)
  store %struct.Memory* %call_42f446, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42f44a	 Bytes: 4
  %loadMem_42f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f44a = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f44a)
  store %struct.Memory* %call_42f44a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f44e	 Bytes: 3
  %loadMem_42f44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f44e = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f44e)
  store %struct.Memory* %call_42f44e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x77, %ecx	 RIP: 42f451	 Bytes: 3
  %loadMem_42f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f451 = call %struct.Memory* @routine_cmpl__0x77___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f451)
  store %struct.Memory* %call_42f451, %struct.Memory** %MEMORY

  ; Code: je .L_42f482	 RIP: 42f454	 Bytes: 6
  %loadMem_42f454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f454 = call %struct.Memory* @routine_je_.L_42f482(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f454, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42f454, %struct.Memory** %MEMORY

  %loadBr_42f454 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f454 = icmp eq i8 %loadBr_42f454, 1
  br i1 %cmpBr_42f454, label %block_.L_42f482, label %block_42f45a

block_42f45a:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f45a	 Bytes: 4
  %loadMem_42f45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f45a = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f45a)
  store %struct.Memory* %call_42f45a, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42f45e	 Bytes: 4
  %loadMem_42f45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f45e = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f45e)
  store %struct.Memory* %call_42f45e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f462	 Bytes: 3
  %loadMem_42f462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f462 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f462)
  store %struct.Memory* %call_42f462, %struct.Memory** %MEMORY

  ; Code: cmpl $0x57, %ecx	 RIP: 42f465	 Bytes: 3
  %loadMem_42f465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f465 = call %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f465)
  store %struct.Memory* %call_42f465, %struct.Memory** %MEMORY

  ; Code: je .L_42f482	 RIP: 42f468	 Bytes: 6
  %loadMem_42f468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f468 = call %struct.Memory* @routine_je_.L_42f482(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f468, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_42f468, %struct.Memory** %MEMORY

  %loadBr_42f468 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f468 = icmp eq i8 %loadBr_42f468, 1
  br i1 %cmpBr_42f468, label %block_.L_42f482, label %block_42f46e

block_42f46e:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f46e	 Bytes: 4
  %loadMem_42f46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f46e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f46e)
  store %struct.Memory* %call_42f46e, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 42f472	 Bytes: 4
  %loadMem_42f472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f472 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f472)
  store %struct.Memory* %call_42f472, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 42f476	 Bytes: 3
  %loadMem_42f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f476 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f476)
  store %struct.Memory* %call_42f476, %struct.Memory** %MEMORY

  ; Code: cmpl $0x32, %ecx	 RIP: 42f479	 Bytes: 3
  %loadMem_42f479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f479 = call %struct.Memory* @routine_cmpl__0x32___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f479)
  store %struct.Memory* %call_42f479, %struct.Memory** %MEMORY

  ; Code: jne .L_42f48e	 RIP: 42f47c	 Bytes: 6
  %loadMem_42f47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f47c = call %struct.Memory* @routine_jne_.L_42f48e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f47c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_42f47c, %struct.Memory** %MEMORY

  %loadBr_42f47c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f47c = icmp eq i8 %loadBr_42f47c, 1
  br i1 %cmpBr_42f47c, label %block_.L_42f48e, label %block_.L_42f482

  ; Code: .L_42f482:	 RIP: 42f482	 Bytes: 0
block_.L_42f482:

  ; Code: movl $0x1, -0x34(%rbp)	 RIP: 42f482	 Bytes: 7
  %loadMem_42f482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f482 = call %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f482)
  store %struct.Memory* %call_42f482, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f495	 RIP: 42f489	 Bytes: 5
  %loadMem_42f489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f489 = call %struct.Memory* @routine_jmpq_.L_42f495(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f489, i64 12, i64 5)
  store %struct.Memory* %call_42f489, %struct.Memory** %MEMORY

  br label %block_.L_42f495

  ; Code: .L_42f48e:	 RIP: 42f48e	 Bytes: 0
block_.L_42f48e:

  ; Code: movl $0x2, -0x34(%rbp)	 RIP: 42f48e	 Bytes: 7
  %loadMem_42f48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f48e = call %struct.Memory* @routine_movl__0x2__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f48e)
  store %struct.Memory* %call_42f48e, %struct.Memory** %MEMORY

  ; Code: .L_42f495:	 RIP: 42f495	 Bytes: 0
  br label %block_.L_42f495
block_.L_42f495:

  ; Code: jmpq .L_42f75f	 RIP: 42f495	 Bytes: 5
  %loadMem_42f495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f495 = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f495, i64 714, i64 5)
  store %struct.Memory* %call_42f495, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f49a:	 RIP: 42f49a	 Bytes: 0
block_.L_42f49a:

  ; Code: movl $0x2, %eax	 RIP: 42f49a	 Bytes: 5
  %loadMem_42f49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f49a = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f49a)
  store %struct.Memory* %call_42f49a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 42f49f	 Bytes: 5
  %loadMem_42f49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f49f = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f49f)
  store %struct.Memory* %call_42f49f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 42f4a4	 Bytes: 4
  %loadMem_42f4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4a4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4a4)
  store %struct.Memory* %call_42f4a4, %struct.Memory** %MEMORY

  ; Code: movswl 0x8(%rdx), %esi	 RIP: 42f4a8	 Bytes: 4
  %loadMem_42f4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4a8 = call %struct.Memory* @routine_movswl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4a8)
  store %struct.Memory* %call_42f4a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2057, %esi	 RIP: 42f4ac	 Bytes: 6
  %loadMem_42f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4ac = call %struct.Memory* @routine_cmpl__0x2057___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4ac)
  store %struct.Memory* %call_42f4ac, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 42f4b2	 Bytes: 3
  %loadMem_42f4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4b2 = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4b2)
  store %struct.Memory* %call_42f4b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 42f4b5	 Bytes: 3
  %loadMem_42f4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4b5 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4b5)
  store %struct.Memory* %call_42f4b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xafdfb0	 RIP: 42f4b8	 Bytes: 8
  %loadMem_42f4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4b8 = call %struct.Memory* @routine_cmpl__0x0__0xafdfb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4b8)
  store %struct.Memory* %call_42f4b8, %struct.Memory** %MEMORY

  ; Code: je .L_42f501	 RIP: 42f4c0	 Bytes: 6
  %loadMem_42f4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4c0 = call %struct.Memory* @routine_je_.L_42f501(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4c0, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_42f4c0, %struct.Memory** %MEMORY

  %loadBr_42f4c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f4c0 = icmp eq i8 %loadBr_42f4c0, 1
  br i1 %cmpBr_42f4c0, label %block_.L_42f501, label %block_42f4c6

block_42f4c6:
  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 42f4c6	 Bytes: 4
  %loadMem_42f4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4c6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4c6)
  store %struct.Memory* %call_42f4c6, %struct.Memory** %MEMORY

  ; Code: jne .L_42f501	 RIP: 42f4ca	 Bytes: 6
  %loadMem_42f4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4ca = call %struct.Memory* @routine_jne_.L_42f501(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4ca, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_42f4ca, %struct.Memory** %MEMORY

  %loadBr_42f4ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f4ca = icmp eq i8 %loadBr_42f4ca, 1
  br i1 %cmpBr_42f4ca, label %block_.L_42f501, label %block_42f4d0

block_42f4d0:
  ; Code: xorl %eax, %eax	 RIP: 42f4d0	 Bytes: 2
  %loadMem_42f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4d0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4d0)
  store %struct.Memory* %call_42f4d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42f4d2	 Bytes: 2
  %loadMem_42f4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4d2 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4d2)
  store %struct.Memory* %call_42f4d2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f4d4	 Bytes: 4
  %loadMem_42f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4d4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4d4)
  store %struct.Memory* %call_42f4d4, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edi	 RIP: 42f4d8	 Bytes: 2
  %loadMem_42f4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4d8 = call %struct.Memory* @routine_movl___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4d8)
  store %struct.Memory* %call_42f4d8, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_sethand	 RIP: 42f4da	 Bytes: 5
  %loadMem1_42f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f4da = call %struct.Memory* @routine_callq_.gnugo_sethand(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f4da, i64 -2730, i64 5, i64 5)
  store %struct.Memory* %call1_42f4da, %struct.Memory** %MEMORY

  %loadMem2_42f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f4da = load i64, i64* %3
  %call2_42f4da = call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* %0, i64  %loadPC_42f4da, %struct.Memory* %loadMem2_42f4da)
  store %struct.Memory* %call2_42f4da, %struct.Memory** %MEMORY

  ; Code: movq $0x57ca87, %rsi	 RIP: 42f4df	 Bytes: 10
  %loadMem_42f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4df = call %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4df)
  store %struct.Memory* %call_42f4df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42f4e9	 Bytes: 4
  %loadMem_42f4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4e9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4e9)
  store %struct.Memory* %call_42f4e9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rdi	 RIP: 42f4ed	 Bytes: 3
  %loadMem_42f4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4ed = call %struct.Memory* @routine_movq___rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4ed)
  store %struct.Memory* %call_42f4ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f4f0	 Bytes: 4
  %loadMem_42f4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4f0)
  store %struct.Memory* %call_42f4f0, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 42f4f4	 Bytes: 2
  %loadMem_42f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4f4 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4f4)
  store %struct.Memory* %call_42f4f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 42f4f6	 Bytes: 6
  %loadMem_42f4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f4f6 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f4f6)
  store %struct.Memory* %call_42f4f6, %struct.Memory** %MEMORY

  ; Code: callq .sgfOverwritePropertyInt	 RIP: 42f4fc	 Bytes: 5
  %loadMem1_42f4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f4fc = call %struct.Memory* @routine_callq_.sgfOverwritePropertyInt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f4fc, i64 -185548, i64 5, i64 5)
  store %struct.Memory* %call1_42f4fc, %struct.Memory** %MEMORY

  %loadMem2_42f4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f4fc = load i64, i64* %3
  %call2_42f4fc = call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* %0, i64  %loadPC_42f4fc, %struct.Memory* %loadMem2_42f4fc)
  store %struct.Memory* %call2_42f4fc, %struct.Memory** %MEMORY

  ; Code: .L_42f501:	 RIP: 42f501	 Bytes: 0
  br label %block_.L_42f501
block_.L_42f501:

  ; Code: movl 0xafdfb0, %eax	 RIP: 42f501	 Bytes: 7
  %loadMem_42f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f501 = call %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f501)
  store %struct.Memory* %call_42f501, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 42f508	 Bytes: 3
  %loadMem_42f508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f508 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f508)
  store %struct.Memory* %call_42f508, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42f50b	 Bytes: 3
  %loadMem_42f50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f50b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f50b)
  store %struct.Memory* %call_42f50b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 42f50e	 Bytes: 2
  %loadMem_42f50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f50e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f50e)
  store %struct.Memory* %call_42f50e, %struct.Memory** %MEMORY

  ; Code: jne .L_42f53a	 RIP: 42f510	 Bytes: 6
  %loadMem_42f510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f510 = call %struct.Memory* @routine_jne_.L_42f53a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f510, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_42f510, %struct.Memory** %MEMORY

  %loadBr_42f510 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f510 = icmp eq i8 %loadBr_42f510, 1
  br i1 %cmpBr_42f510, label %block_.L_42f53a, label %block_42f516

block_42f516:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 42f516	 Bytes: 3
  %loadMem_42f516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f516 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f516)
  store %struct.Memory* %call_42f516, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f519	 Bytes: 4
  %loadMem_42f519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f519 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f519)
  store %struct.Memory* %call_42f519, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 42f51d	 Bytes: 3
  %loadMem_42f51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f51d = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f51d)
  store %struct.Memory* %call_42f51d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42f520	 Bytes: 4
  %loadMem_42f520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f520 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f520)
  store %struct.Memory* %call_42f520, %struct.Memory** %MEMORY

  ; Code: callq .sgftreeBack	 RIP: 42f524	 Bytes: 5
  %loadMem1_42f524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f524 = call %struct.Memory* @routine_callq_.sgftreeBack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f524, i64 -176372, i64 5, i64 5)
  store %struct.Memory* %call1_42f524, %struct.Memory** %MEMORY

  %loadMem2_42f524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f524 = load i64, i64* %3
  %call2_42f524 = call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* %0, i64  %loadPC_42f524, %struct.Memory* %loadMem2_42f524)
  store %struct.Memory* %call2_42f524, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 42f529	 Bytes: 3
  %loadMem_42f529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f529 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f529)
  store %struct.Memory* %call_42f529, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4(%rbp)	 RIP: 42f52c	 Bytes: 3
  %loadMem_42f52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f52c = call %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f52c)
  store %struct.Memory* %call_42f52c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 42f52f	 Bytes: 6
  %loadMem_42f52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f52f = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f52f)
  store %struct.Memory* %call_42f52f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f789	 RIP: 42f535	 Bytes: 5
  %loadMem_42f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f535 = call %struct.Memory* @routine_jmpq_.L_42f789(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f535, i64 596, i64 5)
  store %struct.Memory* %call_42f535, %struct.Memory** %MEMORY

  br label %block_.L_42f789

  ; Code: .L_42f53a:	 RIP: 42f53a	 Bytes: 0
block_.L_42f53a:

  ; Code: leaq -0x54(%rbp), %rsi	 RIP: 42f53a	 Bytes: 4
  %loadMem_42f53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f53a = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f53a)
  store %struct.Memory* %call_42f53a, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 42f53e	 Bytes: 4
  %loadMem_42f53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f53e = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f53e)
  store %struct.Memory* %call_42f53e, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 42f542	 Bytes: 4
  %loadMem_42f542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f542 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f542)
  store %struct.Memory* %call_42f542, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 42f546	 Bytes: 7
  %loadMem_42f546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f546 = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f546)
  store %struct.Memory* %call_42f546, %struct.Memory** %MEMORY

  ; Code: callq .get_moveXY	 RIP: 42f54d	 Bytes: 5
  %loadMem1_42f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f54d = call %struct.Memory* @routine_callq_.get_moveXY(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f54d, i64 -188781, i64 5, i64 5)
  store %struct.Memory* %call1_42f54d, %struct.Memory** %MEMORY

  %loadMem2_42f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f54d = load i64, i64* %3
  %call2_42f54d = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64  %loadPC_42f54d, %struct.Memory* %loadMem2_42f54d)
  store %struct.Memory* %call2_42f54d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f552	 Bytes: 3
  %loadMem_42f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f552 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f552)
  store %struct.Memory* %call_42f552, %struct.Memory** %MEMORY

  ; Code: je .L_42f59c	 RIP: 42f555	 Bytes: 6
  %loadMem_42f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f555 = call %struct.Memory* @routine_je_.L_42f59c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f555, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_42f555, %struct.Memory** %MEMORY

  %loadBr_42f555 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f555 = icmp eq i8 %loadBr_42f555, 1
  br i1 %cmpBr_42f555, label %block_.L_42f59c, label %block_42f55b

block_42f55b:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 42f55b	 Bytes: 3
  %loadMem_42f55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f55b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f55b)
  store %struct.Memory* %call_42f55b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x38(%rbp), %eax	 RIP: 42f55e	 Bytes: 3
  %loadMem_42f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f55e = call %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f55e)
  store %struct.Memory* %call_42f55e, %struct.Memory** %MEMORY

  ; Code: jne .L_42f597	 RIP: 42f561	 Bytes: 6
  %loadMem_42f561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f561 = call %struct.Memory* @routine_jne_.L_42f597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f561, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_42f561, %struct.Memory** %MEMORY

  %loadBr_42f561 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f561 = icmp eq i8 %loadBr_42f561, 1
  br i1 %cmpBr_42f561, label %block_.L_42f597, label %block_42f567

block_42f567:
  ; Code: movl -0x58(%rbp), %eax	 RIP: 42f567	 Bytes: 3
  %loadMem_42f567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f567 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f567)
  store %struct.Memory* %call_42f567, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3c(%rbp), %eax	 RIP: 42f56a	 Bytes: 3
  %loadMem_42f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f56a = call %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f56a)
  store %struct.Memory* %call_42f56a, %struct.Memory** %MEMORY

  ; Code: jne .L_42f597	 RIP: 42f56d	 Bytes: 6
  %loadMem_42f56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f56d = call %struct.Memory* @routine_jne_.L_42f597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f56d, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_42f56d, %struct.Memory** %MEMORY

  %loadBr_42f56d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f56d = icmp eq i8 %loadBr_42f56d, 1
  br i1 %cmpBr_42f56d, label %block_.L_42f597, label %block_42f573

block_42f573:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 42f573	 Bytes: 3
  %loadMem_42f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f573 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f573)
  store %struct.Memory* %call_42f573, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f576	 Bytes: 4
  %loadMem_42f576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f576 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f576)
  store %struct.Memory* %call_42f576, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 42f57a	 Bytes: 3
  %loadMem_42f57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f57a = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f57a)
  store %struct.Memory* %call_42f57a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42f57d	 Bytes: 4
  %loadMem_42f57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f57d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f57d)
  store %struct.Memory* %call_42f57d, %struct.Memory** %MEMORY

  ; Code: callq .sgftreeBack	 RIP: 42f581	 Bytes: 5
  %loadMem1_42f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f581 = call %struct.Memory* @routine_callq_.sgftreeBack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f581, i64 -176465, i64 5, i64 5)
  store %struct.Memory* %call1_42f581, %struct.Memory** %MEMORY

  %loadMem2_42f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f581 = load i64, i64* %3
  %call2_42f581 = call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* %0, i64  %loadPC_42f581, %struct.Memory* %loadMem2_42f581)
  store %struct.Memory* %call2_42f581, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 42f586	 Bytes: 3
  %loadMem_42f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f586 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f586)
  store %struct.Memory* %call_42f586, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4(%rbp)	 RIP: 42f589	 Bytes: 3
  %loadMem_42f589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f589 = call %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f589)
  store %struct.Memory* %call_42f589, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 42f58c	 Bytes: 6
  %loadMem_42f58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f58c = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f58c)
  store %struct.Memory* %call_42f58c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f789	 RIP: 42f592	 Bytes: 5
  %loadMem_42f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f592 = call %struct.Memory* @routine_jmpq_.L_42f789(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f592, i64 503, i64 5)
  store %struct.Memory* %call_42f592, %struct.Memory** %MEMORY

  br label %block_.L_42f789

  ; Code: .L_42f597:	 RIP: 42f597	 Bytes: 0
block_.L_42f597:

  ; Code: jmpq .L_42f59c	 RIP: 42f597	 Bytes: 5
  %loadMem_42f597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f597 = call %struct.Memory* @routine_jmpq_.L_42f59c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f597, i64 5, i64 5)
  store %struct.Memory* %call_42f597, %struct.Memory** %MEMORY

  br label %block_.L_42f59c

  ; Code: .L_42f59c:	 RIP: 42f59c	 Bytes: 0
block_.L_42f59c:

  ; Code: leaq -0x54(%rbp), %rdx	 RIP: 42f59c	 Bytes: 4
  %loadMem_42f59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f59c = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f59c)
  store %struct.Memory* %call_42f59c, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rcx	 RIP: 42f5a0	 Bytes: 4
  %loadMem_42f5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5a0 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5a0)
  store %struct.Memory* %call_42f5a0, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f5a4	 Bytes: 3
  %loadMem_42f5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5a4 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5a4)
  store %struct.Memory* %call_42f5a4, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f5a7	 Bytes: 3
  %loadMem_42f5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5a7 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5a7)
  store %struct.Memory* %call_42f5a7, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %r8d	 RIP: 42f5aa	 Bytes: 8
  %loadMem_42f5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5aa = call %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5aa)
  store %struct.Memory* %call_42f5aa, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 42f5b2	 Bytes: 4
  %loadMem_42f5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5b2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5b2)
  store %struct.Memory* %call_42f5b2, %struct.Memory** %MEMORY

  ; Code: callq .rotate	 RIP: 42f5b6	 Bytes: 5
  %loadMem1_42f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f5b6 = call %struct.Memory* @routine_callq_.rotate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f5b6, i64 734170, i64 5, i64 5)
  store %struct.Memory* %call1_42f5b6, %struct.Memory** %MEMORY

  %loadMem2_42f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f5b6 = load i64, i64* %3
  %call2_42f5b6 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64  %loadPC_42f5b6, %struct.Memory* %loadMem2_42f5b6)
  store %struct.Memory* %call2_42f5b6, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %esi	 RIP: 42f5bb	 Bytes: 3
  %loadMem_42f5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5bb = call %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5bb)
  store %struct.Memory* %call_42f5bb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %esi	 RIP: 42f5be	 Bytes: 7
  %loadMem_42f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5be = call %struct.Memory* @routine_cmpl_0x7ae438___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5be)
  store %struct.Memory* %call_42f5be, %struct.Memory** %MEMORY

  ; Code: jae .L_42f5f9	 RIP: 42f5c5	 Bytes: 6
  %loadMem_42f5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5c5 = call %struct.Memory* @routine_jae_.L_42f5f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5c5, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_42f5c5, %struct.Memory** %MEMORY

  %loadBr_42f5c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5c5 = icmp eq i8 %loadBr_42f5c5, 1
  br i1 %cmpBr_42f5c5, label %block_.L_42f5f9, label %block_42f5cb

block_42f5cb:
  ; Code: movl -0x58(%rbp), %eax	 RIP: 42f5cb	 Bytes: 3
  %loadMem_42f5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5cb = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5cb)
  store %struct.Memory* %call_42f5cb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 42f5ce	 Bytes: 7
  %loadMem_42f5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5ce = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5ce)
  store %struct.Memory* %call_42f5ce, %struct.Memory** %MEMORY

  ; Code: jae .L_42f5f9	 RIP: 42f5d5	 Bytes: 6
  %loadMem_42f5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5d5 = call %struct.Memory* @routine_jae_.L_42f5f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5d5, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42f5d5, %struct.Memory** %MEMORY

  %loadBr_42f5d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5d5 = icmp eq i8 %loadBr_42f5d5, 1
  br i1 %cmpBr_42f5d5, label %block_.L_42f5f9, label %block_42f5db

block_42f5db:
  ; Code: imull $0x14, -0x54(%rbp), %eax	 RIP: 42f5db	 Bytes: 4
  %loadMem_42f5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5db = call %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5db)
  store %struct.Memory* %call_42f5db, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 42f5df	 Bytes: 3
  %loadMem_42f5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5df = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5df)
  store %struct.Memory* %call_42f5df, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %eax	 RIP: 42f5e2	 Bytes: 3
  %loadMem_42f5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5e2 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5e2)
  store %struct.Memory* %call_42f5e2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42f5e5	 Bytes: 3
  %loadMem_42f5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5e5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5e5)
  store %struct.Memory* %call_42f5e5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42f5e8	 Bytes: 8
  %loadMem_42f5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5e8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5e8)
  store %struct.Memory* %call_42f5e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f5f0	 Bytes: 3
  %loadMem_42f5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5f0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5f0)
  store %struct.Memory* %call_42f5f0, %struct.Memory** %MEMORY

  ; Code: je .L_42f60d	 RIP: 42f5f3	 Bytes: 6
  %loadMem_42f5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5f3 = call %struct.Memory* @routine_je_.L_42f60d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5f3, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_42f5f3, %struct.Memory** %MEMORY

  %loadBr_42f5f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5f3 = icmp eq i8 %loadBr_42f5f3, 1
  br i1 %cmpBr_42f5f3, label %block_.L_42f60d, label %block_.L_42f5f9

  ; Code: .L_42f5f9:	 RIP: 42f5f9	 Bytes: 0
block_.L_42f5f9:

  ; Code: cmpl $0xffffffff, -0x54(%rbp)	 RIP: 42f5f9	 Bytes: 4
  %loadMem_42f5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5f9 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5f9)
  store %struct.Memory* %call_42f5f9, %struct.Memory** %MEMORY

  ; Code: jne .L_42f62b	 RIP: 42f5fd	 Bytes: 6
  %loadMem_42f5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f5fd = call %struct.Memory* @routine_jne_.L_42f62b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f5fd, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42f5fd, %struct.Memory** %MEMORY

  %loadBr_42f5fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5fd = icmp eq i8 %loadBr_42f5fd, 1
  br i1 %cmpBr_42f5fd, label %block_.L_42f62b, label %block_42f603

block_42f603:
  ; Code: cmpl $0xffffffff, -0x58(%rbp)	 RIP: 42f603	 Bytes: 4
  %loadMem_42f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f603 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f603)
  store %struct.Memory* %call_42f603, %struct.Memory** %MEMORY

  ; Code: jne .L_42f62b	 RIP: 42f607	 Bytes: 6
  %loadMem_42f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f607 = call %struct.Memory* @routine_jne_.L_42f62b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f607, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_42f607, %struct.Memory** %MEMORY

  %loadBr_42f607 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f607 = icmp eq i8 %loadBr_42f607, 1
  br i1 %cmpBr_42f607, label %block_.L_42f62b, label %block_.L_42f60d

  ; Code: .L_42f60d:	 RIP: 42f60d	 Bytes: 0
block_.L_42f60d:

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f60d	 Bytes: 3
  %loadMem_42f60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f60d = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f60d)
  store %struct.Memory* %call_42f60d, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f610	 Bytes: 3
  %loadMem_42f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f610 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f610)
  store %struct.Memory* %call_42f610, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 42f613	 Bytes: 3
  %loadMem_42f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f613 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f613)
  store %struct.Memory* %call_42f613, %struct.Memory** %MEMORY

  ; Code: callq .gnugo_play_move	 RIP: 42f616	 Bytes: 5
  %loadMem1_42f616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f616 = call %struct.Memory* @routine_callq_.gnugo_play_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f616, i64 -4294, i64 5, i64 5)
  store %struct.Memory* %call1_42f616, %struct.Memory** %MEMORY

  %loadMem2_42f616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f616 = load i64, i64* %3
  %call2_42f616 = call %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* %0, i64  %loadPC_42f616, %struct.Memory* %loadMem2_42f616)
  store %struct.Memory* %call2_42f616, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 42f61b	 Bytes: 5
  %loadMem_42f61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f61b = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f61b)
  store %struct.Memory* %call_42f61b, %struct.Memory** %MEMORY

  ; Code: subl -0x34(%rbp), %edx	 RIP: 42f620	 Bytes: 3
  %loadMem_42f620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f620 = call %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f620)
  store %struct.Memory* %call_42f620, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 42f623	 Bytes: 3
  %loadMem_42f623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f623 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f623)
  store %struct.Memory* %call_42f623, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f66a	 RIP: 42f626	 Bytes: 5
  %loadMem_42f626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f626 = call %struct.Memory* @routine_jmpq_.L_42f66a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f626, i64 68, i64 5)
  store %struct.Memory* %call_42f626, %struct.Memory** %MEMORY

  br label %block_.L_42f66a

  ; Code: .L_42f62b:	 RIP: 42f62b	 Bytes: 0
block_.L_42f62b:

  ; Code: movq $0x57cb03, %rdi	 RIP: 42f62b	 Bytes: 10
  %loadMem_42f62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f62b = call %struct.Memory* @routine_movq__0x57cb03___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f62b)
  store %struct.Memory* %call_42f62b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42f635	 Bytes: 2
  %loadMem_42f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f635 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f635)
  store %struct.Memory* %call_42f635, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42f637	 Bytes: 5
  %loadMem1_42f637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f637 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f637, i64 141177, i64 5, i64 5)
  store %struct.Memory* %call1_42f637, %struct.Memory** %MEMORY

  %loadMem2_42f637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f637 = load i64, i64* %3
  %call2_42f637 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42f637, %struct.Memory* %loadMem2_42f637)
  store %struct.Memory* %call2_42f637, %struct.Memory** %MEMORY

  ; Code: movq $0x57cb47, %rdi	 RIP: 42f63c	 Bytes: 10
  %loadMem_42f63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f63c = call %struct.Memory* @routine_movq__0x57cb47___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f63c)
  store %struct.Memory* %call_42f63c, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %esi	 RIP: 42f646	 Bytes: 3
  %loadMem_42f646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f646 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f646)
  store %struct.Memory* %call_42f646, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edx	 RIP: 42f649	 Bytes: 3
  %loadMem_42f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f649 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f649)
  store %struct.Memory* %call_42f649, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 42f64c	 Bytes: 6
  %loadMem_42f64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f64c = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f64c)
  store %struct.Memory* %call_42f64c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42f652	 Bytes: 2
  %loadMem_42f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f652 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f652)
  store %struct.Memory* %call_42f652, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42f654	 Bytes: 5
  %loadMem1_42f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f654 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f654, i64 141148, i64 5, i64 5)
  store %struct.Memory* %call1_42f654, %struct.Memory** %MEMORY

  %loadMem2_42f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f654 = load i64, i64* %3
  %call2_42f654 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42f654, %struct.Memory* %loadMem2_42f654)
  store %struct.Memory* %call2_42f654, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 42f659	 Bytes: 3
  %loadMem_42f659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f659 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f659)
  store %struct.Memory* %call_42f659, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4(%rbp)	 RIP: 42f65c	 Bytes: 3
  %loadMem_42f65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f65c = call %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f65c)
  store %struct.Memory* %call_42f65c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 42f65f	 Bytes: 6
  %loadMem_42f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f65f = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f65f)
  store %struct.Memory* %call_42f65f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f789	 RIP: 42f665	 Bytes: 5
  %loadMem_42f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f665 = call %struct.Memory* @routine_jmpq_.L_42f789(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f665, i64 292, i64 5)
  store %struct.Memory* %call_42f665, %struct.Memory** %MEMORY

  br label %block_.L_42f789

  ; Code: .L_42f66a:	 RIP: 42f66a	 Bytes: 0
block_.L_42f66a:

  ; Code: jmpq .L_42f75f	 RIP: 42f66a	 Bytes: 5
  %loadMem_42f66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f66a = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f66a, i64 245, i64 5)
  store %struct.Memory* %call_42f66a, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f66f:	 RIP: 42f66f	 Bytes: 0
block_.L_42f66f:

  ; Code: leaq -0x54(%rbp), %rsi	 RIP: 42f66f	 Bytes: 4
  %loadMem_42f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f66f = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f66f)
  store %struct.Memory* %call_42f66f, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 42f673	 Bytes: 4
  %loadMem_42f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f673 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f673)
  store %struct.Memory* %call_42f673, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 42f677	 Bytes: 4
  %loadMem_42f677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f677 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f677)
  store %struct.Memory* %call_42f677, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 42f67b	 Bytes: 7
  %loadMem_42f67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f67b = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f67b)
  store %struct.Memory* %call_42f67b, %struct.Memory** %MEMORY

  ; Code: callq .get_moveXY	 RIP: 42f682	 Bytes: 5
  %loadMem1_42f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f682 = call %struct.Memory* @routine_callq_.get_moveXY(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f682, i64 -189090, i64 5, i64 5)
  store %struct.Memory* %call1_42f682, %struct.Memory** %MEMORY

  %loadMem2_42f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f682 = load i64, i64* %3
  %call2_42f682 = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64  %loadPC_42f682, %struct.Memory* %loadMem2_42f682)
  store %struct.Memory* %call2_42f682, %struct.Memory** %MEMORY

  ; Code: leaq -0x54(%rbp), %rdx	 RIP: 42f687	 Bytes: 4
  %loadMem_42f687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f687 = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f687)
  store %struct.Memory* %call_42f687, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rcx	 RIP: 42f68b	 Bytes: 4
  %loadMem_42f68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f68b = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f68b)
  store %struct.Memory* %call_42f68b, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 42f68f	 Bytes: 3
  %loadMem_42f68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f68f = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f68f)
  store %struct.Memory* %call_42f68f, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 42f692	 Bytes: 3
  %loadMem_42f692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f692 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f692)
  store %struct.Memory* %call_42f692, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %r8d	 RIP: 42f695	 Bytes: 8
  %loadMem_42f695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f695 = call %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f695)
  store %struct.Memory* %call_42f695, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r9d	 RIP: 42f69d	 Bytes: 4
  %loadMem_42f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f69d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f69d)
  store %struct.Memory* %call_42f69d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 42f6a1	 Bytes: 6
  %loadMem_42f6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6a1 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6a1)
  store %struct.Memory* %call_42f6a1, %struct.Memory** %MEMORY

  ; Code: callq .rotate	 RIP: 42f6a7	 Bytes: 5
  %loadMem1_42f6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f6a7 = call %struct.Memory* @routine_callq_.rotate(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f6a7, i64 733929, i64 5, i64 5)
  store %struct.Memory* %call1_42f6a7, %struct.Memory** %MEMORY

  %loadMem2_42f6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6a7 = load i64, i64* %3
  %call2_42f6a7 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64  %loadPC_42f6a7, %struct.Memory* %loadMem2_42f6a7)
  store %struct.Memory* %call2_42f6a7, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %eax	 RIP: 42f6ac	 Bytes: 3
  %loadMem_42f6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6ac = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6ac)
  store %struct.Memory* %call_42f6ac, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 42f6af	 Bytes: 7
  %loadMem_42f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6af = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6af)
  store %struct.Memory* %call_42f6af, %struct.Memory** %MEMORY

  ; Code: jae .L_42f6cc	 RIP: 42f6b6	 Bytes: 6
  %loadMem_42f6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6b6 = call %struct.Memory* @routine_jae_.L_42f6cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6b6, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42f6b6, %struct.Memory** %MEMORY

  %loadBr_42f6b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6b6 = icmp eq i8 %loadBr_42f6b6, 1
  br i1 %cmpBr_42f6b6, label %block_.L_42f6cc, label %block_42f6bc

block_42f6bc:
  ; Code: movl -0x58(%rbp), %eax	 RIP: 42f6bc	 Bytes: 3
  %loadMem_42f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6bc = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6bc)
  store %struct.Memory* %call_42f6bc, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 42f6bf	 Bytes: 7
  %loadMem_42f6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6bf = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6bf)
  store %struct.Memory* %call_42f6bf, %struct.Memory** %MEMORY

  ; Code: jb .L_42f6d1	 RIP: 42f6c6	 Bytes: 6
  %loadMem_42f6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6c6 = call %struct.Memory* @routine_jb_.L_42f6d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6c6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42f6c6, %struct.Memory** %MEMORY

  %loadBr_42f6c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6c6 = icmp eq i8 %loadBr_42f6c6, 1
  br i1 %cmpBr_42f6c6, label %block_.L_42f6d1, label %block_.L_42f6cc

  ; Code: .L_42f6cc:	 RIP: 42f6cc	 Bytes: 0
block_.L_42f6cc:

  ; Code: jmpq .L_42f75f	 RIP: 42f6cc	 Bytes: 5
  %loadMem_42f6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6cc = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6cc, i64 147, i64 5)
  store %struct.Memory* %call_42f6cc, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f6d1:	 RIP: 42f6d1	 Bytes: 0
block_.L_42f6d1:

  ; Code: cmpl $0x0, -0x54(%rbp)	 RIP: 42f6d1	 Bytes: 4
  %loadMem_42f6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6d1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6d1)
  store %struct.Memory* %call_42f6d1, %struct.Memory** %MEMORY

  ; Code: jle .L_42f704	 RIP: 42f6d5	 Bytes: 6
  %loadMem_42f6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6d5 = call %struct.Memory* @routine_jle_.L_42f704(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6d5, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_42f6d5, %struct.Memory** %MEMORY

  %loadBr_42f6d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6d5 = icmp eq i8 %loadBr_42f6d5, 1
  br i1 %cmpBr_42f6d5, label %block_.L_42f704, label %block_42f6db

block_42f6db:
  ; Code: movl $0x3, %eax	 RIP: 42f6db	 Bytes: 5
  %loadMem_42f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6db = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6db)
  store %struct.Memory* %call_42f6db, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 42f6e0	 Bytes: 3
  %loadMem_42f6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6e0 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6e0)
  store %struct.Memory* %call_42f6e0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42f6e3	 Bytes: 3
  %loadMem_42f6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6e3 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6e3)
  store %struct.Memory* %call_42f6e3, %struct.Memory** %MEMORY

  ; Code: imull $0x14, %ecx, %ecx	 RIP: 42f6e6	 Bytes: 3
  %loadMem_42f6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6e6 = call %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6e6)
  store %struct.Memory* %call_42f6e6, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 42f6e9	 Bytes: 3
  %loadMem_42f6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6e9 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6e9)
  store %struct.Memory* %call_42f6e9, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %ecx	 RIP: 42f6ec	 Bytes: 3
  %loadMem_42f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6ec = call %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6ec)
  store %struct.Memory* %call_42f6ec, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42f6ef	 Bytes: 3
  %loadMem_42f6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6ef = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6ef)
  store %struct.Memory* %call_42f6ef, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rdx,1), %ecx	 RIP: 42f6f2	 Bytes: 8
  %loadMem_42f6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6f2 = call %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6f2)
  store %struct.Memory* %call_42f6f2, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 42f6fa	 Bytes: 2
  %loadMem_42f6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6fa = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6fa)
  store %struct.Memory* %call_42f6fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 42f6fc	 Bytes: 3
  %loadMem_42f6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6fc = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6fc)
  store %struct.Memory* %call_42f6fc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f728	 RIP: 42f6ff	 Bytes: 5
  %loadMem_42f6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f6ff = call %struct.Memory* @routine_jmpq_.L_42f728(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f6ff, i64 41, i64 5)
  store %struct.Memory* %call_42f6ff, %struct.Memory** %MEMORY

  br label %block_.L_42f728

  ; Code: .L_42f704:	 RIP: 42f704	 Bytes: 0
block_.L_42f704:

  ; Code: movl $0x3, %eax	 RIP: 42f704	 Bytes: 5
  %loadMem_42f704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f704 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f704)
  store %struct.Memory* %call_42f704, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 42f709	 Bytes: 3
  %loadMem_42f709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f709 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f709)
  store %struct.Memory* %call_42f709, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42f70c	 Bytes: 3
  %loadMem_42f70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f70c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f70c)
  store %struct.Memory* %call_42f70c, %struct.Memory** %MEMORY

  ; Code: imull $0x14, %ecx, %ecx	 RIP: 42f70f	 Bytes: 3
  %loadMem_42f70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f70f = call %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f70f)
  store %struct.Memory* %call_42f70f, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 42f712	 Bytes: 3
  %loadMem_42f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f712 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f712)
  store %struct.Memory* %call_42f712, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %ecx	 RIP: 42f715	 Bytes: 3
  %loadMem_42f715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f715 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f715)
  store %struct.Memory* %call_42f715, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42f718	 Bytes: 3
  %loadMem_42f718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f718 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f718)
  store %struct.Memory* %call_42f718, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rdx,1), %ecx	 RIP: 42f71b	 Bytes: 8
  %loadMem_42f71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f71b = call %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f71b)
  store %struct.Memory* %call_42f71b, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 42f723	 Bytes: 2
  %loadMem_42f723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f723 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f723)
  store %struct.Memory* %call_42f723, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 42f725	 Bytes: 3
  %loadMem_42f725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f725 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f725)
  store %struct.Memory* %call_42f725, %struct.Memory** %MEMORY

  ; Code: .L_42f728:	 RIP: 42f728	 Bytes: 0
  br label %block_.L_42f728
block_.L_42f728:

  ; Code: xorl %eax, %eax	 RIP: 42f728	 Bytes: 2
  %loadMem_42f728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f728 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f728)
  store %struct.Memory* %call_42f728, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 42f72a	 Bytes: 2
  %loadMem_42f72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f72a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f72a)
  store %struct.Memory* %call_42f72a, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x54(%rbp), %eax	 RIP: 42f72c	 Bytes: 4
  %loadMem_42f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f72c = call %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f72c)
  store %struct.Memory* %call_42f72c, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 42f730	 Bytes: 3
  %loadMem_42f730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f730 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f730)
  store %struct.Memory* %call_42f730, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %eax	 RIP: 42f733	 Bytes: 3
  %loadMem_42f733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f733 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f733)
  store %struct.Memory* %call_42f733, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 42f736	 Bytes: 3
  %loadMem_42f736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f736 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f736)
  store %struct.Memory* %call_42f736, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 42f739	 Bytes: 2
  %loadMem_42f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f739 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f739)
  store %struct.Memory* %call_42f739, %struct.Memory** %MEMORY

  ; Code: callq .is_ko	 RIP: 42f73b	 Bytes: 5
  %loadMem1_42f73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42f73b = call %struct.Memory* @routine_callq_.is_ko(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42f73b, i64 -132411, i64 5, i64 5)
  store %struct.Memory* %call1_42f73b, %struct.Memory** %MEMORY

  %loadMem2_42f73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f73b = load i64, i64* %3
  %call2_42f73b = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64  %loadPC_42f73b, %struct.Memory* %loadMem2_42f73b)
  store %struct.Memory* %call2_42f73b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42f740	 Bytes: 3
  %loadMem_42f740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f740 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f740)
  store %struct.Memory* %call_42f740, %struct.Memory** %MEMORY

  ; Code: je .L_42f75a	 RIP: 42f743	 Bytes: 6
  %loadMem_42f743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f743 = call %struct.Memory* @routine_je_.L_42f75a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f743, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_42f743, %struct.Memory** %MEMORY

  %loadBr_42f743 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f743 = icmp eq i8 %loadBr_42f743, 1
  br i1 %cmpBr_42f743, label %block_.L_42f75a, label %block_42f749

block_42f749:
  ; Code: imull $0x14, -0x54(%rbp), %eax	 RIP: 42f749	 Bytes: 4
  %loadMem_42f749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f749 = call %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f749)
  store %struct.Memory* %call_42f749, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 42f74d	 Bytes: 3
  %loadMem_42f74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f74d = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f74d)
  store %struct.Memory* %call_42f74d, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %eax	 RIP: 42f750	 Bytes: 3
  %loadMem_42f750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f750 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f750)
  store %struct.Memory* %call_42f750, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xb6eec4	 RIP: 42f753	 Bytes: 7
  %loadMem_42f753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f753 = call %struct.Memory* @routine_movl__eax__0xb6eec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f753)
  store %struct.Memory* %call_42f753, %struct.Memory** %MEMORY

  ; Code: .L_42f75a:	 RIP: 42f75a	 Bytes: 0
  br label %block_.L_42f75a
block_.L_42f75a:

  ; Code: jmpq .L_42f75f	 RIP: 42f75a	 Bytes: 5
  %loadMem_42f75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f75a = call %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f75a, i64 5, i64 5)
  store %struct.Memory* %call_42f75a, %struct.Memory** %MEMORY

  br label %block_.L_42f75f

  ; Code: .L_42f75f:	 RIP: 42f75f	 Bytes: 0
block_.L_42f75f:

  ; Code: jmpq .L_42f764	 RIP: 42f75f	 Bytes: 5
  %loadMem_42f75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f75f = call %struct.Memory* @routine_jmpq_.L_42f764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f75f, i64 5, i64 5)
  store %struct.Memory* %call_42f75f, %struct.Memory** %MEMORY

  br label %block_.L_42f764

  ; Code: .L_42f764:	 RIP: 42f764	 Bytes: 0
block_.L_42f764:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 42f764	 Bytes: 4
  %loadMem_42f764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f764 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f764)
  store %struct.Memory* %call_42f764, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42f768	 Bytes: 3
  %loadMem_42f768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f768 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f768)
  store %struct.Memory* %call_42f768, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 42f76b	 Bytes: 4
  %loadMem_42f76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f76b = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f76b)
  store %struct.Memory* %call_42f76b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42f257	 RIP: 42f76f	 Bytes: 5
  %loadMem_42f76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f76f = call %struct.Memory* @routine_jmpq_.L_42f257(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f76f, i64 -1304, i64 5)
  store %struct.Memory* %call_42f76f, %struct.Memory** %MEMORY

  br label %block_.L_42f257

  ; Code: .L_42f774:	 RIP: 42f774	 Bytes: 0
block_.L_42f774:

  ; Code: jmpq .L_42f236	 RIP: 42f774	 Bytes: 5
  %loadMem_42f774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f774 = call %struct.Memory* @routine_jmpq_.L_42f236(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f774, i64 -1342, i64 5)
  store %struct.Memory* %call_42f774, %struct.Memory** %MEMORY

  br label %block_.L_42f236

  ; Code: .L_42f779:	 RIP: 42f779	 Bytes: 0
block_.L_42f779:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 42f779	 Bytes: 3
  %loadMem_42f779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f779 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f779)
  store %struct.Memory* %call_42f779, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42f77c	 Bytes: 4
  %loadMem_42f77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f77c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f77c)
  store %struct.Memory* %call_42f77c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 42f780	 Bytes: 3
  %loadMem_42f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f780 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f780)
  store %struct.Memory* %call_42f780, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 42f783	 Bytes: 3
  %loadMem_42f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f783 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f783)
  store %struct.Memory* %call_42f783, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 42f786	 Bytes: 3
  %loadMem_42f786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f786 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f786)
  store %struct.Memory* %call_42f786, %struct.Memory** %MEMORY

  ; Code: .L_42f789:	 RIP: 42f789	 Bytes: 0
  br label %block_.L_42f789
block_.L_42f789:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42f789	 Bytes: 3
  %loadMem_42f789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f789 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f789)
  store %struct.Memory* %call_42f789, %struct.Memory** %MEMORY

  ; Code: addq $0xb0, %rsp	 RIP: 42f78c	 Bytes: 7
  %loadMem_42f78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f78c = call %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f78c)
  store %struct.Memory* %call_42f78c, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42f793	 Bytes: 1
  %loadMem_42f793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f793 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f793)
  store %struct.Memory* %call_42f793, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42f794	 Bytes: 1
  %loadMem_42f794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42f794 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42f794)
  store %struct.Memory* %call_42f794, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42f794
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 176)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x579c4a___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x579c4a_type* @G__0x579c4a to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x270f__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9999)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq___rdx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
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

define %struct.Memory* @routine_callq_.sgfGetFloatProperty(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42f0b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_42f0a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss_0xb40a5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xb40a5__rip__type* @G_0xb40a5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42f0b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0xb4097__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xb4097__rip__type* @G_0xb4097__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_42f0b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x579c47___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x579c47_type* @G__0x579c47 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.sgfGetIntProperty(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_42f0e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x13__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 19)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_callq_.gnugo_clear_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.gnugo_set_komi(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_42f1ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x30___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 48)
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

define %struct.Memory* @routine_jle_.L_42f160(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x39___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 57)
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

define %struct.Memory* @routine_jg_.L_42f160(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.atoi_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_andl__0x80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 128)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_42f144(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f15b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57cac0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57cac0_type* @G__0x57cac0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.gprintf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42f1e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x41___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 65)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_cmpl__0x49___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 73)
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

define %struct.Memory* @routine_jl_.L_42f186(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
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


define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jne_.L_42f1c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f1e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57cad7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57cad7_type* @G__0x57cad7 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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






define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_42f1ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57ca87_type* @G__0x57ca87 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_je_.L_42f22a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_42f22a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_callq_.sgftreeForward(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_42f779(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42f774(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_42f27c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f2b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57caf9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57caf9_type* @G__0x57caf9 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0xff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 255)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movswl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_sarl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_subl__0x2042___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8258)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_je_.L_42f49a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f2d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x2057___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 8279)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_jmpq_.L_42f2ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_subl__0x4241___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16961)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_42f34b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f303(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_subl__0x4c49___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 19529)
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


define %struct.Memory* @routine_je_.L_42f66f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f319(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_subl__0x4c50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 19536)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_42f3fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f332(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_subl__0x5741___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 22337)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_42f3a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.get_moveXY(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.rotate(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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






define %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


























define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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












define %struct.Memory* @routine_cmpl__0x0__0xafdfb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_42f446(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42f446(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.gnugo_sethand(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq___rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.sgfOverwritePropertyInt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x77___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 119)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42f482(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 87)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpl__0x32___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42f48e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_42f495(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_0x8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x2057___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8279)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_je_.L_42f501(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_42f501(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jne_.L_42f53a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_callq_.sgftreeBack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42f789(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_42f59c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 84
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 56
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_42f597(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 60
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_42f59c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl_0x7ae438___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jae_.L_42f5f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 20)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x15___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 21)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_je_.L_42f60d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42f62b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_callq_.gnugo_play_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42f66a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57cb03___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57cb03_type* @G__0x57cb03 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x57cb47___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57cb47_type* @G__0x57cb47 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




























define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jae_.L_42f6cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jb_.L_42f6d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_42f704(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x15___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 21)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_42f728(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.is_ko(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_42f75a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__0xb6eec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb6eec4_type* @G_0xb6eec4 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_42f764(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42f257(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42f236(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 176)
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

