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

declare %struct.Memory* @sub_438450.clear_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4384f0.is_lively(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_438ca0.originate_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_438f80.count_neighbours(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0xac1610_type = type <{ [8 x i8] }>
@G__0xac1610= global %G__0xac1610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xac1c50_type = type <{ [8 x i8] }>
@G__0xac1c50= global %G__0xac1c50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @make_domains(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .make_domains:	 RIP: 437c30	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 437c30	 Bytes: 1
  %loadMem_437c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c30 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c30)
  store %struct.Memory* %call_437c30, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 437c31	 Bytes: 3
  %loadMem_437c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c31 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c31)
  store %struct.Memory* %call_437c31, %struct.Memory** %MEMORY

  ; Code: subq $0xcf0, %rsp	 RIP: 437c34	 Bytes: 7
  %loadMem_437c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c34 = call %struct.Memory* @routine_subq__0xcf0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c34)
  store %struct.Memory* %call_437c34, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 437c3b	 Bytes: 2
  %loadMem_437c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c3b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c3b)
  store %struct.Memory* %call_437c3b, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %ecx	 RIP: 437c3d	 Bytes: 5
  %loadMem_437c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c3d = call %struct.Memory* @routine_movl__0x640___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c3d)
  store %struct.Memory* %call_437c3d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 437c42	 Bytes: 3
  %loadMem_437c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c42 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c42)
  store %struct.Memory* %call_437c42, %struct.Memory** %MEMORY

  ; Code: leaq -0xcb0(%rbp), %r9	 RIP: 437c45	 Bytes: 7
  %loadMem_437c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c45 = call %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c45)
  store %struct.Memory* %call_437c45, %struct.Memory** %MEMORY

  ; Code: movq $0xac1c50, %r10	 RIP: 437c4c	 Bytes: 10
  %loadMem_437c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c4c = call %struct.Memory* @routine_movq__0xac1c50___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c4c)
  store %struct.Memory* %call_437c4c, %struct.Memory** %MEMORY

  ; Code: movq $0xac1610, %r11	 RIP: 437c56	 Bytes: 10
  %loadMem_437c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c56 = call %struct.Memory* @routine_movq__0xac1610___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c56)
  store %struct.Memory* %call_437c56, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 437c60	 Bytes: 4
  %loadMem_437c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c60 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c60)
  store %struct.Memory* %call_437c60, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 437c64	 Bytes: 4
  %loadMem_437c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c64 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c64)
  store %struct.Memory* %call_437c64, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 437c68	 Bytes: 3
  %loadMem_437c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c68 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c68)
  store %struct.Memory* %call_437c68, %struct.Memory** %MEMORY

  ; Code: movq %r11, %rdi	 RIP: 437c6b	 Bytes: 3
  %loadMem_437c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c6b = call %struct.Memory* @routine_movq__r11___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c6b)
  store %struct.Memory* %call_437c6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 437c6e	 Bytes: 2
  %loadMem_437c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c6e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c6e)
  store %struct.Memory* %call_437c6e, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 437c70	 Bytes: 3
  %loadMem_437c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c70 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c70)
  store %struct.Memory* %call_437c70, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xcd8(%rbp)	 RIP: 437c73	 Bytes: 7
  %loadMem_437c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c73 = call %struct.Memory* @routine_movq__r10__MINUS0xcd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c73)
  store %struct.Memory* %call_437c73, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xce0(%rbp)	 RIP: 437c7a	 Bytes: 7
  %loadMem_437c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c7a = call %struct.Memory* @routine_movq__r8__MINUS0xce0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c7a)
  store %struct.Memory* %call_437c7a, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0xce8(%rbp)	 RIP: 437c81	 Bytes: 7
  %loadMem_437c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c81 = call %struct.Memory* @routine_movq__r9__MINUS0xce8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c81)
  store %struct.Memory* %call_437c81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcec(%rbp)	 RIP: 437c88	 Bytes: 6
  %loadMem_437c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c88 = call %struct.Memory* @routine_movl__eax__MINUS0xcec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c88)
  store %struct.Memory* %call_437c88, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 437c8e	 Bytes: 5
  %loadMem1_437c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437c8e = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437c8e, i64 -224286, i64 5, i64 5)
  store %struct.Memory* %call1_437c8e, %struct.Memory** %MEMORY

  %loadMem2_437c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437c8e = load i64, i64* %3
  %call2_437c8e = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_437c8e, %struct.Memory* %loadMem2_437c8e)
  store %struct.Memory* %call2_437c8e, %struct.Memory** %MEMORY

  ; Code: movq -0xcd8(%rbp), %rdi	 RIP: 437c93	 Bytes: 7
  %loadMem_437c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c93 = call %struct.Memory* @routine_movq_MINUS0xcd8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c93)
  store %struct.Memory* %call_437c93, %struct.Memory** %MEMORY

  ; Code: movl -0xcec(%rbp), %esi	 RIP: 437c9a	 Bytes: 6
  %loadMem_437c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437c9a = call %struct.Memory* @routine_movl_MINUS0xcec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437c9a)
  store %struct.Memory* %call_437c9a, %struct.Memory** %MEMORY

  ; Code: movq -0xce0(%rbp), %rdx	 RIP: 437ca0	 Bytes: 7
  %loadMem_437ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ca0 = call %struct.Memory* @routine_movq_MINUS0xce0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ca0)
  store %struct.Memory* %call_437ca0, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 437ca7	 Bytes: 5
  %loadMem1_437ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437ca7 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437ca7, i64 -224311, i64 5, i64 5)
  store %struct.Memory* %call1_437ca7, %struct.Memory** %MEMORY

  %loadMem2_437ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437ca7 = load i64, i64* %3
  %call2_437ca7 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_437ca7, %struct.Memory* %loadMem2_437ca7)
  store %struct.Memory* %call2_437ca7, %struct.Memory** %MEMORY

  ; Code: movq -0xce8(%rbp), %rdx	 RIP: 437cac	 Bytes: 7
  %loadMem_437cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cac = call %struct.Memory* @routine_movq_MINUS0xce8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cac)
  store %struct.Memory* %call_437cac, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 437cb3	 Bytes: 3
  %loadMem_437cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cb3 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cb3)
  store %struct.Memory* %call_437cb3, %struct.Memory** %MEMORY

  ; Code: movl -0xcec(%rbp), %esi	 RIP: 437cb6	 Bytes: 6
  %loadMem_437cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cb6 = call %struct.Memory* @routine_movl_MINUS0xcec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cb6)
  store %struct.Memory* %call_437cb6, %struct.Memory** %MEMORY

  ; Code: movq -0xce0(%rbp), %rdx	 RIP: 437cbc	 Bytes: 7
  %loadMem_437cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cbc = call %struct.Memory* @routine_movq_MINUS0xce0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cbc)
  store %struct.Memory* %call_437cbc, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 437cc3	 Bytes: 5
  %loadMem1_437cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437cc3 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437cc3, i64 -224339, i64 5, i64 5)
  store %struct.Memory* %call1_437cc3, %struct.Memory** %MEMORY

  %loadMem2_437cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437cc3 = load i64, i64* %3
  %call2_437cc3 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_437cc3, %struct.Memory* %loadMem2_437cc3)
  store %struct.Memory* %call2_437cc3, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x24(%rbp)	 RIP: 437cc8	 Bytes: 7
  %loadMem_437cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cc8 = call %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cc8)
  store %struct.Memory* %call_437cc8, %struct.Memory** %MEMORY

  ; Code: .L_437ccf:	 RIP: 437ccf	 Bytes: 0
  br label %block_.L_437ccf
block_.L_437ccf:

  ; Code: cmpl $0x190, -0x24(%rbp)	 RIP: 437ccf	 Bytes: 7
  %loadMem_437ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ccf = call %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ccf)
  store %struct.Memory* %call_437ccf, %struct.Memory** %MEMORY

  ; Code: jge .L_437d5e	 RIP: 437cd6	 Bytes: 6
  %loadMem_437cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cd6 = call %struct.Memory* @routine_jge_.L_437d5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cd6, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_437cd6, %struct.Memory** %MEMORY

  %loadBr_437cd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437cd6 = icmp eq i8 %loadBr_437cd6, 1
  br i1 %cmpBr_437cd6, label %block_.L_437d5e, label %block_437cdc

block_437cdc:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437cdc	 Bytes: 4
  %loadMem_437cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cdc = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cdc)
  store %struct.Memory* %call_437cdc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 437ce0	 Bytes: 8
  %loadMem_437ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ce0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ce0)
  store %struct.Memory* %call_437ce0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 437ce8	 Bytes: 3
  %loadMem_437ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ce8 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ce8)
  store %struct.Memory* %call_437ce8, %struct.Memory** %MEMORY

  ; Code: je .L_437d4b	 RIP: 437ceb	 Bytes: 6
  %loadMem_437ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ceb = call %struct.Memory* @routine_je_.L_437d4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ceb, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_437ceb, %struct.Memory** %MEMORY

  %loadBr_437ceb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ceb = icmp eq i8 %loadBr_437ceb, 1
  br i1 %cmpBr_437ceb, label %block_.L_437d4b, label %block_437cf1

block_437cf1:
  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 437cf1	 Bytes: 5
  %loadMem_437cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cf1 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cf1)
  store %struct.Memory* %call_437cf1, %struct.Memory** %MEMORY

  ; Code: je .L_437d13	 RIP: 437cf6	 Bytes: 6
  %loadMem_437cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cf6 = call %struct.Memory* @routine_je_.L_437d13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cf6, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_437cf6, %struct.Memory** %MEMORY

  %loadBr_437cf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437cf6 = icmp eq i8 %loadBr_437cf6, 1
  br i1 %cmpBr_437cf6, label %block_.L_437d13, label %block_437cfc

block_437cfc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 437cfc	 Bytes: 4
  %loadMem_437cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437cfc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437cfc)
  store %struct.Memory* %call_437cfc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437d00	 Bytes: 4
  %loadMem_437d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d00 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d00)
  store %struct.Memory* %call_437d00, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437d04	 Bytes: 4
  %loadMem_437d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d04 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d04)
  store %struct.Memory* %call_437d04, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437d08	 Bytes: 3
  %loadMem_437d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d08 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d08)
  store %struct.Memory* %call_437d08, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 437d0b	 Bytes: 3
  %loadMem_437d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d0b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d0b)
  store %struct.Memory* %call_437d0b, %struct.Memory** %MEMORY

  ; Code: callq .clear_eye	 RIP: 437d0e	 Bytes: 5
  %loadMem1_437d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437d0e = call %struct.Memory* @routine_callq_.clear_eye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437d0e, i64 1858, i64 5, i64 5)
  store %struct.Memory* %call1_437d0e, %struct.Memory** %MEMORY

  %loadMem2_437d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d0e = load i64, i64* %3
  %call2_437d0e = call %struct.Memory* @sub_438450.clear_eye(%struct.State* %0, i64  %loadPC_437d0e, %struct.Memory* %loadMem2_437d0e)
  store %struct.Memory* %call2_437d0e, %struct.Memory** %MEMORY

  ; Code: .L_437d13:	 RIP: 437d13	 Bytes: 0
  br label %block_.L_437d13
block_.L_437d13:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 437d13	 Bytes: 5
  %loadMem_437d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d13 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d13)
  store %struct.Memory* %call_437d13, %struct.Memory** %MEMORY

  ; Code: je .L_437d35	 RIP: 437d18	 Bytes: 6
  %loadMem_437d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d18 = call %struct.Memory* @routine_je_.L_437d35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d18, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_437d18, %struct.Memory** %MEMORY

  %loadBr_437d18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437d18 = icmp eq i8 %loadBr_437d18, 1
  br i1 %cmpBr_437d18, label %block_.L_437d35, label %block_437d1e

block_437d1e:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 437d1e	 Bytes: 4
  %loadMem_437d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d1e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d1e)
  store %struct.Memory* %call_437d1e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437d22	 Bytes: 4
  %loadMem_437d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d22 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d22)
  store %struct.Memory* %call_437d22, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437d26	 Bytes: 4
  %loadMem_437d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d26 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d26)
  store %struct.Memory* %call_437d26, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437d2a	 Bytes: 3
  %loadMem_437d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d2a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d2a)
  store %struct.Memory* %call_437d2a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 437d2d	 Bytes: 3
  %loadMem_437d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d2d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d2d)
  store %struct.Memory* %call_437d2d, %struct.Memory** %MEMORY

  ; Code: callq .clear_eye	 RIP: 437d30	 Bytes: 5
  %loadMem1_437d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437d30 = call %struct.Memory* @routine_callq_.clear_eye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437d30, i64 1824, i64 5, i64 5)
  store %struct.Memory* %call1_437d30, %struct.Memory** %MEMORY

  %loadMem2_437d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d30 = load i64, i64* %3
  %call2_437d30 = call %struct.Memory* @sub_438450.clear_eye(%struct.State* %0, i64  %loadPC_437d30, %struct.Memory* %loadMem2_437d30)
  store %struct.Memory* %call2_437d30, %struct.Memory** %MEMORY

  ; Code: .L_437d35:	 RIP: 437d35	 Bytes: 0
  br label %block_.L_437d35
