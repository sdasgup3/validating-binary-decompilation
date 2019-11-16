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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401640.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_416580.EnvFileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_416430.FileConcat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446880.SSIOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4480e0.SSIGetFilePosition(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ebe0.Warn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x661538_type = type <{ [4 x i8] }>
@G_0x661538= global %G_0x661538_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x66153c_type = type <{ [4 x i8] }>
@G_0x66153c= global %G_0x66153c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661540_type = type <{ [4 x i8] }>
@G_0x661540= global %G_0x661540_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661544_type = type <{ [4 x i8] }>
@G_0x661544= global %G_0x661544_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661548_type = type <{ [4 x i8] }>
@G_0x661548= global %G_0x661548_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x66154c_type = type <{ [4 x i8] }>
@G_0x66154c= global %G_0x66154c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661550_type = type <{ [4 x i8] }>
@G_0x661550= global %G_0x661550_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661554_type = type <{ [4 x i8] }>
@G_0x661554= global %G_0x661554_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x661558_type = type <{ [4 x i8] }>
@G_0x661558= global %G_0x661558_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x66155c_type = type <{ [4 x i8] }>
@G_0x66155c= global %G_0x66155c_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x41d160_type = type <{ [8 x i8] }>
@G__0x41d160= global %G__0x41d160_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41e0a0_type = type <{ [8 x i8] }>
@G__0x41e0a0= global %G__0x41e0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41e1b0_type = type <{ [8 x i8] }>
@G__0x41e1b0= global %G__0x41e1b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41e2c0_type = type <{ [8 x i8] }>
@G__0x41e2c0= global %G__0x41e2c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41e3d0_type = type <{ [8 x i8] }>
@G__0x41e3d0= global %G__0x41e3d0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41e4e0_type = type <{ [8 x i8] }>
@G__0x41e4e0= global %G__0x41e4e0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x41f910_type = type <{ [8 x i8] }>
@G__0x41f910= global %G__0x41f910_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4206d0_type = type <{ [8 x i8] }>
@G__0x4206d0= global %G__0x4206d0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4207c0_type = type <{ [8 x i8] }>
@G__0x4207c0= global %G__0x4207c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4207f0_type = type <{ [8 x i8] }>
@G__0x4207f0= global %G__0x4207f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45763b_type = type <{ [8 x i8] }>
@G__0x45763b= global %G__0x45763b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4576e8_type = type <{ [8 x i8] }>
@G__0x4576e8= global %G__0x4576e8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4576ef_type = type <{ [8 x i8] }>
@G__0x4576ef= global %G__0x4576ef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457709_type = type <{ [8 x i8] }>
@G__0x457709= global %G__0x457709_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457725_type = type <{ [8 x i8] }>
@G__0x457725= global %G__0x457725_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577c5_type = type <{ [8 x i8] }>
@G__0x4577c5= global %G__0x4577c5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577ce_type = type <{ [8 x i8] }>
@G__0x4577ce= global %G__0x4577ce_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577d9_type = type <{ [8 x i8] }>
@G__0x4577d9= global %G__0x4577d9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577e4_type = type <{ [8 x i8] }>
@G__0x4577e4= global %G__0x4577e4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4577ef_type = type <{ [8 x i8] }>
@G__0x4577ef= global %G__0x4577ef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458380_type = type <{ [8 x i8] }>
@G__0x458380= global %G__0x458380_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @HMMFileOpen(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .HMMFileOpen:	 RIP: 41c900	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41c900	 Bytes: 1
  %loadMem_41c900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c900 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c900)
  store %struct.Memory* %call_41c900, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41c901	 Bytes: 3
  %loadMem_41c901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c901 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c901)
  store %struct.Memory* %call_41c901, %struct.Memory** %MEMORY

  ; Code: subq $0x290, %rsp	 RIP: 41c904	 Bytes: 7
  %loadMem_41c904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c904 = call %struct.Memory* @routine_subq__0x290___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c904)
  store %struct.Memory* %call_41c904, %struct.Memory** %MEMORY

  ; Code: movq $0x45763b, %rax	 RIP: 41c90b	 Bytes: 10
  %loadMem_41c90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c90b = call %struct.Memory* @routine_movq__0x45763b___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c90b)
  store %struct.Memory* %call_41c90b, %struct.Memory** %MEMORY

  ; Code: movl $0xa4, %ecx	 RIP: 41c915	 Bytes: 5
  %loadMem_41c915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c915 = call %struct.Memory* @routine_movl__0xa4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c915)
  store %struct.Memory* %call_41c915, %struct.Memory** %MEMORY

  ; Code: movl $0x38, %edx	 RIP: 41c91a	 Bytes: 5
  %loadMem_41c91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c91a = call %struct.Memory* @routine_movl__0x38___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c91a)
  store %struct.Memory* %call_41c91a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 41c91f	 Bytes: 4
  %loadMem_41c91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c91f = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c91f)
  store %struct.Memory* %call_41c91f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 41c923	 Bytes: 4
  %loadMem_41c923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c923 = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c923)
  store %struct.Memory* %call_41c923, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41c927	 Bytes: 3
  %loadMem_41c927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c927 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c927)
  store %struct.Memory* %call_41c927, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 41c92a	 Bytes: 2
  %loadMem_41c92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c92a = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c92a)
  store %struct.Memory* %call_41c92a, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 41c92c	 Bytes: 5
  %loadMem1_41c92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41c92c = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41c92c, i64 169780, i64 5, i64 5)
  store %struct.Memory* %call1_41c92c, %struct.Memory** %MEMORY

  %loadMem2_41c92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41c92c = load i64, i64* %3
  %call2_41c92c = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_41c92c, %struct.Memory* %loadMem2_41c92c)
  store %struct.Memory* %call2_41c92c, %struct.Memory** %MEMORY

  ; Code: movq $0x458380, %rsi	 RIP: 41c931	 Bytes: 10
  %loadMem_41c931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c931 = call %struct.Memory* @routine_movq__0x458380___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c931)
  store %struct.Memory* %call_41c931, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41c93b	 Bytes: 4
  %loadMem_41c93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c93b = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c93b)
  store %struct.Memory* %call_41c93b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c93f	 Bytes: 4
  %loadMem_41c93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c93f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c93f)
  store %struct.Memory* %call_41c93f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 41c943	 Bytes: 7
  %loadMem_41c943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c943 = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c943)
  store %struct.Memory* %call_41c943, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c94a	 Bytes: 4
  %loadMem_41c94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c94a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c94a)
  store %struct.Memory* %call_41c94a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x10(%rax)	 RIP: 41c94e	 Bytes: 8
  %loadMem_41c94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c94e = call %struct.Memory* @routine_movq__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c94e)
  store %struct.Memory* %call_41c94e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c956	 Bytes: 4
  %loadMem_41c956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c956 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c956)
  store %struct.Memory* %call_41c956, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x18(%rax)	 RIP: 41c95a	 Bytes: 7
  %loadMem_41c95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c95a = call %struct.Memory* @routine_movl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c95a)
  store %struct.Memory* %call_41c95a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c961	 Bytes: 4
  %loadMem_41c961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c961 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c961)
  store %struct.Memory* %call_41c961, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 41c965	 Bytes: 7
  %loadMem_41c965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c965 = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c965)
  store %struct.Memory* %call_41c965, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c96c	 Bytes: 4
  %loadMem_41c96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c96c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c96c)
  store %struct.Memory* %call_41c96c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x20(%rax)	 RIP: 41c970	 Bytes: 7
  %loadMem_41c970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c970 = call %struct.Memory* @routine_movl__0x1__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c970)
  store %struct.Memory* %call_41c970, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c977	 Bytes: 4
  %loadMem_41c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c977 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c977)
  store %struct.Memory* %call_41c977, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 41c97b	 Bytes: 7
  %loadMem_41c97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c97b = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c97b)
  store %struct.Memory* %call_41c97b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41c982	 Bytes: 4
  %loadMem_41c982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c982 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c982)
  store %struct.Memory* %call_41c982, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x8(%rax)	 RIP: 41c986	 Bytes: 8
  %loadMem_41c986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c986 = call %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c986)
  store %struct.Memory* %call_41c986, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41c98e	 Bytes: 4
  %loadMem_41c98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c98e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c98e)
  store %struct.Memory* %call_41c98e, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 41c992	 Bytes: 5
  %loadMem1_41c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41c992 = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41c992, i64 -111442, i64 5, i64 5)
  store %struct.Memory* %call1_41c992, %struct.Memory** %MEMORY

  %loadMem2_41c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41c992 = load i64, i64* %3
  %call2_41c992 = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64  %loadPC_41c992, %struct.Memory* %loadMem2_41c992)
  store %struct.Memory* %call2_41c992, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41c997	 Bytes: 4
  %loadMem_41c997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c997 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c997)
  store %struct.Memory* %call_41c997, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 41c99b	 Bytes: 3
  %loadMem_41c99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c99b = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c99b)
  store %struct.Memory* %call_41c99b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41c99e	 Bytes: 4
  %loadMem_41c99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c99e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c99e)
  store %struct.Memory* %call_41c99e, %struct.Memory** %MEMORY

  ; Code: je .L_41ca45	 RIP: 41c9a2	 Bytes: 6
  %loadMem_41c9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9a2 = call %struct.Memory* @routine_je_.L_41ca45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9a2, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_41c9a2, %struct.Memory** %MEMORY

  %loadBr_41c9a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41c9a2 = icmp eq i8 %loadBr_41c9a2, 1
  br i1 %cmpBr_41c9a2, label %block_.L_41ca45, label %block_41c9a8

