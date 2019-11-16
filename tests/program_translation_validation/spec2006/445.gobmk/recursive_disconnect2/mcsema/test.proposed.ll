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

declare %struct.Memory* @sub_418320.sgf_trace2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417ee0.get_read_result2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4553b0.ladder_capture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_453440.find_connection_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4529f0.recursive_connect2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae43c_type = type <{ [4 x i8] }>
@G_0x7ae43c= global %G_0x7ae43c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7afc58_type = type <{ [4 x i8] }>
@G_0x7afc58= global %G_0x7afc58_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7afc5c_type = type <{ [4 x i8] }>
@G_0x7afc5c= global %G_0x7afc5c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
@G_0xab0ef8= global %G_0xab0ef8_type <{ [1 x i8] c"\00" }>
%G_0xae239c_type = type <{ [4 x i8] }>
@G_0xae239c= global %G_0xae239c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xae23a0_type = type <{ [4 x i8] }>
@G_0xae23a0= global %G_0xae23a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b850_type = type <{ [4 x i8] }>
@G_0xb8b850= global %G_0xb8b850_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57dee3_type = type <{ [8 x i8] }>
@G__0x57dee3= global %G__0x57dee3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f570_type = type <{ [8 x i8] }>
@G__0x57f570= global %G__0x57f570_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f58c_type = type <{ [8 x i8] }>
@G__0x57f58c= global %G__0x57f58c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f59e_type = type <{ [8 x i8] }>
@G__0x57f59e= global %G__0x57f59e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f5bc_type = type <{ [8 x i8] }>
@G__0x57f5bc= global %G__0x57f5bc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f615_type = type <{ [8 x i8] }>
@G__0x57f615= global %G__0x57f615_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f62b_type = type <{ [8 x i8] }>
@G__0x57f62b= global %G__0x57f62b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f643_type = type <{ [8 x i8] }>
@G__0x57f643= global %G__0x57f643_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f65c_type = type <{ [8 x i8] }>
@G__0x57f65c= global %G__0x57f65c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f674_type = type <{ [8 x i8] }>
@G__0x57f674= global %G__0x57f674_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @recursive_disconnect2(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .recursive_disconnect2:	 RIP: 4549a0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4549a0	 Bytes: 1
  %loadMem_4549a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a0)
  store %struct.Memory* %call_4549a0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4549a1	 Bytes: 3
  %loadMem_4549a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a1)
  store %struct.Memory* %call_4549a1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4549a4	 Bytes: 2
  %loadMem_4549a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a4)
  store %struct.Memory* %call_4549a4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4549a6	 Bytes: 2
  %loadMem_4549a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a6)
  store %struct.Memory* %call_4549a6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 4549a8	 Bytes: 2
  %loadMem_4549a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a8)
  store %struct.Memory* %call_4549a8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 4549aa	 Bytes: 2
  %loadMem_4549aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549aa = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549aa)
  store %struct.Memory* %call_4549aa, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4549ac	 Bytes: 1
  %loadMem_4549ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ac = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ac)
  store %struct.Memory* %call_4549ac, %struct.Memory** %MEMORY

  ; Code: subq $0x678, %rsp	 RIP: 4549ad	 Bytes: 7
  %loadMem_4549ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ad = call %struct.Memory* @routine_subq__0x678___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ad)
  store %struct.Memory* %call_4549ad, %struct.Memory** %MEMORY

  ; Code: movq $0x57f615, %rax	 RIP: 4549b4	 Bytes: 10
  %loadMem_4549b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549b4 = call %struct.Memory* @routine_movq__0x57f615___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549b4)
  store %struct.Memory* %call_4549b4, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %r10d	 RIP: 4549be	 Bytes: 6
  %loadMem_4549be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549be = call %struct.Memory* @routine_movl__0x3___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549be)
  store %struct.Memory* %call_4549be, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 4549c4	 Bytes: 3
  %loadMem_4549c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549c4 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549c4)
  store %struct.Memory* %call_4549c4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x34(%rbp)	 RIP: 4549c7	 Bytes: 3
  %loadMem_4549c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549c7 = call %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549c7)
  store %struct.Memory* %call_4549c7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x40(%rbp)	 RIP: 4549ca	 Bytes: 4
  %loadMem_4549ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ca = call %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ca)
  store %struct.Memory* %call_4549ca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 4549ce	 Bytes: 3
  %loadMem_4549ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ce = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ce)
  store %struct.Memory* %call_4549ce, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x48(%rbp)	 RIP: 4549d1	 Bytes: 4
  %loadMem_4549d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549d1 = call %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549d1)
  store %struct.Memory* %call_4549d1, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x4c(%rbp)	 RIP: 4549d5	 Bytes: 4
  %loadMem_4549d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549d5 = call %struct.Memory* @routine_movl__r9d__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549d5)
  store %struct.Memory* %call_4549d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 4549d9	 Bytes: 4
  %loadMem_4549d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549d9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549d9)
  store %struct.Memory* %call_4549d9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rdx,1), %ecx	 RIP: 4549dd	 Bytes: 8
  %loadMem_4549dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549dd = call %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549dd)
  store %struct.Memory* %call_4549dd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x50(%rbp)	 RIP: 4549e5	 Bytes: 3
  %loadMem_4549e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549e5 = call %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549e5)
  store %struct.Memory* %call_4549e5, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %r10d	 RIP: 4549e8	 Bytes: 4
  %loadMem_4549e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549e8 = call %struct.Memory* @routine_subl_MINUS0x50__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549e8)
  store %struct.Memory* %call_4549e8, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x54(%rbp)	 RIP: 4549ec	 Bytes: 4
  %loadMem_4549ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ec = call %struct.Memory* @routine_movl__r10d__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ec)
  store %struct.Memory* %call_4549ec, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x608(%rbp)	 RIP: 4549f0	 Bytes: 10
  %loadMem_4549f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549f0 = call %struct.Memory* @routine_movl__0x0__MINUS0x608__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549f0)
  store %struct.Memory* %call_4549f0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x614(%rbp)	 RIP: 4549fa	 Bytes: 10
  %loadMem_4549fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549fa = call %struct.Memory* @routine_movl__0x0__MINUS0x614__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549fa)
  store %struct.Memory* %call_4549fa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x618(%rbp)	 RIP: 454a04	 Bytes: 10
  %loadMem_454a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a04 = call %struct.Memory* @routine_movl__0x0__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a04)
  store %struct.Memory* %call_454a04, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x628(%rbp)	 RIP: 454a0e	 Bytes: 11
  %loadMem_454a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a0e = call %struct.Memory* @routine_movq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a0e)
  store %struct.Memory* %call_454a0e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x630(%rbp)	 RIP: 454a19	 Bytes: 7
  %loadMem_454a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a19 = call %struct.Memory* @routine_movq__rax__MINUS0x630__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a19)
  store %struct.Memory* %call_454a19, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 454a20	 Bytes: 3
  %loadMem_454a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a20 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a20)
  store %struct.Memory* %call_454a20, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x634(%rbp)	 RIP: 454a23	 Bytes: 6
  %loadMem_454a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a23 = call %struct.Memory* @routine_movl__ecx__MINUS0x634__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a23)
  store %struct.Memory* %call_454a23, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 454a29	 Bytes: 3
  %loadMem_454a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a29 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a29)
  store %struct.Memory* %call_454a29, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x638(%rbp)	 RIP: 454a2c	 Bytes: 6
  %loadMem_454a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a2c = call %struct.Memory* @routine_movl__ecx__MINUS0x638__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a2c)
  store %struct.Memory* %call_454a2c, %struct.Memory** %MEMORY

  ; Code: movl 0xae239c, %ecx	 RIP: 454a32	 Bytes: 7
  %loadMem_454a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a32 = call %struct.Memory* @routine_movl_0xae239c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a32)
  store %struct.Memory* %call_454a32, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 454a39	 Bytes: 3
  %loadMem_454a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a39 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a39)
  store %struct.Memory* %call_454a39, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae239c	 RIP: 454a3c	 Bytes: 7
  %loadMem_454a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a3c = call %struct.Memory* @routine_movl__ecx__0xae239c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a3c)
  store %struct.Memory* %call_454a3c, %struct.Memory** %MEMORY

  ; Code: movl 0xae23a0, %ecx	 RIP: 454a43	 Bytes: 7
  %loadMem_454a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a43 = call %struct.Memory* @routine_movl_0xae23a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a43)
  store %struct.Memory* %call_454a43, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 454a4a	 Bytes: 3
  %loadMem_454a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a4a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a4a)
  store %struct.Memory* %call_454a4a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae23a0	 RIP: 454a4d	 Bytes: 7
  %loadMem_454a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a4d = call %struct.Memory* @routine_movl__ecx__0xae23a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a4d)
  store %struct.Memory* %call_454a4d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 454a54	 Bytes: 5
  %loadMem_454a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a54 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a54)
  store %struct.Memory* %call_454a54, %struct.Memory** %MEMORY

  ; Code: je .L_454a69	 RIP: 454a59	 Bytes: 6
  %loadMem_454a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a59 = call %struct.Memory* @routine_je_.L_454a69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a59, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_454a59, %struct.Memory** %MEMORY

  %loadBr_454a59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454a59 = icmp eq i8 %loadBr_454a59, 1
  br i1 %cmpBr_454a59, label %block_.L_454a69, label %block_454a5f

block_454a5f:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 454a5f	 Bytes: 4
  %loadMem_454a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a5f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a5f)
  store %struct.Memory* %call_454a5f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 454a63	 Bytes: 6
  %loadMem_454a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a63 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a63)
  store %struct.Memory* %call_454a63, %struct.Memory** %MEMORY

  ; Code: .L_454a69:	 RIP: 454a69	 Bytes: 0
  br label %block_.L_454a69
block_.L_454a69:

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 454a69	 Bytes: 4
  %loadMem_454a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a69 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a69)
  store %struct.Memory* %call_454a69, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 454a6d	 Bytes: 8
  %loadMem_454a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a6d = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a6d)
  store %struct.Memory* %call_454a6d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 454a75	 Bytes: 3
  %loadMem_454a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a75 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a75)
  store %struct.Memory* %call_454a75, %struct.Memory** %MEMORY

  ; Code: je .L_454a93	 RIP: 454a78	 Bytes: 6
  %loadMem_454a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a78 = call %struct.Memory* @routine_je_.L_454a93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a78, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_454a78, %struct.Memory** %MEMORY

  %loadBr_454a78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454a78 = icmp eq i8 %loadBr_454a78, 1
  br i1 %cmpBr_454a78, label %block_.L_454a93, label %block_454a7e

block_454a7e:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 454a7e	 Bytes: 4
  %loadMem_454a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a7e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a7e)
  store %struct.Memory* %call_454a7e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 454a82	 Bytes: 8
  %loadMem_454a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a82 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a82)
  store %struct.Memory* %call_454a82, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 454a8a	 Bytes: 3
  %loadMem_454a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a8a = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a8a)
  store %struct.Memory* %call_454a8a, %struct.Memory** %MEMORY

  ; Code: jne .L_454ad8	 RIP: 454a8d	 Bytes: 6
  %loadMem_454a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a8d = call %struct.Memory* @routine_jne_.L_454ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a8d, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_454a8d, %struct.Memory** %MEMORY

  %loadBr_454a8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454a8d = icmp eq i8 %loadBr_454a8d, 1
  br i1 %cmpBr_454a8d, label %block_.L_454ad8, label %block_.L_454a93

  ; Code: .L_454a93:	 RIP: 454a93	 Bytes: 0
block_.L_454a93:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454a93	 Bytes: 9
  %loadMem_454a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a93 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a93)
  store %struct.Memory* %call_454a93, %struct.Memory** %MEMORY

  ; Code: je .L_454acc	 RIP: 454a9c	 Bytes: 6
  %loadMem_454a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454a9c = call %struct.Memory* @routine_je_.L_454acc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454a9c, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_454a9c, %struct.Memory** %MEMORY

  %loadBr_454a9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454a9c = icmp eq i8 %loadBr_454a9c, 1
  br i1 %cmpBr_454a9c, label %block_.L_454acc, label %block_454aa2

block_454aa2:
  ; Code: xorl %ecx, %ecx	 RIP: 454aa2	 Bytes: 2
  %loadMem_454aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454aa2 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454aa2)
  store %struct.Memory* %call_454aa2, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %r8d	 RIP: 454aa4	 Bytes: 6
  %loadMem_454aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454aa4 = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454aa4)
  store %struct.Memory* %call_454aa4, %struct.Memory** %MEMORY

  ; Code: movq $0x57f570, %r9	 RIP: 454aaa	 Bytes: 10
  %loadMem_454aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454aaa = call %struct.Memory* @routine_movq__0x57f570___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454aaa)
  store %struct.Memory* %call_454aaa, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454ab4	 Bytes: 7
  %loadMem_454ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ab4 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ab4)
  store %struct.Memory* %call_454ab4, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454abb	 Bytes: 6
  %loadMem_454abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454abb = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454abb)
  store %struct.Memory* %call_454abb, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454ac1	 Bytes: 6
  %loadMem_454ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ac1 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ac1)
  store %struct.Memory* %call_454ac1, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454ac7	 Bytes: 5
  %loadMem1_454ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454ac7 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454ac7, i64 -247719, i64 5, i64 5)
  store %struct.Memory* %call1_454ac7, %struct.Memory** %MEMORY

  %loadMem2_454ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454ac7 = load i64, i64* %3
  %call2_454ac7 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454ac7, %struct.Memory* %loadMem2_454ac7)
  store %struct.Memory* %call2_454ac7, %struct.Memory** %MEMORY

  ; Code: .L_454acc:	 RIP: 454acc	 Bytes: 0
  br label %block_.L_454acc
block_.L_454acc:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 454acc	 Bytes: 7
  %loadMem_454acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454acc = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454acc)
  store %struct.Memory* %call_454acc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454ad3	 Bytes: 5
  %loadMem_454ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ad3 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ad3, i64 2238, i64 5)
  store %struct.Memory* %call_454ad3, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454ad8:	 RIP: 454ad8	 Bytes: 0
block_.L_454ad8:

  ; Code: movl -0x30(%rbp), %edi	 RIP: 454ad8	 Bytes: 3
  %loadMem_454ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ad8 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ad8)
  store %struct.Memory* %call_454ad8, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 454adb	 Bytes: 3
  %loadMem_454adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454adb = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454adb)
  store %struct.Memory* %call_454adb, %struct.Memory** %MEMORY

  ; Code: callq .same_string	 RIP: 454ade	 Bytes: 5
  %loadMem1_454ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454ade = call %struct.Memory* @routine_callq_.same_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454ade, i64 -259838, i64 5, i64 5)
  store %struct.Memory* %call1_454ade, %struct.Memory** %MEMORY

  %loadMem2_454ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454ade = load i64, i64* %3
  %call2_454ade = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64  %loadPC_454ade, %struct.Memory* %loadMem2_454ade)
  store %struct.Memory* %call2_454ade, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 454ae3	 Bytes: 3
  %loadMem_454ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ae3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ae3)
  store %struct.Memory* %call_454ae3, %struct.Memory** %MEMORY

  ; Code: je .L_454b30	 RIP: 454ae6	 Bytes: 6
  %loadMem_454ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ae6 = call %struct.Memory* @routine_je_.L_454b30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ae6, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_454ae6, %struct.Memory** %MEMORY

  %loadBr_454ae6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454ae6 = icmp eq i8 %loadBr_454ae6, 1
  br i1 %cmpBr_454ae6, label %block_.L_454b30, label %block_454aec

