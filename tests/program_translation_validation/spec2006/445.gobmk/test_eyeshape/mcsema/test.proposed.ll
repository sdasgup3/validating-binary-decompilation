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

declare %struct.Memory* @sub_408b90.clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407d50.store_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407f00.restore_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446910.owl_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44aac0.owl_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f28_type = type <{ [4 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
@G__0x57d7b6= global %G__0x57d7b6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dbcc_type = type <{ [8 x i8] }>
@G__0x57dbcc= global %G__0x57dbcc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dbe7_type = type <{ [8 x i8] }>
@G__0x57dbe7= global %G__0x57dbe7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc04_type = type <{ [8 x i8] }>
@G__0x57dc04= global %G__0x57dc04_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc2f_type = type <{ [8 x i8] }>
@G__0x57dc2f= global %G__0x57dc2f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc4b_type = type <{ [8 x i8] }>
@G__0x57dc4b= global %G__0x57dc4b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc62_type = type <{ [8 x i8] }>
@G__0x57dc62= global %G__0x57dc62_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc7c_type = type <{ [8 x i8] }>
@G__0x57dc7c= global %G__0x57dc7c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57dc94_type = type <{ [8 x i8] }>
@G__0x57dc94= global %G__0x57dc94_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586073_type = type <{ [8 x i8] }>
@G__0x586073= global %G__0x586073_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @test_eyeshape(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .test_eyeshape:	 RIP: 43da80	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43da80	 Bytes: 1
  %loadMem_43da80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da80 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da80)
  store %struct.Memory* %call_43da80, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43da81	 Bytes: 3
  %loadMem_43da81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da81 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da81)
  store %struct.Memory* %call_43da81, %struct.Memory** %MEMORY

  ; Code: subq $0x19e0, %rsp	 RIP: 43da84	 Bytes: 7
  %loadMem_43da84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da84 = call %struct.Memory* @routine_subq__0x19e0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da84)
  store %struct.Memory* %call_43da84, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 43da8b	 Bytes: 3
  %loadMem_43da8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da8b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da8b)
  store %struct.Memory* %call_43da8b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 43da8e	 Bytes: 4
  %loadMem_43da8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da8e = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da8e)
  store %struct.Memory* %call_43da8e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x668(%rbp)	 RIP: 43da92	 Bytes: 10
  %loadMem_43da92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43da92 = call %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43da92)
  store %struct.Memory* %call_43da92, %struct.Memory** %MEMORY

  ; Code: callq .clear_board	 RIP: 43da9c	 Bytes: 5
  %loadMem1_43da9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43da9c = call %struct.Memory* @routine_callq_.clear_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43da9c, i64 -216844, i64 5, i64 5)
  store %struct.Memory* %call1_43da9c, %struct.Memory** %MEMORY

  %loadMem2_43da9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da9c = load i64, i64* %3
  %call2_43da9c = call %struct.Memory* @sub_408b90.clear_board(%struct.State* %0, i64  %loadPC_43da9c, %struct.Memory* %loadMem2_43da9c)
  store %struct.Memory* %call2_43da9c, %struct.Memory** %MEMORY

  ; Code: callq .reset_engine	 RIP: 43daa1	 Bytes: 5
  %loadMem1_43daa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43daa1 = call %struct.Memory* @routine_callq_.reset_engine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43daa1, i64 -98001, i64 5, i64 5)
  store %struct.Memory* %call1_43daa1, %struct.Memory** %MEMORY

  %loadMem2_43daa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43daa1 = load i64, i64* %3
  %call2_43daa1 = call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64  %loadPC_43daa1, %struct.Memory* %loadMem2_43daa1)
  store %struct.Memory* %call2_43daa1, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 43daa6	 Bytes: 2
  %loadMem_43daa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daa6 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daa6)
  store %struct.Memory* %call_43daa6, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %edi	 RIP: 43daa8	 Bytes: 5
  %loadMem_43daa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daa8 = call %struct.Memory* @routine_movl__0x640___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daa8)
  store %struct.Memory* %call_43daa8, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 43daad	 Bytes: 2
  %loadMem_43daad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daad = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daad)
  store %struct.Memory* %call_43daad, %struct.Memory** %MEMORY

  ; Code: leaq -0x660(%rbp), %rax	 RIP: 43daaf	 Bytes: 7
  %loadMem_43daaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daaf = call %struct.Memory* @routine_leaq_MINUS0x660__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daaf)
  store %struct.Memory* %call_43daaf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43dab6	 Bytes: 3
  %loadMem_43dab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dab6 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dab6)
  store %struct.Memory* %call_43dab6, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 43dab9	 Bytes: 5
  %loadMem1_43dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dab9 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dab9, i64 -248393, i64 5, i64 5)
  store %struct.Memory* %call1_43dab9, %struct.Memory** %MEMORY

  %loadMem2_43dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dab9 = load i64, i64* %3
  %call2_43dab9 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_43dab9, %struct.Memory* %loadMem2_43dab9)
  store %struct.Memory* %call2_43dab9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43dabe	 Bytes: 7
  %loadMem_43dabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dabe = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dabe)
  store %struct.Memory* %call_43dabe, %struct.Memory** %MEMORY

  ; Code: .L_43dac5:	 RIP: 43dac5	 Bytes: 0
  br label %block_.L_43dac5
block_.L_43dac5:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43dac5	 Bytes: 3
  %loadMem_43dac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dac5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dac5)
  store %struct.Memory* %call_43dac5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 43dac8	 Bytes: 3
  %loadMem_43dac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dac8 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dac8)
  store %struct.Memory* %call_43dac8, %struct.Memory** %MEMORY

  ; Code: jge .L_43dbb3	 RIP: 43dacb	 Bytes: 6
  %loadMem_43dacb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dacb = call %struct.Memory* @routine_jge_.L_43dbb3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dacb, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_43dacb, %struct.Memory** %MEMORY

  %loadBr_43dacb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dacb = icmp eq i8 %loadBr_43dacb, 1
  br i1 %cmpBr_43dacb, label %block_.L_43dbb3, label %block_43dad1

block_43dad1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43dad1	 Bytes: 4
  %loadMem_43dad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dad1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dad1)
  store %struct.Memory* %call_43dad1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dad5	 Bytes: 4
  %loadMem_43dad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dad5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dad5)
  store %struct.Memory* %call_43dad5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1a5, (%rax,%rcx,4)	 RIP: 43dad9	 Bytes: 7
  %loadMem_43dad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dad9 = call %struct.Memory* @routine_cmpl__0x1a5____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dad9)
  store %struct.Memory* %call_43dad9, %struct.Memory** %MEMORY

  ; Code: jae .L_43db08	 RIP: 43dae0	 Bytes: 6
  %loadMem_43dae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dae0 = call %struct.Memory* @routine_jae_.L_43db08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dae0, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43dae0, %struct.Memory** %MEMORY

  %loadBr_43dae0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dae0 = icmp eq i8 %loadBr_43dae0, 1
  br i1 %cmpBr_43dae0, label %block_.L_43db08, label %block_43dae6

block_43dae6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43dae6	 Bytes: 4
  %loadMem_43dae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dae6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dae6)
  store %struct.Memory* %call_43dae6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43daea	 Bytes: 4
  %loadMem_43daea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daea = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daea)
  store %struct.Memory* %call_43daea, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 43daee	 Bytes: 4
  %loadMem_43daee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daee = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daee)
  store %struct.Memory* %call_43daee, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 43daf2	 Bytes: 8
  %loadMem_43daf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43daf2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43daf2)
  store %struct.Memory* %call_43daf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 43dafa	 Bytes: 3
  %loadMem_43dafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dafa = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dafa)
  store %struct.Memory* %call_43dafa, %struct.Memory** %MEMORY

  ; Code: je .L_43db08	 RIP: 43dafd	 Bytes: 6
  %loadMem_43dafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dafd = call %struct.Memory* @routine_je_.L_43db08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dafd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43dafd, %struct.Memory** %MEMORY

  %loadBr_43dafd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dafd = icmp eq i8 %loadBr_43dafd, 1
  br i1 %cmpBr_43dafd, label %block_.L_43db08, label %block_43db03

block_43db03:
  ; Code: jmpq .L_43db8e	 RIP: 43db03	 Bytes: 5
  %loadMem_43db03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db03 = call %struct.Memory* @routine_jmpq_.L_43db8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db03, i64 139, i64 5)
  store %struct.Memory* %call_43db03, %struct.Memory** %MEMORY

  br label %block_.L_43db8e

  ; Code: .L_43db08:	 RIP: 43db08	 Bytes: 0
block_.L_43db08:

  ; Code: movq $0x57d7b6, %rdi	 RIP: 43db08	 Bytes: 10
  %loadMem_43db08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db08 = call %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db08)
  store %struct.Memory* %call_43db08, %struct.Memory** %MEMORY

  ; Code: movl $0x775, %esi	 RIP: 43db12	 Bytes: 5
  %loadMem_43db12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db12 = call %struct.Memory* @routine_movl__0x775___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db12)
  store %struct.Memory* %call_43db12, %struct.Memory** %MEMORY

  ; Code: movq $0x57dbcc, %rdx	 RIP: 43db17	 Bytes: 10
  %loadMem_43db17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db17 = call %struct.Memory* @routine_movq__0x57dbcc___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db17)
  store %struct.Memory* %call_43db17, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 43db21	 Bytes: 5
  %loadMem_43db21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db21 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db21)
  store %struct.Memory* %call_43db21, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43db26	 Bytes: 4
  %loadMem_43db26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db26 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db26)
  store %struct.Memory* %call_43db26, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %r8	 RIP: 43db2a	 Bytes: 4
  %loadMem_43db2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db2a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db2a)
  store %struct.Memory* %call_43db2a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %r9d	 RIP: 43db2e	 Bytes: 4
  %loadMem_43db2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db2e = call %struct.Memory* @routine_movl___rcx__r8_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db2e)
  store %struct.Memory* %call_43db2e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19a4(%rbp)	 RIP: 43db32	 Bytes: 6
  %loadMem_43db32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db32 = call %struct.Memory* @routine_movl__eax__MINUS0x19a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db32)
  store %struct.Memory* %call_43db32, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 43db38	 Bytes: 3
  %loadMem_43db38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db38 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db38)
  store %struct.Memory* %call_43db38, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x19b0(%rbp)	 RIP: 43db3b	 Bytes: 7
  %loadMem_43db3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db3b = call %struct.Memory* @routine_movq__rdx__MINUS0x19b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db3b)
  store %struct.Memory* %call_43db3b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43db42	 Bytes: 1
  %loadMem_43db42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db42 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db42)
  store %struct.Memory* %call_43db42, %struct.Memory** %MEMORY

  ; Code: movl -0x19a4(%rbp), %r9d	 RIP: 43db43	 Bytes: 7
  %loadMem_43db43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db43 = call %struct.Memory* @routine_movl_MINUS0x19a4__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db43)
  store %struct.Memory* %call_43db43, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 43db4a	 Bytes: 3
  %loadMem_43db4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db4a = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db4a)
  store %struct.Memory* %call_43db4a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 43db4d	 Bytes: 3
  %loadMem_43db4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db4d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db4d)
  store %struct.Memory* %call_43db4d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43db50	 Bytes: 4
  %loadMem_43db50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db50)
  store %struct.Memory* %call_43db50, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %r8	 RIP: 43db54	 Bytes: 4
  %loadMem_43db54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db54 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db54)
  store %struct.Memory* %call_43db54, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %r10d	 RIP: 43db58	 Bytes: 4
  %loadMem_43db58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db58 = call %struct.Memory* @routine_movl___rcx__r8_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db58)
  store %struct.Memory* %call_43db58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19b4(%rbp)	 RIP: 43db5c	 Bytes: 6
  %loadMem_43db5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db5c = call %struct.Memory* @routine_movl__eax__MINUS0x19b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db5c)
  store %struct.Memory* %call_43db5c, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %eax	 RIP: 43db62	 Bytes: 3
  %loadMem_43db62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db62 = call %struct.Memory* @routine_movl__r10d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db62)
  store %struct.Memory* %call_43db62, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43db65	 Bytes: 1
  %loadMem_43db65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db65 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db65)
  store %struct.Memory* %call_43db65, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 43db66	 Bytes: 3
  %loadMem_43db66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db66 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db66)
  store %struct.Memory* %call_43db66, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 43db69	 Bytes: 3
  %loadMem_43db69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db69 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db69)
  store %struct.Memory* %call_43db69, %struct.Memory** %MEMORY

  ; Code: movq -0x19b0(%rbp), %rcx	 RIP: 43db6c	 Bytes: 7
  %loadMem_43db6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db6c = call %struct.Memory* @routine_movq_MINUS0x19b0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db6c)
  store %struct.Memory* %call_43db6c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x19b8(%rbp)	 RIP: 43db73	 Bytes: 6
  %loadMem_43db73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db73 = call %struct.Memory* @routine_movl__edx__MINUS0x19b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db73)
  store %struct.Memory* %call_43db73, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 43db79	 Bytes: 3
  %loadMem_43db79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db79 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db79)
  store %struct.Memory* %call_43db79, %struct.Memory** %MEMORY

  ; Code: movl -0x19b4(%rbp), %ecx	 RIP: 43db7c	 Bytes: 6
  %loadMem_43db7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db7c = call %struct.Memory* @routine_movl_MINUS0x19b4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db7c)
  store %struct.Memory* %call_43db7c, %struct.Memory** %MEMORY

  ; Code: movl -0x19b8(%rbp), %r8d	 RIP: 43db82	 Bytes: 7
  %loadMem_43db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db82 = call %struct.Memory* @routine_movl_MINUS0x19b8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db82)
  store %struct.Memory* %call_43db82, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 43db89	 Bytes: 5
  %loadMem1_43db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43db89 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43db89, i64 83207, i64 5, i64 5)
  store %struct.Memory* %call1_43db89, %struct.Memory** %MEMORY

  %loadMem2_43db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43db89 = load i64, i64* %3
  %call2_43db89 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_43db89, %struct.Memory* %loadMem2_43db89)
  store %struct.Memory* %call2_43db89, %struct.Memory** %MEMORY

  ; Code: .L_43db8e:	 RIP: 43db8e	 Bytes: 0
  br label %block_.L_43db8e