block_41c9a8:
  ; Code: movq $0x45763b, %rdi	 RIP: 41c9a8	 Bytes: 10
  %loadMem_41c9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9a8 = call %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9a8)
  store %struct.Memory* %call_41c9a8, %struct.Memory** %MEMORY

  ; Code: movl $0xb5, %esi	 RIP: 41c9b2	 Bytes: 5
  %loadMem_41c9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9b2 = call %struct.Memory* @routine_movl__0xb5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9b2)
  store %struct.Memory* %call_41c9b2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41c9b7	 Bytes: 4
  %loadMem_41c9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9b7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9b7)
  store %struct.Memory* %call_41c9b7, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x258(%rbp)	 RIP: 41c9bb	 Bytes: 7
  %loadMem_41c9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9bb = call %struct.Memory* @routine_movq__rdi__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9bb)
  store %struct.Memory* %call_41c9bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41c9c2	 Bytes: 3
  %loadMem_41c9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9c2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9c2)
  store %struct.Memory* %call_41c9c2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x25c(%rbp)	 RIP: 41c9c5	 Bytes: 6
  %loadMem_41c9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9c5 = call %struct.Memory* @routine_movl__esi__MINUS0x25c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9c5)
  store %struct.Memory* %call_41c9c5, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 41c9cb	 Bytes: 5
  %loadMem1_41c9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41c9cb = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41c9cb, i64 -111979, i64 5, i64 5)
  store %struct.Memory* %call1_41c9cb, %struct.Memory** %MEMORY

  %loadMem2_41c9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41c9cb = load i64, i64* %3
  %call2_41c9cb = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_41c9cb, %struct.Memory* %loadMem2_41c9cb)
  store %struct.Memory* %call2_41c9cb, %struct.Memory** %MEMORY

  ; Code: addq $0x5, %rax	 RIP: 41c9d0	 Bytes: 4
  %loadMem_41c9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9d0 = call %struct.Memory* @routine_addq__0x5___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9d0)
  store %struct.Memory* %call_41c9d0, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 41c9d4	 Bytes: 4
  %loadMem_41c9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9d4 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9d4)
  store %struct.Memory* %call_41c9d4, %struct.Memory** %MEMORY

  ; Code: movq -0x258(%rbp), %rdi	 RIP: 41c9d8	 Bytes: 7
  %loadMem_41c9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9d8 = call %struct.Memory* @routine_movq_MINUS0x258__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9d8)
  store %struct.Memory* %call_41c9d8, %struct.Memory** %MEMORY

  ; Code: movl -0x25c(%rbp), %esi	 RIP: 41c9df	 Bytes: 6
  %loadMem_41c9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9df = call %struct.Memory* @routine_movl_MINUS0x25c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9df)
  store %struct.Memory* %call_41c9df, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41c9e5	 Bytes: 3
  %loadMem_41c9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9e5 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9e5)
  store %struct.Memory* %call_41c9e5, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 41c9e8	 Bytes: 5
  %loadMem1_41c9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41c9e8 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41c9e8, i64 169592, i64 5, i64 5)
  store %struct.Memory* %call1_41c9e8, %struct.Memory** %MEMORY

  %loadMem2_41c9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41c9e8 = load i64, i64* %3
  %call2_41c9e8 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_41c9e8, %struct.Memory* %loadMem2_41c9e8)
  store %struct.Memory* %call2_41c9e8, %struct.Memory** %MEMORY

  ; Code: movq $0x4576e8, %rsi	 RIP: 41c9ed	 Bytes: 10
  %loadMem_41c9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9ed = call %struct.Memory* @routine_movq__0x4576e8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9ed)
  store %struct.Memory* %call_41c9ed, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41c9f7	 Bytes: 7
  %loadMem_41c9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9f7 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9f7)
  store %struct.Memory* %call_41c9f7, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41c9fe	 Bytes: 7
  %loadMem_41c9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41c9fe = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41c9fe)
  store %struct.Memory* %call_41c9fe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 41ca05	 Bytes: 4
  %loadMem_41ca05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca05 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca05)
  store %struct.Memory* %call_41ca05, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41ca09	 Bytes: 2
  %loadMem_41ca09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca09 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca09)
  store %struct.Memory* %call_41ca09, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 41ca0b	 Bytes: 5
  %loadMem1_41ca0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ca0b = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ca0b, i64 -111435, i64 5, i64 5)
  store %struct.Memory* %call1_41ca0b, %struct.Memory** %MEMORY

  %loadMem2_41ca0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ca0b = load i64, i64* %3
  %call2_41ca0b = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_41ca0b, %struct.Memory* %loadMem2_41ca0b)
  store %struct.Memory* %call2_41ca0b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41ca10	 Bytes: 4
  %loadMem_41ca10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca10 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca10)
  store %struct.Memory* %call_41ca10, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x260(%rbp)	 RIP: 41ca14	 Bytes: 6
  %loadMem_41ca14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca14 = call %struct.Memory* @routine_movl__eax__MINUS0x260__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca14)
  store %struct.Memory* %call_41ca14, %struct.Memory** %MEMORY

  ; Code: callq .SSIRecommendMode	 RIP: 41ca1a	 Bytes: 5
  %loadMem1_41ca1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ca1a = call %struct.Memory* @routine_callq_.SSIRecommendMode(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ca1a, i64 176662, i64 5, i64 5)
  store %struct.Memory* %call1_41ca1a, %struct.Memory** %MEMORY

  %loadMem2_41ca1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ca1a = load i64, i64* %3
  %call2_41ca1a = call %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* %0, i64  %loadPC_41ca1a, %struct.Memory* %loadMem2_41ca1a)
  store %struct.Memory* %call2_41ca1a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41ca1f	 Bytes: 4
  %loadMem_41ca1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca1f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca1f)
  store %struct.Memory* %call_41ca1f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x24(%rdx)	 RIP: 41ca23	 Bytes: 3
  %loadMem_41ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca23 = call %struct.Memory* @routine_movl__eax__0x24__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca23)
  store %struct.Memory* %call_41ca23, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, %eax	 RIP: 41ca26	 Bytes: 3
  %loadMem_41ca26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca26 = call %struct.Memory* @routine_cmpl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca26)
  store %struct.Memory* %call_41ca26, %struct.Memory** %MEMORY

  ; Code: jne .L_41ca40	 RIP: 41ca29	 Bytes: 6
  %loadMem_41ca29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca29 = call %struct.Memory* @routine_jne_.L_41ca40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca29, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41ca29, %struct.Memory** %MEMORY

  %loadBr_41ca29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ca29 = icmp eq i8 %loadBr_41ca29, 1
  br i1 %cmpBr_41ca29, label %block_.L_41ca40, label %block_41ca2f

block_41ca2f:
  ; Code: movq $0x4576ef, %rdi	 RIP: 41ca2f	 Bytes: 10
  %loadMem_41ca2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca2f = call %struct.Memory* @routine_movq__0x4576ef___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca2f)
  store %struct.Memory* %call_41ca2f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41ca39	 Bytes: 2
  %loadMem_41ca39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca39 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca39)
  store %struct.Memory* %call_41ca39, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41ca3b	 Bytes: 5
  %loadMem1_41ca3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ca3b = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ca3b, i64 139221, i64 5, i64 5)
  store %struct.Memory* %call1_41ca3b, %struct.Memory** %MEMORY

  %loadMem2_41ca3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ca3b = load i64, i64* %3
  %call2_41ca3b = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41ca3b, %struct.Memory* %loadMem2_41ca3b)
  store %struct.Memory* %call2_41ca3b, %struct.Memory** %MEMORY

  ; Code: .L_41ca40:	 RIP: 41ca40	 Bytes: 0
  br label %block_.L_41ca40
block_.L_41ca40:

  ; Code: jmpq .L_41cb79	 RIP: 41ca40	 Bytes: 5
  %loadMem_41ca40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca40 = call %struct.Memory* @routine_jmpq_.L_41cb79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca40, i64 313, i64 5)
  store %struct.Memory* %call_41ca40, %struct.Memory** %MEMORY

  br label %block_.L_41cb79

  ; Code: .L_41ca45:	 RIP: 41ca45	 Bytes: 0
block_.L_41ca45:

  ; Code: leaq -0x240(%rbp), %rdx	 RIP: 41ca45	 Bytes: 7
  %loadMem_41ca45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca45 = call %struct.Memory* @routine_leaq_MINUS0x240__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca45)
  store %struct.Memory* %call_41ca45, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41ca4c	 Bytes: 4
  %loadMem_41ca4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca4c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca4c)
  store %struct.Memory* %call_41ca4c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 41ca50	 Bytes: 4
  %loadMem_41ca50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca50 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca50)
  store %struct.Memory* %call_41ca50, %struct.Memory** %MEMORY

  ; Code: callq .EnvFileOpen	 RIP: 41ca54	 Bytes: 5
  %loadMem1_41ca54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ca54 = call %struct.Memory* @routine_callq_.EnvFileOpen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ca54, i64 -25812, i64 5, i64 5)
  store %struct.Memory* %call1_41ca54, %struct.Memory** %MEMORY

  %loadMem2_41ca54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ca54 = load i64, i64* %3
  %call2_41ca54 = call %struct.Memory* @sub_416580.EnvFileOpen(%struct.State* %0, i64  %loadPC_41ca54, %struct.Memory* %loadMem2_41ca54)
  store %struct.Memory* %call2_41ca54, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41ca59	 Bytes: 4
  %loadMem_41ca59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca59 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca59)
  store %struct.Memory* %call_41ca59, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 41ca5d	 Bytes: 3
  %loadMem_41ca5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca5d = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca5d)
  store %struct.Memory* %call_41ca5d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ca60	 Bytes: 4
  %loadMem_41ca60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca60 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca60)
  store %struct.Memory* %call_41ca60, %struct.Memory** %MEMORY

  ; Code: je .L_41cb67	 RIP: 41ca64	 Bytes: 6
  %loadMem_41ca64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca64 = call %struct.Memory* @routine_je_.L_41cb67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca64, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_41ca64, %struct.Memory** %MEMORY

  %loadBr_41ca64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ca64 = icmp eq i8 %loadBr_41ca64, 1
  br i1 %cmpBr_41ca64, label %block_.L_41cb67, label %block_41ca6a

block_41ca6a:
  ; Code: movq -0x240(%rbp), %rdi	 RIP: 41ca6a	 Bytes: 7
  %loadMem_41ca6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca6a = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca6a)
  store %struct.Memory* %call_41ca6a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41ca71	 Bytes: 4
  %loadMem_41ca71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca71 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca71)
  store %struct.Memory* %call_41ca71, %struct.Memory** %MEMORY

  ; Code: callq .FileConcat	 RIP: 41ca75	 Bytes: 5
  %loadMem1_41ca75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ca75 = call %struct.Memory* @routine_callq_.FileConcat(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ca75, i64 -26181, i64 5, i64 5)
  store %struct.Memory* %call1_41ca75, %struct.Memory** %MEMORY

  %loadMem2_41ca75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ca75 = load i64, i64* %3
  %call2_41ca75 = call %struct.Memory* @sub_416430.FileConcat(%struct.State* %0, i64  %loadPC_41ca75, %struct.Memory* %loadMem2_41ca75)
  store %struct.Memory* %call2_41ca75, %struct.Memory** %MEMORY

  ; Code: movq $0x45763b, %rdi	 RIP: 41ca7a	 Bytes: 10
  %loadMem_41ca7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca7a = call %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca7a)
  store %struct.Memory* %call_41ca7a, %struct.Memory** %MEMORY

  ; Code: movl $0xc0, %esi	 RIP: 41ca84	 Bytes: 5
  %loadMem_41ca84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca84 = call %struct.Memory* @routine_movl__0xc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca84)
  store %struct.Memory* %call_41ca84, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x250(%rbp)	 RIP: 41ca89	 Bytes: 7
  %loadMem_41ca89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca89 = call %struct.Memory* @routine_movq__rax__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca89)
  store %struct.Memory* %call_41ca89, %struct.Memory** %MEMORY

  ; Code: movq -0x250(%rbp), %rax	 RIP: 41ca90	 Bytes: 7
  %loadMem_41ca90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca90 = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca90)
  store %struct.Memory* %call_41ca90, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x268(%rbp)	 RIP: 41ca97	 Bytes: 7
  %loadMem_41ca97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca97 = call %struct.Memory* @routine_movq__rdi__MINUS0x268__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca97)
  store %struct.Memory* %call_41ca97, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41ca9e	 Bytes: 3
  %loadMem_41ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ca9e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ca9e)
  store %struct.Memory* %call_41ca9e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x26c(%rbp)	 RIP: 41caa1	 Bytes: 6
  %loadMem_41caa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41caa1 = call %struct.Memory* @routine_movl__esi__MINUS0x26c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41caa1)
  store %struct.Memory* %call_41caa1, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 41caa7	 Bytes: 5
  %loadMem1_41caa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41caa7 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41caa7, i64 -112199, i64 5, i64 5)
  store %struct.Memory* %call1_41caa7, %struct.Memory** %MEMORY

  %loadMem2_41caa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41caa7 = load i64, i64* %3
  %call2_41caa7 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_41caa7, %struct.Memory* %loadMem2_41caa7)
  store %struct.Memory* %call2_41caa7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41caac	 Bytes: 4
  %loadMem_41caac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41caac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41caac)
  store %struct.Memory* %call_41caac, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x278(%rbp)	 RIP: 41cab0	 Bytes: 7
  %loadMem_41cab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cab0 = call %struct.Memory* @routine_movq__rax__MINUS0x278__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cab0)
  store %struct.Memory* %call_41cab0, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 41cab7	 Bytes: 5
  %loadMem1_41cab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cab7 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cab7, i64 -112215, i64 5, i64 5)
  store %struct.Memory* %call1_41cab7, %struct.Memory** %MEMORY

  %loadMem2_41cab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cab7 = load i64, i64* %3
  %call2_41cab7 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_41cab7, %struct.Memory* %loadMem2_41cab7)
  store %struct.Memory* %call2_41cab7, %struct.Memory** %MEMORY

  ; Code: movq -0x278(%rbp), %rdi	 RIP: 41cabc	 Bytes: 7
  %loadMem_41cabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cabc = call %struct.Memory* @routine_movq_MINUS0x278__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cabc)
  store %struct.Memory* %call_41cabc, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdi	 RIP: 41cac3	 Bytes: 3
  %loadMem_41cac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cac3 = call %struct.Memory* @routine_addq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cac3)
  store %struct.Memory* %call_41cac3, %struct.Memory** %MEMORY

  ; Code: addq $0x5, %rdi	 RIP: 41cac6	 Bytes: 4
  %loadMem_41cac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cac6 = call %struct.Memory* @routine_addq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cac6)
  store %struct.Memory* %call_41cac6, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rdi	 RIP: 41caca	 Bytes: 4
  %loadMem_41caca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41caca = call %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41caca)
  store %struct.Memory* %call_41caca, %struct.Memory** %MEMORY

  ; Code: movq -0x268(%rbp), %rax	 RIP: 41cace	 Bytes: 7
  %loadMem_41cace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cace = call %struct.Memory* @routine_movq_MINUS0x268__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cace)
  store %struct.Memory* %call_41cace, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x280(%rbp)	 RIP: 41cad5	 Bytes: 7
  %loadMem_41cad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cad5 = call %struct.Memory* @routine_movq__rdi__MINUS0x280__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cad5)
  store %struct.Memory* %call_41cad5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41cadc	 Bytes: 3
  %loadMem_41cadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cadc = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cadc)
  store %struct.Memory* %call_41cadc, %struct.Memory** %MEMORY

  ; Code: movl -0x26c(%rbp), %esi	 RIP: 41cadf	 Bytes: 6
  %loadMem_41cadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cadf = call %struct.Memory* @routine_movl_MINUS0x26c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cadf)
  store %struct.Memory* %call_41cadf, %struct.Memory** %MEMORY

  ; Code: movq -0x280(%rbp), %rdx	 RIP: 41cae5	 Bytes: 7
  %loadMem_41cae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cae5 = call %struct.Memory* @routine_movq_MINUS0x280__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cae5)
  store %struct.Memory* %call_41cae5, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 41caec	 Bytes: 5
  %loadMem1_41caec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41caec = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41caec, i64 169332, i64 5, i64 5)
  store %struct.Memory* %call1_41caec, %struct.Memory** %MEMORY

  %loadMem2_41caec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41caec = load i64, i64* %3
  %call2_41caec = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_41caec, %struct.Memory* %loadMem2_41caec)
  store %struct.Memory* %call2_41caec, %struct.Memory** %MEMORY

  ; Code: movq $0x4576e8, %rsi	 RIP: 41caf1	 Bytes: 10
  %loadMem_41caf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41caf1 = call %struct.Memory* @routine_movq__0x4576e8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41caf1)
  store %struct.Memory* %call_41caf1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41cafb	 Bytes: 7
  %loadMem_41cafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cafb = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cafb)
  store %struct.Memory* %call_41cafb, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41cb02	 Bytes: 7
  %loadMem_41cb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb02 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb02)
  store %struct.Memory* %call_41cb02, %struct.Memory** %MEMORY

  ; Code: movq -0x250(%rbp), %rdx	 RIP: 41cb09	 Bytes: 7
  %loadMem_41cb09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb09 = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb09)
  store %struct.Memory* %call_41cb09, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41cb10	 Bytes: 2
  %loadMem_41cb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb10 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb10)
  store %struct.Memory* %call_41cb10, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 41cb12	 Bytes: 5
  %loadMem1_41cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb12 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb12, i64 -111698, i64 5, i64 5)
  store %struct.Memory* %call1_41cb12, %struct.Memory** %MEMORY

  %loadMem2_41cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb12 = load i64, i64* %3
  %call2_41cb12 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_41cb12, %struct.Memory* %loadMem2_41cb12)
  store %struct.Memory* %call2_41cb12, %struct.Memory** %MEMORY

  ; Code: movq -0x250(%rbp), %rdi	 RIP: 41cb17	 Bytes: 7
  %loadMem_41cb17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb17 = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb17)
  store %struct.Memory* %call_41cb17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x284(%rbp)	 RIP: 41cb1e	 Bytes: 6
  %loadMem_41cb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb1e = call %struct.Memory* @routine_movl__eax__MINUS0x284__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb1e)
  store %struct.Memory* %call_41cb1e, %struct.Memory** %MEMORY

  ; Code: callq .SSIRecommendMode	 RIP: 41cb24	 Bytes: 5
  %loadMem1_41cb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb24 = call %struct.Memory* @routine_callq_.SSIRecommendMode(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb24, i64 176396, i64 5, i64 5)
  store %struct.Memory* %call1_41cb24, %struct.Memory** %MEMORY

  %loadMem2_41cb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb24 = load i64, i64* %3
  %call2_41cb24 = call %struct.Memory* @sub_447c30.SSIRecommendMode(%struct.State* %0, i64  %loadPC_41cb24, %struct.Memory* %loadMem2_41cb24)
  store %struct.Memory* %call2_41cb24, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41cb29	 Bytes: 4
  %loadMem_41cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb29 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb29)
  store %struct.Memory* %call_41cb29, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x24(%rdx)	 RIP: 41cb2d	 Bytes: 3
  %loadMem_41cb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb2d = call %struct.Memory* @routine_movl__eax__0x24__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb2d)
  store %struct.Memory* %call_41cb2d, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, %eax	 RIP: 41cb30	 Bytes: 3
  %loadMem_41cb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb30 = call %struct.Memory* @routine_cmpl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb30)
  store %struct.Memory* %call_41cb30, %struct.Memory** %MEMORY

  ; Code: jne .L_41cb4a	 RIP: 41cb33	 Bytes: 6
  %loadMem_41cb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb33 = call %struct.Memory* @routine_jne_.L_41cb4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb33, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41cb33, %struct.Memory** %MEMORY

  %loadBr_41cb33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cb33 = icmp eq i8 %loadBr_41cb33, 1
  br i1 %cmpBr_41cb33, label %block_.L_41cb4a, label %block_41cb39