block_454aec:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454aec	 Bytes: 9
  %loadMem_454aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454aec = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454aec)
  store %struct.Memory* %call_454aec, %struct.Memory** %MEMORY

  ; Code: je .L_454b24	 RIP: 454af5	 Bytes: 6
  %loadMem_454af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454af5 = call %struct.Memory* @routine_je_.L_454b24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454af5, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_454af5, %struct.Memory** %MEMORY

  %loadBr_454af5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454af5 = icmp eq i8 %loadBr_454af5, 1
  br i1 %cmpBr_454af5, label %block_.L_454b24, label %block_454afb

block_454afb:
  ; Code: xorl %eax, %eax	 RIP: 454afb	 Bytes: 2
  %loadMem_454afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454afb = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454afb)
  store %struct.Memory* %call_454afb, %struct.Memory** %MEMORY

  ; Code: movq $0x57f58c, %r9	 RIP: 454afd	 Bytes: 10
  %loadMem_454afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454afd = call %struct.Memory* @routine_movq__0x57f58c___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454afd)
  store %struct.Memory* %call_454afd, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454b07	 Bytes: 7
  %loadMem_454b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b07 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b07)
  store %struct.Memory* %call_454b07, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454b0e	 Bytes: 6
  %loadMem_454b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b0e = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b0e)
  store %struct.Memory* %call_454b0e, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454b14	 Bytes: 6
  %loadMem_454b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b14 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b14)
  store %struct.Memory* %call_454b14, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 454b1a	 Bytes: 2
  %loadMem_454b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b1a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b1a)
  store %struct.Memory* %call_454b1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 454b1c	 Bytes: 3
  %loadMem_454b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b1c = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b1c)
  store %struct.Memory* %call_454b1c, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454b1f	 Bytes: 5
  %loadMem1_454b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454b1f = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454b1f, i64 -247807, i64 5, i64 5)
  store %struct.Memory* %call1_454b1f, %struct.Memory** %MEMORY

  %loadMem2_454b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454b1f = load i64, i64* %3
  %call2_454b1f = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454b1f, %struct.Memory* %loadMem2_454b1f)
  store %struct.Memory* %call2_454b1f, %struct.Memory** %MEMORY

  ; Code: .L_454b24:	 RIP: 454b24	 Bytes: 0
  br label %block_.L_454b24
block_.L_454b24:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 454b24	 Bytes: 7
  %loadMem_454b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b24 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b24)
  store %struct.Memory* %call_454b24, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454b2b	 Bytes: 5
  %loadMem_454b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b2b = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b2b, i64 2150, i64 5)
  store %struct.Memory* %call_454b2b, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454b30:	 RIP: 454b30	 Bytes: 0
block_.L_454b30:

  ; Code: movl 0xae239c, %eax	 RIP: 454b30	 Bytes: 7
  %loadMem_454b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b30 = call %struct.Memory* @routine_movl_0xae239c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b30)
  store %struct.Memory* %call_454b30, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7afc58, %eax	 RIP: 454b37	 Bytes: 7
  %loadMem_454b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b37 = call %struct.Memory* @routine_cmpl_0x7afc58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b37)
  store %struct.Memory* %call_454b37, %struct.Memory** %MEMORY

  ; Code: jle .L_454b89	 RIP: 454b3e	 Bytes: 6
  %loadMem_454b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b3e = call %struct.Memory* @routine_jle_.L_454b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b3e, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_454b3e, %struct.Memory** %MEMORY

  %loadBr_454b3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454b3e = icmp eq i8 %loadBr_454b3e, 1
  br i1 %cmpBr_454b3e, label %block_.L_454b89, label %block_454b44

block_454b44:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454b44	 Bytes: 9
  %loadMem_454b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b44 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b44)
  store %struct.Memory* %call_454b44, %struct.Memory** %MEMORY

  ; Code: je .L_454b7d	 RIP: 454b4d	 Bytes: 6
  %loadMem_454b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b4d = call %struct.Memory* @routine_je_.L_454b7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b4d, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_454b4d, %struct.Memory** %MEMORY

  %loadBr_454b4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454b4d = icmp eq i8 %loadBr_454b4d, 1
  br i1 %cmpBr_454b4d, label %block_.L_454b7d, label %block_454b53

block_454b53:
  ; Code: xorl %ecx, %ecx	 RIP: 454b53	 Bytes: 2
  %loadMem_454b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b53 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b53)
  store %struct.Memory* %call_454b53, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %r8d	 RIP: 454b55	 Bytes: 6
  %loadMem_454b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b55 = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b55)
  store %struct.Memory* %call_454b55, %struct.Memory** %MEMORY

  ; Code: movq $0x57f59e, %r9	 RIP: 454b5b	 Bytes: 10
  %loadMem_454b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b5b = call %struct.Memory* @routine_movq__0x57f59e___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b5b)
  store %struct.Memory* %call_454b5b, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454b65	 Bytes: 7
  %loadMem_454b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b65 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b65)
  store %struct.Memory* %call_454b65, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454b6c	 Bytes: 6
  %loadMem_454b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b6c = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b6c)
  store %struct.Memory* %call_454b6c, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454b72	 Bytes: 6
  %loadMem_454b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b72 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b72)
  store %struct.Memory* %call_454b72, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454b78	 Bytes: 5
  %loadMem1_454b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454b78 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454b78, i64 -247896, i64 5, i64 5)
  store %struct.Memory* %call1_454b78, %struct.Memory** %MEMORY

  %loadMem2_454b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454b78 = load i64, i64* %3
  %call2_454b78 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454b78, %struct.Memory* %loadMem2_454b78)
  store %struct.Memory* %call2_454b78, %struct.Memory** %MEMORY

  ; Code: .L_454b7d:	 RIP: 454b7d	 Bytes: 0
  br label %block_.L_454b7d
block_.L_454b7d:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 454b7d	 Bytes: 7
  %loadMem_454b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b7d = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b7d)
  store %struct.Memory* %call_454b7d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454b84	 Bytes: 5
  %loadMem_454b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b84 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b84, i64 2061, i64 5)
  store %struct.Memory* %call_454b84, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454b89:	 RIP: 454b89	 Bytes: 0
block_.L_454b89:

  ; Code: movl 0xb54ce4, %eax	 RIP: 454b89	 Bytes: 7
  %loadMem_454b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b89 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b89)
  store %struct.Memory* %call_454b89, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7afc5c, %eax	 RIP: 454b90	 Bytes: 7
  %loadMem_454b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b90 = call %struct.Memory* @routine_cmpl_0x7afc5c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b90)
  store %struct.Memory* %call_454b90, %struct.Memory** %MEMORY

  ; Code: jle .L_454be2	 RIP: 454b97	 Bytes: 6
  %loadMem_454b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b97 = call %struct.Memory* @routine_jle_.L_454be2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b97, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_454b97, %struct.Memory** %MEMORY

  %loadBr_454b97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454b97 = icmp eq i8 %loadBr_454b97, 1
  br i1 %cmpBr_454b97, label %block_.L_454be2, label %block_454b9d

block_454b9d:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454b9d	 Bytes: 9
  %loadMem_454b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454b9d = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454b9d)
  store %struct.Memory* %call_454b9d, %struct.Memory** %MEMORY

  ; Code: je .L_454bd6	 RIP: 454ba6	 Bytes: 6
  %loadMem_454ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ba6 = call %struct.Memory* @routine_je_.L_454bd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ba6, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_454ba6, %struct.Memory** %MEMORY

  %loadBr_454ba6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454ba6 = icmp eq i8 %loadBr_454ba6, 1
  br i1 %cmpBr_454ba6, label %block_.L_454bd6, label %block_454bac

block_454bac:
  ; Code: xorl %ecx, %ecx	 RIP: 454bac	 Bytes: 2
  %loadMem_454bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bac = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bac)
  store %struct.Memory* %call_454bac, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %r8d	 RIP: 454bae	 Bytes: 6
  %loadMem_454bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bae = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bae)
  store %struct.Memory* %call_454bae, %struct.Memory** %MEMORY

  ; Code: movq $0x57f5bc, %r9	 RIP: 454bb4	 Bytes: 10
  %loadMem_454bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bb4 = call %struct.Memory* @routine_movq__0x57f5bc___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bb4)
  store %struct.Memory* %call_454bb4, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454bbe	 Bytes: 7
  %loadMem_454bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bbe = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bbe)
  store %struct.Memory* %call_454bbe, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454bc5	 Bytes: 6
  %loadMem_454bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bc5 = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bc5)
  store %struct.Memory* %call_454bc5, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454bcb	 Bytes: 6
  %loadMem_454bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bcb = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bcb)
  store %struct.Memory* %call_454bcb, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454bd1	 Bytes: 5
  %loadMem1_454bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454bd1 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454bd1, i64 -247985, i64 5, i64 5)
  store %struct.Memory* %call1_454bd1, %struct.Memory** %MEMORY

  %loadMem2_454bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454bd1 = load i64, i64* %3
  %call2_454bd1 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454bd1, %struct.Memory* %loadMem2_454bd1)
  store %struct.Memory* %call2_454bd1, %struct.Memory** %MEMORY

  ; Code: .L_454bd6:	 RIP: 454bd6	 Bytes: 0
  br label %block_.L_454bd6
block_.L_454bd6:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 454bd6	 Bytes: 7
  %loadMem_454bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bd6 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bd6)
  store %struct.Memory* %call_454bd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454bdd	 Bytes: 5
  %loadMem_454bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bdd = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bdd, i64 1972, i64 5)
  store %struct.Memory* %call_454bdd, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454be2:	 RIP: 454be2	 Bytes: 0
block_.L_454be2:

  ; Code: movl 0xb54ce4, %eax	 RIP: 454be2	 Bytes: 7
  %loadMem_454be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454be2 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454be2)
  store %struct.Memory* %call_454be2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 454be9	 Bytes: 7
  %loadMem_454be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454be9 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454be9)
  store %struct.Memory* %call_454be9, %struct.Memory** %MEMORY

  ; Code: jg .L_454cf3	 RIP: 454bf0	 Bytes: 6
  %loadMem_454bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bf0 = call %struct.Memory* @routine_jg_.L_454cf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bf0, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_454bf0, %struct.Memory** %MEMORY

  %loadBr_454bf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454bf0 = icmp eq i8 %loadBr_454bf0, 1
  br i1 %cmpBr_454bf0, label %block_.L_454cf3, label %block_454bf6

block_454bf6:
  ; Code: movl 0x7ae43c, %eax	 RIP: 454bf6	 Bytes: 7
  %loadMem_454bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bf6 = call %struct.Memory* @routine_movl_0x7ae43c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bf6)
  store %struct.Memory* %call_454bf6, %struct.Memory** %MEMORY

  ; Code: andl $0x1000, %eax	 RIP: 454bfd	 Bytes: 5
  %loadMem_454bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454bfd = call %struct.Memory* @routine_andl__0x1000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454bfd)
  store %struct.Memory* %call_454bfd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 454c02	 Bytes: 3
  %loadMem_454c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c02 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c02)
  store %struct.Memory* %call_454c02, %struct.Memory** %MEMORY

  ; Code: je .L_454cf3	 RIP: 454c05	 Bytes: 6
  %loadMem_454c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c05 = call %struct.Memory* @routine_je_.L_454cf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c05, i8* %BRANCH_TAKEN, i64 238, i64 6, i64 6)
  store %struct.Memory* %call_454c05, %struct.Memory** %MEMORY

  %loadBr_454c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454c05 = icmp eq i8 %loadBr_454c05, 1
  br i1 %cmpBr_454c05, label %block_.L_454cf3, label %block_454c0b

block_454c0b:
  ; Code: movl $0x6, %edi	 RIP: 454c0b	 Bytes: 5
  %loadMem_454c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c0b = call %struct.Memory* @routine_movl__0x6___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c0b)
  store %struct.Memory* %call_454c0b, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rcx	 RIP: 454c10	 Bytes: 4
  %loadMem_454c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c10 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c10)
  store %struct.Memory* %call_454c10, %struct.Memory** %MEMORY

  ; Code: leaq -0x34(%rbp), %r8	 RIP: 454c14	 Bytes: 4
  %loadMem_454c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c14 = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c14)
  store %struct.Memory* %call_454c14, %struct.Memory** %MEMORY

  ; Code: leaq -0x628(%rbp), %r9	 RIP: 454c18	 Bytes: 7
  %loadMem_454c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c18 = call %struct.Memory* @routine_leaq_MINUS0x628__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c18)
  store %struct.Memory* %call_454c18, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 454c1f	 Bytes: 3
  %loadMem_454c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c1f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c1f)
  store %struct.Memory* %call_454c1f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 454c22	 Bytes: 3
  %loadMem_454c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c22 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c22)
  store %struct.Memory* %call_454c22, %struct.Memory** %MEMORY

  ; Code: callq .get_read_result2	 RIP: 454c25	 Bytes: 5
  %loadMem1_454c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454c25 = call %struct.Memory* @routine_callq_.get_read_result2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454c25, i64 -249157, i64 5, i64 5)
  store %struct.Memory* %call1_454c25, %struct.Memory** %MEMORY

  %loadMem2_454c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454c25 = load i64, i64* %3
  %call2_454c25 = call %struct.Memory* @sub_417ee0.get_read_result2(%struct.State* %0, i64  %loadPC_454c25, %struct.Memory* %loadMem2_454c25)
  store %struct.Memory* %call2_454c25, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x61c(%rbp)	 RIP: 454c2a	 Bytes: 6
  %loadMem_454c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c2a = call %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c2a)
  store %struct.Memory* %call_454c2a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x61c(%rbp)	 RIP: 454c30	 Bytes: 7
  %loadMem_454c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c30 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x61c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c30)
  store %struct.Memory* %call_454c30, %struct.Memory** %MEMORY

  ; Code: je .L_454cee	 RIP: 454c37	 Bytes: 6
  %loadMem_454c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c37 = call %struct.Memory* @routine_je_.L_454cee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c37, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_454c37, %struct.Memory** %MEMORY

  %loadBr_454c37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454c37 = icmp eq i8 %loadBr_454c37, 1
  br i1 %cmpBr_454c37, label %block_.L_454cee, label %block_454c3d

block_454c3d:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 454c3d	 Bytes: 7
  %loadMem_454c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c3d = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c3d)
  store %struct.Memory* %call_454c3d, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454c44	 Bytes: 3
  %loadMem_454c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c44 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c44)
  store %struct.Memory* %call_454c44, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %ecx	 RIP: 454c47	 Bytes: 3
  %loadMem_454c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c47 = call %struct.Memory* @routine_shrl__0x18___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c47)
  store %struct.Memory* %call_454c47, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %ecx	 RIP: 454c4a	 Bytes: 3
  %loadMem_454c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c4a = call %struct.Memory* @routine_andl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c4a)
  store %struct.Memory* %call_454c4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 454c4d	 Bytes: 3
  %loadMem_454c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c4d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c4d)
  store %struct.Memory* %call_454c4d, %struct.Memory** %MEMORY

  ; Code: je .L_454c7f	 RIP: 454c50	 Bytes: 6
  %loadMem_454c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c50 = call %struct.Memory* @routine_je_.L_454c7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c50, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_454c50, %struct.Memory** %MEMORY

  %loadBr_454c50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454c50 = icmp eq i8 %loadBr_454c50, 1
  br i1 %cmpBr_454c50, label %block_.L_454c7f, label %block_454c56

