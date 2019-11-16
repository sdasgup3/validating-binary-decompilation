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

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43b030.is_halfeye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa9305__rip__type = type <{ [8 x i8] }>
@G_0xa9305__rip_= global %G_0xa9305__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xa9451__rip__type = type <{ [8 x i8] }>
@G_0xa9451__rip_= global %G_0xa9451__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57b826_type = type <{ [8 x i8] }>
@G__0x57b826= global %G__0x57b826_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57d997_type = type <{ [8 x i8] }>
@G__0x57d997= global %G__0x57d997_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57d9c6_type = type <{ [8 x i8] }>
@G__0x57d9c6= global %G__0x57d9c6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57d9d0_type = type <{ [8 x i8] }>
@G__0x57d9d0= global %G__0x57d9d0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57d9da_type = type <{ [8 x i8] }>
@G__0x57d9da= global %G__0x57d9da_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da01_type = type <{ [8 x i8] }>
@G__0x57da01= global %G__0x57da01_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da0a_type = type <{ [8 x i8] }>
@G__0x57da0a= global %G__0x57da0a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da13_type = type <{ [8 x i8] }>
@G__0x57da13= global %G__0x57da13_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da1c_type = type <{ [8 x i8] }>
@G__0x57da1c= global %G__0x57da1c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da42_type = type <{ [8 x i8] }>
@G__0x57da42= global %G__0x57da42_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da46_type = type <{ [8 x i8] }>
@G__0x57da46= global %G__0x57da46_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da4a_type = type <{ [8 x i8] }>
@G__0x57da4a= global %G__0x57da4a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da4e_type = type <{ [8 x i8] }>
@G__0x57da4e= global %G__0x57da4e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da52_type = type <{ [8 x i8] }>
@G__0x57da52= global %G__0x57da52_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57da56_type = type <{ [8 x i8] }>
@G__0x57da56= global %G__0x57da56_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586073_type = type <{ [8 x i8] }>
@G__0x586073= global %G__0x586073_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58898d_type = type <{ [8 x i8] }>
@G__0x58898d= global %G__0x58898d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @print_eye(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .print_eye:	 RIP: 439a40	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 439a40	 Bytes: 1
  %loadMem_439a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a40 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a40)
  store %struct.Memory* %call_439a40, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 439a41	 Bytes: 3
  %loadMem_439a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a41 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a41)
  store %struct.Memory* %call_439a41, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 439a44	 Bytes: 7
  %loadMem_439a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a44 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a44)
  store %struct.Memory* %call_439a44, %struct.Memory** %MEMORY

  ; Code: movq $0x57d997, %rax	 RIP: 439a4b	 Bytes: 10
  %loadMem_439a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a4b = call %struct.Memory* @routine_movq__0x57d997___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a4b)
  store %struct.Memory* %call_439a4b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 439a55	 Bytes: 4
  %loadMem_439a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a55 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a55)
  store %struct.Memory* %call_439a55, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 439a59	 Bytes: 4
  %loadMem_439a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a59 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a59)
  store %struct.Memory* %call_439a59, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 439a5d	 Bytes: 3
  %loadMem_439a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a5d = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a5d)
  store %struct.Memory* %call_439a5d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 439a60	 Bytes: 4
  %loadMem_439a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a60 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a60)
  store %struct.Memory* %call_439a60, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 439a64	 Bytes: 4
  %loadMem_439a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a64 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a64)
  store %struct.Memory* %call_439a64, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdi, %rdi	 RIP: 439a68	 Bytes: 4
  %loadMem_439a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a68 = call %struct.Memory* @routine_imulq__0x24___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a68)
  store %struct.Memory* %call_439a68, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 439a6c	 Bytes: 3
  %loadMem_439a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a6c = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a6c)
  store %struct.Memory* %call_439a6c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rsi), %edx	 RIP: 439a6f	 Bytes: 3
  %loadMem_439a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a6f = call %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a6f)
  store %struct.Memory* %call_439a6f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 439a72	 Bytes: 3
  %loadMem_439a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a72 = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a72)
  store %struct.Memory* %call_439a72, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 439a75	 Bytes: 3
  %loadMem_439a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a75 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a75)
  store %struct.Memory* %call_439a75, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 439a78	 Bytes: 4
  %loadMem_439a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a78 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a78)
  store %struct.Memory* %call_439a78, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 439a7c	 Bytes: 4
  %loadMem_439a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a7c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a7c)
  store %struct.Memory* %call_439a7c, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 439a80	 Bytes: 4
  %loadMem_439a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a80 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a80)
  store %struct.Memory* %call_439a80, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 439a84	 Bytes: 3
  %loadMem_439a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a84 = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a84)
  store %struct.Memory* %call_439a84, %struct.Memory** %MEMORY

  ; Code: movl (%rdi), %edx	 RIP: 439a87	 Bytes: 2
  %loadMem_439a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a87 = call %struct.Memory* @routine_movl___rdi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a87)
  store %struct.Memory* %call_439a87, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 439a89	 Bytes: 4
  %loadMem_439a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a89 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a89)
  store %struct.Memory* %call_439a89, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 439a8d	 Bytes: 4
  %loadMem_439a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a8d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a8d)
  store %struct.Memory* %call_439a8d, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdi, %rdi	 RIP: 439a91	 Bytes: 4
  %loadMem_439a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a91 = call %struct.Memory* @routine_imulq__0x24___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a91)
  store %struct.Memory* %call_439a91, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 439a95	 Bytes: 3
  %loadMem_439a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a95 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a95)
  store %struct.Memory* %call_439a95, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %ecx	 RIP: 439a98	 Bytes: 3
  %loadMem_439a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a98 = call %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a98)
  store %struct.Memory* %call_439a98, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 439a9b	 Bytes: 4
  %loadMem_439a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a9b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a9b)
  store %struct.Memory* %call_439a9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %r8	 RIP: 439a9f	 Bytes: 4
  %loadMem_439a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a9f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a9f)
  store %struct.Memory* %call_439a9f, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %r8, %r8	 RIP: 439aa3	 Bytes: 4
  %loadMem_439aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aa3 = call %struct.Memory* @routine_imulq__0x24___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aa3)
  store %struct.Memory* %call_439aa3, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 439aa7	 Bytes: 3
  %loadMem_439aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aa7 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aa7)
  store %struct.Memory* %call_439aa7, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdi), %r8d	 RIP: 439aaa	 Bytes: 4
  %loadMem_439aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aaa = call %struct.Memory* @routine_movl_0x8__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aaa)
  store %struct.Memory* %call_439aaa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 439aae	 Bytes: 3
  %loadMem_439aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aae = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aae)
  store %struct.Memory* %call_439aae, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439ab1	 Bytes: 2
  %loadMem_439ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ab1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ab1)
  store %struct.Memory* %call_439ab1, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439ab3	 Bytes: 5
  %loadMem1_439ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ab3 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ab3, i64 99069, i64 5, i64 5)
  store %struct.Memory* %call1_439ab3, %struct.Memory** %MEMORY

  %loadMem2_439ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ab3 = load i64, i64* %3
  %call2_439ab3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439ab3, %struct.Memory* %loadMem2_439ab3)
  store %struct.Memory* %call2_439ab3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 439ab8	 Bytes: 7
  %loadMem_439ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ab8 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ab8)
  store %struct.Memory* %call_439ab8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 439abf	 Bytes: 3
  %loadMem_439abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439abf = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439abf)
  store %struct.Memory* %call_439abf, %struct.Memory** %MEMORY

  ; Code: .L_439ac2:	 RIP: 439ac2	 Bytes: 0
  br label %block_.L_439ac2
block_.L_439ac2:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439ac2	 Bytes: 3
  %loadMem_439ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ac2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ac2)
  store %struct.Memory* %call_439ac2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 439ac5	 Bytes: 7
  %loadMem_439ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ac5 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ac5)
  store %struct.Memory* %call_439ac5, %struct.Memory** %MEMORY

  ; Code: jge .L_439dca	 RIP: 439acc	 Bytes: 6
  %loadMem_439acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439acc = call %struct.Memory* @routine_jge_.L_439dca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439acc, i8* %BRANCH_TAKEN, i64 766, i64 6, i64 6)
  store %struct.Memory* %call_439acc, %struct.Memory** %MEMORY

  %loadBr_439acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439acc = icmp eq i8 %loadBr_439acc, 1
  br i1 %cmpBr_439acc, label %block_.L_439dca, label %block_439ad2

block_439ad2:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 439ad2	 Bytes: 7
  %loadMem_439ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ad2 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ad2)
  store %struct.Memory* %call_439ad2, %struct.Memory** %MEMORY

  ; Code: .L_439ad9:	 RIP: 439ad9	 Bytes: 0
  br label %block_.L_439ad9
block_.L_439ad9:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439ad9	 Bytes: 3
  %loadMem_439ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ad9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ad9)
  store %struct.Memory* %call_439ad9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 439adc	 Bytes: 7
  %loadMem_439adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439adc = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439adc)
  store %struct.Memory* %call_439adc, %struct.Memory** %MEMORY

  ; Code: jge .L_439db7	 RIP: 439ae3	 Bytes: 6
  %loadMem_439ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae3 = call %struct.Memory* @routine_jge_.L_439db7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae3, i8* %BRANCH_TAKEN, i64 724, i64 6, i64 6)
  store %struct.Memory* %call_439ae3, %struct.Memory** %MEMORY

  %loadBr_439ae3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ae3 = icmp eq i8 %loadBr_439ae3, 1
  br i1 %cmpBr_439ae3, label %block_.L_439db7, label %block_439ae9

block_439ae9:
  ; Code: imull $0x14, -0x18(%rbp), %eax	 RIP: 439ae9	 Bytes: 4
  %loadMem_439ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae9 = call %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae9)
  store %struct.Memory* %call_439ae9, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 439aed	 Bytes: 3
  %loadMem_439aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aed = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aed)
  store %struct.Memory* %call_439aed, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 439af0	 Bytes: 3
  %loadMem_439af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439af0 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439af0)
  store %struct.Memory* %call_439af0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 439af3	 Bytes: 3
  %loadMem_439af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439af3 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439af3)
  store %struct.Memory* %call_439af3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 439af6	 Bytes: 4
  %loadMem_439af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439af6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439af6)
  store %struct.Memory* %call_439af6, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 439afa	 Bytes: 4
  %loadMem_439afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439afa = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439afa)
  store %struct.Memory* %call_439afa, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 439afe	 Bytes: 4
  %loadMem_439afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439afe = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439afe)
  store %struct.Memory* %call_439afe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 439b02	 Bytes: 3
  %loadMem_439b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b02 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b02)
  store %struct.Memory* %call_439b02, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %eax	 RIP: 439b05	 Bytes: 3
  %loadMem_439b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b05 = call %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b05)
  store %struct.Memory* %call_439b05, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 439b08	 Bytes: 3
  %loadMem_439b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b08 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b08)
  store %struct.Memory* %call_439b08, %struct.Memory** %MEMORY

  ; Code: je .L_439b16	 RIP: 439b0b	 Bytes: 6
  %loadMem_439b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b0b = call %struct.Memory* @routine_je_.L_439b16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b0b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_439b0b, %struct.Memory** %MEMORY

  %loadBr_439b0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b0b = icmp eq i8 %loadBr_439b0b, 1
  br i1 %cmpBr_439b0b, label %block_.L_439b16, label %block_439b11