block_41cb39:
  ; Code: movq $0x4576ef, %rdi	 RIP: 41cb39	 Bytes: 10
  %loadMem_41cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb39 = call %struct.Memory* @routine_movq__0x4576ef___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb39)
  store %struct.Memory* %call_41cb39, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41cb43	 Bytes: 2
  %loadMem_41cb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb43 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb43)
  store %struct.Memory* %call_41cb43, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41cb45	 Bytes: 5
  %loadMem1_41cb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb45 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb45, i64 138955, i64 5, i64 5)
  store %struct.Memory* %call1_41cb45, %struct.Memory** %MEMORY

  %loadMem2_41cb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb45 = load i64, i64* %3
  %call2_41cb45 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41cb45, %struct.Memory* %loadMem2_41cb45)
  store %struct.Memory* %call2_41cb45, %struct.Memory** %MEMORY

  ; Code: .L_41cb4a:	 RIP: 41cb4a	 Bytes: 0
  br label %block_.L_41cb4a
block_.L_41cb4a:

  ; Code: movq -0x250(%rbp), %rdi	 RIP: 41cb4a	 Bytes: 7
  %loadMem_41cb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb4a = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb4a)
  store %struct.Memory* %call_41cb4a, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 41cb51	 Bytes: 5
  %loadMem1_41cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb51 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb51, i64 -112593, i64 5, i64 5)
  store %struct.Memory* %call1_41cb51, %struct.Memory** %MEMORY

  %loadMem2_41cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb51 = load i64, i64* %3
  %call2_41cb51 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_41cb51, %struct.Memory* %loadMem2_41cb51)
  store %struct.Memory* %call2_41cb51, %struct.Memory** %MEMORY

  ; Code: movq -0x240(%rbp), %rdi	 RIP: 41cb56	 Bytes: 7
  %loadMem_41cb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb56 = call %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb56)
  store %struct.Memory* %call_41cb56, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 41cb5d	 Bytes: 5
  %loadMem1_41cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb5d = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb5d, i64 -112605, i64 5, i64 5)
  store %struct.Memory* %call1_41cb5d, %struct.Memory** %MEMORY

  %loadMem2_41cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb5d = load i64, i64* %3
  %call2_41cb5d = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_41cb5d, %struct.Memory* %loadMem2_41cb5d)
  store %struct.Memory* %call2_41cb5d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41cb74	 RIP: 41cb62	 Bytes: 5
  %loadMem_41cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb62 = call %struct.Memory* @routine_jmpq_.L_41cb74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb62, i64 18, i64 5)
  store %struct.Memory* %call_41cb62, %struct.Memory** %MEMORY

  br label %block_.L_41cb74

  ; Code: .L_41cb67:	 RIP: 41cb67	 Bytes: 0
block_.L_41cb67:

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 41cb67	 Bytes: 8
  %loadMem_41cb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb67 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb67)
  store %struct.Memory* %call_41cb67, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cb6f	 Bytes: 5
  %loadMem_41cb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb6f = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb6f, i64 1398, i64 5)
  store %struct.Memory* %call_41cb6f, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cb74:	 RIP: 41cb74	 Bytes: 0
block_.L_41cb74:

  ; Code: jmpq .L_41cb79	 RIP: 41cb74	 Bytes: 5
  %loadMem_41cb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb74 = call %struct.Memory* @routine_jmpq_.L_41cb79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb74, i64 5, i64 5)
  store %struct.Memory* %call_41cb74, %struct.Memory** %MEMORY

  br label %block_.L_41cb79

  ; Code: .L_41cb79:	 RIP: 41cb79	 Bytes: 0
block_.L_41cb79:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41cb79	 Bytes: 7
  %loadMem_41cb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb79 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb79)
  store %struct.Memory* %call_41cb79, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cb80	 Bytes: 4
  %loadMem_41cb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb80 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb80)
  store %struct.Memory* %call_41cb80, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 41cb84	 Bytes: 4
  %loadMem_41cb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb84 = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb84)
  store %struct.Memory* %call_41cb84, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41cb88	 Bytes: 3
  %loadMem_41cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb88 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb88)
  store %struct.Memory* %call_41cb88, %struct.Memory** %MEMORY

  ; Code: callq .SSIOpen	 RIP: 41cb8b	 Bytes: 5
  %loadMem1_41cb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb8b = call %struct.Memory* @routine_callq_.SSIOpen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb8b, i64 171253, i64 5, i64 5)
  store %struct.Memory* %call1_41cb8b, %struct.Memory** %MEMORY

  %loadMem2_41cb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb8b = load i64, i64* %3
  %call2_41cb8b = call %struct.Memory* @sub_446880.SSIOpen(%struct.State* %0, i64  %loadPC_41cb8b, %struct.Memory* %loadMem2_41cb8b)
  store %struct.Memory* %call2_41cb8b, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41cb90	 Bytes: 7
  %loadMem_41cb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb90 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb90)
  store %struct.Memory* %call_41cb90, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x288(%rbp)	 RIP: 41cb97	 Bytes: 6
  %loadMem_41cb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cb97 = call %struct.Memory* @routine_movl__eax__MINUS0x288__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cb97)
  store %struct.Memory* %call_41cb97, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 41cb9d	 Bytes: 5
  %loadMem1_41cb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cb9d = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cb9d, i64 -112669, i64 5, i64 5)
  store %struct.Memory* %call1_41cb9d, %struct.Memory** %MEMORY

  %loadMem2_41cb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cb9d = load i64, i64* %3
  %call2_41cb9d = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_41cb9d, %struct.Memory* %loadMem2_41cb9d)
  store %struct.Memory* %call2_41cb9d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 41cba2	 Bytes: 4
  %loadMem_41cba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cba2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cba2)
  store %struct.Memory* %call_41cba2, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdi	 RIP: 41cba6	 Bytes: 3
  %loadMem_41cba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cba6 = call %struct.Memory* @routine_movq___rsi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cba6)
  store %struct.Memory* %call_41cba6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 41cba9	 Bytes: 4
  %loadMem_41cba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cba9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cba9)
  store %struct.Memory* %call_41cba9, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rsi), %esi	 RIP: 41cbad	 Bytes: 3
  %loadMem_41cbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbad = call %struct.Memory* @routine_movl_0x24__rsi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbad)
  store %struct.Memory* %call_41cbad, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cbb0	 Bytes: 4
  %loadMem_41cbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbb0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbb0)
  store %struct.Memory* %call_41cbb0, %struct.Memory** %MEMORY

  ; Code: addq $0x28, %rcx	 RIP: 41cbb4	 Bytes: 4
  %loadMem_41cbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbb4 = call %struct.Memory* @routine_addq__0x28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbb4)
  store %struct.Memory* %call_41cbb4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 41cbb8	 Bytes: 3
  %loadMem_41cbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbb8 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbb8)
  store %struct.Memory* %call_41cbb8, %struct.Memory** %MEMORY

  ; Code: callq .SSIGetFilePosition	 RIP: 41cbbb	 Bytes: 5
  %loadMem1_41cbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cbbb = call %struct.Memory* @routine_callq_.SSIGetFilePosition(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cbbb, i64 177445, i64 5, i64 5)
  store %struct.Memory* %call1_41cbbb, %struct.Memory** %MEMORY

  %loadMem2_41cbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cbbb = load i64, i64* %3
  %call2_41cbbb = call %struct.Memory* @sub_4480e0.SSIGetFilePosition(%struct.State* %0, i64  %loadPC_41cbbb, %struct.Memory* %loadMem2_41cbbb)
  store %struct.Memory* %call2_41cbbb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 41cbc0	 Bytes: 6
  %loadMem_41cbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbc0 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbc0)
  store %struct.Memory* %call_41cbc0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x244(%rbp)	 RIP: 41cbc6	 Bytes: 7
  %loadMem_41cbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbc6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbc6)
  store %struct.Memory* %call_41cbc6, %struct.Memory** %MEMORY

  ; Code: je .L_41cbe4	 RIP: 41cbcd	 Bytes: 6
  %loadMem_41cbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbcd = call %struct.Memory* @routine_je_.L_41cbe4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbcd, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41cbcd, %struct.Memory** %MEMORY

  %loadBr_41cbcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cbcd = icmp eq i8 %loadBr_41cbcd, 1
  br i1 %cmpBr_41cbcd, label %block_.L_41cbe4, label %block_41cbd3