block_.L_43db8e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43db8e	 Bytes: 4
  %loadMem_43db8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db8e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db8e)
  store %struct.Memory* %call_43db8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43db92	 Bytes: 4
  %loadMem_43db92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db92 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db92)
  store %struct.Memory* %call_43db92, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 43db96	 Bytes: 4
  %loadMem_43db96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db96 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db96)
  store %struct.Memory* %call_43db96, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x660(%rbp,%rax,4)	 RIP: 43db9a	 Bytes: 11
  %loadMem_43db9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43db9a = call %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43db9a)
  store %struct.Memory* %call_43db9a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43dba5	 Bytes: 3
  %loadMem_43dba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dba5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dba5)
  store %struct.Memory* %call_43dba5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dba8	 Bytes: 3
  %loadMem_43dba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dba8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dba8)
  store %struct.Memory* %call_43dba8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43dbab	 Bytes: 3
  %loadMem_43dbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbab = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbab)
  store %struct.Memory* %call_43dbab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dac5	 RIP: 43dbae	 Bytes: 5
  %loadMem_43dbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbae = call %struct.Memory* @routine_jmpq_.L_43dac5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbae, i64 -233, i64 5)
  store %struct.Memory* %call_43dbae, %struct.Memory** %MEMORY

  br label %block_.L_43dac5

  ; Code: .L_43dbb3:	 RIP: 43dbb3	 Bytes: 0
block_.L_43dbb3:

  ; Code: movl $0x15, -0x664(%rbp)	 RIP: 43dbb3	 Bytes: 10
  %loadMem_43dbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbb3 = call %struct.Memory* @routine_movl__0x15__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbb3)
  store %struct.Memory* %call_43dbb3, %struct.Memory** %MEMORY

  ; Code: .L_43dbbd:	 RIP: 43dbbd	 Bytes: 0
  br label %block_.L_43dbbd
block_.L_43dbbd:

  ; Code: cmpl $0x190, -0x664(%rbp)	 RIP: 43dbbd	 Bytes: 10
  %loadMem_43dbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbbd = call %struct.Memory* @routine_cmpl__0x190__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbbd)
  store %struct.Memory* %call_43dbbd, %struct.Memory** %MEMORY

  ; Code: jge .L_43dca4	 RIP: 43dbc7	 Bytes: 6
  %loadMem_43dbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbc7 = call %struct.Memory* @routine_jge_.L_43dca4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbc7, i8* %BRANCH_TAKEN, i64 221, i64 6, i64 6)
  store %struct.Memory* %call_43dbc7, %struct.Memory** %MEMORY

  %loadBr_43dbc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbc7 = icmp eq i8 %loadBr_43dbc7, 1
  br i1 %cmpBr_43dbc7, label %block_.L_43dca4, label %block_43dbcd

block_43dbcd:
  ; Code: movslq -0x664(%rbp), %rax	 RIP: 43dbcd	 Bytes: 7
  %loadMem_43dbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbcd = call %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbcd)
  store %struct.Memory* %call_43dbcd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 43dbd4	 Bytes: 8
  %loadMem_43dbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbd4 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbd4)
  store %struct.Memory* %call_43dbd4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 43dbdc	 Bytes: 3
  %loadMem_43dbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbdc = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbdc)
  store %struct.Memory* %call_43dbdc, %struct.Memory** %MEMORY

  ; Code: je .L_43dbfa	 RIP: 43dbdf	 Bytes: 6
  %loadMem_43dbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbdf = call %struct.Memory* @routine_je_.L_43dbfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbdf, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43dbdf, %struct.Memory** %MEMORY

  %loadBr_43dbdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbdf = icmp eq i8 %loadBr_43dbdf, 1
  br i1 %cmpBr_43dbdf, label %block_.L_43dbfa, label %block_43dbe5

block_43dbe5:
  ; Code: movslq -0x664(%rbp), %rax	 RIP: 43dbe5	 Bytes: 7
  %loadMem_43dbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbe5 = call %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbe5)
  store %struct.Memory* %call_43dbe5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x660(%rbp,%rax,4)	 RIP: 43dbec	 Bytes: 8
  %loadMem_43dbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbec = call %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbec)
  store %struct.Memory* %call_43dbec, %struct.Memory** %MEMORY

  ; Code: jne .L_43dbff	 RIP: 43dbf4	 Bytes: 6
  %loadMem_43dbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbf4 = call %struct.Memory* @routine_jne_.L_43dbff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbf4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43dbf4, %struct.Memory** %MEMORY

  %loadBr_43dbf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbf4 = icmp eq i8 %loadBr_43dbf4, 1
  br i1 %cmpBr_43dbf4, label %block_.L_43dbff, label %block_.L_43dbfa

  ; Code: .L_43dbfa:	 RIP: 43dbfa	 Bytes: 0
block_.L_43dbfa:

  ; Code: jmpq .L_43dc90	 RIP: 43dbfa	 Bytes: 5
  %loadMem_43dbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbfa = call %struct.Memory* @routine_jmpq_.L_43dc90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbfa, i64 150, i64 5)
  store %struct.Memory* %call_43dbfa, %struct.Memory** %MEMORY

  br label %block_.L_43dc90

  ; Code: .L_43dbff:	 RIP: 43dbff	 Bytes: 0
block_.L_43dbff:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43dbff	 Bytes: 7
  %loadMem_43dbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dbff = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dbff)
  store %struct.Memory* %call_43dbff, %struct.Memory** %MEMORY

  ; Code: .L_43dc06:	 RIP: 43dc06	 Bytes: 0
  br label %block_.L_43dc06
block_.L_43dc06:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 43dc06	 Bytes: 4
  %loadMem_43dc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc06 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc06)
  store %struct.Memory* %call_43dc06, %struct.Memory** %MEMORY

  ; Code: jge .L_43dc8b	 RIP: 43dc0a	 Bytes: 6
  %loadMem_43dc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc0a = call %struct.Memory* @routine_jge_.L_43dc8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc0a, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_43dc0a, %struct.Memory** %MEMORY

  %loadBr_43dc0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc0a = icmp eq i8 %loadBr_43dc0a, 1
  br i1 %cmpBr_43dc0a, label %block_.L_43dc8b, label %block_43dc10

block_43dc10:
  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dc10	 Bytes: 6
  %loadMem_43dc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc10 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc10)
  store %struct.Memory* %call_43dc10, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dc16	 Bytes: 4
  %loadMem_43dc16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc16 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc16)
  store %struct.Memory* %call_43dc16, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 43dc1a	 Bytes: 7
  %loadMem_43dc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc1a = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc1a)
  store %struct.Memory* %call_43dc1a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 43dc21	 Bytes: 3
  %loadMem_43dc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc21 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc21)
  store %struct.Memory* %call_43dc21, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 43dc24	 Bytes: 8
  %loadMem_43dc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc24 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc24)
  store %struct.Memory* %call_43dc24, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 43dc2c	 Bytes: 3
  %loadMem_43dc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc2c = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc2c)
  store %struct.Memory* %call_43dc2c, %struct.Memory** %MEMORY

  ; Code: je .L_43dc78	 RIP: 43dc2f	 Bytes: 6
  %loadMem_43dc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc2f = call %struct.Memory* @routine_je_.L_43dc78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc2f, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_43dc2f, %struct.Memory** %MEMORY

  %loadBr_43dc2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc2f = icmp eq i8 %loadBr_43dc2f, 1
  br i1 %cmpBr_43dc2f, label %block_.L_43dc78, label %block_43dc35

block_43dc35:
  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dc35	 Bytes: 6
  %loadMem_43dc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc35 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc35)
  store %struct.Memory* %call_43dc35, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dc3b	 Bytes: 4
  %loadMem_43dc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc3b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc3b)
  store %struct.Memory* %call_43dc3b, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 43dc3f	 Bytes: 7
  %loadMem_43dc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc3f = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc3f)
  store %struct.Memory* %call_43dc3f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 43dc46	 Bytes: 3
  %loadMem_43dc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc46 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc46)
  store %struct.Memory* %call_43dc46, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x660(%rbp,%rcx,4)	 RIP: 43dc49	 Bytes: 8
  %loadMem_43dc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc49 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc49)
  store %struct.Memory* %call_43dc49, %struct.Memory** %MEMORY

  ; Code: jne .L_43dc78	 RIP: 43dc51	 Bytes: 6
  %loadMem_43dc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc51 = call %struct.Memory* @routine_jne_.L_43dc78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc51, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_43dc51, %struct.Memory** %MEMORY

  %loadBr_43dc51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc51 = icmp eq i8 %loadBr_43dc51, 1
  br i1 %cmpBr_43dc51, label %block_.L_43dc78, label %block_43dc57

block_43dc57:
  ; Code: movl $0x1, %esi	 RIP: 43dc57	 Bytes: 5
  %loadMem_43dc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc57 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc57)
  store %struct.Memory* %call_43dc57, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %edi	 RIP: 43dc5c	 Bytes: 6
  %loadMem_43dc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc5c = call %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc5c)
  store %struct.Memory* %call_43dc5c, %struct.Memory** %MEMORY

  ; Code: callq .play_move	 RIP: 43dc62	 Bytes: 5
  %loadMem1_43dc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dc62 = call %struct.Memory* @routine_callq_.play_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dc62, i64 -194898, i64 5, i64 5)
  store %struct.Memory* %call1_43dc62, %struct.Memory** %MEMORY

  %loadMem2_43dc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dc62 = load i64, i64* %3
  %call2_43dc62 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64  %loadPC_43dc62, %struct.Memory* %loadMem2_43dc62)
  store %struct.Memory* %call2_43dc62, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %esi	 RIP: 43dc67	 Bytes: 6
  %loadMem_43dc67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc67 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc67)
  store %struct.Memory* %call_43dc67, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x668(%rbp)	 RIP: 43dc6d	 Bytes: 6
  %loadMem_43dc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc6d = call %struct.Memory* @routine_movl__esi__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc6d)
  store %struct.Memory* %call_43dc6d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dc8b	 RIP: 43dc73	 Bytes: 5
  %loadMem_43dc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc73 = call %struct.Memory* @routine_jmpq_.L_43dc8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc73, i64 24, i64 5)
  store %struct.Memory* %call_43dc73, %struct.Memory** %MEMORY

  br label %block_.L_43dc8b

  ; Code: .L_43dc78:	 RIP: 43dc78	 Bytes: 0
block_.L_43dc78:

  ; Code: jmpq .L_43dc7d	 RIP: 43dc78	 Bytes: 5
  %loadMem_43dc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc78 = call %struct.Memory* @routine_jmpq_.L_43dc7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc78, i64 5, i64 5)
  store %struct.Memory* %call_43dc78, %struct.Memory** %MEMORY

  br label %block_.L_43dc7d

  ; Code: .L_43dc7d:	 RIP: 43dc7d	 Bytes: 0
block_.L_43dc7d:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43dc7d	 Bytes: 3
  %loadMem_43dc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc7d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc7d)
  store %struct.Memory* %call_43dc7d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dc80	 Bytes: 3
  %loadMem_43dc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc80 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc80)
  store %struct.Memory* %call_43dc80, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43dc83	 Bytes: 3
  %loadMem_43dc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc83 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc83)
  store %struct.Memory* %call_43dc83, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dc06	 RIP: 43dc86	 Bytes: 5
  %loadMem_43dc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc86 = call %struct.Memory* @routine_jmpq_.L_43dc06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc86, i64 -128, i64 5)
  store %struct.Memory* %call_43dc86, %struct.Memory** %MEMORY

  br label %block_.L_43dc06

  ; Code: .L_43dc8b:	 RIP: 43dc8b	 Bytes: 0
block_.L_43dc8b:

  ; Code: jmpq .L_43dc90	 RIP: 43dc8b	 Bytes: 5
  %loadMem_43dc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc8b = call %struct.Memory* @routine_jmpq_.L_43dc90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc8b, i64 5, i64 5)
  store %struct.Memory* %call_43dc8b, %struct.Memory** %MEMORY

  br label %block_.L_43dc90

  ; Code: .L_43dc90:	 RIP: 43dc90	 Bytes: 0
block_.L_43dc90:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dc90	 Bytes: 6
  %loadMem_43dc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc90 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc90)
  store %struct.Memory* %call_43dc90, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dc96	 Bytes: 3
  %loadMem_43dc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc96 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc96)
  store %struct.Memory* %call_43dc96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 43dc99	 Bytes: 6
  %loadMem_43dc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc99 = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc99)
  store %struct.Memory* %call_43dc99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dbbd	 RIP: 43dc9f	 Bytes: 5
  %loadMem_43dc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dc9f = call %struct.Memory* @routine_jmpq_.L_43dbbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dc9f, i64 -226, i64 5)
  store %struct.Memory* %call_43dc9f, %struct.Memory** %MEMORY

  br label %block_.L_43dbbd

  ; Code: .L_43dca4:	 RIP: 43dca4	 Bytes: 0
block_.L_43dca4:

  ; Code: movl $0x15, -0x664(%rbp)	 RIP: 43dca4	 Bytes: 10
  %loadMem_43dca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dca4 = call %struct.Memory* @routine_movl__0x15__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dca4)
  store %struct.Memory* %call_43dca4, %struct.Memory** %MEMORY

  ; Code: .L_43dcae:	 RIP: 43dcae	 Bytes: 0
  br label %block_.L_43dcae
block_.L_43dcae:

  ; Code: cmpl $0x190, -0x664(%rbp)	 RIP: 43dcae	 Bytes: 10
  %loadMem_43dcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcae = call %struct.Memory* @routine_cmpl__0x190__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcae)
  store %struct.Memory* %call_43dcae, %struct.Memory** %MEMORY

  ; Code: jge .L_43dda8	 RIP: 43dcb8	 Bytes: 6
  %loadMem_43dcb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcb8 = call %struct.Memory* @routine_jge_.L_43dda8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcb8, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_43dcb8, %struct.Memory** %MEMORY

  %loadBr_43dcb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dcb8 = icmp eq i8 %loadBr_43dcb8, 1
  br i1 %cmpBr_43dcb8, label %block_.L_43dda8, label %block_43dcbe

block_43dcbe:
  ; Code: movslq -0x664(%rbp), %rax	 RIP: 43dcbe	 Bytes: 7
  %loadMem_43dcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcbe = call %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcbe)
  store %struct.Memory* %call_43dcbe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x660(%rbp,%rax,4)	 RIP: 43dcc5	 Bytes: 8
  %loadMem_43dcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcc5 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcc5)
  store %struct.Memory* %call_43dcc5, %struct.Memory** %MEMORY

  ; Code: je .L_43dd05	 RIP: 43dccd	 Bytes: 6
  %loadMem_43dccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dccd = call %struct.Memory* @routine_je_.L_43dd05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dccd, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_43dccd, %struct.Memory** %MEMORY

  %loadBr_43dccd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dccd = icmp eq i8 %loadBr_43dccd, 1
  br i1 %cmpBr_43dccd, label %block_.L_43dd05, label %block_43dcd3