block_454c56:
  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 454c56	 Bytes: 5
  %loadMem_454c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c56 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c56)
  store %struct.Memory* %call_454c56, %struct.Memory** %MEMORY

  ; Code: je .L_454c7a	 RIP: 454c5b	 Bytes: 6
  %loadMem_454c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c5b = call %struct.Memory* @routine_je_.L_454c7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c5b, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_454c5b, %struct.Memory** %MEMORY

  %loadBr_454c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454c5b = icmp eq i8 %loadBr_454c5b, 1
  br i1 %cmpBr_454c5b, label %block_.L_454c7a, label %block_454c61

block_454c61:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 454c61	 Bytes: 7
  %loadMem_454c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c61 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c61)
  store %struct.Memory* %call_454c61, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454c68	 Bytes: 3
  %loadMem_454c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c68 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c68)
  store %struct.Memory* %call_454c68, %struct.Memory** %MEMORY

  ; Code: shrl $0xa, %ecx	 RIP: 454c6b	 Bytes: 3
  %loadMem_454c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c6b = call %struct.Memory* @routine_shrl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c6b)
  store %struct.Memory* %call_454c6b, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 454c6e	 Bytes: 6
  %loadMem_454c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c6e = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c6e)
  store %struct.Memory* %call_454c6e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 454c74	 Bytes: 4
  %loadMem_454c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c74 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c74)
  store %struct.Memory* %call_454c74, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 454c78	 Bytes: 2
  %loadMem_454c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c78 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c78)
  store %struct.Memory* %call_454c78, %struct.Memory** %MEMORY

  ; Code: .L_454c7a:	 RIP: 454c7a	 Bytes: 0
  br label %block_.L_454c7a
block_.L_454c7a:

  ; Code: jmpq .L_454c7f	 RIP: 454c7a	 Bytes: 5
  %loadMem_454c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c7a = call %struct.Memory* @routine_jmpq_.L_454c7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c7a, i64 5, i64 5)
  store %struct.Memory* %call_454c7a, %struct.Memory** %MEMORY

  br label %block_.L_454c7f

  ; Code: .L_454c7f:	 RIP: 454c7f	 Bytes: 0
block_.L_454c7f:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454c7f	 Bytes: 9
  %loadMem_454c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c7f = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c7f)
  store %struct.Memory* %call_454c7f, %struct.Memory** %MEMORY

  ; Code: je .L_454cd6	 RIP: 454c88	 Bytes: 6
  %loadMem_454c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c88 = call %struct.Memory* @routine_je_.L_454cd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c88, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_454c88, %struct.Memory** %MEMORY

  %loadBr_454c88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454c88 = icmp eq i8 %loadBr_454c88, 1
  br i1 %cmpBr_454c88, label %block_.L_454cd6, label %block_454c8e

block_454c8e:
  ; Code: movq $0x57dee3, %r9	 RIP: 454c8e	 Bytes: 10
  %loadMem_454c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c8e = call %struct.Memory* @routine_movq__0x57dee3___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c8e)
  store %struct.Memory* %call_454c8e, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454c98	 Bytes: 7
  %loadMem_454c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c98 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c98)
  store %struct.Memory* %call_454c98, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454c9f	 Bytes: 6
  %loadMem_454c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454c9f = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454c9f)
  store %struct.Memory* %call_454c9f, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454ca5	 Bytes: 6
  %loadMem_454ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ca5 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ca5)
  store %struct.Memory* %call_454ca5, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 454cab	 Bytes: 7
  %loadMem_454cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cab = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cab)
  store %struct.Memory* %call_454cab, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454cb2	 Bytes: 3
  %loadMem_454cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cb2 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cb2)
  store %struct.Memory* %call_454cb2, %struct.Memory** %MEMORY

  ; Code: shrl $0xa, %ecx	 RIP: 454cb5	 Bytes: 3
  %loadMem_454cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cb5 = call %struct.Memory* @routine_shrl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cb5)
  store %struct.Memory* %call_454cb5, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 454cb8	 Bytes: 6
  %loadMem_454cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cb8 = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cb8)
  store %struct.Memory* %call_454cb8, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 454cbe	 Bytes: 7
  %loadMem_454cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cbe = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cbe)
  store %struct.Memory* %call_454cbe, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %r8d	 RIP: 454cc5	 Bytes: 4
  %loadMem_454cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cc5 = call %struct.Memory* @routine_movl_0x4__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cc5)
  store %struct.Memory* %call_454cc5, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %r8d	 RIP: 454cc9	 Bytes: 4
  %loadMem_454cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cc9 = call %struct.Memory* @routine_shrl__0x18___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cc9)
  store %struct.Memory* %call_454cc9, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %r8d	 RIP: 454ccd	 Bytes: 4
  %loadMem_454ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ccd = call %struct.Memory* @routine_andl__0xf___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ccd)
  store %struct.Memory* %call_454ccd, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454cd1	 Bytes: 5
  %loadMem1_454cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454cd1 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454cd1, i64 -248241, i64 5, i64 5)
  store %struct.Memory* %call1_454cd1, %struct.Memory** %MEMORY

  %loadMem2_454cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454cd1 = load i64, i64* %3
  %call2_454cd1 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454cd1, %struct.Memory* %loadMem2_454cd1)
  store %struct.Memory* %call2_454cd1, %struct.Memory** %MEMORY

  ; Code: .L_454cd6:	 RIP: 454cd6	 Bytes: 0
  br label %block_.L_454cd6
block_.L_454cd6:

  ; Code: movq -0x628(%rbp), %rax	 RIP: 454cd6	 Bytes: 7
  %loadMem_454cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cd6 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cd6)
  store %struct.Memory* %call_454cd6, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454cdd	 Bytes: 3
  %loadMem_454cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cdd = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cdd)
  store %struct.Memory* %call_454cdd, %struct.Memory** %MEMORY

  ; Code: shrl $0x18, %ecx	 RIP: 454ce0	 Bytes: 3
  %loadMem_454ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ce0 = call %struct.Memory* @routine_shrl__0x18___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ce0)
  store %struct.Memory* %call_454ce0, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %ecx	 RIP: 454ce3	 Bytes: 3
  %loadMem_454ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ce3 = call %struct.Memory* @routine_andl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ce3)
  store %struct.Memory* %call_454ce3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 454ce6	 Bytes: 3
  %loadMem_454ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ce6 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ce6)
  store %struct.Memory* %call_454ce6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454ce9	 Bytes: 5
  %loadMem_454ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ce9 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ce9, i64 1704, i64 5)
  store %struct.Memory* %call_454ce9, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454cee:	 RIP: 454cee	 Bytes: 0
block_.L_454cee:

  ; Code: jmpq .L_454cf3	 RIP: 454cee	 Bytes: 5
  %loadMem_454cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cee = call %struct.Memory* @routine_jmpq_.L_454cf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cee, i64 5, i64 5)
  store %struct.Memory* %call_454cee, %struct.Memory** %MEMORY

  br label %block_.L_454cf3

  ; Code: .L_454cf3:	 RIP: 454cf3	 Bytes: 0
block_.L_454cf3:

  ; Code: leaq -0x610(%rbp), %rsi	 RIP: 454cf3	 Bytes: 7
  %loadMem_454cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cf3 = call %struct.Memory* @routine_leaq_MINUS0x610__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cf3)
  store %struct.Memory* %call_454cf3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 454cfa	 Bytes: 3
  %loadMem_454cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454cfa = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454cfa)
  store %struct.Memory* %call_454cfa, %struct.Memory** %MEMORY

  ; Code: callq .ladder_capture	 RIP: 454cfd	 Bytes: 5
  %loadMem1_454cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454cfd = call %struct.Memory* @routine_callq_.ladder_capture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454cfd, i64 1715, i64 5, i64 5)
  store %struct.Memory* %call1_454cfd, %struct.Memory** %MEMORY

  %loadMem2_454cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454cfd = load i64, i64* %3
  %call2_454cfd = call %struct.Memory* @sub_4553b0.ladder_capture(%struct.State* %0, i64  %loadPC_454cfd, %struct.Memory* %loadMem2_454cfd)
  store %struct.Memory* %call2_454cfd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 454d02	 Bytes: 3
  %loadMem_454d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d02 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d02)
  store %struct.Memory* %call_454d02, %struct.Memory** %MEMORY

  ; Code: jne .L_454db5	 RIP: 454d05	 Bytes: 6
  %loadMem_454d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d05 = call %struct.Memory* @routine_jne_.L_454db5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d05, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_454d05, %struct.Memory** %MEMORY

  %loadBr_454d05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454d05 = icmp eq i8 %loadBr_454d05, 1
  br i1 %cmpBr_454d05, label %block_.L_454db5, label %block_454d0b

block_454d0b:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454d0b	 Bytes: 9
  %loadMem_454d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d0b = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d0b)
  store %struct.Memory* %call_454d0b, %struct.Memory** %MEMORY

  ; Code: je .L_454d48	 RIP: 454d14	 Bytes: 6
  %loadMem_454d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d14 = call %struct.Memory* @routine_je_.L_454d48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d14, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_454d14, %struct.Memory** %MEMORY

  %loadBr_454d14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454d14 = icmp eq i8 %loadBr_454d14, 1
  br i1 %cmpBr_454d14, label %block_.L_454d48, label %block_454d1a

block_454d1a:
  ; Code: movl $0x5, %r8d	 RIP: 454d1a	 Bytes: 6
  %loadMem_454d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d1a = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d1a)
  store %struct.Memory* %call_454d1a, %struct.Memory** %MEMORY

  ; Code: movq $0x57f62b, %r9	 RIP: 454d20	 Bytes: 10
  %loadMem_454d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d20 = call %struct.Memory* @routine_movq__0x57f62b___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d20)
  store %struct.Memory* %call_454d20, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454d2a	 Bytes: 7
  %loadMem_454d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d2a = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d2a)
  store %struct.Memory* %call_454d2a, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454d31	 Bytes: 6
  %loadMem_454d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d31 = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d31)
  store %struct.Memory* %call_454d31, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454d37	 Bytes: 6
  %loadMem_454d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d37 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d37)
  store %struct.Memory* %call_454d37, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %ecx	 RIP: 454d3d	 Bytes: 6
  %loadMem_454d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d3d = call %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d3d)
  store %struct.Memory* %call_454d3d, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454d43	 Bytes: 5
  %loadMem1_454d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454d43 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454d43, i64 -248355, i64 5, i64 5)
  store %struct.Memory* %call1_454d43, %struct.Memory** %MEMORY

  %loadMem2_454d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454d43 = load i64, i64* %3
  %call2_454d43 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454d43, %struct.Memory* %loadMem2_454d43)
  store %struct.Memory* %call2_454d43, %struct.Memory** %MEMORY

  ; Code: .L_454d48:	 RIP: 454d48	 Bytes: 0
  br label %block_.L_454d48
block_.L_454d48:

  ; Code: jmpq .L_454d4d	 RIP: 454d48	 Bytes: 5
  %loadMem_454d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d48 = call %struct.Memory* @routine_jmpq_.L_454d4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d48, i64 5, i64 5)
  store %struct.Memory* %call_454d48, %struct.Memory** %MEMORY

  br label %block_.L_454d4d

  ; Code: .L_454d4d:	 RIP: 454d4d	 Bytes: 0
block_.L_454d4d:

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 454d4d	 Bytes: 5
  %loadMem_454d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d4d = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d4d)
  store %struct.Memory* %call_454d4d, %struct.Memory** %MEMORY

  ; Code: je .L_454d64	 RIP: 454d52	 Bytes: 6
  %loadMem_454d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d52 = call %struct.Memory* @routine_je_.L_454d64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d52, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_454d52, %struct.Memory** %MEMORY

  %loadBr_454d52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454d52 = icmp eq i8 %loadBr_454d52, 1
  br i1 %cmpBr_454d52, label %block_.L_454d64, label %block_454d58

block_454d58:
  ; Code: movl -0x610(%rbp), %eax	 RIP: 454d58	 Bytes: 6
  %loadMem_454d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d58 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d58)
  store %struct.Memory* %call_454d58, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 454d5e	 Bytes: 4
  %loadMem_454d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d5e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d5e)
  store %struct.Memory* %call_454d5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 454d62	 Bytes: 2
  %loadMem_454d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d62 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d62)
  store %struct.Memory* %call_454d62, %struct.Memory** %MEMORY

  ; Code: .L_454d64:	 RIP: 454d64	 Bytes: 0
  br label %block_.L_454d64
block_.L_454d64:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 454d64	 Bytes: 8
  %loadMem_454d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d64 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d64)
  store %struct.Memory* %call_454d64, %struct.Memory** %MEMORY

  ; Code: je .L_454da9	 RIP: 454d6c	 Bytes: 6
  %loadMem_454d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d6c = call %struct.Memory* @routine_je_.L_454da9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d6c, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_454d6c, %struct.Memory** %MEMORY

  %loadBr_454d6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454d6c = icmp eq i8 %loadBr_454d6c, 1
  br i1 %cmpBr_454d6c, label %block_.L_454da9, label %block_454d72

block_454d72:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 454d72	 Bytes: 7
  %loadMem_454d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d72 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d72)
  store %struct.Memory* %call_454d72, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454d79	 Bytes: 3
  %loadMem_454d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d79 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d79)
  store %struct.Memory* %call_454d79, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 454d7c	 Bytes: 6
  %loadMem_454d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d7c = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d7c)
  store %struct.Memory* %call_454d7c, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 454d82	 Bytes: 6
  %loadMem_454d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d82 = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d82)
  store %struct.Memory* %call_454d82, %struct.Memory** %MEMORY

  ; Code: orl $0x5000000, %ecx	 RIP: 454d88	 Bytes: 6
  %loadMem_454d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d88 = call %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d88)
  store %struct.Memory* %call_454d88, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %edx	 RIP: 454d8e	 Bytes: 6
  %loadMem_454d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d8e = call %struct.Memory* @routine_movl_MINUS0x610__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d8e)
  store %struct.Memory* %call_454d8e, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %edx	 RIP: 454d94	 Bytes: 6
  %loadMem_454d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d94 = call %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d94)
  store %struct.Memory* %call_454d94, %struct.Memory** %MEMORY

  ; Code: shll $0xa, %edx	 RIP: 454d9a	 Bytes: 3
  %loadMem_454d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d9a = call %struct.Memory* @routine_shll__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d9a)
  store %struct.Memory* %call_454d9a, %struct.Memory** %MEMORY

  ; Code: orl %edx, %ecx	 RIP: 454d9d	 Bytes: 2
  %loadMem_454d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d9d = call %struct.Memory* @routine_orl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d9d)
  store %struct.Memory* %call_454d9d, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 454d9f	 Bytes: 7
  %loadMem_454d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454d9f = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454d9f)
  store %struct.Memory* %call_454d9f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 454da6	 Bytes: 3
  %loadMem_454da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454da6 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454da6)
  store %struct.Memory* %call_454da6, %struct.Memory** %MEMORY

  ; Code: .L_454da9:	 RIP: 454da9	 Bytes: 0
  br label %block_.L_454da9