block_41cbd3:
  ; Code: movq $0x457709, %rdi	 RIP: 41cbd3	 Bytes: 10
  %loadMem_41cbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbd3 = call %struct.Memory* @routine_movq__0x457709___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbd3)
  store %struct.Memory* %call_41cbd3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41cbdd	 Bytes: 2
  %loadMem_41cbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbdd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbdd)
  store %struct.Memory* %call_41cbdd, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41cbdf	 Bytes: 5
  %loadMem1_41cbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cbdf = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cbdf, i64 138801, i64 5, i64 5)
  store %struct.Memory* %call1_41cbdf, %struct.Memory** %MEMORY

  %loadMem2_41cbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cbdf = load i64, i64* %3
  %call2_41cbdf = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41cbdf, %struct.Memory* %loadMem2_41cbdf)
  store %struct.Memory* %call2_41cbdf, %struct.Memory** %MEMORY

  ; Code: .L_41cbe4:	 RIP: 41cbe4	 Bytes: 0
  br label %block_.L_41cbe4
block_.L_41cbe4:

  ; Code: movl $0x4, %eax	 RIP: 41cbe4	 Bytes: 5
  %loadMem_41cbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbe4 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbe4)
  store %struct.Memory* %call_41cbe4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41cbe9	 Bytes: 2
  %loadMem_41cbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbe9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbe9)
  store %struct.Memory* %call_41cbe9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41cbeb	 Bytes: 5
  %loadMem_41cbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbeb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbeb)
  store %struct.Memory* %call_41cbeb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41cbf0	 Bytes: 2
  %loadMem_41cbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbf0 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbf0)
  store %struct.Memory* %call_41cbf0, %struct.Memory** %MEMORY

  ; Code: leaq -0x24(%rbp), %rcx	 RIP: 41cbf2	 Bytes: 4
  %loadMem_41cbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbf2 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbf2)
  store %struct.Memory* %call_41cbf2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41cbf6	 Bytes: 4
  %loadMem_41cbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbf6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbf6)
  store %struct.Memory* %call_41cbf6, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41cbfa	 Bytes: 3
  %loadMem_41cbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbfa = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbfa)
  store %struct.Memory* %call_41cbfa, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x290(%rbp)	 RIP: 41cbfd	 Bytes: 7
  %loadMem_41cbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cbfd = call %struct.Memory* @routine_movq__rdi__MINUS0x290__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cbfd)
  store %struct.Memory* %call_41cbfd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41cc04	 Bytes: 3
  %loadMem_41cc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc04 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc04)
  store %struct.Memory* %call_41cc04, %struct.Memory** %MEMORY

  ; Code: movq -0x290(%rbp), %rcx	 RIP: 41cc07	 Bytes: 7
  %loadMem_41cc07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc07 = call %struct.Memory* @routine_movq_MINUS0x290__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc07)
  store %struct.Memory* %call_41cc07, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41cc0e	 Bytes: 5
  %loadMem1_41cc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cc0e = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cc0e, i64 -112638, i64 5, i64 5)
  store %struct.Memory* %call1_41cc0e, %struct.Memory** %MEMORY

  %loadMem2_41cc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cc0e = load i64, i64* %3
  %call2_41cc0e = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41cc0e, %struct.Memory* %loadMem2_41cc0e)
  store %struct.Memory* %call2_41cc0e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41cc13	 Bytes: 4
  %loadMem_41cc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc13 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc13)
  store %struct.Memory* %call_41cc13, %struct.Memory** %MEMORY

  ; Code: jne .L_41cc33	 RIP: 41cc17	 Bytes: 6
  %loadMem_41cc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc17 = call %struct.Memory* @routine_jne_.L_41cc33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc17, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41cc17, %struct.Memory** %MEMORY

  %loadBr_41cc17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cc17 = icmp eq i8 %loadBr_41cc17, 1
  br i1 %cmpBr_41cc17, label %block_.L_41cc33, label %block_41cc1d

block_41cc1d:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41cc1d	 Bytes: 4
  %loadMem_41cc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc1d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc1d)
  store %struct.Memory* %call_41cc1d, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileClose	 RIP: 41cc21	 Bytes: 5
  %loadMem1_41cc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cc21 = call %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cc21, i64 1247, i64 5, i64 5)
  store %struct.Memory* %call1_41cc21, %struct.Memory** %MEMORY

  %loadMem2_41cc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cc21 = load i64, i64* %3
  %call2_41cc21 = call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* %0, i64  %loadPC_41cc21, %struct.Memory* %loadMem2_41cc21)
  store %struct.Memory* %call2_41cc21, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 41cc26	 Bytes: 8
  %loadMem_41cc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc26 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc26)
  store %struct.Memory* %call_41cc26, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cc2e	 Bytes: 5
  %loadMem_41cc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc2e = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc2e, i64 1207, i64 5)
  store %struct.Memory* %call_41cc2e, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cc33:	 RIP: 41cc33	 Bytes: 0
block_.L_41cc33:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cc33	 Bytes: 4
  %loadMem_41cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc33 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc33)
  store %struct.Memory* %call_41cc33, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41cc37	 Bytes: 3
  %loadMem_41cc37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc37 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc37)
  store %struct.Memory* %call_41cc37, %struct.Memory** %MEMORY

  ; Code: callq .rewind_plt	 RIP: 41cc3a	 Bytes: 5
  %loadMem1_41cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cc3a = call %struct.Memory* @routine_callq_.rewind_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cc3a, i64 -112538, i64 5, i64 5)
  store %struct.Memory* %call1_41cc3a, %struct.Memory** %MEMORY

  %loadMem2_41cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cc3a = load i64, i64* %3
  %call2_41cc3a = call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* %0, i64  %loadPC_41cc3a, %struct.Memory* %loadMem2_41cc3a)
  store %struct.Memory* %call2_41cc3a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 41cc3f	 Bytes: 3
  %loadMem_41cc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc3f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc3f)
  store %struct.Memory* %call_41cc3f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661538, %ecx	 RIP: 41cc42	 Bytes: 7
  %loadMem_41cc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc42 = call %struct.Memory* @routine_cmpl_0x661538___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc42)
  store %struct.Memory* %call_41cc42, %struct.Memory** %MEMORY

  ; Code: jne .L_41cc79	 RIP: 41cc49	 Bytes: 6
  %loadMem_41cc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc49 = call %struct.Memory* @routine_jne_.L_41cc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc49, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41cc49, %struct.Memory** %MEMORY

  %loadBr_41cc49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cc49 = icmp eq i8 %loadBr_41cc49, 1
  br i1 %cmpBr_41cc49, label %block_.L_41cc79, label %block_41cc4f

block_41cc4f:
  ; Code: movq $0x41d160, %rax	 RIP: 41cc4f	 Bytes: 10
  %loadMem_41cc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc4f = call %struct.Memory* @routine_movq__0x41d160___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc4f)
  store %struct.Memory* %call_41cc4f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cc59	 Bytes: 4
  %loadMem_41cc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc59 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc59)
  store %struct.Memory* %call_41cc59, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cc5d	 Bytes: 4
  %loadMem_41cc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc5d = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc5d)
  store %struct.Memory* %call_41cc5d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cc61	 Bytes: 4
  %loadMem_41cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc61 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc61)
  store %struct.Memory* %call_41cc61, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cc65	 Bytes: 7
  %loadMem_41cc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc65 = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc65)
  store %struct.Memory* %call_41cc65, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cc6c	 Bytes: 4
  %loadMem_41cc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc6c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc6c)
  store %struct.Memory* %call_41cc6c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cc70	 Bytes: 4
  %loadMem_41cc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc70 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc70)
  store %struct.Memory* %call_41cc70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cc74	 Bytes: 5
  %loadMem_41cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc74 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc74, i64 1137, i64 5)
  store %struct.Memory* %call_41cc74, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cc79:	 RIP: 41cc79	 Bytes: 0
block_.L_41cc79:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cc79	 Bytes: 3
  %loadMem_41cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc79 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc79)
  store %struct.Memory* %call_41cc79, %struct.Memory** %MEMORY

  ; Code: cmpl 0x66153c, %eax	 RIP: 41cc7c	 Bytes: 7
  %loadMem_41cc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc7c = call %struct.Memory* @routine_cmpl_0x66153c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc7c)
  store %struct.Memory* %call_41cc7c, %struct.Memory** %MEMORY

  ; Code: jne .L_41ccbe	 RIP: 41cc83	 Bytes: 6
  %loadMem_41cc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc83 = call %struct.Memory* @routine_jne_.L_41ccbe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc83, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_41cc83, %struct.Memory** %MEMORY

  %loadBr_41cc83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cc83 = icmp eq i8 %loadBr_41cc83, 1
  br i1 %cmpBr_41cc83, label %block_.L_41ccbe, label %block_41cc89

block_41cc89:
  ; Code: movq $0x41d160, %rax	 RIP: 41cc89	 Bytes: 10
  %loadMem_41cc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc89 = call %struct.Memory* @routine_movq__0x41d160___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc89)
  store %struct.Memory* %call_41cc89, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cc93	 Bytes: 4
  %loadMem_41cc93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc93 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc93)
  store %struct.Memory* %call_41cc93, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cc97	 Bytes: 4
  %loadMem_41cc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc97 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc97)
  store %struct.Memory* %call_41cc97, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cc9b	 Bytes: 4
  %loadMem_41cc9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc9b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc9b)
  store %struct.Memory* %call_41cc9b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cc9f	 Bytes: 7
  %loadMem_41cc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cc9f = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cc9f)
  store %struct.Memory* %call_41cc9f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cca6	 Bytes: 4
  %loadMem_41cca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cca6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cca6)
  store %struct.Memory* %call_41cca6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x1c(%rax)	 RIP: 41ccaa	 Bytes: 7
  %loadMem_41ccaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccaa = call %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccaa)
  store %struct.Memory* %call_41ccaa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ccb1	 Bytes: 4
  %loadMem_41ccb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccb1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccb1)
  store %struct.Memory* %call_41ccb1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41ccb5	 Bytes: 4
  %loadMem_41ccb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccb5 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccb5)
  store %struct.Memory* %call_41ccb5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41ccb9	 Bytes: 5
  %loadMem_41ccb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccb9 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccb9, i64 1068, i64 5)
  store %struct.Memory* %call_41ccb9, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41ccbe:	 RIP: 41ccbe	 Bytes: 0
block_.L_41ccbe:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41ccbe	 Bytes: 3
  %loadMem_41ccbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccbe = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccbe)
  store %struct.Memory* %call_41ccbe, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661540, %eax	 RIP: 41ccc1	 Bytes: 7
  %loadMem_41ccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccc1 = call %struct.Memory* @routine_cmpl_0x661540___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccc1)
  store %struct.Memory* %call_41ccc1, %struct.Memory** %MEMORY

  ; Code: jne .L_41ccf8	 RIP: 41ccc8	 Bytes: 6
  %loadMem_41ccc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccc8 = call %struct.Memory* @routine_jne_.L_41ccf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccc8, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41ccc8, %struct.Memory** %MEMORY

  %loadBr_41ccc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ccc8 = icmp eq i8 %loadBr_41ccc8, 1
  br i1 %cmpBr_41ccc8, label %block_.L_41ccf8, label %block_41ccce