block_43dcd3:
  ; Code: movslq -0x664(%rbp), %rax	 RIP: 43dcd3	 Bytes: 7
  %loadMem_43dcd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcd3 = call %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcd3)
  store %struct.Memory* %call_43dcd3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 43dcda	 Bytes: 8
  %loadMem_43dcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcda = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcda)
  store %struct.Memory* %call_43dcda, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43dce2	 Bytes: 3
  %loadMem_43dce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dce2 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dce2)
  store %struct.Memory* %call_43dce2, %struct.Memory** %MEMORY

  ; Code: jne .L_43dd05	 RIP: 43dce5	 Bytes: 6
  %loadMem_43dce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dce5 = call %struct.Memory* @routine_jne_.L_43dd05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dce5, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_43dce5, %struct.Memory** %MEMORY

  %loadBr_43dce5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dce5 = icmp eq i8 %loadBr_43dce5, 1
  br i1 %cmpBr_43dce5, label %block_.L_43dd05, label %block_43dceb

block_43dceb:
  ; Code: movl -0x664(%rbp), %edi	 RIP: 43dceb	 Bytes: 6
  %loadMem_43dceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dceb = call %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dceb)
  store %struct.Memory* %call_43dceb, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43dcf1	 Bytes: 6
  %loadMem_43dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcf1 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcf1)
  store %struct.Memory* %call_43dcf1, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 43dcf7	 Bytes: 5
  %loadMem1_43dcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dcf7 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dcf7, i64 -168519, i64 5, i64 5)
  store %struct.Memory* %call1_43dcf7, %struct.Memory** %MEMORY

  %loadMem2_43dcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dcf7 = load i64, i64* %3
  %call2_43dcf7 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_43dcf7, %struct.Memory* %loadMem2_43dcf7)
  store %struct.Memory* %call2_43dcf7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43dcfc	 Bytes: 3
  %loadMem_43dcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcfc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcfc)
  store %struct.Memory* %call_43dcfc, %struct.Memory** %MEMORY

  ; Code: je .L_43dd0a	 RIP: 43dcff	 Bytes: 6
  %loadMem_43dcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dcff = call %struct.Memory* @routine_je_.L_43dd0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dcff, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43dcff, %struct.Memory** %MEMORY

  %loadBr_43dcff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dcff = icmp eq i8 %loadBr_43dcff, 1
  br i1 %cmpBr_43dcff, label %block_.L_43dd0a, label %block_.L_43dd05

  ; Code: .L_43dd05:	 RIP: 43dd05	 Bytes: 0
block_.L_43dd05:

  ; Code: jmpq .L_43dd94	 RIP: 43dd05	 Bytes: 5
  %loadMem_43dd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd05 = call %struct.Memory* @routine_jmpq_.L_43dd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd05, i64 143, i64 5)
  store %struct.Memory* %call_43dd05, %struct.Memory** %MEMORY

  br label %block_.L_43dd94

  ; Code: .L_43dd0a:	 RIP: 43dd0a	 Bytes: 0
block_.L_43dd0a:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43dd0a	 Bytes: 7
  %loadMem_43dd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd0a = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd0a)
  store %struct.Memory* %call_43dd0a, %struct.Memory** %MEMORY

  ; Code: .L_43dd11:	 RIP: 43dd11	 Bytes: 0
  br label %block_.L_43dd11
block_.L_43dd11:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 43dd11	 Bytes: 4
  %loadMem_43dd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd11 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd11)
  store %struct.Memory* %call_43dd11, %struct.Memory** %MEMORY

  ; Code: jge .L_43dd8f	 RIP: 43dd15	 Bytes: 6
  %loadMem_43dd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd15 = call %struct.Memory* @routine_jge_.L_43dd8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd15, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_43dd15, %struct.Memory** %MEMORY

  %loadBr_43dd15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd15 = icmp eq i8 %loadBr_43dd15, 1
  br i1 %cmpBr_43dd15, label %block_.L_43dd8f, label %block_43dd1b

block_43dd1b:
  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dd1b	 Bytes: 6
  %loadMem_43dd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd1b = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd1b)
  store %struct.Memory* %call_43dd1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dd21	 Bytes: 4
  %loadMem_43dd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd21 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd21)
  store %struct.Memory* %call_43dd21, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 43dd25	 Bytes: 7
  %loadMem_43dd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd25 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd25)
  store %struct.Memory* %call_43dd25, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 43dd2c	 Bytes: 3
  %loadMem_43dd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd2c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd2c)
  store %struct.Memory* %call_43dd2c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 43dd2f	 Bytes: 8
  %loadMem_43dd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd2f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd2f)
  store %struct.Memory* %call_43dd2f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 43dd37	 Bytes: 3
  %loadMem_43dd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd37 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd37)
  store %struct.Memory* %call_43dd37, %struct.Memory** %MEMORY

  ; Code: je .L_43dd7c	 RIP: 43dd3a	 Bytes: 6
  %loadMem_43dd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd3a = call %struct.Memory* @routine_je_.L_43dd7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd3a, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_43dd3a, %struct.Memory** %MEMORY

  %loadBr_43dd3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd3a = icmp eq i8 %loadBr_43dd3a, 1
  br i1 %cmpBr_43dd3a, label %block_.L_43dd7c, label %block_43dd40

block_43dd40:
  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dd40	 Bytes: 6
  %loadMem_43dd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd40 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd40)
  store %struct.Memory* %call_43dd40, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dd46	 Bytes: 4
  %loadMem_43dd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd46 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd46)
  store %struct.Memory* %call_43dd46, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 43dd4a	 Bytes: 7
  %loadMem_43dd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd4a = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd4a)
  store %struct.Memory* %call_43dd4a, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43dd51	 Bytes: 6
  %loadMem_43dd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd51 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd51)
  store %struct.Memory* %call_43dd51, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43dd57	 Bytes: 2
  %loadMem_43dd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd57 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd57)
  store %struct.Memory* %call_43dd57, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 43dd59	 Bytes: 5
  %loadMem1_43dd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dd59 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dd59, i64 -168617, i64 5, i64 5)
  store %struct.Memory* %call1_43dd59, %struct.Memory** %MEMORY

  %loadMem2_43dd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dd59 = load i64, i64* %3
  %call2_43dd59 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_43dd59, %struct.Memory* %loadMem2_43dd59)
  store %struct.Memory* %call2_43dd59, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43dd5e	 Bytes: 3
  %loadMem_43dd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd5e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd5e)
  store %struct.Memory* %call_43dd5e, %struct.Memory** %MEMORY

  ; Code: je .L_43dd7c	 RIP: 43dd61	 Bytes: 6
  %loadMem_43dd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd61 = call %struct.Memory* @routine_je_.L_43dd7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd61, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43dd61, %struct.Memory** %MEMORY

  %loadBr_43dd61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd61 = icmp eq i8 %loadBr_43dd61, 1
  br i1 %cmpBr_43dd61, label %block_.L_43dd7c, label %block_43dd67

block_43dd67:
  ; Code: movl $0x2, %esi	 RIP: 43dd67	 Bytes: 5
  %loadMem_43dd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd67 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd67)
  store %struct.Memory* %call_43dd67, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %edi	 RIP: 43dd6c	 Bytes: 6
  %loadMem_43dd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd6c = call %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd6c)
  store %struct.Memory* %call_43dd6c, %struct.Memory** %MEMORY

  ; Code: callq .play_move	 RIP: 43dd72	 Bytes: 5
  %loadMem1_43dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dd72 = call %struct.Memory* @routine_callq_.play_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dd72, i64 -195170, i64 5, i64 5)
  store %struct.Memory* %call1_43dd72, %struct.Memory** %MEMORY

  %loadMem2_43dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dd72 = load i64, i64* %3
  %call2_43dd72 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64  %loadPC_43dd72, %struct.Memory* %loadMem2_43dd72)
  store %struct.Memory* %call2_43dd72, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dd8f	 RIP: 43dd77	 Bytes: 5
  %loadMem_43dd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd77 = call %struct.Memory* @routine_jmpq_.L_43dd8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd77, i64 24, i64 5)
  store %struct.Memory* %call_43dd77, %struct.Memory** %MEMORY

  br label %block_.L_43dd8f

  ; Code: .L_43dd7c:	 RIP: 43dd7c	 Bytes: 0
block_.L_43dd7c:

  ; Code: jmpq .L_43dd81	 RIP: 43dd7c	 Bytes: 5
  %loadMem_43dd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd7c = call %struct.Memory* @routine_jmpq_.L_43dd81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd7c, i64 5, i64 5)
  store %struct.Memory* %call_43dd7c, %struct.Memory** %MEMORY

  br label %block_.L_43dd81

  ; Code: .L_43dd81:	 RIP: 43dd81	 Bytes: 0
block_.L_43dd81:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43dd81	 Bytes: 3
  %loadMem_43dd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd81 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd81)
  store %struct.Memory* %call_43dd81, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dd84	 Bytes: 3
  %loadMem_43dd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd84 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd84)
  store %struct.Memory* %call_43dd84, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43dd87	 Bytes: 3
  %loadMem_43dd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd87 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd87)
  store %struct.Memory* %call_43dd87, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dd11	 RIP: 43dd8a	 Bytes: 5
  %loadMem_43dd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd8a = call %struct.Memory* @routine_jmpq_.L_43dd11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd8a, i64 -121, i64 5)
  store %struct.Memory* %call_43dd8a, %struct.Memory** %MEMORY

  br label %block_.L_43dd11

  ; Code: .L_43dd8f:	 RIP: 43dd8f	 Bytes: 0
block_.L_43dd8f:

  ; Code: jmpq .L_43dd94	 RIP: 43dd8f	 Bytes: 5
  %loadMem_43dd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd8f = call %struct.Memory* @routine_jmpq_.L_43dd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd8f, i64 5, i64 5)
  store %struct.Memory* %call_43dd8f, %struct.Memory** %MEMORY

  br label %block_.L_43dd94

  ; Code: .L_43dd94:	 RIP: 43dd94	 Bytes: 0
block_.L_43dd94:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 43dd94	 Bytes: 6
  %loadMem_43dd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd94 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd94)
  store %struct.Memory* %call_43dd94, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dd9a	 Bytes: 3
  %loadMem_43dd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd9a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd9a)
  store %struct.Memory* %call_43dd9a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 43dd9d	 Bytes: 6
  %loadMem_43dd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dd9d = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dd9d)
  store %struct.Memory* %call_43dd9d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43dcae	 RIP: 43dda3	 Bytes: 5
  %loadMem_43dda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dda3 = call %struct.Memory* @routine_jmpq_.L_43dcae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dda3, i64 -245, i64 5)
  store %struct.Memory* %call_43dda3, %struct.Memory** %MEMORY

  br label %block_.L_43dcae

  ; Code: .L_43dda8:	 RIP: 43dda8	 Bytes: 0
block_.L_43dda8:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 43dda8	 Bytes: 8
  %loadMem_43dda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dda8 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dda8)
  store %struct.Memory* %call_43dda8, %struct.Memory** %MEMORY

  ; Code: je .L_43ddbd	 RIP: 43ddb0	 Bytes: 6
  %loadMem_43ddb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddb0 = call %struct.Memory* @routine_je_.L_43ddbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddb0, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43ddb0, %struct.Memory** %MEMORY

  %loadBr_43ddb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ddb0 = icmp eq i8 %loadBr_43ddb0, 1
  br i1 %cmpBr_43ddb0, label %block_.L_43ddbd, label %block_43ddb6

block_43ddb6:
  ; Code: xorl %edi, %edi	 RIP: 43ddb6	 Bytes: 2
  %loadMem_43ddb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddb6 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddb6)
  store %struct.Memory* %call_43ddb6, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43ddb8	 Bytes: 5
  %loadMem1_43ddb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43ddb8 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43ddb8, i64 225352, i64 5, i64 5)
  store %struct.Memory* %call1_43ddb8, %struct.Memory** %MEMORY

  %loadMem2_43ddb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ddb8 = load i64, i64* %3
  %call2_43ddb8 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43ddb8, %struct.Memory* %loadMem2_43ddb8)
  store %struct.Memory* %call2_43ddb8, %struct.Memory** %MEMORY

  ; Code: .L_43ddbd:	 RIP: 43ddbd	 Bytes: 0
  br label %block_.L_43ddbd
block_.L_43ddbd:

  ; Code: leaq -0x1998(%rbp), %rdi	 RIP: 43ddbd	 Bytes: 7
  %loadMem_43ddbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddbd = call %struct.Memory* @routine_leaq_MINUS0x1998__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddbd)
  store %struct.Memory* %call_43ddbd, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f28, %eax	 RIP: 43ddc4	 Bytes: 7
  %loadMem_43ddc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddc4 = call %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddc4)
  store %struct.Memory* %call_43ddc4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x67c(%rbp)	 RIP: 43ddcb	 Bytes: 6
  %loadMem_43ddcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddcb = call %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddcb)
  store %struct.Memory* %call_43ddcb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xab0f28	 RIP: 43ddd1	 Bytes: 11
  %loadMem_43ddd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddd1 = call %struct.Memory* @routine_movl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddd1)
  store %struct.Memory* %call_43ddd1, %struct.Memory** %MEMORY

  ; Code: callq .store_board	 RIP: 43dddc	 Bytes: 5
  %loadMem1_43dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dddc = call %struct.Memory* @routine_callq_.store_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dddc, i64 -221324, i64 5, i64 5)
  store %struct.Memory* %call1_43dddc, %struct.Memory** %MEMORY

  %loadMem2_43dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dddc = load i64, i64* %3
  %call2_43dddc = call %struct.Memory* @sub_407d50.store_board(%struct.State* %0, i64  %loadPC_43dddc, %struct.Memory* %loadMem2_43dddc)
  store %struct.Memory* %call2_43dddc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 43dde1	 Bytes: 5
  %loadMem_43dde1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dde1 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dde1)
  store %struct.Memory* %call_43dde1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 43dde6	 Bytes: 3
  %loadMem_43dde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dde6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dde6)
  store %struct.Memory* %call_43dde6, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43dde9	 Bytes: 2
  %loadMem_43dde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dde9 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dde9)
  store %struct.Memory* %call_43dde9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 43ddeb	 Bytes: 3
  %loadMem_43ddeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddeb = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddeb)
  store %struct.Memory* %call_43ddeb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43ddee	 Bytes: 7
  %loadMem_43ddee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddee = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddee)
  store %struct.Memory* %call_43ddee, %struct.Memory** %MEMORY

  ; Code: .L_43ddf5:	 RIP: 43ddf5	 Bytes: 0
  br label %block_.L_43ddf5