block_439b11:
  ; Code: jmpq .L_439da9	 RIP: 439b11	 Bytes: 5
  %loadMem_439b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b11 = call %struct.Memory* @routine_jmpq_.L_439da9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b11, i64 664, i64 5)
  store %struct.Memory* %call_439b11, %struct.Memory** %MEMORY

  br label %block_.L_439da9

  ; Code: .L_439b16:	 RIP: 439b16	 Bytes: 0
block_.L_439b16:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 439b16	 Bytes: 4
  %loadMem_439b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b16 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b16)
  store %struct.Memory* %call_439b16, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439b1a	 Bytes: 4
  %loadMem_439b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b1a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b1a)
  store %struct.Memory* %call_439b1a, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 439b1e	 Bytes: 4
  %loadMem_439b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b1e = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b1e)
  store %struct.Memory* %call_439b1e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439b22	 Bytes: 3
  %loadMem_439b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b22 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b22)
  store %struct.Memory* %call_439b22, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1c(%rax), %edx	 RIP: 439b25	 Bytes: 4
  %loadMem_439b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b25 = call %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b25)
  store %struct.Memory* %call_439b25, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 439b29	 Bytes: 3
  %loadMem_439b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b29 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b29)
  store %struct.Memory* %call_439b29, %struct.Memory** %MEMORY

  ; Code: je .L_439b78	 RIP: 439b2c	 Bytes: 6
  %loadMem_439b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b2c = call %struct.Memory* @routine_je_.L_439b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b2c, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_439b2c, %struct.Memory** %MEMORY

  %loadBr_439b2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b2c = icmp eq i8 %loadBr_439b2c, 1
  br i1 %cmpBr_439b2c, label %block_.L_439b78, label %block_439b32

block_439b32:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439b32	 Bytes: 4
  %loadMem_439b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b32 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b32)
  store %struct.Memory* %call_439b32, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439b36	 Bytes: 8
  %loadMem_439b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b36 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b36)
  store %struct.Memory* %call_439b36, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 439b3e	 Bytes: 3
  %loadMem_439b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b3e = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b3e)
  store %struct.Memory* %call_439b3e, %struct.Memory** %MEMORY

  ; Code: je .L_439b5c	 RIP: 439b41	 Bytes: 6
  %loadMem_439b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b41 = call %struct.Memory* @routine_je_.L_439b5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b41, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_439b41, %struct.Memory** %MEMORY

  %loadBr_439b41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b41 = icmp eq i8 %loadBr_439b41, 1
  br i1 %cmpBr_439b41, label %block_.L_439b5c, label %block_439b47

block_439b47:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439b47	 Bytes: 4
  %loadMem_439b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b47 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b47)
  store %struct.Memory* %call_439b47, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439b4b	 Bytes: 8
  %loadMem_439b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b4b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b4b)
  store %struct.Memory* %call_439b4b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 439b53	 Bytes: 3
  %loadMem_439b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b53 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b53)
  store %struct.Memory* %call_439b53, %struct.Memory** %MEMORY

  ; Code: jne .L_439b78	 RIP: 439b56	 Bytes: 6
  %loadMem_439b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b56 = call %struct.Memory* @routine_jne_.L_439b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b56, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_439b56, %struct.Memory** %MEMORY

  %loadBr_439b56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b56 = icmp eq i8 %loadBr_439b56, 1
  br i1 %cmpBr_439b56, label %block_.L_439b78, label %block_.L_439b5c

  ; Code: .L_439b5c:	 RIP: 439b5c	 Bytes: 0
block_.L_439b5c:

  ; Code: movq $0x57d9c6, %rdi	 RIP: 439b5c	 Bytes: 10
  %loadMem_439b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b5c = call %struct.Memory* @routine_movq__0x57d9c6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b5c)
  store %struct.Memory* %call_439b5c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439b66	 Bytes: 3
  %loadMem_439b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b66 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b66)
  store %struct.Memory* %call_439b66, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439b69	 Bytes: 2
  %loadMem_439b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b69 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b69)
  store %struct.Memory* %call_439b69, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439b6b	 Bytes: 5
  %loadMem1_439b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439b6b = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439b6b, i64 98885, i64 5, i64 5)
  store %struct.Memory* %call1_439b6b, %struct.Memory** %MEMORY

  %loadMem2_439b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439b6b = load i64, i64* %3
  %call2_439b6b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439b6b, %struct.Memory* %loadMem2_439b6b)
  store %struct.Memory* %call2_439b6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 439b70	 Bytes: 3
  %loadMem_439b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b70 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b70)
  store %struct.Memory* %call_439b70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439da4	 RIP: 439b73	 Bytes: 5
  %loadMem_439b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b73 = call %struct.Memory* @routine_jmpq_.L_439da4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b73, i64 561, i64 5)
  store %struct.Memory* %call_439b73, %struct.Memory** %MEMORY

  br label %block_.L_439da4

  ; Code: .L_439b78:	 RIP: 439b78	 Bytes: 0
block_.L_439b78:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 439b78	 Bytes: 4
  %loadMem_439b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b78 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b78)
  store %struct.Memory* %call_439b78, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439b7c	 Bytes: 3
  %loadMem_439b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b7c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b7c)
  store %struct.Memory* %call_439b7c, %struct.Memory** %MEMORY

  ; Code: callq .is_halfeye	 RIP: 439b7f	 Bytes: 5
  %loadMem1_439b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439b7f = call %struct.Memory* @routine_callq_.is_halfeye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439b7f, i64 5297, i64 5, i64 5)
  store %struct.Memory* %call1_439b7f, %struct.Memory** %MEMORY

  %loadMem2_439b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439b7f = load i64, i64* %3
  %call2_439b7f = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64  %loadPC_439b7f, %struct.Memory* %loadMem2_439b7f)
  store %struct.Memory* %call2_439b7f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 439b84	 Bytes: 3
  %loadMem_439b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b84 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b84)
  store %struct.Memory* %call_439b84, %struct.Memory** %MEMORY

  ; Code: je .L_439c2d	 RIP: 439b87	 Bytes: 6
  %loadMem_439b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b87 = call %struct.Memory* @routine_je_.L_439c2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b87, i8* %BRANCH_TAKEN, i64 166, i64 6, i64 6)
  store %struct.Memory* %call_439b87, %struct.Memory** %MEMORY

  %loadBr_439b87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b87 = icmp eq i8 %loadBr_439b87, 1
  br i1 %cmpBr_439b87, label %block_.L_439c2d, label %block_439b8d

block_439b8d:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439b8d	 Bytes: 4
  %loadMem_439b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b8d = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b8d)
  store %struct.Memory* %call_439b8d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439b91	 Bytes: 8
  %loadMem_439b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b91 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b91)
  store %struct.Memory* %call_439b91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 439b99	 Bytes: 3
  %loadMem_439b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b99 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b99)
  store %struct.Memory* %call_439b99, %struct.Memory** %MEMORY

  ; Code: je .L_439bb7	 RIP: 439b9c	 Bytes: 6
  %loadMem_439b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b9c = call %struct.Memory* @routine_je_.L_439bb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b9c, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_439b9c, %struct.Memory** %MEMORY

  %loadBr_439b9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b9c = icmp eq i8 %loadBr_439b9c, 1
  br i1 %cmpBr_439b9c, label %block_.L_439bb7, label %block_439ba2

block_439ba2:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439ba2	 Bytes: 4
  %loadMem_439ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ba2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ba2)
  store %struct.Memory* %call_439ba2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439ba6	 Bytes: 8
  %loadMem_439ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ba6 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ba6)
  store %struct.Memory* %call_439ba6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 439bae	 Bytes: 3
  %loadMem_439bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bae = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bae)
  store %struct.Memory* %call_439bae, %struct.Memory** %MEMORY

  ; Code: jne .L_439c2d	 RIP: 439bb1	 Bytes: 6
  %loadMem_439bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bb1 = call %struct.Memory* @routine_jne_.L_439c2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bb1, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_439bb1, %struct.Memory** %MEMORY

  %loadBr_439bb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bb1 = icmp eq i8 %loadBr_439bb1, 1
  br i1 %cmpBr_439bb1, label %block_.L_439c2d, label %block_.L_439bb7

  ; Code: .L_439bb7:	 RIP: 439bb7	 Bytes: 0
block_.L_439bb7:

  ; Code: movsd 0xa9451(%rip), %xmm0	 RIP: 439bb7	 Bytes: 8
  %loadMem_439bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bb7 = call %struct.Memory* @routine_movsd_0xa9451__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bb7)
  store %struct.Memory* %call_439bb7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 439bbf	 Bytes: 4
  %loadMem_439bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bbf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bbf)
  store %struct.Memory* %call_439bbf, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439bc3	 Bytes: 4
  %loadMem_439bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bc3 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bc3)
  store %struct.Memory* %call_439bc3, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rcx, %rcx	 RIP: 439bc7	 Bytes: 4
  %loadMem_439bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bc7 = call %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bc7)
  store %struct.Memory* %call_439bc7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439bcb	 Bytes: 3
  %loadMem_439bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bcb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bcb)
  store %struct.Memory* %call_439bcb, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax), %xmm1	 RIP: 439bce	 Bytes: 4
  %loadMem_439bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bce = call %struct.Memory* @routine_cvtss2sd___rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bce)
  store %struct.Memory* %call_439bce, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 439bd2	 Bytes: 4
  %loadMem_439bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bd2 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bd2)
  store %struct.Memory* %call_439bd2, %struct.Memory** %MEMORY

  ; Code: jne .L_439bfe	 RIP: 439bd6	 Bytes: 6
  %loadMem_439bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bd6 = call %struct.Memory* @routine_jne_.L_439bfe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bd6, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_439bd6, %struct.Memory** %MEMORY

  %loadBr_439bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bd6 = icmp eq i8 %loadBr_439bd6, 1
  br i1 %cmpBr_439bd6, label %block_.L_439bfe, label %block_439bdc