block_.L_437d35:

  ; Code: movl -0x14(%rbp), %edi	 RIP: 437d35	 Bytes: 3
  %loadMem_437d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d35 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d35)
  store %struct.Memory* %call_437d35, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 437d38	 Bytes: 3
  %loadMem_437d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d38 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d38)
  store %struct.Memory* %call_437d38, %struct.Memory** %MEMORY

  ; Code: callq .is_lively	 RIP: 437d3b	 Bytes: 5
  %loadMem1_437d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437d3b = call %struct.Memory* @routine_callq_.is_lively(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437d3b, i64 1973, i64 5, i64 5)
  store %struct.Memory* %call1_437d3b, %struct.Memory** %MEMORY

  %loadMem2_437d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d3b = load i64, i64* %3
  %call2_437d3b = call %struct.Memory* @sub_4384f0.is_lively(%struct.State* %0, i64  %loadPC_437d3b, %struct.Memory* %loadMem2_437d3b)
  store %struct.Memory* %call2_437d3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437d40	 Bytes: 4
  %loadMem_437d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d40 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d40)
  store %struct.Memory* %call_437d40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x670(%rbp,%rcx,4)	 RIP: 437d44	 Bytes: 7
  %loadMem_437d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d44 = call %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d44)
  store %struct.Memory* %call_437d44, %struct.Memory** %MEMORY

  ; Code: .L_437d4b:	 RIP: 437d4b	 Bytes: 0
  br label %block_.L_437d4b
block_.L_437d4b:

  ; Code: jmpq .L_437d50	 RIP: 437d4b	 Bytes: 5
  %loadMem_437d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d4b = call %struct.Memory* @routine_jmpq_.L_437d50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d4b, i64 5, i64 5)
  store %struct.Memory* %call_437d4b, %struct.Memory** %MEMORY

  br label %block_.L_437d50

  ; Code: .L_437d50:	 RIP: 437d50	 Bytes: 0
block_.L_437d50:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 437d50	 Bytes: 3
  %loadMem_437d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d50 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d50)
  store %struct.Memory* %call_437d50, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 437d53	 Bytes: 3
  %loadMem_437d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d53 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d53)
  store %struct.Memory* %call_437d53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 437d56	 Bytes: 3
  %loadMem_437d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d56 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d56)
  store %struct.Memory* %call_437d56, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437ccf	 RIP: 437d59	 Bytes: 5
  %loadMem_437d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d59 = call %struct.Memory* @routine_jmpq_.L_437ccf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d59, i64 -138, i64 5)
  store %struct.Memory* %call_437d59, %struct.Memory** %MEMORY

  br label %block_.L_437ccf

  ; Code: .L_437d5e:	 RIP: 437d5e	 Bytes: 0
block_.L_437d5e:

  ; Code: movl $0x2, %edi	 RIP: 437d5e	 Bytes: 5
  %loadMem_437d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d5e = call %struct.Memory* @routine_movl__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d5e)
  store %struct.Memory* %call_437d5e, %struct.Memory** %MEMORY

  ; Code: movq $0xac1610, %rsi	 RIP: 437d63	 Bytes: 10
  %loadMem_437d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d63 = call %struct.Memory* @routine_movq__0xac1610___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d63)
  store %struct.Memory* %call_437d63, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 437d6d	 Bytes: 6
  %loadMem_437d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d6d = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d6d)
  store %struct.Memory* %call_437d6d, %struct.Memory** %MEMORY

  ; Code: leaq -0xcb0(%rbp), %rcx	 RIP: 437d73	 Bytes: 7
  %loadMem_437d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d73 = call %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d73)
  store %struct.Memory* %call_437d73, %struct.Memory** %MEMORY

  ; Code: leaq -0x670(%rbp), %rdx	 RIP: 437d7a	 Bytes: 7
  %loadMem_437d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d7a = call %struct.Memory* @routine_leaq_MINUS0x670__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d7a)
  store %struct.Memory* %call_437d7a, %struct.Memory** %MEMORY

  ; Code: callq .compute_primary_domains	 RIP: 437d81	 Bytes: 5
  %loadMem1_437d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437d81 = call %struct.Memory* @routine_callq_.compute_primary_domains(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437d81, i64 2127, i64 5, i64 5)
  store %struct.Memory* %call1_437d81, %struct.Memory** %MEMORY

  %loadMem2_437d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437d81 = load i64, i64* %3
  %call2_437d81 = call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* %0, i64  %loadPC_437d81, %struct.Memory* %loadMem2_437d81)
  store %struct.Memory* %call2_437d81, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 437d86	 Bytes: 5
  %loadMem_437d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d86 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d86)
  store %struct.Memory* %call_437d86, %struct.Memory** %MEMORY

  ; Code: movq $0xac1c50, %rsi	 RIP: 437d8b	 Bytes: 10
  %loadMem_437d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d8b = call %struct.Memory* @routine_movq__0xac1c50___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d8b)
  store %struct.Memory* %call_437d8b, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 437d95	 Bytes: 3
  %loadMem_437d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d95 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d95)
  store %struct.Memory* %call_437d95, %struct.Memory** %MEMORY

  ; Code: leaq -0xcb0(%rbp), %rcx	 RIP: 437d98	 Bytes: 7
  %loadMem_437d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d98 = call %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d98)
  store %struct.Memory* %call_437d98, %struct.Memory** %MEMORY

  ; Code: leaq -0x670(%rbp), %rdx	 RIP: 437d9f	 Bytes: 7
  %loadMem_437d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437d9f = call %struct.Memory* @routine_leaq_MINUS0x670__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437d9f)
  store %struct.Memory* %call_437d9f, %struct.Memory** %MEMORY

  ; Code: callq .compute_primary_domains	 RIP: 437da6	 Bytes: 5
  %loadMem1_437da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437da6 = call %struct.Memory* @routine_callq_.compute_primary_domains(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437da6, i64 2090, i64 5, i64 5)
  store %struct.Memory* %call1_437da6, %struct.Memory** %MEMORY

  %loadMem2_437da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437da6 = load i64, i64* %3
  %call2_437da6 = call %struct.Memory* @sub_4385d0.compute_primary_domains(%struct.State* %0, i64  %loadPC_437da6, %struct.Memory* %loadMem2_437da6)
  store %struct.Memory* %call2_437da6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 437dab	 Bytes: 7
  %loadMem_437dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dab = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dab)
  store %struct.Memory* %call_437dab, %struct.Memory** %MEMORY

  ; Code: .L_437db2:	 RIP: 437db2	 Bytes: 0
  br label %block_.L_437db2
block_.L_437db2:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 437db2	 Bytes: 3
  %loadMem_437db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437db2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437db2)
  store %struct.Memory* %call_437db2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 437db5	 Bytes: 7
  %loadMem_437db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437db5 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437db5)
  store %struct.Memory* %call_437db5, %struct.Memory** %MEMORY

  ; Code: jge .L_43823b	 RIP: 437dbc	 Bytes: 6
  %loadMem_437dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dbc = call %struct.Memory* @routine_jge_.L_43823b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dbc, i8* %BRANCH_TAKEN, i64 1151, i64 6, i64 6)
  store %struct.Memory* %call_437dbc, %struct.Memory** %MEMORY

  %loadBr_437dbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437dbc = icmp eq i8 %loadBr_437dbc, 1
  br i1 %cmpBr_437dbc, label %block_.L_43823b, label %block_437dc2

block_437dc2:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 437dc2	 Bytes: 7
  %loadMem_437dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dc2 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dc2)
  store %struct.Memory* %call_437dc2, %struct.Memory** %MEMORY

  ; Code: .L_437dc9:	 RIP: 437dc9	 Bytes: 0
  br label %block_.L_437dc9
block_.L_437dc9:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 437dc9	 Bytes: 3
  %loadMem_437dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dc9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dc9)
  store %struct.Memory* %call_437dc9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 437dcc	 Bytes: 7
  %loadMem_437dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dcc = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dcc)
  store %struct.Memory* %call_437dcc, %struct.Memory** %MEMORY

  ; Code: jge .L_438228	 RIP: 437dd3	 Bytes: 6
  %loadMem_437dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dd3 = call %struct.Memory* @routine_jge_.L_438228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dd3, i8* %BRANCH_TAKEN, i64 1109, i64 6, i64 6)
  store %struct.Memory* %call_437dd3, %struct.Memory** %MEMORY

  %loadBr_437dd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437dd3 = icmp eq i8 %loadBr_437dd3, 1
  br i1 %cmpBr_437dd3, label %block_.L_438228, label %block_437dd9

block_437dd9:
  ; Code: imull $0x14, -0x18(%rbp), %eax	 RIP: 437dd9	 Bytes: 4
  %loadMem_437dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dd9 = call %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dd9)
  store %struct.Memory* %call_437dd9, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 437ddd	 Bytes: 3
  %loadMem_437ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ddd = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ddd)
  store %struct.Memory* %call_437ddd, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 437de0	 Bytes: 3
  %loadMem_437de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437de0 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437de0)
  store %struct.Memory* %call_437de0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 437de3	 Bytes: 3
  %loadMem_437de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437de3 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437de3)
  store %struct.Memory* %call_437de3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437de6	 Bytes: 4
  %loadMem_437de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437de6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437de6)
  store %struct.Memory* %call_437de6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 437dea	 Bytes: 8
  %loadMem_437dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dea = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dea)
  store %struct.Memory* %call_437dea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 437df2	 Bytes: 3
  %loadMem_437df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437df2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437df2)
  store %struct.Memory* %call_437df2, %struct.Memory** %MEMORY

  ; Code: je .L_437e0d	 RIP: 437df5	 Bytes: 6
  %loadMem_437df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437df5 = call %struct.Memory* @routine_je_.L_437e0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437df5, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_437df5, %struct.Memory** %MEMORY

  %loadBr_437df5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437df5 = icmp eq i8 %loadBr_437df5, 1
  br i1 %cmpBr_437df5, label %block_.L_437e0d, label %block_437dfb

block_437dfb:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437dfb	 Bytes: 4
  %loadMem_437dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dfb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dfb)
  store %struct.Memory* %call_437dfb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x670(%rbp,%rax,4)	 RIP: 437dff	 Bytes: 8
  %loadMem_437dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437dff = call %struct.Memory* @routine_cmpl__0x0__MINUS0x670__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437dff)
  store %struct.Memory* %call_437dff, %struct.Memory** %MEMORY

  ; Code: jne .L_438215	 RIP: 437e07	 Bytes: 6
  %loadMem_437e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e07 = call %struct.Memory* @routine_jne_.L_438215(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e07, i8* %BRANCH_TAKEN, i64 1038, i64 6, i64 6)
  store %struct.Memory* %call_437e07, %struct.Memory** %MEMORY

  %loadBr_437e07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e07 = icmp eq i8 %loadBr_437e07, 1
  br i1 %cmpBr_437e07, label %block_.L_438215, label %block_.L_437e0d

  ; Code: .L_437e0d:	 RIP: 437e0d	 Bytes: 0
block_.L_437e0d:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437e0d	 Bytes: 4
  %loadMem_437e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e0d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e0d)
  store %struct.Memory* %call_437e0d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 437e11	 Bytes: 8
  %loadMem_437e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e11 = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e11)
  store %struct.Memory* %call_437e11, %struct.Memory** %MEMORY

  ; Code: jne .L_437e76	 RIP: 437e19	 Bytes: 6
  %loadMem_437e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e19 = call %struct.Memory* @routine_jne_.L_437e76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e19, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_437e19, %struct.Memory** %MEMORY

  %loadBr_437e19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e19 = icmp eq i8 %loadBr_437e19, 1
  br i1 %cmpBr_437e19, label %block_.L_437e76, label %block_437e1f

block_437e1f:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437e1f	 Bytes: 4
  %loadMem_437e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e1f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e1f)
  store %struct.Memory* %call_437e1f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 437e23	 Bytes: 8
  %loadMem_437e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e23 = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e23)
  store %struct.Memory* %call_437e23, %struct.Memory** %MEMORY

  ; Code: jne .L_437e76	 RIP: 437e2b	 Bytes: 6
  %loadMem_437e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e2b = call %struct.Memory* @routine_jne_.L_437e76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e2b, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_437e2b, %struct.Memory** %MEMORY

  %loadBr_437e2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e2b = icmp eq i8 %loadBr_437e2b, 1
  br i1 %cmpBr_437e2b, label %block_.L_437e76, label %block_437e31