block_.L_43ddf5:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43ddf5	 Bytes: 3
  %loadMem_43ddf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddf5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddf5)
  store %struct.Memory* %call_43ddf5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 43ddf8	 Bytes: 3
  %loadMem_43ddf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddf8 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddf8)
  store %struct.Memory* %call_43ddf8, %struct.Memory** %MEMORY

  ; Code: jge .L_43e2ee	 RIP: 43ddfb	 Bytes: 6
  %loadMem_43ddfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ddfb = call %struct.Memory* @routine_jge_.L_43e2ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ddfb, i8* %BRANCH_TAKEN, i64 1267, i64 6, i64 6)
  store %struct.Memory* %call_43ddfb, %struct.Memory** %MEMORY

  %loadBr_43ddfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ddfb = icmp eq i8 %loadBr_43ddfb, 1
  br i1 %cmpBr_43ddfb, label %block_.L_43e2ee, label %block_43de01

block_43de01:
  ; Code: leaq -0x1998(%rbp), %rdi	 RIP: 43de01	 Bytes: 7
  %loadMem_43de01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de01 = call %struct.Memory* @routine_leaq_MINUS0x1998__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de01)
  store %struct.Memory* %call_43de01, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x199c(%rbp)	 RIP: 43de08	 Bytes: 10
  %loadMem_43de08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de08 = call %struct.Memory* @routine_movl__0x1__MINUS0x199c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de08)
  store %struct.Memory* %call_43de08, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x19a0(%rbp)	 RIP: 43de12	 Bytes: 10
  %loadMem_43de12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de12 = call %struct.Memory* @routine_movl__0x0__MINUS0x19a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de12)
  store %struct.Memory* %call_43de12, %struct.Memory** %MEMORY

  ; Code: callq .restore_board	 RIP: 43de1c	 Bytes: 5
  %loadMem1_43de1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43de1c = call %struct.Memory* @routine_callq_.restore_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43de1c, i64 -220956, i64 5, i64 5)
  store %struct.Memory* %call1_43de1c, %struct.Memory** %MEMORY

  %loadMem2_43de1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de1c = load i64, i64* %3
  %call2_43de1c = call %struct.Memory* @sub_407f00.restore_board(%struct.State* %0, i64  %loadPC_43de1c, %struct.Memory* %loadMem2_43de1c)
  store %struct.Memory* %call2_43de1c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43de21	 Bytes: 7
  %loadMem_43de21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de21 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de21)
  store %struct.Memory* %call_43de21, %struct.Memory** %MEMORY

  ; Code: .L_43de28:	 RIP: 43de28	 Bytes: 0
  br label %block_.L_43de28
block_.L_43de28:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43de28	 Bytes: 3
  %loadMem_43de28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de28 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de28)
  store %struct.Memory* %call_43de28, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 43de2b	 Bytes: 3
  %loadMem_43de2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de2b = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de2b)
  store %struct.Memory* %call_43de2b, %struct.Memory** %MEMORY

  ; Code: jge .L_43debe	 RIP: 43de2e	 Bytes: 6
  %loadMem_43de2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de2e = call %struct.Memory* @routine_jge_.L_43debe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de2e, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_43de2e, %struct.Memory** %MEMORY

  %loadBr_43de2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de2e = icmp eq i8 %loadBr_43de2e, 1
  br i1 %cmpBr_43de2e, label %block_.L_43debe, label %block_43de34

block_43de34:
  ; Code: movl $0x1, %eax	 RIP: 43de34	 Bytes: 5
  %loadMem_43de34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de34 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de34)
  store %struct.Memory* %call_43de34, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 43de39	 Bytes: 3
  %loadMem_43de39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de39 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de39)
  store %struct.Memory* %call_43de39, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 43de3c	 Bytes: 3
  %loadMem_43de3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de3c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de3c)
  store %struct.Memory* %call_43de3c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x19bc(%rbp)	 RIP: 43de3f	 Bytes: 6
  %loadMem_43de3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de3f = call %struct.Memory* @routine_movl__ecx__MINUS0x19bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de3f)
  store %struct.Memory* %call_43de3f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 43de45	 Bytes: 2
  %loadMem_43de45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de45 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de45)
  store %struct.Memory* %call_43de45, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43de47	 Bytes: 2
  %loadMem_43de47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de47 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de47)
  store %struct.Memory* %call_43de47, %struct.Memory** %MEMORY

  ; Code: movl -0x19bc(%rbp), %edx	 RIP: 43de49	 Bytes: 6
  %loadMem_43de49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de49 = call %struct.Memory* @routine_movl_MINUS0x19bc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de49)
  store %struct.Memory* %call_43de49, %struct.Memory** %MEMORY

  ; Code: andl %eax, %edx	 RIP: 43de4f	 Bytes: 2
  %loadMem_43de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de4f = call %struct.Memory* @routine_andl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de4f)
  store %struct.Memory* %call_43de4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43de51	 Bytes: 3
  %loadMem_43de51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de51 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de51)
  store %struct.Memory* %call_43de51, %struct.Memory** %MEMORY

  ; Code: je .L_43deab	 RIP: 43de54	 Bytes: 6
  %loadMem_43de54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de54 = call %struct.Memory* @routine_je_.L_43deab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de54, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_43de54, %struct.Memory** %MEMORY

  %loadBr_43de54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de54 = icmp eq i8 %loadBr_43de54, 1
  br i1 %cmpBr_43de54, label %block_.L_43deab, label %block_43de5a

block_43de5a:
  ; Code: movl $0x2, %esi	 RIP: 43de5a	 Bytes: 5
  %loadMem_43de5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de5a = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de5a)
  store %struct.Memory* %call_43de5a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43de5f	 Bytes: 4
  %loadMem_43de5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de5f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de5f)
  store %struct.Memory* %call_43de5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43de63	 Bytes: 4
  %loadMem_43de63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de63 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de63)
  store %struct.Memory* %call_43de63, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 43de67	 Bytes: 3
  %loadMem_43de67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de67 = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de67)
  store %struct.Memory* %call_43de67, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 43de6a	 Bytes: 5
  %loadMem1_43de6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43de6a = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43de6a, i64 -193434, i64 5, i64 5)
  store %struct.Memory* %call1_43de6a, %struct.Memory** %MEMORY

  %loadMem2_43de6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de6a = load i64, i64* %3
  %call2_43de6a = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_43de6a, %struct.Memory* %loadMem2_43de6a)
  store %struct.Memory* %call2_43de6a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43de6f	 Bytes: 3
  %loadMem_43de6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de6f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de6f)
  store %struct.Memory* %call_43de6f, %struct.Memory** %MEMORY

  ; Code: jne .L_43de87	 RIP: 43de72	 Bytes: 6
  %loadMem_43de72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de72 = call %struct.Memory* @routine_jne_.L_43de87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de72, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_43de72, %struct.Memory** %MEMORY

  %loadBr_43de72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de72 = icmp eq i8 %loadBr_43de72, 1
  br i1 %cmpBr_43de72, label %block_.L_43de87, label %block_43de78

block_43de78:
  ; Code: movl $0x0, -0x199c(%rbp)	 RIP: 43de78	 Bytes: 10
  %loadMem_43de78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de78 = call %struct.Memory* @routine_movl__0x0__MINUS0x199c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de78)
  store %struct.Memory* %call_43de78, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43debe	 RIP: 43de82	 Bytes: 5
  %loadMem_43de82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de82 = call %struct.Memory* @routine_jmpq_.L_43debe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de82, i64 60, i64 5)
  store %struct.Memory* %call_43de82, %struct.Memory** %MEMORY

  br label %block_.L_43debe

  ; Code: .L_43de87:	 RIP: 43de87	 Bytes: 0
block_.L_43de87:

  ; Code: movl $0x2, %esi	 RIP: 43de87	 Bytes: 5
  %loadMem_43de87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de87 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de87)
  store %struct.Memory* %call_43de87, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43de8c	 Bytes: 4
  %loadMem_43de8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de8c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de8c)
  store %struct.Memory* %call_43de8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43de90	 Bytes: 4
  %loadMem_43de90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de90 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de90)
  store %struct.Memory* %call_43de90, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 43de94	 Bytes: 3
  %loadMem_43de94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de94 = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de94)
  store %struct.Memory* %call_43de94, %struct.Memory** %MEMORY

  ; Code: callq .play_move	 RIP: 43de97	 Bytes: 5
  %loadMem1_43de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43de97 = call %struct.Memory* @routine_callq_.play_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43de97, i64 -195463, i64 5, i64 5)
  store %struct.Memory* %call1_43de97, %struct.Memory** %MEMORY

  %loadMem2_43de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de97 = load i64, i64* %3
  %call2_43de97 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64  %loadPC_43de97, %struct.Memory* %loadMem2_43de97)
  store %struct.Memory* %call2_43de97, %struct.Memory** %MEMORY

  ; Code: movl -0x19a0(%rbp), %esi	 RIP: 43de9c	 Bytes: 6
  %loadMem_43de9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43de9c = call %struct.Memory* @routine_movl_MINUS0x19a0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43de9c)
  store %struct.Memory* %call_43de9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 43dea2	 Bytes: 3
  %loadMem_43dea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dea2 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dea2)
  store %struct.Memory* %call_43dea2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x19a0(%rbp)	 RIP: 43dea5	 Bytes: 6
  %loadMem_43dea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dea5 = call %struct.Memory* @routine_movl__esi__MINUS0x19a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dea5)
  store %struct.Memory* %call_43dea5, %struct.Memory** %MEMORY

  ; Code: .L_43deab:	 RIP: 43deab	 Bytes: 0
  br label %block_.L_43deab
block_.L_43deab:

  ; Code: jmpq .L_43deb0	 RIP: 43deab	 Bytes: 5
  %loadMem_43deab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43deab = call %struct.Memory* @routine_jmpq_.L_43deb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43deab, i64 5, i64 5)
  store %struct.Memory* %call_43deab, %struct.Memory** %MEMORY

  br label %block_.L_43deb0

  ; Code: .L_43deb0:	 RIP: 43deb0	 Bytes: 0
block_.L_43deb0:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43deb0	 Bytes: 3
  %loadMem_43deb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43deb0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43deb0)
  store %struct.Memory* %call_43deb0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43deb3	 Bytes: 3
  %loadMem_43deb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43deb3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43deb3)
  store %struct.Memory* %call_43deb3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43deb6	 Bytes: 3
  %loadMem_43deb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43deb6 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43deb6)
  store %struct.Memory* %call_43deb6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43de28	 RIP: 43deb9	 Bytes: 5
  %loadMem_43deb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43deb9 = call %struct.Memory* @routine_jmpq_.L_43de28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43deb9, i64 -145, i64 5)
  store %struct.Memory* %call_43deb9, %struct.Memory** %MEMORY

  br label %block_.L_43de28

  ; Code: .L_43debe:	 RIP: 43debe	 Bytes: 0
block_.L_43debe:

  ; Code: cmpl $0x0, -0x199c(%rbp)	 RIP: 43debe	 Bytes: 7
  %loadMem_43debe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43debe = call %struct.Memory* @routine_cmpl__0x0__MINUS0x199c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43debe)
  store %struct.Memory* %call_43debe, %struct.Memory** %MEMORY

  ; Code: jne .L_43ded0	 RIP: 43dec5	 Bytes: 6
  %loadMem_43dec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dec5 = call %struct.Memory* @routine_jne_.L_43ded0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dec5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43dec5, %struct.Memory** %MEMORY

  %loadBr_43dec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dec5 = icmp eq i8 %loadBr_43dec5, 1
  br i1 %cmpBr_43dec5, label %block_.L_43ded0, label %block_43decb

block_43decb:
  ; Code: jmpq .L_43e2e0	 RIP: 43decb	 Bytes: 5
  %loadMem_43decb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43decb = call %struct.Memory* @routine_jmpq_.L_43e2e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43decb, i64 1045, i64 5)
  store %struct.Memory* %call_43decb, %struct.Memory** %MEMORY

  br label %block_.L_43e2e0

  ; Code: .L_43ded0:	 RIP: 43ded0	 Bytes: 0
block_.L_43ded0:

  ; Code: cmpl $0x1, -0x67c(%rbp)	 RIP: 43ded0	 Bytes: 7
  %loadMem_43ded0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ded0 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ded0)
  store %struct.Memory* %call_43ded0, %struct.Memory** %MEMORY

  ; Code: jle .L_43dee4	 RIP: 43ded7	 Bytes: 6
  %loadMem_43ded7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ded7 = call %struct.Memory* @routine_jle_.L_43dee4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ded7, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43ded7, %struct.Memory** %MEMORY

  %loadBr_43ded7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ded7 = icmp eq i8 %loadBr_43ded7, 1
  br i1 %cmpBr_43ded7, label %block_.L_43dee4, label %block_43dedd

block_43dedd:
  ; Code: xorl %edi, %edi	 RIP: 43dedd	 Bytes: 2
  %loadMem_43dedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dedd = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dedd)
  store %struct.Memory* %call_43dedd, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43dedf	 Bytes: 5
  %loadMem1_43dedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dedf = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dedf, i64 225057, i64 5, i64 5)
  store %struct.Memory* %call1_43dedf, %struct.Memory** %MEMORY

  %loadMem2_43dedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dedf = load i64, i64* %3
  %call2_43dedf = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43dedf, %struct.Memory* %loadMem2_43dedf)
  store %struct.Memory* %call2_43dedf, %struct.Memory** %MEMORY

  ; Code: .L_43dee4:	 RIP: 43dee4	 Bytes: 0
  br label %block_.L_43dee4