block_41ccce:
  ; Code: movq $0x41e0a0, %rax	 RIP: 41ccce	 Bytes: 10
  %loadMem_41ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccce = call %struct.Memory* @routine_movq__0x41e0a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccce)
  store %struct.Memory* %call_41ccce, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ccd8	 Bytes: 4
  %loadMem_41ccd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccd8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccd8)
  store %struct.Memory* %call_41ccd8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41ccdc	 Bytes: 4
  %loadMem_41ccdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccdc = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccdc)
  store %struct.Memory* %call_41ccdc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cce0	 Bytes: 4
  %loadMem_41cce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cce0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cce0)
  store %struct.Memory* %call_41cce0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cce4	 Bytes: 7
  %loadMem_41cce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cce4 = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cce4)
  store %struct.Memory* %call_41cce4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cceb	 Bytes: 4
  %loadMem_41cceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cceb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cceb)
  store %struct.Memory* %call_41cceb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41ccef	 Bytes: 4
  %loadMem_41ccef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccef = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccef)
  store %struct.Memory* %call_41ccef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41ccf3	 Bytes: 5
  %loadMem_41ccf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccf3 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccf3, i64 1010, i64 5)
  store %struct.Memory* %call_41ccf3, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41ccf8:	 RIP: 41ccf8	 Bytes: 0
block_.L_41ccf8:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41ccf8	 Bytes: 3
  %loadMem_41ccf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccf8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccf8)
  store %struct.Memory* %call_41ccf8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661544, %eax	 RIP: 41ccfb	 Bytes: 7
  %loadMem_41ccfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ccfb = call %struct.Memory* @routine_cmpl_0x661544___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ccfb)
  store %struct.Memory* %call_41ccfb, %struct.Memory** %MEMORY

  ; Code: jne .L_41cd3d	 RIP: 41cd02	 Bytes: 6
  %loadMem_41cd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd02 = call %struct.Memory* @routine_jne_.L_41cd3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd02, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_41cd02, %struct.Memory** %MEMORY

  %loadBr_41cd02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cd02 = icmp eq i8 %loadBr_41cd02, 1
  br i1 %cmpBr_41cd02, label %block_.L_41cd3d, label %block_41cd08

block_41cd08:
  ; Code: movq $0x41e0a0, %rax	 RIP: 41cd08	 Bytes: 10
  %loadMem_41cd08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd08 = call %struct.Memory* @routine_movq__0x41e0a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd08)
  store %struct.Memory* %call_41cd08, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cd12	 Bytes: 4
  %loadMem_41cd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd12 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd12)
  store %struct.Memory* %call_41cd12, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cd16	 Bytes: 4
  %loadMem_41cd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd16 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd16)
  store %struct.Memory* %call_41cd16, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd1a	 Bytes: 4
  %loadMem_41cd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd1a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd1a)
  store %struct.Memory* %call_41cd1a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cd1e	 Bytes: 7
  %loadMem_41cd1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd1e = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd1e)
  store %struct.Memory* %call_41cd1e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd25	 Bytes: 4
  %loadMem_41cd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd25 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd25)
  store %struct.Memory* %call_41cd25, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x1c(%rax)	 RIP: 41cd29	 Bytes: 7
  %loadMem_41cd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd29 = call %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd29)
  store %struct.Memory* %call_41cd29, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd30	 Bytes: 4
  %loadMem_41cd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd30 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd30)
  store %struct.Memory* %call_41cd30, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cd34	 Bytes: 4
  %loadMem_41cd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd34 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd34)
  store %struct.Memory* %call_41cd34, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cd38	 Bytes: 5
  %loadMem_41cd38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd38 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd38, i64 941, i64 5)
  store %struct.Memory* %call_41cd38, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cd3d:	 RIP: 41cd3d	 Bytes: 0
block_.L_41cd3d:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cd3d	 Bytes: 3
  %loadMem_41cd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd3d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd3d)
  store %struct.Memory* %call_41cd3d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661548, %eax	 RIP: 41cd40	 Bytes: 7
  %loadMem_41cd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd40 = call %struct.Memory* @routine_cmpl_0x661548___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd40)
  store %struct.Memory* %call_41cd40, %struct.Memory** %MEMORY

  ; Code: jne .L_41cd77	 RIP: 41cd47	 Bytes: 6
  %loadMem_41cd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd47 = call %struct.Memory* @routine_jne_.L_41cd77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd47, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41cd47, %struct.Memory** %MEMORY

  %loadBr_41cd47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cd47 = icmp eq i8 %loadBr_41cd47, 1
  br i1 %cmpBr_41cd47, label %block_.L_41cd77, label %block_41cd4d

block_41cd4d:
  ; Code: movq $0x41e1b0, %rax	 RIP: 41cd4d	 Bytes: 10
  %loadMem_41cd4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd4d = call %struct.Memory* @routine_movq__0x41e1b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd4d)
  store %struct.Memory* %call_41cd4d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cd57	 Bytes: 4
  %loadMem_41cd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd57 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd57)
  store %struct.Memory* %call_41cd57, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cd5b	 Bytes: 4
  %loadMem_41cd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd5b = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd5b)
  store %struct.Memory* %call_41cd5b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd5f	 Bytes: 4
  %loadMem_41cd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd5f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd5f)
  store %struct.Memory* %call_41cd5f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cd63	 Bytes: 7
  %loadMem_41cd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd63 = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd63)
  store %struct.Memory* %call_41cd63, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd6a	 Bytes: 4
  %loadMem_41cd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd6a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd6a)
  store %struct.Memory* %call_41cd6a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cd6e	 Bytes: 4
  %loadMem_41cd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd6e = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd6e)
  store %struct.Memory* %call_41cd6e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cd72	 Bytes: 5
  %loadMem_41cd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd72 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd72, i64 883, i64 5)
  store %struct.Memory* %call_41cd72, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cd77:	 RIP: 41cd77	 Bytes: 0
block_.L_41cd77:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cd77	 Bytes: 3
  %loadMem_41cd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd77 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd77)
  store %struct.Memory* %call_41cd77, %struct.Memory** %MEMORY

  ; Code: cmpl 0x66154c, %eax	 RIP: 41cd7a	 Bytes: 7
  %loadMem_41cd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd7a = call %struct.Memory* @routine_cmpl_0x66154c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd7a)
  store %struct.Memory* %call_41cd7a, %struct.Memory** %MEMORY

  ; Code: jne .L_41cdbc	 RIP: 41cd81	 Bytes: 6
  %loadMem_41cd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd81 = call %struct.Memory* @routine_jne_.L_41cdbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd81, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_41cd81, %struct.Memory** %MEMORY

  %loadBr_41cd81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cd81 = icmp eq i8 %loadBr_41cd81, 1
  br i1 %cmpBr_41cd81, label %block_.L_41cdbc, label %block_41cd87

block_41cd87:
  ; Code: movq $0x41e1b0, %rax	 RIP: 41cd87	 Bytes: 10
  %loadMem_41cd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd87 = call %struct.Memory* @routine_movq__0x41e1b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd87)
  store %struct.Memory* %call_41cd87, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cd91	 Bytes: 4
  %loadMem_41cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd91 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd91)
  store %struct.Memory* %call_41cd91, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cd95	 Bytes: 4
  %loadMem_41cd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd95 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd95)
  store %struct.Memory* %call_41cd95, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cd99	 Bytes: 4
  %loadMem_41cd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd99 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd99)
  store %struct.Memory* %call_41cd99, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cd9d	 Bytes: 7
  %loadMem_41cd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cd9d = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cd9d)
  store %struct.Memory* %call_41cd9d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cda4	 Bytes: 4
  %loadMem_41cda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cda4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cda4)
  store %struct.Memory* %call_41cda4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x1c(%rax)	 RIP: 41cda8	 Bytes: 7
  %loadMem_41cda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cda8 = call %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cda8)
  store %struct.Memory* %call_41cda8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cdaf	 Bytes: 4
  %loadMem_41cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdaf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdaf)
  store %struct.Memory* %call_41cdaf, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cdb3	 Bytes: 4
  %loadMem_41cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdb3 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdb3)
  store %struct.Memory* %call_41cdb3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cdb7	 Bytes: 5
  %loadMem_41cdb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdb7 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdb7, i64 814, i64 5)
  store %struct.Memory* %call_41cdb7, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cdbc:	 RIP: 41cdbc	 Bytes: 0
block_.L_41cdbc:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cdbc	 Bytes: 3
  %loadMem_41cdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdbc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdbc)
  store %struct.Memory* %call_41cdbc, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661550, %eax	 RIP: 41cdbf	 Bytes: 7
  %loadMem_41cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdbf = call %struct.Memory* @routine_cmpl_0x661550___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdbf)
  store %struct.Memory* %call_41cdbf, %struct.Memory** %MEMORY

  ; Code: jne .L_41cdf6	 RIP: 41cdc6	 Bytes: 6
  %loadMem_41cdc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdc6 = call %struct.Memory* @routine_jne_.L_41cdf6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdc6, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41cdc6, %struct.Memory** %MEMORY

  %loadBr_41cdc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cdc6 = icmp eq i8 %loadBr_41cdc6, 1
  br i1 %cmpBr_41cdc6, label %block_.L_41cdf6, label %block_41cdcc

block_41cdcc:
  ; Code: movq $0x41e2c0, %rax	 RIP: 41cdcc	 Bytes: 10
  %loadMem_41cdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdcc = call %struct.Memory* @routine_movq__0x41e2c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdcc)
  store %struct.Memory* %call_41cdcc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cdd6	 Bytes: 4
  %loadMem_41cdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdd6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdd6)
  store %struct.Memory* %call_41cdd6, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cdda	 Bytes: 4
  %loadMem_41cdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdda = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdda)
  store %struct.Memory* %call_41cdda, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cdde	 Bytes: 4
  %loadMem_41cdde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdde = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdde)
  store %struct.Memory* %call_41cdde, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41cde2	 Bytes: 7
  %loadMem_41cde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cde2 = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cde2)
  store %struct.Memory* %call_41cde2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cde9	 Bytes: 4
  %loadMem_41cde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cde9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cde9)
  store %struct.Memory* %call_41cde9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cded	 Bytes: 4
  %loadMem_41cded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cded = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cded)
  store %struct.Memory* %call_41cded, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cdf1	 Bytes: 5
  %loadMem_41cdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdf1 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdf1, i64 756, i64 5)
  store %struct.Memory* %call_41cdf1, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cdf6:	 RIP: 41cdf6	 Bytes: 0
block_.L_41cdf6:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cdf6	 Bytes: 3
  %loadMem_41cdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdf6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdf6)
  store %struct.Memory* %call_41cdf6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661554, %eax	 RIP: 41cdf9	 Bytes: 7
  %loadMem_41cdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cdf9 = call %struct.Memory* @routine_cmpl_0x661554___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cdf9)
  store %struct.Memory* %call_41cdf9, %struct.Memory** %MEMORY

  ; Code: jne .L_41ce3b	 RIP: 41ce00	 Bytes: 6
  %loadMem_41ce00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce00 = call %struct.Memory* @routine_jne_.L_41ce3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce00, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_41ce00, %struct.Memory** %MEMORY

  %loadBr_41ce00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ce00 = icmp eq i8 %loadBr_41ce00, 1
  br i1 %cmpBr_41ce00, label %block_.L_41ce3b, label %block_41ce06

block_41ce06:
  ; Code: movq $0x41e2c0, %rax	 RIP: 41ce06	 Bytes: 10
  %loadMem_41ce06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce06 = call %struct.Memory* @routine_movq__0x41e2c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce06)
  store %struct.Memory* %call_41ce06, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ce10	 Bytes: 4
  %loadMem_41ce10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce10 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce10)
  store %struct.Memory* %call_41ce10, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41ce14	 Bytes: 4
  %loadMem_41ce14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce14 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce14)
  store %struct.Memory* %call_41ce14, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce18	 Bytes: 4
  %loadMem_41ce18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce18 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce18)
  store %struct.Memory* %call_41ce18, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41ce1c	 Bytes: 7
  %loadMem_41ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce1c = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce1c)
  store %struct.Memory* %call_41ce1c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce23	 Bytes: 4
  %loadMem_41ce23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce23 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce23)
  store %struct.Memory* %call_41ce23, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x1c(%rax)	 RIP: 41ce27	 Bytes: 7
  %loadMem_41ce27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce27 = call %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce27)
  store %struct.Memory* %call_41ce27, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce2e	 Bytes: 4
  %loadMem_41ce2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce2e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce2e)
  store %struct.Memory* %call_41ce2e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41ce32	 Bytes: 4
  %loadMem_41ce32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce32 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce32)
  store %struct.Memory* %call_41ce32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41ce36	 Bytes: 5
  %loadMem_41ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce36 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce36, i64 687, i64 5)
  store %struct.Memory* %call_41ce36, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41ce3b:	 RIP: 41ce3b	 Bytes: 0