block_437e31:
  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 437e31	 Bytes: 5
  %loadMem_437e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e31 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e31)
  store %struct.Memory* %call_437e31, %struct.Memory** %MEMORY

  ; Code: je .L_437e51	 RIP: 437e36	 Bytes: 6
  %loadMem_437e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e36 = call %struct.Memory* @routine_je_.L_437e51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e36, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_437e36, %struct.Memory** %MEMORY

  %loadBr_437e36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e36 = icmp eq i8 %loadBr_437e36, 1
  br i1 %cmpBr_437e36, label %block_.L_437e51, label %block_437e3c

block_437e3c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 437e3c	 Bytes: 4
  %loadMem_437e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e3c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e3c)
  store %struct.Memory* %call_437e3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437e40	 Bytes: 4
  %loadMem_437e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e40 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e40)
  store %struct.Memory* %call_437e40, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437e44	 Bytes: 4
  %loadMem_437e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e44 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e44)
  store %struct.Memory* %call_437e44, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437e48	 Bytes: 3
  %loadMem_437e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e48 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e48)
  store %struct.Memory* %call_437e48, %struct.Memory** %MEMORY

  ; Code: movl $0x3, (%rax)	 RIP: 437e4b	 Bytes: 6
  %loadMem_437e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e4b = call %struct.Memory* @routine_movl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e4b)
  store %struct.Memory* %call_437e4b, %struct.Memory** %MEMORY

  ; Code: .L_437e51:	 RIP: 437e51	 Bytes: 0
  br label %block_.L_437e51
block_.L_437e51:

  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 437e51	 Bytes: 5
  %loadMem_437e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e51 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e51)
  store %struct.Memory* %call_437e51, %struct.Memory** %MEMORY

  ; Code: je .L_437e71	 RIP: 437e56	 Bytes: 6
  %loadMem_437e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e56 = call %struct.Memory* @routine_je_.L_437e71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e56, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_437e56, %struct.Memory** %MEMORY

  %loadBr_437e56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e56 = icmp eq i8 %loadBr_437e56, 1
  br i1 %cmpBr_437e56, label %block_.L_437e71, label %block_437e5c

block_437e5c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 437e5c	 Bytes: 4
  %loadMem_437e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e5c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e5c)
  store %struct.Memory* %call_437e5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437e60	 Bytes: 4
  %loadMem_437e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e60 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e60)
  store %struct.Memory* %call_437e60, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437e64	 Bytes: 4
  %loadMem_437e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e64 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e64)
  store %struct.Memory* %call_437e64, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437e68	 Bytes: 3
  %loadMem_437e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e68 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e68)
  store %struct.Memory* %call_437e68, %struct.Memory** %MEMORY

  ; Code: movl $0x3, (%rax)	 RIP: 437e6b	 Bytes: 6
  %loadMem_437e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e6b = call %struct.Memory* @routine_movl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e6b)
  store %struct.Memory* %call_437e6b, %struct.Memory** %MEMORY

  ; Code: .L_437e71:	 RIP: 437e71	 Bytes: 0
  br label %block_.L_437e71
block_.L_437e71:

  ; Code: jmpq .L_438210	 RIP: 437e71	 Bytes: 5
  %loadMem_437e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e71 = call %struct.Memory* @routine_jmpq_.L_438210(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e71, i64 927, i64 5)
  store %struct.Memory* %call_437e71, %struct.Memory** %MEMORY

  br label %block_.L_438210

  ; Code: .L_437e76:	 RIP: 437e76	 Bytes: 0
block_.L_437e76:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437e76	 Bytes: 4
  %loadMem_437e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e76 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e76)
  store %struct.Memory* %call_437e76, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xac1610(,%rax,4)	 RIP: 437e7a	 Bytes: 8
  %loadMem_437e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e7a = call %struct.Memory* @routine_cmpl__0x1__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e7a)
  store %struct.Memory* %call_437e7a, %struct.Memory** %MEMORY

  ; Code: jne .L_437f51	 RIP: 437e82	 Bytes: 6
  %loadMem_437e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e82 = call %struct.Memory* @routine_jne_.L_437f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e82, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_437e82, %struct.Memory** %MEMORY

  %loadBr_437e82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e82 = icmp eq i8 %loadBr_437e82, 1
  br i1 %cmpBr_437e82, label %block_.L_437f51, label %block_437e88

block_437e88:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437e88	 Bytes: 4
  %loadMem_437e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e88 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e88)
  store %struct.Memory* %call_437e88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 437e8c	 Bytes: 8
  %loadMem_437e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e8c = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e8c)
  store %struct.Memory* %call_437e8c, %struct.Memory** %MEMORY

  ; Code: jne .L_437f51	 RIP: 437e94	 Bytes: 6
  %loadMem_437e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e94 = call %struct.Memory* @routine_jne_.L_437f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e94, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_437e94, %struct.Memory** %MEMORY

  %loadBr_437e94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e94 = icmp eq i8 %loadBr_437e94, 1
  br i1 %cmpBr_437e94, label %block_.L_437f51, label %block_437e9a

block_437e9a:
  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 437e9a	 Bytes: 5
  %loadMem_437e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e9a = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e9a)
  store %struct.Memory* %call_437e9a, %struct.Memory** %MEMORY

  ; Code: je .L_437f51	 RIP: 437e9f	 Bytes: 6
  %loadMem_437e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437e9f = call %struct.Memory* @routine_je_.L_437f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437e9f, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_437e9f, %struct.Memory** %MEMORY

  %loadBr_437e9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437e9f = icmp eq i8 %loadBr_437e9f, 1
  br i1 %cmpBr_437e9f, label %block_.L_437f51, label %block_437ea5

block_437ea5:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 437ea5	 Bytes: 4
  %loadMem_437ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ea5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ea5)
  store %struct.Memory* %call_437ea5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437ea9	 Bytes: 4
  %loadMem_437ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ea9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ea9)
  store %struct.Memory* %call_437ea9, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437ead	 Bytes: 4
  %loadMem_437ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ead = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ead)
  store %struct.Memory* %call_437ead, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437eb1	 Bytes: 3
  %loadMem_437eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437eb1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437eb1)
  store %struct.Memory* %call_437eb1, %struct.Memory** %MEMORY

  ; Code: movl $0x5, (%rax)	 RIP: 437eb4	 Bytes: 6
  %loadMem_437eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437eb4 = call %struct.Memory* @routine_movl__0x5____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437eb4)
  store %struct.Memory* %call_437eb4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 437eba	 Bytes: 7
  %loadMem_437eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437eba = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437eba)
  store %struct.Memory* %call_437eba, %struct.Memory** %MEMORY

  ; Code: .L_437ec1:	 RIP: 437ec1	 Bytes: 0
  br label %block_.L_437ec1
block_.L_437ec1:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 437ec1	 Bytes: 4
  %loadMem_437ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ec1 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ec1)
  store %struct.Memory* %call_437ec1, %struct.Memory** %MEMORY

  ; Code: jge .L_437f4c	 RIP: 437ec5	 Bytes: 6
  %loadMem_437ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ec5 = call %struct.Memory* @routine_jge_.L_437f4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ec5, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_437ec5, %struct.Memory** %MEMORY

  %loadBr_437ec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ec5 = icmp eq i8 %loadBr_437ec5, 1
  br i1 %cmpBr_437ec5, label %block_.L_437f4c, label %block_437ecb

block_437ecb:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 437ecb	 Bytes: 3
  %loadMem_437ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ecb = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ecb)
  store %struct.Memory* %call_437ecb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 437ece	 Bytes: 4
  %loadMem_437ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ece = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ece)
  store %struct.Memory* %call_437ece, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 437ed2	 Bytes: 7
  %loadMem_437ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ed2 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ed2)
  store %struct.Memory* %call_437ed2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcb4(%rbp)	 RIP: 437ed9	 Bytes: 6
  %loadMem_437ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ed9 = call %struct.Memory* @routine_movl__eax__MINUS0xcb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ed9)
  store %struct.Memory* %call_437ed9, %struct.Memory** %MEMORY

  ; Code: movslq -0xcb4(%rbp), %rcx	 RIP: 437edf	 Bytes: 7
  %loadMem_437edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437edf = call %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437edf)
  store %struct.Memory* %call_437edf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 437ee6	 Bytes: 8
  %loadMem_437ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ee6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ee6)
  store %struct.Memory* %call_437ee6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 437eee	 Bytes: 3
  %loadMem_437eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437eee = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437eee)
  store %struct.Memory* %call_437eee, %struct.Memory** %MEMORY

  ; Code: je .L_437f39	 RIP: 437ef1	 Bytes: 6
  %loadMem_437ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ef1 = call %struct.Memory* @routine_je_.L_437f39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ef1, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_437ef1, %struct.Memory** %MEMORY

  %loadBr_437ef1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ef1 = icmp eq i8 %loadBr_437ef1, 1
  br i1 %cmpBr_437ef1, label %block_.L_437f39, label %block_437ef7

block_437ef7:
  ; Code: movslq -0xcb4(%rbp), %rax	 RIP: 437ef7	 Bytes: 7
  %loadMem_437ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ef7 = call %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ef7)
  store %struct.Memory* %call_437ef7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 437efe	 Bytes: 8
  %loadMem_437efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437efe = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437efe)
  store %struct.Memory* %call_437efe, %struct.Memory** %MEMORY

  ; Code: je .L_437f39	 RIP: 437f06	 Bytes: 6
  %loadMem_437f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f06 = call %struct.Memory* @routine_je_.L_437f39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f06, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_437f06, %struct.Memory** %MEMORY

  %loadBr_437f06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f06 = icmp eq i8 %loadBr_437f06, 1
  br i1 %cmpBr_437f06, label %block_.L_437f39, label %block_437f0c

block_437f0c:
  ; Code: movslq -0xcb4(%rbp), %rax	 RIP: 437f0c	 Bytes: 7
  %loadMem_437f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f0c = call %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f0c)
  store %struct.Memory* %call_437f0c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 437f13	 Bytes: 8
  %loadMem_437f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f13 = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f13)
  store %struct.Memory* %call_437f13, %struct.Memory** %MEMORY

  ; Code: jne .L_437f39	 RIP: 437f1b	 Bytes: 6
  %loadMem_437f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f1b = call %struct.Memory* @routine_jne_.L_437f39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f1b, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_437f1b, %struct.Memory** %MEMORY

  %loadBr_437f1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f1b = icmp eq i8 %loadBr_437f1b, 1
  br i1 %cmpBr_437f1b, label %block_.L_437f39, label %block_437f21

block_437f21:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 437f21	 Bytes: 4
  %loadMem_437f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f21 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f21)
  store %struct.Memory* %call_437f21, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437f25	 Bytes: 4
  %loadMem_437f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f25 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f25)
  store %struct.Memory* %call_437f25, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437f29	 Bytes: 4
  %loadMem_437f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f29 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f29)
  store %struct.Memory* %call_437f29, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437f2d	 Bytes: 3
  %loadMem_437f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f2d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f2d)
  store %struct.Memory* %call_437f2d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, 0x1c(%rax)	 RIP: 437f30	 Bytes: 4
  %loadMem_437f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f30 = call %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f30)
  store %struct.Memory* %call_437f30, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437f4c	 RIP: 437f34	 Bytes: 5
  %loadMem_437f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f34 = call %struct.Memory* @routine_jmpq_.L_437f4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f34, i64 24, i64 5)
  store %struct.Memory* %call_437f34, %struct.Memory** %MEMORY

  br label %block_.L_437f4c

  ; Code: .L_437f39:	 RIP: 437f39	 Bytes: 0
block_.L_437f39:

  ; Code: jmpq .L_437f3e	 RIP: 437f39	 Bytes: 5
  %loadMem_437f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f39 = call %struct.Memory* @routine_jmpq_.L_437f3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f39, i64 5, i64 5)
  store %struct.Memory* %call_437f39, %struct.Memory** %MEMORY

  br label %block_.L_437f3e

  ; Code: .L_437f3e:	 RIP: 437f3e	 Bytes: 0
block_.L_437f3e:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 437f3e	 Bytes: 3
  %loadMem_437f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f3e = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f3e)
  store %struct.Memory* %call_437f3e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 437f41	 Bytes: 3
  %loadMem_437f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f41 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f41)
  store %struct.Memory* %call_437f41, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 437f44	 Bytes: 3
  %loadMem_437f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f44 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f44)
  store %struct.Memory* %call_437f44, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437ec1	 RIP: 437f47	 Bytes: 5
  %loadMem_437f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f47 = call %struct.Memory* @routine_jmpq_.L_437ec1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f47, i64 -134, i64 5)
  store %struct.Memory* %call_437f47, %struct.Memory** %MEMORY

  br label %block_.L_437ec1

  ; Code: .L_437f4c:	 RIP: 437f4c	 Bytes: 0
block_.L_437f4c:

  ; Code: jmpq .L_43820b	 RIP: 437f4c	 Bytes: 5
  %loadMem_437f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f4c = call %struct.Memory* @routine_jmpq_.L_43820b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f4c, i64 703, i64 5)
  store %struct.Memory* %call_437f4c, %struct.Memory** %MEMORY

  br label %block_.L_43820b

  ; Code: .L_437f51:	 RIP: 437f51	 Bytes: 0