block_.L_43dee4:

  ; Code: movl $0x1, %edi	 RIP: 43dee4	 Bytes: 5
  %loadMem_43dee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dee4 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dee4)
  store %struct.Memory* %call_43dee4, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %esi	 RIP: 43dee9	 Bytes: 5
  %loadMem_43dee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dee9 = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dee9)
  store %struct.Memory* %call_43dee9, %struct.Memory** %MEMORY

  ; Code: callq .examine_position	 RIP: 43deee	 Bytes: 5
  %loadMem1_43deee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43deee = call %struct.Memory* @routine_callq_.examine_position(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43deee, i64 -98958, i64 5, i64 5)
  store %struct.Memory* %call1_43deee, %struct.Memory** %MEMORY

  %loadMem2_43deee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43deee = load i64, i64* %3
  %call2_43deee = call %struct.Memory* @sub_425c60.examine_position(%struct.State* %0, i64  %loadPC_43deee, %struct.Memory* %loadMem2_43deee)
  store %struct.Memory* %call2_43deee, %struct.Memory** %MEMORY

  ; Code: leaq -0x670(%rbp), %rsi	 RIP: 43def3	 Bytes: 7
  %loadMem_43def3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43def3 = call %struct.Memory* @routine_leaq_MINUS0x670__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43def3)
  store %struct.Memory* %call_43def3, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43defa	 Bytes: 2
  %loadMem_43defa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43defa = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43defa)
  store %struct.Memory* %call_43defa, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 43defc	 Bytes: 2
  %loadMem_43defc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43defc = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43defc)
  store %struct.Memory* %call_43defc, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %edi	 RIP: 43defe	 Bytes: 6
  %loadMem_43defe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43defe = call %struct.Memory* @routine_movl_MINUS0x668__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43defe)
  store %struct.Memory* %call_43defe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 43df04	 Bytes: 3
  %loadMem_43df04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df04 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df04)
  store %struct.Memory* %call_43df04, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 43df07	 Bytes: 3
  %loadMem_43df07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df07 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df07)
  store %struct.Memory* %call_43df07, %struct.Memory** %MEMORY

  ; Code: callq .owl_attack	 RIP: 43df0a	 Bytes: 5
  %loadMem1_43df0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43df0a = call %struct.Memory* @routine_callq_.owl_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43df0a, i64 35334, i64 5, i64 5)
  store %struct.Memory* %call1_43df0a, %struct.Memory** %MEMORY

  %loadMem2_43df0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df0a = load i64, i64* %3
  %call2_43df0a = call %struct.Memory* @sub_446910.owl_attack(%struct.State* %0, i64  %loadPC_43df0a, %struct.Memory* %loadMem2_43df0a)
  store %struct.Memory* %call2_43df0a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x66c(%rbp)	 RIP: 43df0f	 Bytes: 6
  %loadMem_43df0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df0f = call %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df0f)
  store %struct.Memory* %call_43df0f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x66c(%rbp)	 RIP: 43df15	 Bytes: 7
  %loadMem_43df15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df15 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x66c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df15)
  store %struct.Memory* %call_43df15, %struct.Memory** %MEMORY

  ; Code: jne .L_43e094	 RIP: 43df1c	 Bytes: 6
  %loadMem_43df1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df1c = call %struct.Memory* @routine_jne_.L_43e094(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df1c, i8* %BRANCH_TAKEN, i64 376, i64 6, i64 6)
  store %struct.Memory* %call_43df1c, %struct.Memory** %MEMORY

  %loadBr_43df1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df1c = icmp eq i8 %loadBr_43df1c, 1
  br i1 %cmpBr_43df1c, label %block_.L_43e094, label %block_43df22

block_43df22:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43df22	 Bytes: 7
  %loadMem_43df22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df22 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df22)
  store %struct.Memory* %call_43df22, %struct.Memory** %MEMORY

  ; Code: .L_43df29:	 RIP: 43df29	 Bytes: 0
  br label %block_.L_43df29
block_.L_43df29:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43df29	 Bytes: 3
  %loadMem_43df29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df29 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df29)
  store %struct.Memory* %call_43df29, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 43df2c	 Bytes: 3
  %loadMem_43df2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df2c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df2c)
  store %struct.Memory* %call_43df2c, %struct.Memory** %MEMORY

  ; Code: jge .L_43dfec	 RIP: 43df2f	 Bytes: 6
  %loadMem_43df2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df2f = call %struct.Memory* @routine_jge_.L_43dfec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df2f, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_43df2f, %struct.Memory** %MEMORY

  %loadBr_43df2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df2f = icmp eq i8 %loadBr_43df2f, 1
  br i1 %cmpBr_43df2f, label %block_.L_43dfec, label %block_43df35

block_43df35:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43df35	 Bytes: 4
  %loadMem_43df35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df35 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df35)
  store %struct.Memory* %call_43df35, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43df39	 Bytes: 4
  %loadMem_43df39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df39 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df39)
  store %struct.Memory* %call_43df39, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 43df3d	 Bytes: 4
  %loadMem_43df3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df3d = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df3d)
  store %struct.Memory* %call_43df3d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 43df41	 Bytes: 8
  %loadMem_43df41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df41 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df41)
  store %struct.Memory* %call_43df41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43df49	 Bytes: 3
  %loadMem_43df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df49 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df49)
  store %struct.Memory* %call_43df49, %struct.Memory** %MEMORY

  ; Code: jne .L_43dfd9	 RIP: 43df4c	 Bytes: 6
  %loadMem_43df4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df4c = call %struct.Memory* @routine_jne_.L_43dfd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df4c, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_43df4c, %struct.Memory** %MEMORY

  %loadBr_43df4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df4c = icmp eq i8 %loadBr_43df4c, 1
  br i1 %cmpBr_43df4c, label %block_.L_43dfd9, label %block_43df52

block_43df52:
  ; Code: movl $0x2, %esi	 RIP: 43df52	 Bytes: 5
  %loadMem_43df52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df52 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df52)
  store %struct.Memory* %call_43df52, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43df57	 Bytes: 4
  %loadMem_43df57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df57)
  store %struct.Memory* %call_43df57, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43df5b	 Bytes: 4
  %loadMem_43df5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df5b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df5b)
  store %struct.Memory* %call_43df5b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 43df5f	 Bytes: 3
  %loadMem_43df5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df5f = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df5f)
  store %struct.Memory* %call_43df5f, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 43df62	 Bytes: 5
  %loadMem1_43df62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43df62 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43df62, i64 -193682, i64 5, i64 5)
  store %struct.Memory* %call1_43df62, %struct.Memory** %MEMORY

  %loadMem2_43df62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df62 = load i64, i64* %3
  %call2_43df62 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_43df62, %struct.Memory* %loadMem2_43df62)
  store %struct.Memory* %call2_43df62, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43df67	 Bytes: 3
  %loadMem_43df67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df67 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df67)
  store %struct.Memory* %call_43df67, %struct.Memory** %MEMORY

  ; Code: je .L_43dfd9	 RIP: 43df6a	 Bytes: 6
  %loadMem_43df6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df6a = call %struct.Memory* @routine_je_.L_43dfd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df6a, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_43df6a, %struct.Memory** %MEMORY

  %loadBr_43df6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df6a = icmp eq i8 %loadBr_43df6a, 1
  br i1 %cmpBr_43df6a, label %block_.L_43dfd9, label %block_43df70

block_43df70:
  ; Code: xorl %eax, %eax	 RIP: 43df70	 Bytes: 2
  %loadMem_43df70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df70 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df70)
  store %struct.Memory* %call_43df70, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43df72	 Bytes: 2
  %loadMem_43df72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df72 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df72)
  store %struct.Memory* %call_43df72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43df74	 Bytes: 4
  %loadMem_43df74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df74)
  store %struct.Memory* %call_43df74, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 43df78	 Bytes: 4
  %loadMem_43df78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df78 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df78)
  store %struct.Memory* %call_43df78, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %edi	 RIP: 43df7c	 Bytes: 3
  %loadMem_43df7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df7c = call %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df7c)
  store %struct.Memory* %call_43df7c, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43df7f	 Bytes: 6
  %loadMem_43df7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df7f = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df7f)
  store %struct.Memory* %call_43df7f, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_attack	 RIP: 43df85	 Bytes: 5
  %loadMem1_43df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43df85 = call %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43df85, i64 60331, i64 5, i64 5)
  store %struct.Memory* %call1_43df85, %struct.Memory** %MEMORY

  %loadMem2_43df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df85 = load i64, i64* %3
  %call2_43df85 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64  %loadPC_43df85, %struct.Memory* %loadMem2_43df85)
  store %struct.Memory* %call2_43df85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43df8a	 Bytes: 3
  %loadMem_43df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df8a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df8a)
  store %struct.Memory* %call_43df8a, %struct.Memory** %MEMORY

  ; Code: je .L_43dfd9	 RIP: 43df8d	 Bytes: 6
  %loadMem_43df8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df8d = call %struct.Memory* @routine_je_.L_43dfd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df8d, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_43df8d, %struct.Memory** %MEMORY

  %loadBr_43df8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df8d = icmp eq i8 %loadBr_43df8d, 1
  br i1 %cmpBr_43df8d, label %block_.L_43dfd9, label %block_43df93

block_43df93:
  ; Code: movq $0x57dbe7, %rdi	 RIP: 43df93	 Bytes: 10
  %loadMem_43df93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df93 = call %struct.Memory* @routine_movq__0x57dbe7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df93)
  store %struct.Memory* %call_43df93, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43df9d	 Bytes: 6
  %loadMem_43df9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43df9d = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43df9d)
  store %struct.Memory* %call_43df9d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43dfa3	 Bytes: 4
  %loadMem_43dfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfa3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfa3)
  store %struct.Memory* %call_43dfa3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43dfa7	 Bytes: 4
  %loadMem_43dfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfa7 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfa7)
  store %struct.Memory* %call_43dfa7, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 43dfab	 Bytes: 3
  %loadMem_43dfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfab = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfab)
  store %struct.Memory* %call_43dfab, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43dfae	 Bytes: 2
  %loadMem_43dfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfae = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfae)
  store %struct.Memory* %call_43dfae, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43dfb0	 Bytes: 5
  %loadMem1_43dfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dfb0 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dfb0, i64 81408, i64 5, i64 5)
  store %struct.Memory* %call1_43dfb0, %struct.Memory** %MEMORY

  %loadMem2_43dfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfb0 = load i64, i64* %3
  %call2_43dfb0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43dfb0, %struct.Memory* %loadMem2_43dfb0)
  store %struct.Memory* %call2_43dfb0, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43dfb5	 Bytes: 2
  %loadMem_43dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfb5 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfb5)
  store %struct.Memory* %call_43dfb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c0(%rbp)	 RIP: 43dfb7	 Bytes: 6
  %loadMem_43dfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfb7 = call %struct.Memory* @routine_movl__eax__MINUS0x19c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfb7)
  store %struct.Memory* %call_43dfb7, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43dfbd	 Bytes: 5
  %loadMem1_43dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dfbd = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dfbd, i64 224835, i64 5, i64 5)
  store %struct.Memory* %call1_43dfbd, %struct.Memory** %MEMORY

  %loadMem2_43dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfbd = load i64, i64* %3
  %call2_43dfbd = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43dfbd, %struct.Memory* %loadMem2_43dfbd)
  store %struct.Memory* %call2_43dfbd, %struct.Memory** %MEMORY

  ; Code: movq $0x586073, %rdi	 RIP: 43dfc2	 Bytes: 10
  %loadMem_43dfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfc2 = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfc2)
  store %struct.Memory* %call_43dfc2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43dfcc	 Bytes: 2
  %loadMem_43dfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfcc = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfcc)
  store %struct.Memory* %call_43dfcc, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43dfce	 Bytes: 5
  %loadMem1_43dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43dfce = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43dfce, i64 81378, i64 5, i64 5)
  store %struct.Memory* %call1_43dfce, %struct.Memory** %MEMORY

  %loadMem2_43dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfce = load i64, i64* %3
  %call2_43dfce = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43dfce, %struct.Memory* %loadMem2_43dfce)
  store %struct.Memory* %call2_43dfce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c4(%rbp)	 RIP: 43dfd3	 Bytes: 6
  %loadMem_43dfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfd3 = call %struct.Memory* @routine_movl__eax__MINUS0x19c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfd3)
  store %struct.Memory* %call_43dfd3, %struct.Memory** %MEMORY

  ; Code: .L_43dfd9:	 RIP: 43dfd9	 Bytes: 0
  br label %block_.L_43dfd9
block_.L_43dfd9:

  ; Code: jmpq .L_43dfde	 RIP: 43dfd9	 Bytes: 5
  %loadMem_43dfd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfd9 = call %struct.Memory* @routine_jmpq_.L_43dfde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfd9, i64 5, i64 5)
  store %struct.Memory* %call_43dfd9, %struct.Memory** %MEMORY

  br label %block_.L_43dfde

  ; Code: .L_43dfde:	 RIP: 43dfde	 Bytes: 0
block_.L_43dfde:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43dfde	 Bytes: 3
  %loadMem_43dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfde = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfde)
  store %struct.Memory* %call_43dfde, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43dfe1	 Bytes: 3
  %loadMem_43dfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfe1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfe1)
  store %struct.Memory* %call_43dfe1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43dfe4	 Bytes: 3
  %loadMem_43dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfe4 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfe4)
  store %struct.Memory* %call_43dfe4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43df29	 RIP: 43dfe7	 Bytes: 5
  %loadMem_43dfe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfe7 = call %struct.Memory* @routine_jmpq_.L_43df29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfe7, i64 -190, i64 5)
  store %struct.Memory* %call_43dfe7, %struct.Memory** %MEMORY

  br label %block_.L_43df29

  ; Code: .L_43dfec:	 RIP: 43dfec	 Bytes: 0
block_.L_43dfec:

  ; Code: movl -0x19a0(%rbp), %eax	 RIP: 43dfec	 Bytes: 6
  %loadMem_43dfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dfec = call %struct.Memory* @routine_movl_MINUS0x19a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dfec)
  store %struct.Memory* %call_43dfec, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 43dff2	 Bytes: 3
  %loadMem_43dff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dff2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dff2)
  store %struct.Memory* %call_43dff2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 43dff5	 Bytes: 3
  %loadMem_43dff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dff5 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dff5)
  store %struct.Memory* %call_43dff5, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43dff8	 Bytes: 2
  %loadMem_43dff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dff8 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dff8)
  store %struct.Memory* %call_43dff8, %struct.Memory** %MEMORY

  ; Code: jne .L_43e08f	 RIP: 43dffa	 Bytes: 6
  %loadMem_43dffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43dffa = call %struct.Memory* @routine_jne_.L_43e08f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43dffa, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_43dffa, %struct.Memory** %MEMORY

  %loadBr_43dffa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dffa = icmp eq i8 %loadBr_43dffa, 1
  br i1 %cmpBr_43dffa, label %block_.L_43e08f, label %block_43e000

block_43e000:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43e000	 Bytes: 7
  %loadMem_43e000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e000 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e000)
  store %struct.Memory* %call_43e000, %struct.Memory** %MEMORY

  ; Code: .L_43e007:	 RIP: 43e007	 Bytes: 0
  br label %block_.L_43e007
block_.L_43e007:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43e007	 Bytes: 3
  %loadMem_43e007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e007 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e007)
  store %struct.Memory* %call_43e007, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 43e00a	 Bytes: 3
  %loadMem_43e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e00a = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e00a)
  store %struct.Memory* %call_43e00a, %struct.Memory** %MEMORY

  ; Code: jge .L_43e08a	 RIP: 43e00d	 Bytes: 6
  %loadMem_43e00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e00d = call %struct.Memory* @routine_jge_.L_43e08a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e00d, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_43e00d, %struct.Memory** %MEMORY

  %loadBr_43e00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e00d = icmp eq i8 %loadBr_43e00d, 1
  br i1 %cmpBr_43e00d, label %block_.L_43e08a, label %block_43e013