block_.L_41ce3b:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41ce3b	 Bytes: 3
  %loadMem_41ce3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce3b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce3b)
  store %struct.Memory* %call_41ce3b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661558, %eax	 RIP: 41ce3e	 Bytes: 7
  %loadMem_41ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce3e = call %struct.Memory* @routine_cmpl_0x661558___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce3e)
  store %struct.Memory* %call_41ce3e, %struct.Memory** %MEMORY

  ; Code: jne .L_41ce75	 RIP: 41ce45	 Bytes: 6
  %loadMem_41ce45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce45 = call %struct.Memory* @routine_jne_.L_41ce75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce45, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41ce45, %struct.Memory** %MEMORY

  %loadBr_41ce45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ce45 = icmp eq i8 %loadBr_41ce45, 1
  br i1 %cmpBr_41ce45, label %block_.L_41ce75, label %block_41ce4b

block_41ce4b:
  ; Code: movq $0x41e3d0, %rax	 RIP: 41ce4b	 Bytes: 10
  %loadMem_41ce4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce4b = call %struct.Memory* @routine_movq__0x41e3d0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce4b)
  store %struct.Memory* %call_41ce4b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ce55	 Bytes: 4
  %loadMem_41ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce55 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce55)
  store %struct.Memory* %call_41ce55, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41ce59	 Bytes: 4
  %loadMem_41ce59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce59 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce59)
  store %struct.Memory* %call_41ce59, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce5d	 Bytes: 4
  %loadMem_41ce5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce5d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce5d)
  store %struct.Memory* %call_41ce5d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41ce61	 Bytes: 7
  %loadMem_41ce61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce61 = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce61)
  store %struct.Memory* %call_41ce61, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce68	 Bytes: 4
  %loadMem_41ce68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce68 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce68)
  store %struct.Memory* %call_41ce68, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41ce6c	 Bytes: 4
  %loadMem_41ce6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce6c = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce6c)
  store %struct.Memory* %call_41ce6c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41ce70	 Bytes: 5
  %loadMem_41ce70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce70 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce70, i64 629, i64 5)
  store %struct.Memory* %call_41ce70, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41ce75:	 RIP: 41ce75	 Bytes: 0
block_.L_41ce75:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41ce75	 Bytes: 3
  %loadMem_41ce75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce75 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce75)
  store %struct.Memory* %call_41ce75, %struct.Memory** %MEMORY

  ; Code: cmpl 0x66155c, %eax	 RIP: 41ce78	 Bytes: 7
  %loadMem_41ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce78 = call %struct.Memory* @routine_cmpl_0x66155c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce78)
  store %struct.Memory* %call_41ce78, %struct.Memory** %MEMORY

  ; Code: jne .L_41ceba	 RIP: 41ce7f	 Bytes: 6
  %loadMem_41ce7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce7f = call %struct.Memory* @routine_jne_.L_41ceba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce7f, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_41ce7f, %struct.Memory** %MEMORY

  %loadBr_41ce7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ce7f = icmp eq i8 %loadBr_41ce7f, 1
  br i1 %cmpBr_41ce7f, label %block_.L_41ceba, label %block_41ce85

block_41ce85:
  ; Code: movq $0x41e3d0, %rax	 RIP: 41ce85	 Bytes: 10
  %loadMem_41ce85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce85 = call %struct.Memory* @routine_movq__0x41e3d0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce85)
  store %struct.Memory* %call_41ce85, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ce8f	 Bytes: 4
  %loadMem_41ce8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce8f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce8f)
  store %struct.Memory* %call_41ce8f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41ce93	 Bytes: 4
  %loadMem_41ce93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce93 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce93)
  store %struct.Memory* %call_41ce93, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41ce97	 Bytes: 4
  %loadMem_41ce97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce97 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce97)
  store %struct.Memory* %call_41ce97, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41ce9b	 Bytes: 7
  %loadMem_41ce9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ce9b = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ce9b)
  store %struct.Memory* %call_41ce9b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cea2	 Bytes: 4
  %loadMem_41cea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cea2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cea2)
  store %struct.Memory* %call_41cea2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x1c(%rax)	 RIP: 41cea6	 Bytes: 7
  %loadMem_41cea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cea6 = call %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cea6)
  store %struct.Memory* %call_41cea6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cead	 Bytes: 4
  %loadMem_41cead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cead = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cead)
  store %struct.Memory* %call_41cead, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41ceb1	 Bytes: 4
  %loadMem_41ceb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ceb1 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ceb1)
  store %struct.Memory* %call_41ceb1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41ceb5	 Bytes: 5
  %loadMem_41ceb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ceb5 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ceb5, i64 560, i64 5)
  store %struct.Memory* %call_41ceb5, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41ceba:	 RIP: 41ceba	 Bytes: 0
block_.L_41ceba:

  ; Code: jmpq .L_41cebf	 RIP: 41ceba	 Bytes: 5
  %loadMem_41ceba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ceba = call %struct.Memory* @routine_jmpq_.L_41cebf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ceba, i64 5, i64 5)
  store %struct.Memory* %call_41ceba, %struct.Memory** %MEMORY

  br label %block_.L_41cebf

  ; Code: .L_41cebf:	 RIP: 41cebf	 Bytes: 0
block_.L_41cebf:

  ; Code: jmpq .L_41cec4	 RIP: 41cebf	 Bytes: 5
  %loadMem_41cebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cebf = call %struct.Memory* @routine_jmpq_.L_41cec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cebf, i64 5, i64 5)
  store %struct.Memory* %call_41cebf, %struct.Memory** %MEMORY

  br label %block_.L_41cec4

  ; Code: .L_41cec4:	 RIP: 41cec4	 Bytes: 0
block_.L_41cec4:

  ; Code: jmpq .L_41cec9	 RIP: 41cec4	 Bytes: 5
  %loadMem_41cec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cec4 = call %struct.Memory* @routine_jmpq_.L_41cec9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cec4, i64 5, i64 5)
  store %struct.Memory* %call_41cec4, %struct.Memory** %MEMORY

  br label %block_.L_41cec9

  ; Code: .L_41cec9:	 RIP: 41cec9	 Bytes: 0
block_.L_41cec9:

  ; Code: jmpq .L_41cece	 RIP: 41cec9	 Bytes: 5
  %loadMem_41cec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cec9 = call %struct.Memory* @routine_jmpq_.L_41cece(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cec9, i64 5, i64 5)
  store %struct.Memory* %call_41cec9, %struct.Memory** %MEMORY

  br label %block_.L_41cece

  ; Code: .L_41cece:	 RIP: 41cece	 Bytes: 0
block_.L_41cece:

  ; Code: jmpq .L_41ced3	 RIP: 41cece	 Bytes: 5
  %loadMem_41cece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cece = call %struct.Memory* @routine_jmpq_.L_41ced3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cece, i64 5, i64 5)
  store %struct.Memory* %call_41cece, %struct.Memory** %MEMORY

  br label %block_.L_41ced3

  ; Code: .L_41ced3:	 RIP: 41ced3	 Bytes: 0
block_.L_41ced3:

  ; Code: jmpq .L_41ced8	 RIP: 41ced3	 Bytes: 5
  %loadMem_41ced3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ced3 = call %struct.Memory* @routine_jmpq_.L_41ced8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ced3, i64 5, i64 5)
  store %struct.Memory* %call_41ced3, %struct.Memory** %MEMORY

  br label %block_.L_41ced8

  ; Code: .L_41ced8:	 RIP: 41ced8	 Bytes: 0
block_.L_41ced8:

  ; Code: jmpq .L_41cedd	 RIP: 41ced8	 Bytes: 5
  %loadMem_41ced8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ced8 = call %struct.Memory* @routine_jmpq_.L_41cedd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ced8, i64 5, i64 5)
  store %struct.Memory* %call_41ced8, %struct.Memory** %MEMORY

  br label %block_.L_41cedd

  ; Code: .L_41cedd:	 RIP: 41cedd	 Bytes: 0
block_.L_41cedd:

  ; Code: jmpq .L_41cee2	 RIP: 41cedd	 Bytes: 5
  %loadMem_41cedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cedd = call %struct.Memory* @routine_jmpq_.L_41cee2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cedd, i64 5, i64 5)
  store %struct.Memory* %call_41cedd, %struct.Memory** %MEMORY

  br label %block_.L_41cee2

  ; Code: .L_41cee2:	 RIP: 41cee2	 Bytes: 0
block_.L_41cee2:

  ; Code: jmpq .L_41cee7	 RIP: 41cee2	 Bytes: 5
  %loadMem_41cee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cee2 = call %struct.Memory* @routine_jmpq_.L_41cee7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cee2, i64 5, i64 5)
  store %struct.Memory* %call_41cee2, %struct.Memory** %MEMORY

  br label %block_.L_41cee7

  ; Code: .L_41cee7:	 RIP: 41cee7	 Bytes: 0
block_.L_41cee7:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41cee7	 Bytes: 3
  %loadMem_41cee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cee7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cee7)
  store %struct.Memory* %call_41cee7, %struct.Memory** %MEMORY

  ; Code: andl $0x80000000, %eax	 RIP: 41ceea	 Bytes: 5
  %loadMem_41ceea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ceea = call %struct.Memory* @routine_andl__0x80000000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ceea)
  store %struct.Memory* %call_41ceea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ceef	 Bytes: 3
  %loadMem_41ceef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ceef = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ceef)
  store %struct.Memory* %call_41ceef, %struct.Memory** %MEMORY

  ; Code: je .L_41cf23	 RIP: 41cef2	 Bytes: 6
  %loadMem_41cef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cef2 = call %struct.Memory* @routine_je_.L_41cf23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cef2, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_41cef2, %struct.Memory** %MEMORY

  %loadBr_41cef2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cef2 = icmp eq i8 %loadBr_41cef2, 1
  br i1 %cmpBr_41cef2, label %block_.L_41cf23, label %block_41cef8

block_41cef8:
  ; Code: movq $0x457725, %rdi	 RIP: 41cef8	 Bytes: 10
  %loadMem_41cef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cef8 = call %struct.Memory* @routine_movq__0x457725___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cef8)
  store %struct.Memory* %call_41cef8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41cf02	 Bytes: 4
  %loadMem_41cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf02 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf02)
  store %struct.Memory* %call_41cf02, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41cf06	 Bytes: 2
  %loadMem_41cf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf06 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf06)
  store %struct.Memory* %call_41cf06, %struct.Memory** %MEMORY

  ; Code: callq .Warn	 RIP: 41cf08	 Bytes: 5
  %loadMem1_41cf08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf08 = call %struct.Memory* @routine_callq_.Warn(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf08, i64 138456, i64 5, i64 5)
  store %struct.Memory* %call1_41cf08, %struct.Memory** %MEMORY

  %loadMem2_41cf08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf08 = load i64, i64* %3
  %call2_41cf08 = call %struct.Memory* @sub_43ebe0.Warn(%struct.State* %0, i64  %loadPC_41cf08, %struct.Memory* %loadMem2_41cf08)
  store %struct.Memory* %call2_41cf08, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41cf0d	 Bytes: 4
  %loadMem_41cf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf0d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf0d)
  store %struct.Memory* %call_41cf0d, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileClose	 RIP: 41cf11	 Bytes: 5
  %loadMem1_41cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf11 = call %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf11, i64 495, i64 5, i64 5)
  store %struct.Memory* %call1_41cf11, %struct.Memory** %MEMORY

  %loadMem2_41cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf11 = load i64, i64* %3
  %call2_41cf11 = call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* %0, i64  %loadPC_41cf11, %struct.Memory* %loadMem2_41cf11)
  store %struct.Memory* %call2_41cf11, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 41cf16	 Bytes: 8
  %loadMem_41cf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf16 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf16)
  store %struct.Memory* %call_41cf16, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cf1e	 Bytes: 5
  %loadMem_41cf1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf1e = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf1e, i64 455, i64 5)
  store %struct.Memory* %call_41cf1e, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cf23:	 RIP: 41cf23	 Bytes: 0