block_.L_437f51:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437f51	 Bytes: 4
  %loadMem_437f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f51 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f51)
  store %struct.Memory* %call_437f51, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 437f55	 Bytes: 8
  %loadMem_437f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f55 = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f55)
  store %struct.Memory* %call_437f55, %struct.Memory** %MEMORY

  ; Code: jne .L_43802c	 RIP: 437f5d	 Bytes: 6
  %loadMem_437f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f5d = call %struct.Memory* @routine_jne_.L_43802c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f5d, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_437f5d, %struct.Memory** %MEMORY

  %loadBr_437f5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f5d = icmp eq i8 %loadBr_437f5d, 1
  br i1 %cmpBr_437f5d, label %block_.L_43802c, label %block_437f63

block_437f63:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 437f63	 Bytes: 4
  %loadMem_437f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f63 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f63)
  store %struct.Memory* %call_437f63, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xac1c50(,%rax,4)	 RIP: 437f67	 Bytes: 8
  %loadMem_437f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f67 = call %struct.Memory* @routine_cmpl__0x1__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f67)
  store %struct.Memory* %call_437f67, %struct.Memory** %MEMORY

  ; Code: jne .L_43802c	 RIP: 437f6f	 Bytes: 6
  %loadMem_437f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f6f = call %struct.Memory* @routine_jne_.L_43802c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f6f, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_437f6f, %struct.Memory** %MEMORY

  %loadBr_437f6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f6f = icmp eq i8 %loadBr_437f6f, 1
  br i1 %cmpBr_437f6f, label %block_.L_43802c, label %block_437f75

block_437f75:
  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 437f75	 Bytes: 5
  %loadMem_437f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f75 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f75)
  store %struct.Memory* %call_437f75, %struct.Memory** %MEMORY

  ; Code: je .L_43802c	 RIP: 437f7a	 Bytes: 6
  %loadMem_437f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f7a = call %struct.Memory* @routine_je_.L_43802c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f7a, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_437f7a, %struct.Memory** %MEMORY

  %loadBr_437f7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437f7a = icmp eq i8 %loadBr_437f7a, 1
  br i1 %cmpBr_437f7a, label %block_.L_43802c, label %block_437f80

block_437f80:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 437f80	 Bytes: 4
  %loadMem_437f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f80 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f80)
  store %struct.Memory* %call_437f80, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 437f84	 Bytes: 4
  %loadMem_437f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f84 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f84)
  store %struct.Memory* %call_437f84, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 437f88	 Bytes: 4
  %loadMem_437f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f88 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f88)
  store %struct.Memory* %call_437f88, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 437f8c	 Bytes: 3
  %loadMem_437f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f8c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f8c)
  store %struct.Memory* %call_437f8c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, (%rax)	 RIP: 437f8f	 Bytes: 6
  %loadMem_437f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f8f = call %struct.Memory* @routine_movl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f8f)
  store %struct.Memory* %call_437f8f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 437f95	 Bytes: 7
  %loadMem_437f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f95 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f95)
  store %struct.Memory* %call_437f95, %struct.Memory** %MEMORY

  ; Code: .L_437f9c:	 RIP: 437f9c	 Bytes: 0
  br label %block_.L_437f9c
block_.L_437f9c:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 437f9c	 Bytes: 4
  %loadMem_437f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437f9c = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437f9c)
  store %struct.Memory* %call_437f9c, %struct.Memory** %MEMORY

  ; Code: jge .L_438027	 RIP: 437fa0	 Bytes: 6
  %loadMem_437fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fa0 = call %struct.Memory* @routine_jge_.L_438027(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fa0, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_437fa0, %struct.Memory** %MEMORY

  %loadBr_437fa0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fa0 = icmp eq i8 %loadBr_437fa0, 1
  br i1 %cmpBr_437fa0, label %block_.L_438027, label %block_437fa6

block_437fa6:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 437fa6	 Bytes: 3
  %loadMem_437fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fa6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fa6)
  store %struct.Memory* %call_437fa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 437fa9	 Bytes: 4
  %loadMem_437fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fa9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fa9)
  store %struct.Memory* %call_437fa9, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 437fad	 Bytes: 7
  %loadMem_437fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fad = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fad)
  store %struct.Memory* %call_437fad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcb8(%rbp)	 RIP: 437fb4	 Bytes: 6
  %loadMem_437fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fb4 = call %struct.Memory* @routine_movl__eax__MINUS0xcb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fb4)
  store %struct.Memory* %call_437fb4, %struct.Memory** %MEMORY

  ; Code: movslq -0xcb8(%rbp), %rcx	 RIP: 437fba	 Bytes: 7
  %loadMem_437fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fba = call %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fba)
  store %struct.Memory* %call_437fba, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 437fc1	 Bytes: 8
  %loadMem_437fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fc1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fc1)
  store %struct.Memory* %call_437fc1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 437fc9	 Bytes: 3
  %loadMem_437fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fc9 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fc9)
  store %struct.Memory* %call_437fc9, %struct.Memory** %MEMORY

  ; Code: je .L_438014	 RIP: 437fcc	 Bytes: 6
  %loadMem_437fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fcc = call %struct.Memory* @routine_je_.L_438014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fcc, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_437fcc, %struct.Memory** %MEMORY

  %loadBr_437fcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fcc = icmp eq i8 %loadBr_437fcc, 1
  br i1 %cmpBr_437fcc, label %block_.L_438014, label %block_437fd2

block_437fd2:
  ; Code: movslq -0xcb8(%rbp), %rax	 RIP: 437fd2	 Bytes: 7
  %loadMem_437fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fd2 = call %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fd2)
  store %struct.Memory* %call_437fd2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 437fd9	 Bytes: 8
  %loadMem_437fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fd9 = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fd9)
  store %struct.Memory* %call_437fd9, %struct.Memory** %MEMORY

  ; Code: je .L_438014	 RIP: 437fe1	 Bytes: 6
  %loadMem_437fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fe1 = call %struct.Memory* @routine_je_.L_438014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fe1, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_437fe1, %struct.Memory** %MEMORY

  %loadBr_437fe1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437fe1 = icmp eq i8 %loadBr_437fe1, 1
  br i1 %cmpBr_437fe1, label %block_.L_438014, label %block_437fe7

block_437fe7:
  ; Code: movslq -0xcb8(%rbp), %rax	 RIP: 437fe7	 Bytes: 7
  %loadMem_437fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fe7 = call %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fe7)
  store %struct.Memory* %call_437fe7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 437fee	 Bytes: 8
  %loadMem_437fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437fee = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437fee)
  store %struct.Memory* %call_437fee, %struct.Memory** %MEMORY

  ; Code: jne .L_438014	 RIP: 437ff6	 Bytes: 6
  %loadMem_437ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ff6 = call %struct.Memory* @routine_jne_.L_438014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ff6, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_437ff6, %struct.Memory** %MEMORY

  %loadBr_437ff6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_437ff6 = icmp eq i8 %loadBr_437ff6, 1
  br i1 %cmpBr_437ff6, label %block_.L_438014, label %block_437ffc

block_437ffc:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 437ffc	 Bytes: 4
  %loadMem_437ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437ffc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437ffc)
  store %struct.Memory* %call_437ffc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 438000	 Bytes: 4
  %loadMem_438000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438000 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438000)
  store %struct.Memory* %call_438000, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 438004	 Bytes: 4
  %loadMem_438004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438004 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438004)
  store %struct.Memory* %call_438004, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 438008	 Bytes: 3
  %loadMem_438008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438008 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438008)
  store %struct.Memory* %call_438008, %struct.Memory** %MEMORY

  ; Code: movb $0x1, 0x1c(%rax)	 RIP: 43800b	 Bytes: 4
  %loadMem_43800b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43800b = call %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43800b)
  store %struct.Memory* %call_43800b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_438027	 RIP: 43800f	 Bytes: 5
  %loadMem_43800f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43800f = call %struct.Memory* @routine_jmpq_.L_438027(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43800f, i64 24, i64 5)
  store %struct.Memory* %call_43800f, %struct.Memory** %MEMORY

  br label %block_.L_438027

  ; Code: .L_438014:	 RIP: 438014	 Bytes: 0
block_.L_438014:

  ; Code: jmpq .L_438019	 RIP: 438014	 Bytes: 5
  %loadMem_438014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438014 = call %struct.Memory* @routine_jmpq_.L_438019(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438014, i64 5, i64 5)
  store %struct.Memory* %call_438014, %struct.Memory** %MEMORY

  br label %block_.L_438019

  ; Code: .L_438019:	 RIP: 438019	 Bytes: 0
block_.L_438019:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 438019	 Bytes: 3
  %loadMem_438019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438019 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438019)
  store %struct.Memory* %call_438019, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43801c	 Bytes: 3
  %loadMem_43801c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43801c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43801c)
  store %struct.Memory* %call_43801c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 43801f	 Bytes: 3
  %loadMem_43801f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43801f = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43801f)
  store %struct.Memory* %call_43801f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437f9c	 RIP: 438022	 Bytes: 5
  %loadMem_438022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438022 = call %struct.Memory* @routine_jmpq_.L_437f9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438022, i64 -134, i64 5)
  store %struct.Memory* %call_438022, %struct.Memory** %MEMORY

  br label %block_.L_437f9c

  ; Code: .L_438027:	 RIP: 438027	 Bytes: 0
block_.L_438027:

  ; Code: jmpq .L_438206	 RIP: 438027	 Bytes: 5
  %loadMem_438027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438027 = call %struct.Memory* @routine_jmpq_.L_438206(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438027, i64 479, i64 5)
  store %struct.Memory* %call_438027, %struct.Memory** %MEMORY

  br label %block_.L_438206

  ; Code: .L_43802c:	 RIP: 43802c	 Bytes: 0
block_.L_43802c:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43802c	 Bytes: 4
  %loadMem_43802c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43802c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43802c)
  store %struct.Memory* %call_43802c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xac1610(,%rax,4)	 RIP: 438030	 Bytes: 8
  %loadMem_438030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438030 = call %struct.Memory* @routine_cmpl__0x1__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438030)
  store %struct.Memory* %call_438030, %struct.Memory** %MEMORY

  ; Code: jne .L_438201	 RIP: 438038	 Bytes: 6
  %loadMem_438038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438038 = call %struct.Memory* @routine_jne_.L_438201(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438038, i8* %BRANCH_TAKEN, i64 457, i64 6, i64 6)
  store %struct.Memory* %call_438038, %struct.Memory** %MEMORY

  %loadBr_438038 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438038 = icmp eq i8 %loadBr_438038, 1
  br i1 %cmpBr_438038, label %block_.L_438201, label %block_43803e

block_43803e:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43803e	 Bytes: 4
  %loadMem_43803e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43803e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43803e)
  store %struct.Memory* %call_43803e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xac1c50(,%rax,4)	 RIP: 438042	 Bytes: 8
  %loadMem_438042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438042 = call %struct.Memory* @routine_cmpl__0x1__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438042)
  store %struct.Memory* %call_438042, %struct.Memory** %MEMORY

  ; Code: jne .L_438201	 RIP: 43804a	 Bytes: 6
  %loadMem_43804a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43804a = call %struct.Memory* @routine_jne_.L_438201(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43804a, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_43804a, %struct.Memory** %MEMORY

  %loadBr_43804a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43804a = icmp eq i8 %loadBr_43804a, 1
  br i1 %cmpBr_43804a, label %block_.L_438201, label %block_438050

block_438050:
  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 438050	 Bytes: 5
  %loadMem_438050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438050 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438050)
  store %struct.Memory* %call_438050, %struct.Memory** %MEMORY

  ; Code: je .L_438126	 RIP: 438055	 Bytes: 6
  %loadMem_438055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438055 = call %struct.Memory* @routine_je_.L_438126(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438055, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_438055, %struct.Memory** %MEMORY

  %loadBr_438055 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438055 = icmp eq i8 %loadBr_438055, 1
  br i1 %cmpBr_438055, label %block_.L_438126, label %block_43805b

block_43805b:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 43805b	 Bytes: 7
  %loadMem_43805b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43805b = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43805b)
  store %struct.Memory* %call_43805b, %struct.Memory** %MEMORY

  ; Code: .L_438062:	 RIP: 438062	 Bytes: 0
  br label %block_.L_438062