block_43e013:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43e013	 Bytes: 4
  %loadMem_43e013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e013 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e013)
  store %struct.Memory* %call_43e013, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43e017	 Bytes: 4
  %loadMem_43e017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e017 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e017)
  store %struct.Memory* %call_43e017, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 43e01b	 Bytes: 4
  %loadMem_43e01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e01b = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e01b)
  store %struct.Memory* %call_43e01b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 43e01f	 Bytes: 8
  %loadMem_43e01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e01f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e01f)
  store %struct.Memory* %call_43e01f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43e027	 Bytes: 3
  %loadMem_43e027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e027 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e027)
  store %struct.Memory* %call_43e027, %struct.Memory** %MEMORY

  ; Code: jne .L_43e077	 RIP: 43e02a	 Bytes: 6
  %loadMem_43e02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e02a = call %struct.Memory* @routine_jne_.L_43e077(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e02a, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_43e02a, %struct.Memory** %MEMORY

  %loadBr_43e02a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e02a = icmp eq i8 %loadBr_43e02a, 1
  br i1 %cmpBr_43e02a, label %block_.L_43e077, label %block_43e030

block_43e030:
  ; Code: xorl %eax, %eax	 RIP: 43e030	 Bytes: 2
  %loadMem_43e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e030 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e030)
  store %struct.Memory* %call_43e030, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43e032	 Bytes: 2
  %loadMem_43e032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e032 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e032)
  store %struct.Memory* %call_43e032, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e034	 Bytes: 4
  %loadMem_43e034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e034 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e034)
  store %struct.Memory* %call_43e034, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 43e038	 Bytes: 4
  %loadMem_43e038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e038 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e038)
  store %struct.Memory* %call_43e038, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %edi	 RIP: 43e03c	 Bytes: 3
  %loadMem_43e03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e03c = call %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e03c)
  store %struct.Memory* %call_43e03c, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e03f	 Bytes: 6
  %loadMem_43e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e03f = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e03f)
  store %struct.Memory* %call_43e03f, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 43e045	 Bytes: 5
  %loadMem1_43e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e045 = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e045, i64 58235, i64 5, i64 5)
  store %struct.Memory* %call1_43e045, %struct.Memory** %MEMORY

  %loadMem2_43e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e045 = load i64, i64* %3
  %call2_43e045 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_43e045, %struct.Memory* %loadMem2_43e045)
  store %struct.Memory* %call2_43e045, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e04a	 Bytes: 3
  %loadMem_43e04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e04a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e04a)
  store %struct.Memory* %call_43e04a, %struct.Memory** %MEMORY

  ; Code: jne .L_43e077	 RIP: 43e04d	 Bytes: 6
  %loadMem_43e04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e04d = call %struct.Memory* @routine_jne_.L_43e077(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e04d, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_43e04d, %struct.Memory** %MEMORY

  %loadBr_43e04d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e04d = icmp eq i8 %loadBr_43e04d, 1
  br i1 %cmpBr_43e04d, label %block_.L_43e077, label %block_43e053

block_43e053:
  ; Code: movq $0x57dc04, %rdi	 RIP: 43e053	 Bytes: 10
  %loadMem_43e053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e053 = call %struct.Memory* @routine_movq__0x57dc04___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e053)
  store %struct.Memory* %call_43e053, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e05d	 Bytes: 6
  %loadMem_43e05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e05d = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e05d)
  store %struct.Memory* %call_43e05d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e063	 Bytes: 2
  %loadMem_43e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e063 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e063)
  store %struct.Memory* %call_43e063, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e065	 Bytes: 5
  %loadMem1_43e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e065 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e065, i64 81227, i64 5, i64 5)
  store %struct.Memory* %call1_43e065, %struct.Memory** %MEMORY

  %loadMem2_43e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e065 = load i64, i64* %3
  %call2_43e065 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e065, %struct.Memory* %loadMem2_43e065)
  store %struct.Memory* %call2_43e065, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e06a	 Bytes: 2
  %loadMem_43e06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e06a = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e06a)
  store %struct.Memory* %call_43e06a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c8(%rbp)	 RIP: 43e06c	 Bytes: 6
  %loadMem_43e06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e06c = call %struct.Memory* @routine_movl__eax__MINUS0x19c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e06c)
  store %struct.Memory* %call_43e06c, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e072	 Bytes: 5
  %loadMem1_43e072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e072 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e072, i64 224654, i64 5, i64 5)
  store %struct.Memory* %call1_43e072, %struct.Memory** %MEMORY

  %loadMem2_43e072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e072 = load i64, i64* %3
  %call2_43e072 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e072, %struct.Memory* %loadMem2_43e072)
  store %struct.Memory* %call2_43e072, %struct.Memory** %MEMORY

  ; Code: .L_43e077:	 RIP: 43e077	 Bytes: 0
  br label %block_.L_43e077
block_.L_43e077:

  ; Code: jmpq .L_43e07c	 RIP: 43e077	 Bytes: 5
  %loadMem_43e077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e077 = call %struct.Memory* @routine_jmpq_.L_43e07c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e077, i64 5, i64 5)
  store %struct.Memory* %call_43e077, %struct.Memory** %MEMORY

  br label %block_.L_43e07c

  ; Code: .L_43e07c:	 RIP: 43e07c	 Bytes: 0
block_.L_43e07c:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43e07c	 Bytes: 3
  %loadMem_43e07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e07c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e07c)
  store %struct.Memory* %call_43e07c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e07f	 Bytes: 3
  %loadMem_43e07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e07f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e07f)
  store %struct.Memory* %call_43e07f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43e082	 Bytes: 3
  %loadMem_43e082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e082 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e082)
  store %struct.Memory* %call_43e082, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e007	 RIP: 43e085	 Bytes: 5
  %loadMem_43e085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e085 = call %struct.Memory* @routine_jmpq_.L_43e007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e085, i64 -126, i64 5)
  store %struct.Memory* %call_43e085, %struct.Memory** %MEMORY

  br label %block_.L_43e007

  ; Code: .L_43e08a:	 RIP: 43e08a	 Bytes: 0
block_.L_43e08a:

  ; Code: jmpq .L_43e08f	 RIP: 43e08a	 Bytes: 5
  %loadMem_43e08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e08a = call %struct.Memory* @routine_jmpq_.L_43e08f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e08a, i64 5, i64 5)
  store %struct.Memory* %call_43e08a, %struct.Memory** %MEMORY

  br label %block_.L_43e08f

  ; Code: .L_43e08f:	 RIP: 43e08f	 Bytes: 0
block_.L_43e08f:

  ; Code: jmpq .L_43e2db	 RIP: 43e08f	 Bytes: 5
  %loadMem_43e08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e08f = call %struct.Memory* @routine_jmpq_.L_43e2db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e08f, i64 588, i64 5)
  store %struct.Memory* %call_43e08f, %struct.Memory** %MEMORY

  br label %block_.L_43e2db

  ; Code: .L_43e094:	 RIP: 43e094	 Bytes: 0
block_.L_43e094:

  ; Code: leaq -0x678(%rbp), %rsi	 RIP: 43e094	 Bytes: 7
  %loadMem_43e094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e094 = call %struct.Memory* @routine_leaq_MINUS0x678__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e094)
  store %struct.Memory* %call_43e094, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 43e09b	 Bytes: 2
  %loadMem_43e09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e09b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e09b)
  store %struct.Memory* %call_43e09b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 43e09d	 Bytes: 2
  %loadMem_43e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e09d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e09d)
  store %struct.Memory* %call_43e09d, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %edi	 RIP: 43e09f	 Bytes: 6
  %loadMem_43e09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e09f = call %struct.Memory* @routine_movl_MINUS0x668__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e09f)
  store %struct.Memory* %call_43e09f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 43e0a5	 Bytes: 3
  %loadMem_43e0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0a5 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0a5)
  store %struct.Memory* %call_43e0a5, %struct.Memory** %MEMORY

  ; Code: callq .owl_defend	 RIP: 43e0a8	 Bytes: 5
  %loadMem1_43e0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e0a8 = call %struct.Memory* @routine_callq_.owl_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e0a8, i64 51736, i64 5, i64 5)
  store %struct.Memory* %call1_43e0a8, %struct.Memory** %MEMORY

  %loadMem2_43e0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e0a8 = load i64, i64* %3
  %call2_43e0a8 = call %struct.Memory* @sub_44aac0.owl_defend(%struct.State* %0, i64  %loadPC_43e0a8, %struct.Memory* %loadMem2_43e0a8)
  store %struct.Memory* %call2_43e0a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x674(%rbp)	 RIP: 43e0ad	 Bytes: 6
  %loadMem_43e0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0ad = call %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0ad)
  store %struct.Memory* %call_43e0ad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x674(%rbp)	 RIP: 43e0b3	 Bytes: 7
  %loadMem_43e0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0b3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0b3)
  store %struct.Memory* %call_43e0b3, %struct.Memory** %MEMORY

  ; Code: jne .L_43e18f	 RIP: 43e0ba	 Bytes: 6
  %loadMem_43e0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0ba = call %struct.Memory* @routine_jne_.L_43e18f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0ba, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_43e0ba, %struct.Memory** %MEMORY

  %loadBr_43e0ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0ba = icmp eq i8 %loadBr_43e0ba, 1
  br i1 %cmpBr_43e0ba, label %block_.L_43e18f, label %block_43e0c0

block_43e0c0:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43e0c0	 Bytes: 7
  %loadMem_43e0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0c0 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0c0)
  store %struct.Memory* %call_43e0c0, %struct.Memory** %MEMORY

  ; Code: .L_43e0c7:	 RIP: 43e0c7	 Bytes: 0
  br label %block_.L_43e0c7
block_.L_43e0c7:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43e0c7	 Bytes: 3
  %loadMem_43e0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0c7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0c7)
  store %struct.Memory* %call_43e0c7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 43e0ca	 Bytes: 3
  %loadMem_43e0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0ca = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0ca)
  store %struct.Memory* %call_43e0ca, %struct.Memory** %MEMORY

  ; Code: jge .L_43e18a	 RIP: 43e0cd	 Bytes: 6
  %loadMem_43e0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0cd = call %struct.Memory* @routine_jge_.L_43e18a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0cd, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_43e0cd, %struct.Memory** %MEMORY

  %loadBr_43e0cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0cd = icmp eq i8 %loadBr_43e0cd, 1
  br i1 %cmpBr_43e0cd, label %block_.L_43e18a, label %block_43e0d3

block_43e0d3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 43e0d3	 Bytes: 4
  %loadMem_43e0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0d3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0d3)
  store %struct.Memory* %call_43e0d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43e0d7	 Bytes: 4
  %loadMem_43e0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0d7 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0d7)
  store %struct.Memory* %call_43e0d7, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 43e0db	 Bytes: 4
  %loadMem_43e0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0db = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0db)
  store %struct.Memory* %call_43e0db, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 43e0df	 Bytes: 8
  %loadMem_43e0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0df = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0df)
  store %struct.Memory* %call_43e0df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43e0e7	 Bytes: 3
  %loadMem_43e0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0e7 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0e7)
  store %struct.Memory* %call_43e0e7, %struct.Memory** %MEMORY

  ; Code: jne .L_43e177	 RIP: 43e0ea	 Bytes: 6
  %loadMem_43e0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0ea = call %struct.Memory* @routine_jne_.L_43e177(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0ea, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_43e0ea, %struct.Memory** %MEMORY

  %loadBr_43e0ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0ea = icmp eq i8 %loadBr_43e0ea, 1
  br i1 %cmpBr_43e0ea, label %block_.L_43e177, label %block_43e0f0

block_43e0f0:
  ; Code: movl $0x1, %esi	 RIP: 43e0f0	 Bytes: 5
  %loadMem_43e0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0f0 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0f0)
  store %struct.Memory* %call_43e0f0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43e0f5	 Bytes: 4
  %loadMem_43e0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0f5)
  store %struct.Memory* %call_43e0f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43e0f9	 Bytes: 4
  %loadMem_43e0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0f9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0f9)
  store %struct.Memory* %call_43e0f9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 43e0fd	 Bytes: 3
  %loadMem_43e0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e0fd = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e0fd)
  store %struct.Memory* %call_43e0fd, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 43e100	 Bytes: 5
  %loadMem1_43e100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e100 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e100, i64 -194096, i64 5, i64 5)
  store %struct.Memory* %call1_43e100, %struct.Memory** %MEMORY

  %loadMem2_43e100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e100 = load i64, i64* %3
  %call2_43e100 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_43e100, %struct.Memory* %loadMem2_43e100)
  store %struct.Memory* %call2_43e100, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e105	 Bytes: 3
  %loadMem_43e105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e105 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e105)
  store %struct.Memory* %call_43e105, %struct.Memory** %MEMORY

  ; Code: je .L_43e177	 RIP: 43e108	 Bytes: 6
  %loadMem_43e108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e108 = call %struct.Memory* @routine_je_.L_43e177(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e108, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_43e108, %struct.Memory** %MEMORY

  %loadBr_43e108 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e108 = icmp eq i8 %loadBr_43e108, 1
  br i1 %cmpBr_43e108, label %block_.L_43e177, label %block_43e10e

block_43e10e:
  ; Code: xorl %eax, %eax	 RIP: 43e10e	 Bytes: 2
  %loadMem_43e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e10e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e10e)
  store %struct.Memory* %call_43e10e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43e110	 Bytes: 2
  %loadMem_43e110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e110 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e110)
  store %struct.Memory* %call_43e110, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 43e112	 Bytes: 4
  %loadMem_43e112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e112 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e112)
  store %struct.Memory* %call_43e112, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 43e116	 Bytes: 4
  %loadMem_43e116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e116 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e116)
  store %struct.Memory* %call_43e116, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %edi	 RIP: 43e11a	 Bytes: 3
  %loadMem_43e11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e11a = call %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e11a)
  store %struct.Memory* %call_43e11a, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e11d	 Bytes: 6
  %loadMem_43e11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e11d = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e11d)
  store %struct.Memory* %call_43e11d, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 43e123	 Bytes: 5
  %loadMem1_43e123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e123 = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e123, i64 58013, i64 5, i64 5)
  store %struct.Memory* %call1_43e123, %struct.Memory** %MEMORY

  %loadMem2_43e123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e123 = load i64, i64* %3
  %call2_43e123 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_43e123, %struct.Memory* %loadMem2_43e123)
  store %struct.Memory* %call2_43e123, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e128	 Bytes: 3
  %loadMem_43e128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e128 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e128)
  store %struct.Memory* %call_43e128, %struct.Memory** %MEMORY

  ; Code: je .L_43e177	 RIP: 43e12b	 Bytes: 6
  %loadMem_43e12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e12b = call %struct.Memory* @routine_je_.L_43e177(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e12b, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_43e12b, %struct.Memory** %MEMORY

  %loadBr_43e12b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e12b = icmp eq i8 %loadBr_43e12b, 1
  br i1 %cmpBr_43e12b, label %block_.L_43e177, label %block_43e131

block_43e131:
  ; Code: movq $0x57dc2f, %rdi	 RIP: 43e131	 Bytes: 10
  %loadMem_43e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e131 = call %struct.Memory* @routine_movq__0x57dc2f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e131)
  store %struct.Memory* %call_43e131, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e13b	 Bytes: 6
  %loadMem_43e13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e13b = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e13b)
  store %struct.Memory* %call_43e13b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43e141	 Bytes: 4
  %loadMem_43e141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e141 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e141)
  store %struct.Memory* %call_43e141, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43e145	 Bytes: 4
  %loadMem_43e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e145 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e145)
  store %struct.Memory* %call_43e145, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 43e149	 Bytes: 3
  %loadMem_43e149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e149 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e149)
  store %struct.Memory* %call_43e149, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e14c	 Bytes: 2
  %loadMem_43e14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e14c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e14c)
  store %struct.Memory* %call_43e14c, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e14e	 Bytes: 5
  %loadMem1_43e14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e14e = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e14e, i64 80994, i64 5, i64 5)
  store %struct.Memory* %call1_43e14e, %struct.Memory** %MEMORY

  %loadMem2_43e14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e14e = load i64, i64* %3
  %call2_43e14e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e14e, %struct.Memory* %loadMem2_43e14e)
  store %struct.Memory* %call2_43e14e, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e153	 Bytes: 2
  %loadMem_43e153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e153 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e153)
  store %struct.Memory* %call_43e153, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19cc(%rbp)	 RIP: 43e155	 Bytes: 6
  %loadMem_43e155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e155 = call %struct.Memory* @routine_movl__eax__MINUS0x19cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e155)
  store %struct.Memory* %call_43e155, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e15b	 Bytes: 5
  %loadMem1_43e15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e15b = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e15b, i64 224421, i64 5, i64 5)
  store %struct.Memory* %call1_43e15b, %struct.Memory** %MEMORY

  %loadMem2_43e15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e15b = load i64, i64* %3
  %call2_43e15b = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e15b, %struct.Memory* %loadMem2_43e15b)
  store %struct.Memory* %call2_43e15b, %struct.Memory** %MEMORY

  ; Code: movq $0x586073, %rdi	 RIP: 43e160	 Bytes: 10
  %loadMem_43e160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e160 = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e160)
  store %struct.Memory* %call_43e160, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e16a	 Bytes: 2
  %loadMem_43e16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e16a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e16a)
  store %struct.Memory* %call_43e16a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e16c	 Bytes: 5
  %loadMem1_43e16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e16c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e16c, i64 80964, i64 5, i64 5)
  store %struct.Memory* %call1_43e16c, %struct.Memory** %MEMORY

  %loadMem2_43e16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e16c = load i64, i64* %3
  %call2_43e16c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e16c, %struct.Memory* %loadMem2_43e16c)
  store %struct.Memory* %call2_43e16c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19d0(%rbp)	 RIP: 43e171	 Bytes: 6
  %loadMem_43e171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e171 = call %struct.Memory* @routine_movl__eax__MINUS0x19d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e171)
  store %struct.Memory* %call_43e171, %struct.Memory** %MEMORY

  ; Code: .L_43e177:	 RIP: 43e177	 Bytes: 0
  br label %block_.L_43e177