block_439bdc:
  ; Code: jp .L_439bfe	 RIP: 439bdc	 Bytes: 6
  %loadMem_439bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bdc = call %struct.Memory* @routine_jp_.L_439bfe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bdc, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_439bdc, %struct.Memory** %MEMORY

  %loadBr_439bdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bdc = icmp eq i8 %loadBr_439bdc, 1
  br i1 %cmpBr_439bdc, label %block_.L_439bfe, label %block_439be2

block_439be2:
  ; Code: movq $0x57d9d0, %rdi	 RIP: 439be2	 Bytes: 10
  %loadMem_439be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439be2 = call %struct.Memory* @routine_movq__0x57d9d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439be2)
  store %struct.Memory* %call_439be2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439bec	 Bytes: 3
  %loadMem_439bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bec = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bec)
  store %struct.Memory* %call_439bec, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439bef	 Bytes: 2
  %loadMem_439bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bef = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bef)
  store %struct.Memory* %call_439bef, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439bf1	 Bytes: 5
  %loadMem1_439bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439bf1 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439bf1, i64 98751, i64 5, i64 5)
  store %struct.Memory* %call1_439bf1, %struct.Memory** %MEMORY

  %loadMem2_439bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439bf1 = load i64, i64* %3
  %call2_439bf1 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439bf1, %struct.Memory* %loadMem2_439bf1)
  store %struct.Memory* %call2_439bf1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 439bf6	 Bytes: 3
  %loadMem_439bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bf6 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bf6)
  store %struct.Memory* %call_439bf6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439c28	 RIP: 439bf9	 Bytes: 5
  %loadMem_439bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bf9 = call %struct.Memory* @routine_jmpq_.L_439c28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bf9, i64 47, i64 5)
  store %struct.Memory* %call_439bf9, %struct.Memory** %MEMORY

  br label %block_.L_439c28

  ; Code: .L_439bfe:	 RIP: 439bfe	 Bytes: 0
block_.L_439bfe:

  ; Code: movq $0x57d9da, %rdi	 RIP: 439bfe	 Bytes: 10
  %loadMem_439bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bfe = call %struct.Memory* @routine_movq__0x57d9da___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bfe)
  store %struct.Memory* %call_439bfe, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439c08	 Bytes: 3
  %loadMem_439c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c08 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c08)
  store %struct.Memory* %call_439c08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 439c0b	 Bytes: 4
  %loadMem_439c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c0b)
  store %struct.Memory* %call_439c0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439c0f	 Bytes: 4
  %loadMem_439c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c0f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c0f)
  store %struct.Memory* %call_439c0f, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rcx, %rcx	 RIP: 439c13	 Bytes: 4
  %loadMem_439c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c13 = call %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c13)
  store %struct.Memory* %call_439c13, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439c17	 Bytes: 3
  %loadMem_439c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c17 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c17)
  store %struct.Memory* %call_439c17, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax), %xmm0	 RIP: 439c1a	 Bytes: 4
  %loadMem_439c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c1a = call %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c1a)
  store %struct.Memory* %call_439c1a, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 439c1e	 Bytes: 2
  %loadMem_439c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c1e = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c1e)
  store %struct.Memory* %call_439c1e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439c20	 Bytes: 5
  %loadMem1_439c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439c20 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439c20, i64 98704, i64 5, i64 5)
  store %struct.Memory* %call1_439c20, %struct.Memory** %MEMORY

  %loadMem2_439c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439c20 = load i64, i64* %3
  %call2_439c20 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439c20, %struct.Memory* %loadMem2_439c20)
  store %struct.Memory* %call2_439c20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 439c25	 Bytes: 3
  %loadMem_439c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c25 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c25)
  store %struct.Memory* %call_439c25, %struct.Memory** %MEMORY

  ; Code: .L_439c28:	 RIP: 439c28	 Bytes: 0
  br label %block_.L_439c28
block_.L_439c28:

  ; Code: jmpq .L_439d9f	 RIP: 439c28	 Bytes: 5
  %loadMem_439c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c28 = call %struct.Memory* @routine_jmpq_.L_439d9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c28, i64 375, i64 5)
  store %struct.Memory* %call_439c28, %struct.Memory** %MEMORY

  br label %block_.L_439d9f

  ; Code: .L_439c2d:	 RIP: 439c2d	 Bytes: 0
block_.L_439c2d:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 439c2d	 Bytes: 4
  %loadMem_439c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c2d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c2d)
  store %struct.Memory* %call_439c2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439c31	 Bytes: 4
  %loadMem_439c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c31 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c31)
  store %struct.Memory* %call_439c31, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 439c35	 Bytes: 4
  %loadMem_439c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c35 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c35)
  store %struct.Memory* %call_439c35, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439c39	 Bytes: 3
  %loadMem_439c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c39 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c39)
  store %struct.Memory* %call_439c39, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x1c(%rax)	 RIP: 439c3c	 Bytes: 4
  %loadMem_439c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c3c = call %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c3c)
  store %struct.Memory* %call_439c3c, %struct.Memory** %MEMORY

  ; Code: jne .L_439c8c	 RIP: 439c40	 Bytes: 6
  %loadMem_439c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c40 = call %struct.Memory* @routine_jne_.L_439c8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c40, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_439c40, %struct.Memory** %MEMORY

  %loadBr_439c40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c40 = icmp eq i8 %loadBr_439c40, 1
  br i1 %cmpBr_439c40, label %block_.L_439c8c, label %block_439c46

block_439c46:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439c46	 Bytes: 4
  %loadMem_439c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c46 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c46)
  store %struct.Memory* %call_439c46, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439c4a	 Bytes: 8
  %loadMem_439c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c4a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c4a)
  store %struct.Memory* %call_439c4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 439c52	 Bytes: 3
  %loadMem_439c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c52 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c52)
  store %struct.Memory* %call_439c52, %struct.Memory** %MEMORY

  ; Code: je .L_439c70	 RIP: 439c55	 Bytes: 6
  %loadMem_439c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c55 = call %struct.Memory* @routine_je_.L_439c70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c55, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_439c55, %struct.Memory** %MEMORY

  %loadBr_439c55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c55 = icmp eq i8 %loadBr_439c55, 1
  br i1 %cmpBr_439c55, label %block_.L_439c70, label %block_439c5b

block_439c5b:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439c5b	 Bytes: 4
  %loadMem_439c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c5b = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c5b)
  store %struct.Memory* %call_439c5b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439c5f	 Bytes: 8
  %loadMem_439c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c5f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c5f)
  store %struct.Memory* %call_439c5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 439c67	 Bytes: 3
  %loadMem_439c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c67 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c67)
  store %struct.Memory* %call_439c67, %struct.Memory** %MEMORY

  ; Code: jne .L_439c8c	 RIP: 439c6a	 Bytes: 6
  %loadMem_439c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c6a = call %struct.Memory* @routine_jne_.L_439c8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c6a, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_439c6a, %struct.Memory** %MEMORY

  %loadBr_439c6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c6a = icmp eq i8 %loadBr_439c6a, 1
  br i1 %cmpBr_439c6a, label %block_.L_439c8c, label %block_.L_439c70

  ; Code: .L_439c70:	 RIP: 439c70	 Bytes: 0
block_.L_439c70:

  ; Code: movq $0x57da01, %rdi	 RIP: 439c70	 Bytes: 10
  %loadMem_439c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c70 = call %struct.Memory* @routine_movq__0x57da01___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c70)
  store %struct.Memory* %call_439c70, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439c7a	 Bytes: 3
  %loadMem_439c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c7a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c7a)
  store %struct.Memory* %call_439c7a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439c7d	 Bytes: 2
  %loadMem_439c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c7d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c7d)
  store %struct.Memory* %call_439c7d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439c7f	 Bytes: 5
  %loadMem1_439c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439c7f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439c7f, i64 98609, i64 5, i64 5)
  store %struct.Memory* %call1_439c7f, %struct.Memory** %MEMORY

  %loadMem2_439c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439c7f = load i64, i64* %3
  %call2_439c7f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439c7f, %struct.Memory* %loadMem2_439c7f)
  store %struct.Memory* %call2_439c7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 439c84	 Bytes: 3
  %loadMem_439c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c84 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c84)
  store %struct.Memory* %call_439c84, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439d9a	 RIP: 439c87	 Bytes: 5
  %loadMem_439c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c87 = call %struct.Memory* @routine_jmpq_.L_439d9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c87, i64 275, i64 5)
  store %struct.Memory* %call_439c87, %struct.Memory** %MEMORY

  br label %block_.L_439d9a

  ; Code: .L_439c8c:	 RIP: 439c8c	 Bytes: 0
block_.L_439c8c:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 439c8c	 Bytes: 4
  %loadMem_439c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c8c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c8c)
  store %struct.Memory* %call_439c8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439c90	 Bytes: 4
  %loadMem_439c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c90 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c90)
  store %struct.Memory* %call_439c90, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 439c94	 Bytes: 4
  %loadMem_439c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c94 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c94)
  store %struct.Memory* %call_439c94, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439c98	 Bytes: 3
  %loadMem_439c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c98 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c98)
  store %struct.Memory* %call_439c98, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1c(%rax), %edx	 RIP: 439c9b	 Bytes: 4
  %loadMem_439c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c9b = call %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c9b)
  store %struct.Memory* %call_439c9b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 439c9f	 Bytes: 3
  %loadMem_439c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c9f = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c9f)
  store %struct.Memory* %call_439c9f, %struct.Memory** %MEMORY

  ; Code: je .L_439cd9	 RIP: 439ca2	 Bytes: 6
  %loadMem_439ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ca2 = call %struct.Memory* @routine_je_.L_439cd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ca2, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_439ca2, %struct.Memory** %MEMORY

  %loadBr_439ca2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ca2 = icmp eq i8 %loadBr_439ca2, 1
  br i1 %cmpBr_439ca2, label %block_.L_439cd9, label %block_439ca8

block_439ca8:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439ca8	 Bytes: 4
  %loadMem_439ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ca8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ca8)
  store %struct.Memory* %call_439ca8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439cac	 Bytes: 8
  %loadMem_439cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cac = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cac)
  store %struct.Memory* %call_439cac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 439cb4	 Bytes: 3
  %loadMem_439cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cb4 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cb4)
  store %struct.Memory* %call_439cb4, %struct.Memory** %MEMORY

  ; Code: jne .L_439cd9	 RIP: 439cb7	 Bytes: 6
  %loadMem_439cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cb7 = call %struct.Memory* @routine_jne_.L_439cd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cb7, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_439cb7, %struct.Memory** %MEMORY

  %loadBr_439cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cb7 = icmp eq i8 %loadBr_439cb7, 1
  br i1 %cmpBr_439cb7, label %block_.L_439cd9, label %block_439cbd