block_.L_438062:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 438062	 Bytes: 4
  %loadMem_438062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438062 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438062)
  store %struct.Memory* %call_438062, %struct.Memory** %MEMORY

  ; Code: jge .L_438102	 RIP: 438066	 Bytes: 6
  %loadMem_438066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438066 = call %struct.Memory* @routine_jge_.L_438102(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438066, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_438066, %struct.Memory** %MEMORY

  %loadBr_438066 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438066 = icmp eq i8 %loadBr_438066, 1
  br i1 %cmpBr_438066, label %block_.L_438102, label %block_43806c

block_43806c:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 43806c	 Bytes: 3
  %loadMem_43806c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43806c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43806c)
  store %struct.Memory* %call_43806c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 43806f	 Bytes: 4
  %loadMem_43806f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43806f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43806f)
  store %struct.Memory* %call_43806f, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 438073	 Bytes: 7
  %loadMem_438073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438073 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438073)
  store %struct.Memory* %call_438073, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcbc(%rbp)	 RIP: 43807a	 Bytes: 6
  %loadMem_43807a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43807a = call %struct.Memory* @routine_movl__eax__MINUS0xcbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43807a)
  store %struct.Memory* %call_43807a, %struct.Memory** %MEMORY

  ; Code: movslq -0xcbc(%rbp), %rcx	 RIP: 438080	 Bytes: 7
  %loadMem_438080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438080 = call %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438080)
  store %struct.Memory* %call_438080, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 438087	 Bytes: 8
  %loadMem_438087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438087 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438087)
  store %struct.Memory* %call_438087, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 43808f	 Bytes: 3
  %loadMem_43808f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43808f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43808f)
  store %struct.Memory* %call_43808f, %struct.Memory** %MEMORY

  ; Code: je .L_4380ef	 RIP: 438092	 Bytes: 6
  %loadMem_438092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438092 = call %struct.Memory* @routine_je_.L_4380ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438092, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_438092, %struct.Memory** %MEMORY

  %loadBr_438092 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438092 = icmp eq i8 %loadBr_438092, 1
  br i1 %cmpBr_438092, label %block_.L_4380ef, label %block_438098

block_438098:
  ; Code: movslq -0xcbc(%rbp), %rax	 RIP: 438098	 Bytes: 7
  %loadMem_438098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438098 = call %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438098)
  store %struct.Memory* %call_438098, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 43809f	 Bytes: 8
  %loadMem_43809f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43809f = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43809f)
  store %struct.Memory* %call_43809f, %struct.Memory** %MEMORY

  ; Code: je .L_4380ef	 RIP: 4380a7	 Bytes: 6
  %loadMem_4380a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380a7 = call %struct.Memory* @routine_je_.L_4380ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380a7, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4380a7, %struct.Memory** %MEMORY

  %loadBr_4380a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4380a7 = icmp eq i8 %loadBr_4380a7, 1
  br i1 %cmpBr_4380a7, label %block_.L_4380ef, label %block_4380ad

block_4380ad:
  ; Code: movslq -0xcbc(%rbp), %rax	 RIP: 4380ad	 Bytes: 7
  %loadMem_4380ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380ad = call %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380ad)
  store %struct.Memory* %call_4380ad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 4380b4	 Bytes: 8
  %loadMem_4380b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380b4 = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380b4)
  store %struct.Memory* %call_4380b4, %struct.Memory** %MEMORY

  ; Code: jne .L_4380ef	 RIP: 4380bc	 Bytes: 6
  %loadMem_4380bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380bc = call %struct.Memory* @routine_jne_.L_4380ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380bc, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4380bc, %struct.Memory** %MEMORY

  %loadBr_4380bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4380bc = icmp eq i8 %loadBr_4380bc, 1
  br i1 %cmpBr_4380bc, label %block_.L_4380ef, label %block_4380c2

block_4380c2:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4380c2	 Bytes: 4
  %loadMem_4380c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380c2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380c2)
  store %struct.Memory* %call_4380c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4380c6	 Bytes: 4
  %loadMem_4380c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380c6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380c6)
  store %struct.Memory* %call_4380c6, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4380ca	 Bytes: 4
  %loadMem_4380ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380ca = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380ca)
  store %struct.Memory* %call_4380ca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4380ce	 Bytes: 3
  %loadMem_4380ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380ce = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380ce)
  store %struct.Memory* %call_4380ce, %struct.Memory** %MEMORY

  ; Code: movb $0x1, 0x1c(%rax)	 RIP: 4380d1	 Bytes: 4
  %loadMem_4380d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380d1 = call %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380d1)
  store %struct.Memory* %call_4380d1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4380d5	 Bytes: 4
  %loadMem_4380d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380d5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380d5)
  store %struct.Memory* %call_4380d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4380d9	 Bytes: 4
  %loadMem_4380d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380d9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380d9)
  store %struct.Memory* %call_4380d9, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4380dd	 Bytes: 4
  %loadMem_4380dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380dd = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380dd)
  store %struct.Memory* %call_4380dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4380e1	 Bytes: 3
  %loadMem_4380e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380e1)
  store %struct.Memory* %call_4380e1, %struct.Memory** %MEMORY

  ; Code: movl $0x5, (%rax)	 RIP: 4380e4	 Bytes: 6
  %loadMem_4380e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380e4 = call %struct.Memory* @routine_movl__0x5____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380e4)
  store %struct.Memory* %call_4380e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_438102	 RIP: 4380ea	 Bytes: 5
  %loadMem_4380ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380ea = call %struct.Memory* @routine_jmpq_.L_438102(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380ea, i64 24, i64 5)
  store %struct.Memory* %call_4380ea, %struct.Memory** %MEMORY

  br label %block_.L_438102

  ; Code: .L_4380ef:	 RIP: 4380ef	 Bytes: 0
block_.L_4380ef:

  ; Code: jmpq .L_4380f4	 RIP: 4380ef	 Bytes: 5
  %loadMem_4380ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380ef = call %struct.Memory* @routine_jmpq_.L_4380f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380ef, i64 5, i64 5)
  store %struct.Memory* %call_4380ef, %struct.Memory** %MEMORY

  br label %block_.L_4380f4

  ; Code: .L_4380f4:	 RIP: 4380f4	 Bytes: 0
block_.L_4380f4:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4380f4	 Bytes: 3
  %loadMem_4380f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380f4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380f4)
  store %struct.Memory* %call_4380f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4380f7	 Bytes: 3
  %loadMem_4380f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380f7)
  store %struct.Memory* %call_4380f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4380fa	 Bytes: 3
  %loadMem_4380fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380fa = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380fa)
  store %struct.Memory* %call_4380fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_438062	 RIP: 4380fd	 Bytes: 5
  %loadMem_4380fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4380fd = call %struct.Memory* @routine_jmpq_.L_438062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4380fd, i64 -155, i64 5)
  store %struct.Memory* %call_4380fd, %struct.Memory** %MEMORY

  br label %block_.L_438062

  ; Code: .L_438102:	 RIP: 438102	 Bytes: 0
block_.L_438102:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 438102	 Bytes: 4
  %loadMem_438102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438102 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438102)
  store %struct.Memory* %call_438102, %struct.Memory** %MEMORY

  ; Code: jne .L_438121	 RIP: 438106	 Bytes: 6
  %loadMem_438106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438106 = call %struct.Memory* @routine_jne_.L_438121(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438106, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_438106, %struct.Memory** %MEMORY

  %loadBr_438106 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438106 = icmp eq i8 %loadBr_438106, 1
  br i1 %cmpBr_438106, label %block_.L_438121, label %block_43810c

block_43810c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43810c	 Bytes: 4
  %loadMem_43810c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43810c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43810c)
  store %struct.Memory* %call_43810c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 438110	 Bytes: 4
  %loadMem_438110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438110 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438110)
  store %struct.Memory* %call_438110, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 438114	 Bytes: 4
  %loadMem_438114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438114 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438114)
  store %struct.Memory* %call_438114, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 438118	 Bytes: 3
  %loadMem_438118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438118 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438118)
  store %struct.Memory* %call_438118, %struct.Memory** %MEMORY

  ; Code: movl $0x3, (%rax)	 RIP: 43811b	 Bytes: 6
  %loadMem_43811b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43811b = call %struct.Memory* @routine_movl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43811b)
  store %struct.Memory* %call_43811b, %struct.Memory** %MEMORY

  ; Code: .L_438121:	 RIP: 438121	 Bytes: 0
  br label %block_.L_438121
block_.L_438121:

  ; Code: jmpq .L_438126	 RIP: 438121	 Bytes: 5
  %loadMem_438121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438121 = call %struct.Memory* @routine_jmpq_.L_438126(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438121, i64 5, i64 5)
  store %struct.Memory* %call_438121, %struct.Memory** %MEMORY

  br label %block_.L_438126

  ; Code: .L_438126:	 RIP: 438126	 Bytes: 0
block_.L_438126:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 438126	 Bytes: 5
  %loadMem_438126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438126 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438126)
  store %struct.Memory* %call_438126, %struct.Memory** %MEMORY

  ; Code: je .L_4381fc	 RIP: 43812b	 Bytes: 6
  %loadMem_43812b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43812b = call %struct.Memory* @routine_je_.L_4381fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43812b, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_43812b, %struct.Memory** %MEMORY

  %loadBr_43812b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43812b = icmp eq i8 %loadBr_43812b, 1
  br i1 %cmpBr_43812b, label %block_.L_4381fc, label %block_438131

block_438131:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 438131	 Bytes: 7
  %loadMem_438131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438131 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438131)
  store %struct.Memory* %call_438131, %struct.Memory** %MEMORY

  ; Code: .L_438138:	 RIP: 438138	 Bytes: 0
  br label %block_.L_438138
block_.L_438138:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 438138	 Bytes: 4
  %loadMem_438138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438138 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438138)
  store %struct.Memory* %call_438138, %struct.Memory** %MEMORY

  ; Code: jge .L_4381d8	 RIP: 43813c	 Bytes: 6
  %loadMem_43813c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43813c = call %struct.Memory* @routine_jge_.L_4381d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43813c, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_43813c, %struct.Memory** %MEMORY

  %loadBr_43813c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43813c = icmp eq i8 %loadBr_43813c, 1
  br i1 %cmpBr_43813c, label %block_.L_4381d8, label %block_438142

block_438142:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 438142	 Bytes: 3
  %loadMem_438142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438142 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438142)
  store %struct.Memory* %call_438142, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 438145	 Bytes: 4
  %loadMem_438145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438145 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438145)
  store %struct.Memory* %call_438145, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 438149	 Bytes: 7
  %loadMem_438149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438149 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438149)
  store %struct.Memory* %call_438149, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc0(%rbp)	 RIP: 438150	 Bytes: 6
  %loadMem_438150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438150 = call %struct.Memory* @routine_movl__eax__MINUS0xcc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438150)
  store %struct.Memory* %call_438150, %struct.Memory** %MEMORY

  ; Code: movslq -0xcc0(%rbp), %rcx	 RIP: 438156	 Bytes: 7
  %loadMem_438156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438156 = call %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438156)
  store %struct.Memory* %call_438156, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 43815d	 Bytes: 8
  %loadMem_43815d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43815d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43815d)
  store %struct.Memory* %call_43815d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 438165	 Bytes: 3
  %loadMem_438165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438165 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438165)
  store %struct.Memory* %call_438165, %struct.Memory** %MEMORY

  ; Code: je .L_4381c5	 RIP: 438168	 Bytes: 6
  %loadMem_438168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438168 = call %struct.Memory* @routine_je_.L_4381c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438168, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_438168, %struct.Memory** %MEMORY

  %loadBr_438168 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438168 = icmp eq i8 %loadBr_438168, 1
  br i1 %cmpBr_438168, label %block_.L_4381c5, label %block_43816e

block_43816e:
  ; Code: movslq -0xcc0(%rbp), %rax	 RIP: 43816e	 Bytes: 7
  %loadMem_43816e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43816e = call %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43816e)
  store %struct.Memory* %call_43816e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1c50(,%rax,4)	 RIP: 438175	 Bytes: 8
  %loadMem_438175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438175 = call %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438175)
  store %struct.Memory* %call_438175, %struct.Memory** %MEMORY

  ; Code: je .L_4381c5	 RIP: 43817d	 Bytes: 6
  %loadMem_43817d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43817d = call %struct.Memory* @routine_je_.L_4381c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43817d, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43817d, %struct.Memory** %MEMORY

  %loadBr_43817d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43817d = icmp eq i8 %loadBr_43817d, 1
  br i1 %cmpBr_43817d, label %block_.L_4381c5, label %block_438183

block_438183:
  ; Code: movslq -0xcc0(%rbp), %rax	 RIP: 438183	 Bytes: 7
  %loadMem_438183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438183 = call %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438183)
  store %struct.Memory* %call_438183, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xac1610(,%rax,4)	 RIP: 43818a	 Bytes: 8
  %loadMem_43818a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43818a = call %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43818a)
  store %struct.Memory* %call_43818a, %struct.Memory** %MEMORY

  ; Code: jne .L_4381c5	 RIP: 438192	 Bytes: 6
  %loadMem_438192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438192 = call %struct.Memory* @routine_jne_.L_4381c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438192, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_438192, %struct.Memory** %MEMORY

  %loadBr_438192 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438192 = icmp eq i8 %loadBr_438192, 1
  br i1 %cmpBr_438192, label %block_.L_4381c5, label %block_438198