block_.L_43e177:

  ; Code: jmpq .L_43e17c	 RIP: 43e177	 Bytes: 5
  %loadMem_43e177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e177 = call %struct.Memory* @routine_jmpq_.L_43e17c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e177, i64 5, i64 5)
  store %struct.Memory* %call_43e177, %struct.Memory** %MEMORY

  br label %block_.L_43e17c

  ; Code: .L_43e17c:	 RIP: 43e17c	 Bytes: 0
block_.L_43e17c:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43e17c	 Bytes: 3
  %loadMem_43e17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e17c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e17c)
  store %struct.Memory* %call_43e17c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e17f	 Bytes: 3
  %loadMem_43e17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e17f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e17f)
  store %struct.Memory* %call_43e17f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43e182	 Bytes: 3
  %loadMem_43e182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e182 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e182)
  store %struct.Memory* %call_43e182, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e0c7	 RIP: 43e185	 Bytes: 5
  %loadMem_43e185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e185 = call %struct.Memory* @routine_jmpq_.L_43e0c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e185, i64 -190, i64 5)
  store %struct.Memory* %call_43e185, %struct.Memory** %MEMORY

  br label %block_.L_43e0c7

  ; Code: .L_43e18a:	 RIP: 43e18a	 Bytes: 0
block_.L_43e18a:

  ; Code: jmpq .L_43e2d6	 RIP: 43e18a	 Bytes: 5
  %loadMem_43e18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e18a = call %struct.Memory* @routine_jmpq_.L_43e2d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e18a, i64 332, i64 5)
  store %struct.Memory* %call_43e18a, %struct.Memory** %MEMORY

  br label %block_.L_43e2d6

  ; Code: .L_43e18f:	 RIP: 43e18f	 Bytes: 0
block_.L_43e18f:

  ; Code: movslq -0x670(%rbp), %rax	 RIP: 43e18f	 Bytes: 7
  %loadMem_43e18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e18f = call %struct.Memory* @routine_movslq_MINUS0x670__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e18f)
  store %struct.Memory* %call_43e18f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 43e196	 Bytes: 8
  %loadMem_43e196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e196 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e196)
  store %struct.Memory* %call_43e196, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43e19e	 Bytes: 3
  %loadMem_43e19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e19e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e19e)
  store %struct.Memory* %call_43e19e, %struct.Memory** %MEMORY

  ; Code: jne .L_43e1c0	 RIP: 43e1a1	 Bytes: 6
  %loadMem_43e1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1a1 = call %struct.Memory* @routine_jne_.L_43e1c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1a1, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43e1a1, %struct.Memory** %MEMORY

  %loadBr_43e1a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e1a1 = icmp eq i8 %loadBr_43e1a1, 1
  br i1 %cmpBr_43e1a1, label %block_.L_43e1c0, label %block_43e1a7

block_43e1a7:
  ; Code: movl $0x2, %esi	 RIP: 43e1a7	 Bytes: 5
  %loadMem_43e1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1a7 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1a7)
  store %struct.Memory* %call_43e1a7, %struct.Memory** %MEMORY

  ; Code: movl -0x670(%rbp), %edi	 RIP: 43e1ac	 Bytes: 6
  %loadMem_43e1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1ac = call %struct.Memory* @routine_movl_MINUS0x670__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1ac)
  store %struct.Memory* %call_43e1ac, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 43e1b2	 Bytes: 5
  %loadMem1_43e1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e1b2 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e1b2, i64 -194274, i64 5, i64 5)
  store %struct.Memory* %call1_43e1b2, %struct.Memory** %MEMORY

  %loadMem2_43e1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1b2 = load i64, i64* %3
  %call2_43e1b2 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_43e1b2, %struct.Memory* %loadMem2_43e1b2)
  store %struct.Memory* %call2_43e1b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e1b7	 Bytes: 3
  %loadMem_43e1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1b7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1b7)
  store %struct.Memory* %call_43e1b7, %struct.Memory** %MEMORY

  ; Code: jne .L_43e1e9	 RIP: 43e1ba	 Bytes: 6
  %loadMem_43e1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1ba = call %struct.Memory* @routine_jne_.L_43e1e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1ba, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43e1ba, %struct.Memory** %MEMORY

  %loadBr_43e1ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e1ba = icmp eq i8 %loadBr_43e1ba, 1
  br i1 %cmpBr_43e1ba, label %block_.L_43e1e9, label %block_.L_43e1c0

  ; Code: .L_43e1c0:	 RIP: 43e1c0	 Bytes: 0
block_.L_43e1c0:

  ; Code: movq $0x57dc4b, %rdi	 RIP: 43e1c0	 Bytes: 10
  %loadMem_43e1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1c0 = call %struct.Memory* @routine_movq__0x57dc4b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1c0)
  store %struct.Memory* %call_43e1c0, %struct.Memory** %MEMORY

  ; Code: movl -0x670(%rbp), %esi	 RIP: 43e1ca	 Bytes: 6
  %loadMem_43e1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1ca = call %struct.Memory* @routine_movl_MINUS0x670__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1ca)
  store %struct.Memory* %call_43e1ca, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e1d0	 Bytes: 2
  %loadMem_43e1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1d0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1d0)
  store %struct.Memory* %call_43e1d0, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e1d2	 Bytes: 5
  %loadMem1_43e1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e1d2 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e1d2, i64 80862, i64 5, i64 5)
  store %struct.Memory* %call1_43e1d2, %struct.Memory** %MEMORY

  %loadMem2_43e1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1d2 = load i64, i64* %3
  %call2_43e1d2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e1d2, %struct.Memory* %loadMem2_43e1d2)
  store %struct.Memory* %call2_43e1d2, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e1d7	 Bytes: 2
  %loadMem_43e1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1d7 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1d7)
  store %struct.Memory* %call_43e1d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19d4(%rbp)	 RIP: 43e1d9	 Bytes: 6
  %loadMem_43e1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1d9 = call %struct.Memory* @routine_movl__eax__MINUS0x19d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1d9)
  store %struct.Memory* %call_43e1d9, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e1df	 Bytes: 5
  %loadMem1_43e1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e1df = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e1df, i64 224289, i64 5, i64 5)
  store %struct.Memory* %call1_43e1df, %struct.Memory** %MEMORY

  %loadMem2_43e1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1df = load i64, i64* %3
  %call2_43e1df = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e1df, %struct.Memory* %loadMem2_43e1df)
  store %struct.Memory* %call2_43e1df, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e230	 RIP: 43e1e4	 Bytes: 5
  %loadMem_43e1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1e4 = call %struct.Memory* @routine_jmpq_.L_43e230(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1e4, i64 76, i64 5)
  store %struct.Memory* %call_43e1e4, %struct.Memory** %MEMORY

  br label %block_.L_43e230

  ; Code: .L_43e1e9:	 RIP: 43e1e9	 Bytes: 0
block_.L_43e1e9:

  ; Code: xorl %eax, %eax	 RIP: 43e1e9	 Bytes: 2
  %loadMem_43e1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1e9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1e9)
  store %struct.Memory* %call_43e1e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43e1eb	 Bytes: 2
  %loadMem_43e1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1eb = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1eb)
  store %struct.Memory* %call_43e1eb, %struct.Memory** %MEMORY

  ; Code: movl -0x670(%rbp), %edi	 RIP: 43e1ed	 Bytes: 6
  %loadMem_43e1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1ed = call %struct.Memory* @routine_movl_MINUS0x670__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1ed)
  store %struct.Memory* %call_43e1ed, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e1f3	 Bytes: 6
  %loadMem_43e1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1f3 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1f3)
  store %struct.Memory* %call_43e1f3, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_attack	 RIP: 43e1f9	 Bytes: 5
  %loadMem1_43e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e1f9 = call %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e1f9, i64 59703, i64 5, i64 5)
  store %struct.Memory* %call1_43e1f9, %struct.Memory** %MEMORY

  %loadMem2_43e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1f9 = load i64, i64* %3
  %call2_43e1f9 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64  %loadPC_43e1f9, %struct.Memory* %loadMem2_43e1f9)
  store %struct.Memory* %call2_43e1f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e1fe	 Bytes: 3
  %loadMem_43e1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e1fe = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e1fe)
  store %struct.Memory* %call_43e1fe, %struct.Memory** %MEMORY

  ; Code: jne .L_43e22b	 RIP: 43e201	 Bytes: 6
  %loadMem_43e201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e201 = call %struct.Memory* @routine_jne_.L_43e22b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e201, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_43e201, %struct.Memory** %MEMORY

  %loadBr_43e201 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e201 = icmp eq i8 %loadBr_43e201, 1
  br i1 %cmpBr_43e201, label %block_.L_43e22b, label %block_43e207

block_43e207:
  ; Code: movq $0x57dc62, %rdi	 RIP: 43e207	 Bytes: 10
  %loadMem_43e207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e207 = call %struct.Memory* @routine_movq__0x57dc62___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e207)
  store %struct.Memory* %call_43e207, %struct.Memory** %MEMORY

  ; Code: movl -0x670(%rbp), %esi	 RIP: 43e211	 Bytes: 6
  %loadMem_43e211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e211 = call %struct.Memory* @routine_movl_MINUS0x670__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e211)
  store %struct.Memory* %call_43e211, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e217	 Bytes: 2
  %loadMem_43e217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e217 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e217)
  store %struct.Memory* %call_43e217, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e219	 Bytes: 5
  %loadMem1_43e219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e219 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e219, i64 80791, i64 5, i64 5)
  store %struct.Memory* %call1_43e219, %struct.Memory** %MEMORY

  %loadMem2_43e219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e219 = load i64, i64* %3
  %call2_43e219 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e219, %struct.Memory* %loadMem2_43e219)
  store %struct.Memory* %call2_43e219, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e21e	 Bytes: 2
  %loadMem_43e21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e21e = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e21e)
  store %struct.Memory* %call_43e21e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19d8(%rbp)	 RIP: 43e220	 Bytes: 6
  %loadMem_43e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e220 = call %struct.Memory* @routine_movl__eax__MINUS0x19d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e220)
  store %struct.Memory* %call_43e220, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e226	 Bytes: 5
  %loadMem1_43e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e226 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e226, i64 224218, i64 5, i64 5)
  store %struct.Memory* %call1_43e226, %struct.Memory** %MEMORY

  %loadMem2_43e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e226 = load i64, i64* %3
  %call2_43e226 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e226, %struct.Memory* %loadMem2_43e226)
  store %struct.Memory* %call2_43e226, %struct.Memory** %MEMORY

  ; Code: .L_43e22b:	 RIP: 43e22b	 Bytes: 0
  br label %block_.L_43e22b
block_.L_43e22b:

  ; Code: jmpq .L_43e230	 RIP: 43e22b	 Bytes: 5
  %loadMem_43e22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e22b = call %struct.Memory* @routine_jmpq_.L_43e230(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e22b, i64 5, i64 5)
  store %struct.Memory* %call_43e22b, %struct.Memory** %MEMORY

  br label %block_.L_43e230

  ; Code: .L_43e230:	 RIP: 43e230	 Bytes: 0