block_.L_41cf23:

  ; Code: movl $0x200, %esi	 RIP: 41cf23	 Bytes: 5
  %loadMem_41cf23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf23 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf23)
  store %struct.Memory* %call_41cf23, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 41cf28	 Bytes: 7
  %loadMem_41cf28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf28 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf28)
  store %struct.Memory* %call_41cf28, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cf2f	 Bytes: 4
  %loadMem_41cf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf2f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf2f)
  store %struct.Memory* %call_41cf2f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41cf33	 Bytes: 3
  %loadMem_41cf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf33 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf33)
  store %struct.Memory* %call_41cf33, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41cf36	 Bytes: 5
  %loadMem1_41cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf36 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf36, i64 -113142, i64 5, i64 5)
  store %struct.Memory* %call1_41cf36, %struct.Memory** %MEMORY

  %loadMem2_41cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf36 = load i64, i64* %3
  %call2_41cf36 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41cf36, %struct.Memory* %loadMem2_41cf36)
  store %struct.Memory* %call2_41cf36, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41cf3b	 Bytes: 4
  %loadMem_41cf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf3b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf3b)
  store %struct.Memory* %call_41cf3b, %struct.Memory** %MEMORY

  ; Code: jne .L_41cf5b	 RIP: 41cf3f	 Bytes: 6
  %loadMem_41cf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf3f = call %struct.Memory* @routine_jne_.L_41cf5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf3f, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41cf3f, %struct.Memory** %MEMORY

  %loadBr_41cf3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cf3f = icmp eq i8 %loadBr_41cf3f, 1
  br i1 %cmpBr_41cf3f, label %block_.L_41cf5b, label %block_41cf45

block_41cf45:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41cf45	 Bytes: 4
  %loadMem_41cf45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf45 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf45)
  store %struct.Memory* %call_41cf45, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileClose	 RIP: 41cf49	 Bytes: 5
  %loadMem1_41cf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf49 = call %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf49, i64 439, i64 5, i64 5)
  store %struct.Memory* %call1_41cf49, %struct.Memory** %MEMORY

  %loadMem2_41cf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf49 = load i64, i64* %3
  %call2_41cf49 = call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* %0, i64  %loadPC_41cf49, %struct.Memory* %loadMem2_41cf49)
  store %struct.Memory* %call2_41cf49, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 41cf4e	 Bytes: 8
  %loadMem_41cf4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf4e = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf4e)
  store %struct.Memory* %call_41cf4e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cf56	 Bytes: 5
  %loadMem_41cf56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf56 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf56, i64 399, i64 5)
  store %struct.Memory* %call_41cf56, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cf5b:	 RIP: 41cf5b	 Bytes: 0
block_.L_41cf5b:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cf5b	 Bytes: 4
  %loadMem_41cf5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf5b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf5b)
  store %struct.Memory* %call_41cf5b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41cf5f	 Bytes: 3
  %loadMem_41cf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf5f = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf5f)
  store %struct.Memory* %call_41cf5f, %struct.Memory** %MEMORY

  ; Code: callq .rewind_plt	 RIP: 41cf62	 Bytes: 5
  %loadMem1_41cf62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf62 = call %struct.Memory* @routine_callq_.rewind_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf62, i64 -113346, i64 5, i64 5)
  store %struct.Memory* %call1_41cf62, %struct.Memory** %MEMORY

  %loadMem2_41cf62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf62 = load i64, i64* %3
  %call2_41cf62 = call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* %0, i64  %loadPC_41cf62, %struct.Memory* %loadMem2_41cf62)
  store %struct.Memory* %call2_41cf62, %struct.Memory** %MEMORY

  ; Code: movq $0x4577c5, %rdi	 RIP: 41cf67	 Bytes: 10
  %loadMem_41cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf67 = call %struct.Memory* @routine_movq__0x4577c5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf67)
  store %struct.Memory* %call_41cf67, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %ecx	 RIP: 41cf71	 Bytes: 5
  %loadMem_41cf71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf71 = call %struct.Memory* @routine_movl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf71)
  store %struct.Memory* %call_41cf71, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41cf76	 Bytes: 2
  %loadMem_41cf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf76 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf76)
  store %struct.Memory* %call_41cf76, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 41cf78	 Bytes: 7
  %loadMem_41cf78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf78 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf78)
  store %struct.Memory* %call_41cf78, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41cf7f	 Bytes: 5
  %loadMem1_41cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cf7f = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cf7f, i64 -113583, i64 5, i64 5)
  store %struct.Memory* %call1_41cf7f, %struct.Memory** %MEMORY

  %loadMem2_41cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cf7f = load i64, i64* %3
  %call2_41cf7f = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41cf7f, %struct.Memory* %loadMem2_41cf7f)
  store %struct.Memory* %call2_41cf7f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41cf84	 Bytes: 3
  %loadMem_41cf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf84 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf84)
  store %struct.Memory* %call_41cf84, %struct.Memory** %MEMORY

  ; Code: jne .L_41cfac	 RIP: 41cf87	 Bytes: 6
  %loadMem_41cf87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf87 = call %struct.Memory* @routine_jne_.L_41cfac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf87, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41cf87, %struct.Memory** %MEMORY

  %loadBr_41cf87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cf87 = icmp eq i8 %loadBr_41cf87, 1
  br i1 %cmpBr_41cf87, label %block_.L_41cfac, label %block_41cf8d

block_41cf8d:
  ; Code: movq $0x41e4e0, %rax	 RIP: 41cf8d	 Bytes: 10
  %loadMem_41cf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf8d = call %struct.Memory* @routine_movq__0x41e4e0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf8d)
  store %struct.Memory* %call_41cf8d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cf97	 Bytes: 4
  %loadMem_41cf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf97 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf97)
  store %struct.Memory* %call_41cf97, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cf9b	 Bytes: 4
  %loadMem_41cf9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf9b = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf9b)
  store %struct.Memory* %call_41cf9b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cf9f	 Bytes: 4
  %loadMem_41cf9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cf9f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cf9f)
  store %struct.Memory* %call_41cf9f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cfa3	 Bytes: 4
  %loadMem_41cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfa3 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfa3)
  store %struct.Memory* %call_41cfa3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cfa7	 Bytes: 5
  %loadMem_41cfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfa7 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfa7, i64 318, i64 5)
  store %struct.Memory* %call_41cfa7, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cfac:	 RIP: 41cfac	 Bytes: 0
block_.L_41cfac:

  ; Code: movq $0x4577ce, %rdi	 RIP: 41cfac	 Bytes: 10
  %loadMem_41cfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfac = call %struct.Memory* @routine_movq__0x4577ce___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfac)
  store %struct.Memory* %call_41cfac, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 41cfb6	 Bytes: 5
  %loadMem_41cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfb6 = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfb6)
  store %struct.Memory* %call_41cfb6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41cfbb	 Bytes: 2
  %loadMem_41cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfbb = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfbb)
  store %struct.Memory* %call_41cfbb, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 41cfbd	 Bytes: 7
  %loadMem_41cfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfbd = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfbd)
  store %struct.Memory* %call_41cfbd, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41cfc4	 Bytes: 5
  %loadMem1_41cfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41cfc4 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41cfc4, i64 -113652, i64 5, i64 5)
  store %struct.Memory* %call1_41cfc4, %struct.Memory** %MEMORY

  %loadMem2_41cfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41cfc4 = load i64, i64* %3
  %call2_41cfc4 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41cfc4, %struct.Memory* %loadMem2_41cfc4)
  store %struct.Memory* %call2_41cfc4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41cfc9	 Bytes: 3
  %loadMem_41cfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfc9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfc9)
  store %struct.Memory* %call_41cfc9, %struct.Memory** %MEMORY

  ; Code: jne .L_41cff1	 RIP: 41cfcc	 Bytes: 6
  %loadMem_41cfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfcc = call %struct.Memory* @routine_jne_.L_41cff1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfcc, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41cfcc, %struct.Memory** %MEMORY

  %loadBr_41cfcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41cfcc = icmp eq i8 %loadBr_41cfcc, 1
  br i1 %cmpBr_41cfcc, label %block_.L_41cff1, label %block_41cfd2

block_41cfd2:
  ; Code: movq $0x41f910, %rax	 RIP: 41cfd2	 Bytes: 10
  %loadMem_41cfd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfd2 = call %struct.Memory* @routine_movq__0x41f910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfd2)
  store %struct.Memory* %call_41cfd2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41cfdc	 Bytes: 4
  %loadMem_41cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfdc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfdc)
  store %struct.Memory* %call_41cfdc, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41cfe0	 Bytes: 4
  %loadMem_41cfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfe0 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfe0)
  store %struct.Memory* %call_41cfe0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41cfe4	 Bytes: 4
  %loadMem_41cfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfe4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfe4)
  store %struct.Memory* %call_41cfe4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41cfe8	 Bytes: 4
  %loadMem_41cfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfe8 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfe8)
  store %struct.Memory* %call_41cfe8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41cfec	 Bytes: 5
  %loadMem_41cfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cfec = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cfec, i64 249, i64 5)
  store %struct.Memory* %call_41cfec, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41cff1:	 RIP: 41cff1	 Bytes: 0
block_.L_41cff1:

  ; Code: movq $0x4577d9, %rdi	 RIP: 41cff1	 Bytes: 10
  %loadMem_41cff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cff1 = call %struct.Memory* @routine_movq__0x4577d9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cff1)
  store %struct.Memory* %call_41cff1, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 41cffb	 Bytes: 5
  %loadMem_41cffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41cffb = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41cffb)
  store %struct.Memory* %call_41cffb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d000	 Bytes: 2
  %loadMem_41d000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d000 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d000)
  store %struct.Memory* %call_41d000, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 41d002	 Bytes: 7
  %loadMem_41d002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d002 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d002)
  store %struct.Memory* %call_41d002, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41d009	 Bytes: 5
  %loadMem1_41d009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d009 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d009, i64 -113721, i64 5, i64 5)
  store %struct.Memory* %call1_41d009, %struct.Memory** %MEMORY

  %loadMem2_41d009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d009 = load i64, i64* %3
  %call2_41d009 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41d009, %struct.Memory* %loadMem2_41d009)
  store %struct.Memory* %call2_41d009, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d00e	 Bytes: 3
  %loadMem_41d00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d00e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d00e)
  store %struct.Memory* %call_41d00e, %struct.Memory** %MEMORY

  ; Code: jne .L_41d036	 RIP: 41d011	 Bytes: 6
  %loadMem_41d011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d011 = call %struct.Memory* @routine_jne_.L_41d036(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d011, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41d011, %struct.Memory** %MEMORY

  %loadBr_41d011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d011 = icmp eq i8 %loadBr_41d011, 1
  br i1 %cmpBr_41d011, label %block_.L_41d036, label %block_41d017

block_41d017:
  ; Code: movq $0x4206d0, %rax	 RIP: 41d017	 Bytes: 10
  %loadMem_41d017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d017 = call %struct.Memory* @routine_movq__0x4206d0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d017)
  store %struct.Memory* %call_41d017, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d021	 Bytes: 4
  %loadMem_41d021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d021 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d021)
  store %struct.Memory* %call_41d021, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41d025	 Bytes: 4
  %loadMem_41d025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d025 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d025)
  store %struct.Memory* %call_41d025, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d029	 Bytes: 4
  %loadMem_41d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d029 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d029)
  store %struct.Memory* %call_41d029, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41d02d	 Bytes: 4
  %loadMem_41d02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d02d = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d02d)
  store %struct.Memory* %call_41d02d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41d031	 Bytes: 5
  %loadMem_41d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d031 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d031, i64 180, i64 5)
  store %struct.Memory* %call_41d031, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41d036:	 RIP: 41d036	 Bytes: 0
block_.L_41d036:

  ; Code: movq $0x4577e4, %rdi	 RIP: 41d036	 Bytes: 10
  %loadMem_41d036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d036 = call %struct.Memory* @routine_movq__0x4577e4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d036)
  store %struct.Memory* %call_41d036, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 41d040	 Bytes: 5
  %loadMem_41d040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d040 = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d040)
  store %struct.Memory* %call_41d040, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d045	 Bytes: 2
  %loadMem_41d045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d045 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d045)
  store %struct.Memory* %call_41d045, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 41d047	 Bytes: 7
  %loadMem_41d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d047 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d047)
  store %struct.Memory* %call_41d047, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41d04e	 Bytes: 5
  %loadMem1_41d04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d04e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d04e, i64 -113790, i64 5, i64 5)
  store %struct.Memory* %call1_41d04e, %struct.Memory** %MEMORY

  %loadMem2_41d04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d04e = load i64, i64* %3
  %call2_41d04e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41d04e, %struct.Memory* %loadMem2_41d04e)
  store %struct.Memory* %call2_41d04e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d053	 Bytes: 3
  %loadMem_41d053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d053 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d053)
  store %struct.Memory* %call_41d053, %struct.Memory** %MEMORY

  ; Code: jne .L_41d07b	 RIP: 41d056	 Bytes: 6
  %loadMem_41d056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d056 = call %struct.Memory* @routine_jne_.L_41d07b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d056, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41d056, %struct.Memory** %MEMORY

  %loadBr_41d056 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d056 = icmp eq i8 %loadBr_41d056, 1
  br i1 %cmpBr_41d056, label %block_.L_41d07b, label %block_41d05c