block_438198:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 438198	 Bytes: 4
  %loadMem_438198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438198 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438198)
  store %struct.Memory* %call_438198, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 43819c	 Bytes: 4
  %loadMem_43819c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43819c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43819c)
  store %struct.Memory* %call_43819c, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4381a0	 Bytes: 4
  %loadMem_4381a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381a0 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381a0)
  store %struct.Memory* %call_4381a0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4381a4	 Bytes: 3
  %loadMem_4381a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381a4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381a4)
  store %struct.Memory* %call_4381a4, %struct.Memory** %MEMORY

  ; Code: movb $0x1, 0x1c(%rax)	 RIP: 4381a7	 Bytes: 4
  %loadMem_4381a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381a7 = call %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381a7)
  store %struct.Memory* %call_4381a7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4381ab	 Bytes: 4
  %loadMem_4381ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381ab)
  store %struct.Memory* %call_4381ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4381af	 Bytes: 4
  %loadMem_4381af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381af = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381af)
  store %struct.Memory* %call_4381af, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4381b3	 Bytes: 4
  %loadMem_4381b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381b3 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381b3)
  store %struct.Memory* %call_4381b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4381b7	 Bytes: 3
  %loadMem_4381b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381b7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381b7)
  store %struct.Memory* %call_4381b7, %struct.Memory** %MEMORY

  ; Code: movl $0x4, (%rax)	 RIP: 4381ba	 Bytes: 6
  %loadMem_4381ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381ba = call %struct.Memory* @routine_movl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381ba)
  store %struct.Memory* %call_4381ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4381d8	 RIP: 4381c0	 Bytes: 5
  %loadMem_4381c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381c0 = call %struct.Memory* @routine_jmpq_.L_4381d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381c0, i64 24, i64 5)
  store %struct.Memory* %call_4381c0, %struct.Memory** %MEMORY

  br label %block_.L_4381d8

  ; Code: .L_4381c5:	 RIP: 4381c5	 Bytes: 0
block_.L_4381c5:

  ; Code: jmpq .L_4381ca	 RIP: 4381c5	 Bytes: 5
  %loadMem_4381c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381c5 = call %struct.Memory* @routine_jmpq_.L_4381ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381c5, i64 5, i64 5)
  store %struct.Memory* %call_4381c5, %struct.Memory** %MEMORY

  br label %block_.L_4381ca

  ; Code: .L_4381ca:	 RIP: 4381ca	 Bytes: 0
block_.L_4381ca:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4381ca	 Bytes: 3
  %loadMem_4381ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381ca = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381ca)
  store %struct.Memory* %call_4381ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4381cd	 Bytes: 3
  %loadMem_4381cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381cd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381cd)
  store %struct.Memory* %call_4381cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4381d0	 Bytes: 3
  %loadMem_4381d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381d0 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381d0)
  store %struct.Memory* %call_4381d0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_438138	 RIP: 4381d3	 Bytes: 5
  %loadMem_4381d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381d3 = call %struct.Memory* @routine_jmpq_.L_438138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381d3, i64 -155, i64 5)
  store %struct.Memory* %call_4381d3, %struct.Memory** %MEMORY

  br label %block_.L_438138

  ; Code: .L_4381d8:	 RIP: 4381d8	 Bytes: 0
block_.L_4381d8:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 4381d8	 Bytes: 4
  %loadMem_4381d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381d8 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381d8)
  store %struct.Memory* %call_4381d8, %struct.Memory** %MEMORY

  ; Code: jne .L_4381f7	 RIP: 4381dc	 Bytes: 6
  %loadMem_4381dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381dc = call %struct.Memory* @routine_jne_.L_4381f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381dc, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4381dc, %struct.Memory** %MEMORY

  %loadBr_4381dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4381dc = icmp eq i8 %loadBr_4381dc, 1
  br i1 %cmpBr_4381dc, label %block_.L_4381f7, label %block_4381e2

block_4381e2:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4381e2	 Bytes: 4
  %loadMem_4381e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381e2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381e2)
  store %struct.Memory* %call_4381e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4381e6	 Bytes: 4
  %loadMem_4381e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381e6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381e6)
  store %struct.Memory* %call_4381e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4381ea	 Bytes: 4
  %loadMem_4381ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381ea = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381ea)
  store %struct.Memory* %call_4381ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4381ee	 Bytes: 3
  %loadMem_4381ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381ee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381ee)
  store %struct.Memory* %call_4381ee, %struct.Memory** %MEMORY

  ; Code: movl $0x3, (%rax)	 RIP: 4381f1	 Bytes: 6
  %loadMem_4381f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381f1 = call %struct.Memory* @routine_movl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381f1)
  store %struct.Memory* %call_4381f1, %struct.Memory** %MEMORY

  ; Code: .L_4381f7:	 RIP: 4381f7	 Bytes: 0
  br label %block_.L_4381f7
block_.L_4381f7:

  ; Code: jmpq .L_4381fc	 RIP: 4381f7	 Bytes: 5
  %loadMem_4381f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381f7 = call %struct.Memory* @routine_jmpq_.L_4381fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381f7, i64 5, i64 5)
  store %struct.Memory* %call_4381f7, %struct.Memory** %MEMORY

  br label %block_.L_4381fc

  ; Code: .L_4381fc:	 RIP: 4381fc	 Bytes: 0
block_.L_4381fc:

  ; Code: jmpq .L_438201	 RIP: 4381fc	 Bytes: 5
  %loadMem_4381fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4381fc = call %struct.Memory* @routine_jmpq_.L_438201(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4381fc, i64 5, i64 5)
  store %struct.Memory* %call_4381fc, %struct.Memory** %MEMORY

  br label %block_.L_438201

  ; Code: .L_438201:	 RIP: 438201	 Bytes: 0
block_.L_438201:

  ; Code: jmpq .L_438206	 RIP: 438201	 Bytes: 5
  %loadMem_438201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438201 = call %struct.Memory* @routine_jmpq_.L_438206(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438201, i64 5, i64 5)
  store %struct.Memory* %call_438201, %struct.Memory** %MEMORY

  br label %block_.L_438206

  ; Code: .L_438206:	 RIP: 438206	 Bytes: 0
block_.L_438206:

  ; Code: jmpq .L_43820b	 RIP: 438206	 Bytes: 5
  %loadMem_438206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438206 = call %struct.Memory* @routine_jmpq_.L_43820b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438206, i64 5, i64 5)
  store %struct.Memory* %call_438206, %struct.Memory** %MEMORY

  br label %block_.L_43820b

  ; Code: .L_43820b:	 RIP: 43820b	 Bytes: 0
block_.L_43820b:

  ; Code: jmpq .L_438210	 RIP: 43820b	 Bytes: 5
  %loadMem_43820b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43820b = call %struct.Memory* @routine_jmpq_.L_438210(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43820b, i64 5, i64 5)
  store %struct.Memory* %call_43820b, %struct.Memory** %MEMORY

  br label %block_.L_438210

  ; Code: .L_438210:	 RIP: 438210	 Bytes: 0
block_.L_438210:

  ; Code: jmpq .L_438215	 RIP: 438210	 Bytes: 5
  %loadMem_438210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438210 = call %struct.Memory* @routine_jmpq_.L_438215(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438210, i64 5, i64 5)
  store %struct.Memory* %call_438210, %struct.Memory** %MEMORY

  br label %block_.L_438215

  ; Code: .L_438215:	 RIP: 438215	 Bytes: 0
block_.L_438215:

  ; Code: jmpq .L_43821a	 RIP: 438215	 Bytes: 5
  %loadMem_438215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438215 = call %struct.Memory* @routine_jmpq_.L_43821a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438215, i64 5, i64 5)
  store %struct.Memory* %call_438215, %struct.Memory** %MEMORY

  br label %block_.L_43821a

  ; Code: .L_43821a:	 RIP: 43821a	 Bytes: 0
block_.L_43821a:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 43821a	 Bytes: 3
  %loadMem_43821a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43821a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43821a)
  store %struct.Memory* %call_43821a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43821d	 Bytes: 3
  %loadMem_43821d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43821d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43821d)
  store %struct.Memory* %call_43821d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 438220	 Bytes: 3
  %loadMem_438220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438220 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438220)
  store %struct.Memory* %call_438220, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437dc9	 RIP: 438223	 Bytes: 5
  %loadMem_438223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438223 = call %struct.Memory* @routine_jmpq_.L_437dc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438223, i64 -1114, i64 5)
  store %struct.Memory* %call_438223, %struct.Memory** %MEMORY

  br label %block_.L_437dc9

  ; Code: .L_438228:	 RIP: 438228	 Bytes: 0
block_.L_438228:

  ; Code: jmpq .L_43822d	 RIP: 438228	 Bytes: 5
  %loadMem_438228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438228 = call %struct.Memory* @routine_jmpq_.L_43822d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438228, i64 5, i64 5)
  store %struct.Memory* %call_438228, %struct.Memory** %MEMORY

  br label %block_.L_43822d

  ; Code: .L_43822d:	 RIP: 43822d	 Bytes: 0
block_.L_43822d:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43822d	 Bytes: 3
  %loadMem_43822d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43822d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43822d)
  store %struct.Memory* %call_43822d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 438230	 Bytes: 3
  %loadMem_438230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438230 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438230)
  store %struct.Memory* %call_438230, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 438233	 Bytes: 3
  %loadMem_438233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438233 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438233)
  store %struct.Memory* %call_438233, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437db2	 RIP: 438236	 Bytes: 5
  %loadMem_438236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438236 = call %struct.Memory* @routine_jmpq_.L_437db2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438236, i64 -1156, i64 5)
  store %struct.Memory* %call_438236, %struct.Memory** %MEMORY

  br label %block_.L_437db2

  ; Code: .L_43823b:	 RIP: 43823b	 Bytes: 0
block_.L_43823b:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 43823b	 Bytes: 4
  %loadMem_43823b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43823b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43823b)
  store %struct.Memory* %call_43823b, %struct.Memory** %MEMORY

  ; Code: jne .L_43824a	 RIP: 43823f	 Bytes: 6
  %loadMem_43823f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43823f = call %struct.Memory* @routine_jne_.L_43824a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43823f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43823f, %struct.Memory** %MEMORY

  %loadBr_43823f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43823f = icmp eq i8 %loadBr_43823f, 1
  br i1 %cmpBr_43823f, label %block_.L_43824a, label %block_438245

block_438245:
  ; Code: callq .find_cuts	 RIP: 438245	 Bytes: 5
  %loadMem1_438245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_438245 = call %struct.Memory* @routine_callq_.find_cuts(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_438245, i64 449563, i64 5, i64 5)
  store %struct.Memory* %call1_438245, %struct.Memory** %MEMORY

  %loadMem2_438245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_438245 = load i64, i64* %3
  %call2_438245 = call %struct.Memory* @sub_4a5e60.find_cuts(%struct.State* %0, i64  %loadPC_438245, %struct.Memory* %loadMem2_438245)
  store %struct.Memory* %call2_438245, %struct.Memory** %MEMORY

  ; Code: .L_43824a:	 RIP: 43824a	 Bytes: 0
  br label %block_.L_43824a
block_.L_43824a:

  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 43824a	 Bytes: 5
  %loadMem_43824a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43824a = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43824a)
  store %struct.Memory* %call_43824a, %struct.Memory** %MEMORY

  ; Code: je .L_43832d	 RIP: 43824f	 Bytes: 6
  %loadMem_43824f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43824f = call %struct.Memory* @routine_je_.L_43832d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43824f, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_43824f, %struct.Memory** %MEMORY

  %loadBr_43824f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43824f = icmp eq i8 %loadBr_43824f, 1
  br i1 %cmpBr_43824f, label %block_.L_43832d, label %block_438255

block_438255:
  ; Code: movl $0x15, -0x24(%rbp)	 RIP: 438255	 Bytes: 7
  %loadMem_438255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438255 = call %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438255)
  store %struct.Memory* %call_438255, %struct.Memory** %MEMORY

  ; Code: .L_43825c:	 RIP: 43825c	 Bytes: 0
  br label %block_.L_43825c
block_.L_43825c:

  ; Code: cmpl $0x190, -0x24(%rbp)	 RIP: 43825c	 Bytes: 7
  %loadMem_43825c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43825c = call %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43825c)
  store %struct.Memory* %call_43825c, %struct.Memory** %MEMORY

  ; Code: jge .L_438328	 RIP: 438263	 Bytes: 6
  %loadMem_438263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438263 = call %struct.Memory* @routine_jge_.L_438328(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438263, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_438263, %struct.Memory** %MEMORY

  %loadBr_438263 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438263 = icmp eq i8 %loadBr_438263, 1
  br i1 %cmpBr_438263, label %block_.L_438328, label %block_438269

block_438269:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 438269	 Bytes: 4
  %loadMem_438269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438269 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438269)
  store %struct.Memory* %call_438269, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 43826d	 Bytes: 8
  %loadMem_43826d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43826d = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43826d)
  store %struct.Memory* %call_43826d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 438275	 Bytes: 3
  %loadMem_438275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438275 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438275)
  store %struct.Memory* %call_438275, %struct.Memory** %MEMORY

  ; Code: jne .L_438283	 RIP: 438278	 Bytes: 6
  %loadMem_438278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438278 = call %struct.Memory* @routine_jne_.L_438283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438278, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_438278, %struct.Memory** %MEMORY

  %loadBr_438278 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438278 = icmp eq i8 %loadBr_438278, 1
  br i1 %cmpBr_438278, label %block_.L_438283, label %block_43827e