block_439cbd:
  ; Code: movq $0x57da0a, %rdi	 RIP: 439cbd	 Bytes: 10
  %loadMem_439cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cbd = call %struct.Memory* @routine_movq__0x57da0a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cbd)
  store %struct.Memory* %call_439cbd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439cc7	 Bytes: 3
  %loadMem_439cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cc7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cc7)
  store %struct.Memory* %call_439cc7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439cca	 Bytes: 2
  %loadMem_439cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cca = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cca)
  store %struct.Memory* %call_439cca, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439ccc	 Bytes: 5
  %loadMem1_439ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ccc = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ccc, i64 98532, i64 5, i64 5)
  store %struct.Memory* %call1_439ccc, %struct.Memory** %MEMORY

  %loadMem2_439ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ccc = load i64, i64* %3
  %call2_439ccc = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439ccc, %struct.Memory* %loadMem2_439ccc)
  store %struct.Memory* %call2_439ccc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 439cd1	 Bytes: 3
  %loadMem_439cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cd1 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cd1)
  store %struct.Memory* %call_439cd1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439d95	 RIP: 439cd4	 Bytes: 5
  %loadMem_439cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cd4 = call %struct.Memory* @routine_jmpq_.L_439d95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cd4, i64 193, i64 5)
  store %struct.Memory* %call_439cd4, %struct.Memory** %MEMORY

  br label %block_.L_439d95

  ; Code: .L_439cd9:	 RIP: 439cd9	 Bytes: 0
block_.L_439cd9:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 439cd9	 Bytes: 4
  %loadMem_439cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cd9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cd9)
  store %struct.Memory* %call_439cd9, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439cdd	 Bytes: 3
  %loadMem_439cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cdd = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cdd)
  store %struct.Memory* %call_439cdd, %struct.Memory** %MEMORY

  ; Code: callq .is_halfeye	 RIP: 439ce0	 Bytes: 5
  %loadMem1_439ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ce0 = call %struct.Memory* @routine_callq_.is_halfeye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ce0, i64 4944, i64 5, i64 5)
  store %struct.Memory* %call1_439ce0, %struct.Memory** %MEMORY

  %loadMem2_439ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ce0 = load i64, i64* %3
  %call2_439ce0 = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64  %loadPC_439ce0, %struct.Memory* %loadMem2_439ce0)
  store %struct.Memory* %call2_439ce0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 439ce5	 Bytes: 3
  %loadMem_439ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ce5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ce5)
  store %struct.Memory* %call_439ce5, %struct.Memory** %MEMORY

  ; Code: je .L_439d79	 RIP: 439ce8	 Bytes: 6
  %loadMem_439ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ce8 = call %struct.Memory* @routine_je_.L_439d79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ce8, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_439ce8, %struct.Memory** %MEMORY

  %loadBr_439ce8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ce8 = icmp eq i8 %loadBr_439ce8, 1
  br i1 %cmpBr_439ce8, label %block_.L_439d79, label %block_439cee

block_439cee:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 439cee	 Bytes: 4
  %loadMem_439cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cee = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cee)
  store %struct.Memory* %call_439cee, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439cf2	 Bytes: 8
  %loadMem_439cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cf2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cf2)
  store %struct.Memory* %call_439cf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 439cfa	 Bytes: 3
  %loadMem_439cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cfa = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cfa)
  store %struct.Memory* %call_439cfa, %struct.Memory** %MEMORY

  ; Code: jne .L_439d79	 RIP: 439cfd	 Bytes: 6
  %loadMem_439cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cfd = call %struct.Memory* @routine_jne_.L_439d79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cfd, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_439cfd, %struct.Memory** %MEMORY

  %loadBr_439cfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cfd = icmp eq i8 %loadBr_439cfd, 1
  br i1 %cmpBr_439cfd, label %block_.L_439d79, label %block_439d03

block_439d03:
  ; Code: movsd 0xa9305(%rip), %xmm0	 RIP: 439d03	 Bytes: 8
  %loadMem_439d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d03 = call %struct.Memory* @routine_movsd_0xa9305__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d03)
  store %struct.Memory* %call_439d03, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 439d0b	 Bytes: 4
  %loadMem_439d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d0b)
  store %struct.Memory* %call_439d0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439d0f	 Bytes: 4
  %loadMem_439d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d0f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d0f)
  store %struct.Memory* %call_439d0f, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rcx, %rcx	 RIP: 439d13	 Bytes: 4
  %loadMem_439d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d13 = call %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d13)
  store %struct.Memory* %call_439d13, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439d17	 Bytes: 3
  %loadMem_439d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d17 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d17)
  store %struct.Memory* %call_439d17, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax), %xmm1	 RIP: 439d1a	 Bytes: 4
  %loadMem_439d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d1a = call %struct.Memory* @routine_cvtss2sd___rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d1a)
  store %struct.Memory* %call_439d1a, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 439d1e	 Bytes: 4
  %loadMem_439d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d1e = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d1e)
  store %struct.Memory* %call_439d1e, %struct.Memory** %MEMORY

  ; Code: jne .L_439d4a	 RIP: 439d22	 Bytes: 6
  %loadMem_439d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d22 = call %struct.Memory* @routine_jne_.L_439d4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d22, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_439d22, %struct.Memory** %MEMORY

  %loadBr_439d22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439d22 = icmp eq i8 %loadBr_439d22, 1
  br i1 %cmpBr_439d22, label %block_.L_439d4a, label %block_439d28

block_439d28:
  ; Code: jp .L_439d4a	 RIP: 439d28	 Bytes: 6
  %loadMem_439d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d28 = call %struct.Memory* @routine_jp_.L_439d4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d28, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_439d28, %struct.Memory** %MEMORY

  %loadBr_439d28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439d28 = icmp eq i8 %loadBr_439d28, 1
  br i1 %cmpBr_439d28, label %block_.L_439d4a, label %block_439d2e

block_439d2e:
  ; Code: movq $0x57da13, %rdi	 RIP: 439d2e	 Bytes: 10
  %loadMem_439d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d2e = call %struct.Memory* @routine_movq__0x57da13___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d2e)
  store %struct.Memory* %call_439d2e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439d38	 Bytes: 3
  %loadMem_439d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d38 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d38)
  store %struct.Memory* %call_439d38, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439d3b	 Bytes: 2
  %loadMem_439d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d3b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d3b)
  store %struct.Memory* %call_439d3b, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439d3d	 Bytes: 5
  %loadMem1_439d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439d3d = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439d3d, i64 98419, i64 5, i64 5)
  store %struct.Memory* %call1_439d3d, %struct.Memory** %MEMORY

  %loadMem2_439d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d3d = load i64, i64* %3
  %call2_439d3d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439d3d, %struct.Memory* %loadMem2_439d3d)
  store %struct.Memory* %call2_439d3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 439d42	 Bytes: 3
  %loadMem_439d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d42 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d42)
  store %struct.Memory* %call_439d42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439d74	 RIP: 439d45	 Bytes: 5
  %loadMem_439d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d45 = call %struct.Memory* @routine_jmpq_.L_439d74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d45, i64 47, i64 5)
  store %struct.Memory* %call_439d45, %struct.Memory** %MEMORY

  br label %block_.L_439d74

  ; Code: .L_439d4a:	 RIP: 439d4a	 Bytes: 0
block_.L_439d4a:

  ; Code: movq $0x57da1c, %rdi	 RIP: 439d4a	 Bytes: 10
  %loadMem_439d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d4a = call %struct.Memory* @routine_movq__0x57da1c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d4a)
  store %struct.Memory* %call_439d4a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439d54	 Bytes: 3
  %loadMem_439d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d54 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d54)
  store %struct.Memory* %call_439d54, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 439d57	 Bytes: 4
  %loadMem_439d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d57)
  store %struct.Memory* %call_439d57, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439d5b	 Bytes: 4
  %loadMem_439d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d5b = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d5b)
  store %struct.Memory* %call_439d5b, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rcx, %rcx	 RIP: 439d5f	 Bytes: 4
  %loadMem_439d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d5f = call %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d5f)
  store %struct.Memory* %call_439d5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439d63	 Bytes: 3
  %loadMem_439d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d63 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d63)
  store %struct.Memory* %call_439d63, %struct.Memory** %MEMORY

  ; Code: cvtss2sd (%rax), %xmm0	 RIP: 439d66	 Bytes: 4
  %loadMem_439d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d66 = call %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d66)
  store %struct.Memory* %call_439d66, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 439d6a	 Bytes: 2
  %loadMem_439d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d6a = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d6a)
  store %struct.Memory* %call_439d6a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439d6c	 Bytes: 5
  %loadMem1_439d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439d6c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439d6c, i64 98372, i64 5, i64 5)
  store %struct.Memory* %call1_439d6c, %struct.Memory** %MEMORY

  %loadMem2_439d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d6c = load i64, i64* %3
  %call2_439d6c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439d6c, %struct.Memory* %loadMem2_439d6c)
  store %struct.Memory* %call2_439d6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 439d71	 Bytes: 3
  %loadMem_439d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d71 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d71)
  store %struct.Memory* %call_439d71, %struct.Memory** %MEMORY

  ; Code: .L_439d74:	 RIP: 439d74	 Bytes: 0
  br label %block_.L_439d74
block_.L_439d74:

  ; Code: jmpq .L_439d90	 RIP: 439d74	 Bytes: 5
  %loadMem_439d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d74 = call %struct.Memory* @routine_jmpq_.L_439d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d74, i64 28, i64 5)
  store %struct.Memory* %call_439d74, %struct.Memory** %MEMORY

  br label %block_.L_439d90

  ; Code: .L_439d79:	 RIP: 439d79	 Bytes: 0
block_.L_439d79:

  ; Code: movq $0x57b826, %rdi	 RIP: 439d79	 Bytes: 10
  %loadMem_439d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d79 = call %struct.Memory* @routine_movq__0x57b826___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d79)
  store %struct.Memory* %call_439d79, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 439d83	 Bytes: 3
  %loadMem_439d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d83 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d83)
  store %struct.Memory* %call_439d83, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439d86	 Bytes: 2
  %loadMem_439d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d86 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d86)
  store %struct.Memory* %call_439d86, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439d88	 Bytes: 5
  %loadMem1_439d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439d88 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439d88, i64 98344, i64 5, i64 5)
  store %struct.Memory* %call1_439d88, %struct.Memory** %MEMORY

  %loadMem2_439d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d88 = load i64, i64* %3
  %call2_439d88 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439d88, %struct.Memory* %loadMem2_439d88)
  store %struct.Memory* %call2_439d88, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 439d8d	 Bytes: 3
  %loadMem_439d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d8d = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d8d)
  store %struct.Memory* %call_439d8d, %struct.Memory** %MEMORY

  ; Code: .L_439d90:	 RIP: 439d90	 Bytes: 0
  br label %block_.L_439d90