block_.L_454da9:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 454da9	 Bytes: 7
  %loadMem_454da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454da9 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454da9)
  store %struct.Memory* %call_454da9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454db0	 Bytes: 5
  %loadMem_454db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454db0 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454db0, i64 1505, i64 5)
  store %struct.Memory* %call_454db0, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454db5:	 RIP: 454db5	 Bytes: 0
block_.L_454db5:

  ; Code: leaq -0x610(%rbp), %rsi	 RIP: 454db5	 Bytes: 7
  %loadMem_454db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454db5 = call %struct.Memory* @routine_leaq_MINUS0x610__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454db5)
  store %struct.Memory* %call_454db5, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 454dbc	 Bytes: 3
  %loadMem_454dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dbc = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dbc)
  store %struct.Memory* %call_454dbc, %struct.Memory** %MEMORY

  ; Code: callq .ladder_capture	 RIP: 454dbf	 Bytes: 5
  %loadMem1_454dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454dbf = call %struct.Memory* @routine_callq_.ladder_capture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454dbf, i64 1521, i64 5, i64 5)
  store %struct.Memory* %call1_454dbf, %struct.Memory** %MEMORY

  %loadMem2_454dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454dbf = load i64, i64* %3
  %call2_454dbf = call %struct.Memory* @sub_4553b0.ladder_capture(%struct.State* %0, i64  %loadPC_454dbf, %struct.Memory* %loadMem2_454dbf)
  store %struct.Memory* %call2_454dbf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 454dc4	 Bytes: 3
  %loadMem_454dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dc4 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dc4)
  store %struct.Memory* %call_454dc4, %struct.Memory** %MEMORY

  ; Code: jne .L_454e77	 RIP: 454dc7	 Bytes: 6
  %loadMem_454dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dc7 = call %struct.Memory* @routine_jne_.L_454e77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dc7, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_454dc7, %struct.Memory** %MEMORY

  %loadBr_454dc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454dc7 = icmp eq i8 %loadBr_454dc7, 1
  br i1 %cmpBr_454dc7, label %block_.L_454e77, label %block_454dcd

block_454dcd:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 454dcd	 Bytes: 9
  %loadMem_454dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dcd = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dcd)
  store %struct.Memory* %call_454dcd, %struct.Memory** %MEMORY

  ; Code: je .L_454e0a	 RIP: 454dd6	 Bytes: 6
  %loadMem_454dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dd6 = call %struct.Memory* @routine_je_.L_454e0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dd6, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_454dd6, %struct.Memory** %MEMORY

  %loadBr_454dd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454dd6 = icmp eq i8 %loadBr_454dd6, 1
  br i1 %cmpBr_454dd6, label %block_.L_454e0a, label %block_454ddc

block_454ddc:
  ; Code: movl $0x5, %r8d	 RIP: 454ddc	 Bytes: 6
  %loadMem_454ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ddc = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ddc)
  store %struct.Memory* %call_454ddc, %struct.Memory** %MEMORY

  ; Code: movq $0x57f643, %r9	 RIP: 454de2	 Bytes: 10
  %loadMem_454de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454de2 = call %struct.Memory* @routine_movq__0x57f643___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454de2)
  store %struct.Memory* %call_454de2, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 454dec	 Bytes: 7
  %loadMem_454dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dec = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dec)
  store %struct.Memory* %call_454dec, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 454df3	 Bytes: 6
  %loadMem_454df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454df3 = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454df3)
  store %struct.Memory* %call_454df3, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 454df9	 Bytes: 6
  %loadMem_454df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454df9 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454df9)
  store %struct.Memory* %call_454df9, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %ecx	 RIP: 454dff	 Bytes: 6
  %loadMem_454dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454dff = call %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454dff)
  store %struct.Memory* %call_454dff, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 454e05	 Bytes: 5
  %loadMem1_454e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454e05 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454e05, i64 -248549, i64 5, i64 5)
  store %struct.Memory* %call1_454e05, %struct.Memory** %MEMORY

  %loadMem2_454e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454e05 = load i64, i64* %3
  %call2_454e05 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_454e05, %struct.Memory* %loadMem2_454e05)
  store %struct.Memory* %call2_454e05, %struct.Memory** %MEMORY

  ; Code: .L_454e0a:	 RIP: 454e0a	 Bytes: 0
  br label %block_.L_454e0a
block_.L_454e0a:

  ; Code: jmpq .L_454e0f	 RIP: 454e0a	 Bytes: 5
  %loadMem_454e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e0a = call %struct.Memory* @routine_jmpq_.L_454e0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e0a, i64 5, i64 5)
  store %struct.Memory* %call_454e0a, %struct.Memory** %MEMORY

  br label %block_.L_454e0f

  ; Code: .L_454e0f:	 RIP: 454e0f	 Bytes: 0
block_.L_454e0f:

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 454e0f	 Bytes: 5
  %loadMem_454e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e0f = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e0f)
  store %struct.Memory* %call_454e0f, %struct.Memory** %MEMORY

  ; Code: je .L_454e26	 RIP: 454e14	 Bytes: 6
  %loadMem_454e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e14 = call %struct.Memory* @routine_je_.L_454e26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e14, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_454e14, %struct.Memory** %MEMORY

  %loadBr_454e14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454e14 = icmp eq i8 %loadBr_454e14, 1
  br i1 %cmpBr_454e14, label %block_.L_454e26, label %block_454e1a

block_454e1a:
  ; Code: movl -0x610(%rbp), %eax	 RIP: 454e1a	 Bytes: 6
  %loadMem_454e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e1a = call %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e1a)
  store %struct.Memory* %call_454e1a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 454e20	 Bytes: 4
  %loadMem_454e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e20 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e20)
  store %struct.Memory* %call_454e20, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 454e24	 Bytes: 2
  %loadMem_454e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e24 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e24)
  store %struct.Memory* %call_454e24, %struct.Memory** %MEMORY

  ; Code: .L_454e26:	 RIP: 454e26	 Bytes: 0
  br label %block_.L_454e26
block_.L_454e26:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 454e26	 Bytes: 8
  %loadMem_454e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e26 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e26)
  store %struct.Memory* %call_454e26, %struct.Memory** %MEMORY

  ; Code: je .L_454e6b	 RIP: 454e2e	 Bytes: 6
  %loadMem_454e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e2e = call %struct.Memory* @routine_je_.L_454e6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e2e, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_454e2e, %struct.Memory** %MEMORY

  %loadBr_454e2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454e2e = icmp eq i8 %loadBr_454e2e, 1
  br i1 %cmpBr_454e2e, label %block_.L_454e6b, label %block_454e34

block_454e34:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 454e34	 Bytes: 7
  %loadMem_454e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e34 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e34)
  store %struct.Memory* %call_454e34, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454e3b	 Bytes: 3
  %loadMem_454e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e3b = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e3b)
  store %struct.Memory* %call_454e3b, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 454e3e	 Bytes: 6
  %loadMem_454e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e3e = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e3e)
  store %struct.Memory* %call_454e3e, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 454e44	 Bytes: 6
  %loadMem_454e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e44 = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e44)
  store %struct.Memory* %call_454e44, %struct.Memory** %MEMORY

  ; Code: orl $0x5000000, %ecx	 RIP: 454e4a	 Bytes: 6
  %loadMem_454e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e4a = call %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e4a)
  store %struct.Memory* %call_454e4a, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %edx	 RIP: 454e50	 Bytes: 6
  %loadMem_454e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e50 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e50)
  store %struct.Memory* %call_454e50, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %edx	 RIP: 454e56	 Bytes: 6
  %loadMem_454e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e56 = call %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e56)
  store %struct.Memory* %call_454e56, %struct.Memory** %MEMORY

  ; Code: shll $0xa, %edx	 RIP: 454e5c	 Bytes: 3
  %loadMem_454e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e5c = call %struct.Memory* @routine_shll__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e5c)
  store %struct.Memory* %call_454e5c, %struct.Memory** %MEMORY

  ; Code: orl %edx, %ecx	 RIP: 454e5f	 Bytes: 2
  %loadMem_454e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e5f = call %struct.Memory* @routine_orl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e5f)
  store %struct.Memory* %call_454e5f, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 454e61	 Bytes: 7
  %loadMem_454e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e61 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e61)
  store %struct.Memory* %call_454e61, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 454e68	 Bytes: 3
  %loadMem_454e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e68 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e68)
  store %struct.Memory* %call_454e68, %struct.Memory** %MEMORY

  ; Code: .L_454e6b:	 RIP: 454e6b	 Bytes: 0
  br label %block_.L_454e6b
block_.L_454e6b:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 454e6b	 Bytes: 7
  %loadMem_454e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e6b = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e6b)
  store %struct.Memory* %call_454e6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 454e72	 Bytes: 5
  %loadMem_454e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e72 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e72, i64 1311, i64 5)
  store %struct.Memory* %call_454e72, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_454e77:	 RIP: 454e77	 Bytes: 0
block_.L_454e77:

  ; Code: leaq -0x608(%rbp), %r8	 RIP: 454e77	 Bytes: 7
  %loadMem_454e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e77 = call %struct.Memory* @routine_leaq_MINUS0x608__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e77)
  store %struct.Memory* %call_454e77, %struct.Memory** %MEMORY

  ; Code: leaq -0x600(%rbp), %rcx	 RIP: 454e7e	 Bytes: 7
  %loadMem_454e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e7e = call %struct.Memory* @routine_leaq_MINUS0x600__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e7e)
  store %struct.Memory* %call_454e7e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 454e85	 Bytes: 3
  %loadMem_454e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e85 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e85)
  store %struct.Memory* %call_454e85, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 454e88	 Bytes: 3
  %loadMem_454e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e88 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e88)
  store %struct.Memory* %call_454e88, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edx	 RIP: 454e8b	 Bytes: 3
  %loadMem_454e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e8b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e8b)
  store %struct.Memory* %call_454e8b, %struct.Memory** %MEMORY

  ; Code: callq .find_connection_moves	 RIP: 454e8e	 Bytes: 5
  %loadMem1_454e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454e8e = call %struct.Memory* @routine_callq_.find_connection_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454e8e, i64 -6734, i64 5, i64 5)
  store %struct.Memory* %call1_454e8e, %struct.Memory** %MEMORY

  %loadMem2_454e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454e8e = load i64, i64* %3
  %call2_454e8e = call %struct.Memory* @sub_453440.find_connection_moves(%struct.State* %0, i64  %loadPC_454e8e, %struct.Memory* %loadMem2_454e8e)
  store %struct.Memory* %call2_454e8e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x604(%rbp)	 RIP: 454e93	 Bytes: 6
  %loadMem_454e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e93 = call %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e93)
  store %struct.Memory* %call_454e93, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x60c(%rbp)	 RIP: 454e99	 Bytes: 10
  %loadMem_454e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454e99 = call %struct.Memory* @routine_movl__0x0__MINUS0x60c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454e99)
  store %struct.Memory* %call_454e99, %struct.Memory** %MEMORY

  ; Code: .L_454ea3:	 RIP: 454ea3	 Bytes: 0
  br label %block_.L_454ea3
block_.L_454ea3:

  ; Code: movl -0x60c(%rbp), %eax	 RIP: 454ea3	 Bytes: 6
  %loadMem_454ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ea3 = call %struct.Memory* @routine_movl_MINUS0x60c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ea3)
  store %struct.Memory* %call_454ea3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x604(%rbp), %eax	 RIP: 454ea9	 Bytes: 6
  %loadMem_454ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ea9 = call %struct.Memory* @routine_cmpl_MINUS0x604__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ea9)
  store %struct.Memory* %call_454ea9, %struct.Memory** %MEMORY

  ; Code: jge .L_455176	 RIP: 454eaf	 Bytes: 6
  %loadMem_454eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454eaf = call %struct.Memory* @routine_jge_.L_455176(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454eaf, i8* %BRANCH_TAKEN, i64 711, i64 6, i64 6)
  store %struct.Memory* %call_454eaf, %struct.Memory** %MEMORY

  %loadBr_454eaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454eaf = icmp eq i8 %loadBr_454eaf, 1
  br i1 %cmpBr_454eaf, label %block_.L_455176, label %block_454eb5

block_454eb5:
  ; Code: xorl %eax, %eax	 RIP: 454eb5	 Bytes: 2
  %loadMem_454eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454eb5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454eb5)
  store %struct.Memory* %call_454eb5, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 454eb7	 Bytes: 2
  %loadMem_454eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454eb7 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454eb7)
  store %struct.Memory* %call_454eb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x60c(%rbp), %rdx	 RIP: 454eb9	 Bytes: 7
  %loadMem_454eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454eb9 = call %struct.Memory* @routine_movslq_MINUS0x60c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454eb9)
  store %struct.Memory* %call_454eb9, %struct.Memory** %MEMORY

  ; Code: movl -0x600(%rbp,%rdx,4), %eax	 RIP: 454ec0	 Bytes: 7
  %loadMem_454ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ec0 = call %struct.Memory* @routine_movl_MINUS0x600__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ec0)
  store %struct.Memory* %call_454ec0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x610(%rbp)	 RIP: 454ec7	 Bytes: 6
  %loadMem_454ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ec7 = call %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ec7)
  store %struct.Memory* %call_454ec7, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %edi	 RIP: 454ecd	 Bytes: 6
  %loadMem_454ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ecd = call %struct.Memory* @routine_movl_MINUS0x610__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ecd)
  store %struct.Memory* %call_454ecd, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %esi	 RIP: 454ed3	 Bytes: 3
  %loadMem_454ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ed3 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ed3)
  store %struct.Memory* %call_454ed3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 454ed6	 Bytes: 3
  %loadMem_454ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ed6 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ed6)
  store %struct.Memory* %call_454ed6, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r8d	 RIP: 454ed9	 Bytes: 4
  %loadMem_454ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ed9 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ed9)
  store %struct.Memory* %call_454ed9, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %r9d	 RIP: 454edd	 Bytes: 4
  %loadMem_454edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454edd = call %struct.Memory* @routine_movl_MINUS0x48__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454edd)
  store %struct.Memory* %call_454edd, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 454ee1	 Bytes: 8
  %loadMem_454ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ee1 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ee1)
  store %struct.Memory* %call_454ee1, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 454ee9	 Bytes: 8
  %loadMem_454ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ee9 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ee9)
  store %struct.Memory* %call_454ee9, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x64c(%rbp)	 RIP: 454ef1	 Bytes: 7
  %loadMem_454ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ef1 = call %struct.Memory* @routine_movl__r9d__MINUS0x64c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ef1)
  store %struct.Memory* %call_454ef1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x650(%rbp)	 RIP: 454ef8	 Bytes: 6
  %loadMem_454ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ef8 = call %struct.Memory* @routine_movl__edi__MINUS0x650__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ef8)
  store %struct.Memory* %call_454ef8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x654(%rbp)	 RIP: 454efe	 Bytes: 6
  %loadMem_454efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454efe = call %struct.Memory* @routine_movl__esi__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454efe)
  store %struct.Memory* %call_454efe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x658(%rbp)	 RIP: 454f04	 Bytes: 6
  %loadMem_454f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f04 = call %struct.Memory* @routine_movl__eax__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f04)
  store %struct.Memory* %call_454f04, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x65c(%rbp)	 RIP: 454f0a	 Bytes: 7
  %loadMem_454f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f0a = call %struct.Memory* @routine_movl__r8d__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f0a)
  store %struct.Memory* %call_454f0a, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x65d(%rbp)	 RIP: 454f11	 Bytes: 6
  %loadMem_454f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f11 = call %struct.Memory* @routine_movb__cl__MINUS0x65d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f11)
  store %struct.Memory* %call_454f11, %struct.Memory** %MEMORY

  ; Code: jg .L_454f2d	 RIP: 454f17	 Bytes: 6
  %loadMem_454f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f17 = call %struct.Memory* @routine_jg_.L_454f2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f17, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_454f17, %struct.Memory** %MEMORY

  %loadBr_454f17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454f17 = icmp eq i8 %loadBr_454f17, 1
  br i1 %cmpBr_454f17, label %block_.L_454f2d, label %block_454f1d