block_43827e:
  ; Code: jmpq .L_43831a	 RIP: 43827e	 Bytes: 5
  %loadMem_43827e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43827e = call %struct.Memory* @routine_jmpq_.L_43831a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43827e, i64 156, i64 5)
  store %struct.Memory* %call_43827e, %struct.Memory** %MEMORY

  br label %block_.L_43831a

  ; Code: .L_438283:	 RIP: 438283	 Bytes: 0
block_.L_438283:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 438283	 Bytes: 4
  %loadMem_438283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438283 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438283)
  store %struct.Memory* %call_438283, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 438287	 Bytes: 4
  %loadMem_438287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438287 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438287)
  store %struct.Memory* %call_438287, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 43828b	 Bytes: 4
  %loadMem_43828b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43828b = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43828b)
  store %struct.Memory* %call_43828b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43828f	 Bytes: 3
  %loadMem_43828f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43828f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43828f)
  store %struct.Memory* %call_43828f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 438292	 Bytes: 4
  %loadMem_438292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438292 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438292)
  store %struct.Memory* %call_438292, %struct.Memory** %MEMORY

  ; Code: jne .L_438315	 RIP: 438296	 Bytes: 6
  %loadMem_438296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438296 = call %struct.Memory* @routine_jne_.L_438315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438296, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_438296, %struct.Memory** %MEMORY

  %loadBr_438296 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438296 = icmp eq i8 %loadBr_438296, 1
  br i1 %cmpBr_438296, label %block_.L_438315, label %block_43829c

block_43829c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43829c	 Bytes: 4
  %loadMem_43829c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43829c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43829c)
  store %struct.Memory* %call_43829c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4382a0	 Bytes: 4
  %loadMem_4382a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382a0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382a0)
  store %struct.Memory* %call_4382a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 4382a4	 Bytes: 4
  %loadMem_4382a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382a4 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382a4)
  store %struct.Memory* %call_4382a4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4382a8	 Bytes: 3
  %loadMem_4382a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382a8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382a8)
  store %struct.Memory* %call_4382a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, (%rax)	 RIP: 4382ab	 Bytes: 3
  %loadMem_4382ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382ab = call %struct.Memory* @routine_cmpl__0x5____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382ab)
  store %struct.Memory* %call_4382ab, %struct.Memory** %MEMORY

  ; Code: jne .L_438315	 RIP: 4382ae	 Bytes: 6
  %loadMem_4382ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382ae = call %struct.Memory* @routine_jne_.L_438315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382ae, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_4382ae, %struct.Memory** %MEMORY

  %loadBr_4382ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4382ae = icmp eq i8 %loadBr_4382ae, 1
  br i1 %cmpBr_4382ae, label %block_.L_438315, label %block_4382b4

block_4382b4:
  ; Code: leaq -0xcc4(%rbp), %rdx	 RIP: 4382b4	 Bytes: 7
  %loadMem_4382b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382b4 = call %struct.Memory* @routine_leaq_MINUS0xcc4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382b4)
  store %struct.Memory* %call_4382b4, %struct.Memory** %MEMORY

  ; Code: leaq -0xcc8(%rbp), %rcx	 RIP: 4382bb	 Bytes: 7
  %loadMem_4382bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382bb = call %struct.Memory* @routine_leaq_MINUS0xcc8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382bb)
  store %struct.Memory* %call_4382bb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xcc4(%rbp)	 RIP: 4382c2	 Bytes: 10
  %loadMem_4382c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382c2 = call %struct.Memory* @routine_movl__0x0__MINUS0xcc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382c2)
  store %struct.Memory* %call_4382c2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xcc8(%rbp)	 RIP: 4382cc	 Bytes: 10
  %loadMem_4382cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382cc = call %struct.Memory* @routine_movl__0x0__MINUS0xcc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382cc)
  store %struct.Memory* %call_4382cc, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 4382d6	 Bytes: 3
  %loadMem_4382d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382d6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382d6)
  store %struct.Memory* %call_4382d6, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 4382d9	 Bytes: 3
  %loadMem_4382d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382d9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382d9)
  store %struct.Memory* %call_4382d9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r8	 RIP: 4382dc	 Bytes: 4
  %loadMem_4382dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382dc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382dc)
  store %struct.Memory* %call_4382dc, %struct.Memory** %MEMORY

  ; Code: callq .originate_eye	 RIP: 4382e0	 Bytes: 5
  %loadMem1_4382e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4382e0 = call %struct.Memory* @routine_callq_.originate_eye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4382e0, i64 2496, i64 5, i64 5)
  store %struct.Memory* %call1_4382e0, %struct.Memory** %MEMORY

  %loadMem2_4382e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4382e0 = load i64, i64* %3
  %call2_4382e0 = call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* %0, i64  %loadPC_4382e0, %struct.Memory* %loadMem2_4382e0)
  store %struct.Memory* %call2_4382e0, %struct.Memory** %MEMORY

  ; Code: movl -0xcc4(%rbp), %esi	 RIP: 4382e5	 Bytes: 6
  %loadMem_4382e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382e5 = call %struct.Memory* @routine_movl_MINUS0xcc4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382e5)
  store %struct.Memory* %call_4382e5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4382eb	 Bytes: 4
  %loadMem_4382eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382eb)
  store %struct.Memory* %call_4382eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4382ef	 Bytes: 4
  %loadMem_4382ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382ef = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382ef)
  store %struct.Memory* %call_4382ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4382f3	 Bytes: 4
  %loadMem_4382f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382f3 = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382f3)
  store %struct.Memory* %call_4382f3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4382f7	 Bytes: 3
  %loadMem_4382f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382f7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382f7)
  store %struct.Memory* %call_4382f7, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rcx)	 RIP: 4382fa	 Bytes: 3
  %loadMem_4382fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382fa = call %struct.Memory* @routine_movl__esi__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382fa)
  store %struct.Memory* %call_4382fa, %struct.Memory** %MEMORY

  ; Code: movl -0xcc8(%rbp), %esi	 RIP: 4382fd	 Bytes: 6
  %loadMem_4382fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4382fd = call %struct.Memory* @routine_movl_MINUS0xcc8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4382fd)
  store %struct.Memory* %call_4382fd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 438303	 Bytes: 4
  %loadMem_438303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438303 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438303)
  store %struct.Memory* %call_438303, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 438307	 Bytes: 4
  %loadMem_438307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438307 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438307)
  store %struct.Memory* %call_438307, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 43830b	 Bytes: 4
  %loadMem_43830b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43830b = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43830b)
  store %struct.Memory* %call_43830b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43830f	 Bytes: 3
  %loadMem_43830f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43830f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43830f)
  store %struct.Memory* %call_43830f, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rcx)	 RIP: 438312	 Bytes: 3
  %loadMem_438312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438312 = call %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438312)
  store %struct.Memory* %call_438312, %struct.Memory** %MEMORY

  ; Code: .L_438315:	 RIP: 438315	 Bytes: 0
  br label %block_.L_438315
block_.L_438315:

  ; Code: jmpq .L_43831a	 RIP: 438315	 Bytes: 5
  %loadMem_438315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438315 = call %struct.Memory* @routine_jmpq_.L_43831a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438315, i64 5, i64 5)
  store %struct.Memory* %call_438315, %struct.Memory** %MEMORY

  br label %block_.L_43831a

  ; Code: .L_43831a:	 RIP: 43831a	 Bytes: 0
block_.L_43831a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 43831a	 Bytes: 3
  %loadMem_43831a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43831a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43831a)
  store %struct.Memory* %call_43831a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43831d	 Bytes: 3
  %loadMem_43831d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43831d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43831d)
  store %struct.Memory* %call_43831d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 438320	 Bytes: 3
  %loadMem_438320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438320 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438320)
  store %struct.Memory* %call_438320, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43825c	 RIP: 438323	 Bytes: 5
  %loadMem_438323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438323 = call %struct.Memory* @routine_jmpq_.L_43825c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438323, i64 -199, i64 5)
  store %struct.Memory* %call_438323, %struct.Memory** %MEMORY

  br label %block_.L_43825c

  ; Code: .L_438328:	 RIP: 438328	 Bytes: 0
block_.L_438328:

  ; Code: jmpq .L_43832d	 RIP: 438328	 Bytes: 5
  %loadMem_438328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438328 = call %struct.Memory* @routine_jmpq_.L_43832d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438328, i64 5, i64 5)
  store %struct.Memory* %call_438328, %struct.Memory** %MEMORY

  br label %block_.L_43832d

  ; Code: .L_43832d:	 RIP: 43832d	 Bytes: 0
block_.L_43832d:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 43832d	 Bytes: 5
  %loadMem_43832d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43832d = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43832d)
  store %struct.Memory* %call_43832d, %struct.Memory** %MEMORY

  ; Code: je .L_438410	 RIP: 438332	 Bytes: 6
  %loadMem_438332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438332 = call %struct.Memory* @routine_je_.L_438410(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438332, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_438332, %struct.Memory** %MEMORY

  %loadBr_438332 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438332 = icmp eq i8 %loadBr_438332, 1
  br i1 %cmpBr_438332, label %block_.L_438410, label %block_438338

block_438338:
  ; Code: movl $0x15, -0x24(%rbp)	 RIP: 438338	 Bytes: 7
  %loadMem_438338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438338 = call %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438338)
  store %struct.Memory* %call_438338, %struct.Memory** %MEMORY

  ; Code: .L_43833f:	 RIP: 43833f	 Bytes: 0
  br label %block_.L_43833f
block_.L_43833f:

  ; Code: cmpl $0x190, -0x24(%rbp)	 RIP: 43833f	 Bytes: 7
  %loadMem_43833f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43833f = call %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43833f)
  store %struct.Memory* %call_43833f, %struct.Memory** %MEMORY

  ; Code: jge .L_43840b	 RIP: 438346	 Bytes: 6
  %loadMem_438346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438346 = call %struct.Memory* @routine_jge_.L_43840b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438346, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_438346, %struct.Memory** %MEMORY

  %loadBr_438346 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438346 = icmp eq i8 %loadBr_438346, 1
  br i1 %cmpBr_438346, label %block_.L_43840b, label %block_43834c

block_43834c:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 43834c	 Bytes: 4
  %loadMem_43834c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43834c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43834c)
  store %struct.Memory* %call_43834c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 438350	 Bytes: 8
  %loadMem_438350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438350 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438350)
  store %struct.Memory* %call_438350, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 438358	 Bytes: 3
  %loadMem_438358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438358 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438358)
  store %struct.Memory* %call_438358, %struct.Memory** %MEMORY

  ; Code: jne .L_438366	 RIP: 43835b	 Bytes: 6
  %loadMem_43835b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43835b = call %struct.Memory* @routine_jne_.L_438366(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43835b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43835b, %struct.Memory** %MEMORY

  %loadBr_43835b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43835b = icmp eq i8 %loadBr_43835b, 1
  br i1 %cmpBr_43835b, label %block_.L_438366, label %block_438361

block_438361:
  ; Code: jmpq .L_4383fd	 RIP: 438361	 Bytes: 5
  %loadMem_438361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438361 = call %struct.Memory* @routine_jmpq_.L_4383fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438361, i64 156, i64 5)
  store %struct.Memory* %call_438361, %struct.Memory** %MEMORY

  br label %block_.L_4383fd

  ; Code: .L_438366:	 RIP: 438366	 Bytes: 0
block_.L_438366:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 438366	 Bytes: 4
  %loadMem_438366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438366 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438366)
  store %struct.Memory* %call_438366, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 43836a	 Bytes: 4
  %loadMem_43836a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43836a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43836a)
  store %struct.Memory* %call_43836a, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 43836e	 Bytes: 4
  %loadMem_43836e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43836e = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43836e)
  store %struct.Memory* %call_43836e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 438372	 Bytes: 3
  %loadMem_438372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438372 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438372)
  store %struct.Memory* %call_438372, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 438375	 Bytes: 4
  %loadMem_438375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438375 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438375)
  store %struct.Memory* %call_438375, %struct.Memory** %MEMORY

  ; Code: jne .L_4383f8	 RIP: 438379	 Bytes: 6
  %loadMem_438379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438379 = call %struct.Memory* @routine_jne_.L_4383f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438379, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_438379, %struct.Memory** %MEMORY

  %loadBr_438379 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438379 = icmp eq i8 %loadBr_438379, 1
  br i1 %cmpBr_438379, label %block_.L_4383f8, label %block_43837f