block_.L_439d90:

  ; Code: jmpq .L_439d95	 RIP: 439d90	 Bytes: 5
  %loadMem_439d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d90 = call %struct.Memory* @routine_jmpq_.L_439d95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d90, i64 5, i64 5)
  store %struct.Memory* %call_439d90, %struct.Memory** %MEMORY

  br label %block_.L_439d95

  ; Code: .L_439d95:	 RIP: 439d95	 Bytes: 0
block_.L_439d95:

  ; Code: jmpq .L_439d9a	 RIP: 439d95	 Bytes: 5
  %loadMem_439d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d95 = call %struct.Memory* @routine_jmpq_.L_439d9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d95, i64 5, i64 5)
  store %struct.Memory* %call_439d95, %struct.Memory** %MEMORY

  br label %block_.L_439d9a

  ; Code: .L_439d9a:	 RIP: 439d9a	 Bytes: 0
block_.L_439d9a:

  ; Code: jmpq .L_439d9f	 RIP: 439d9a	 Bytes: 5
  %loadMem_439d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d9a = call %struct.Memory* @routine_jmpq_.L_439d9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d9a, i64 5, i64 5)
  store %struct.Memory* %call_439d9a, %struct.Memory** %MEMORY

  br label %block_.L_439d9f

  ; Code: .L_439d9f:	 RIP: 439d9f	 Bytes: 0
block_.L_439d9f:

  ; Code: jmpq .L_439da4	 RIP: 439d9f	 Bytes: 5
  %loadMem_439d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d9f = call %struct.Memory* @routine_jmpq_.L_439da4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d9f, i64 5, i64 5)
  store %struct.Memory* %call_439d9f, %struct.Memory** %MEMORY

  br label %block_.L_439da4

  ; Code: .L_439da4:	 RIP: 439da4	 Bytes: 0
block_.L_439da4:

  ; Code: jmpq .L_439da9	 RIP: 439da4	 Bytes: 5
  %loadMem_439da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439da4 = call %struct.Memory* @routine_jmpq_.L_439da9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439da4, i64 5, i64 5)
  store %struct.Memory* %call_439da4, %struct.Memory** %MEMORY

  br label %block_.L_439da9

  ; Code: .L_439da9:	 RIP: 439da9	 Bytes: 0
block_.L_439da9:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439da9	 Bytes: 3
  %loadMem_439da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439da9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439da9)
  store %struct.Memory* %call_439da9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 439dac	 Bytes: 3
  %loadMem_439dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dac)
  store %struct.Memory* %call_439dac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 439daf	 Bytes: 3
  %loadMem_439daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439daf = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439daf)
  store %struct.Memory* %call_439daf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ad9	 RIP: 439db2	 Bytes: 5
  %loadMem_439db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439db2 = call %struct.Memory* @routine_jmpq_.L_439ad9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439db2, i64 -729, i64 5)
  store %struct.Memory* %call_439db2, %struct.Memory** %MEMORY

  br label %block_.L_439ad9

  ; Code: .L_439db7:	 RIP: 439db7	 Bytes: 0
block_.L_439db7:

  ; Code: jmpq .L_439dbc	 RIP: 439db7	 Bytes: 5
  %loadMem_439db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439db7 = call %struct.Memory* @routine_jmpq_.L_439dbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439db7, i64 5, i64 5)
  store %struct.Memory* %call_439db7, %struct.Memory** %MEMORY

  br label %block_.L_439dbc

  ; Code: .L_439dbc:	 RIP: 439dbc	 Bytes: 0
block_.L_439dbc:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439dbc	 Bytes: 3
  %loadMem_439dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dbc = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dbc)
  store %struct.Memory* %call_439dbc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 439dbf	 Bytes: 3
  %loadMem_439dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dbf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dbf)
  store %struct.Memory* %call_439dbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 439dc2	 Bytes: 3
  %loadMem_439dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dc2 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dc2)
  store %struct.Memory* %call_439dc2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ac2	 RIP: 439dc5	 Bytes: 5
  %loadMem_439dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dc5 = call %struct.Memory* @routine_jmpq_.L_439ac2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dc5, i64 -771, i64 5)
  store %struct.Memory* %call_439dc5, %struct.Memory** %MEMORY

  br label %block_.L_439ac2

  ; Code: .L_439dca:	 RIP: 439dca	 Bytes: 0
block_.L_439dca:

  ; Code: movq $0x586073, %rdi	 RIP: 439dca	 Bytes: 10
  %loadMem_439dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dca = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dca)
  store %struct.Memory* %call_439dca, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439dd4	 Bytes: 2
  %loadMem_439dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dd4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dd4)
  store %struct.Memory* %call_439dd4, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439dd6	 Bytes: 5
  %loadMem1_439dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439dd6 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439dd6, i64 98266, i64 5, i64 5)
  store %struct.Memory* %call1_439dd6, %struct.Memory** %MEMORY

  %loadMem2_439dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439dd6 = load i64, i64* %3
  %call2_439dd6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439dd6, %struct.Memory* %loadMem2_439dd6)
  store %struct.Memory* %call2_439dd6, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 439ddb	 Bytes: 7
  %loadMem_439ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ddb = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ddb)
  store %struct.Memory* %call_439ddb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 439de2	 Bytes: 3
  %loadMem_439de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439de2 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439de2)
  store %struct.Memory* %call_439de2, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x24(%rbp)	 RIP: 439de5	 Bytes: 7
  %loadMem_439de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439de5 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439de5)
  store %struct.Memory* %call_439de5, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 439dec	 Bytes: 7
  %loadMem_439dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dec = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dec)
  store %struct.Memory* %call_439dec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 439df3	 Bytes: 3
  %loadMem_439df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439df3 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439df3)
  store %struct.Memory* %call_439df3, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x2c(%rbp)	 RIP: 439df6	 Bytes: 7
  %loadMem_439df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439df6 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439df6)
  store %struct.Memory* %call_439df6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 439dfd	 Bytes: 7
  %loadMem_439dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dfd = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dfd)
  store %struct.Memory* %call_439dfd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 439e04	 Bytes: 3
  %loadMem_439e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e04 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e04)
  store %struct.Memory* %call_439e04, %struct.Memory** %MEMORY

  ; Code: .L_439e07:	 RIP: 439e07	 Bytes: 0
  br label %block_.L_439e07
block_.L_439e07:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439e07	 Bytes: 3
  %loadMem_439e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e07 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e07)
  store %struct.Memory* %call_439e07, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 439e0a	 Bytes: 7
  %loadMem_439e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e0a = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e0a)
  store %struct.Memory* %call_439e0a, %struct.Memory** %MEMORY

  ; Code: jge .L_439ec5	 RIP: 439e11	 Bytes: 6
  %loadMem_439e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e11 = call %struct.Memory* @routine_jge_.L_439ec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e11, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_439e11, %struct.Memory** %MEMORY

  %loadBr_439e11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e11 = icmp eq i8 %loadBr_439e11, 1
  br i1 %cmpBr_439e11, label %block_.L_439ec5, label %block_439e17

block_439e17:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 439e17	 Bytes: 7
  %loadMem_439e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e17 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e17)
  store %struct.Memory* %call_439e17, %struct.Memory** %MEMORY

  ; Code: .L_439e1e:	 RIP: 439e1e	 Bytes: 0
  br label %block_.L_439e1e
block_.L_439e1e:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439e1e	 Bytes: 3
  %loadMem_439e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e1e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e1e)
  store %struct.Memory* %call_439e1e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 439e21	 Bytes: 7
  %loadMem_439e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e21 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e21)
  store %struct.Memory* %call_439e21, %struct.Memory** %MEMORY

  ; Code: jge .L_439eb2	 RIP: 439e28	 Bytes: 6
  %loadMem_439e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e28 = call %struct.Memory* @routine_jge_.L_439eb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e28, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_439e28, %struct.Memory** %MEMORY

  %loadBr_439e28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e28 = icmp eq i8 %loadBr_439e28, 1
  br i1 %cmpBr_439e28, label %block_.L_439eb2, label %block_439e2e

block_439e2e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 439e2e	 Bytes: 4
  %loadMem_439e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e2e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e2e)
  store %struct.Memory* %call_439e2e, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x18(%rbp), %ecx	 RIP: 439e32	 Bytes: 4
  %loadMem_439e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e32 = call %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e32)
  store %struct.Memory* %call_439e32, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %ecx	 RIP: 439e36	 Bytes: 3
  %loadMem_439e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e36 = call %struct.Memory* @routine_addl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e36)
  store %struct.Memory* %call_439e36, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %ecx	 RIP: 439e39	 Bytes: 3
  %loadMem_439e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e39 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e39)
  store %struct.Memory* %call_439e39, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 439e3c	 Bytes: 3
  %loadMem_439e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e3c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e3c)
  store %struct.Memory* %call_439e3c, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 439e3f	 Bytes: 4
  %loadMem_439e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e3f = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e3f)
  store %struct.Memory* %call_439e3f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 439e43	 Bytes: 3
  %loadMem_439e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e43 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e43)
  store %struct.Memory* %call_439e43, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 439e46	 Bytes: 3
  %loadMem_439e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e46 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e46)
  store %struct.Memory* %call_439e46, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %ecx	 RIP: 439e49	 Bytes: 3
  %loadMem_439e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e49 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e49)
  store %struct.Memory* %call_439e49, %struct.Memory** %MEMORY

  ; Code: je .L_439e57	 RIP: 439e4c	 Bytes: 6
  %loadMem_439e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e4c = call %struct.Memory* @routine_je_.L_439e57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e4c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_439e4c, %struct.Memory** %MEMORY

  %loadBr_439e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e4c = icmp eq i8 %loadBr_439e4c, 1
  br i1 %cmpBr_439e4c, label %block_.L_439e57, label %block_439e52

block_439e52:
  ; Code: jmpq .L_439ea4	 RIP: 439e52	 Bytes: 5
  %loadMem_439e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e52 = call %struct.Memory* @routine_jmpq_.L_439ea4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e52, i64 82, i64 5)
  store %struct.Memory* %call_439e52, %struct.Memory** %MEMORY

  br label %block_.L_439ea4

  ; Code: .L_439e57:	 RIP: 439e57	 Bytes: 0