block_454f1d:
  ; Code: cmpl $0x0, -0x618(%rbp)	 RIP: 454f1d	 Bytes: 7
  %loadMem_454f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f1d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f1d)
  store %struct.Memory* %call_454f1d, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 454f24	 Bytes: 3
  %loadMem_454f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f24 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f24)
  store %struct.Memory* %call_454f24, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x65d(%rbp)	 RIP: 454f27	 Bytes: 6
  %loadMem_454f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f27 = call %struct.Memory* @routine_movb__al__MINUS0x65d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f27)
  store %struct.Memory* %call_454f27, %struct.Memory** %MEMORY

  ; Code: .L_454f2d:	 RIP: 454f2d	 Bytes: 0
  br label %block_.L_454f2d
block_.L_454f2d:

  ; Code: movb -0x65d(%rbp), %al	 RIP: 454f2d	 Bytes: 6
  %loadMem_454f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f2d = call %struct.Memory* @routine_movb_MINUS0x65d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f2d)
  store %struct.Memory* %call_454f2d, %struct.Memory** %MEMORY

  ; Code: movq $0x57f615, %rdx	 RIP: 454f33	 Bytes: 10
  %loadMem_454f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f33 = call %struct.Memory* @routine_movq__0x57f615___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f33)
  store %struct.Memory* %call_454f33, %struct.Memory** %MEMORY

  ; Code: leaq -0x63c(%rbp), %rcx	 RIP: 454f3d	 Bytes: 7
  %loadMem_454f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f3d = call %struct.Memory* @routine_leaq_MINUS0x63c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f3d)
  store %struct.Memory* %call_454f3d, %struct.Memory** %MEMORY

  ; Code: leaq -0x640(%rbp), %rsi	 RIP: 454f44	 Bytes: 7
  %loadMem_454f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f44 = call %struct.Memory* @routine_leaq_MINUS0x640__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f44)
  store %struct.Memory* %call_454f44, %struct.Memory** %MEMORY

  ; Code: leaq -0x644(%rbp), %rdi	 RIP: 454f4b	 Bytes: 7
  %loadMem_454f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f4b = call %struct.Memory* @routine_leaq_MINUS0x644__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f4b)
  store %struct.Memory* %call_454f4b, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 454f52	 Bytes: 2
  %loadMem_454f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f52 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f52)
  store %struct.Memory* %call_454f52, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 454f54	 Bytes: 4
  %loadMem_454f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f54 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f54)
  store %struct.Memory* %call_454f54, %struct.Memory** %MEMORY

  ; Code: movl -0x650(%rbp), %r9d	 RIP: 454f58	 Bytes: 7
  %loadMem_454f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f58 = call %struct.Memory* @routine_movl_MINUS0x650__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f58)
  store %struct.Memory* %call_454f58, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x668(%rbp)	 RIP: 454f5f	 Bytes: 7
  %loadMem_454f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f5f = call %struct.Memory* @routine_movq__rdi__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f5f)
  store %struct.Memory* %call_454f5f, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 454f66	 Bytes: 3
  %loadMem_454f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f66 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f66)
  store %struct.Memory* %call_454f66, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %r10d	 RIP: 454f69	 Bytes: 7
  %loadMem_454f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f69 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f69)
  store %struct.Memory* %call_454f69, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x670(%rbp)	 RIP: 454f70	 Bytes: 7
  %loadMem_454f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f70 = call %struct.Memory* @routine_movq__rsi__MINUS0x670__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f70)
  store %struct.Memory* %call_454f70, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 454f77	 Bytes: 3
  %loadMem_454f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f77 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f77)
  store %struct.Memory* %call_454f77, %struct.Memory** %MEMORY

  ; Code: movl -0x658(%rbp), %r11d	 RIP: 454f7a	 Bytes: 7
  %loadMem_454f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f7a = call %struct.Memory* @routine_movl_MINUS0x658__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f7a)
  store %struct.Memory* %call_454f7a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x678(%rbp)	 RIP: 454f81	 Bytes: 7
  %loadMem_454f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f81 = call %struct.Memory* @routine_movq__rcx__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f81)
  store %struct.Memory* %call_454f81, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 454f88	 Bytes: 3
  %loadMem_454f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f88 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f88)
  store %struct.Memory* %call_454f88, %struct.Memory** %MEMORY

  ; Code: movl -0x65c(%rbp), %ebx	 RIP: 454f8b	 Bytes: 6
  %loadMem_454f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f8b = call %struct.Memory* @routine_movl_MINUS0x65c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f8b)
  store %struct.Memory* %call_454f8b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x67c(%rbp)	 RIP: 454f91	 Bytes: 7
  %loadMem_454f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f91 = call %struct.Memory* @routine_movl__r8d__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f91)
  store %struct.Memory* %call_454f91, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 454f98	 Bytes: 3
  %loadMem_454f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f98 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f98)
  store %struct.Memory* %call_454f98, %struct.Memory** %MEMORY

  ; Code: movl -0x64c(%rbp), %r9d	 RIP: 454f9b	 Bytes: 7
  %loadMem_454f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454f9b = call %struct.Memory* @routine_movl_MINUS0x64c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454f9b)
  store %struct.Memory* %call_454f9b, %struct.Memory** %MEMORY

  ; Code: movq -0x678(%rbp), %r14	 RIP: 454fa2	 Bytes: 7
  %loadMem_454fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fa2 = call %struct.Memory* @routine_movq_MINUS0x678__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fa2)
  store %struct.Memory* %call_454fa2, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 454fa9	 Bytes: 4
  %loadMem_454fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fa9 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fa9)
  store %struct.Memory* %call_454fa9, %struct.Memory** %MEMORY

  ; Code: movq -0x670(%rbp), %r15	 RIP: 454fad	 Bytes: 7
  %loadMem_454fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fad = call %struct.Memory* @routine_movq_MINUS0x670__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fad)
  store %struct.Memory* %call_454fad, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 454fb4	 Bytes: 5
  %loadMem_454fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fb4 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fb4)
  store %struct.Memory* %call_454fb4, %struct.Memory** %MEMORY

  ; Code: movq -0x668(%rbp), %r12	 RIP: 454fb9	 Bytes: 7
  %loadMem_454fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fb9 = call %struct.Memory* @routine_movq_MINUS0x668__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fb9)
  store %struct.Memory* %call_454fb9, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 454fc0	 Bytes: 5
  %loadMem_454fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fc0 = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fc0)
  store %struct.Memory* %call_454fc0, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %r13d	 RIP: 454fc5	 Bytes: 7
  %loadMem_454fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fc5 = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fc5)
  store %struct.Memory* %call_454fc5, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 454fcc	 Bytes: 5
  %loadMem_454fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fcc = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fcc)
  store %struct.Memory* %call_454fcc, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 454fd1	 Bytes: 5
  %loadMem1_454fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_454fd1 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_454fd1, i64 -287201, i64 5, i64 5)
  store %struct.Memory* %call1_454fd1, %struct.Memory** %MEMORY

  %loadMem2_454fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_454fd1 = load i64, i64* %3
  %call2_454fd1 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_454fd1, %struct.Memory* %loadMem2_454fd1)
  store %struct.Memory* %call2_454fd1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 454fd6	 Bytes: 3
  %loadMem_454fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fd6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fd6)
  store %struct.Memory* %call_454fd6, %struct.Memory** %MEMORY

  ; Code: je .L_45515d	 RIP: 454fd9	 Bytes: 6
  %loadMem_454fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fd9 = call %struct.Memory* @routine_je_.L_45515d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fd9, i8* %BRANCH_TAKEN, i64 388, i64 6, i64 6)
  store %struct.Memory* %call_454fd9, %struct.Memory** %MEMORY

  %loadBr_454fd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454fd9 = icmp eq i8 %loadBr_454fd9, 1
  br i1 %cmpBr_454fd9, label %block_.L_45515d, label %block_454fdf

block_454fdf:
  ; Code: cmpl $0x0, -0x644(%rbp)	 RIP: 454fdf	 Bytes: 7
  %loadMem_454fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fdf = call %struct.Memory* @routine_cmpl__0x0__MINUS0x644__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fdf)
  store %struct.Memory* %call_454fdf, %struct.Memory** %MEMORY

  ; Code: jne .L_455114	 RIP: 454fe6	 Bytes: 6
  %loadMem_454fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fe6 = call %struct.Memory* @routine_jne_.L_455114(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fe6, i8* %BRANCH_TAKEN, i64 302, i64 6, i64 6)
  store %struct.Memory* %call_454fe6, %struct.Memory** %MEMORY

  %loadBr_454fe6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454fe6 = icmp eq i8 %loadBr_454fe6, 1
  br i1 %cmpBr_454fe6, label %block_.L_455114, label %block_454fec

block_454fec:
  ; Code: xorl %eax, %eax	 RIP: 454fec	 Bytes: 2
  %loadMem_454fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fec = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fec)
  store %struct.Memory* %call_454fec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 454fee	 Bytes: 2
  %loadMem_454fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454fee = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454fee)
  store %struct.Memory* %call_454fee, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 454ff0	 Bytes: 3
  %loadMem_454ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ff0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ff0)
  store %struct.Memory* %call_454ff0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 454ff3	 Bytes: 3
  %loadMem_454ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ff3 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ff3)
  store %struct.Memory* %call_454ff3, %struct.Memory** %MEMORY

  ; Code: movl -0x63c(%rbp), %ecx	 RIP: 454ff6	 Bytes: 6
  %loadMem_454ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ff6 = call %struct.Memory* @routine_movl_MINUS0x63c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ff6)
  store %struct.Memory* %call_454ff6, %struct.Memory** %MEMORY

  ; Code: movl -0x640(%rbp), %r8d	 RIP: 454ffc	 Bytes: 7
  %loadMem_454ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454ffc = call %struct.Memory* @routine_movl_MINUS0x640__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454ffc)
  store %struct.Memory* %call_454ffc, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r9d	 RIP: 455003	 Bytes: 4
  %loadMem_455003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455003 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455003)
  store %struct.Memory* %call_455003, %struct.Memory** %MEMORY

  ; Code: callq .recursive_connect2	 RIP: 455007	 Bytes: 5
  %loadMem1_455007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_455007 = call %struct.Memory* @routine_callq_.recursive_connect2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_455007, i64 -9751, i64 5, i64 5)
  store %struct.Memory* %call1_455007, %struct.Memory** %MEMORY

  %loadMem2_455007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455007 = load i64, i64* %3
  %call2_455007 = call %struct.Memory* @sub_4529f0.recursive_connect2(%struct.State* %0, i64  %loadPC_455007, %struct.Memory* %loadMem2_455007)
  store %struct.Memory* %call2_455007, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x648(%rbp)	 RIP: 45500c	 Bytes: 6
  %loadMem_45500c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45500c = call %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45500c)
  store %struct.Memory* %call_45500c, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 455012	 Bytes: 5
  %loadMem1_455012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_455012 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_455012, i64 -291506, i64 5, i64 5)
  store %struct.Memory* %call1_455012, %struct.Memory** %MEMORY

  %loadMem2_455012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455012 = load i64, i64* %3
  %call2_455012 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_455012, %struct.Memory* %loadMem2_455012)
  store %struct.Memory* %call2_455012, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x648(%rbp)	 RIP: 455017	 Bytes: 7
  %loadMem_455017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455017 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x648__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455017)
  store %struct.Memory* %call_455017, %struct.Memory** %MEMORY

  ; Code: jne .L_4550ce	 RIP: 45501e	 Bytes: 6
  %loadMem_45501e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45501e = call %struct.Memory* @routine_jne_.L_4550ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45501e, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_45501e, %struct.Memory** %MEMORY

  %loadBr_45501e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45501e = icmp eq i8 %loadBr_45501e, 1
  br i1 %cmpBr_45501e, label %block_.L_4550ce, label %block_455024

block_455024:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 455024	 Bytes: 9
  %loadMem_455024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455024 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455024)
  store %struct.Memory* %call_455024, %struct.Memory** %MEMORY

  ; Code: je .L_455061	 RIP: 45502d	 Bytes: 6
  %loadMem_45502d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45502d = call %struct.Memory* @routine_je_.L_455061(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45502d, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_45502d, %struct.Memory** %MEMORY

  %loadBr_45502d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45502d = icmp eq i8 %loadBr_45502d, 1
  br i1 %cmpBr_45502d, label %block_.L_455061, label %block_455033

block_455033:
  ; Code: movl $0x5, %r8d	 RIP: 455033	 Bytes: 6
  %loadMem_455033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455033 = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455033)
  store %struct.Memory* %call_455033, %struct.Memory** %MEMORY

  ; Code: movq $0x57f65c, %r9	 RIP: 455039	 Bytes: 10
  %loadMem_455039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455039 = call %struct.Memory* @routine_movq__0x57f65c___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455039)
  store %struct.Memory* %call_455039, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 455043	 Bytes: 7
  %loadMem_455043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455043 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455043)
  store %struct.Memory* %call_455043, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 45504a	 Bytes: 6
  %loadMem_45504a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45504a = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45504a)
  store %struct.Memory* %call_45504a, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 455050	 Bytes: 6
  %loadMem_455050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455050 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455050)
  store %struct.Memory* %call_455050, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %ecx	 RIP: 455056	 Bytes: 6
  %loadMem_455056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455056 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455056)
  store %struct.Memory* %call_455056, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 45505c	 Bytes: 5
  %loadMem1_45505c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45505c = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45505c, i64 -249148, i64 5, i64 5)
  store %struct.Memory* %call1_45505c, %struct.Memory** %MEMORY

  %loadMem2_45505c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45505c = load i64, i64* %3
  %call2_45505c = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_45505c, %struct.Memory* %loadMem2_45505c)
  store %struct.Memory* %call2_45505c, %struct.Memory** %MEMORY

  ; Code: .L_455061:	 RIP: 455061	 Bytes: 0
  br label %block_.L_455061
block_.L_455061:

  ; Code: jmpq .L_455066	 RIP: 455061	 Bytes: 5
  %loadMem_455061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455061 = call %struct.Memory* @routine_jmpq_.L_455066(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455061, i64 5, i64 5)
  store %struct.Memory* %call_455061, %struct.Memory** %MEMORY

  br label %block_.L_455066

  ; Code: .L_455066:	 RIP: 455066	 Bytes: 0