block_41d05c:
  ; Code: movq $0x4207c0, %rax	 RIP: 41d05c	 Bytes: 10
  %loadMem_41d05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d05c = call %struct.Memory* @routine_movq__0x4207c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d05c)
  store %struct.Memory* %call_41d05c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d066	 Bytes: 4
  %loadMem_41d066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d066 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d066)
  store %struct.Memory* %call_41d066, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41d06a	 Bytes: 4
  %loadMem_41d06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d06a = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d06a)
  store %struct.Memory* %call_41d06a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d06e	 Bytes: 4
  %loadMem_41d06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d06e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d06e)
  store %struct.Memory* %call_41d06e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41d072	 Bytes: 4
  %loadMem_41d072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d072 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d072)
  store %struct.Memory* %call_41d072, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41d076	 Bytes: 5
  %loadMem_41d076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d076 = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d076, i64 111, i64 5)
  store %struct.Memory* %call_41d076, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41d07b:	 RIP: 41d07b	 Bytes: 0
block_.L_41d07b:

  ; Code: movq $0x4577ef, %rdi	 RIP: 41d07b	 Bytes: 10
  %loadMem_41d07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d07b = call %struct.Memory* @routine_movq__0x4577ef___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d07b)
  store %struct.Memory* %call_41d07b, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 41d085	 Bytes: 5
  %loadMem_41d085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d085 = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d085)
  store %struct.Memory* %call_41d085, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d08a	 Bytes: 2
  %loadMem_41d08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d08a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d08a)
  store %struct.Memory* %call_41d08a, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 41d08c	 Bytes: 7
  %loadMem_41d08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d08c = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d08c)
  store %struct.Memory* %call_41d08c, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41d093	 Bytes: 5
  %loadMem1_41d093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d093 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d093, i64 -113859, i64 5, i64 5)
  store %struct.Memory* %call1_41d093, %struct.Memory** %MEMORY

  %loadMem2_41d093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d093 = load i64, i64* %3
  %call2_41d093 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41d093, %struct.Memory* %loadMem2_41d093)
  store %struct.Memory* %call2_41d093, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d098	 Bytes: 3
  %loadMem_41d098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d098 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d098)
  store %struct.Memory* %call_41d098, %struct.Memory** %MEMORY

  ; Code: jne .L_41d0c0	 RIP: 41d09b	 Bytes: 6
  %loadMem_41d09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d09b = call %struct.Memory* @routine_jne_.L_41d0c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d09b, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41d09b, %struct.Memory** %MEMORY

  %loadBr_41d09b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d09b = icmp eq i8 %loadBr_41d09b, 1
  br i1 %cmpBr_41d09b, label %block_.L_41d0c0, label %block_41d0a1

block_41d0a1:
  ; Code: movq $0x4207f0, %rax	 RIP: 41d0a1	 Bytes: 10
  %loadMem_41d0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0a1 = call %struct.Memory* @routine_movq__0x4207f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0a1)
  store %struct.Memory* %call_41d0a1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d0ab	 Bytes: 4
  %loadMem_41d0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0ab = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0ab)
  store %struct.Memory* %call_41d0ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41d0af	 Bytes: 4
  %loadMem_41d0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0af = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0af)
  store %struct.Memory* %call_41d0af, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d0b3	 Bytes: 4
  %loadMem_41d0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0b3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0b3)
  store %struct.Memory* %call_41d0b3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41d0b7	 Bytes: 4
  %loadMem_41d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0b7 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0b7)
  store %struct.Memory* %call_41d0b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d0e5	 RIP: 41d0bb	 Bytes: 5
  %loadMem_41d0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0bb = call %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0bb, i64 42, i64 5)
  store %struct.Memory* %call_41d0bb, %struct.Memory** %MEMORY

  br label %block_.L_41d0e5

  ; Code: .L_41d0c0:	 RIP: 41d0c0	 Bytes: 0
block_.L_41d0c0:

  ; Code: jmpq .L_41d0c5	 RIP: 41d0c0	 Bytes: 5
  %loadMem_41d0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0c0 = call %struct.Memory* @routine_jmpq_.L_41d0c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0c0, i64 5, i64 5)
  store %struct.Memory* %call_41d0c0, %struct.Memory** %MEMORY

  br label %block_.L_41d0c5

  ; Code: .L_41d0c5:	 RIP: 41d0c5	 Bytes: 0
block_.L_41d0c5:

  ; Code: jmpq .L_41d0ca	 RIP: 41d0c5	 Bytes: 5
  %loadMem_41d0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0c5 = call %struct.Memory* @routine_jmpq_.L_41d0ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0c5, i64 5, i64 5)
  store %struct.Memory* %call_41d0c5, %struct.Memory** %MEMORY

  br label %block_.L_41d0ca

  ; Code: .L_41d0ca:	 RIP: 41d0ca	 Bytes: 0
block_.L_41d0ca:

  ; Code: jmpq .L_41d0cf	 RIP: 41d0ca	 Bytes: 5
  %loadMem_41d0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0ca = call %struct.Memory* @routine_jmpq_.L_41d0cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0ca, i64 5, i64 5)
  store %struct.Memory* %call_41d0ca, %struct.Memory** %MEMORY

  br label %block_.L_41d0cf

  ; Code: .L_41d0cf:	 RIP: 41d0cf	 Bytes: 0
block_.L_41d0cf:

  ; Code: jmpq .L_41d0d4	 RIP: 41d0cf	 Bytes: 5
  %loadMem_41d0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0cf = call %struct.Memory* @routine_jmpq_.L_41d0d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0cf, i64 5, i64 5)
  store %struct.Memory* %call_41d0cf, %struct.Memory** %MEMORY

  br label %block_.L_41d0d4

  ; Code: .L_41d0d4:	 RIP: 41d0d4	 Bytes: 0
block_.L_41d0d4:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41d0d4	 Bytes: 4
  %loadMem_41d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0d4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0d4)
  store %struct.Memory* %call_41d0d4, %struct.Memory** %MEMORY

  ; Code: callq .HMMFileClose	 RIP: 41d0d8	 Bytes: 5
  %loadMem1_41d0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d0d8 = call %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d0d8, i64 40, i64 5, i64 5)
  store %struct.Memory* %call1_41d0d8, %struct.Memory** %MEMORY

  %loadMem2_41d0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d0d8 = load i64, i64* %3
  %call2_41d0d8 = call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* %0, i64  %loadPC_41d0d8, %struct.Memory* %loadMem2_41d0d8)
  store %struct.Memory* %call2_41d0d8, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 41d0dd	 Bytes: 8
  %loadMem_41d0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0dd = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0dd)
  store %struct.Memory* %call_41d0dd, %struct.Memory** %MEMORY

  ; Code: .L_41d0e5:	 RIP: 41d0e5	 Bytes: 0
  br label %block_.L_41d0e5
block_.L_41d0e5:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41d0e5	 Bytes: 4
  %loadMem_41d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0e5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0e5)
  store %struct.Memory* %call_41d0e5, %struct.Memory** %MEMORY

  ; Code: addq $0x290, %rsp	 RIP: 41d0e9	 Bytes: 7
  %loadMem_41d0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0e9 = call %struct.Memory* @routine_addq__0x290___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0e9)
  store %struct.Memory* %call_41d0e9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41d0f0	 Bytes: 1
  %loadMem_41d0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0f0 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0f0)
  store %struct.Memory* %call_41d0f0, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41d0f1	 Bytes: 1
  %loadMem_41d0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d0f1 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d0f1)
  store %struct.Memory* %call_41d0f1, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41d0f1
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

define %struct.Memory* @routine_subq__0x290___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 656)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x45763b___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45763b_type* @G__0x45763b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xa4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 164)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x38___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 56)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x458380___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458380_type* @G__0x458380 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x1__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_callq_.fopen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_je_.L_41ca45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45763b_type* @G__0x45763b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xb5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 181)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rdi__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl__esi__MINUS0x25c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 604
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.strlen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x5___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 5)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %12 [
    i6 0, label %41
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 1
  %9 = icmp slt i64 %3, 0
  %10 = icmp slt i64 %8, 0
  %11 = xor i1 %9, %10
  br label %19

; <label>:12:                                     ; preds = %5
  %13 = and i64 %4, 63
  %14 = add  i64 %13, -1
  %15 = shl i64 %3, %14
  %16 = icmp slt i64 %15, 0
  %17 = icmp ne i8 0, 0
  %18 = shl i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %12, %7
  %20 = phi i1 [ %9, %7 ], [ %16, %12 ]
  %21 = phi i1 [ %11, %7 ], [ %17, %12 ]
  %22 = phi i64 [ %8, %7 ], [ %18, %12 ]
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %24 = zext i1 %20 to i8
  store i8 %24, i8* %23, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 254
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #22
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %25, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %34 = icmp eq i64 %22, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %37 = lshr i64 %22, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %40 = zext i1 %21 to i8
  store i8 %40, i8* %39, align 1
  br label %41

; <label>:41:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shlq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x258__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
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

define %struct.Memory* @routine_movl_MINUS0x25c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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




define %struct.Memory* @routine_movq__0x4576e8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4576e8_type* @G__0x4576e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x260__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.SSIRecommendMode(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x24__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
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

define %struct.Memory* @routine_jne_.L_41ca40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4576ef___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4576ef_type* @G__0x4576ef to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.Die(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41cb79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x240__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.EnvFileOpen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41cb67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x240__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_callq_.FileConcat(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 192)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x250__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0x268__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__esi__MINUS0x26c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 620
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__rax__MINUS0x278__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 632
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x278__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 5)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x268__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0x280__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 640
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x26c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x280__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x250__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x250__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x284__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 644
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jne_.L_41cb4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_41cb74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41d0e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_addq__0x8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 8)
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


define %struct.Memory* @routine_callq_.SSIOpen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x288__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 648
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movl_0x24__rsi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addq__0x28___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 40)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_callq_.SSIGetFilePosition(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41cbe4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457709___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457709_type* @G__0x457709 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq___rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi__MINUS0x290__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 656
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x290__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.fread_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41cc33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.HMMFileClose(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.rewind_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x661538___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661538_type* @G_0x661538 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41cc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41d160___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41d160_type* @G__0x41d160 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl_0x66153c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x66153c_type* @G_0x66153c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ccbe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl__0x1__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpl_0x661540___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661540_type* @G_0x661540 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ccf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41e0a0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41e0a0_type* @G__0x41e0a0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_cmpl_0x661544___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661544_type* @G_0x661544 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41cd3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_cmpl_0x661548___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661548_type* @G_0x661548 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41cd77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41e1b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41e1b0_type* @G__0x41e1b0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_cmpl_0x66154c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x66154c_type* @G_0x66154c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41cdbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_cmpl_0x661550___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661550_type* @G_0x661550 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41cdf6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41e2c0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41e2c0_type* @G__0x41e2c0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_cmpl_0x661554___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661554_type* @G_0x661554 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ce3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_cmpl_0x661558___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661558_type* @G_0x661558 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ce75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41e3d0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41e3d0_type* @G__0x41e3d0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_cmpl_0x66155c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x66155c_type* @G_0x66155c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ceba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_41cebf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cec9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cece(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41ced3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41ced8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cedd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cee2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41cee7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x80000000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -2147483648)
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


define %struct.Memory* @routine_je_.L_41cf23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457725___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457725_type* @G__0x457725 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_callq_.Warn(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x200___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 512)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq___rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.fgets_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41cf5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq__0x4577c5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4577c5_type* @G__0x4577c5 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 8)
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


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41cfac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41e4e0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41e4e0_type* @G__0x41e4e0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movq__0x4577ce___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4577ce_type* @G__0x4577ce to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xa___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 10)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_41cff1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x41f910___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x41f910_type* @G__0x41f910 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movq__0x4577d9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4577d9_type* @G__0x4577d9 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41d036(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4206d0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4206d0_type* @G__0x4206d0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movq__0x4577e4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4577e4_type* @G__0x4577e4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41d07b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4207c0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4207c0_type* @G__0x4207c0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movq__0x4577ef___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4577ef_type* @G__0x4577ef to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_41d0c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4207f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4207f0_type* @G__0x4207f0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jmpq_.L_41d0c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41d0ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41d0cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41d0d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_addq__0x290___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 656)
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