block_.L_439e57:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439e57	 Bytes: 3
  %loadMem_439e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e57 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e57)
  store %struct.Memory* %call_439e57, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 439e5a	 Bytes: 3
  %loadMem_439e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e5a = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e5a)
  store %struct.Memory* %call_439e5a, %struct.Memory** %MEMORY

  ; Code: jge .L_439e69	 RIP: 439e5d	 Bytes: 6
  %loadMem_439e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e5d = call %struct.Memory* @routine_jge_.L_439e69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e5d, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_439e5d, %struct.Memory** %MEMORY

  %loadBr_439e5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e5d = icmp eq i8 %loadBr_439e5d, 1
  br i1 %cmpBr_439e5d, label %block_.L_439e69, label %block_439e63

block_439e63:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 439e63	 Bytes: 3
  %loadMem_439e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e63 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e63)
  store %struct.Memory* %call_439e63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 439e66	 Bytes: 3
  %loadMem_439e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e66 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e66)
  store %struct.Memory* %call_439e66, %struct.Memory** %MEMORY

  ; Code: .L_439e69:	 RIP: 439e69	 Bytes: 0
  br label %block_.L_439e69
block_.L_439e69:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439e69	 Bytes: 3
  %loadMem_439e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e69 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e69)
  store %struct.Memory* %call_439e69, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 439e6c	 Bytes: 3
  %loadMem_439e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e6c = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e6c)
  store %struct.Memory* %call_439e6c, %struct.Memory** %MEMORY

  ; Code: jle .L_439e7b	 RIP: 439e6f	 Bytes: 6
  %loadMem_439e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e6f = call %struct.Memory* @routine_jle_.L_439e7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e6f, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_439e6f, %struct.Memory** %MEMORY

  %loadBr_439e6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e6f = icmp eq i8 %loadBr_439e6f, 1
  br i1 %cmpBr_439e6f, label %block_.L_439e7b, label %block_439e75

block_439e75:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 439e75	 Bytes: 3
  %loadMem_439e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e75 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e75)
  store %struct.Memory* %call_439e75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 439e78	 Bytes: 3
  %loadMem_439e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e78 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e78)
  store %struct.Memory* %call_439e78, %struct.Memory** %MEMORY

  ; Code: .L_439e7b:	 RIP: 439e7b	 Bytes: 0
  br label %block_.L_439e7b
block_.L_439e7b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439e7b	 Bytes: 3
  %loadMem_439e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e7b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e7b)
  store %struct.Memory* %call_439e7b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 439e7e	 Bytes: 3
  %loadMem_439e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e7e = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e7e)
  store %struct.Memory* %call_439e7e, %struct.Memory** %MEMORY

  ; Code: jge .L_439e8d	 RIP: 439e81	 Bytes: 6
  %loadMem_439e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e81 = call %struct.Memory* @routine_jge_.L_439e8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e81, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_439e81, %struct.Memory** %MEMORY

  %loadBr_439e81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e81 = icmp eq i8 %loadBr_439e81, 1
  br i1 %cmpBr_439e81, label %block_.L_439e8d, label %block_439e87

block_439e87:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439e87	 Bytes: 3
  %loadMem_439e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e87 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e87)
  store %struct.Memory* %call_439e87, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 439e8a	 Bytes: 3
  %loadMem_439e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e8a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e8a)
  store %struct.Memory* %call_439e8a, %struct.Memory** %MEMORY

  ; Code: .L_439e8d:	 RIP: 439e8d	 Bytes: 0
  br label %block_.L_439e8d
block_.L_439e8d:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439e8d	 Bytes: 3
  %loadMem_439e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e8d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e8d)
  store %struct.Memory* %call_439e8d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 439e90	 Bytes: 3
  %loadMem_439e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e90 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e90)
  store %struct.Memory* %call_439e90, %struct.Memory** %MEMORY

  ; Code: jle .L_439e9f	 RIP: 439e93	 Bytes: 6
  %loadMem_439e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e93 = call %struct.Memory* @routine_jle_.L_439e9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e93, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_439e93, %struct.Memory** %MEMORY

  %loadBr_439e93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e93 = icmp eq i8 %loadBr_439e93, 1
  br i1 %cmpBr_439e93, label %block_.L_439e9f, label %block_439e99

block_439e99:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439e99	 Bytes: 3
  %loadMem_439e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e99 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e99)
  store %struct.Memory* %call_439e99, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 439e9c	 Bytes: 3
  %loadMem_439e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e9c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e9c)
  store %struct.Memory* %call_439e9c, %struct.Memory** %MEMORY

  ; Code: .L_439e9f:	 RIP: 439e9f	 Bytes: 0
  br label %block_.L_439e9f
block_.L_439e9f:

  ; Code: jmpq .L_439ea4	 RIP: 439e9f	 Bytes: 5
  %loadMem_439e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e9f = call %struct.Memory* @routine_jmpq_.L_439ea4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e9f, i64 5, i64 5)
  store %struct.Memory* %call_439e9f, %struct.Memory** %MEMORY

  br label %block_.L_439ea4

  ; Code: .L_439ea4:	 RIP: 439ea4	 Bytes: 0
block_.L_439ea4:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439ea4	 Bytes: 3
  %loadMem_439ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ea4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ea4)
  store %struct.Memory* %call_439ea4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 439ea7	 Bytes: 3
  %loadMem_439ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ea7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ea7)
  store %struct.Memory* %call_439ea7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 439eaa	 Bytes: 3
  %loadMem_439eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eaa = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eaa)
  store %struct.Memory* %call_439eaa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439e1e	 RIP: 439ead	 Bytes: 5
  %loadMem_439ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ead = call %struct.Memory* @routine_jmpq_.L_439e1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ead, i64 -143, i64 5)
  store %struct.Memory* %call_439ead, %struct.Memory** %MEMORY

  br label %block_.L_439e1e

  ; Code: .L_439eb2:	 RIP: 439eb2	 Bytes: 0
block_.L_439eb2:

  ; Code: jmpq .L_439eb7	 RIP: 439eb2	 Bytes: 5
  %loadMem_439eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eb2 = call %struct.Memory* @routine_jmpq_.L_439eb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eb2, i64 5, i64 5)
  store %struct.Memory* %call_439eb2, %struct.Memory** %MEMORY

  br label %block_.L_439eb7

  ; Code: .L_439eb7:	 RIP: 439eb7	 Bytes: 0
block_.L_439eb7:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439eb7	 Bytes: 3
  %loadMem_439eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eb7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eb7)
  store %struct.Memory* %call_439eb7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 439eba	 Bytes: 3
  %loadMem_439eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eba)
  store %struct.Memory* %call_439eba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 439ebd	 Bytes: 3
  %loadMem_439ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ebd = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ebd)
  store %struct.Memory* %call_439ebd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439e07	 RIP: 439ec0	 Bytes: 5
  %loadMem_439ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ec0 = call %struct.Memory* @routine_jmpq_.L_439e07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ec0, i64 -185, i64 5)
  store %struct.Memory* %call_439ec0, %struct.Memory** %MEMORY

  br label %block_.L_439e07

  ; Code: .L_439ec5:	 RIP: 439ec5	 Bytes: 0
block_.L_439ec5:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 439ec5	 Bytes: 3
  %loadMem_439ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ec5 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ec5)
  store %struct.Memory* %call_439ec5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 439ec8	 Bytes: 3
  %loadMem_439ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ec8 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ec8)
  store %struct.Memory* %call_439ec8, %struct.Memory** %MEMORY

  ; Code: .L_439ecb:	 RIP: 439ecb	 Bytes: 0
  br label %block_.L_439ecb
block_.L_439ecb:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 439ecb	 Bytes: 3
  %loadMem_439ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ecb = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ecb)
  store %struct.Memory* %call_439ecb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 439ece	 Bytes: 3
  %loadMem_439ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ece = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ece)
  store %struct.Memory* %call_439ece, %struct.Memory** %MEMORY

  ; Code: jg .L_43a04d	 RIP: 439ed1	 Bytes: 6
  %loadMem_439ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ed1 = call %struct.Memory* @routine_jg_.L_43a04d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ed1, i8* %BRANCH_TAKEN, i64 380, i64 6, i64 6)
  store %struct.Memory* %call_439ed1, %struct.Memory** %MEMORY

  %loadBr_439ed1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ed1 = icmp eq i8 %loadBr_439ed1, 1
  br i1 %cmpBr_439ed1, label %block_.L_43a04d, label %block_439ed7

block_439ed7:
  ; Code: movq $0x58898d, %rdi	 RIP: 439ed7	 Bytes: 10
  %loadMem_439ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ed7 = call %struct.Memory* @routine_movq__0x58898d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ed7)
  store %struct.Memory* %call_439ed7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439ee1	 Bytes: 2
  %loadMem_439ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ee1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ee1)
  store %struct.Memory* %call_439ee1, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439ee3	 Bytes: 5
  %loadMem1_439ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ee3 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ee3, i64 97997, i64 5, i64 5)
  store %struct.Memory* %call1_439ee3, %struct.Memory** %MEMORY

  %loadMem2_439ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ee3 = load i64, i64* %3
  %call2_439ee3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439ee3, %struct.Memory* %loadMem2_439ee3)
  store %struct.Memory* %call2_439ee3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 439ee8	 Bytes: 3
  %loadMem_439ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ee8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ee8)
  store %struct.Memory* %call_439ee8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 439eeb	 Bytes: 3
  %loadMem_439eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eeb = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eeb)
  store %struct.Memory* %call_439eeb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 439eee	 Bytes: 3
  %loadMem_439eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eee = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eee)
  store %struct.Memory* %call_439eee, %struct.Memory** %MEMORY

  ; Code: .L_439ef1:	 RIP: 439ef1	 Bytes: 0
  br label %block_.L_439ef1
block_.L_439ef1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439ef1	 Bytes: 3
  %loadMem_439ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef1)
  store %struct.Memory* %call_439ef1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 439ef4	 Bytes: 3
  %loadMem_439ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef4 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef4)
  store %struct.Memory* %call_439ef4, %struct.Memory** %MEMORY

  ; Code: jg .L_43a02b	 RIP: 439ef7	 Bytes: 6
  %loadMem_439ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef7 = call %struct.Memory* @routine_jg_.L_43a02b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef7, i8* %BRANCH_TAKEN, i64 308, i64 6, i64 6)
  store %struct.Memory* %call_439ef7, %struct.Memory** %MEMORY

  %loadBr_439ef7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ef7 = icmp eq i8 %loadBr_439ef7, 1
  br i1 %cmpBr_439ef7, label %block_.L_43a02b, label %block_439efd