block_.L_455066:

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 455066	 Bytes: 5
  %loadMem_455066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455066 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455066)
  store %struct.Memory* %call_455066, %struct.Memory** %MEMORY

  ; Code: je .L_45507d	 RIP: 45506b	 Bytes: 6
  %loadMem_45506b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45506b = call %struct.Memory* @routine_je_.L_45507d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45506b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_45506b, %struct.Memory** %MEMORY

  %loadBr_45506b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45506b = icmp eq i8 %loadBr_45506b, 1
  br i1 %cmpBr_45506b, label %block_.L_45507d, label %block_455071

block_455071:
  ; Code: movl -0x610(%rbp), %eax	 RIP: 455071	 Bytes: 6
  %loadMem_455071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455071 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455071)
  store %struct.Memory* %call_455071, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 455077	 Bytes: 4
  %loadMem_455077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455077 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455077)
  store %struct.Memory* %call_455077, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45507b	 Bytes: 2
  %loadMem_45507b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45507b = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45507b)
  store %struct.Memory* %call_45507b, %struct.Memory** %MEMORY

  ; Code: .L_45507d:	 RIP: 45507d	 Bytes: 0
  br label %block_.L_45507d
block_.L_45507d:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 45507d	 Bytes: 8
  %loadMem_45507d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45507d = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45507d)
  store %struct.Memory* %call_45507d, %struct.Memory** %MEMORY

  ; Code: je .L_4550c2	 RIP: 455085	 Bytes: 6
  %loadMem_455085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455085 = call %struct.Memory* @routine_je_.L_4550c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455085, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_455085, %struct.Memory** %MEMORY

  %loadBr_455085 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455085 = icmp eq i8 %loadBr_455085, 1
  br i1 %cmpBr_455085, label %block_.L_4550c2, label %block_45508b

block_45508b:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 45508b	 Bytes: 7
  %loadMem_45508b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45508b = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45508b)
  store %struct.Memory* %call_45508b, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 455092	 Bytes: 3
  %loadMem_455092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455092 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455092)
  store %struct.Memory* %call_455092, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 455095	 Bytes: 6
  %loadMem_455095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455095 = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455095)
  store %struct.Memory* %call_455095, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 45509b	 Bytes: 6
  %loadMem_45509b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45509b = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45509b)
  store %struct.Memory* %call_45509b, %struct.Memory** %MEMORY

  ; Code: orl $0x5000000, %ecx	 RIP: 4550a1	 Bytes: 6
  %loadMem_4550a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550a1 = call %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550a1)
  store %struct.Memory* %call_4550a1, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %edx	 RIP: 4550a7	 Bytes: 6
  %loadMem_4550a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550a7 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550a7)
  store %struct.Memory* %call_4550a7, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %edx	 RIP: 4550ad	 Bytes: 6
  %loadMem_4550ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550ad = call %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550ad)
  store %struct.Memory* %call_4550ad, %struct.Memory** %MEMORY

  ; Code: shll $0xa, %edx	 RIP: 4550b3	 Bytes: 3
  %loadMem_4550b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550b3 = call %struct.Memory* @routine_shll__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550b3)
  store %struct.Memory* %call_4550b3, %struct.Memory** %MEMORY

  ; Code: orl %edx, %ecx	 RIP: 4550b6	 Bytes: 2
  %loadMem_4550b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550b6 = call %struct.Memory* @routine_orl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550b6)
  store %struct.Memory* %call_4550b6, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 4550b8	 Bytes: 7
  %loadMem_4550b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550b8 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550b8)
  store %struct.Memory* %call_4550b8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 4550bf	 Bytes: 3
  %loadMem_4550bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550bf = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550bf)
  store %struct.Memory* %call_4550bf, %struct.Memory** %MEMORY

  ; Code: .L_4550c2:	 RIP: 4550c2	 Bytes: 0
  br label %block_.L_4550c2
block_.L_4550c2:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 4550c2	 Bytes: 7
  %loadMem_4550c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550c2 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550c2)
  store %struct.Memory* %call_4550c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 4550c9	 Bytes: 5
  %loadMem_4550c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550c9 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550c9, i64 712, i64 5)
  store %struct.Memory* %call_4550c9, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_4550ce:	 RIP: 4550ce	 Bytes: 0
block_.L_4550ce:

  ; Code: cmpl $0x0, -0x648(%rbp)	 RIP: 4550ce	 Bytes: 7
  %loadMem_4550ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550ce = call %struct.Memory* @routine_cmpl__0x0__MINUS0x648__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550ce)
  store %struct.Memory* %call_4550ce, %struct.Memory** %MEMORY

  ; Code: je .L_45510f	 RIP: 4550d5	 Bytes: 6
  %loadMem_4550d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550d5 = call %struct.Memory* @routine_je_.L_45510f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550d5, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4550d5, %struct.Memory** %MEMORY

  %loadBr_4550d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4550d5 = icmp eq i8 %loadBr_4550d5, 1
  br i1 %cmpBr_4550d5, label %block_.L_45510f, label %block_4550db

block_4550db:
  ; Code: movl $0x5, %eax	 RIP: 4550db	 Bytes: 5
  %loadMem_4550db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550db = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550db)
  store %struct.Memory* %call_4550db, %struct.Memory** %MEMORY

  ; Code: subl -0x648(%rbp), %eax	 RIP: 4550e0	 Bytes: 6
  %loadMem_4550e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550e0 = call %struct.Memory* @routine_subl_MINUS0x648__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550e0)
  store %struct.Memory* %call_4550e0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x618(%rbp), %eax	 RIP: 4550e6	 Bytes: 6
  %loadMem_4550e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550e6 = call %struct.Memory* @routine_cmpl_MINUS0x618__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550e6)
  store %struct.Memory* %call_4550e6, %struct.Memory** %MEMORY

  ; Code: jle .L_45510f	 RIP: 4550ec	 Bytes: 6
  %loadMem_4550ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550ec = call %struct.Memory* @routine_jle_.L_45510f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550ec, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4550ec, %struct.Memory** %MEMORY

  %loadBr_4550ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4550ec = icmp eq i8 %loadBr_4550ec, 1
  br i1 %cmpBr_4550ec, label %block_.L_45510f, label %block_4550f2

block_4550f2:
  ; Code: movl $0x5, %eax	 RIP: 4550f2	 Bytes: 5
  %loadMem_4550f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550f2 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550f2)
  store %struct.Memory* %call_4550f2, %struct.Memory** %MEMORY

  ; Code: movl -0x610(%rbp), %ecx	 RIP: 4550f7	 Bytes: 6
  %loadMem_4550f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550f7 = call %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550f7)
  store %struct.Memory* %call_4550f7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x614(%rbp)	 RIP: 4550fd	 Bytes: 6
  %loadMem_4550fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4550fd = call %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4550fd)
  store %struct.Memory* %call_4550fd, %struct.Memory** %MEMORY

  ; Code: subl -0x648(%rbp), %eax	 RIP: 455103	 Bytes: 6
  %loadMem_455103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455103 = call %struct.Memory* @routine_subl_MINUS0x648__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455103)
  store %struct.Memory* %call_455103, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x618(%rbp)	 RIP: 455109	 Bytes: 6
  %loadMem_455109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455109 = call %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455109)
  store %struct.Memory* %call_455109, %struct.Memory** %MEMORY

  ; Code: .L_45510f:	 RIP: 45510f	 Bytes: 0
  br label %block_.L_45510f
block_.L_45510f:

  ; Code: jmpq .L_455158	 RIP: 45510f	 Bytes: 5
  %loadMem_45510f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45510f = call %struct.Memory* @routine_jmpq_.L_455158(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45510f, i64 73, i64 5)
  store %struct.Memory* %call_45510f, %struct.Memory** %MEMORY

  br label %block_.L_455158

  ; Code: .L_455114:	 RIP: 455114	 Bytes: 0
block_.L_455114:

  ; Code: xorl %eax, %eax	 RIP: 455114	 Bytes: 2
  %loadMem_455114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455114 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455114)
  store %struct.Memory* %call_455114, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 455116	 Bytes: 2
  %loadMem_455116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455116 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455116)
  store %struct.Memory* %call_455116, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 455118	 Bytes: 3
  %loadMem_455118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455118 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455118)
  store %struct.Memory* %call_455118, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 45511b	 Bytes: 3
  %loadMem_45511b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45511b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45511b)
  store %struct.Memory* %call_45511b, %struct.Memory** %MEMORY

  ; Code: movl -0x63c(%rbp), %ecx	 RIP: 45511e	 Bytes: 6
  %loadMem_45511e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45511e = call %struct.Memory* @routine_movl_MINUS0x63c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45511e)
  store %struct.Memory* %call_45511e, %struct.Memory** %MEMORY

  ; Code: movl -0x640(%rbp), %r8d	 RIP: 455124	 Bytes: 7
  %loadMem_455124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455124 = call %struct.Memory* @routine_movl_MINUS0x640__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455124)
  store %struct.Memory* %call_455124, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r9d	 RIP: 45512b	 Bytes: 4
  %loadMem_45512b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45512b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45512b)
  store %struct.Memory* %call_45512b, %struct.Memory** %MEMORY

  ; Code: callq .recursive_connect2	 RIP: 45512f	 Bytes: 5
  %loadMem1_45512f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45512f = call %struct.Memory* @routine_callq_.recursive_connect2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45512f, i64 -10047, i64 5, i64 5)
  store %struct.Memory* %call1_45512f, %struct.Memory** %MEMORY

  %loadMem2_45512f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45512f = load i64, i64* %3
  %call2_45512f = call %struct.Memory* @sub_4529f0.recursive_connect2(%struct.State* %0, i64  %loadPC_45512f, %struct.Memory* %loadMem2_45512f)
  store %struct.Memory* %call2_45512f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 455134	 Bytes: 3
  %loadMem_455134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455134 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455134)
  store %struct.Memory* %call_455134, %struct.Memory** %MEMORY

  ; Code: je .L_455153	 RIP: 455137	 Bytes: 6
  %loadMem_455137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455137 = call %struct.Memory* @routine_je_.L_455153(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455137, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_455137, %struct.Memory** %MEMORY

  %loadBr_455137 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455137 = icmp eq i8 %loadBr_455137, 1
  br i1 %cmpBr_455137, label %block_.L_455153, label %block_45513d

block_45513d:
  ; Code: movl -0x610(%rbp), %eax	 RIP: 45513d	 Bytes: 6
  %loadMem_45513d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45513d = call %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45513d)
  store %struct.Memory* %call_45513d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x614(%rbp)	 RIP: 455143	 Bytes: 6
  %loadMem_455143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455143 = call %struct.Memory* @routine_movl__eax__MINUS0x614__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455143)
  store %struct.Memory* %call_455143, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x618(%rbp)	 RIP: 455149	 Bytes: 10
  %loadMem_455149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455149 = call %struct.Memory* @routine_movl__0x1__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455149)
  store %struct.Memory* %call_455149, %struct.Memory** %MEMORY

  ; Code: .L_455153:	 RIP: 455153	 Bytes: 0
  br label %block_.L_455153
block_.L_455153:

  ; Code: callq .popgo	 RIP: 455153	 Bytes: 5
  %loadMem1_455153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_455153 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_455153, i64 -291827, i64 5, i64 5)
  store %struct.Memory* %call1_455153, %struct.Memory** %MEMORY

  %loadMem2_455153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455153 = load i64, i64* %3
  %call2_455153 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_455153, %struct.Memory* %loadMem2_455153)
  store %struct.Memory* %call2_455153, %struct.Memory** %MEMORY

  ; Code: .L_455158:	 RIP: 455158	 Bytes: 0
  br label %block_.L_455158
block_.L_455158:

  ; Code: jmpq .L_45515d	 RIP: 455158	 Bytes: 5
  %loadMem_455158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455158 = call %struct.Memory* @routine_jmpq_.L_45515d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455158, i64 5, i64 5)
  store %struct.Memory* %call_455158, %struct.Memory** %MEMORY

  br label %block_.L_45515d

  ; Code: .L_45515d:	 RIP: 45515d	 Bytes: 0
block_.L_45515d:

  ; Code: jmpq .L_455162	 RIP: 45515d	 Bytes: 5
  %loadMem_45515d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45515d = call %struct.Memory* @routine_jmpq_.L_455162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45515d, i64 5, i64 5)
  store %struct.Memory* %call_45515d, %struct.Memory** %MEMORY

  br label %block_.L_455162

  ; Code: .L_455162:	 RIP: 455162	 Bytes: 0
block_.L_455162:

  ; Code: movl -0x60c(%rbp), %eax	 RIP: 455162	 Bytes: 6
  %loadMem_455162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455162 = call %struct.Memory* @routine_movl_MINUS0x60c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455162)
  store %struct.Memory* %call_455162, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 455168	 Bytes: 3
  %loadMem_455168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455168 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455168)
  store %struct.Memory* %call_455168, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60c(%rbp)	 RIP: 45516b	 Bytes: 6
  %loadMem_45516b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45516b = call %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45516b)
  store %struct.Memory* %call_45516b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_454ea3	 RIP: 455171	 Bytes: 5
  %loadMem_455171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455171 = call %struct.Memory* @routine_jmpq_.L_454ea3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455171, i64 -718, i64 5)
  store %struct.Memory* %call_455171, %struct.Memory** %MEMORY

  br label %block_.L_454ea3

  ; Code: .L_455176:	 RIP: 455176	 Bytes: 0
block_.L_455176:

  ; Code: cmpl $0x0, -0x604(%rbp)	 RIP: 455176	 Bytes: 7
  %loadMem_455176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455176 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x604__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455176)
  store %struct.Memory* %call_455176, %struct.Memory** %MEMORY

  ; Code: jne .L_455255	 RIP: 45517d	 Bytes: 6
  %loadMem_45517d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45517d = call %struct.Memory* @routine_jne_.L_455255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45517d, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_45517d, %struct.Memory** %MEMORY

  %loadBr_45517d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45517d = icmp eq i8 %loadBr_45517d, 1
  br i1 %cmpBr_45517d, label %block_.L_455255, label %block_455183

block_455183:
  ; Code: cmpl $0x3e8, -0x608(%rbp)	 RIP: 455183	 Bytes: 10
  %loadMem_455183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455183 = call %struct.Memory* @routine_cmpl__0x3e8__MINUS0x608__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455183)
  store %struct.Memory* %call_455183, %struct.Memory** %MEMORY

  ; Code: jl .L_455255	 RIP: 45518d	 Bytes: 6
  %loadMem_45518d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45518d = call %struct.Memory* @routine_jl_.L_455255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45518d, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_45518d, %struct.Memory** %MEMORY

  %loadBr_45518d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45518d = icmp eq i8 %loadBr_45518d, 1
  br i1 %cmpBr_45518d, label %block_.L_455255, label %block_455193

block_455193:
  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 455193	 Bytes: 4
  %loadMem_455193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455193 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455193)
  store %struct.Memory* %call_455193, %struct.Memory** %MEMORY

  ; Code: jne .L_4551c2	 RIP: 455197	 Bytes: 6
  %loadMem_455197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455197 = call %struct.Memory* @routine_jne_.L_4551c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455197, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_455197, %struct.Memory** %MEMORY

  %loadBr_455197 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455197 = icmp eq i8 %loadBr_455197, 1
  br i1 %cmpBr_455197, label %block_.L_4551c2, label %block_45519d