block_43837f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43837f	 Bytes: 4
  %loadMem_43837f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43837f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43837f)
  store %struct.Memory* %call_43837f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 438383	 Bytes: 4
  %loadMem_438383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438383 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438383)
  store %struct.Memory* %call_438383, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 438387	 Bytes: 4
  %loadMem_438387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438387 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438387)
  store %struct.Memory* %call_438387, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43838b	 Bytes: 3
  %loadMem_43838b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43838b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43838b)
  store %struct.Memory* %call_43838b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, (%rax)	 RIP: 43838e	 Bytes: 3
  %loadMem_43838e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43838e = call %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43838e)
  store %struct.Memory* %call_43838e, %struct.Memory** %MEMORY

  ; Code: jne .L_4383f8	 RIP: 438391	 Bytes: 6
  %loadMem_438391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438391 = call %struct.Memory* @routine_jne_.L_4383f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438391, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_438391, %struct.Memory** %MEMORY

  %loadBr_438391 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438391 = icmp eq i8 %loadBr_438391, 1
  br i1 %cmpBr_438391, label %block_.L_4383f8, label %block_438397

block_438397:
  ; Code: leaq -0xccc(%rbp), %rdx	 RIP: 438397	 Bytes: 7
  %loadMem_438397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438397 = call %struct.Memory* @routine_leaq_MINUS0xccc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438397)
  store %struct.Memory* %call_438397, %struct.Memory** %MEMORY

  ; Code: leaq -0xcd0(%rbp), %rcx	 RIP: 43839e	 Bytes: 7
  %loadMem_43839e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43839e = call %struct.Memory* @routine_leaq_MINUS0xcd0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43839e)
  store %struct.Memory* %call_43839e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xccc(%rbp)	 RIP: 4383a5	 Bytes: 10
  %loadMem_4383a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383a5 = call %struct.Memory* @routine_movl__0x0__MINUS0xccc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383a5)
  store %struct.Memory* %call_4383a5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xcd0(%rbp)	 RIP: 4383af	 Bytes: 10
  %loadMem_4383af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383af = call %struct.Memory* @routine_movl__0x0__MINUS0xcd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383af)
  store %struct.Memory* %call_4383af, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 4383b9	 Bytes: 3
  %loadMem_4383b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383b9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383b9)
  store %struct.Memory* %call_4383b9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 4383bc	 Bytes: 3
  %loadMem_4383bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383bc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383bc)
  store %struct.Memory* %call_4383bc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 4383bf	 Bytes: 4
  %loadMem_4383bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383bf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383bf)
  store %struct.Memory* %call_4383bf, %struct.Memory** %MEMORY

  ; Code: callq .originate_eye	 RIP: 4383c3	 Bytes: 5
  %loadMem1_4383c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4383c3 = call %struct.Memory* @routine_callq_.originate_eye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4383c3, i64 2269, i64 5, i64 5)
  store %struct.Memory* %call1_4383c3, %struct.Memory** %MEMORY

  %loadMem2_4383c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4383c3 = load i64, i64* %3
  %call2_4383c3 = call %struct.Memory* @sub_438ca0.originate_eye(%struct.State* %0, i64  %loadPC_4383c3, %struct.Memory* %loadMem2_4383c3)
  store %struct.Memory* %call2_4383c3, %struct.Memory** %MEMORY

  ; Code: movl -0xccc(%rbp), %esi	 RIP: 4383c8	 Bytes: 6
  %loadMem_4383c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383c8 = call %struct.Memory* @routine_movl_MINUS0xccc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383c8)
  store %struct.Memory* %call_4383c8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4383ce	 Bytes: 4
  %loadMem_4383ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383ce)
  store %struct.Memory* %call_4383ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4383d2	 Bytes: 4
  %loadMem_4383d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383d2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383d2)
  store %struct.Memory* %call_4383d2, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4383d6	 Bytes: 4
  %loadMem_4383d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383d6 = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383d6)
  store %struct.Memory* %call_4383d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4383da	 Bytes: 3
  %loadMem_4383da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383da = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383da)
  store %struct.Memory* %call_4383da, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rcx)	 RIP: 4383dd	 Bytes: 3
  %loadMem_4383dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383dd = call %struct.Memory* @routine_movl__esi__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383dd)
  store %struct.Memory* %call_4383dd, %struct.Memory** %MEMORY

  ; Code: movl -0xcd0(%rbp), %esi	 RIP: 4383e0	 Bytes: 6
  %loadMem_4383e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383e0 = call %struct.Memory* @routine_movl_MINUS0xcd0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383e0)
  store %struct.Memory* %call_4383e0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4383e6	 Bytes: 4
  %loadMem_4383e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383e6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383e6)
  store %struct.Memory* %call_4383e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4383ea	 Bytes: 4
  %loadMem_4383ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383ea = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383ea)
  store %struct.Memory* %call_4383ea, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 4383ee	 Bytes: 4
  %loadMem_4383ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383ee = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383ee)
  store %struct.Memory* %call_4383ee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4383f2	 Bytes: 3
  %loadMem_4383f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383f2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383f2)
  store %struct.Memory* %call_4383f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rcx)	 RIP: 4383f5	 Bytes: 3
  %loadMem_4383f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383f5 = call %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383f5)
  store %struct.Memory* %call_4383f5, %struct.Memory** %MEMORY

  ; Code: .L_4383f8:	 RIP: 4383f8	 Bytes: 0
  br label %block_.L_4383f8
block_.L_4383f8:

  ; Code: jmpq .L_4383fd	 RIP: 4383f8	 Bytes: 5
  %loadMem_4383f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383f8 = call %struct.Memory* @routine_jmpq_.L_4383fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383f8, i64 5, i64 5)
  store %struct.Memory* %call_4383f8, %struct.Memory** %MEMORY

  br label %block_.L_4383fd

  ; Code: .L_4383fd:	 RIP: 4383fd	 Bytes: 0
block_.L_4383fd:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4383fd	 Bytes: 3
  %loadMem_4383fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4383fd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4383fd)
  store %struct.Memory* %call_4383fd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 438400	 Bytes: 3
  %loadMem_438400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438400 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438400)
  store %struct.Memory* %call_438400, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 438403	 Bytes: 3
  %loadMem_438403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438403 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438403)
  store %struct.Memory* %call_438403, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43833f	 RIP: 438406	 Bytes: 5
  %loadMem_438406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438406 = call %struct.Memory* @routine_jmpq_.L_43833f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438406, i64 -199, i64 5)
  store %struct.Memory* %call_438406, %struct.Memory** %MEMORY

  br label %block_.L_43833f

  ; Code: .L_43840b:	 RIP: 43840b	 Bytes: 0
block_.L_43840b:

  ; Code: jmpq .L_438410	 RIP: 43840b	 Bytes: 5
  %loadMem_43840b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43840b = call %struct.Memory* @routine_jmpq_.L_438410(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43840b, i64 5, i64 5)
  store %struct.Memory* %call_43840b, %struct.Memory** %MEMORY

  br label %block_.L_438410

  ; Code: .L_438410:	 RIP: 438410	 Bytes: 0
block_.L_438410:

  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 438410	 Bytes: 5
  %loadMem_438410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438410 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438410)
  store %struct.Memory* %call_438410, %struct.Memory** %MEMORY

  ; Code: je .L_438424	 RIP: 438415	 Bytes: 6
  %loadMem_438415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438415 = call %struct.Memory* @routine_je_.L_438424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438415, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_438415, %struct.Memory** %MEMORY

  %loadBr_438415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438415 = icmp eq i8 %loadBr_438415, 1
  br i1 %cmpBr_438415, label %block_.L_438424, label %block_43841b

block_43841b:
  ; Code: movq -0x8(%rbp), %rdi	 RIP: 43841b	 Bytes: 4
  %loadMem_43841b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43841b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43841b)
  store %struct.Memory* %call_43841b, %struct.Memory** %MEMORY

  ; Code: callq .count_neighbours	 RIP: 43841f	 Bytes: 5
  %loadMem1_43841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43841f = call %struct.Memory* @routine_callq_.count_neighbours(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43841f, i64 2913, i64 5, i64 5)
  store %struct.Memory* %call1_43841f, %struct.Memory** %MEMORY

  %loadMem2_43841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43841f = load i64, i64* %3
  %call2_43841f = call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* %0, i64  %loadPC_43841f, %struct.Memory* %loadMem2_43841f)
  store %struct.Memory* %call2_43841f, %struct.Memory** %MEMORY

  ; Code: .L_438424:	 RIP: 438424	 Bytes: 0
  br label %block_.L_438424
block_.L_438424:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 438424	 Bytes: 5
  %loadMem_438424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438424 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438424)
  store %struct.Memory* %call_438424, %struct.Memory** %MEMORY

  ; Code: je .L_438438	 RIP: 438429	 Bytes: 6
  %loadMem_438429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438429 = call %struct.Memory* @routine_je_.L_438438(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438429, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_438429, %struct.Memory** %MEMORY

  %loadBr_438429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438429 = icmp eq i8 %loadBr_438429, 1
  br i1 %cmpBr_438429, label %block_.L_438438, label %block_43842f

block_43842f:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 43842f	 Bytes: 4
  %loadMem_43842f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43842f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43842f)
  store %struct.Memory* %call_43842f, %struct.Memory** %MEMORY

  ; Code: callq .count_neighbours	 RIP: 438433	 Bytes: 5
  %loadMem1_438433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_438433 = call %struct.Memory* @routine_callq_.count_neighbours(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_438433, i64 2893, i64 5, i64 5)
  store %struct.Memory* %call1_438433, %struct.Memory** %MEMORY

  %loadMem2_438433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_438433 = load i64, i64* %3
  %call2_438433 = call %struct.Memory* @sub_438f80.count_neighbours(%struct.State* %0, i64  %loadPC_438433, %struct.Memory* %loadMem2_438433)
  store %struct.Memory* %call2_438433, %struct.Memory** %MEMORY

  ; Code: .L_438438:	 RIP: 438438	 Bytes: 0
  br label %block_.L_438438
block_.L_438438:

  ; Code: addq $0xcf0, %rsp	 RIP: 438438	 Bytes: 7
  %loadMem_438438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438438 = call %struct.Memory* @routine_addq__0xcf0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438438)
  store %struct.Memory* %call_438438, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43843f	 Bytes: 1
  %loadMem_43843f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43843f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43843f)
  store %struct.Memory* %call_43843f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 438440	 Bytes: 1
  %loadMem_438440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_438440 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_438440)
  store %struct.Memory* %call_438440, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_438440
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

define %struct.Memory* @routine_subq__0xcf0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 3312)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0xac1c50___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 ptrtoint( %G__0xac1c50_type* @G__0xac1c50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xac1610___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G__0xac1610_type* @G__0xac1610 to i64))
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


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r11___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movq__r10__MINUS0xcd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 3288
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0xce0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3296
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0xce8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3304
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xcec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0xcd8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0xcec__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xce0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0xce8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_437d5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_437d4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_437d13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_callq_.clear_eye(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_437d35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.is_lively(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1648
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_437d50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_437ccf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x2___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xac1610___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xac1610_type* @G__0xac1610 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_leaq_MINUS0xcb0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.compute_primary_domains(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xac1c50___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xac1c50_type* @G__0xac1c50 to i64))
  ret %struct.Memory* %11
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








define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jge_.L_43823b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_jge_.L_438228(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_437e0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x670__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1648
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jne_.L_438215(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xac1610___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 11277840
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_437e76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xac1c50___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 11279440
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_je_.L_437e51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x3____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 3)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_437e71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_438210(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__0xac1610___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 11277840
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_437f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_437f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x5____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 5)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_437f4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0xcb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_je_.L_437f39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_437f39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_437f4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_437f3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_437ec1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43820b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_43802c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0xac1c50___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 11279440
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_je_.L_43802c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x4____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 4)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jge_.L_438027(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0xcb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3256
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_438014(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_438014(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_438027(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_438019(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_437f9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_438206(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_438201(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_438126(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_438102(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0xcbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_4380ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xcbc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_4380ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_438102(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4380f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_438062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_438121(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_438126(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_4381fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4381d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0xcc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_4381c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_4381c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_4381d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4381ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_438138(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4381f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4381fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_438201(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_438215(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43821a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_437dc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43822d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_437db2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43824a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.find_cuts(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_43832d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_438328(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_438283(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43831a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_438315(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x5____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_leaq_MINUS0xcc4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xcc8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0xcc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 3268
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xcc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 3272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.originate_eye(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xcc4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 36)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__esi__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xcc8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_43825c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43832d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_438410(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43840b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_438366(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4383fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_4383f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_leaq_MINUS0xccc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xcd0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0xccc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 3276
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xcd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 3280
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xccc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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










define %struct.Memory* @routine_movl_MINUS0xcd0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 3280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jmpq_.L_43833f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_438410(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_438424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.count_neighbours(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_438438(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0xcf0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 3312)
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