block_439efd:
  ; Code: imull $0x14, -0x18(%rbp), %eax	 RIP: 439efd	 Bytes: 4
  %loadMem_439efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439efd = call %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439efd)
  store %struct.Memory* %call_439efd, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 439f01	 Bytes: 3
  %loadMem_439f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f01 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f01)
  store %struct.Memory* %call_439f01, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 439f04	 Bytes: 3
  %loadMem_439f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f04 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f04)
  store %struct.Memory* %call_439f04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 439f07	 Bytes: 3
  %loadMem_439f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f07 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f07)
  store %struct.Memory* %call_439f07, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 439f0a	 Bytes: 4
  %loadMem_439f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f0a)
  store %struct.Memory* %call_439f0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 439f0e	 Bytes: 4
  %loadMem_439f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f0e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f0e)
  store %struct.Memory* %call_439f0e, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rdx, %rdx	 RIP: 439f12	 Bytes: 4
  %loadMem_439f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f12 = call %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f12)
  store %struct.Memory* %call_439f12, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 439f16	 Bytes: 3
  %loadMem_439f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f16 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f16)
  store %struct.Memory* %call_439f16, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %eax	 RIP: 439f19	 Bytes: 3
  %loadMem_439f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f19 = call %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f19)
  store %struct.Memory* %call_439f19, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 439f1c	 Bytes: 3
  %loadMem_439f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f1c = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f1c)
  store %struct.Memory* %call_439f1c, %struct.Memory** %MEMORY

  ; Code: jne .L_43a004	 RIP: 439f1f	 Bytes: 6
  %loadMem_439f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f1f = call %struct.Memory* @routine_jne_.L_43a004(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f1f, i8* %BRANCH_TAKEN, i64 229, i64 6, i64 6)
  store %struct.Memory* %call_439f1f, %struct.Memory** %MEMORY

  %loadBr_439f1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f1f = icmp eq i8 %loadBr_439f1f, 1
  br i1 %cmpBr_439f1f, label %block_.L_43a004, label %block_439f25

block_439f25:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 439f25	 Bytes: 4
  %loadMem_439f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f25 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f25)
  store %struct.Memory* %call_439f25, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 439f29	 Bytes: 8
  %loadMem_439f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f29 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f29)
  store %struct.Memory* %call_439f29, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 439f31	 Bytes: 3
  %loadMem_439f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f31 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f31)
  store %struct.Memory* %call_439f31, %struct.Memory** %MEMORY

  ; Code: jne .L_439fb8	 RIP: 439f34	 Bytes: 6
  %loadMem_439f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f34 = call %struct.Memory* @routine_jne_.L_439fb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f34, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_439f34, %struct.Memory** %MEMORY

  %loadBr_439f34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f34 = icmp eq i8 %loadBr_439f34, 1
  br i1 %cmpBr_439f34, label %block_.L_439fb8, label %block_439f3a

block_439f3a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 439f3a	 Bytes: 4
  %loadMem_439f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f3a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f3a)
  store %struct.Memory* %call_439f3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439f3e	 Bytes: 4
  %loadMem_439f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f3e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f3e)
  store %struct.Memory* %call_439f3e, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 439f42	 Bytes: 4
  %loadMem_439f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f42 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f42)
  store %struct.Memory* %call_439f42, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 439f46	 Bytes: 3
  %loadMem_439f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f46 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f46)
  store %struct.Memory* %call_439f46, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x1c(%rax)	 RIP: 439f49	 Bytes: 4
  %loadMem_439f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f49 = call %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f49)
  store %struct.Memory* %call_439f49, %struct.Memory** %MEMORY

  ; Code: je .L_439f6c	 RIP: 439f4d	 Bytes: 6
  %loadMem_439f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f4d = call %struct.Memory* @routine_je_.L_439f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f4d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_439f4d, %struct.Memory** %MEMORY

  %loadBr_439f4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f4d = icmp eq i8 %loadBr_439f4d, 1
  br i1 %cmpBr_439f4d, label %block_.L_439f6c, label %block_439f53

block_439f53:
  ; Code: movq $0x57da42, %rdi	 RIP: 439f53	 Bytes: 10
  %loadMem_439f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f53 = call %struct.Memory* @routine_movq__0x57da42___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f53)
  store %struct.Memory* %call_439f53, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439f5d	 Bytes: 2
  %loadMem_439f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f5d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f5d)
  store %struct.Memory* %call_439f5d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439f5f	 Bytes: 5
  %loadMem1_439f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439f5f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439f5f, i64 97873, i64 5, i64 5)
  store %struct.Memory* %call1_439f5f, %struct.Memory** %MEMORY

  %loadMem2_439f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f5f = load i64, i64* %3
  %call2_439f5f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439f5f, %struct.Memory* %loadMem2_439f5f)
  store %struct.Memory* %call2_439f5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 439f64	 Bytes: 3
  %loadMem_439f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f64 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f64)
  store %struct.Memory* %call_439f64, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439fb3	 RIP: 439f67	 Bytes: 5
  %loadMem_439f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f67 = call %struct.Memory* @routine_jmpq_.L_439fb3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f67, i64 76, i64 5)
  store %struct.Memory* %call_439f67, %struct.Memory** %MEMORY

  br label %block_.L_439fb3

  ; Code: .L_439f6c:	 RIP: 439f6c	 Bytes: 0
block_.L_439f6c:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 439f6c	 Bytes: 4
  %loadMem_439f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f6c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f6c)
  store %struct.Memory* %call_439f6c, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 439f70	 Bytes: 3
  %loadMem_439f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f70 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f70)
  store %struct.Memory* %call_439f70, %struct.Memory** %MEMORY

  ; Code: callq .is_halfeye	 RIP: 439f73	 Bytes: 5
  %loadMem1_439f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439f73 = call %struct.Memory* @routine_callq_.is_halfeye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439f73, i64 4285, i64 5, i64 5)
  store %struct.Memory* %call1_439f73, %struct.Memory** %MEMORY

  %loadMem2_439f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f73 = load i64, i64* %3
  %call2_439f73 = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64  %loadPC_439f73, %struct.Memory* %loadMem2_439f73)
  store %struct.Memory* %call2_439f73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 439f78	 Bytes: 3
  %loadMem_439f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f78 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f78)
  store %struct.Memory* %call_439f78, %struct.Memory** %MEMORY

  ; Code: je .L_439f9a	 RIP: 439f7b	 Bytes: 6
  %loadMem_439f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f7b = call %struct.Memory* @routine_je_.L_439f9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f7b, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_439f7b, %struct.Memory** %MEMORY

  %loadBr_439f7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f7b = icmp eq i8 %loadBr_439f7b, 1
  br i1 %cmpBr_439f7b, label %block_.L_439f9a, label %block_439f81

block_439f81:
  ; Code: movq $0x57da46, %rdi	 RIP: 439f81	 Bytes: 10
  %loadMem_439f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f81 = call %struct.Memory* @routine_movq__0x57da46___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f81)
  store %struct.Memory* %call_439f81, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439f8b	 Bytes: 2
  %loadMem_439f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f8b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f8b)
  store %struct.Memory* %call_439f8b, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439f8d	 Bytes: 5
  %loadMem1_439f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439f8d = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439f8d, i64 97827, i64 5, i64 5)
  store %struct.Memory* %call1_439f8d, %struct.Memory** %MEMORY

  %loadMem2_439f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f8d = load i64, i64* %3
  %call2_439f8d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439f8d, %struct.Memory* %loadMem2_439f8d)
  store %struct.Memory* %call2_439f8d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 439f92	 Bytes: 3
  %loadMem_439f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f92 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f92)
  store %struct.Memory* %call_439f92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439fae	 RIP: 439f95	 Bytes: 5
  %loadMem_439f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f95 = call %struct.Memory* @routine_jmpq_.L_439fae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f95, i64 25, i64 5)
  store %struct.Memory* %call_439f95, %struct.Memory** %MEMORY

  br label %block_.L_439fae

  ; Code: .L_439f9a:	 RIP: 439f9a	 Bytes: 0
block_.L_439f9a:

  ; Code: movq $0x57da4a, %rdi	 RIP: 439f9a	 Bytes: 10
  %loadMem_439f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f9a = call %struct.Memory* @routine_movq__0x57da4a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f9a)
  store %struct.Memory* %call_439f9a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439fa4	 Bytes: 2
  %loadMem_439fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fa4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fa4)
  store %struct.Memory* %call_439fa4, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439fa6	 Bytes: 5
  %loadMem1_439fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439fa6 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439fa6, i64 97802, i64 5, i64 5)
  store %struct.Memory* %call1_439fa6, %struct.Memory** %MEMORY

  %loadMem2_439fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fa6 = load i64, i64* %3
  %call2_439fa6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439fa6, %struct.Memory* %loadMem2_439fa6)
  store %struct.Memory* %call2_439fa6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 439fab	 Bytes: 3
  %loadMem_439fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fab = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fab)
  store %struct.Memory* %call_439fab, %struct.Memory** %MEMORY

  ; Code: .L_439fae:	 RIP: 439fae	 Bytes: 0
  br label %block_.L_439fae
block_.L_439fae:

  ; Code: jmpq .L_439fb3	 RIP: 439fae	 Bytes: 5
  %loadMem_439fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fae = call %struct.Memory* @routine_jmpq_.L_439fb3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fae, i64 5, i64 5)
  store %struct.Memory* %call_439fae, %struct.Memory** %MEMORY

  br label %block_.L_439fb3

  ; Code: .L_439fb3:	 RIP: 439fb3	 Bytes: 0
block_.L_439fb3:

  ; Code: jmpq .L_439fff	 RIP: 439fb3	 Bytes: 5
  %loadMem_439fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fb3 = call %struct.Memory* @routine_jmpq_.L_439fff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fb3, i64 76, i64 5)
  store %struct.Memory* %call_439fb3, %struct.Memory** %MEMORY

  br label %block_.L_439fff

  ; Code: .L_439fb8:	 RIP: 439fb8	 Bytes: 0
block_.L_439fb8:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 439fb8	 Bytes: 4
  %loadMem_439fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fb8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fb8)
  store %struct.Memory* %call_439fb8, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 439fbc	 Bytes: 3
  %loadMem_439fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fbc = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fbc)
  store %struct.Memory* %call_439fbc, %struct.Memory** %MEMORY

  ; Code: callq .is_halfeye	 RIP: 439fbf	 Bytes: 5
  %loadMem1_439fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439fbf = call %struct.Memory* @routine_callq_.is_halfeye(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439fbf, i64 4209, i64 5, i64 5)
  store %struct.Memory* %call1_439fbf, %struct.Memory** %MEMORY

  %loadMem2_439fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fbf = load i64, i64* %3
  %call2_439fbf = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64  %loadPC_439fbf, %struct.Memory* %loadMem2_439fbf)
  store %struct.Memory* %call2_439fbf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 439fc4	 Bytes: 3
  %loadMem_439fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fc4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fc4)
  store %struct.Memory* %call_439fc4, %struct.Memory** %MEMORY

  ; Code: je .L_439fe6	 RIP: 439fc7	 Bytes: 6
  %loadMem_439fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fc7 = call %struct.Memory* @routine_je_.L_439fe6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fc7, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_439fc7, %struct.Memory** %MEMORY

  %loadBr_439fc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439fc7 = icmp eq i8 %loadBr_439fc7, 1
  br i1 %cmpBr_439fc7, label %block_.L_439fe6, label %block_439fcd