block_45519d:
  ; Code: xorl %eax, %eax	 RIP: 45519d	 Bytes: 2
  %loadMem_45519d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45519d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45519d)
  store %struct.Memory* %call_45519d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 45519f	 Bytes: 2
  %loadMem_45519f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45519f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45519f)
  store %struct.Memory* %call_45519f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 4551a1	 Bytes: 6
  %loadMem_4551a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551a1 = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551a1)
  store %struct.Memory* %call_4551a1, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4551a7	 Bytes: 3
  %loadMem_4551a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551a7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551a7)
  store %struct.Memory* %call_4551a7, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4551aa	 Bytes: 3
  %loadMem_4551aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551aa = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551aa)
  store %struct.Memory* %call_4551aa, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 4551ad	 Bytes: 3
  %loadMem_4551ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551ad = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551ad)
  store %struct.Memory* %call_4551ad, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %r8d	 RIP: 4551b0	 Bytes: 4
  %loadMem_4551b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551b0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551b0)
  store %struct.Memory* %call_4551b0, %struct.Memory** %MEMORY

  ; Code: callq .recursive_connect2	 RIP: 4551b4	 Bytes: 5
  %loadMem1_4551b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4551b4 = call %struct.Memory* @routine_callq_.recursive_connect2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4551b4, i64 -10180, i64 5, i64 5)
  store %struct.Memory* %call1_4551b4, %struct.Memory** %MEMORY

  %loadMem2_4551b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4551b4 = load i64, i64* %3
  %call2_4551b4 = call %struct.Memory* @sub_4529f0.recursive_connect2(%struct.State* %0, i64  %loadPC_4551b4, %struct.Memory* %loadMem2_4551b4)
  store %struct.Memory* %call2_4551b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4551b9	 Bytes: 3
  %loadMem_4551b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551b9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551b9)
  store %struct.Memory* %call_4551b9, %struct.Memory** %MEMORY

  ; Code: jne .L_455255	 RIP: 4551bc	 Bytes: 6
  %loadMem_4551bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551bc = call %struct.Memory* @routine_jne_.L_455255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551bc, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_4551bc, %struct.Memory** %MEMORY

  %loadBr_4551bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4551bc = icmp eq i8 %loadBr_4551bc, 1
  br i1 %cmpBr_4551bc, label %block_.L_455255, label %block_.L_4551c2

  ; Code: .L_4551c2:	 RIP: 4551c2	 Bytes: 0
block_.L_4551c2:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4551c2	 Bytes: 9
  %loadMem_4551c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551c2 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551c2)
  store %struct.Memory* %call_4551c2, %struct.Memory** %MEMORY

  ; Code: je .L_4551fb	 RIP: 4551cb	 Bytes: 6
  %loadMem_4551cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551cb = call %struct.Memory* @routine_je_.L_4551fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551cb, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4551cb, %struct.Memory** %MEMORY

  %loadBr_4551cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4551cb = icmp eq i8 %loadBr_4551cb, 1
  br i1 %cmpBr_4551cb, label %block_.L_4551fb, label %block_4551d1

block_4551d1:
  ; Code: xorl %ecx, %ecx	 RIP: 4551d1	 Bytes: 2
  %loadMem_4551d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551d1 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551d1)
  store %struct.Memory* %call_4551d1, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %r8d	 RIP: 4551d3	 Bytes: 6
  %loadMem_4551d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551d3 = call %struct.Memory* @routine_movl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551d3)
  store %struct.Memory* %call_4551d3, %struct.Memory** %MEMORY

  ; Code: movq $0x57f674, %r9	 RIP: 4551d9	 Bytes: 10
  %loadMem_4551d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551d9 = call %struct.Memory* @routine_movq__0x57f674___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551d9)
  store %struct.Memory* %call_4551d9, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 4551e3	 Bytes: 7
  %loadMem_4551e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551e3 = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551e3)
  store %struct.Memory* %call_4551e3, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 4551ea	 Bytes: 6
  %loadMem_4551ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551ea = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551ea)
  store %struct.Memory* %call_4551ea, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 4551f0	 Bytes: 6
  %loadMem_4551f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551f0 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551f0)
  store %struct.Memory* %call_4551f0, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 4551f6	 Bytes: 5
  %loadMem1_4551f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4551f6 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4551f6, i64 -249558, i64 5, i64 5)
  store %struct.Memory* %call1_4551f6, %struct.Memory** %MEMORY

  %loadMem2_4551f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4551f6 = load i64, i64* %3
  %call2_4551f6 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_4551f6, %struct.Memory* %loadMem2_4551f6)
  store %struct.Memory* %call2_4551f6, %struct.Memory** %MEMORY

  ; Code: .L_4551fb:	 RIP: 4551fb	 Bytes: 0
  br label %block_.L_4551fb
block_.L_4551fb:

  ; Code: jmpq .L_455200	 RIP: 4551fb	 Bytes: 5
  %loadMem_4551fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4551fb = call %struct.Memory* @routine_jmpq_.L_455200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4551fb, i64 5, i64 5)
  store %struct.Memory* %call_4551fb, %struct.Memory** %MEMORY

  br label %block_.L_455200

  ; Code: .L_455200:	 RIP: 455200	 Bytes: 0
block_.L_455200:

  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 455200	 Bytes: 5
  %loadMem_455200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455200 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455200)
  store %struct.Memory* %call_455200, %struct.Memory** %MEMORY

  ; Code: je .L_455215	 RIP: 455205	 Bytes: 6
  %loadMem_455205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455205 = call %struct.Memory* @routine_je_.L_455215(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455205, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_455205, %struct.Memory** %MEMORY

  %loadBr_455205 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455205 = icmp eq i8 %loadBr_455205, 1
  br i1 %cmpBr_455205, label %block_.L_455215, label %block_45520b

block_45520b:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 45520b	 Bytes: 4
  %loadMem_45520b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45520b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45520b)
  store %struct.Memory* %call_45520b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 45520f	 Bytes: 6
  %loadMem_45520f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45520f = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45520f)
  store %struct.Memory* %call_45520f, %struct.Memory** %MEMORY

  ; Code: .L_455215:	 RIP: 455215	 Bytes: 0
  br label %block_.L_455215
block_.L_455215:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 455215	 Bytes: 8
  %loadMem_455215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455215 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455215)
  store %struct.Memory* %call_455215, %struct.Memory** %MEMORY

  ; Code: je .L_455249	 RIP: 45521d	 Bytes: 6
  %loadMem_45521d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45521d = call %struct.Memory* @routine_je_.L_455249(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45521d, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_45521d, %struct.Memory** %MEMORY

  %loadBr_45521d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45521d = icmp eq i8 %loadBr_45521d, 1
  br i1 %cmpBr_45521d, label %block_.L_455249, label %block_455223

block_455223:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 455223	 Bytes: 7
  %loadMem_455223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455223 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455223)
  store %struct.Memory* %call_455223, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 45522a	 Bytes: 3
  %loadMem_45522a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45522a = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45522a)
  store %struct.Memory* %call_45522a, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 45522d	 Bytes: 6
  %loadMem_45522d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45522d = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45522d)
  store %struct.Memory* %call_45522d, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 455233	 Bytes: 6
  %loadMem_455233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455233 = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455233)
  store %struct.Memory* %call_455233, %struct.Memory** %MEMORY

  ; Code: orl $0x5000000, %ecx	 RIP: 455239	 Bytes: 6
  %loadMem_455239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455239 = call %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455239)
  store %struct.Memory* %call_455239, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 45523f	 Bytes: 7
  %loadMem_45523f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45523f = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45523f)
  store %struct.Memory* %call_45523f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 455246	 Bytes: 3
  %loadMem_455246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455246 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455246)
  store %struct.Memory* %call_455246, %struct.Memory** %MEMORY

  ; Code: .L_455249:	 RIP: 455249	 Bytes: 0
  br label %block_.L_455249
block_.L_455249:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 455249	 Bytes: 7
  %loadMem_455249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455249 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455249)
  store %struct.Memory* %call_455249, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 455250	 Bytes: 5
  %loadMem_455250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455250 = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455250, i64 321, i64 5)
  store %struct.Memory* %call_455250, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_455255:	 RIP: 455255	 Bytes: 0
block_.L_455255:

  ; Code: cmpl $0x0, -0x618(%rbp)	 RIP: 455255	 Bytes: 7
  %loadMem_455255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455255 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455255)
  store %struct.Memory* %call_455255, %struct.Memory** %MEMORY

  ; Code: je .L_455324	 RIP: 45525c	 Bytes: 6
  %loadMem_45525c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45525c = call %struct.Memory* @routine_je_.L_455324(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45525c, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_45525c, %struct.Memory** %MEMORY

  %loadBr_45525c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45525c = icmp eq i8 %loadBr_45525c, 1
  br i1 %cmpBr_45525c, label %block_.L_455324, label %block_455262

block_455262:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 455262	 Bytes: 9
  %loadMem_455262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455262 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455262)
  store %struct.Memory* %call_455262, %struct.Memory** %MEMORY

  ; Code: je .L_4552a0	 RIP: 45526b	 Bytes: 6
  %loadMem_45526b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45526b = call %struct.Memory* @routine_je_.L_4552a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45526b, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_45526b, %struct.Memory** %MEMORY

  %loadBr_45526b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45526b = icmp eq i8 %loadBr_45526b, 1
  br i1 %cmpBr_45526b, label %block_.L_4552a0, label %block_455271

block_455271:
  ; Code: movq $0x57f60a, %r9	 RIP: 455271	 Bytes: 10
  %loadMem_455271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455271 = call %struct.Memory* @routine_movq__0x57f60a___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455271)
  store %struct.Memory* %call_455271, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 45527b	 Bytes: 7
  %loadMem_45527b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45527b = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45527b)
  store %struct.Memory* %call_45527b, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 455282	 Bytes: 6
  %loadMem_455282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455282 = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455282)
  store %struct.Memory* %call_455282, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 455288	 Bytes: 6
  %loadMem_455288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455288 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455288)
  store %struct.Memory* %call_455288, %struct.Memory** %MEMORY

  ; Code: movl -0x614(%rbp), %ecx	 RIP: 45528e	 Bytes: 6
  %loadMem_45528e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45528e = call %struct.Memory* @routine_movl_MINUS0x614__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45528e)
  store %struct.Memory* %call_45528e, %struct.Memory** %MEMORY

  ; Code: movl -0x618(%rbp), %r8d	 RIP: 455294	 Bytes: 7
  %loadMem_455294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455294 = call %struct.Memory* @routine_movl_MINUS0x618__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455294)
  store %struct.Memory* %call_455294, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 45529b	 Bytes: 5
  %loadMem1_45529b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45529b = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45529b, i64 -249723, i64 5, i64 5)
  store %struct.Memory* %call1_45529b, %struct.Memory** %MEMORY

  %loadMem2_45529b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45529b = load i64, i64* %3
  %call2_45529b = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_45529b, %struct.Memory* %loadMem2_45529b)
  store %struct.Memory* %call2_45529b, %struct.Memory** %MEMORY

  ; Code: .L_4552a0:	 RIP: 4552a0	 Bytes: 0
  br label %block_.L_4552a0
block_.L_4552a0:

  ; Code: jmpq .L_4552a5	 RIP: 4552a0	 Bytes: 5
  %loadMem_4552a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552a0 = call %struct.Memory* @routine_jmpq_.L_4552a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552a0, i64 5, i64 5)
  store %struct.Memory* %call_4552a0, %struct.Memory** %MEMORY

  br label %block_.L_4552a5

  ; Code: .L_4552a5:	 RIP: 4552a5	 Bytes: 0
block_.L_4552a5:

  ; Code: cmpl $0x0, -0x618(%rbp)	 RIP: 4552a5	 Bytes: 7
  %loadMem_4552a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552a5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552a5)
  store %struct.Memory* %call_4552a5, %struct.Memory** %MEMORY

  ; Code: je .L_4552c9	 RIP: 4552ac	 Bytes: 6
  %loadMem_4552ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552ac = call %struct.Memory* @routine_je_.L_4552c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552ac, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_4552ac, %struct.Memory** %MEMORY

  %loadBr_4552ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4552ac = icmp eq i8 %loadBr_4552ac, 1
  br i1 %cmpBr_4552ac, label %block_.L_4552c9, label %block_4552b2

block_4552b2:
  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 4552b2	 Bytes: 5
  %loadMem_4552b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552b2 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552b2)
  store %struct.Memory* %call_4552b2, %struct.Memory** %MEMORY

  ; Code: je .L_4552c9	 RIP: 4552b7	 Bytes: 6
  %loadMem_4552b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552b7 = call %struct.Memory* @routine_je_.L_4552c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552b7, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4552b7, %struct.Memory** %MEMORY

  %loadBr_4552b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4552b7 = icmp eq i8 %loadBr_4552b7, 1
  br i1 %cmpBr_4552b7, label %block_.L_4552c9, label %block_4552bd

block_4552bd:
  ; Code: movl -0x614(%rbp), %eax	 RIP: 4552bd	 Bytes: 6
  %loadMem_4552bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552bd = call %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552bd)
  store %struct.Memory* %call_4552bd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4552c3	 Bytes: 4
  %loadMem_4552c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552c3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552c3)
  store %struct.Memory* %call_4552c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4552c7	 Bytes: 2
  %loadMem_4552c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552c7 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552c7)
  store %struct.Memory* %call_4552c7, %struct.Memory** %MEMORY

  ; Code: .L_4552c9:	 RIP: 4552c9	 Bytes: 0
  br label %block_.L_4552c9
block_.L_4552c9:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 4552c9	 Bytes: 8
  %loadMem_4552c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552c9 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552c9)
  store %struct.Memory* %call_4552c9, %struct.Memory** %MEMORY

  ; Code: je .L_455316	 RIP: 4552d1	 Bytes: 6
  %loadMem_4552d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552d1 = call %struct.Memory* @routine_je_.L_455316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552d1, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_4552d1, %struct.Memory** %MEMORY

  %loadBr_4552d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4552d1 = icmp eq i8 %loadBr_4552d1, 1
  br i1 %cmpBr_4552d1, label %block_.L_455316, label %block_4552d7