block_.L_43e230:

  ; Code: movslq -0x678(%rbp), %rax	 RIP: 43e230	 Bytes: 7
  %loadMem_43e230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e230 = call %struct.Memory* @routine_movslq_MINUS0x678__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e230)
  store %struct.Memory* %call_43e230, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 43e237	 Bytes: 8
  %loadMem_43e237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e237 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e237)
  store %struct.Memory* %call_43e237, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43e23f	 Bytes: 3
  %loadMem_43e23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e23f = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e23f)
  store %struct.Memory* %call_43e23f, %struct.Memory** %MEMORY

  ; Code: jne .L_43e261	 RIP: 43e242	 Bytes: 6
  %loadMem_43e242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e242 = call %struct.Memory* @routine_jne_.L_43e261(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e242, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43e242, %struct.Memory** %MEMORY

  %loadBr_43e242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e242 = icmp eq i8 %loadBr_43e242, 1
  br i1 %cmpBr_43e242, label %block_.L_43e261, label %block_43e248

block_43e248:
  ; Code: movl $0x1, %esi	 RIP: 43e248	 Bytes: 5
  %loadMem_43e248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e248 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e248)
  store %struct.Memory* %call_43e248, %struct.Memory** %MEMORY

  ; Code: movl -0x678(%rbp), %edi	 RIP: 43e24d	 Bytes: 6
  %loadMem_43e24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e24d = call %struct.Memory* @routine_movl_MINUS0x678__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e24d)
  store %struct.Memory* %call_43e24d, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 43e253	 Bytes: 5
  %loadMem1_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e253 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e253, i64 -194435, i64 5, i64 5)
  store %struct.Memory* %call1_43e253, %struct.Memory** %MEMORY

  %loadMem2_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e253 = load i64, i64* %3
  %call2_43e253 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_43e253, %struct.Memory* %loadMem2_43e253)
  store %struct.Memory* %call2_43e253, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e258	 Bytes: 3
  %loadMem_43e258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e258 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e258)
  store %struct.Memory* %call_43e258, %struct.Memory** %MEMORY

  ; Code: jne .L_43e28a	 RIP: 43e25b	 Bytes: 6
  %loadMem_43e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e25b = call %struct.Memory* @routine_jne_.L_43e28a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e25b, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43e25b, %struct.Memory** %MEMORY

  %loadBr_43e25b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e25b = icmp eq i8 %loadBr_43e25b, 1
  br i1 %cmpBr_43e25b, label %block_.L_43e28a, label %block_.L_43e261

  ; Code: .L_43e261:	 RIP: 43e261	 Bytes: 0
block_.L_43e261:

  ; Code: movq $0x57dc7c, %rdi	 RIP: 43e261	 Bytes: 10
  %loadMem_43e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e261 = call %struct.Memory* @routine_movq__0x57dc7c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e261)
  store %struct.Memory* %call_43e261, %struct.Memory** %MEMORY

  ; Code: movl -0x678(%rbp), %esi	 RIP: 43e26b	 Bytes: 6
  %loadMem_43e26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e26b = call %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e26b)
  store %struct.Memory* %call_43e26b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e271	 Bytes: 2
  %loadMem_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e271 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e271)
  store %struct.Memory* %call_43e271, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e273	 Bytes: 5
  %loadMem1_43e273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e273 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e273, i64 80701, i64 5, i64 5)
  store %struct.Memory* %call1_43e273, %struct.Memory** %MEMORY

  %loadMem2_43e273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e273 = load i64, i64* %3
  %call2_43e273 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e273, %struct.Memory* %loadMem2_43e273)
  store %struct.Memory* %call2_43e273, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e278	 Bytes: 2
  %loadMem_43e278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e278 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e278)
  store %struct.Memory* %call_43e278, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19dc(%rbp)	 RIP: 43e27a	 Bytes: 6
  %loadMem_43e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e27a = call %struct.Memory* @routine_movl__eax__MINUS0x19dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e27a)
  store %struct.Memory* %call_43e27a, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e280	 Bytes: 5
  %loadMem1_43e280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e280 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e280, i64 224128, i64 5, i64 5)
  store %struct.Memory* %call1_43e280, %struct.Memory** %MEMORY

  %loadMem2_43e280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e280 = load i64, i64* %3
  %call2_43e280 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e280, %struct.Memory* %loadMem2_43e280)
  store %struct.Memory* %call2_43e280, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43e2d1	 RIP: 43e285	 Bytes: 5
  %loadMem_43e285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e285 = call %struct.Memory* @routine_jmpq_.L_43e2d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e285, i64 76, i64 5)
  store %struct.Memory* %call_43e285, %struct.Memory** %MEMORY

  br label %block_.L_43e2d1

  ; Code: .L_43e28a:	 RIP: 43e28a	 Bytes: 0
block_.L_43e28a:

  ; Code: xorl %eax, %eax	 RIP: 43e28a	 Bytes: 2
  %loadMem_43e28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e28a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e28a)
  store %struct.Memory* %call_43e28a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43e28c	 Bytes: 2
  %loadMem_43e28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e28c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e28c)
  store %struct.Memory* %call_43e28c, %struct.Memory** %MEMORY

  ; Code: movl -0x678(%rbp), %edi	 RIP: 43e28e	 Bytes: 6
  %loadMem_43e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e28e = call %struct.Memory* @routine_movl_MINUS0x678__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e28e)
  store %struct.Memory* %call_43e28e, %struct.Memory** %MEMORY

  ; Code: movl -0x668(%rbp), %esi	 RIP: 43e294	 Bytes: 6
  %loadMem_43e294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e294 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e294)
  store %struct.Memory* %call_43e294, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 43e29a	 Bytes: 5
  %loadMem1_43e29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e29a = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e29a, i64 57638, i64 5, i64 5)
  store %struct.Memory* %call1_43e29a, %struct.Memory** %MEMORY

  %loadMem2_43e29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e29a = load i64, i64* %3
  %call2_43e29a = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_43e29a, %struct.Memory* %loadMem2_43e29a)
  store %struct.Memory* %call2_43e29a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43e29f	 Bytes: 3
  %loadMem_43e29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e29f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e29f)
  store %struct.Memory* %call_43e29f, %struct.Memory** %MEMORY

  ; Code: jne .L_43e2cc	 RIP: 43e2a2	 Bytes: 6
  %loadMem_43e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2a2 = call %struct.Memory* @routine_jne_.L_43e2cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2a2, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_43e2a2, %struct.Memory** %MEMORY

  %loadBr_43e2a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e2a2 = icmp eq i8 %loadBr_43e2a2, 1
  br i1 %cmpBr_43e2a2, label %block_.L_43e2cc, label %block_43e2a8

block_43e2a8:
  ; Code: movq $0x57dc94, %rdi	 RIP: 43e2a8	 Bytes: 10
  %loadMem_43e2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2a8 = call %struct.Memory* @routine_movq__0x57dc94___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2a8)
  store %struct.Memory* %call_43e2a8, %struct.Memory** %MEMORY

  ; Code: movl -0x678(%rbp), %esi	 RIP: 43e2b2	 Bytes: 6
  %loadMem_43e2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2b2 = call %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2b2)
  store %struct.Memory* %call_43e2b2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43e2b8	 Bytes: 2
  %loadMem_43e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2b8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2b8)
  store %struct.Memory* %call_43e2b8, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 43e2ba	 Bytes: 5
  %loadMem1_43e2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e2ba = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e2ba, i64 80630, i64 5, i64 5)
  store %struct.Memory* %call1_43e2ba, %struct.Memory** %MEMORY

  %loadMem2_43e2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2ba = load i64, i64* %3
  %call2_43e2ba = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_43e2ba, %struct.Memory* %loadMem2_43e2ba)
  store %struct.Memory* %call2_43e2ba, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 43e2bf	 Bytes: 2
  %loadMem_43e2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2bf = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2bf)
  store %struct.Memory* %call_43e2bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19e0(%rbp)	 RIP: 43e2c1	 Bytes: 6
  %loadMem_43e2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2c1 = call %struct.Memory* @routine_movl__eax__MINUS0x19e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2c1)
  store %struct.Memory* %call_43e2c1, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 43e2c7	 Bytes: 5
  %loadMem1_43e2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43e2c7 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43e2c7, i64 224057, i64 5, i64 5)
  store %struct.Memory* %call1_43e2c7, %struct.Memory** %MEMORY

  %loadMem2_43e2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2c7 = load i64, i64* %3
  %call2_43e2c7 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_43e2c7, %struct.Memory* %loadMem2_43e2c7)
  store %struct.Memory* %call2_43e2c7, %struct.Memory** %MEMORY

  ; Code: .L_43e2cc:	 RIP: 43e2cc	 Bytes: 0
  br label %block_.L_43e2cc
block_.L_43e2cc:

  ; Code: jmpq .L_43e2d1	 RIP: 43e2cc	 Bytes: 5
  %loadMem_43e2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2cc = call %struct.Memory* @routine_jmpq_.L_43e2d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2cc, i64 5, i64 5)
  store %struct.Memory* %call_43e2cc, %struct.Memory** %MEMORY

  br label %block_.L_43e2d1

  ; Code: .L_43e2d1:	 RIP: 43e2d1	 Bytes: 0
block_.L_43e2d1:

  ; Code: jmpq .L_43e2d6	 RIP: 43e2d1	 Bytes: 5
  %loadMem_43e2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2d1 = call %struct.Memory* @routine_jmpq_.L_43e2d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2d1, i64 5, i64 5)
  store %struct.Memory* %call_43e2d1, %struct.Memory** %MEMORY

  br label %block_.L_43e2d6

  ; Code: .L_43e2d6:	 RIP: 43e2d6	 Bytes: 0
block_.L_43e2d6:

  ; Code: jmpq .L_43e2db	 RIP: 43e2d6	 Bytes: 5
  %loadMem_43e2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2d6 = call %struct.Memory* @routine_jmpq_.L_43e2db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2d6, i64 5, i64 5)
  store %struct.Memory* %call_43e2d6, %struct.Memory** %MEMORY

  br label %block_.L_43e2db

  ; Code: .L_43e2db:	 RIP: 43e2db	 Bytes: 0
block_.L_43e2db:

  ; Code: jmpq .L_43e2e0	 RIP: 43e2db	 Bytes: 5
  %loadMem_43e2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2db = call %struct.Memory* @routine_jmpq_.L_43e2e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2db, i64 5, i64 5)
  store %struct.Memory* %call_43e2db, %struct.Memory** %MEMORY

  br label %block_.L_43e2e0

  ; Code: .L_43e2e0:	 RIP: 43e2e0	 Bytes: 0
block_.L_43e2e0:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43e2e0	 Bytes: 3
  %loadMem_43e2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e0)
  store %struct.Memory* %call_43e2e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43e2e3	 Bytes: 3
  %loadMem_43e2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e3)
  store %struct.Memory* %call_43e2e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 43e2e6	 Bytes: 3
  %loadMem_43e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e6)
  store %struct.Memory* %call_43e2e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ddf5	 RIP: 43e2e9	 Bytes: 5
  %loadMem_43e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2e9 = call %struct.Memory* @routine_jmpq_.L_43ddf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2e9, i64 -1268, i64 5)
  store %struct.Memory* %call_43e2e9, %struct.Memory** %MEMORY

  br label %block_.L_43ddf5

  ; Code: .L_43e2ee:	 RIP: 43e2ee	 Bytes: 0
block_.L_43e2ee:

  ; Code: movl -0x67c(%rbp), %eax	 RIP: 43e2ee	 Bytes: 6
  %loadMem_43e2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2ee = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2ee)
  store %struct.Memory* %call_43e2ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 43e2f4	 Bytes: 7
  %loadMem_43e2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2f4 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2f4)
  store %struct.Memory* %call_43e2f4, %struct.Memory** %MEMORY

  ; Code: addq $0x19e0, %rsp	 RIP: 43e2fb	 Bytes: 7
  %loadMem_43e2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e2fb = call %struct.Memory* @routine_addq__0x19e0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e2fb)
  store %struct.Memory* %call_43e2fb, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43e302	 Bytes: 1
  %loadMem_43e302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e302 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e302)
  store %struct.Memory* %call_43e302, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43e303	 Bytes: 1
  %loadMem_43e303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43e303 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43e303)
  store %struct.Memory* %call_43e303, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43e303
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

define %struct.Memory* @routine_subq__0x19e0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 6624)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_callq_.clear_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.reset_engine(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x640___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1600)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
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

define %struct.Memory* @routine_leaq_MINUS0x660__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_43dbb3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x1a5____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 421)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jae_.L_43db08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_43db08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43db8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57d7b6_type* @G__0x57d7b6 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x775___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1909)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57dbcc___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57dbcc_type* @G__0x57dbcc to i64))
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


define %struct.Memory* @routine_movl___rcx__r8_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x19a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6564
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


define %struct.Memory* @routine_movq__rdx__MINUS0x19b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6576
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


define %struct.Memory* @routine_movl_MINUS0x19a4__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 6564
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

define %struct.Memory* @routine_idivl__r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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






define %struct.Memory* @routine_movl___rcx__r8_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x19b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6580
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r10d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
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


define %struct.Memory* @routine_movq_MINUS0x19b0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x19b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6584
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


define %struct.Memory* @routine_movl_MINUS0x19b4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x19b8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 6584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_jmpq_.L_43dac5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x15__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43dca4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_je_.L_43dbfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
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

define %struct.Memory* @routine_jne_.L_43dbff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43dc90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43dc8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_43dc78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_43dc78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.play_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x664__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43dc8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43dc7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43dc06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43dbbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_43dda8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_43dd05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_43dd05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_je_.L_43dd0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43dd94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_43dd8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_43dd7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_43dd8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43dd81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43dd11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_43dcae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_43ddbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.showboard(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1998__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_callq_.store_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43e2ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__MINUS0x199c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 6556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x19a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 6560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.restore_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_43debe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x19bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6588
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x19bc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_andl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_43deab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_callq_.is_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_43de87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x199c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 6556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_43debe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__esi__MINUS0x19a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6560
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43deb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43de28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x199c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 6556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43ded0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43e2e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jle_.L_43dee4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.examine_position(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x668__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_callq_.owl_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x66c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1644
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43e094(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_43dfec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_43dfd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_43dfd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_callq_.owl_does_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57dbe7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dbe7_type* @G__0x57dbe7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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




define %struct.Memory* @routine_movl__eax__MINUS0x19c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__eax__MINUS0x19c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43dfde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43df29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_jne_.L_43e08f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_43e08a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_43e077(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57dc04___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc04_type* @G__0x57dc04 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x19c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_43e07c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43e007(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43e08f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43e2db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x678__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_callq_.owl_defend(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x674__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1652
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43e18f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_43e18a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_43e177(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_43e177(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq__0x57dc2f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc2f_type* @G__0x57dc2f to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl__eax__MINUS0x19cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0x19d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43e17c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43e0c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43e2d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movslq_MINUS0x670__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_43e1c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x670__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_43e1e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57dc4b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc4b_type* @G__0x57dc4b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x670__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x19d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_43e230(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_43e22b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57dc62___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc62_type* @G__0x57dc62 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x19d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movslq_MINUS0x678__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_43e261(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x678__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_43e28a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57dc7c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc7c_type* @G__0x57dc7c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x19dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_43e2d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_43e2cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57dc94___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57dc94_type* @G__0x57dc94 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x19e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6624
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_43ddf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x19e0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 6624)
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