block_439fcd:
  ; Code: movq $0x57da4e, %rdi	 RIP: 439fcd	 Bytes: 10
  %loadMem_439fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fcd = call %struct.Memory* @routine_movq__0x57da4e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fcd)
  store %struct.Memory* %call_439fcd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439fd7	 Bytes: 2
  %loadMem_439fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fd7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fd7)
  store %struct.Memory* %call_439fd7, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439fd9	 Bytes: 5
  %loadMem1_439fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439fd9 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439fd9, i64 97751, i64 5, i64 5)
  store %struct.Memory* %call1_439fd9, %struct.Memory** %MEMORY

  %loadMem2_439fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fd9 = load i64, i64* %3
  %call2_439fd9 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439fd9, %struct.Memory* %loadMem2_439fd9)
  store %struct.Memory* %call2_439fd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 439fde	 Bytes: 3
  %loadMem_439fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fde = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fde)
  store %struct.Memory* %call_439fde, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ffa	 RIP: 439fe1	 Bytes: 5
  %loadMem_439fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fe1 = call %struct.Memory* @routine_jmpq_.L_439ffa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fe1, i64 25, i64 5)
  store %struct.Memory* %call_439fe1, %struct.Memory** %MEMORY

  br label %block_.L_439ffa

  ; Code: .L_439fe6:	 RIP: 439fe6	 Bytes: 0
block_.L_439fe6:

  ; Code: movq $0x57da52, %rdi	 RIP: 439fe6	 Bytes: 10
  %loadMem_439fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fe6 = call %struct.Memory* @routine_movq__0x57da52___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fe6)
  store %struct.Memory* %call_439fe6, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 439ff0	 Bytes: 2
  %loadMem_439ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ff0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ff0)
  store %struct.Memory* %call_439ff0, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 439ff2	 Bytes: 5
  %loadMem1_439ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ff2 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ff2, i64 97726, i64 5, i64 5)
  store %struct.Memory* %call1_439ff2, %struct.Memory** %MEMORY

  %loadMem2_439ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ff2 = load i64, i64* %3
  %call2_439ff2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_439ff2, %struct.Memory* %loadMem2_439ff2)
  store %struct.Memory* %call2_439ff2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 439ff7	 Bytes: 3
  %loadMem_439ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ff7 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ff7)
  store %struct.Memory* %call_439ff7, %struct.Memory** %MEMORY

  ; Code: .L_439ffa:	 RIP: 439ffa	 Bytes: 0
  br label %block_.L_439ffa
block_.L_439ffa:

  ; Code: jmpq .L_439fff	 RIP: 439ffa	 Bytes: 5
  %loadMem_439ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ffa = call %struct.Memory* @routine_jmpq_.L_439fff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ffa, i64 5, i64 5)
  store %struct.Memory* %call_439ffa, %struct.Memory** %MEMORY

  br label %block_.L_439fff

  ; Code: .L_439fff:	 RIP: 439fff	 Bytes: 0
block_.L_439fff:

  ; Code: jmpq .L_43a018	 RIP: 439fff	 Bytes: 5
  %loadMem_439fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fff = call %struct.Memory* @routine_jmpq_.L_43a018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fff, i64 25, i64 5)
  store %struct.Memory* %call_439fff, %struct.Memory** %MEMORY

  br label %block_.L_43a018

  ; Code: .L_43a004:	 RIP: 43a004	 Bytes: 0
block_.L_43a004:

  ; Code: movq $0x57da56, %rdi	 RIP: 43a004	 Bytes: 10
  %loadMem_43a004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a004 = call %struct.Memory* @routine_movq__0x57da56___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a004)
  store %struct.Memory* %call_43a004, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43a00e	 Bytes: 2
  %loadMem_43a00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a00e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a00e)
  store %struct.Memory* %call_43a00e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43a010	 Bytes: 5
  %loadMem1_43a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a010 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a010, i64 97696, i64 5, i64 5)
  store %struct.Memory* %call1_43a010, %struct.Memory** %MEMORY

  %loadMem2_43a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a010 = load i64, i64* %3
  %call2_43a010 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43a010, %struct.Memory* %loadMem2_43a010)
  store %struct.Memory* %call2_43a010, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 43a015	 Bytes: 3
  %loadMem_43a015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a015 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a015)
  store %struct.Memory* %call_43a015, %struct.Memory** %MEMORY

  ; Code: .L_43a018:	 RIP: 43a018	 Bytes: 0
  br label %block_.L_43a018
block_.L_43a018:

  ; Code: jmpq .L_43a01d	 RIP: 43a018	 Bytes: 5
  %loadMem_43a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a018 = call %struct.Memory* @routine_jmpq_.L_43a01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a018, i64 5, i64 5)
  store %struct.Memory* %call_43a018, %struct.Memory** %MEMORY

  br label %block_.L_43a01d

  ; Code: .L_43a01d:	 RIP: 43a01d	 Bytes: 0
block_.L_43a01d:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 43a01d	 Bytes: 3
  %loadMem_43a01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a01d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a01d)
  store %struct.Memory* %call_43a01d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43a020	 Bytes: 3
  %loadMem_43a020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a020 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a020)
  store %struct.Memory* %call_43a020, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 43a023	 Bytes: 3
  %loadMem_43a023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a023 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a023)
  store %struct.Memory* %call_43a023, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ef1	 RIP: 43a026	 Bytes: 5
  %loadMem_43a026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a026 = call %struct.Memory* @routine_jmpq_.L_439ef1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a026, i64 -309, i64 5)
  store %struct.Memory* %call_43a026, %struct.Memory** %MEMORY

  br label %block_.L_439ef1

  ; Code: .L_43a02b:	 RIP: 43a02b	 Bytes: 0
block_.L_43a02b:

  ; Code: movq $0x586073, %rdi	 RIP: 43a02b	 Bytes: 10
  %loadMem_43a02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a02b = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a02b)
  store %struct.Memory* %call_43a02b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43a035	 Bytes: 2
  %loadMem_43a035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a035 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a035)
  store %struct.Memory* %call_43a035, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43a037	 Bytes: 5
  %loadMem1_43a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a037 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a037, i64 97657, i64 5, i64 5)
  store %struct.Memory* %call1_43a037, %struct.Memory** %MEMORY

  %loadMem2_43a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a037 = load i64, i64* %3
  %call2_43a037 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43a037, %struct.Memory* %loadMem2_43a037)
  store %struct.Memory* %call2_43a037, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 43a03c	 Bytes: 3
  %loadMem_43a03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a03c = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a03c)
  store %struct.Memory* %call_43a03c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43a03f	 Bytes: 3
  %loadMem_43a03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a03f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a03f)
  store %struct.Memory* %call_43a03f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43a042	 Bytes: 3
  %loadMem_43a042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a042 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a042)
  store %struct.Memory* %call_43a042, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 43a045	 Bytes: 3
  %loadMem_43a045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a045 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a045)
  store %struct.Memory* %call_43a045, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ecb	 RIP: 43a048	 Bytes: 5
  %loadMem_43a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a048 = call %struct.Memory* @routine_jmpq_.L_439ecb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a048, i64 -381, i64 5)
  store %struct.Memory* %call_43a048, %struct.Memory** %MEMORY

  br label %block_.L_439ecb

  ; Code: .L_43a04d:	 RIP: 43a04d	 Bytes: 0
block_.L_43a04d:

  ; Code: addq $0x80, %rsp	 RIP: 43a04d	 Bytes: 7
  %loadMem_43a04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a04d = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a04d)
  store %struct.Memory* %call_43a04d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43a054	 Bytes: 1
  %loadMem_43a054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a054 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a054)
  store %struct.Memory* %call_43a054, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43a055	 Bytes: 1
  %loadMem_43a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a055 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a055)
  store %struct.Memory* %call_43a055, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43a055
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57d997___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57d997_type* @G__0x57d997 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_imulq__0x24___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 36)
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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






define %struct.Memory* @routine_addq__rdi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x24___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 36)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x8__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_439dca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_439db7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_je_.L_439b16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_439da9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_je_.L_439b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_je_.L_439b5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_439b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57d9c6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57d9c6_type* @G__0x57d9c6 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_439da4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_callq_.is_halfeye(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_439c2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_439bb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_439c2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0xa9451__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xa9451__rip__type* @G_0xa9451__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 48)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd___rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_439bfe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jp_.L_439bfe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x57d9d0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57d9d0_type* @G__0x57d9d0 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_439c28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57d9da___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57d9da_type* @G__0x57d9da to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_439d9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_439c8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_439c70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__0x57da01___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da01_type* @G__0x57da01 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439d9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_je_.L_439cd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_439cd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57da0a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da0a_type* @G__0x57da0a to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439d95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_je_.L_439d79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_439d79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0xa9305__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xa9305__rip__type* @G_0xa9305__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_jne_.L_439d4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jp_.L_439d4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x57da13___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da13_type* @G__0x57da13 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439d74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57da1c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da1c_type* @G__0x57da1c to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57b826___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57b826_type* @G__0x57b826 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439ad9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_439dbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_439ac2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x586073_type* @G__0x586073 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jge_.L_439ec5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_439eb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 20)
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


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_439e57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_439ea4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_439e69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jle_.L_439e7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_439e8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_439e9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_439e1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_439eb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_439e07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_jg_.L_43a04d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x58898d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58898d_type* @G__0x58898d to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_jg_.L_43a02b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_jne_.L_43a004(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_439fb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_439f6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57da42___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da42_type* @G__0x57da42 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439fb3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_je_.L_439f9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57da46___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da46_type* @G__0x57da46 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_439fae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57da4a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da4a_type* @G__0x57da4a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_439fff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_je_.L_439fe6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57da4e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da4e_type* @G__0x57da4e to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_439ffa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57da52___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da52_type* @G__0x57da52 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_jmpq_.L_43a018(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57da56___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57da56_type* @G__0x57da56 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_43a01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_439ef1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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








define %struct.Memory* @routine_jmpq_.L_439ecb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