block_4552d7:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 4552d7	 Bytes: 7
  %loadMem_4552d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552d7 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552d7)
  store %struct.Memory* %call_4552d7, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4552de	 Bytes: 3
  %loadMem_4552de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552de = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552de)
  store %struct.Memory* %call_4552de, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 4552e1	 Bytes: 6
  %loadMem_4552e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552e1 = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552e1)
  store %struct.Memory* %call_4552e1, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 4552e7	 Bytes: 6
  %loadMem_4552e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552e7 = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552e7)
  store %struct.Memory* %call_4552e7, %struct.Memory** %MEMORY

  ; Code: movl -0x618(%rbp), %edx	 RIP: 4552ed	 Bytes: 6
  %loadMem_4552ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552ed = call %struct.Memory* @routine_movl_MINUS0x618__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552ed)
  store %struct.Memory* %call_4552ed, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edx	 RIP: 4552f3	 Bytes: 3
  %loadMem_4552f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552f3 = call %struct.Memory* @routine_andl__0xf___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552f3)
  store %struct.Memory* %call_4552f3, %struct.Memory** %MEMORY

  ; Code: shll $0x18, %edx	 RIP: 4552f6	 Bytes: 3
  %loadMem_4552f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552f6 = call %struct.Memory* @routine_shll__0x18___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552f6)
  store %struct.Memory* %call_4552f6, %struct.Memory** %MEMORY

  ; Code: orl %edx, %ecx	 RIP: 4552f9	 Bytes: 2
  %loadMem_4552f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552f9 = call %struct.Memory* @routine_orl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552f9)
  store %struct.Memory* %call_4552f9, %struct.Memory** %MEMORY

  ; Code: movl -0x614(%rbp), %edx	 RIP: 4552fb	 Bytes: 6
  %loadMem_4552fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4552fb = call %struct.Memory* @routine_movl_MINUS0x614__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4552fb)
  store %struct.Memory* %call_4552fb, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %edx	 RIP: 455301	 Bytes: 6
  %loadMem_455301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455301 = call %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455301)
  store %struct.Memory* %call_455301, %struct.Memory** %MEMORY

  ; Code: shll $0xa, %edx	 RIP: 455307	 Bytes: 3
  %loadMem_455307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455307 = call %struct.Memory* @routine_shll__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455307)
  store %struct.Memory* %call_455307, %struct.Memory** %MEMORY

  ; Code: orl %edx, %ecx	 RIP: 45530a	 Bytes: 2
  %loadMem_45530a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45530a = call %struct.Memory* @routine_orl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45530a)
  store %struct.Memory* %call_45530a, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 45530c	 Bytes: 7
  %loadMem_45530c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45530c = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45530c)
  store %struct.Memory* %call_45530c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 455313	 Bytes: 3
  %loadMem_455313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455313 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455313)
  store %struct.Memory* %call_455313, %struct.Memory** %MEMORY

  ; Code: .L_455316:	 RIP: 455316	 Bytes: 0
  br label %block_.L_455316
block_.L_455316:

  ; Code: movl -0x618(%rbp), %eax	 RIP: 455316	 Bytes: 6
  %loadMem_455316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455316 = call %struct.Memory* @routine_movl_MINUS0x618__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455316)
  store %struct.Memory* %call_455316, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 45531c	 Bytes: 3
  %loadMem_45531c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45531c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45531c)
  store %struct.Memory* %call_45531c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_455391	 RIP: 45531f	 Bytes: 5
  %loadMem_45531f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45531f = call %struct.Memory* @routine_jmpq_.L_455391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45531f, i64 114, i64 5)
  store %struct.Memory* %call_45531f, %struct.Memory** %MEMORY

  br label %block_.L_455391

  ; Code: .L_455324:	 RIP: 455324	 Bytes: 0
block_.L_455324:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 455324	 Bytes: 9
  %loadMem_455324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455324 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455324)
  store %struct.Memory* %call_455324, %struct.Memory** %MEMORY

  ; Code: je .L_455357	 RIP: 45532d	 Bytes: 6
  %loadMem_45532d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45532d = call %struct.Memory* @routine_je_.L_455357(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45532d, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45532d, %struct.Memory** %MEMORY

  %loadBr_45532d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45532d = icmp eq i8 %loadBr_45532d, 1
  br i1 %cmpBr_45532d, label %block_.L_455357, label %block_455333

block_455333:
  ; Code: xorl %eax, %eax	 RIP: 455333	 Bytes: 2
  %loadMem_455333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455333 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455333)
  store %struct.Memory* %call_455333, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 455335	 Bytes: 2
  %loadMem_455335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455335 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455335)
  store %struct.Memory* %call_455335, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r9d	 RIP: 455337	 Bytes: 3
  %loadMem_455337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455337 = call %struct.Memory* @routine_movl__ecx___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455337)
  store %struct.Memory* %call_455337, %struct.Memory** %MEMORY

  ; Code: movq -0x630(%rbp), %rdi	 RIP: 45533a	 Bytes: 7
  %loadMem_45533a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45533a = call %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45533a)
  store %struct.Memory* %call_45533a, %struct.Memory** %MEMORY

  ; Code: movl -0x634(%rbp), %esi	 RIP: 455341	 Bytes: 6
  %loadMem_455341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455341 = call %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455341)
  store %struct.Memory* %call_455341, %struct.Memory** %MEMORY

  ; Code: movl -0x638(%rbp), %edx	 RIP: 455347	 Bytes: 6
  %loadMem_455347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455347 = call %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455347)
  store %struct.Memory* %call_455347, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45534d	 Bytes: 2
  %loadMem_45534d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45534d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45534d)
  store %struct.Memory* %call_45534d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 45534f	 Bytes: 3
  %loadMem_45534f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45534f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45534f)
  store %struct.Memory* %call_45534f, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace2	 RIP: 455352	 Bytes: 5
  %loadMem1_455352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_455352 = call %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_455352, i64 -249906, i64 5, i64 5)
  store %struct.Memory* %call1_455352, %struct.Memory** %MEMORY

  %loadMem2_455352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_455352 = load i64, i64* %3
  %call2_455352 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64  %loadPC_455352, %struct.Memory* %loadMem2_455352)
  store %struct.Memory* %call2_455352, %struct.Memory** %MEMORY

  ; Code: .L_455357:	 RIP: 455357	 Bytes: 0
  br label %block_.L_455357
block_.L_455357:

  ; Code: jmpq .L_45535c	 RIP: 455357	 Bytes: 5
  %loadMem_455357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455357 = call %struct.Memory* @routine_jmpq_.L_45535c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455357, i64 5, i64 5)
  store %struct.Memory* %call_455357, %struct.Memory** %MEMORY

  br label %block_.L_45535c

  ; Code: .L_45535c:	 RIP: 45535c	 Bytes: 0
block_.L_45535c:

  ; Code: cmpq $0x0, -0x628(%rbp)	 RIP: 45535c	 Bytes: 8
  %loadMem_45535c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45535c = call %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45535c)
  store %struct.Memory* %call_45535c, %struct.Memory** %MEMORY

  ; Code: je .L_45538a	 RIP: 455364	 Bytes: 6
  %loadMem_455364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455364 = call %struct.Memory* @routine_je_.L_45538a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455364, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_455364, %struct.Memory** %MEMORY

  %loadBr_455364 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_455364 = icmp eq i8 %loadBr_455364, 1
  br i1 %cmpBr_455364, label %block_.L_45538a, label %block_45536a

block_45536a:
  ; Code: movq -0x628(%rbp), %rax	 RIP: 45536a	 Bytes: 7
  %loadMem_45536a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45536a = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45536a)
  store %struct.Memory* %call_45536a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 455371	 Bytes: 3
  %loadMem_455371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455371 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455371)
  store %struct.Memory* %call_455371, %struct.Memory** %MEMORY

  ; Code: andl $0x3ff, %ecx	 RIP: 455374	 Bytes: 6
  %loadMem_455374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455374 = call %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455374)
  store %struct.Memory* %call_455374, %struct.Memory** %MEMORY

  ; Code: orl $0x20000000, %ecx	 RIP: 45537a	 Bytes: 6
  %loadMem_45537a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45537a = call %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45537a)
  store %struct.Memory* %call_45537a, %struct.Memory** %MEMORY

  ; Code: movq -0x628(%rbp), %rax	 RIP: 455380	 Bytes: 7
  %loadMem_455380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455380 = call %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455380)
  store %struct.Memory* %call_455380, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 455387	 Bytes: 3
  %loadMem_455387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455387 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455387)
  store %struct.Memory* %call_455387, %struct.Memory** %MEMORY

  ; Code: .L_45538a:	 RIP: 45538a	 Bytes: 0
  br label %block_.L_45538a
block_.L_45538a:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 45538a	 Bytes: 7
  %loadMem_45538a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45538a = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45538a)
  store %struct.Memory* %call_45538a, %struct.Memory** %MEMORY

  ; Code: .L_455391:	 RIP: 455391	 Bytes: 0
  br label %block_.L_455391
block_.L_455391:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 455391	 Bytes: 3
  %loadMem_455391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455391 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455391)
  store %struct.Memory* %call_455391, %struct.Memory** %MEMORY

  ; Code: addq $0x678, %rsp	 RIP: 455394	 Bytes: 7
  %loadMem_455394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_455394 = call %struct.Memory* @routine_addq__0x678___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_455394)
  store %struct.Memory* %call_455394, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 45539b	 Bytes: 1
  %loadMem_45539b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45539b = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45539b)
  store %struct.Memory* %call_45539b, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 45539c	 Bytes: 2
  %loadMem_45539c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45539c = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45539c)
  store %struct.Memory* %call_45539c, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 45539e	 Bytes: 2
  %loadMem_45539e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45539e = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45539e)
  store %struct.Memory* %call_45539e, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 4553a0	 Bytes: 2
  %loadMem_4553a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4553a0 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4553a0)
  store %struct.Memory* %call_4553a0, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 4553a2	 Bytes: 2
  %loadMem_4553a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4553a2 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4553a2)
  store %struct.Memory* %call_4553a2, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4553a4	 Bytes: 1
  %loadMem_4553a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4553a4 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4553a4)
  store %struct.Memory* %call_4553a4, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4553a5	 Bytes: 1
  %loadMem_4553a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4553a5 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4553a5)
  store %struct.Memory* %call_4553a5, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4553a5
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

define %struct.Memory* @routine_subq__0x678___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1656)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57f615___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57f615_type* @G__0x57f615 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__r9d__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_subl_MINUS0x50__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 80
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r10d__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %R10D
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

define %struct.Memory* @routine_movl__0x0__MINUS0x608__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x614__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x618__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x628__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x630__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1584
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


define %struct.Memory* @routine_movl__ecx__MINUS0x634__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1588
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__ecx__MINUS0x638__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1592
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xae239c___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xae239c_type* @G_0xae239c to i64))
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


define %struct.Memory* @routine_movl__ecx__0xae239c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xae239c_type* @G_0xae239c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0xae23a0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xae23a0_type* @G_0xae23a0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__ecx__0xae23a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xae23a0_type* @G_0xae23a0 to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_454a69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
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


define %struct.Memory* @routine_je_.L_454a93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_454ad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_454acc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 5)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x57f570___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f570_type* @G__0x57f570 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_callq_.sgf_trace2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_455391(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_callq_.same_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_454b30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454b24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57f58c___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f58c_type* @G__0x57f58c to i64))
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




define %struct.Memory* @routine_movl_0xae239c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xae239c_type* @G_0xae239c to i64))
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

define %struct.Memory* @routine_cmpl_0x7afc58___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7afc58_type* @G_0x7afc58 to i64))
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

define %struct.Memory* @routine_jle_.L_454b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454b7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57f59e___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f59e_type* @G__0x57f59e to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl_0x7afc5c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7afc5c_type* @G_0x7afc5c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_454be2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454bd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57f5bc___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f5bc_type* @G__0x57f5bc to i64))
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

define %struct.Memory* @routine_jg_.L_454cf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x7ae43c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae43c_type* @G_0x7ae43c to i64))
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

define %struct.Memory* @routine_andl__0x1000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4096)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_454cf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x6___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x34__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x628__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
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


define %struct.Memory* @routine_callq_.get_read_result2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x61c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_454cee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %11 [
    i5 0, label %42
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = lshr i32 %8, 31
  %10 = trunc i32 %9 to i8
  br label %19

; <label>:11:                                     ; preds = %5
  %12 = and i64 %4, 31
  %13 = add   i64 %12, 4294967295
  %14 = and i64 %3, 4294967295
  %15 = and i64 %13, 4294967295
  %16 = lshr i64 %14, %15
  %17 = icmp ne i8 0, 0
  %18 = zext i1 %17 to i8
  br label %19

; <label>:19:                                     ; preds = %11, %7
  %20 = phi i8 [ 0, %11 ], [ 0, %7 ]
  %21 = phi i64 [ %16, %11 ], [ %3, %7 ]
  %22 = phi i8 [ %18, %11 ], [ %10, %7 ]
  %23 = trunc i64 %21 to i8
  %24 = and i8 %23, 1
  %25 = lshr i64 %21, 1
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 2147483647
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %2, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %24, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %27, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %41, align 1
  br label %42

; <label>:42:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shrl__0x18___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_andl__0xf___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 15)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_454c7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454c7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_shrl__0xa___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 10)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1023)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_454c7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_454cd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57dee3___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57dee3_type* @G__0x57dee3 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movl_0x4__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_shrl__0x18___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 24)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_andl__0xf___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 15)
  ret %struct.Memory* %14
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




define %struct.Memory* @routine_jmpq_.L_454cf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x610__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.ladder_capture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_454db5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454d48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57f62b___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f62b_type* @G__0x57f62b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_454d4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_454d64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_454da9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 536870912)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 83886080)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x610__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x3ff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1023)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0xa___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 10)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_454e77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_454e0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57f643___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f643_type* @G__0x57f643 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jmpq_.L_454e0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_454e26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_454e6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_leaq_MINUS0x608__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x600__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_callq_.find_connection_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x60c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1548
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x60c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x604__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1540
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_455176(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x60c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x600__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1536
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x610__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x48__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
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


define %struct.Memory* @routine_movl__r9d__MINUS0x64c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1612
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x650__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1616
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1620
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1624
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1628
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

define %struct.Memory* @routine_movb__cl__MINUS0x65d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1629
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_454f2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x618__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1560
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


define %struct.Memory* @routine_movb__al__MINUS0x65d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1629
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

define %struct.Memory* @routine_movb_MINUS0x65d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1629
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57f615___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57f615_type* @G__0x57f615 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x63c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x640__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x644__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1604
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


define %struct.Memory* @routine_movl_MINUS0x650__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
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


define %struct.Memory* @routine_movl_MINUS0x654__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x670__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
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


define %struct.Memory* @routine_movl_MINUS0x658__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
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


define %struct.Memory* @routine_movl_MINUS0x65c__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
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


define %struct.Memory* @routine_movl_MINUS0x64c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1612
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x678__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
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


define %struct.Memory* @routine_movq_MINUS0x670__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
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


define %struct.Memory* @routine_movq_MINUS0x668__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
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


define %struct.Memory* @routine_movl_MINUS0x67c__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1660
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




define %struct.Memory* @routine_je_.L_45515d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x644__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1604
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_455114(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x63c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x640__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1600
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.recursive_connect2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1608
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x648__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4550ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_455061(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57f65c___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f65c_type* @G__0x57f65c to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jmpq_.L_455066(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_45507d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4550c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_45510f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_subl_MINUS0x648__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1608
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x618__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1560
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_45510f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1560
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_455158(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_je_.L_455153(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x614__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x618__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_45515d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_455162(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_454ea3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x604__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1540
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_455255(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3e8__MINUS0x608__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1000)
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

define %struct.Memory* @routine_jl_.L_455255(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4551c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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










define %struct.Memory* @routine_je_.L_4551fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57f674___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f674_type* @G__0x57f674 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jmpq_.L_455200(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_455215(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_455249(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_je_.L_455324(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4552a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57f60a___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x57f60a_type* @G__0x57f60a to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_MINUS0x614__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x618__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1560
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_4552a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4552c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_455316(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x618__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0xf___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 15)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shll__0x18___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 24)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x614__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x618__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1560
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






define %struct.Memory* @routine_je_.L_455357(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_jmpq_.L_45535c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_45538a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x678___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1656)
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

