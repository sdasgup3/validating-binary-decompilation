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
declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_405100.SymbolIndex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452200.FCopy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4527a0.FNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42c1a0.estimate_model_length(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_439650.P7PriorifyEmissionVector(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42c250.build_cij(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_439180.P7PriorifyTransitionVector(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4522c0.FDot(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452150.FAdd(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_429240.matassign2hmm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x288a4__rip__type = type <{ [4 x i8] }>
@G_0x288a4__rip_= global %G_0x288a4__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x28c77__rip__type = type <{ [8 x i8] }>
@G_0x28c77__rip_= global %G_0x28c77__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28c98__rip__type = type <{ [8 x i8] }>
@G_0x28c98__rip_= global %G_0x28c98__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28cda__rip__type = type <{ [8 x i8] }>
@G_0x28cda__rip_= global %G_0x28cda__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28cfb__rip__type = type <{ [8 x i8] }>
@G_0x28cfb__rip_= global %G_0x28cfb__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28d4b__rip__type = type <{ [8 x i8] }>
@G_0x28d4b__rip_= global %G_0x28d4b__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28d6c__rip__type = type <{ [8 x i8] }>
@G_0x28d6c__rip_= global %G_0x28d6c__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28dbc__rip__type = type <{ [8 x i8] }>
@G_0x28dbc__rip_= global %G_0x28dbc__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28ddd__rip__type = type <{ [8 x i8] }>
@G_0x28ddd__rip_= global %G_0x28ddd__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28e2d__rip__type = type <{ [8 x i8] }>
@G_0x28e2d__rip_= global %G_0x28e2d__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28e4e__rip__type = type <{ [8 x i8] }>
@G_0x28e4e__rip_= global %G_0x28e4e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28e90__rip__type = type <{ [8 x i8] }>
@G_0x28e90__rip_= global %G_0x28e90__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28e9c__rip__type = type <{ [4 x i8] }>
@G_0x28e9c__rip_= global %G_0x28e9c__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x28eb1__rip__type = type <{ [8 x i8] }>
@G_0x28eb1__rip_= global %G_0x28eb1__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28f01__rip__type = type <{ [8 x i8] }>
@G_0x28f01__rip_= global %G_0x28f01__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x28f22__rip__type = type <{ [8 x i8] }>
@G_0x28f22__rip_= global %G_0x28f22__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29099__rip__type = type <{ [8 x i8] }>
@G_0x29099__rip_= global %G_0x29099__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x290ba__rip__type = type <{ [8 x i8] }>
@G_0x290ba__rip_= global %G_0x290ba__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x292f8__rip__type = type <{ [4 x i8] }>
@G_0x292f8__rip_= global %G_0x292f8__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x29426__rip__type = type <{ [4 x i8] }>
@G_0x29426__rip_= global %G_0x29426__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x294c1__rip__type = type <{ [8 x i8] }>
@G_0x294c1__rip_= global %G_0x294c1__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x294e2__rip__type = type <{ [8 x i8] }>
@G_0x294e2__rip_= global %G_0x294e2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x294f2__rip__type = type <{ [8 x i8] }>
@G_0x294f2__rip_= global %G_0x294f2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29532__rip__type = type <{ [8 x i8] }>
@G_0x29532__rip_= global %G_0x29532__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29553__rip__type = type <{ [8 x i8] }>
@G_0x29553__rip_= global %G_0x29553__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29622__rip__type = type <{ [8 x i8] }>
@G_0x29622__rip_= global %G_0x29622__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29643__rip__type = type <{ [8 x i8] }>
@G_0x29643__rip_= global %G_0x29643__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29710__rip__type = type <{ [8 x i8] }>
@G_0x29710__rip_= global %G_0x29710__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x29731__rip__type = type <{ [8 x i8] }>
@G_0x29731__rip_= global %G_0x29731__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45863c_type = type <{ [8 x i8] }>
@G__0x45863c= global %G__0x45863c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @P7Maxmodelmaker(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7Maxmodelmaker:	 RIP: 42aea0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42aea0	 Bytes: 1
  %loadMem_42aea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aea0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aea0)
  store %struct.Memory* %call_42aea0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42aea1	 Bytes: 3
  %loadMem_42aea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aea1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aea1)
  store %struct.Memory* %call_42aea1, %struct.Memory** %MEMORY

  ; Code: subq $0x270, %rsp	 RIP: 42aea4	 Bytes: 7
  %loadMem_42aea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aea4 = call %struct.Memory* @routine_subq__0x270___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aea4)
  store %struct.Memory* %call_42aea4, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rax	 RIP: 42aeab	 Bytes: 10
  %loadMem_42aeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeab = call %struct.Memory* @routine_movq__0x45863c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeab)
  store %struct.Memory* %call_42aeab, %struct.Memory** %MEMORY

  ; Code: movl $0xff, %r10d	 RIP: 42aeb5	 Bytes: 6
  %loadMem_42aeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeb5 = call %struct.Memory* @routine_movl__0xff___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeb5)
  store %struct.Memory* %call_42aeb5, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42aebb	 Bytes: 4
  %loadMem_42aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aebb = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aebb)
  store %struct.Memory* %call_42aebb, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 42aebf	 Bytes: 4
  %loadMem_42aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aebf = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aebf)
  store %struct.Memory* %call_42aebf, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x14(%rbp)	 RIP: 42aec3	 Bytes: 5
  %loadMem_42aec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aec3 = call %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aec3)
  store %struct.Memory* %call_42aec3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 42aec8	 Bytes: 4
  %loadMem_42aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aec8 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aec8)
  store %struct.Memory* %call_42aec8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 42aecc	 Bytes: 4
  %loadMem_42aecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aecc = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aecc)
  store %struct.Memory* %call_42aecc, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x2c(%rbp)	 RIP: 42aed0	 Bytes: 5
  %loadMem_42aed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aed0 = call %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aed0)
  store %struct.Memory* %call_42aed0, %struct.Memory** %MEMORY

  ; Code: movss %xmm2, -0x30(%rbp)	 RIP: 42aed5	 Bytes: 5
  %loadMem_42aed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aed5 = call %struct.Memory* @routine_movss__xmm2__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aed5)
  store %struct.Memory* %call_42aed5, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x38(%rbp)	 RIP: 42aeda	 Bytes: 4
  %loadMem_42aeda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeda = call %struct.Memory* @routine_movq__r8__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeda)
  store %struct.Memory* %call_42aeda, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x40(%rbp)	 RIP: 42aede	 Bytes: 4
  %loadMem_42aede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aede = call %struct.Memory* @routine_movq__r9__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aede)
  store %struct.Memory* %call_42aede, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42aee2	 Bytes: 4
  %loadMem_42aee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aee2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aee2)
  store %struct.Memory* %call_42aee2, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rcx), %r11d	 RIP: 42aee6	 Bytes: 4
  %loadMem_42aee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aee6 = call %struct.Memory* @routine_movl_0x18__rcx____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aee6)
  store %struct.Memory* %call_42aee6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r11d	 RIP: 42aeea	 Bytes: 4
  %loadMem_42aeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeea = call %struct.Memory* @routine_addl__0x1___r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeea)
  store %struct.Memory* %call_42aeea, %struct.Memory** %MEMORY

  ; Code: movslq %r11d, %rcx	 RIP: 42aeee	 Bytes: 3
  %loadMem_42aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeee = call %struct.Memory* @routine_movslq__r11d___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeee)
  store %struct.Memory* %call_42aeee, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 42aef1	 Bytes: 4
  %loadMem_42aef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aef1 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aef1)
  store %struct.Memory* %call_42aef1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42aef5	 Bytes: 3
  %loadMem_42aef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aef5 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aef5)
  store %struct.Memory* %call_42aef5, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 42aef8	 Bytes: 3
  %loadMem_42aef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aef8 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aef8)
  store %struct.Memory* %call_42aef8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 42aefb	 Bytes: 3
  %loadMem_42aefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aefb = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aefb)
  store %struct.Memory* %call_42aefb, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42aefe	 Bytes: 5
  %loadMem1_42aefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aefe = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aefe, i64 110946, i64 5, i64 5)
  store %struct.Memory* %call1_42aefe, %struct.Memory** %MEMORY

  %loadMem2_42aefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aefe = load i64, i64* %3
  %call2_42aefe = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42aefe, %struct.Memory* %loadMem2_42aefe)
  store %struct.Memory* %call2_42aefe, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rdi	 RIP: 42af03	 Bytes: 10
  %loadMem_42af03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af03 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af03)
  store %struct.Memory* %call_42af03, %struct.Memory** %MEMORY

  ; Code: movl $0x100, %esi	 RIP: 42af0d	 Bytes: 5
  %loadMem_42af0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af0d = call %struct.Memory* @routine_movl__0x100___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af0d)
  store %struct.Memory* %call_42af0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 42af12	 Bytes: 4
  %loadMem_42af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af12 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af12)
  store %struct.Memory* %call_42af12, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42af16	 Bytes: 4
  %loadMem_42af16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af16 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af16)
  store %struct.Memory* %call_42af16, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r10d	 RIP: 42af1a	 Bytes: 4
  %loadMem_42af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af1a = call %struct.Memory* @routine_movl_0x18__rax____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af1a)
  store %struct.Memory* %call_42af1a, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %r10d	 RIP: 42af1e	 Bytes: 4
  %loadMem_42af1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af1e = call %struct.Memory* @routine_addl__0x2___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af1e)
  store %struct.Memory* %call_42af1e, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %rax	 RIP: 42af22	 Bytes: 3
  %loadMem_42af22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af22 = call %struct.Memory* @routine_movslq__r10d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af22)
  store %struct.Memory* %call_42af22, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42af25	 Bytes: 4
  %loadMem_42af25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af25 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af25)
  store %struct.Memory* %call_42af25, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42af29	 Bytes: 3
  %loadMem_42af29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af29 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af29)
  store %struct.Memory* %call_42af29, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42af2c	 Bytes: 5
  %loadMem1_42af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42af2c = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42af2c, i64 110900, i64 5, i64 5)
  store %struct.Memory* %call1_42af2c, %struct.Memory** %MEMORY

  %loadMem2_42af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af2c = load i64, i64* %3
  %call2_42af2c = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42af2c, %struct.Memory* %loadMem2_42af2c)
  store %struct.Memory* %call2_42af2c, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rdi	 RIP: 42af31	 Bytes: 10
  %loadMem_42af31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af31 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af31)
  store %struct.Memory* %call_42af31, %struct.Memory** %MEMORY

  ; Code: movl $0x101, %esi	 RIP: 42af3b	 Bytes: 5
  %loadMem_42af3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af3b = call %struct.Memory* @routine_movl__0x101___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af3b)
  store %struct.Memory* %call_42af3b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x198(%rbp)	 RIP: 42af40	 Bytes: 7
  %loadMem_42af40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af40 = call %struct.Memory* @routine_movq__rax__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af40)
  store %struct.Memory* %call_42af40, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42af47	 Bytes: 4
  %loadMem_42af47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af47 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af47)
  store %struct.Memory* %call_42af47, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r10d	 RIP: 42af4b	 Bytes: 4
  %loadMem_42af4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af4b = call %struct.Memory* @routine_movl_0x18__rax____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af4b)
  store %struct.Memory* %call_42af4b, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %r10d	 RIP: 42af4f	 Bytes: 4
  %loadMem_42af4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af4f = call %struct.Memory* @routine_addl__0x2___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af4f)
  store %struct.Memory* %call_42af4f, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %rax	 RIP: 42af53	 Bytes: 3
  %loadMem_42af53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af53 = call %struct.Memory* @routine_movslq__r10d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af53)
  store %struct.Memory* %call_42af53, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42af56	 Bytes: 4
  %loadMem_42af56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af56 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af56)
  store %struct.Memory* %call_42af56, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42af5a	 Bytes: 3
  %loadMem_42af5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af5a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af5a)
  store %struct.Memory* %call_42af5a, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42af5d	 Bytes: 5
  %loadMem1_42af5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42af5d = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42af5d, i64 110851, i64 5, i64 5)
  store %struct.Memory* %call1_42af5d, %struct.Memory** %MEMORY

  %loadMem2_42af5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af5d = load i64, i64* %3
  %call2_42af5d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42af5d, %struct.Memory* %loadMem2_42af5d)
  store %struct.Memory* %call2_42af5d, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rdi	 RIP: 42af62	 Bytes: 10
  %loadMem_42af62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af62 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af62)
  store %struct.Memory* %call_42af62, %struct.Memory** %MEMORY

  ; Code: movl $0x102, %esi	 RIP: 42af6c	 Bytes: 5
  %loadMem_42af6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af6c = call %struct.Memory* @routine_movl__0x102___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af6c)
  store %struct.Memory* %call_42af6c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1a0(%rbp)	 RIP: 42af71	 Bytes: 7
  %loadMem_42af71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af71 = call %struct.Memory* @routine_movq__rax__MINUS0x1a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af71)
  store %struct.Memory* %call_42af71, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42af78	 Bytes: 4
  %loadMem_42af78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af78 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af78)
  store %struct.Memory* %call_42af78, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %r10d	 RIP: 42af7c	 Bytes: 4
  %loadMem_42af7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af7c = call %struct.Memory* @routine_movl_0x18__rax____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af7c)
  store %struct.Memory* %call_42af7c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r10d	 RIP: 42af80	 Bytes: 4
  %loadMem_42af80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af80 = call %struct.Memory* @routine_addl__0x1___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af80)
  store %struct.Memory* %call_42af80, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %rax	 RIP: 42af84	 Bytes: 3
  %loadMem_42af84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af84 = call %struct.Memory* @routine_movslq__r10d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af84)
  store %struct.Memory* %call_42af84, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42af87	 Bytes: 4
  %loadMem_42af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af87 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af87)
  store %struct.Memory* %call_42af87, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42af8b	 Bytes: 3
  %loadMem_42af8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af8b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af8b)
  store %struct.Memory* %call_42af8b, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42af8e	 Bytes: 5
  %loadMem1_42af8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42af8e = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42af8e, i64 110802, i64 5, i64 5)
  store %struct.Memory* %call1_42af8e, %struct.Memory** %MEMORY

  %loadMem2_42af8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42af8e = load i64, i64* %3
  %call2_42af8e = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42af8e, %struct.Memory* %loadMem2_42af8e)
  store %struct.Memory* %call2_42af8e, %struct.Memory** %MEMORY

  ; Code: movq $0x45863c, %rdi	 RIP: 42af93	 Bytes: 10
  %loadMem_42af93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af93 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af93)
  store %struct.Memory* %call_42af93, %struct.Memory** %MEMORY

  ; Code: movl $0x103, %esi	 RIP: 42af9d	 Bytes: 5
  %loadMem_42af9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42af9d = call %struct.Memory* @routine_movl__0x103___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42af9d)
  store %struct.Memory* %call_42af9d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1a8(%rbp)	 RIP: 42afa2	 Bytes: 7
  %loadMem_42afa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afa2 = call %struct.Memory* @routine_movq__rax__MINUS0x1a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afa2)
  store %struct.Memory* %call_42afa2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42afa9	 Bytes: 4
  %loadMem_42afa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afa9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afa9)
  store %struct.Memory* %call_42afa9, %struct.Memory** %MEMORY

  ; Code: movslq 0x1c(%rax), %rax	 RIP: 42afad	 Bytes: 4
  %loadMem_42afad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afad = call %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afad)
  store %struct.Memory* %call_42afad, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42afb1	 Bytes: 4
  %loadMem_42afb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afb1 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afb1)
  store %struct.Memory* %call_42afb1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42afb5	 Bytes: 3
  %loadMem_42afb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afb5 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afb5)
  store %struct.Memory* %call_42afb5, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42afb8	 Bytes: 5
  %loadMem1_42afb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42afb8 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42afb8, i64 110760, i64 5, i64 5)
  store %struct.Memory* %call1_42afb8, %struct.Memory** %MEMORY

  %loadMem2_42afb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42afb8 = load i64, i64* %3
  %call2_42afb8 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42afb8, %struct.Memory* %loadMem2_42afb8)
  store %struct.Memory* %call2_42afb8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1b0(%rbp)	 RIP: 42afbd	 Bytes: 7
  %loadMem_42afbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afbd = call %struct.Memory* @routine_movq__rax__MINUS0x1b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afbd)
  store %struct.Memory* %call_42afbd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 42afc4	 Bytes: 7
  %loadMem_42afc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afc4 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afc4)
  store %struct.Memory* %call_42afc4, %struct.Memory** %MEMORY

  ; Code: .L_42afcb:	 RIP: 42afcb	 Bytes: 0
  br label %block_.L_42afcb
block_.L_42afcb:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42afcb	 Bytes: 3
  %loadMem_42afcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afcb = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afcb)
  store %struct.Memory* %call_42afcb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42afce	 Bytes: 4
  %loadMem_42afce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afce = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afce)
  store %struct.Memory* %call_42afce, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42afd2	 Bytes: 3
  %loadMem_42afd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afd2 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afd2)
  store %struct.Memory* %call_42afd2, %struct.Memory** %MEMORY

  ; Code: jge .L_42b03d	 RIP: 42afd5	 Bytes: 6
  %loadMem_42afd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afd5 = call %struct.Memory* @routine_jge_.L_42b03d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afd5, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_42afd5, %struct.Memory** %MEMORY

  %loadBr_42afd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42afd5 = icmp eq i8 %loadBr_42afd5, 1
  br i1 %cmpBr_42afd5, label %block_.L_42b03d, label %block_42afdb

block_42afdb:
  ; Code: movq $0x45863c, %rdi	 RIP: 42afdb	 Bytes: 10
  %loadMem_42afdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afdb = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afdb)
  store %struct.Memory* %call_42afdb, %struct.Memory** %MEMORY

  ; Code: movl $0x105, %esi	 RIP: 42afe5	 Bytes: 5
  %loadMem_42afe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afe5 = call %struct.Memory* @routine_movl__0x105___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afe5)
  store %struct.Memory* %call_42afe5, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rax	 RIP: 42afea	 Bytes: 8
  %loadMem_42afea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42afea = call %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42afea)
  store %struct.Memory* %call_42afea, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42aff2	 Bytes: 4
  %loadMem_42aff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aff2 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aff2)
  store %struct.Memory* %call_42aff2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42aff6	 Bytes: 3
  %loadMem_42aff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aff6 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aff6)
  store %struct.Memory* %call_42aff6, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42aff9	 Bytes: 5
  %loadMem1_42aff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aff9 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aff9, i64 110695, i64 5, i64 5)
  store %struct.Memory* %call1_42aff9, %struct.Memory** %MEMORY

  %loadMem2_42aff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aff9 = load i64, i64* %3
  %call2_42aff9 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42aff9, %struct.Memory* %loadMem2_42aff9)
  store %struct.Memory* %call2_42aff9, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 42affe	 Bytes: 3
  %loadMem_42affe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42affe = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42affe)
  store %struct.Memory* %call_42affe, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdx	 RIP: 42b001	 Bytes: 4
  %loadMem_42b001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b001 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b001)
  store %struct.Memory* %call_42b001, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b005	 Bytes: 3
  %loadMem_42b005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b005 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b005)
  store %struct.Memory* %call_42b005, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42b008	 Bytes: 3
  %loadMem_42b008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b008 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b008)
  store %struct.Memory* %call_42b008, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 42b00b	 Bytes: 3
  %loadMem_42b00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b00b = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b00b)
  store %struct.Memory* %call_42b00b, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 42b00e	 Bytes: 4
  %loadMem_42b00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b00e = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b00e)
  store %struct.Memory* %call_42b00e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 42b012	 Bytes: 4
  %loadMem_42b012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b012 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b012)
  store %struct.Memory* %call_42b012, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b016	 Bytes: 3
  %loadMem_42b016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b016 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b016)
  store %struct.Memory* %call_42b016, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42b019	 Bytes: 3
  %loadMem_42b019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b019 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b019)
  store %struct.Memory* %call_42b019, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 42b01c	 Bytes: 3
  %loadMem_42b01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b01c = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b01c)
  store %struct.Memory* %call_42b01c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rdi	 RIP: 42b01f	 Bytes: 4
  %loadMem_42b01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b01f = call %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b01f)
  store %struct.Memory* %call_42b01f, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 42b023	 Bytes: 7
  %loadMem_42b023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b023 = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b023)
  store %struct.Memory* %call_42b023, %struct.Memory** %MEMORY

  ; Code: callq .FSet	 RIP: 42b02a	 Bytes: 5
  %loadMem1_42b02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b02a = call %struct.Memory* @routine_callq_.FSet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b02a, i64 159510, i64 5, i64 5)
  store %struct.Memory* %call1_42b02a, %struct.Memory** %MEMORY

  %loadMem2_42b02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b02a = load i64, i64* %3
  %call2_42b02a = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64  %loadPC_42b02a, %struct.Memory* %loadMem2_42b02a)
  store %struct.Memory* %call2_42b02a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42b02f	 Bytes: 3
  %loadMem_42b02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b02f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b02f)
  store %struct.Memory* %call_42b02f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b032	 Bytes: 3
  %loadMem_42b032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b032 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b032)
  store %struct.Memory* %call_42b032, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42b035	 Bytes: 3
  %loadMem_42b035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b035 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b035)
  store %struct.Memory* %call_42b035, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42afcb	 RIP: 42b038	 Bytes: 5
  %loadMem_42b038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b038 = call %struct.Memory* @routine_jmpq_.L_42afcb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b038, i64 -109, i64 5)
  store %struct.Memory* %call_42b038, %struct.Memory** %MEMORY

  br label %block_.L_42afcb

  ; Code: .L_42b03d:	 RIP: 42b03d	 Bytes: 0
block_.L_42b03d:

  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 42b03d	 Bytes: 7
  %loadMem_42b03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b03d = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b03d)
  store %struct.Memory* %call_42b03d, %struct.Memory** %MEMORY

  ; Code: .L_42b044:	 RIP: 42b044	 Bytes: 0
  br label %block_.L_42b044
block_.L_42b044:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42b044	 Bytes: 3
  %loadMem_42b044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b044 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b044)
  store %struct.Memory* %call_42b044, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b047	 Bytes: 4
  %loadMem_42b047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b047 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b047)
  store %struct.Memory* %call_42b047, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42b04b	 Bytes: 3
  %loadMem_42b04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b04b = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b04b)
  store %struct.Memory* %call_42b04b, %struct.Memory** %MEMORY

  ; Code: jge .L_42b18c	 RIP: 42b04e	 Bytes: 6
  %loadMem_42b04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b04e = call %struct.Memory* @routine_jge_.L_42b18c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b04e, i8* %BRANCH_TAKEN, i64 318, i64 6, i64 6)
  store %struct.Memory* %call_42b04e, %struct.Memory** %MEMORY

  %loadBr_42b04e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b04e = icmp eq i8 %loadBr_42b04e, 1
  br i1 %cmpBr_42b04e, label %block_.L_42b18c, label %block_42b054

block_42b054:
  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42b054	 Bytes: 7
  %loadMem_42b054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b054 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b054)
  store %struct.Memory* %call_42b054, %struct.Memory** %MEMORY

  ; Code: .L_42b05b:	 RIP: 42b05b	 Bytes: 0
  br label %block_.L_42b05b
block_.L_42b05b:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b05b	 Bytes: 3
  %loadMem_42b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b05b = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b05b)
  store %struct.Memory* %call_42b05b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b05e	 Bytes: 4
  %loadMem_42b05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b05e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b05e)
  store %struct.Memory* %call_42b05e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42b062	 Bytes: 3
  %loadMem_42b062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b062 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b062)
  store %struct.Memory* %call_42b062, %struct.Memory** %MEMORY

  ; Code: jge .L_42b179	 RIP: 42b065	 Bytes: 6
  %loadMem_42b065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b065 = call %struct.Memory* @routine_jge_.L_42b179(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b065, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_42b065, %struct.Memory** %MEMORY

  %loadBr_42b065 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b065 = icmp eq i8 %loadBr_42b065, 1
  br i1 %cmpBr_42b065, label %block_.L_42b179, label %block_42b06b

block_42b06b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b06b	 Bytes: 4
  %loadMem_42b06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b06b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b06b)
  store %struct.Memory* %call_42b06b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b06f	 Bytes: 3
  %loadMem_42b06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b06f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b06f)
  store %struct.Memory* %call_42b06f, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b072	 Bytes: 4
  %loadMem_42b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b072 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b072)
  store %struct.Memory* %call_42b072, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b076	 Bytes: 4
  %loadMem_42b076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b076 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b076)
  store %struct.Memory* %call_42b076, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b07a	 Bytes: 4
  %loadMem_42b07a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b07a = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b07a)
  store %struct.Memory* %call_42b07a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b07e	 Bytes: 4
  %loadMem_42b07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b07e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b07e)
  store %struct.Memory* %call_42b07e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42b082	 Bytes: 3
  %loadMem_42b082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b082 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b082)
  store %struct.Memory* %call_42b082, %struct.Memory** %MEMORY

  ; Code: je .L_42b166	 RIP: 42b085	 Bytes: 6
  %loadMem_42b085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b085 = call %struct.Memory* @routine_je_.L_42b166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b085, i8* %BRANCH_TAKEN, i64 225, i64 6, i64 6)
  store %struct.Memory* %call_42b085, %struct.Memory** %MEMORY

  %loadBr_42b085 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b085 = icmp eq i8 %loadBr_42b085, 1
  br i1 %cmpBr_42b085, label %block_.L_42b166, label %block_42b08b

block_42b08b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b08b	 Bytes: 4
  %loadMem_42b08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b08b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b08b)
  store %struct.Memory* %call_42b08b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b08f	 Bytes: 3
  %loadMem_42b08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b08f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b08f)
  store %struct.Memory* %call_42b08f, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b092	 Bytes: 4
  %loadMem_42b092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b092 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b092)
  store %struct.Memory* %call_42b092, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b096	 Bytes: 4
  %loadMem_42b096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b096 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b096)
  store %struct.Memory* %call_42b096, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b09a	 Bytes: 4
  %loadMem_42b09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b09a = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b09a)
  store %struct.Memory* %call_42b09a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b09e	 Bytes: 4
  %loadMem_42b09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b09e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b09e)
  store %struct.Memory* %call_42b09e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42b0a2	 Bytes: 3
  %loadMem_42b0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0a2 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0a2)
  store %struct.Memory* %call_42b0a2, %struct.Memory** %MEMORY

  ; Code: je .L_42b166	 RIP: 42b0a5	 Bytes: 6
  %loadMem_42b0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0a5 = call %struct.Memory* @routine_je_.L_42b166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0a5, i8* %BRANCH_TAKEN, i64 193, i64 6, i64 6)
  store %struct.Memory* %call_42b0a5, %struct.Memory** %MEMORY

  %loadBr_42b0a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b0a5 = icmp eq i8 %loadBr_42b0a5, 1
  br i1 %cmpBr_42b0a5, label %block_.L_42b166, label %block_42b0ab

block_42b0ab:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b0ab	 Bytes: 4
  %loadMem_42b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0ab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0ab)
  store %struct.Memory* %call_42b0ab, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b0af	 Bytes: 3
  %loadMem_42b0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0af = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0af)
  store %struct.Memory* %call_42b0af, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b0b2	 Bytes: 4
  %loadMem_42b0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0b2 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0b2)
  store %struct.Memory* %call_42b0b2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b0b6	 Bytes: 4
  %loadMem_42b0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0b6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0b6)
  store %struct.Memory* %call_42b0b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b0ba	 Bytes: 4
  %loadMem_42b0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0ba = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0ba)
  store %struct.Memory* %call_42b0ba, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b0be	 Bytes: 4
  %loadMem_42b0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0be = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0be)
  store %struct.Memory* %call_42b0be, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42b0c2	 Bytes: 3
  %loadMem_42b0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0c2 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0c2)
  store %struct.Memory* %call_42b0c2, %struct.Memory** %MEMORY

  ; Code: je .L_42b166	 RIP: 42b0c5	 Bytes: 6
  %loadMem_42b0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0c5 = call %struct.Memory* @routine_je_.L_42b166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0c5, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_42b0c5, %struct.Memory** %MEMORY

  %loadBr_42b0c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b0c5 = icmp eq i8 %loadBr_42b0c5, 1
  br i1 %cmpBr_42b0c5, label %block_.L_42b166, label %block_42b0cb

block_42b0cb:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b0cb	 Bytes: 4
  %loadMem_42b0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0cb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0cb)
  store %struct.Memory* %call_42b0cb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b0cf	 Bytes: 3
  %loadMem_42b0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0cf = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0cf)
  store %struct.Memory* %call_42b0cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b0d2	 Bytes: 4
  %loadMem_42b0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0d2 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0d2)
  store %struct.Memory* %call_42b0d2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b0d6	 Bytes: 4
  %loadMem_42b0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0d6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0d6)
  store %struct.Memory* %call_42b0d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b0da	 Bytes: 4
  %loadMem_42b0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0da = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0da)
  store %struct.Memory* %call_42b0da, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b0de	 Bytes: 4
  %loadMem_42b0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0de = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0de)
  store %struct.Memory* %call_42b0de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42b0e2	 Bytes: 3
  %loadMem_42b0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0e2 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0e2)
  store %struct.Memory* %call_42b0e2, %struct.Memory** %MEMORY

  ; Code: je .L_42b166	 RIP: 42b0e5	 Bytes: 6
  %loadMem_42b0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0e5 = call %struct.Memory* @routine_je_.L_42b166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0e5, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_42b0e5, %struct.Memory** %MEMORY

  %loadBr_42b0e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b0e5 = icmp eq i8 %loadBr_42b0e5, 1
  br i1 %cmpBr_42b0e5, label %block_.L_42b166, label %block_42b0eb

block_42b0eb:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b0eb	 Bytes: 4
  %loadMem_42b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0eb)
  store %struct.Memory* %call_42b0eb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b0ef	 Bytes: 3
  %loadMem_42b0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0ef = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0ef)
  store %struct.Memory* %call_42b0ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b0f2	 Bytes: 4
  %loadMem_42b0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0f2 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0f2)
  store %struct.Memory* %call_42b0f2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b0f6	 Bytes: 4
  %loadMem_42b0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0f6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0f6)
  store %struct.Memory* %call_42b0f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b0fa	 Bytes: 4
  %loadMem_42b0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0fa = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0fa)
  store %struct.Memory* %call_42b0fa, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b0fe	 Bytes: 4
  %loadMem_42b0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b0fe = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b0fe)
  store %struct.Memory* %call_42b0fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42b102	 Bytes: 3
  %loadMem_42b102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b102 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b102)
  store %struct.Memory* %call_42b102, %struct.Memory** %MEMORY

  ; Code: je .L_42b166	 RIP: 42b105	 Bytes: 6
  %loadMem_42b105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b105 = call %struct.Memory* @routine_je_.L_42b166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b105, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_42b105, %struct.Memory** %MEMORY

  %loadBr_42b105 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b105 = icmp eq i8 %loadBr_42b105, 1
  br i1 %cmpBr_42b105, label %block_.L_42b166, label %block_42b10b

block_42b10b:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 42b10b	 Bytes: 4
  %loadMem_42b10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b10b = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b10b)
  store %struct.Memory* %call_42b10b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 42b10f	 Bytes: 3
  %loadMem_42b10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b10f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b10f)
  store %struct.Memory* %call_42b10f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42b112	 Bytes: 3
  %loadMem_42b112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b112 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b112)
  store %struct.Memory* %call_42b112, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42b115	 Bytes: 3
  %loadMem_42b115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b115 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b115)
  store %struct.Memory* %call_42b115, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rdi	 RIP: 42b118	 Bytes: 4
  %loadMem_42b118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b118 = call %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b118)
  store %struct.Memory* %call_42b118, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b11c	 Bytes: 4
  %loadMem_42b11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b11c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b11c)
  store %struct.Memory* %call_42b11c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b120	 Bytes: 3
  %loadMem_42b120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b120 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b120)
  store %struct.Memory* %call_42b120, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 42b123	 Bytes: 4
  %loadMem_42b123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b123 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b123)
  store %struct.Memory* %call_42b123, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 42b127	 Bytes: 4
  %loadMem_42b127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b127 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b127)
  store %struct.Memory* %call_42b127, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 42b12b	 Bytes: 4
  %loadMem_42b12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b12b = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b12b)
  store %struct.Memory* %call_42b12b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42b12f	 Bytes: 4
  %loadMem_42b12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b12f = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b12f)
  store %struct.Memory* %call_42b12f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x1e8(%rbp)	 RIP: 42b133	 Bytes: 7
  %loadMem_42b133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b133 = call %struct.Memory* @routine_movq__rdi__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b133)
  store %struct.Memory* %call_42b133, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 42b13a	 Bytes: 2
  %loadMem_42b13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b13a = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b13a)
  store %struct.Memory* %call_42b13a, %struct.Memory** %MEMORY

  ; Code: callq .SymbolIndex	 RIP: 42b13c	 Bytes: 5
  %loadMem1_42b13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b13c = call %struct.Memory* @routine_callq_.SymbolIndex(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b13c, i64 -155708, i64 5, i64 5)
  store %struct.Memory* %call1_42b13c, %struct.Memory** %MEMORY

  %loadMem2_42b13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b13c = load i64, i64* %3
  %call2_42b13c = call %struct.Memory* @sub_405100.SymbolIndex(%struct.State* %0, i64  %loadPC_42b13c, %struct.Memory* %loadMem2_42b13c)
  store %struct.Memory* %call2_42b13c, %struct.Memory** %MEMORY

  ; Code: movb %al, %sil	 RIP: 42b141	 Bytes: 3
  %loadMem_42b141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b141 = call %struct.Memory* @routine_movb__al___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b141)
  store %struct.Memory* %call_42b141, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42b144	 Bytes: 4
  %loadMem_42b144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b144 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b144)
  store %struct.Memory* %call_42b144, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdx), %rdx	 RIP: 42b148	 Bytes: 4
  %loadMem_42b148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b148 = call %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b148)
  store %struct.Memory* %call_42b148, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %r8	 RIP: 42b14c	 Bytes: 4
  %loadMem_42b14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b14c = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b14c)
  store %struct.Memory* %call_42b14c, %struct.Memory** %MEMORY

  ; Code: movss (%rdx,%r8,4), %xmm0	 RIP: 42b150	 Bytes: 6
  %loadMem_42b150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b150 = call %struct.Memory* @routine_movss___rdx__r8_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b150)
  store %struct.Memory* %call_42b150, %struct.Memory** %MEMORY

  ; Code: movq -0x1e8(%rbp), %rdi	 RIP: 42b156	 Bytes: 7
  %loadMem_42b156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b156 = call %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b156)
  store %struct.Memory* %call_42b156, %struct.Memory** %MEMORY

  ; Code: movsbl %sil, %esi	 RIP: 42b15d	 Bytes: 4
  %loadMem_42b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b15d = call %struct.Memory* @routine_movsbl__sil___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b15d)
  store %struct.Memory* %call_42b15d, %struct.Memory** %MEMORY

  ; Code: callq .P7CountSymbol	 RIP: 42b161	 Bytes: 5
  %loadMem1_42b161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b161 = call %struct.Memory* @routine_callq_.P7CountSymbol(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b161, i64 -154769, i64 5, i64 5)
  store %struct.Memory* %call1_42b161, %struct.Memory** %MEMORY

  %loadMem2_42b161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b161 = load i64, i64* %3
  %call2_42b161 = call %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* %0, i64  %loadPC_42b161, %struct.Memory* %loadMem2_42b161)
  store %struct.Memory* %call2_42b161, %struct.Memory** %MEMORY

  ; Code: .L_42b166:	 RIP: 42b166	 Bytes: 0
  br label %block_.L_42b166
block_.L_42b166:

  ; Code: jmpq .L_42b16b	 RIP: 42b166	 Bytes: 5
  %loadMem_42b166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b166 = call %struct.Memory* @routine_jmpq_.L_42b16b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b166, i64 5, i64 5)
  store %struct.Memory* %call_42b166, %struct.Memory** %MEMORY

  br label %block_.L_42b16b

  ; Code: .L_42b16b:	 RIP: 42b16b	 Bytes: 0
block_.L_42b16b:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b16b	 Bytes: 3
  %loadMem_42b16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b16b = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b16b)
  store %struct.Memory* %call_42b16b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b16e	 Bytes: 3
  %loadMem_42b16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b16e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b16e)
  store %struct.Memory* %call_42b16e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42b171	 Bytes: 3
  %loadMem_42b171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b171 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b171)
  store %struct.Memory* %call_42b171, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b05b	 RIP: 42b174	 Bytes: 5
  %loadMem_42b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b174 = call %struct.Memory* @routine_jmpq_.L_42b05b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b174, i64 -281, i64 5)
  store %struct.Memory* %call_42b174, %struct.Memory** %MEMORY

  br label %block_.L_42b05b

  ; Code: .L_42b179:	 RIP: 42b179	 Bytes: 0
block_.L_42b179:

  ; Code: jmpq .L_42b17e	 RIP: 42b179	 Bytes: 5
  %loadMem_42b179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b179 = call %struct.Memory* @routine_jmpq_.L_42b17e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b179, i64 5, i64 5)
  store %struct.Memory* %call_42b179, %struct.Memory** %MEMORY

  br label %block_.L_42b17e

  ; Code: .L_42b17e:	 RIP: 42b17e	 Bytes: 0
block_.L_42b17e:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42b17e	 Bytes: 3
  %loadMem_42b17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b17e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b17e)
  store %struct.Memory* %call_42b17e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b181	 Bytes: 3
  %loadMem_42b181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b181 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b181)
  store %struct.Memory* %call_42b181, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42b184	 Bytes: 3
  %loadMem_42b184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b184 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b184)
  store %struct.Memory* %call_42b184, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b044	 RIP: 42b187	 Bytes: 5
  %loadMem_42b187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b187 = call %struct.Memory* @routine_jmpq_.L_42b044(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b187, i64 -323, i64 5)
  store %struct.Memory* %call_42b187, %struct.Memory** %MEMORY

  br label %block_.L_42b044

  ; Code: .L_42b18c:	 RIP: 42b18c	 Bytes: 0
block_.L_42b18c:

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b18c	 Bytes: 3
  %loadMem_42b18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b18c = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b18c)
  store %struct.Memory* %call_42b18c, %struct.Memory** %MEMORY

  ; Code: movss -0x30(%rbp), %xmm1	 RIP: 42b18f	 Bytes: 5
  %loadMem_42b18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b18f = call %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b18f)
  store %struct.Memory* %call_42b18f, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b194	 Bytes: 3
  %loadMem_42b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b194 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b194)
  store %struct.Memory* %call_42b194, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b1c0	 RIP: 42b197	 Bytes: 6
  %loadMem_42b197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b197 = call %struct.Memory* @routine_jbe_.L_42b1c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b197, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_42b197, %struct.Memory** %MEMORY

  %loadBr_42b197 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b197 = icmp eq i8 %loadBr_42b197, 1
  br i1 %cmpBr_42b197, label %block_.L_42b1c0, label %block_42b19d

block_42b19d:
  ; Code: cvtss2sd -0x30(%rbp), %xmm0	 RIP: 42b19d	 Bytes: 5
  %loadMem_42b19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b19d = call %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b19d)
  store %struct.Memory* %call_42b19d, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b1a2	 Bytes: 5
  %loadMem1_42b1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b1a2 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b1a2, i64 -171186, i64 5, i64 5)
  store %struct.Memory* %call1_42b1a2, %struct.Memory** %MEMORY

  %loadMem2_42b1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b1a2 = load i64, i64* %3
  %call2_42b1a2 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b1a2, %struct.Memory* %loadMem2_42b1a2)
  store %struct.Memory* %call2_42b1a2, %struct.Memory** %MEMORY

  ; Code: movsd 0x29731(%rip), %xmm1	 RIP: 42b1a7	 Bytes: 8
  %loadMem_42b1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1a7 = call %struct.Memory* @routine_movsd_0x29731__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1a7)
  store %struct.Memory* %call_42b1a7, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b1af	 Bytes: 4
  %loadMem_42b1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1af = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1af)
  store %struct.Memory* %call_42b1af, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x1f0(%rbp)	 RIP: 42b1b3	 Bytes: 8
  %loadMem_42b1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1b3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1b3)
  store %struct.Memory* %call_42b1b3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b1d5	 RIP: 42b1bb	 Bytes: 5
  %loadMem_42b1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1bb = call %struct.Memory* @routine_jmpq_.L_42b1d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1bb, i64 26, i64 5)
  store %struct.Memory* %call_42b1bb, %struct.Memory** %MEMORY

  br label %block_.L_42b1d5

  ; Code: .L_42b1c0:	 RIP: 42b1c0	 Bytes: 0
block_.L_42b1c0:

  ; Code: movsd 0x29710(%rip), %xmm0	 RIP: 42b1c0	 Bytes: 8
  %loadMem_42b1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1c0 = call %struct.Memory* @routine_movsd_0x29710__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1c0)
  store %struct.Memory* %call_42b1c0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x1f0(%rbp)	 RIP: 42b1c8	 Bytes: 8
  %loadMem_42b1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1c8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1c8)
  store %struct.Memory* %call_42b1c8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b1d5	 RIP: 42b1d0	 Bytes: 5
  %loadMem_42b1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1d0 = call %struct.Memory* @routine_jmpq_.L_42b1d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1d0, i64 5, i64 5)
  store %struct.Memory* %call_42b1d0, %struct.Memory** %MEMORY

  br label %block_.L_42b1d5

  ; Code: .L_42b1d5:	 RIP: 42b1d5	 Bytes: 0
block_.L_42b1d5:

  ; Code: movsd -0x1f0(%rbp), %xmm0	 RIP: 42b1d5	 Bytes: 8
  %loadMem_42b1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1d5 = call %struct.Memory* @routine_movsd_MINUS0x1f0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1d5)
  store %struct.Memory* %call_42b1d5, %struct.Memory** %MEMORY

  ; Code: leaq -0x140(%rbp), %rdi	 RIP: 42b1dd	 Bytes: 7
  %loadMem_42b1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1dd = call %struct.Memory* @routine_leaq_MINUS0x140__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1dd)
  store %struct.Memory* %call_42b1dd, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b1e4	 Bytes: 4
  %loadMem_42b1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1e4 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1e4)
  store %struct.Memory* %call_42b1e4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x30(%rbp)	 RIP: 42b1e8	 Bytes: 5
  %loadMem_42b1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1e8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1e8)
  store %struct.Memory* %call_42b1e8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42b1ed	 Bytes: 4
  %loadMem_42b1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1ed)
  store %struct.Memory* %call_42b1ed, %struct.Memory** %MEMORY

  ; Code: addq $0x5dd0, %rax	 RIP: 42b1f1	 Bytes: 6
  %loadMem_42b1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1f1 = call %struct.Memory* @routine_addq__0x5dd0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1f1)
  store %struct.Memory* %call_42b1f1, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %edx	 RIP: 42b1f7	 Bytes: 7
  %loadMem_42b1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1f7 = call %struct.Memory* @routine_movl_0x677060___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1f7)
  store %struct.Memory* %call_42b1f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 42b1fe	 Bytes: 3
  %loadMem_42b1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b1fe = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b1fe)
  store %struct.Memory* %call_42b1fe, %struct.Memory** %MEMORY

  ; Code: callq .FCopy	 RIP: 42b201	 Bytes: 5
  %loadMem1_42b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b201 = call %struct.Memory* @routine_callq_.FCopy(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b201, i64 159743, i64 5, i64 5)
  store %struct.Memory* %call1_42b201, %struct.Memory** %MEMORY

  %loadMem2_42b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b201 = load i64, i64* %3
  %call2_42b201 = call %struct.Memory* @sub_452200.FCopy(%struct.State* %0, i64  %loadPC_42b201, %struct.Memory* %loadMem2_42b201)
  store %struct.Memory* %call2_42b201, %struct.Memory** %MEMORY

  ; Code: leaq -0x140(%rbp), %rdi	 RIP: 42b206	 Bytes: 7
  %loadMem_42b206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b206 = call %struct.Memory* @routine_leaq_MINUS0x140__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b206)
  store %struct.Memory* %call_42b206, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 42b20d	 Bytes: 7
  %loadMem_42b20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b20d = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b20d)
  store %struct.Memory* %call_42b20d, %struct.Memory** %MEMORY

  ; Code: callq .FNorm	 RIP: 42b214	 Bytes: 5
  %loadMem1_42b214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b214 = call %struct.Memory* @routine_callq_.FNorm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b214, i64 161164, i64 5, i64 5)
  store %struct.Memory* %call1_42b214, %struct.Memory** %MEMORY

  %loadMem2_42b214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b214 = load i64, i64* %3
  %call2_42b214 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64  %loadPC_42b214, %struct.Memory* %loadMem2_42b214)
  store %struct.Memory* %call2_42b214, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b219	 Bytes: 4
  %loadMem_42b219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b219 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b219)
  store %struct.Memory* %call_42b219, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rdi	 RIP: 42b21d	 Bytes: 4
  %loadMem_42b21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b21d = call %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b21d)
  store %struct.Memory* %call_42b21d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b221	 Bytes: 4
  %loadMem_42b221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b221 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b221)
  store %struct.Memory* %call_42b221, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 42b225	 Bytes: 3
  %loadMem_42b225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b225 = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b225)
  store %struct.Memory* %call_42b225, %struct.Memory** %MEMORY

  ; Code: callq .FSum	 RIP: 42b228	 Bytes: 5
  %loadMem1_42b228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b228 = call %struct.Memory* @routine_callq_.FSum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b228, i64 159336, i64 5, i64 5)
  store %struct.Memory* %call1_42b228, %struct.Memory** %MEMORY

  %loadMem2_42b228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b228 = load i64, i64* %3
  %call2_42b228 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64  %loadPC_42b228, %struct.Memory* %loadMem2_42b228)
  store %struct.Memory* %call2_42b228, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1dc(%rbp)	 RIP: 42b22d	 Bytes: 8
  %loadMem_42b22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b22d = call %struct.Memory* @routine_movss__xmm0__MINUS0x1dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b22d)
  store %struct.Memory* %call_42b22d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 42b235	 Bytes: 7
  %loadMem_42b235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b235 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b235)
  store %struct.Memory* %call_42b235, %struct.Memory** %MEMORY

  ; Code: .L_42b23c:	 RIP: 42b23c	 Bytes: 0
  br label %block_.L_42b23c
block_.L_42b23c:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 42b23c	 Bytes: 3
  %loadMem_42b23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b23c = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b23c)
  store %struct.Memory* %call_42b23c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 42b23f	 Bytes: 7
  %loadMem_42b23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b23f = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b23f)
  store %struct.Memory* %call_42b23f, %struct.Memory** %MEMORY

  ; Code: jge .L_42b2ea	 RIP: 42b246	 Bytes: 6
  %loadMem_42b246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b246 = call %struct.Memory* @routine_jge_.L_42b2ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b246, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_42b246, %struct.Memory** %MEMORY

  %loadBr_42b246 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b246 = icmp eq i8 %loadBr_42b246, 1
  br i1 %cmpBr_42b246, label %block_.L_42b2ea, label %block_42b24c

block_42b24c:
  ; Code: xorps %xmm0, %xmm0	 RIP: 42b24c	 Bytes: 3
  %loadMem_42b24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b24c = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b24c)
  store %struct.Memory* %call_42b24c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b24f	 Bytes: 4
  %loadMem_42b24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b24f = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b24f)
  store %struct.Memory* %call_42b24f, %struct.Memory** %MEMORY

  ; Code: movss -0x140(%rbp,%rax,4), %xmm1	 RIP: 42b253	 Bytes: 9
  %loadMem_42b253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b253 = call %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b253)
  store %struct.Memory* %call_42b253, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42b25c	 Bytes: 4
  %loadMem_42b25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b25c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b25c)
  store %struct.Memory* %call_42b25c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 42b260	 Bytes: 4
  %loadMem_42b260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b260 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b260)
  store %struct.Memory* %call_42b260, %struct.Memory** %MEMORY

  ; Code: divss (%rax,%rcx,4), %xmm1	 RIP: 42b264	 Bytes: 5
  %loadMem_42b264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b264 = call %struct.Memory* @routine_divss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b264)
  store %struct.Memory* %call_42b264, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b269	 Bytes: 3
  %loadMem_42b269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b269 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b269)
  store %struct.Memory* %call_42b269, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b2ae	 RIP: 42b26c	 Bytes: 6
  %loadMem_42b26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b26c = call %struct.Memory* @routine_jbe_.L_42b2ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b26c, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_42b26c, %struct.Memory** %MEMORY

  %loadBr_42b26c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b26c = icmp eq i8 %loadBr_42b26c, 1
  br i1 %cmpBr_42b26c, label %block_.L_42b2ae, label %block_42b272

block_42b272:
  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b272	 Bytes: 4
  %loadMem_42b272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b272 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b272)
  store %struct.Memory* %call_42b272, %struct.Memory** %MEMORY

  ; Code: movss -0x140(%rbp,%rax,4), %xmm0	 RIP: 42b276	 Bytes: 9
  %loadMem_42b276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b276 = call %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b276)
  store %struct.Memory* %call_42b276, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42b27f	 Bytes: 4
  %loadMem_42b27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b27f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b27f)
  store %struct.Memory* %call_42b27f, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 42b283	 Bytes: 4
  %loadMem_42b283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b283 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b283)
  store %struct.Memory* %call_42b283, %struct.Memory** %MEMORY

  ; Code: divss (%rax,%rcx,4), %xmm0	 RIP: 42b287	 Bytes: 5
  %loadMem_42b287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b287 = call %struct.Memory* @routine_divss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b287)
  store %struct.Memory* %call_42b287, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42b28c	 Bytes: 4
  %loadMem_42b28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b28c = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b28c)
  store %struct.Memory* %call_42b28c, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b290	 Bytes: 5
  %loadMem1_42b290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b290 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b290, i64 -171424, i64 5, i64 5)
  store %struct.Memory* %call1_42b290, %struct.Memory** %MEMORY

  %loadMem2_42b290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b290 = load i64, i64* %3
  %call2_42b290 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b290, %struct.Memory* %loadMem2_42b290)
  store %struct.Memory* %call2_42b290, %struct.Memory** %MEMORY

  ; Code: movsd 0x29643(%rip), %xmm1	 RIP: 42b295	 Bytes: 8
  %loadMem_42b295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b295 = call %struct.Memory* @routine_movsd_0x29643__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b295)
  store %struct.Memory* %call_42b295, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b29d	 Bytes: 4
  %loadMem_42b29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b29d = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b29d)
  store %struct.Memory* %call_42b29d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x1f8(%rbp)	 RIP: 42b2a1	 Bytes: 8
  %loadMem_42b2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2a1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2a1)
  store %struct.Memory* %call_42b2a1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b2c3	 RIP: 42b2a9	 Bytes: 5
  %loadMem_42b2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2a9 = call %struct.Memory* @routine_jmpq_.L_42b2c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2a9, i64 26, i64 5)
  store %struct.Memory* %call_42b2a9, %struct.Memory** %MEMORY

  br label %block_.L_42b2c3

  ; Code: .L_42b2ae:	 RIP: 42b2ae	 Bytes: 0
block_.L_42b2ae:

  ; Code: movsd 0x29622(%rip), %xmm0	 RIP: 42b2ae	 Bytes: 8
  %loadMem_42b2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2ae = call %struct.Memory* @routine_movsd_0x29622__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2ae)
  store %struct.Memory* %call_42b2ae, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x1f8(%rbp)	 RIP: 42b2b6	 Bytes: 8
  %loadMem_42b2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2b6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2b6)
  store %struct.Memory* %call_42b2b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b2c3	 RIP: 42b2be	 Bytes: 5
  %loadMem_42b2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2be = call %struct.Memory* @routine_jmpq_.L_42b2c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2be, i64 5, i64 5)
  store %struct.Memory* %call_42b2be, %struct.Memory** %MEMORY

  br label %block_.L_42b2c3

  ; Code: .L_42b2c3:	 RIP: 42b2c3	 Bytes: 0
block_.L_42b2c3:

  ; Code: movsd -0x1f8(%rbp), %xmm0	 RIP: 42b2c3	 Bytes: 8
  %loadMem_42b2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2c3 = call %struct.Memory* @routine_movsd_MINUS0x1f8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2c3)
  store %struct.Memory* %call_42b2c3, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b2cb	 Bytes: 4
  %loadMem_42b2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2cb = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2cb)
  store %struct.Memory* %call_42b2cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b2cf	 Bytes: 4
  %loadMem_42b2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2cf = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2cf)
  store %struct.Memory* %call_42b2cf, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x140(%rbp,%rax,4)	 RIP: 42b2d3	 Bytes: 9
  %loadMem_42b2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2d3 = call %struct.Memory* @routine_movss__xmm0__MINUS0x140__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2d3)
  store %struct.Memory* %call_42b2d3, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 42b2dc	 Bytes: 3
  %loadMem_42b2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2dc = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2dc)
  store %struct.Memory* %call_42b2dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b2df	 Bytes: 3
  %loadMem_42b2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2df = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2df)
  store %struct.Memory* %call_42b2df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 42b2e2	 Bytes: 3
  %loadMem_42b2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2e2 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2e2)
  store %struct.Memory* %call_42b2e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b23c	 RIP: 42b2e5	 Bytes: 5
  %loadMem_42b2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2e5 = call %struct.Memory* @routine_jmpq_.L_42b23c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2e5, i64 -169, i64 5)
  store %struct.Memory* %call_42b2e5, %struct.Memory** %MEMORY

  br label %block_.L_42b23c

  ; Code: .L_42b2ea:	 RIP: 42b2ea	 Bytes: 0
block_.L_42b2ea:

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42b2ea	 Bytes: 4
  %loadMem_42b2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2ea)
  store %struct.Memory* %call_42b2ea, %struct.Memory** %MEMORY

  ; Code: callq .estimate_model_length	 RIP: 42b2ee	 Bytes: 5
  %loadMem1_42b2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b2ee = call %struct.Memory* @routine_callq_.estimate_model_length(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b2ee, i64 3762, i64 5, i64 5)
  store %struct.Memory* %call1_42b2ee, %struct.Memory** %MEMORY

  %loadMem2_42b2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b2ee = load i64, i64* %3
  %call2_42b2ee = call %struct.Memory* @sub_42c1a0.estimate_model_length(%struct.State* %0, i64  %loadPC_42b2ee, %struct.Memory* %loadMem2_42b2ee)
  store %struct.Memory* %call2_42b2ee, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b2f3	 Bytes: 3
  %loadMem_42b2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2f3 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2f3)
  store %struct.Memory* %call_42b2f3, %struct.Memory** %MEMORY

  ; Code: movsd 0x294f2(%rip), %xmm1	 RIP: 42b2f6	 Bytes: 8
  %loadMem_42b2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2f6 = call %struct.Memory* @routine_movsd_0x294f2__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2f6)
  store %struct.Memory* %call_42b2f6, %struct.Memory** %MEMORY

  ; Code: movss 0x29426(%rip), %xmm2	 RIP: 42b2fe	 Bytes: 8
  %loadMem_42b2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2fe = call %struct.Memory* @routine_movss_0x29426__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2fe)
  store %struct.Memory* %call_42b2fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c4(%rbp)	 RIP: 42b306	 Bytes: 6
  %loadMem_42b306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b306 = call %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b306)
  store %struct.Memory* %call_42b306, %struct.Memory** %MEMORY

  ; Code: movl -0x1c4(%rbp), %eax	 RIP: 42b30c	 Bytes: 6
  %loadMem_42b30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b30c = call %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b30c)
  store %struct.Memory* %call_42b30c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42b312	 Bytes: 3
  %loadMem_42b312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b312 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b312)
  store %struct.Memory* %call_42b312, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %eax, %xmm3	 RIP: 42b315	 Bytes: 4
  %loadMem_42b315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b315 = call %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b315)
  store %struct.Memory* %call_42b315, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm3, %xmm3	 RIP: 42b319	 Bytes: 4
  %loadMem_42b319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b319 = call %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b319)
  store %struct.Memory* %call_42b319, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm4	 RIP: 42b31d	 Bytes: 3
  %loadMem_42b31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b31d = call %struct.Memory* @routine_movaps__xmm1___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b31d)
  store %struct.Memory* %call_42b31d, %struct.Memory** %MEMORY

  ; Code: divsd %xmm3, %xmm4	 RIP: 42b320	 Bytes: 4
  %loadMem_42b320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b320 = call %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b320)
  store %struct.Memory* %call_42b320, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm4, %xmm3	 RIP: 42b324	 Bytes: 4
  %loadMem_42b324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b324 = call %struct.Memory* @routine_cvtsd2ss__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b324)
  store %struct.Memory* %call_42b324, %struct.Memory** %MEMORY

  ; Code: movss %xmm3, -0x1c8(%rbp)	 RIP: 42b328	 Bytes: 8
  %loadMem_42b328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b328 = call %struct.Memory* @routine_movss__xmm3__MINUS0x1c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b328)
  store %struct.Memory* %call_42b328, %struct.Memory** %MEMORY

  ; Code: movss %xmm2, -0x1bc(%rbp)	 RIP: 42b330	 Bytes: 8
  %loadMem_42b330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b330 = call %struct.Memory* @routine_movss__xmm2__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b330)
  store %struct.Memory* %call_42b330, %struct.Memory** %MEMORY

  ; Code: movl -0x1c4(%rbp), %eax	 RIP: 42b338	 Bytes: 6
  %loadMem_42b338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b338 = call %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b338)
  store %struct.Memory* %call_42b338, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42b33e	 Bytes: 3
  %loadMem_42b33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b33e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b33e)
  store %struct.Memory* %call_42b33e, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %eax, %xmm2	 RIP: 42b341	 Bytes: 4
  %loadMem_42b341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b341 = call %struct.Memory* @routine_cvtsi2ssl__eax___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b341)
  store %struct.Memory* %call_42b341, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm2	 RIP: 42b345	 Bytes: 4
  %loadMem_42b345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b345 = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b345)
  store %struct.Memory* %call_42b345, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 42b349	 Bytes: 4
  %loadMem_42b349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b349 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b349)
  store %struct.Memory* %call_42b349, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm1	 RIP: 42b34d	 Bytes: 4
  %loadMem_42b34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b34d = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b34d)
  store %struct.Memory* %call_42b34d, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x1c0(%rbp)	 RIP: 42b351	 Bytes: 8
  %loadMem_42b351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b351 = call %struct.Memory* @routine_movss__xmm1__MINUS0x1c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b351)
  store %struct.Memory* %call_42b351, %struct.Memory** %MEMORY

  ; Code: movss -0x1bc(%rbp), %xmm1	 RIP: 42b359	 Bytes: 8
  %loadMem_42b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b359 = call %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b359)
  store %struct.Memory* %call_42b359, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm1	 RIP: 42b361	 Bytes: 5
  %loadMem_42b361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b361 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b361)
  store %struct.Memory* %call_42b361, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b366	 Bytes: 3
  %loadMem_42b366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b366 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b366)
  store %struct.Memory* %call_42b366, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b39e	 RIP: 42b369	 Bytes: 6
  %loadMem_42b369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b369 = call %struct.Memory* @routine_jbe_.L_42b39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b369, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42b369, %struct.Memory** %MEMORY

  %loadBr_42b369 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b369 = icmp eq i8 %loadBr_42b369, 1
  br i1 %cmpBr_42b369, label %block_.L_42b39e, label %block_42b36f

block_42b36f:
  ; Code: movss -0x1bc(%rbp), %xmm0	 RIP: 42b36f	 Bytes: 8
  %loadMem_42b36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b36f = call %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b36f)
  store %struct.Memory* %call_42b36f, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42b377	 Bytes: 5
  %loadMem_42b377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b377 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b377)
  store %struct.Memory* %call_42b377, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42b37c	 Bytes: 4
  %loadMem_42b37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b37c = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b37c)
  store %struct.Memory* %call_42b37c, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b380	 Bytes: 5
  %loadMem1_42b380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b380 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b380, i64 -171664, i64 5, i64 5)
  store %struct.Memory* %call1_42b380, %struct.Memory** %MEMORY

  %loadMem2_42b380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b380 = load i64, i64* %3
  %call2_42b380 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b380, %struct.Memory* %loadMem2_42b380)
  store %struct.Memory* %call2_42b380, %struct.Memory** %MEMORY

  ; Code: movsd 0x29553(%rip), %xmm1	 RIP: 42b385	 Bytes: 8
  %loadMem_42b385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b385 = call %struct.Memory* @routine_movsd_0x29553__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b385)
  store %struct.Memory* %call_42b385, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b38d	 Bytes: 4
  %loadMem_42b38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b38d = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b38d)
  store %struct.Memory* %call_42b38d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x200(%rbp)	 RIP: 42b391	 Bytes: 8
  %loadMem_42b391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b391 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b391)
  store %struct.Memory* %call_42b391, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b3b3	 RIP: 42b399	 Bytes: 5
  %loadMem_42b399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b399 = call %struct.Memory* @routine_jmpq_.L_42b3b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b399, i64 26, i64 5)
  store %struct.Memory* %call_42b399, %struct.Memory** %MEMORY

  br label %block_.L_42b3b3

  ; Code: .L_42b39e:	 RIP: 42b39e	 Bytes: 0
block_.L_42b39e:

  ; Code: movsd 0x29532(%rip), %xmm0	 RIP: 42b39e	 Bytes: 8
  %loadMem_42b39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b39e = call %struct.Memory* @routine_movsd_0x29532__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b39e)
  store %struct.Memory* %call_42b39e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x200(%rbp)	 RIP: 42b3a6	 Bytes: 8
  %loadMem_42b3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3a6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3a6)
  store %struct.Memory* %call_42b3a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b3b3	 RIP: 42b3ae	 Bytes: 5
  %loadMem_42b3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3ae = call %struct.Memory* @routine_jmpq_.L_42b3b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3ae, i64 5, i64 5)
  store %struct.Memory* %call_42b3ae, %struct.Memory** %MEMORY

  br label %block_.L_42b3b3

  ; Code: .L_42b3b3:	 RIP: 42b3b3	 Bytes: 0
block_.L_42b3b3:

  ; Code: movsd -0x200(%rbp), %xmm0	 RIP: 42b3b3	 Bytes: 8
  %loadMem_42b3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3b3 = call %struct.Memory* @routine_movsd_MINUS0x200__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3b3)
  store %struct.Memory* %call_42b3b3, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42b3bb	 Bytes: 3
  %loadMem_42b3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3bb = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3bb)
  store %struct.Memory* %call_42b3bb, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b3be	 Bytes: 4
  %loadMem_42b3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3be = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3be)
  store %struct.Memory* %call_42b3be, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1bc(%rbp)	 RIP: 42b3c2	 Bytes: 8
  %loadMem_42b3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3c2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3c2)
  store %struct.Memory* %call_42b3c2, %struct.Memory** %MEMORY

  ; Code: movss -0x1c0(%rbp), %xmm0	 RIP: 42b3ca	 Bytes: 8
  %loadMem_42b3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3ca = call %struct.Memory* @routine_movss_MINUS0x1c0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3ca)
  store %struct.Memory* %call_42b3ca, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42b3d2	 Bytes: 5
  %loadMem_42b3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3d2 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3d2)
  store %struct.Memory* %call_42b3d2, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42b3d7	 Bytes: 3
  %loadMem_42b3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3d7 = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3d7)
  store %struct.Memory* %call_42b3d7, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b40f	 RIP: 42b3da	 Bytes: 6
  %loadMem_42b3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3da = call %struct.Memory* @routine_jbe_.L_42b40f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3da, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42b3da, %struct.Memory** %MEMORY

  %loadBr_42b3da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b3da = icmp eq i8 %loadBr_42b3da, 1
  br i1 %cmpBr_42b3da, label %block_.L_42b40f, label %block_42b3e0

block_42b3e0:
  ; Code: movss -0x1c0(%rbp), %xmm0	 RIP: 42b3e0	 Bytes: 8
  %loadMem_42b3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3e0 = call %struct.Memory* @routine_movss_MINUS0x1c0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3e0)
  store %struct.Memory* %call_42b3e0, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42b3e8	 Bytes: 5
  %loadMem_42b3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3e8 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3e8)
  store %struct.Memory* %call_42b3e8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42b3ed	 Bytes: 4
  %loadMem_42b3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3ed = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3ed)
  store %struct.Memory* %call_42b3ed, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b3f1	 Bytes: 5
  %loadMem1_42b3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b3f1 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b3f1, i64 -171777, i64 5, i64 5)
  store %struct.Memory* %call1_42b3f1, %struct.Memory** %MEMORY

  %loadMem2_42b3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b3f1 = load i64, i64* %3
  %call2_42b3f1 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b3f1, %struct.Memory* %loadMem2_42b3f1)
  store %struct.Memory* %call2_42b3f1, %struct.Memory** %MEMORY

  ; Code: movsd 0x294e2(%rip), %xmm1	 RIP: 42b3f6	 Bytes: 8
  %loadMem_42b3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3f6 = call %struct.Memory* @routine_movsd_0x294e2__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3f6)
  store %struct.Memory* %call_42b3f6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b3fe	 Bytes: 4
  %loadMem_42b3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3fe = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3fe)
  store %struct.Memory* %call_42b3fe, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x208(%rbp)	 RIP: 42b402	 Bytes: 8
  %loadMem_42b402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b402 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x208__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b402)
  store %struct.Memory* %call_42b402, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b424	 RIP: 42b40a	 Bytes: 5
  %loadMem_42b40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b40a = call %struct.Memory* @routine_jmpq_.L_42b424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b40a, i64 26, i64 5)
  store %struct.Memory* %call_42b40a, %struct.Memory** %MEMORY

  br label %block_.L_42b424

  ; Code: .L_42b40f:	 RIP: 42b40f	 Bytes: 0
block_.L_42b40f:

  ; Code: movsd 0x294c1(%rip), %xmm0	 RIP: 42b40f	 Bytes: 8
  %loadMem_42b40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b40f = call %struct.Memory* @routine_movsd_0x294c1__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b40f)
  store %struct.Memory* %call_42b40f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x208(%rbp)	 RIP: 42b417	 Bytes: 8
  %loadMem_42b417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b417 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x208__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b417)
  store %struct.Memory* %call_42b417, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b424	 RIP: 42b41f	 Bytes: 5
  %loadMem_42b41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b41f = call %struct.Memory* @routine_jmpq_.L_42b424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b41f, i64 5, i64 5)
  store %struct.Memory* %call_42b41f, %struct.Memory** %MEMORY

  br label %block_.L_42b424

  ; Code: .L_42b424:	 RIP: 42b424	 Bytes: 0
block_.L_42b424:

  ; Code: movsd -0x208(%rbp), %xmm0	 RIP: 42b424	 Bytes: 8
  %loadMem_42b424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b424 = call %struct.Memory* @routine_movsd_MINUS0x208__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b424)
  store %struct.Memory* %call_42b424, %struct.Memory** %MEMORY

  ; Code: movss 0x292f8(%rip), %xmm1	 RIP: 42b42c	 Bytes: 8
  %loadMem_42b42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b42c = call %struct.Memory* @routine_movss_0x292f8__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b42c)
  store %struct.Memory* %call_42b42c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b434	 Bytes: 4
  %loadMem_42b434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b434 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b434)
  store %struct.Memory* %call_42b434, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c0(%rbp)	 RIP: 42b438	 Bytes: 8
  %loadMem_42b438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b438 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b438)
  store %struct.Memory* %call_42b438, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x14(%rbp)	 RIP: 42b440	 Bytes: 5
  %loadMem_42b440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b440 = call %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b440)
  store %struct.Memory* %call_42b440, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b445	 Bytes: 4
  %loadMem_42b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b445 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b445)
  store %struct.Memory* %call_42b445, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 42b449	 Bytes: 3
  %loadMem_42b449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b449 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b449)
  store %struct.Memory* %call_42b449, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1b8(%rbp)	 RIP: 42b44c	 Bytes: 6
  %loadMem_42b44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b44c = call %struct.Memory* @routine_movl__ecx__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b44c)
  store %struct.Memory* %call_42b44c, %struct.Memory** %MEMORY

  ; Code: .L_42b452:	 RIP: 42b452	 Bytes: 0
  br label %block_.L_42b452
block_.L_42b452:

  ; Code: cmpl $0x1, -0x1b8(%rbp)	 RIP: 42b452	 Bytes: 7
  %loadMem_42b452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b452 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b452)
  store %struct.Memory* %call_42b452, %struct.Memory** %MEMORY

  ; Code: jl .L_42b5ab	 RIP: 42b459	 Bytes: 6
  %loadMem_42b459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b459 = call %struct.Memory* @routine_jl_.L_42b5ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b459, i8* %BRANCH_TAKEN, i64 338, i64 6, i64 6)
  store %struct.Memory* %call_42b459, %struct.Memory** %MEMORY

  %loadBr_42b459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b459 = icmp eq i8 %loadBr_42b459, 1
  br i1 %cmpBr_42b459, label %block_.L_42b5ab, label %block_42b45f

block_42b45f:
  ; Code: movl $0x0, -0x1d8(%rbp)	 RIP: 42b45f	 Bytes: 10
  %loadMem_42b45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b45f = call %struct.Memory* @routine_movl__0x0__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b45f)
  store %struct.Memory* %call_42b45f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42b469	 Bytes: 7
  %loadMem_42b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b469 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b469)
  store %struct.Memory* %call_42b469, %struct.Memory** %MEMORY

  ; Code: .L_42b470:	 RIP: 42b470	 Bytes: 0
  br label %block_.L_42b470
block_.L_42b470:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b470	 Bytes: 3
  %loadMem_42b470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b470 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b470)
  store %struct.Memory* %call_42b470, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b473	 Bytes: 4
  %loadMem_42b473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b473 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b473)
  store %struct.Memory* %call_42b473, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42b477	 Bytes: 3
  %loadMem_42b477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b477 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b477)
  store %struct.Memory* %call_42b477, %struct.Memory** %MEMORY

  ; Code: jge .L_42b56a	 RIP: 42b47a	 Bytes: 6
  %loadMem_42b47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b47a = call %struct.Memory* @routine_jge_.L_42b56a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b47a, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_42b47a, %struct.Memory** %MEMORY

  %loadBr_42b47a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b47a = icmp eq i8 %loadBr_42b47a, 1
  br i1 %cmpBr_42b47a, label %block_.L_42b56a, label %block_42b480

block_42b480:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b480	 Bytes: 4
  %loadMem_42b480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b480 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b480)
  store %struct.Memory* %call_42b480, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b484	 Bytes: 3
  %loadMem_42b484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b484 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b484)
  store %struct.Memory* %call_42b484, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b487	 Bytes: 4
  %loadMem_42b487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b487 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b487)
  store %struct.Memory* %call_42b487, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b48b	 Bytes: 4
  %loadMem_42b48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b48b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b48b)
  store %struct.Memory* %call_42b48b, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %edx	 RIP: 42b48f	 Bytes: 6
  %loadMem_42b48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b48f = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b48f)
  store %struct.Memory* %call_42b48f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b495	 Bytes: 3
  %loadMem_42b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b495 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b495)
  store %struct.Memory* %call_42b495, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b498	 Bytes: 3
  %loadMem_42b498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b498 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b498)
  store %struct.Memory* %call_42b498, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b49b	 Bytes: 4
  %loadMem_42b49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b49b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b49b)
  store %struct.Memory* %call_42b49b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42b49f	 Bytes: 3
  %loadMem_42b49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b49f = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b49f)
  store %struct.Memory* %call_42b49f, %struct.Memory** %MEMORY

  ; Code: je .L_42b548	 RIP: 42b4a2	 Bytes: 6
  %loadMem_42b4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4a2 = call %struct.Memory* @routine_je_.L_42b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4a2, i8* %BRANCH_TAKEN, i64 166, i64 6, i64 6)
  store %struct.Memory* %call_42b4a2, %struct.Memory** %MEMORY

  %loadBr_42b4a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b4a2 = icmp eq i8 %loadBr_42b4a2, 1
  br i1 %cmpBr_42b4a2, label %block_.L_42b548, label %block_42b4a8

block_42b4a8:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b4a8	 Bytes: 4
  %loadMem_42b4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4a8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4a8)
  store %struct.Memory* %call_42b4a8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b4ac	 Bytes: 3
  %loadMem_42b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ac = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ac)
  store %struct.Memory* %call_42b4ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b4af	 Bytes: 4
  %loadMem_42b4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4af = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4af)
  store %struct.Memory* %call_42b4af, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b4b3	 Bytes: 4
  %loadMem_42b4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b3)
  store %struct.Memory* %call_42b4b3, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %edx	 RIP: 42b4b7	 Bytes: 6
  %loadMem_42b4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b7 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b7)
  store %struct.Memory* %call_42b4b7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b4bd	 Bytes: 3
  %loadMem_42b4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4bd = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4bd)
  store %struct.Memory* %call_42b4bd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b4c0	 Bytes: 3
  %loadMem_42b4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4c0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4c0)
  store %struct.Memory* %call_42b4c0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b4c3	 Bytes: 4
  %loadMem_42b4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4c3 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4c3)
  store %struct.Memory* %call_42b4c3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42b4c7	 Bytes: 3
  %loadMem_42b4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4c7 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4c7)
  store %struct.Memory* %call_42b4c7, %struct.Memory** %MEMORY

  ; Code: je .L_42b548	 RIP: 42b4ca	 Bytes: 6
  %loadMem_42b4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ca = call %struct.Memory* @routine_je_.L_42b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ca, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_42b4ca, %struct.Memory** %MEMORY

  %loadBr_42b4ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b4ca = icmp eq i8 %loadBr_42b4ca, 1
  br i1 %cmpBr_42b4ca, label %block_.L_42b548, label %block_42b4d0

block_42b4d0:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b4d0	 Bytes: 4
  %loadMem_42b4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4d0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4d0)
  store %struct.Memory* %call_42b4d0, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b4d4	 Bytes: 3
  %loadMem_42b4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4d4 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4d4)
  store %struct.Memory* %call_42b4d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b4d7	 Bytes: 4
  %loadMem_42b4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4d7 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4d7)
  store %struct.Memory* %call_42b4d7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b4db	 Bytes: 4
  %loadMem_42b4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4db = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4db)
  store %struct.Memory* %call_42b4db, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %edx	 RIP: 42b4df	 Bytes: 6
  %loadMem_42b4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4df = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4df)
  store %struct.Memory* %call_42b4df, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b4e5	 Bytes: 3
  %loadMem_42b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4e5 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4e5)
  store %struct.Memory* %call_42b4e5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b4e8	 Bytes: 3
  %loadMem_42b4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4e8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4e8)
  store %struct.Memory* %call_42b4e8, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b4eb	 Bytes: 4
  %loadMem_42b4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4eb = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4eb)
  store %struct.Memory* %call_42b4eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42b4ef	 Bytes: 3
  %loadMem_42b4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ef = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ef)
  store %struct.Memory* %call_42b4ef, %struct.Memory** %MEMORY

  ; Code: je .L_42b548	 RIP: 42b4f2	 Bytes: 6
  %loadMem_42b4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4f2 = call %struct.Memory* @routine_je_.L_42b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4f2, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_42b4f2, %struct.Memory** %MEMORY

  %loadBr_42b4f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b4f2 = icmp eq i8 %loadBr_42b4f2, 1
  br i1 %cmpBr_42b4f2, label %block_.L_42b548, label %block_42b4f8

block_42b4f8:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b4f8	 Bytes: 4
  %loadMem_42b4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4f8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4f8)
  store %struct.Memory* %call_42b4f8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b4fc	 Bytes: 3
  %loadMem_42b4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4fc = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4fc)
  store %struct.Memory* %call_42b4fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b4ff	 Bytes: 4
  %loadMem_42b4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ff = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ff)
  store %struct.Memory* %call_42b4ff, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b503	 Bytes: 4
  %loadMem_42b503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b503 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b503)
  store %struct.Memory* %call_42b503, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %edx	 RIP: 42b507	 Bytes: 6
  %loadMem_42b507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b507 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b507)
  store %struct.Memory* %call_42b507, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b50d	 Bytes: 3
  %loadMem_42b50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b50d = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b50d)
  store %struct.Memory* %call_42b50d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b510	 Bytes: 3
  %loadMem_42b510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b510 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b510)
  store %struct.Memory* %call_42b510, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b513	 Bytes: 4
  %loadMem_42b513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b513 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b513)
  store %struct.Memory* %call_42b513, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42b517	 Bytes: 3
  %loadMem_42b517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b517 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b517)
  store %struct.Memory* %call_42b517, %struct.Memory** %MEMORY

  ; Code: je .L_42b548	 RIP: 42b51a	 Bytes: 6
  %loadMem_42b51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b51a = call %struct.Memory* @routine_je_.L_42b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b51a, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42b51a, %struct.Memory** %MEMORY

  %loadBr_42b51a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b51a = icmp eq i8 %loadBr_42b51a, 1
  br i1 %cmpBr_42b51a, label %block_.L_42b548, label %block_42b520

block_42b520:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b520	 Bytes: 4
  %loadMem_42b520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b520 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b520)
  store %struct.Memory* %call_42b520, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b524	 Bytes: 3
  %loadMem_42b524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b524 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b524)
  store %struct.Memory* %call_42b524, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b527	 Bytes: 4
  %loadMem_42b527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b527 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b527)
  store %struct.Memory* %call_42b527, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b52b	 Bytes: 4
  %loadMem_42b52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b52b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b52b)
  store %struct.Memory* %call_42b52b, %struct.Memory** %MEMORY

  ; Code: movl -0x1b8(%rbp), %edx	 RIP: 42b52f	 Bytes: 6
  %loadMem_42b52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b52f = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b52f)
  store %struct.Memory* %call_42b52f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b535	 Bytes: 3
  %loadMem_42b535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b535 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b535)
  store %struct.Memory* %call_42b535, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b538	 Bytes: 3
  %loadMem_42b538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b538 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b538)
  store %struct.Memory* %call_42b538, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b53b	 Bytes: 4
  %loadMem_42b53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b53b = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b53b)
  store %struct.Memory* %call_42b53b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42b53f	 Bytes: 3
  %loadMem_42b53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b53f = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b53f)
  store %struct.Memory* %call_42b53f, %struct.Memory** %MEMORY

  ; Code: jne .L_42b557	 RIP: 42b542	 Bytes: 6
  %loadMem_42b542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b542 = call %struct.Memory* @routine_jne_.L_42b557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b542, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_42b542, %struct.Memory** %MEMORY

  %loadBr_42b542 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b542 = icmp eq i8 %loadBr_42b542, 1
  br i1 %cmpBr_42b542, label %block_.L_42b557, label %block_.L_42b548

  ; Code: .L_42b548:	 RIP: 42b548	 Bytes: 0
block_.L_42b548:

  ; Code: movl -0x1d8(%rbp), %eax	 RIP: 42b548	 Bytes: 6
  %loadMem_42b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b548 = call %struct.Memory* @routine_movl_MINUS0x1d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b548)
  store %struct.Memory* %call_42b548, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b54e	 Bytes: 3
  %loadMem_42b54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b54e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b54e)
  store %struct.Memory* %call_42b54e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d8(%rbp)	 RIP: 42b551	 Bytes: 6
  %loadMem_42b551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b551 = call %struct.Memory* @routine_movl__eax__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b551)
  store %struct.Memory* %call_42b551, %struct.Memory** %MEMORY

  ; Code: .L_42b557:	 RIP: 42b557	 Bytes: 0
  br label %block_.L_42b557
block_.L_42b557:

  ; Code: jmpq .L_42b55c	 RIP: 42b557	 Bytes: 5
  %loadMem_42b557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b557 = call %struct.Memory* @routine_jmpq_.L_42b55c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b557, i64 5, i64 5)
  store %struct.Memory* %call_42b557, %struct.Memory** %MEMORY

  br label %block_.L_42b55c

  ; Code: .L_42b55c:	 RIP: 42b55c	 Bytes: 0
block_.L_42b55c:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b55c	 Bytes: 3
  %loadMem_42b55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b55c = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b55c)
  store %struct.Memory* %call_42b55c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b55f	 Bytes: 3
  %loadMem_42b55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b55f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b55f)
  store %struct.Memory* %call_42b55f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42b562	 Bytes: 3
  %loadMem_42b562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b562 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b562)
  store %struct.Memory* %call_42b562, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b470	 RIP: 42b565	 Bytes: 5
  %loadMem_42b565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b565 = call %struct.Memory* @routine_jmpq_.L_42b470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b565, i64 -245, i64 5)
  store %struct.Memory* %call_42b565, %struct.Memory** %MEMORY

  br label %block_.L_42b470

  ; Code: .L_42b56a:	 RIP: 42b56a	 Bytes: 0
block_.L_42b56a:

  ; Code: cvtsi2ssl -0x1d8(%rbp), %xmm0	 RIP: 42b56a	 Bytes: 8
  %loadMem_42b56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b56a = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x1d8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b56a)
  store %struct.Memory* %call_42b56a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b572	 Bytes: 4
  %loadMem_42b572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b572 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b572)
  store %struct.Memory* %call_42b572, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x1c(%rax), %xmm1	 RIP: 42b576	 Bytes: 5
  %loadMem_42b576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b576 = call %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b576)
  store %struct.Memory* %call_42b576, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42b57b	 Bytes: 4
  %loadMem_42b57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b57b = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b57b)
  store %struct.Memory* %call_42b57b, %struct.Memory** %MEMORY

  ; Code: movss -0x14(%rbp), %xmm1	 RIP: 42b57f	 Bytes: 5
  %loadMem_42b57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b57f = call %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b57f)
  store %struct.Memory* %call_42b57f, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b584	 Bytes: 3
  %loadMem_42b584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b584 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b584)
  store %struct.Memory* %call_42b584, %struct.Memory** %MEMORY

  ; Code: jb .L_42b592	 RIP: 42b587	 Bytes: 6
  %loadMem_42b587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b587 = call %struct.Memory* @routine_jb_.L_42b592(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b587, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42b587, %struct.Memory** %MEMORY

  %loadBr_42b587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b587 = icmp eq i8 %loadBr_42b587, 1
  br i1 %cmpBr_42b587, label %block_.L_42b592, label %block_42b58d

block_42b58d:
  ; Code: jmpq .L_42b5ab	 RIP: 42b58d	 Bytes: 5
  %loadMem_42b58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b58d = call %struct.Memory* @routine_jmpq_.L_42b5ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b58d, i64 30, i64 5)
  store %struct.Memory* %call_42b58d, %struct.Memory** %MEMORY

  br label %block_.L_42b5ab

  ; Code: .L_42b592:	 RIP: 42b592	 Bytes: 0
block_.L_42b592:

  ; Code: jmpq .L_42b597	 RIP: 42b592	 Bytes: 5
  %loadMem_42b592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b592 = call %struct.Memory* @routine_jmpq_.L_42b597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b592, i64 5, i64 5)
  store %struct.Memory* %call_42b592, %struct.Memory** %MEMORY

  br label %block_.L_42b597

  ; Code: .L_42b597:	 RIP: 42b597	 Bytes: 0
block_.L_42b597:

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 42b597	 Bytes: 6
  %loadMem_42b597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b597 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b597)
  store %struct.Memory* %call_42b597, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 42b59d	 Bytes: 3
  %loadMem_42b59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b59d = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b59d)
  store %struct.Memory* %call_42b59d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 42b5a0	 Bytes: 6
  %loadMem_42b5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5a0 = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5a0)
  store %struct.Memory* %call_42b5a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b452	 RIP: 42b5a6	 Bytes: 5
  %loadMem_42b5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5a6 = call %struct.Memory* @routine_jmpq_.L_42b452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5a6, i64 -340, i64 5)
  store %struct.Memory* %call_42b5a6, %struct.Memory** %MEMORY

  br label %block_.L_42b452

  ; Code: .L_42b5ab:	 RIP: 42b5ab	 Bytes: 0
block_.L_42b5ab:

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b5ab	 Bytes: 3
  %loadMem_42b5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ab = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ab)
  store %struct.Memory* %call_42b5ab, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42b5ae	 Bytes: 7
  %loadMem_42b5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ae = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ae)
  store %struct.Memory* %call_42b5ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 42b5b5	 Bytes: 7
  %loadMem_42b5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5b5 = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5b5)
  store %struct.Memory* %call_42b5b5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 42b5bc	 Bytes: 5
  %loadMem_42b5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5bc = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5bc)
  store %struct.Memory* %call_42b5bc, %struct.Memory** %MEMORY

  ; Code: movq -0x1a0(%rbp), %rax	 RIP: 42b5c1	 Bytes: 7
  %loadMem_42b5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5c1 = call %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5c1)
  store %struct.Memory* %call_42b5c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1b8(%rbp), %rcx	 RIP: 42b5c8	 Bytes: 7
  %loadMem_42b5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5c8 = call %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5c8)
  store %struct.Memory* %call_42b5c8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42b5cf	 Bytes: 7
  %loadMem_42b5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5cf = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5cf)
  store %struct.Memory* %call_42b5cf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42b5d6	 Bytes: 7
  %loadMem_42b5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5d6 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5d6)
  store %struct.Memory* %call_42b5d6, %struct.Memory** %MEMORY

  ; Code: .L_42b5dd:	 RIP: 42b5dd	 Bytes: 0
  br label %block_.L_42b5dd
block_.L_42b5dd:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b5dd	 Bytes: 3
  %loadMem_42b5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5dd = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5dd)
  store %struct.Memory* %call_42b5dd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b5e0	 Bytes: 4
  %loadMem_42b5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5e0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5e0)
  store %struct.Memory* %call_42b5e0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42b5e4	 Bytes: 3
  %loadMem_42b5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5e4 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5e4)
  store %struct.Memory* %call_42b5e4, %struct.Memory** %MEMORY

  ; Code: jge .L_42b744	 RIP: 42b5e7	 Bytes: 6
  %loadMem_42b5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5e7 = call %struct.Memory* @routine_jge_.L_42b744(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5e7, i8* %BRANCH_TAKEN, i64 349, i64 6, i64 6)
  store %struct.Memory* %call_42b5e7, %struct.Memory** %MEMORY

  %loadBr_42b5e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b5e7 = icmp eq i8 %loadBr_42b5e7, 1
  br i1 %cmpBr_42b5e7, label %block_.L_42b744, label %block_42b5ed

block_42b5ed:
  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 42b5ed	 Bytes: 6
  %loadMem_42b5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ed = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ed)
  store %struct.Memory* %call_42b5ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42b5f3	 Bytes: 3
  %loadMem_42b5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5f3 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5f3)
  store %struct.Memory* %call_42b5f3, %struct.Memory** %MEMORY

  ; Code: .L_42b5f6:	 RIP: 42b5f6	 Bytes: 0
  br label %block_.L_42b5f6
block_.L_42b5f6:

  ; Code: xorl %eax, %eax	 RIP: 42b5f6	 Bytes: 2
  %loadMem_42b5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5f6 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5f6)
  store %struct.Memory* %call_42b5f6, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 42b5f8	 Bytes: 2
  %loadMem_42b5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5f8 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5f8)
  store %struct.Memory* %call_42b5f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 42b5fa	 Bytes: 4
  %loadMem_42b5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5fa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5fa)
  store %struct.Memory* %call_42b5fa, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x209(%rbp)	 RIP: 42b5fe	 Bytes: 6
  %loadMem_42b5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5fe = call %struct.Memory* @routine_movb__cl__MINUS0x209__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5fe)
  store %struct.Memory* %call_42b5fe, %struct.Memory** %MEMORY

  ; Code: jle .L_42b6f4	 RIP: 42b604	 Bytes: 6
  %loadMem_42b604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b604 = call %struct.Memory* @routine_jle_.L_42b6f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b604, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_42b604, %struct.Memory** %MEMORY

  %loadBr_42b604 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b604 = icmp eq i8 %loadBr_42b604, 1
  br i1 %cmpBr_42b604, label %block_.L_42b6f4, label %block_42b60a

block_42b60a:
  ; Code: movb $0x1, %al	 RIP: 42b60a	 Bytes: 2
  %loadMem_42b60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b60a = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b60a)
  store %struct.Memory* %call_42b60a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b60c	 Bytes: 4
  %loadMem_42b60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b60c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b60c)
  store %struct.Memory* %call_42b60c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b610	 Bytes: 3
  %loadMem_42b610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b610 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b610)
  store %struct.Memory* %call_42b610, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 42b613	 Bytes: 4
  %loadMem_42b613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b613 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b613)
  store %struct.Memory* %call_42b613, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b617	 Bytes: 4
  %loadMem_42b617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b617 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b617)
  store %struct.Memory* %call_42b617, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b61b	 Bytes: 3
  %loadMem_42b61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b61b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b61b)
  store %struct.Memory* %call_42b61b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 42b61e	 Bytes: 3
  %loadMem_42b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b61e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b61e)
  store %struct.Memory* %call_42b61e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 42b621	 Bytes: 3
  %loadMem_42b621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b621 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b621)
  store %struct.Memory* %call_42b621, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 42b624	 Bytes: 4
  %loadMem_42b624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b624 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b624)
  store %struct.Memory* %call_42b624, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %esi	 RIP: 42b628	 Bytes: 3
  %loadMem_42b628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b628 = call %struct.Memory* @routine_cmpl__0x20___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b628)
  store %struct.Memory* %call_42b628, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x20a(%rbp)	 RIP: 42b62b	 Bytes: 6
  %loadMem_42b62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b62b = call %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b62b)
  store %struct.Memory* %call_42b62b, %struct.Memory** %MEMORY

  ; Code: je .L_42b6e8	 RIP: 42b631	 Bytes: 6
  %loadMem_42b631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b631 = call %struct.Memory* @routine_je_.L_42b6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b631, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_42b631, %struct.Memory** %MEMORY

  %loadBr_42b631 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b631 = icmp eq i8 %loadBr_42b631, 1
  br i1 %cmpBr_42b631, label %block_.L_42b6e8, label %block_42b637

block_42b637:
  ; Code: movb $0x1, %al	 RIP: 42b637	 Bytes: 2
  %loadMem_42b637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b637 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b637)
  store %struct.Memory* %call_42b637, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b639	 Bytes: 4
  %loadMem_42b639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b639 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b639)
  store %struct.Memory* %call_42b639, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b63d	 Bytes: 3
  %loadMem_42b63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b63d = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b63d)
  store %struct.Memory* %call_42b63d, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 42b640	 Bytes: 4
  %loadMem_42b640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b640 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b640)
  store %struct.Memory* %call_42b640, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b644	 Bytes: 4
  %loadMem_42b644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b644 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b644)
  store %struct.Memory* %call_42b644, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b648	 Bytes: 3
  %loadMem_42b648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b648 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b648)
  store %struct.Memory* %call_42b648, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 42b64b	 Bytes: 3
  %loadMem_42b64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b64b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b64b)
  store %struct.Memory* %call_42b64b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 42b64e	 Bytes: 3
  %loadMem_42b64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b64e = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b64e)
  store %struct.Memory* %call_42b64e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 42b651	 Bytes: 4
  %loadMem_42b651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b651 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b651)
  store %struct.Memory* %call_42b651, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %esi	 RIP: 42b655	 Bytes: 3
  %loadMem_42b655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b655 = call %struct.Memory* @routine_cmpl__0x2e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b655)
  store %struct.Memory* %call_42b655, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x20a(%rbp)	 RIP: 42b658	 Bytes: 6
  %loadMem_42b658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b658 = call %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b658)
  store %struct.Memory* %call_42b658, %struct.Memory** %MEMORY

  ; Code: je .L_42b6e8	 RIP: 42b65e	 Bytes: 6
  %loadMem_42b65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b65e = call %struct.Memory* @routine_je_.L_42b6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b65e, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_42b65e, %struct.Memory** %MEMORY

  %loadBr_42b65e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b65e = icmp eq i8 %loadBr_42b65e, 1
  br i1 %cmpBr_42b65e, label %block_.L_42b6e8, label %block_42b664

block_42b664:
  ; Code: movb $0x1, %al	 RIP: 42b664	 Bytes: 2
  %loadMem_42b664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b664 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b664)
  store %struct.Memory* %call_42b664, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b666	 Bytes: 4
  %loadMem_42b666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b666 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b666)
  store %struct.Memory* %call_42b666, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b66a	 Bytes: 3
  %loadMem_42b66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b66a = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b66a)
  store %struct.Memory* %call_42b66a, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 42b66d	 Bytes: 4
  %loadMem_42b66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b66d = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b66d)
  store %struct.Memory* %call_42b66d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b671	 Bytes: 4
  %loadMem_42b671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b671 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b671)
  store %struct.Memory* %call_42b671, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b675	 Bytes: 3
  %loadMem_42b675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b675 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b675)
  store %struct.Memory* %call_42b675, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 42b678	 Bytes: 3
  %loadMem_42b678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b678 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b678)
  store %struct.Memory* %call_42b678, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 42b67b	 Bytes: 3
  %loadMem_42b67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b67b = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b67b)
  store %struct.Memory* %call_42b67b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 42b67e	 Bytes: 4
  %loadMem_42b67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b67e = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b67e)
  store %struct.Memory* %call_42b67e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %esi	 RIP: 42b682	 Bytes: 3
  %loadMem_42b682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b682 = call %struct.Memory* @routine_cmpl__0x5f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b682)
  store %struct.Memory* %call_42b682, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x20a(%rbp)	 RIP: 42b685	 Bytes: 6
  %loadMem_42b685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b685 = call %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b685)
  store %struct.Memory* %call_42b685, %struct.Memory** %MEMORY

  ; Code: je .L_42b6e8	 RIP: 42b68b	 Bytes: 6
  %loadMem_42b68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b68b = call %struct.Memory* @routine_je_.L_42b6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b68b, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_42b68b, %struct.Memory** %MEMORY

  %loadBr_42b68b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b68b = icmp eq i8 %loadBr_42b68b, 1
  br i1 %cmpBr_42b68b, label %block_.L_42b6e8, label %block_42b691

block_42b691:
  ; Code: movb $0x1, %al	 RIP: 42b691	 Bytes: 2
  %loadMem_42b691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b691 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b691)
  store %struct.Memory* %call_42b691, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b693	 Bytes: 4
  %loadMem_42b693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b693 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b693)
  store %struct.Memory* %call_42b693, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b697	 Bytes: 3
  %loadMem_42b697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b697 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b697)
  store %struct.Memory* %call_42b697, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rdx	 RIP: 42b69a	 Bytes: 4
  %loadMem_42b69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b69a = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b69a)
  store %struct.Memory* %call_42b69a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b69e	 Bytes: 4
  %loadMem_42b69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b69e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b69e)
  store %struct.Memory* %call_42b69e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 42b6a2	 Bytes: 3
  %loadMem_42b6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6a2 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6a2)
  store %struct.Memory* %call_42b6a2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 42b6a5	 Bytes: 3
  %loadMem_42b6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6a5 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6a5)
  store %struct.Memory* %call_42b6a5, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 42b6a8	 Bytes: 3
  %loadMem_42b6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6a8 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6a8)
  store %struct.Memory* %call_42b6a8, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 42b6ab	 Bytes: 4
  %loadMem_42b6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ab = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ab)
  store %struct.Memory* %call_42b6ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %esi	 RIP: 42b6af	 Bytes: 3
  %loadMem_42b6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6af = call %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6af)
  store %struct.Memory* %call_42b6af, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x20a(%rbp)	 RIP: 42b6b2	 Bytes: 6
  %loadMem_42b6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6b2 = call %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6b2)
  store %struct.Memory* %call_42b6b2, %struct.Memory** %MEMORY

  ; Code: je .L_42b6e8	 RIP: 42b6b8	 Bytes: 6
  %loadMem_42b6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6b8 = call %struct.Memory* @routine_je_.L_42b6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6b8, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_42b6b8, %struct.Memory** %MEMORY

  %loadBr_42b6b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b6b8 = icmp eq i8 %loadBr_42b6b8, 1
  br i1 %cmpBr_42b6b8, label %block_.L_42b6e8, label %block_42b6be

block_42b6be:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b6be	 Bytes: 4
  %loadMem_42b6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6be = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6be)
  store %struct.Memory* %call_42b6be, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b6c2	 Bytes: 3
  %loadMem_42b6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6c2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6c2)
  store %struct.Memory* %call_42b6c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b6c5	 Bytes: 4
  %loadMem_42b6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6c5 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6c5)
  store %struct.Memory* %call_42b6c5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b6c9	 Bytes: 4
  %loadMem_42b6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6c9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6c9)
  store %struct.Memory* %call_42b6c9, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42b6cd	 Bytes: 3
  %loadMem_42b6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6cd = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6cd)
  store %struct.Memory* %call_42b6cd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b6d0	 Bytes: 3
  %loadMem_42b6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6d0 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6d0)
  store %struct.Memory* %call_42b6d0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b6d3	 Bytes: 3
  %loadMem_42b6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6d3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6d3)
  store %struct.Memory* %call_42b6d3, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42b6d6	 Bytes: 4
  %loadMem_42b6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6d6 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6d6)
  store %struct.Memory* %call_42b6d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42b6da	 Bytes: 3
  %loadMem_42b6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6da = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6da)
  store %struct.Memory* %call_42b6da, %struct.Memory** %MEMORY

  ; Code: sete %sil	 RIP: 42b6dd	 Bytes: 4
  %loadMem_42b6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6dd = call %struct.Memory* @routine_sete__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6dd)
  store %struct.Memory* %call_42b6dd, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x20a(%rbp)	 RIP: 42b6e1	 Bytes: 7
  %loadMem_42b6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6e1 = call %struct.Memory* @routine_movb__sil__MINUS0x20a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6e1)
  store %struct.Memory* %call_42b6e1, %struct.Memory** %MEMORY

  ; Code: .L_42b6e8:	 RIP: 42b6e8	 Bytes: 0
  br label %block_.L_42b6e8
block_.L_42b6e8:

  ; Code: movb -0x20a(%rbp), %al	 RIP: 42b6e8	 Bytes: 6
  %loadMem_42b6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6e8 = call %struct.Memory* @routine_movb_MINUS0x20a__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6e8)
  store %struct.Memory* %call_42b6e8, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x209(%rbp)	 RIP: 42b6ee	 Bytes: 6
  %loadMem_42b6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ee = call %struct.Memory* @routine_movb__al__MINUS0x209__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ee)
  store %struct.Memory* %call_42b6ee, %struct.Memory** %MEMORY

  ; Code: .L_42b6f4:	 RIP: 42b6f4	 Bytes: 0
  br label %block_.L_42b6f4
block_.L_42b6f4:

  ; Code: movb -0x209(%rbp), %al	 RIP: 42b6f4	 Bytes: 6
  %loadMem_42b6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6f4 = call %struct.Memory* @routine_movb_MINUS0x209__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6f4)
  store %struct.Memory* %call_42b6f4, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 42b6fa	 Bytes: 2
  %loadMem_42b6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6fa = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6fa)
  store %struct.Memory* %call_42b6fa, %struct.Memory** %MEMORY

  ; Code: jne .L_42b707	 RIP: 42b6fc	 Bytes: 6
  %loadMem_42b6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6fc = call %struct.Memory* @routine_jne_.L_42b707(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6fc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42b6fc, %struct.Memory** %MEMORY

  %loadBr_42b6fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b6fc = icmp eq i8 %loadBr_42b6fc, 1
  br i1 %cmpBr_42b6fc, label %block_.L_42b707, label %block_42b702

block_42b702:
  ; Code: jmpq .L_42b731	 RIP: 42b702	 Bytes: 5
  %loadMem_42b702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b702 = call %struct.Memory* @routine_jmpq_.L_42b731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b702, i64 47, i64 5)
  store %struct.Memory* %call_42b702, %struct.Memory** %MEMORY

  br label %block_.L_42b731

  ; Code: .L_42b707:	 RIP: 42b707	 Bytes: 0
block_.L_42b707:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42b707	 Bytes: 4
  %loadMem_42b707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b707 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b707)
  store %struct.Memory* %call_42b707, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42b70b	 Bytes: 3
  %loadMem_42b70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b70b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b70b)
  store %struct.Memory* %call_42b70b, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b70e	 Bytes: 4
  %loadMem_42b70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b70e = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b70e)
  store %struct.Memory* %call_42b70e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42b712	 Bytes: 4
  %loadMem_42b712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b712 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b712)
  store %struct.Memory* %call_42b712, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42b716	 Bytes: 3
  %loadMem_42b716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b716 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b716)
  store %struct.Memory* %call_42b716, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42b719	 Bytes: 3
  %loadMem_42b719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b719 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b719)
  store %struct.Memory* %call_42b719, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42b71c	 Bytes: 3
  %loadMem_42b71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b71c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b71c)
  store %struct.Memory* %call_42b71c, %struct.Memory** %MEMORY

  ; Code: movb $0x5f, (%rax,%rcx,1)	 RIP: 42b71f	 Bytes: 4
  %loadMem_42b71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b71f = call %struct.Memory* @routine_movb__0x5f____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b71f)
  store %struct.Memory* %call_42b71f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42b723	 Bytes: 3
  %loadMem_42b723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b723 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b723)
  store %struct.Memory* %call_42b723, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 42b726	 Bytes: 3
  %loadMem_42b726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b726 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b726)
  store %struct.Memory* %call_42b726, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42b729	 Bytes: 3
  %loadMem_42b729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b729 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b729)
  store %struct.Memory* %call_42b729, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b5f6	 RIP: 42b72c	 Bytes: 5
  %loadMem_42b72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b72c = call %struct.Memory* @routine_jmpq_.L_42b5f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b72c, i64 -310, i64 5)
  store %struct.Memory* %call_42b72c, %struct.Memory** %MEMORY

  br label %block_.L_42b5f6

  ; Code: .L_42b731:	 RIP: 42b731	 Bytes: 0
block_.L_42b731:

  ; Code: jmpq .L_42b736	 RIP: 42b731	 Bytes: 5
  %loadMem_42b731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b731 = call %struct.Memory* @routine_jmpq_.L_42b736(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b731, i64 5, i64 5)
  store %struct.Memory* %call_42b731, %struct.Memory** %MEMORY

  br label %block_.L_42b736

  ; Code: .L_42b736:	 RIP: 42b736	 Bytes: 0
block_.L_42b736:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b736	 Bytes: 3
  %loadMem_42b736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b736 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b736)
  store %struct.Memory* %call_42b736, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b739	 Bytes: 3
  %loadMem_42b739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b739 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b739)
  store %struct.Memory* %call_42b739, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42b73c	 Bytes: 3
  %loadMem_42b73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b73c = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b73c)
  store %struct.Memory* %call_42b73c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b5dd	 RIP: 42b73f	 Bytes: 5
  %loadMem_42b73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b73f = call %struct.Memory* @routine_jmpq_.L_42b5dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b73f, i64 -354, i64 5)
  store %struct.Memory* %call_42b73f, %struct.Memory** %MEMORY

  br label %block_.L_42b5dd

  ; Code: .L_42b744:	 RIP: 42b744	 Bytes: 0
block_.L_42b744:

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 42b744	 Bytes: 6
  %loadMem_42b744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b744 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b744)
  store %struct.Memory* %call_42b744, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42b74a	 Bytes: 3
  %loadMem_42b74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b74a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b74a)
  store %struct.Memory* %call_42b74a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42b74d	 Bytes: 3
  %loadMem_42b74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b74d = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b74d)
  store %struct.Memory* %call_42b74d, %struct.Memory** %MEMORY

  ; Code: .L_42b750:	 RIP: 42b750	 Bytes: 0
  br label %block_.L_42b750
block_.L_42b750:

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 42b750	 Bytes: 4
  %loadMem_42b750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b750 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b750)
  store %struct.Memory* %call_42b750, %struct.Memory** %MEMORY

  ; Code: jle .L_42beb8	 RIP: 42b754	 Bytes: 6
  %loadMem_42b754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b754 = call %struct.Memory* @routine_jle_.L_42beb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b754, i8* %BRANCH_TAKEN, i64 1892, i64 6, i64 6)
  store %struct.Memory* %call_42b754, %struct.Memory** %MEMORY

  %loadBr_42b754 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b754 = icmp eq i8 %loadBr_42b754, 1
  br i1 %cmpBr_42b754, label %block_.L_42beb8, label %block_42b75a

block_42b75a:
  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 42b75a	 Bytes: 7
  %loadMem_42b75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b75a = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b75a)
  store %struct.Memory* %call_42b75a, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 42b761	 Bytes: 4
  %loadMem_42b761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b761 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b761)
  store %struct.Memory* %call_42b761, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b765	 Bytes: 4
  %loadMem_42b765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b765 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b765)
  store %struct.Memory* %call_42b765, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 42b769	 Bytes: 4
  %loadMem_42b769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b769 = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b769)
  store %struct.Memory* %call_42b769, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %edx	 RIP: 42b76d	 Bytes: 7
  %loadMem_42b76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b76d = call %struct.Memory* @routine_movl_0x677060___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b76d)
  store %struct.Memory* %call_42b76d, %struct.Memory** %MEMORY

  ; Code: callq .FCopy	 RIP: 42b774	 Bytes: 5
  %loadMem1_42b774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b774 = call %struct.Memory* @routine_callq_.FCopy(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b774, i64 158348, i64 5, i64 5)
  store %struct.Memory* %call1_42b774, %struct.Memory** %MEMORY

  %loadMem2_42b774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b774 = load i64, i64* %3
  %call2_42b774 = call %struct.Memory* @sub_452200.FCopy(%struct.State* %0, i64  %loadPC_42b774, %struct.Memory* %loadMem2_42b774)
  store %struct.Memory* %call2_42b774, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 42b779	 Bytes: 2
  %loadMem_42b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b779 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b779)
  store %struct.Memory* %call_42b779, %struct.Memory** %MEMORY

  ; Code: movl %edx, %r9d	 RIP: 42b77b	 Bytes: 3
  %loadMem_42b77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b77b = call %struct.Memory* @routine_movl__edx___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b77b)
  store %struct.Memory* %call_42b77b, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 42b77e	 Bytes: 7
  %loadMem_42b77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b77e = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b77e)
  store %struct.Memory* %call_42b77e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 42b785	 Bytes: 4
  %loadMem_42b785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b785 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b785)
  store %struct.Memory* %call_42b785, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42b789	 Bytes: 4
  %loadMem_42b789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b789 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b789)
  store %struct.Memory* %call_42b789, %struct.Memory** %MEMORY

  ; Code: movl 0x1908(%rax), %edx	 RIP: 42b78d	 Bytes: 6
  %loadMem_42b78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b78d = call %struct.Memory* @routine_movl_0x1908__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b78d)
  store %struct.Memory* %call_42b78d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42b793	 Bytes: 4
  %loadMem_42b793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b793 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b793)
  store %struct.Memory* %call_42b793, %struct.Memory** %MEMORY

  ; Code: addq $0x190c, %rax	 RIP: 42b797	 Bytes: 6
  %loadMem_42b797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b797 = call %struct.Memory* @routine_addq__0x190c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b797)
  store %struct.Memory* %call_42b797, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42b79d	 Bytes: 4
  %loadMem_42b79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b79d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b79d)
  store %struct.Memory* %call_42b79d, %struct.Memory** %MEMORY

  ; Code: addq $0x1c2c, %rcx	 RIP: 42b7a1	 Bytes: 7
  %loadMem_42b7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7a1 = call %struct.Memory* @routine_addq__0x1c2c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7a1)
  store %struct.Memory* %call_42b7a1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x218(%rbp)	 RIP: 42b7a8	 Bytes: 7
  %loadMem_42b7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7a8 = call %struct.Memory* @routine_movq__rcx__MINUS0x218__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7a8)
  store %struct.Memory* %call_42b7a8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 42b7af	 Bytes: 3
  %loadMem_42b7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7af = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7af)
  store %struct.Memory* %call_42b7af, %struct.Memory** %MEMORY

  ; Code: movq -0x218(%rbp), %r8	 RIP: 42b7b2	 Bytes: 7
  %loadMem_42b7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7b2 = call %struct.Memory* @routine_movq_MINUS0x218__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7b2)
  store %struct.Memory* %call_42b7b2, %struct.Memory** %MEMORY

  ; Code: callq .P7PriorifyEmissionVector	 RIP: 42b7b9	 Bytes: 5
  %loadMem1_42b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b7b9 = call %struct.Memory* @routine_callq_.P7PriorifyEmissionVector(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b7b9, i64 56983, i64 5, i64 5)
  store %struct.Memory* %call1_42b7b9, %struct.Memory** %MEMORY

  %loadMem2_42b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b7b9 = load i64, i64* %3
  %call2_42b7b9 = call %struct.Memory* @sub_439650.P7PriorifyEmissionVector(%struct.State* %0, i64  %loadPC_42b7b9, %struct.Memory* %loadMem2_42b7b9)
  store %struct.Memory* %call2_42b7b9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 42b7be	 Bytes: 7
  %loadMem_42b7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7be = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7be)
  store %struct.Memory* %call_42b7be, %struct.Memory** %MEMORY

  ; Code: .L_42b7c5:	 RIP: 42b7c5	 Bytes: 0
  br label %block_.L_42b7c5
block_.L_42b7c5:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 42b7c5	 Bytes: 3
  %loadMem_42b7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7c5 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7c5)
  store %struct.Memory* %call_42b7c5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 42b7c8	 Bytes: 7
  %loadMem_42b7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7c8 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7c8)
  store %struct.Memory* %call_42b7c8, %struct.Memory** %MEMORY

  ; Code: jge .L_42b873	 RIP: 42b7cf	 Bytes: 6
  %loadMem_42b7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7cf = call %struct.Memory* @routine_jge_.L_42b873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7cf, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_42b7cf, %struct.Memory** %MEMORY

  %loadBr_42b7cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b7cf = icmp eq i8 %loadBr_42b7cf, 1
  br i1 %cmpBr_42b7cf, label %block_.L_42b873, label %block_42b7d5

block_42b7d5:
  ; Code: xorps %xmm0, %xmm0	 RIP: 42b7d5	 Bytes: 3
  %loadMem_42b7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7d5 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7d5)
  store %struct.Memory* %call_42b7d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b7d8	 Bytes: 4
  %loadMem_42b7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7d8 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7d8)
  store %struct.Memory* %call_42b7d8, %struct.Memory** %MEMORY

  ; Code: movss -0xf0(%rbp,%rax,4), %xmm1	 RIP: 42b7dc	 Bytes: 9
  %loadMem_42b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7dc = call %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7dc)
  store %struct.Memory* %call_42b7dc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42b7e5	 Bytes: 4
  %loadMem_42b7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7e5)
  store %struct.Memory* %call_42b7e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 42b7e9	 Bytes: 4
  %loadMem_42b7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7e9 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7e9)
  store %struct.Memory* %call_42b7e9, %struct.Memory** %MEMORY

  ; Code: divss (%rax,%rcx,4), %xmm1	 RIP: 42b7ed	 Bytes: 5
  %loadMem_42b7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7ed = call %struct.Memory* @routine_divss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7ed)
  store %struct.Memory* %call_42b7ed, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b7f2	 Bytes: 3
  %loadMem_42b7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7f2 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7f2)
  store %struct.Memory* %call_42b7f2, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b837	 RIP: 42b7f5	 Bytes: 6
  %loadMem_42b7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7f5 = call %struct.Memory* @routine_jbe_.L_42b837(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7f5, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_42b7f5, %struct.Memory** %MEMORY

  %loadBr_42b7f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b7f5 = icmp eq i8 %loadBr_42b7f5, 1
  br i1 %cmpBr_42b7f5, label %block_.L_42b837, label %block_42b7fb

block_42b7fb:
  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b7fb	 Bytes: 4
  %loadMem_42b7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7fb = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7fb)
  store %struct.Memory* %call_42b7fb, %struct.Memory** %MEMORY

  ; Code: movss -0xf0(%rbp,%rax,4), %xmm0	 RIP: 42b7ff	 Bytes: 9
  %loadMem_42b7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7ff = call %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7ff)
  store %struct.Memory* %call_42b7ff, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 42b808	 Bytes: 4
  %loadMem_42b808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b808 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b808)
  store %struct.Memory* %call_42b808, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 42b80c	 Bytes: 4
  %loadMem_42b80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b80c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b80c)
  store %struct.Memory* %call_42b80c, %struct.Memory** %MEMORY

  ; Code: divss (%rax,%rcx,4), %xmm0	 RIP: 42b810	 Bytes: 5
  %loadMem_42b810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b810 = call %struct.Memory* @routine_divss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b810)
  store %struct.Memory* %call_42b810, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42b815	 Bytes: 4
  %loadMem_42b815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b815 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b815)
  store %struct.Memory* %call_42b815, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b819	 Bytes: 5
  %loadMem1_42b819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b819 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b819, i64 -172841, i64 5, i64 5)
  store %struct.Memory* %call1_42b819, %struct.Memory** %MEMORY

  %loadMem2_42b819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b819 = load i64, i64* %3
  %call2_42b819 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b819, %struct.Memory* %loadMem2_42b819)
  store %struct.Memory* %call2_42b819, %struct.Memory** %MEMORY

  ; Code: movsd 0x290ba(%rip), %xmm1	 RIP: 42b81e	 Bytes: 8
  %loadMem_42b81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b81e = call %struct.Memory* @routine_movsd_0x290ba__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b81e)
  store %struct.Memory* %call_42b81e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b826	 Bytes: 4
  %loadMem_42b826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b826 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b826)
  store %struct.Memory* %call_42b826, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x220(%rbp)	 RIP: 42b82a	 Bytes: 8
  %loadMem_42b82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b82a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b82a)
  store %struct.Memory* %call_42b82a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b84c	 RIP: 42b832	 Bytes: 5
  %loadMem_42b832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b832 = call %struct.Memory* @routine_jmpq_.L_42b84c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b832, i64 26, i64 5)
  store %struct.Memory* %call_42b832, %struct.Memory** %MEMORY

  br label %block_.L_42b84c

  ; Code: .L_42b837:	 RIP: 42b837	 Bytes: 0
block_.L_42b837:

  ; Code: movsd 0x29099(%rip), %xmm0	 RIP: 42b837	 Bytes: 8
  %loadMem_42b837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b837 = call %struct.Memory* @routine_movsd_0x29099__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b837)
  store %struct.Memory* %call_42b837, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x220(%rbp)	 RIP: 42b83f	 Bytes: 8
  %loadMem_42b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b83f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b83f)
  store %struct.Memory* %call_42b83f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b84c	 RIP: 42b847	 Bytes: 5
  %loadMem_42b847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b847 = call %struct.Memory* @routine_jmpq_.L_42b84c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b847, i64 5, i64 5)
  store %struct.Memory* %call_42b847, %struct.Memory** %MEMORY

  br label %block_.L_42b84c

  ; Code: .L_42b84c:	 RIP: 42b84c	 Bytes: 0
block_.L_42b84c:

  ; Code: movsd -0x220(%rbp), %xmm0	 RIP: 42b84c	 Bytes: 8
  %loadMem_42b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b84c = call %struct.Memory* @routine_movsd_MINUS0x220__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b84c)
  store %struct.Memory* %call_42b84c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b854	 Bytes: 4
  %loadMem_42b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b854 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b854)
  store %struct.Memory* %call_42b854, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 42b858	 Bytes: 4
  %loadMem_42b858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b858 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b858)
  store %struct.Memory* %call_42b858, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xf0(%rbp,%rax,4)	 RIP: 42b85c	 Bytes: 9
  %loadMem_42b85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b85c = call %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b85c)
  store %struct.Memory* %call_42b85c, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 42b865	 Bytes: 3
  %loadMem_42b865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b865 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b865)
  store %struct.Memory* %call_42b865, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b868	 Bytes: 3
  %loadMem_42b868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b868 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b868)
  store %struct.Memory* %call_42b868, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 42b86b	 Bytes: 3
  %loadMem_42b86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b86b = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b86b)
  store %struct.Memory* %call_42b86b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b7c5	 RIP: 42b86e	 Bytes: 5
  %loadMem_42b86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b86e = call %struct.Memory* @routine_jmpq_.L_42b7c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b86e, i64 -169, i64 5)
  store %struct.Memory* %call_42b86e, %struct.Memory** %MEMORY

  br label %block_.L_42b7c5

  ; Code: .L_42b873:	 RIP: 42b873	 Bytes: 0
block_.L_42b873:

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b873	 Bytes: 3
  %loadMem_42b873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b873 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b873)
  store %struct.Memory* %call_42b873, %struct.Memory** %MEMORY

  ; Code: leaq -0x190(%rbp), %rdi	 RIP: 42b876	 Bytes: 7
  %loadMem_42b876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b876 = call %struct.Memory* @routine_leaq_MINUS0x190__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b876)
  store %struct.Memory* %call_42b876, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 42b87d	 Bytes: 7
  %loadMem_42b87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b87d = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b87d)
  store %struct.Memory* %call_42b87d, %struct.Memory** %MEMORY

  ; Code: callq .FSet	 RIP: 42b884	 Bytes: 5
  %loadMem1_42b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b884 = call %struct.Memory* @routine_callq_.FSet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b884, i64 157372, i64 5, i64 5)
  store %struct.Memory* %call1_42b884, %struct.Memory** %MEMORY

  %loadMem2_42b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b884 = load i64, i64* %3
  %call2_42b884 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64  %loadPC_42b884, %struct.Memory* %loadMem2_42b884)
  store %struct.Memory* %call2_42b884, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42b889	 Bytes: 7
  %loadMem_42b889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b889 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b889)
  store %struct.Memory* %call_42b889, %struct.Memory** %MEMORY

  ; Code: .L_42b890:	 RIP: 42b890	 Bytes: 0
  br label %block_.L_42b890
block_.L_42b890:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b890	 Bytes: 3
  %loadMem_42b890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b890 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b890)
  store %struct.Memory* %call_42b890, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b893	 Bytes: 4
  %loadMem_42b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b893 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b893)
  store %struct.Memory* %call_42b893, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42b897	 Bytes: 3
  %loadMem_42b897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b897 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b897)
  store %struct.Memory* %call_42b897, %struct.Memory** %MEMORY

  ; Code: jge .L_42b8c0	 RIP: 42b89a	 Bytes: 6
  %loadMem_42b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b89a = call %struct.Memory* @routine_jge_.L_42b8c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b89a, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42b89a, %struct.Memory** %MEMORY

  %loadBr_42b89a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b89a = icmp eq i8 %loadBr_42b89a, 1
  br i1 %cmpBr_42b89a, label %block_.L_42b8c0, label %block_42b8a0

block_42b8a0:
  ; Code: movq -0x1b0(%rbp), %rax	 RIP: 42b8a0	 Bytes: 7
  %loadMem_42b8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8a0 = call %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8a0)
  store %struct.Memory* %call_42b8a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42b8a7	 Bytes: 4
  %loadMem_42b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8a7 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8a7)
  store %struct.Memory* %call_42b8a7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 42b8ab	 Bytes: 7
  %loadMem_42b8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8ab = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8ab)
  store %struct.Memory* %call_42b8ab, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42b8b2	 Bytes: 3
  %loadMem_42b8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8b2 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8b2)
  store %struct.Memory* %call_42b8b2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b8b5	 Bytes: 3
  %loadMem_42b8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8b5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8b5)
  store %struct.Memory* %call_42b8b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42b8b8	 Bytes: 3
  %loadMem_42b8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8b8 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8b8)
  store %struct.Memory* %call_42b8b8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b890	 RIP: 42b8bb	 Bytes: 5
  %loadMem_42b8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8bb = call %struct.Memory* @routine_jmpq_.L_42b890(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8bb, i64 -43, i64 5)
  store %struct.Memory* %call_42b8bb, %struct.Memory** %MEMORY

  br label %block_.L_42b890

  ; Code: .L_42b8c0:	 RIP: 42b8c0	 Bytes: 0
block_.L_42b8c0:

  ; Code: movss 0x28e9c(%rip), %xmm0	 RIP: 42b8c0	 Bytes: 8
  %loadMem_42b8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8c0 = call %struct.Memory* @routine_movss_0x28e9c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8c0)
  store %struct.Memory* %call_42b8c0, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42b8c8	 Bytes: 7
  %loadMem_42b8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8c8 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8c8)
  store %struct.Memory* %call_42b8c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42b8cf	 Bytes: 4
  %loadMem_42b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8cf = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8cf)
  store %struct.Memory* %call_42b8cf, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 42b8d3	 Bytes: 5
  %loadMem_42b8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8d3 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8d3)
  store %struct.Memory* %call_42b8d3, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42b8d8	 Bytes: 3
  %loadMem_42b8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8d8 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8d8)
  store %struct.Memory* %call_42b8d8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42b8db	 Bytes: 3
  %loadMem_42b8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8db = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8db)
  store %struct.Memory* %call_42b8db, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4c(%rbp)	 RIP: 42b8de	 Bytes: 3
  %loadMem_42b8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8de = call %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8de)
  store %struct.Memory* %call_42b8de, %struct.Memory** %MEMORY

  ; Code: .L_42b8e1:	 RIP: 42b8e1	 Bytes: 0
  br label %block_.L_42b8e1
block_.L_42b8e1:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 42b8e1	 Bytes: 3
  %loadMem_42b8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8e1 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8e1)
  store %struct.Memory* %call_42b8e1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1b8(%rbp), %eax	 RIP: 42b8e4	 Bytes: 6
  %loadMem_42b8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8e4 = call %struct.Memory* @routine_cmpl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8e4)
  store %struct.Memory* %call_42b8e4, %struct.Memory** %MEMORY

  ; Code: jg .L_42be65	 RIP: 42b8ea	 Bytes: 6
  %loadMem_42b8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8ea = call %struct.Memory* @routine_jg_.L_42be65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8ea, i8* %BRANCH_TAKEN, i64 1403, i64 6, i64 6)
  store %struct.Memory* %call_42b8ea, %struct.Memory** %MEMORY

  %loadBr_42b8ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b8ea = icmp eq i8 %loadBr_42b8ea, 1
  br i1 %cmpBr_42b8ea, label %block_.L_42be65, label %block_42b8f0

block_42b8f0:
  ; Code: leaq -0x80(%rbp), %rax	 RIP: 42b8f0	 Bytes: 4
  %loadMem_42b8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8f0 = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8f0)
  store %struct.Memory* %call_42b8f0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b8f4	 Bytes: 4
  %loadMem_42b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8f4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8f4)
  store %struct.Memory* %call_42b8f4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rdi	 RIP: 42b8f8	 Bytes: 3
  %loadMem_42b8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8f8 = call %struct.Memory* @routine_movq___rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8f8)
  store %struct.Memory* %call_42b8f8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42b8fb	 Bytes: 4
  %loadMem_42b8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8fb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8fb)
  store %struct.Memory* %call_42b8fb, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rcx), %esi	 RIP: 42b8ff	 Bytes: 3
  %loadMem_42b8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8ff = call %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8ff)
  store %struct.Memory* %call_42b8ff, %struct.Memory** %MEMORY

  ; Code: movq -0x1b0(%rbp), %rdx	 RIP: 42b902	 Bytes: 7
  %loadMem_42b902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b902 = call %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b902)
  store %struct.Memory* %call_42b902, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 42b909	 Bytes: 3
  %loadMem_42b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b909 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b909)
  store %struct.Memory* %call_42b909, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r8d	 RIP: 42b90c	 Bytes: 4
  %loadMem_42b90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b90c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b90c)
  store %struct.Memory* %call_42b90c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r9	 RIP: 42b910	 Bytes: 4
  %loadMem_42b910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b910 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b910)
  store %struct.Memory* %call_42b910, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%r9), %r9	 RIP: 42b914	 Bytes: 4
  %loadMem_42b914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b914 = call %struct.Memory* @routine_movq_0x10__r9____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b914)
  store %struct.Memory* %call_42b914, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 42b918	 Bytes: 4
  %loadMem_42b918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b918 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b918)
  store %struct.Memory* %call_42b918, %struct.Memory** %MEMORY

  ; Code: callq .build_cij	 RIP: 42b91c	 Bytes: 5
  %loadMem1_42b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b91c = call %struct.Memory* @routine_callq_.build_cij(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b91c, i64 2356, i64 5, i64 5)
  store %struct.Memory* %call1_42b91c, %struct.Memory** %MEMORY

  %loadMem2_42b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b91c = load i64, i64* %3
  %call2_42b91c = call %struct.Memory* @sub_42c250.build_cij(%struct.State* %0, i64  %loadPC_42b91c, %struct.Memory* %loadMem2_42b91c)
  store %struct.Memory* %call2_42b91c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d4(%rbp)	 RIP: 42b921	 Bytes: 6
  %loadMem_42b921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b921 = call %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b921)
  store %struct.Memory* %call_42b921, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x1d4(%rbp)	 RIP: 42b927	 Bytes: 7
  %loadMem_42b927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b927 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b927)
  store %struct.Memory* %call_42b927, %struct.Memory** %MEMORY

  ; Code: jne .L_42b939	 RIP: 42b92e	 Bytes: 6
  %loadMem_42b92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b92e = call %struct.Memory* @routine_jne_.L_42b939(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b92e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42b92e, %struct.Memory** %MEMORY

  %loadBr_42b92e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b92e = icmp eq i8 %loadBr_42b92e, 1
  br i1 %cmpBr_42b92e, label %block_.L_42b939, label %block_42b934

block_42b934:
  ; Code: jmpq .L_42be65	 RIP: 42b934	 Bytes: 5
  %loadMem_42b934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b934 = call %struct.Memory* @routine_jmpq_.L_42be65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b934, i64 1329, i64 5)
  store %struct.Memory* %call_42b934, %struct.Memory** %MEMORY

  br label %block_.L_42be65

  ; Code: .L_42b939:	 RIP: 42b939	 Bytes: 0
block_.L_42b939:

  ; Code: cmpl $0x1, -0x1d4(%rbp)	 RIP: 42b939	 Bytes: 7
  %loadMem_42b939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b939 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b939)
  store %struct.Memory* %call_42b939, %struct.Memory** %MEMORY

  ; Code: jne .L_42bd3c	 RIP: 42b940	 Bytes: 6
  %loadMem_42b940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b940 = call %struct.Memory* @routine_jne_.L_42bd3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b940, i8* %BRANCH_TAKEN, i64 1020, i64 6, i64 6)
  store %struct.Memory* %call_42b940, %struct.Memory** %MEMORY

  %loadBr_42b940 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b940 = icmp eq i8 %loadBr_42b940, 1
  br i1 %cmpBr_42b940, label %block_.L_42bd3c, label %block_42b946

block_42b946:
  ; Code: movl $0x7, %edx	 RIP: 42b946	 Bytes: 5
  %loadMem_42b946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b946 = call %struct.Memory* @routine_movl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b946)
  store %struct.Memory* %call_42b946, %struct.Memory** %MEMORY

  ; Code: leaq -0x80(%rbp), %rsi	 RIP: 42b94b	 Bytes: 4
  %loadMem_42b94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b94b = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b94b)
  store %struct.Memory* %call_42b94b, %struct.Memory** %MEMORY

  ; Code: leaq -0xa0(%rbp), %rdi	 RIP: 42b94f	 Bytes: 7
  %loadMem_42b94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b94f = call %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b94f)
  store %struct.Memory* %call_42b94f, %struct.Memory** %MEMORY

  ; Code: callq .FCopy	 RIP: 42b956	 Bytes: 5
  %loadMem1_42b956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b956 = call %struct.Memory* @routine_callq_.FCopy(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b956, i64 157866, i64 5, i64 5)
  store %struct.Memory* %call1_42b956, %struct.Memory** %MEMORY

  %loadMem2_42b956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b956 = load i64, i64* %3
  %call2_42b956 = call %struct.Memory* @sub_452200.FCopy(%struct.State* %0, i64  %loadPC_42b956, %struct.Memory* %loadMem2_42b956)
  store %struct.Memory* %call2_42b956, %struct.Memory** %MEMORY

  ; Code: leaq -0xa0(%rbp), %rdi	 RIP: 42b95b	 Bytes: 7
  %loadMem_42b95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b95b = call %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b95b)
  store %struct.Memory* %call_42b95b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 42b962	 Bytes: 4
  %loadMem_42b962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b962 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b962)
  store %struct.Memory* %call_42b962, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42b966	 Bytes: 4
  %loadMem_42b966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b966 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b966)
  store %struct.Memory* %call_42b966, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 42b96a	 Bytes: 4
  %loadMem_42b96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b96a = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b96a)
  store %struct.Memory* %call_42b96a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42b96e	 Bytes: 3
  %loadMem_42b96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b96e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b96e)
  store %struct.Memory* %call_42b96e, %struct.Memory** %MEMORY

  ; Code: callq .P7PriorifyTransitionVector	 RIP: 42b971	 Bytes: 5
  %loadMem1_42b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b971 = call %struct.Memory* @routine_callq_.P7PriorifyTransitionVector(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b971, i64 55311, i64 5, i64 5)
  store %struct.Memory* %call1_42b971, %struct.Memory** %MEMORY

  %loadMem2_42b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b971 = load i64, i64* %3
  %call2_42b971 = call %struct.Memory* @sub_439180.P7PriorifyTransitionVector(%struct.State* %0, i64  %loadPC_42b971, %struct.Memory* %loadMem2_42b971)
  store %struct.Memory* %call2_42b971, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %esi	 RIP: 42b976	 Bytes: 5
  %loadMem_42b976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b976 = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b976)
  store %struct.Memory* %call_42b976, %struct.Memory** %MEMORY

  ; Code: leaq -0xa0(%rbp), %rdi	 RIP: 42b97b	 Bytes: 7
  %loadMem_42b97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b97b = call %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b97b)
  store %struct.Memory* %call_42b97b, %struct.Memory** %MEMORY

  ; Code: callq .FNorm	 RIP: 42b982	 Bytes: 5
  %loadMem1_42b982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b982 = call %struct.Memory* @routine_callq_.FNorm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b982, i64 159262, i64 5, i64 5)
  store %struct.Memory* %call1_42b982, %struct.Memory** %MEMORY

  %loadMem2_42b982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b982 = load i64, i64* %3
  %call2_42b982 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64  %loadPC_42b982, %struct.Memory* %loadMem2_42b982)
  store %struct.Memory* %call2_42b982, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b987	 Bytes: 3
  %loadMem_42b987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b987 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b987)
  store %struct.Memory* %call_42b987, %struct.Memory** %MEMORY

  ; Code: movss -0xa0(%rbp), %xmm1	 RIP: 42b98a	 Bytes: 8
  %loadMem_42b98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b98a = call %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b98a)
  store %struct.Memory* %call_42b98a, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm1	 RIP: 42b992	 Bytes: 5
  %loadMem_42b992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b992 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b992)
  store %struct.Memory* %call_42b992, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 42b997	 Bytes: 3
  %loadMem_42b997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b997 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b997)
  store %struct.Memory* %call_42b997, %struct.Memory** %MEMORY

  ; Code: jbe .L_42b9cf	 RIP: 42b99a	 Bytes: 6
  %loadMem_42b99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b99a = call %struct.Memory* @routine_jbe_.L_42b9cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b99a, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42b99a, %struct.Memory** %MEMORY

  %loadBr_42b99a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b99a = icmp eq i8 %loadBr_42b99a, 1
  br i1 %cmpBr_42b99a, label %block_.L_42b9cf, label %block_42b9a0

block_42b9a0:
  ; Code: movss -0xa0(%rbp), %xmm0	 RIP: 42b9a0	 Bytes: 8
  %loadMem_42b9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9a0 = call %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9a0)
  store %struct.Memory* %call_42b9a0, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42b9a8	 Bytes: 5
  %loadMem_42b9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9a8 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9a8)
  store %struct.Memory* %call_42b9a8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42b9ad	 Bytes: 4
  %loadMem_42b9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ad = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ad)
  store %struct.Memory* %call_42b9ad, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42b9b1	 Bytes: 5
  %loadMem1_42b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b9b1 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b9b1, i64 -173249, i64 5, i64 5)
  store %struct.Memory* %call1_42b9b1, %struct.Memory** %MEMORY

  %loadMem2_42b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b9b1 = load i64, i64* %3
  %call2_42b9b1 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42b9b1, %struct.Memory* %loadMem2_42b9b1)
  store %struct.Memory* %call2_42b9b1, %struct.Memory** %MEMORY

  ; Code: movsd 0x28f22(%rip), %xmm1	 RIP: 42b9b6	 Bytes: 8
  %loadMem_42b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9b6 = call %struct.Memory* @routine_movsd_0x28f22__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9b6)
  store %struct.Memory* %call_42b9b6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b9be	 Bytes: 4
  %loadMem_42b9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9be = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9be)
  store %struct.Memory* %call_42b9be, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x228(%rbp)	 RIP: 42b9c2	 Bytes: 8
  %loadMem_42b9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9c2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9c2)
  store %struct.Memory* %call_42b9c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b9e4	 RIP: 42b9ca	 Bytes: 5
  %loadMem_42b9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ca = call %struct.Memory* @routine_jmpq_.L_42b9e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ca, i64 26, i64 5)
  store %struct.Memory* %call_42b9ca, %struct.Memory** %MEMORY

  br label %block_.L_42b9e4

  ; Code: .L_42b9cf:	 RIP: 42b9cf	 Bytes: 0
block_.L_42b9cf:

  ; Code: movsd 0x28f01(%rip), %xmm0	 RIP: 42b9cf	 Bytes: 8
  %loadMem_42b9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9cf = call %struct.Memory* @routine_movsd_0x28f01__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9cf)
  store %struct.Memory* %call_42b9cf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x228(%rbp)	 RIP: 42b9d7	 Bytes: 8
  %loadMem_42b9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9d7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9d7)
  store %struct.Memory* %call_42b9d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b9e4	 RIP: 42b9df	 Bytes: 5
  %loadMem_42b9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9df = call %struct.Memory* @routine_jmpq_.L_42b9e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9df, i64 5, i64 5)
  store %struct.Memory* %call_42b9df, %struct.Memory** %MEMORY

  br label %block_.L_42b9e4

  ; Code: .L_42b9e4:	 RIP: 42b9e4	 Bytes: 0
block_.L_42b9e4:

  ; Code: movsd -0x228(%rbp), %xmm0	 RIP: 42b9e4	 Bytes: 8
  %loadMem_42b9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9e4 = call %struct.Memory* @routine_movsd_MINUS0x228__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9e4)
  store %struct.Memory* %call_42b9e4, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42b9ec	 Bytes: 3
  %loadMem_42b9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ec = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ec)
  store %struct.Memory* %call_42b9ec, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b9ef	 Bytes: 4
  %loadMem_42b9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ef = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ef)
  store %struct.Memory* %call_42b9ef, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xa0(%rbp)	 RIP: 42b9f3	 Bytes: 8
  %loadMem_42b9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9f3 = call %struct.Memory* @routine_movss__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9f3)
  store %struct.Memory* %call_42b9f3, %struct.Memory** %MEMORY

  ; Code: movss -0x9c(%rbp), %xmm0	 RIP: 42b9fb	 Bytes: 8
  %loadMem_42b9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9fb = call %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9fb)
  store %struct.Memory* %call_42b9fb, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42ba03	 Bytes: 5
  %loadMem_42ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba03 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba03)
  store %struct.Memory* %call_42ba03, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42ba08	 Bytes: 3
  %loadMem_42ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba08 = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba08)
  store %struct.Memory* %call_42ba08, %struct.Memory** %MEMORY

  ; Code: jbe .L_42ba40	 RIP: 42ba0b	 Bytes: 6
  %loadMem_42ba0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba0b = call %struct.Memory* @routine_jbe_.L_42ba40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba0b, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42ba0b, %struct.Memory** %MEMORY

  %loadBr_42ba0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ba0b = icmp eq i8 %loadBr_42ba0b, 1
  br i1 %cmpBr_42ba0b, label %block_.L_42ba40, label %block_42ba11

block_42ba11:
  ; Code: movss -0x9c(%rbp), %xmm0	 RIP: 42ba11	 Bytes: 8
  %loadMem_42ba11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba11 = call %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba11)
  store %struct.Memory* %call_42ba11, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42ba19	 Bytes: 5
  %loadMem_42ba19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba19 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba19)
  store %struct.Memory* %call_42ba19, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42ba1e	 Bytes: 4
  %loadMem_42ba1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba1e = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba1e)
  store %struct.Memory* %call_42ba1e, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42ba22	 Bytes: 5
  %loadMem1_42ba22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ba22 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ba22, i64 -173362, i64 5, i64 5)
  store %struct.Memory* %call1_42ba22, %struct.Memory** %MEMORY

  %loadMem2_42ba22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ba22 = load i64, i64* %3
  %call2_42ba22 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42ba22, %struct.Memory* %loadMem2_42ba22)
  store %struct.Memory* %call2_42ba22, %struct.Memory** %MEMORY

  ; Code: movsd 0x28eb1(%rip), %xmm1	 RIP: 42ba27	 Bytes: 8
  %loadMem_42ba27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba27 = call %struct.Memory* @routine_movsd_0x28eb1__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba27)
  store %struct.Memory* %call_42ba27, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42ba2f	 Bytes: 4
  %loadMem_42ba2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba2f = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba2f)
  store %struct.Memory* %call_42ba2f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x230(%rbp)	 RIP: 42ba33	 Bytes: 8
  %loadMem_42ba33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba33 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x230__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba33)
  store %struct.Memory* %call_42ba33, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ba55	 RIP: 42ba3b	 Bytes: 5
  %loadMem_42ba3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba3b = call %struct.Memory* @routine_jmpq_.L_42ba55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba3b, i64 26, i64 5)
  store %struct.Memory* %call_42ba3b, %struct.Memory** %MEMORY

  br label %block_.L_42ba55

  ; Code: .L_42ba40:	 RIP: 42ba40	 Bytes: 0
block_.L_42ba40:

  ; Code: movsd 0x28e90(%rip), %xmm0	 RIP: 42ba40	 Bytes: 8
  %loadMem_42ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba40 = call %struct.Memory* @routine_movsd_0x28e90__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba40)
  store %struct.Memory* %call_42ba40, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x230(%rbp)	 RIP: 42ba48	 Bytes: 8
  %loadMem_42ba48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba48 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x230__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba48)
  store %struct.Memory* %call_42ba48, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ba55	 RIP: 42ba50	 Bytes: 5
  %loadMem_42ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba50 = call %struct.Memory* @routine_jmpq_.L_42ba55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba50, i64 5, i64 5)
  store %struct.Memory* %call_42ba50, %struct.Memory** %MEMORY

  br label %block_.L_42ba55

  ; Code: .L_42ba55:	 RIP: 42ba55	 Bytes: 0
block_.L_42ba55:

  ; Code: movsd -0x230(%rbp), %xmm0	 RIP: 42ba55	 Bytes: 8
  %loadMem_42ba55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba55 = call %struct.Memory* @routine_movsd_MINUS0x230__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba55)
  store %struct.Memory* %call_42ba55, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42ba5d	 Bytes: 3
  %loadMem_42ba5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba5d = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba5d)
  store %struct.Memory* %call_42ba5d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42ba60	 Bytes: 4
  %loadMem_42ba60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba60 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba60)
  store %struct.Memory* %call_42ba60, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x9c(%rbp)	 RIP: 42ba64	 Bytes: 8
  %loadMem_42ba64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba64 = call %struct.Memory* @routine_movss__xmm0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba64)
  store %struct.Memory* %call_42ba64, %struct.Memory** %MEMORY

  ; Code: movss -0x98(%rbp), %xmm0	 RIP: 42ba6c	 Bytes: 8
  %loadMem_42ba6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba6c = call %struct.Memory* @routine_movss_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba6c)
  store %struct.Memory* %call_42ba6c, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42ba74	 Bytes: 3
  %loadMem_42ba74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba74 = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba74)
  store %struct.Memory* %call_42ba74, %struct.Memory** %MEMORY

  ; Code: jbe .L_42baa3	 RIP: 42ba77	 Bytes: 6
  %loadMem_42ba77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba77 = call %struct.Memory* @routine_jbe_.L_42baa3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba77, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_42ba77, %struct.Memory** %MEMORY

  %loadBr_42ba77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ba77 = icmp eq i8 %loadBr_42ba77, 1
  br i1 %cmpBr_42ba77, label %block_.L_42baa3, label %block_42ba7d

block_42ba7d:
  ; Code: cvtss2sd -0x98(%rbp), %xmm0	 RIP: 42ba7d	 Bytes: 8
  %loadMem_42ba7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba7d = call %struct.Memory* @routine_cvtss2sd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba7d)
  store %struct.Memory* %call_42ba7d, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42ba85	 Bytes: 5
  %loadMem1_42ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ba85 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ba85, i64 -173461, i64 5, i64 5)
  store %struct.Memory* %call1_42ba85, %struct.Memory** %MEMORY

  %loadMem2_42ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ba85 = load i64, i64* %3
  %call2_42ba85 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42ba85, %struct.Memory* %loadMem2_42ba85)
  store %struct.Memory* %call2_42ba85, %struct.Memory** %MEMORY

  ; Code: movsd 0x28e4e(%rip), %xmm1	 RIP: 42ba8a	 Bytes: 8
  %loadMem_42ba8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba8a = call %struct.Memory* @routine_movsd_0x28e4e__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba8a)
  store %struct.Memory* %call_42ba8a, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42ba92	 Bytes: 4
  %loadMem_42ba92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba92 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba92)
  store %struct.Memory* %call_42ba92, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x238(%rbp)	 RIP: 42ba96	 Bytes: 8
  %loadMem_42ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba96 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba96)
  store %struct.Memory* %call_42ba96, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bab8	 RIP: 42ba9e	 Bytes: 5
  %loadMem_42ba9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba9e = call %struct.Memory* @routine_jmpq_.L_42bab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba9e, i64 26, i64 5)
  store %struct.Memory* %call_42ba9e, %struct.Memory** %MEMORY

  br label %block_.L_42bab8

  ; Code: .L_42baa3:	 RIP: 42baa3	 Bytes: 0
block_.L_42baa3:

  ; Code: movsd 0x28e2d(%rip), %xmm0	 RIP: 42baa3	 Bytes: 8
  %loadMem_42baa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baa3 = call %struct.Memory* @routine_movsd_0x28e2d__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baa3)
  store %struct.Memory* %call_42baa3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x238(%rbp)	 RIP: 42baab	 Bytes: 8
  %loadMem_42baab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baab = call %struct.Memory* @routine_movsd__xmm0__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baab)
  store %struct.Memory* %call_42baab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bab8	 RIP: 42bab3	 Bytes: 5
  %loadMem_42bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bab3 = call %struct.Memory* @routine_jmpq_.L_42bab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bab3, i64 5, i64 5)
  store %struct.Memory* %call_42bab3, %struct.Memory** %MEMORY

  br label %block_.L_42bab8

  ; Code: .L_42bab8:	 RIP: 42bab8	 Bytes: 0
block_.L_42bab8:

  ; Code: movsd -0x238(%rbp), %xmm0	 RIP: 42bab8	 Bytes: 8
  %loadMem_42bab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bab8 = call %struct.Memory* @routine_movsd_MINUS0x238__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bab8)
  store %struct.Memory* %call_42bab8, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42bac0	 Bytes: 3
  %loadMem_42bac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bac0 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bac0)
  store %struct.Memory* %call_42bac0, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42bac3	 Bytes: 4
  %loadMem_42bac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bac3 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bac3)
  store %struct.Memory* %call_42bac3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x98(%rbp)	 RIP: 42bac7	 Bytes: 8
  %loadMem_42bac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bac7 = call %struct.Memory* @routine_movss__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bac7)
  store %struct.Memory* %call_42bac7, %struct.Memory** %MEMORY

  ; Code: movss -0x94(%rbp), %xmm0	 RIP: 42bacf	 Bytes: 8
  %loadMem_42bacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bacf = call %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bacf)
  store %struct.Memory* %call_42bacf, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42bad7	 Bytes: 5
  %loadMem_42bad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bad7 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bad7)
  store %struct.Memory* %call_42bad7, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42badc	 Bytes: 3
  %loadMem_42badc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42badc = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42badc)
  store %struct.Memory* %call_42badc, %struct.Memory** %MEMORY

  ; Code: jbe .L_42bb14	 RIP: 42badf	 Bytes: 6
  %loadMem_42badf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42badf = call %struct.Memory* @routine_jbe_.L_42bb14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42badf, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42badf, %struct.Memory** %MEMORY

  %loadBr_42badf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42badf = icmp eq i8 %loadBr_42badf, 1
  br i1 %cmpBr_42badf, label %block_.L_42bb14, label %block_42bae5

block_42bae5:
  ; Code: movss -0x94(%rbp), %xmm0	 RIP: 42bae5	 Bytes: 8
  %loadMem_42bae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bae5 = call %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bae5)
  store %struct.Memory* %call_42bae5, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42baed	 Bytes: 5
  %loadMem_42baed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baed = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baed)
  store %struct.Memory* %call_42baed, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42baf2	 Bytes: 4
  %loadMem_42baf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baf2 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baf2)
  store %struct.Memory* %call_42baf2, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42baf6	 Bytes: 5
  %loadMem1_42baf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42baf6 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42baf6, i64 -173574, i64 5, i64 5)
  store %struct.Memory* %call1_42baf6, %struct.Memory** %MEMORY

  %loadMem2_42baf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42baf6 = load i64, i64* %3
  %call2_42baf6 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42baf6, %struct.Memory* %loadMem2_42baf6)
  store %struct.Memory* %call2_42baf6, %struct.Memory** %MEMORY

  ; Code: movsd 0x28ddd(%rip), %xmm1	 RIP: 42bafb	 Bytes: 8
  %loadMem_42bafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bafb = call %struct.Memory* @routine_movsd_0x28ddd__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bafb)
  store %struct.Memory* %call_42bafb, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42bb03	 Bytes: 4
  %loadMem_42bb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb03 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb03)
  store %struct.Memory* %call_42bb03, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x240(%rbp)	 RIP: 42bb07	 Bytes: 8
  %loadMem_42bb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb07 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb07)
  store %struct.Memory* %call_42bb07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bb29	 RIP: 42bb0f	 Bytes: 5
  %loadMem_42bb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb0f = call %struct.Memory* @routine_jmpq_.L_42bb29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb0f, i64 26, i64 5)
  store %struct.Memory* %call_42bb0f, %struct.Memory** %MEMORY

  br label %block_.L_42bb29

  ; Code: .L_42bb14:	 RIP: 42bb14	 Bytes: 0
block_.L_42bb14:

  ; Code: movsd 0x28dbc(%rip), %xmm0	 RIP: 42bb14	 Bytes: 8
  %loadMem_42bb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb14 = call %struct.Memory* @routine_movsd_0x28dbc__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb14)
  store %struct.Memory* %call_42bb14, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x240(%rbp)	 RIP: 42bb1c	 Bytes: 8
  %loadMem_42bb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb1c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb1c)
  store %struct.Memory* %call_42bb1c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bb29	 RIP: 42bb24	 Bytes: 5
  %loadMem_42bb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb24 = call %struct.Memory* @routine_jmpq_.L_42bb29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb24, i64 5, i64 5)
  store %struct.Memory* %call_42bb24, %struct.Memory** %MEMORY

  br label %block_.L_42bb29

  ; Code: .L_42bb29:	 RIP: 42bb29	 Bytes: 0
block_.L_42bb29:

  ; Code: movsd -0x240(%rbp), %xmm0	 RIP: 42bb29	 Bytes: 8
  %loadMem_42bb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb29 = call %struct.Memory* @routine_movsd_MINUS0x240__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb29)
  store %struct.Memory* %call_42bb29, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42bb31	 Bytes: 3
  %loadMem_42bb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb31 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb31)
  store %struct.Memory* %call_42bb31, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42bb34	 Bytes: 4
  %loadMem_42bb34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb34 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb34)
  store %struct.Memory* %call_42bb34, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x94(%rbp)	 RIP: 42bb38	 Bytes: 8
  %loadMem_42bb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb38 = call %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb38)
  store %struct.Memory* %call_42bb38, %struct.Memory** %MEMORY

  ; Code: movss -0x90(%rbp), %xmm0	 RIP: 42bb40	 Bytes: 8
  %loadMem_42bb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb40 = call %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb40)
  store %struct.Memory* %call_42bb40, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42bb48	 Bytes: 5
  %loadMem_42bb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb48 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb48)
  store %struct.Memory* %call_42bb48, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42bb4d	 Bytes: 3
  %loadMem_42bb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb4d = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb4d)
  store %struct.Memory* %call_42bb4d, %struct.Memory** %MEMORY

  ; Code: jbe .L_42bb85	 RIP: 42bb50	 Bytes: 6
  %loadMem_42bb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb50 = call %struct.Memory* @routine_jbe_.L_42bb85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb50, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42bb50, %struct.Memory** %MEMORY

  %loadBr_42bb50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bb50 = icmp eq i8 %loadBr_42bb50, 1
  br i1 %cmpBr_42bb50, label %block_.L_42bb85, label %block_42bb56

block_42bb56:
  ; Code: movss -0x90(%rbp), %xmm0	 RIP: 42bb56	 Bytes: 8
  %loadMem_42bb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb56 = call %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb56)
  store %struct.Memory* %call_42bb56, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42bb5e	 Bytes: 5
  %loadMem_42bb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb5e = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb5e)
  store %struct.Memory* %call_42bb5e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42bb63	 Bytes: 4
  %loadMem_42bb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb63 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb63)
  store %struct.Memory* %call_42bb63, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42bb67	 Bytes: 5
  %loadMem1_42bb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bb67 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bb67, i64 -173687, i64 5, i64 5)
  store %struct.Memory* %call1_42bb67, %struct.Memory** %MEMORY

  %loadMem2_42bb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bb67 = load i64, i64* %3
  %call2_42bb67 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42bb67, %struct.Memory* %loadMem2_42bb67)
  store %struct.Memory* %call2_42bb67, %struct.Memory** %MEMORY

  ; Code: movsd 0x28d6c(%rip), %xmm1	 RIP: 42bb6c	 Bytes: 8
  %loadMem_42bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb6c = call %struct.Memory* @routine_movsd_0x28d6c__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb6c)
  store %struct.Memory* %call_42bb6c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42bb74	 Bytes: 4
  %loadMem_42bb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb74 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb74)
  store %struct.Memory* %call_42bb74, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x248(%rbp)	 RIP: 42bb78	 Bytes: 8
  %loadMem_42bb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb78 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb78)
  store %struct.Memory* %call_42bb78, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bb9a	 RIP: 42bb80	 Bytes: 5
  %loadMem_42bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb80 = call %struct.Memory* @routine_jmpq_.L_42bb9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb80, i64 26, i64 5)
  store %struct.Memory* %call_42bb80, %struct.Memory** %MEMORY

  br label %block_.L_42bb9a

  ; Code: .L_42bb85:	 RIP: 42bb85	 Bytes: 0
block_.L_42bb85:

  ; Code: movsd 0x28d4b(%rip), %xmm0	 RIP: 42bb85	 Bytes: 8
  %loadMem_42bb85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb85 = call %struct.Memory* @routine_movsd_0x28d4b__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb85)
  store %struct.Memory* %call_42bb85, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x248(%rbp)	 RIP: 42bb8d	 Bytes: 8
  %loadMem_42bb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb8d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb8d)
  store %struct.Memory* %call_42bb8d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bb9a	 RIP: 42bb95	 Bytes: 5
  %loadMem_42bb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb95 = call %struct.Memory* @routine_jmpq_.L_42bb9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb95, i64 5, i64 5)
  store %struct.Memory* %call_42bb95, %struct.Memory** %MEMORY

  br label %block_.L_42bb9a

  ; Code: .L_42bb9a:	 RIP: 42bb9a	 Bytes: 0
block_.L_42bb9a:

  ; Code: movsd -0x248(%rbp), %xmm0	 RIP: 42bb9a	 Bytes: 8
  %loadMem_42bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb9a = call %struct.Memory* @routine_movsd_MINUS0x248__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb9a)
  store %struct.Memory* %call_42bb9a, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42bba2	 Bytes: 3
  %loadMem_42bba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bba2 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bba2)
  store %struct.Memory* %call_42bba2, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42bba5	 Bytes: 4
  %loadMem_42bba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bba5 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bba5)
  store %struct.Memory* %call_42bba5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x90(%rbp)	 RIP: 42bba9	 Bytes: 8
  %loadMem_42bba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bba9 = call %struct.Memory* @routine_movss__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bba9)
  store %struct.Memory* %call_42bba9, %struct.Memory** %MEMORY

  ; Code: movss -0x8c(%rbp), %xmm0	 RIP: 42bbb1	 Bytes: 8
  %loadMem_42bbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbb1 = call %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbb1)
  store %struct.Memory* %call_42bbb1, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42bbb9	 Bytes: 5
  %loadMem_42bbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbb9 = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbb9)
  store %struct.Memory* %call_42bbb9, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42bbbe	 Bytes: 3
  %loadMem_42bbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbbe = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbbe)
  store %struct.Memory* %call_42bbbe, %struct.Memory** %MEMORY

  ; Code: jbe .L_42bbf6	 RIP: 42bbc1	 Bytes: 6
  %loadMem_42bbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbc1 = call %struct.Memory* @routine_jbe_.L_42bbf6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbc1, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42bbc1, %struct.Memory** %MEMORY

  %loadBr_42bbc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bbc1 = icmp eq i8 %loadBr_42bbc1, 1
  br i1 %cmpBr_42bbc1, label %block_.L_42bbf6, label %block_42bbc7

block_42bbc7:
  ; Code: movss -0x8c(%rbp), %xmm0	 RIP: 42bbc7	 Bytes: 8
  %loadMem_42bbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbc7 = call %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbc7)
  store %struct.Memory* %call_42bbc7, %struct.Memory** %MEMORY

  ; Code: divss -0x2c(%rbp), %xmm0	 RIP: 42bbcf	 Bytes: 5
  %loadMem_42bbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbcf = call %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbcf)
  store %struct.Memory* %call_42bbcf, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42bbd4	 Bytes: 4
  %loadMem_42bbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbd4 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbd4)
  store %struct.Memory* %call_42bbd4, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42bbd8	 Bytes: 5
  %loadMem1_42bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bbd8 = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bbd8, i64 -173800, i64 5, i64 5)
  store %struct.Memory* %call1_42bbd8, %struct.Memory** %MEMORY

  %loadMem2_42bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bbd8 = load i64, i64* %3
  %call2_42bbd8 = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42bbd8, %struct.Memory* %loadMem2_42bbd8)
  store %struct.Memory* %call2_42bbd8, %struct.Memory** %MEMORY

  ; Code: movsd 0x28cfb(%rip), %xmm1	 RIP: 42bbdd	 Bytes: 8
  %loadMem_42bbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbdd = call %struct.Memory* @routine_movsd_0x28cfb__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbdd)
  store %struct.Memory* %call_42bbdd, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42bbe5	 Bytes: 4
  %loadMem_42bbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbe5 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbe5)
  store %struct.Memory* %call_42bbe5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x250(%rbp)	 RIP: 42bbe9	 Bytes: 8
  %loadMem_42bbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbe9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbe9)
  store %struct.Memory* %call_42bbe9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bc0b	 RIP: 42bbf1	 Bytes: 5
  %loadMem_42bbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbf1 = call %struct.Memory* @routine_jmpq_.L_42bc0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbf1, i64 26, i64 5)
  store %struct.Memory* %call_42bbf1, %struct.Memory** %MEMORY

  br label %block_.L_42bc0b

  ; Code: .L_42bbf6:	 RIP: 42bbf6	 Bytes: 0
block_.L_42bbf6:

  ; Code: movsd 0x28cda(%rip), %xmm0	 RIP: 42bbf6	 Bytes: 8
  %loadMem_42bbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbf6 = call %struct.Memory* @routine_movsd_0x28cda__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbf6)
  store %struct.Memory* %call_42bbf6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x250(%rbp)	 RIP: 42bbfe	 Bytes: 8
  %loadMem_42bbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbfe = call %struct.Memory* @routine_movsd__xmm0__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbfe)
  store %struct.Memory* %call_42bbfe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bc0b	 RIP: 42bc06	 Bytes: 5
  %loadMem_42bc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc06 = call %struct.Memory* @routine_jmpq_.L_42bc0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc06, i64 5, i64 5)
  store %struct.Memory* %call_42bc06, %struct.Memory** %MEMORY

  br label %block_.L_42bc0b

  ; Code: .L_42bc0b:	 RIP: 42bc0b	 Bytes: 0
block_.L_42bc0b:

  ; Code: movsd -0x250(%rbp), %xmm0	 RIP: 42bc0b	 Bytes: 8
  %loadMem_42bc0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc0b = call %struct.Memory* @routine_movsd_MINUS0x250__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc0b)
  store %struct.Memory* %call_42bc0b, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 42bc13	 Bytes: 3
  %loadMem_42bc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc13 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc13)
  store %struct.Memory* %call_42bc13, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42bc16	 Bytes: 4
  %loadMem_42bc16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc16 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc16)
  store %struct.Memory* %call_42bc16, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x8c(%rbp)	 RIP: 42bc1a	 Bytes: 8
  %loadMem_42bc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc1a = call %struct.Memory* @routine_movss__xmm0__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc1a)
  store %struct.Memory* %call_42bc1a, %struct.Memory** %MEMORY

  ; Code: movss -0x88(%rbp), %xmm0	 RIP: 42bc22	 Bytes: 8
  %loadMem_42bc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc22 = call %struct.Memory* @routine_movss_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc22)
  store %struct.Memory* %call_42bc22, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm0	 RIP: 42bc2a	 Bytes: 3
  %loadMem_42bc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc2a = call %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc2a)
  store %struct.Memory* %call_42bc2a, %struct.Memory** %MEMORY

  ; Code: jbe .L_42bc59	 RIP: 42bc2d	 Bytes: 6
  %loadMem_42bc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc2d = call %struct.Memory* @routine_jbe_.L_42bc59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc2d, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_42bc2d, %struct.Memory** %MEMORY

  %loadBr_42bc2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bc2d = icmp eq i8 %loadBr_42bc2d, 1
  br i1 %cmpBr_42bc2d, label %block_.L_42bc59, label %block_42bc33

block_42bc33:
  ; Code: cvtss2sd -0x88(%rbp), %xmm0	 RIP: 42bc33	 Bytes: 8
  %loadMem_42bc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc33 = call %struct.Memory* @routine_cvtss2sd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc33)
  store %struct.Memory* %call_42bc33, %struct.Memory** %MEMORY

  ; Code: callq .log_plt	 RIP: 42bc3b	 Bytes: 5
  %loadMem1_42bc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bc3b = call %struct.Memory* @routine_callq_.log_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bc3b, i64 -173899, i64 5, i64 5)
  store %struct.Memory* %call1_42bc3b, %struct.Memory** %MEMORY

  %loadMem2_42bc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bc3b = load i64, i64* %3
  %call2_42bc3b = call %struct.Memory* @ext_log(%struct.State* %0, i64  %loadPC_42bc3b, %struct.Memory* %loadMem2_42bc3b)
  store %struct.Memory* %call2_42bc3b, %struct.Memory** %MEMORY

  ; Code: movsd 0x28c98(%rip), %xmm1	 RIP: 42bc40	 Bytes: 8
  %loadMem_42bc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc40 = call %struct.Memory* @routine_movsd_0x28c98__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc40)
  store %struct.Memory* %call_42bc40, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42bc48	 Bytes: 4
  %loadMem_42bc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc48 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc48)
  store %struct.Memory* %call_42bc48, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x258(%rbp)	 RIP: 42bc4c	 Bytes: 8
  %loadMem_42bc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc4c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc4c)
  store %struct.Memory* %call_42bc4c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bc6e	 RIP: 42bc54	 Bytes: 5
  %loadMem_42bc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc54 = call %struct.Memory* @routine_jmpq_.L_42bc6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc54, i64 26, i64 5)
  store %struct.Memory* %call_42bc54, %struct.Memory** %MEMORY

  br label %block_.L_42bc6e

  ; Code: .L_42bc59:	 RIP: 42bc59	 Bytes: 0
block_.L_42bc59:

  ; Code: movsd 0x28c77(%rip), %xmm0	 RIP: 42bc59	 Bytes: 8
  %loadMem_42bc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc59 = call %struct.Memory* @routine_movsd_0x28c77__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc59)
  store %struct.Memory* %call_42bc59, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x258(%rbp)	 RIP: 42bc61	 Bytes: 8
  %loadMem_42bc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc61 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc61)
  store %struct.Memory* %call_42bc61, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bc6e	 RIP: 42bc69	 Bytes: 5
  %loadMem_42bc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc69 = call %struct.Memory* @routine_jmpq_.L_42bc6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc69, i64 5, i64 5)
  store %struct.Memory* %call_42bc69, %struct.Memory** %MEMORY

  br label %block_.L_42bc6e

  ; Code: .L_42bc6e:	 RIP: 42bc6e	 Bytes: 0
block_.L_42bc6e:

  ; Code: movsd -0x258(%rbp), %xmm0	 RIP: 42bc6e	 Bytes: 8
  %loadMem_42bc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc6e = call %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc6e)
  store %struct.Memory* %call_42bc6e, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %edx	 RIP: 42bc76	 Bytes: 5
  %loadMem_42bc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc76 = call %struct.Memory* @routine_movl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc76)
  store %struct.Memory* %call_42bc76, %struct.Memory** %MEMORY

  ; Code: leaq -0x80(%rbp), %rsi	 RIP: 42bc7b	 Bytes: 4
  %loadMem_42bc7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc7b = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc7b)
  store %struct.Memory* %call_42bc7b, %struct.Memory** %MEMORY

  ; Code: leaq -0xa0(%rbp), %rdi	 RIP: 42bc7f	 Bytes: 7
  %loadMem_42bc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc7f = call %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc7f)
  store %struct.Memory* %call_42bc7f, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42bc86	 Bytes: 4
  %loadMem_42bc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc86 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc86)
  store %struct.Memory* %call_42bc86, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x88(%rbp)	 RIP: 42bc8a	 Bytes: 8
  %loadMem_42bc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc8a = call %struct.Memory* @routine_movss__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc8a)
  store %struct.Memory* %call_42bc8a, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42bc92	 Bytes: 7
  %loadMem_42bc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc92 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc92)
  store %struct.Memory* %call_42bc92, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 42bc99	 Bytes: 4
  %loadMem_42bc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc99 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc99)
  store %struct.Memory* %call_42bc99, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42bc9d	 Bytes: 5
  %loadMem_42bc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc9d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc9d)
  store %struct.Memory* %call_42bc9d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x25c(%rbp)	 RIP: 42bca2	 Bytes: 8
  %loadMem_42bca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bca2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x25c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bca2)
  store %struct.Memory* %call_42bca2, %struct.Memory** %MEMORY

  ; Code: callq .FDot	 RIP: 42bcaa	 Bytes: 5
  %loadMem1_42bcaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bcaa = call %struct.Memory* @routine_callq_.FDot(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bcaa, i64 157206, i64 5, i64 5)
  store %struct.Memory* %call1_42bcaa, %struct.Memory** %MEMORY

  %loadMem2_42bcaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bcaa = load i64, i64* %3
  %call2_42bcaa = call %struct.Memory* @sub_4522c0.FDot(%struct.State* %0, i64  %loadPC_42bcaa, %struct.Memory* %loadMem2_42bcaa)
  store %struct.Memory* %call2_42bcaa, %struct.Memory** %MEMORY

  ; Code: leaq -0x190(%rbp), %rsi	 RIP: 42bcaf	 Bytes: 7
  %loadMem_42bcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcaf = call %struct.Memory* @routine_leaq_MINUS0x190__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcaf)
  store %struct.Memory* %call_42bcaf, %struct.Memory** %MEMORY

  ; Code: leaq -0x140(%rbp), %rdi	 RIP: 42bcb6	 Bytes: 7
  %loadMem_42bcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcb6 = call %struct.Memory* @routine_leaq_MINUS0x140__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcb6)
  store %struct.Memory* %call_42bcb6, %struct.Memory** %MEMORY

  ; Code: movss -0x25c(%rbp), %xmm1	 RIP: 42bcbd	 Bytes: 8
  %loadMem_42bcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcbd = call %struct.Memory* @routine_movss_MINUS0x25c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcbd)
  store %struct.Memory* %call_42bcbd, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 42bcc5	 Bytes: 4
  %loadMem_42bcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcc5 = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcc5)
  store %struct.Memory* %call_42bcc5, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %edx	 RIP: 42bcc9	 Bytes: 7
  %loadMem_42bcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcc9 = call %struct.Memory* @routine_movl_0x677060___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcc9)
  store %struct.Memory* %call_42bcc9, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x260(%rbp)	 RIP: 42bcd0	 Bytes: 8
  %loadMem_42bcd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcd0 = call %struct.Memory* @routine_movss__xmm1__MINUS0x260__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcd0)
  store %struct.Memory* %call_42bcd0, %struct.Memory** %MEMORY

  ; Code: callq .FDot	 RIP: 42bcd8	 Bytes: 5
  %loadMem1_42bcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bcd8 = call %struct.Memory* @routine_callq_.FDot(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bcd8, i64 157160, i64 5, i64 5)
  store %struct.Memory* %call1_42bcd8, %struct.Memory** %MEMORY

  %loadMem2_42bcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bcd8 = load i64, i64* %3
  %call2_42bcd8 = call %struct.Memory* @sub_4522c0.FDot(%struct.State* %0, i64  %loadPC_42bcd8, %struct.Memory* %loadMem2_42bcd8)
  store %struct.Memory* %call2_42bcd8, %struct.Memory** %MEMORY

  ; Code: movss -0x260(%rbp), %xmm1	 RIP: 42bcdd	 Bytes: 8
  %loadMem_42bcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcdd = call %struct.Memory* @routine_movss_MINUS0x260__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcdd)
  store %struct.Memory* %call_42bcdd, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 42bce5	 Bytes: 4
  %loadMem_42bce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bce5 = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bce5)
  store %struct.Memory* %call_42bce5, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x1cc(%rbp)	 RIP: 42bce9	 Bytes: 8
  %loadMem_42bce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bce9 = call %struct.Memory* @routine_movss__xmm1__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bce9)
  store %struct.Memory* %call_42bce9, %struct.Memory** %MEMORY

  ; Code: movss -0x1cc(%rbp), %xmm0	 RIP: 42bcf1	 Bytes: 8
  %loadMem_42bcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcf1 = call %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcf1)
  store %struct.Memory* %call_42bcf1, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42bcf9	 Bytes: 7
  %loadMem_42bcf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcf9 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcf9)
  store %struct.Memory* %call_42bcf9, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42bd00	 Bytes: 4
  %loadMem_42bd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd00 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd00)
  store %struct.Memory* %call_42bd00, %struct.Memory** %MEMORY

  ; Code: ucomiss (%rax,%rcx,4), %xmm0	 RIP: 42bd04	 Bytes: 4
  %loadMem_42bd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd04 = call %struct.Memory* @routine_ucomiss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd04)
  store %struct.Memory* %call_42bd04, %struct.Memory** %MEMORY

  ; Code: jbe .L_42bd37	 RIP: 42bd08	 Bytes: 6
  %loadMem_42bd08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd08 = call %struct.Memory* @routine_jbe_.L_42bd37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd08, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_42bd08, %struct.Memory** %MEMORY

  %loadBr_42bd08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bd08 = icmp eq i8 %loadBr_42bd08, 1
  br i1 %cmpBr_42bd08, label %block_.L_42bd37, label %block_42bd0e

block_42bd0e:
  ; Code: movss -0x1cc(%rbp), %xmm0	 RIP: 42bd0e	 Bytes: 8
  %loadMem_42bd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd0e = call %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd0e)
  store %struct.Memory* %call_42bd0e, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42bd16	 Bytes: 7
  %loadMem_42bd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd16 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd16)
  store %struct.Memory* %call_42bd16, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42bd1d	 Bytes: 4
  %loadMem_42bd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd1d = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd1d)
  store %struct.Memory* %call_42bd1d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 42bd21	 Bytes: 5
  %loadMem_42bd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd21 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd21)
  store %struct.Memory* %call_42bd21, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42bd26	 Bytes: 3
  %loadMem_42bd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd26 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd26)
  store %struct.Memory* %call_42bd26, %struct.Memory** %MEMORY

  ; Code: movq -0x1a0(%rbp), %rax	 RIP: 42bd29	 Bytes: 7
  %loadMem_42bd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd29 = call %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd29)
  store %struct.Memory* %call_42bd29, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42bd30	 Bytes: 4
  %loadMem_42bd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd30 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd30)
  store %struct.Memory* %call_42bd30, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42bd34	 Bytes: 3
  %loadMem_42bd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd34 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd34)
  store %struct.Memory* %call_42bd34, %struct.Memory** %MEMORY

  ; Code: .L_42bd37:	 RIP: 42bd37	 Bytes: 0
  br label %block_.L_42bd37
block_.L_42bd37:

  ; Code: jmpq .L_42bd3c	 RIP: 42bd37	 Bytes: 5
  %loadMem_42bd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd37 = call %struct.Memory* @routine_jmpq_.L_42bd3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd37, i64 5, i64 5)
  store %struct.Memory* %call_42bd37, %struct.Memory** %MEMORY

  br label %block_.L_42bd3c

  ; Code: .L_42bd3c:	 RIP: 42bd3c	 Bytes: 0
block_.L_42bd3c:

  ; Code: leaq -0x190(%rbp), %rdi	 RIP: 42bd3c	 Bytes: 7
  %loadMem_42bd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd3c = call %struct.Memory* @routine_leaq_MINUS0x190__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd3c)
  store %struct.Memory* %call_42bd3c, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 42bd43	 Bytes: 4
  %loadMem_42bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd43 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd43)
  store %struct.Memory* %call_42bd43, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 42bd47	 Bytes: 4
  %loadMem_42bd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd47 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd47)
  store %struct.Memory* %call_42bd47, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 42bd4b	 Bytes: 4
  %loadMem_42bd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd4b = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd4b)
  store %struct.Memory* %call_42bd4b, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %edx	 RIP: 42bd4f	 Bytes: 7
  %loadMem_42bd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd4f = call %struct.Memory* @routine_movl_0x677060___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd4f)
  store %struct.Memory* %call_42bd4f, %struct.Memory** %MEMORY

  ; Code: callq .FAdd	 RIP: 42bd56	 Bytes: 5
  %loadMem1_42bd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42bd56 = call %struct.Memory* @routine_callq_.FAdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42bd56, i64 156666, i64 5, i64 5)
  store %struct.Memory* %call1_42bd56, %struct.Memory** %MEMORY

  %loadMem2_42bd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42bd56 = load i64, i64* %3
  %call2_42bd56 = call %struct.Memory* @sub_452150.FAdd(%struct.State* %0, i64  %loadPC_42bd56, %struct.Memory* %loadMem2_42bd56)
  store %struct.Memory* %call2_42bd56, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42bd5b	 Bytes: 7
  %loadMem_42bd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd5b = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd5b)
  store %struct.Memory* %call_42bd5b, %struct.Memory** %MEMORY

  ; Code: .L_42bd62:	 RIP: 42bd62	 Bytes: 0
  br label %block_.L_42bd62
block_.L_42bd62:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42bd62	 Bytes: 3
  %loadMem_42bd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd62 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd62)
  store %struct.Memory* %call_42bd62, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42bd65	 Bytes: 4
  %loadMem_42bd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd65 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd65)
  store %struct.Memory* %call_42bd65, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42bd69	 Bytes: 3
  %loadMem_42bd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd69 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd69)
  store %struct.Memory* %call_42bd69, %struct.Memory** %MEMORY

  ; Code: jge .L_42be52	 RIP: 42bd6c	 Bytes: 6
  %loadMem_42bd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd6c = call %struct.Memory* @routine_jge_.L_42be52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd6c, i8* %BRANCH_TAKEN, i64 230, i64 6, i64 6)
  store %struct.Memory* %call_42bd6c, %struct.Memory** %MEMORY

  %loadBr_42bd6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bd6c = icmp eq i8 %loadBr_42bd6c, 1
  br i1 %cmpBr_42bd6c, label %block_.L_42be52, label %block_42bd72

block_42bd72:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bd72	 Bytes: 4
  %loadMem_42bd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd72 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd72)
  store %struct.Memory* %call_42bd72, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bd76	 Bytes: 3
  %loadMem_42bd76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd76 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd76)
  store %struct.Memory* %call_42bd76, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bd79	 Bytes: 4
  %loadMem_42bd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd79 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd79)
  store %struct.Memory* %call_42bd79, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bd7d	 Bytes: 4
  %loadMem_42bd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd7d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd7d)
  store %struct.Memory* %call_42bd7d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42bd81	 Bytes: 3
  %loadMem_42bd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd81 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd81)
  store %struct.Memory* %call_42bd81, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bd84	 Bytes: 3
  %loadMem_42bd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd84 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd84)
  store %struct.Memory* %call_42bd84, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bd87	 Bytes: 3
  %loadMem_42bd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd87 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd87)
  store %struct.Memory* %call_42bd87, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bd8a	 Bytes: 4
  %loadMem_42bd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd8a = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd8a)
  store %struct.Memory* %call_42bd8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42bd8e	 Bytes: 3
  %loadMem_42bd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd8e = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd8e)
  store %struct.Memory* %call_42bd8e, %struct.Memory** %MEMORY

  ; Code: je .L_42be3f	 RIP: 42bd91	 Bytes: 6
  %loadMem_42bd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd91 = call %struct.Memory* @routine_je_.L_42be3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd91, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_42bd91, %struct.Memory** %MEMORY

  %loadBr_42bd91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bd91 = icmp eq i8 %loadBr_42bd91, 1
  br i1 %cmpBr_42bd91, label %block_.L_42be3f, label %block_42bd97

block_42bd97:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bd97	 Bytes: 4
  %loadMem_42bd97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd97 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd97)
  store %struct.Memory* %call_42bd97, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bd9b	 Bytes: 3
  %loadMem_42bd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd9b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd9b)
  store %struct.Memory* %call_42bd9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bd9e	 Bytes: 4
  %loadMem_42bd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd9e = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd9e)
  store %struct.Memory* %call_42bd9e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bda2	 Bytes: 4
  %loadMem_42bda2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bda2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bda2)
  store %struct.Memory* %call_42bda2, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42bda6	 Bytes: 3
  %loadMem_42bda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bda6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bda6)
  store %struct.Memory* %call_42bda6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bda9	 Bytes: 3
  %loadMem_42bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bda9 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bda9)
  store %struct.Memory* %call_42bda9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bdac	 Bytes: 3
  %loadMem_42bdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdac = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdac)
  store %struct.Memory* %call_42bdac, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bdaf	 Bytes: 4
  %loadMem_42bdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdaf = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdaf)
  store %struct.Memory* %call_42bdaf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42bdb3	 Bytes: 3
  %loadMem_42bdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdb3 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdb3)
  store %struct.Memory* %call_42bdb3, %struct.Memory** %MEMORY

  ; Code: je .L_42be3f	 RIP: 42bdb6	 Bytes: 6
  %loadMem_42bdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdb6 = call %struct.Memory* @routine_je_.L_42be3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdb6, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_42bdb6, %struct.Memory** %MEMORY

  %loadBr_42bdb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bdb6 = icmp eq i8 %loadBr_42bdb6, 1
  br i1 %cmpBr_42bdb6, label %block_.L_42be3f, label %block_42bdbc

block_42bdbc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bdbc	 Bytes: 4
  %loadMem_42bdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdbc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdbc)
  store %struct.Memory* %call_42bdbc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bdc0	 Bytes: 3
  %loadMem_42bdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdc0 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdc0)
  store %struct.Memory* %call_42bdc0, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bdc3	 Bytes: 4
  %loadMem_42bdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdc3 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdc3)
  store %struct.Memory* %call_42bdc3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bdc7	 Bytes: 4
  %loadMem_42bdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdc7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdc7)
  store %struct.Memory* %call_42bdc7, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42bdcb	 Bytes: 3
  %loadMem_42bdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdcb = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdcb)
  store %struct.Memory* %call_42bdcb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bdce	 Bytes: 3
  %loadMem_42bdce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdce = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdce)
  store %struct.Memory* %call_42bdce, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bdd1	 Bytes: 3
  %loadMem_42bdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdd1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdd1)
  store %struct.Memory* %call_42bdd1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bdd4	 Bytes: 4
  %loadMem_42bdd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdd4 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdd4)
  store %struct.Memory* %call_42bdd4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42bdd8	 Bytes: 3
  %loadMem_42bdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdd8 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdd8)
  store %struct.Memory* %call_42bdd8, %struct.Memory** %MEMORY

  ; Code: je .L_42be3f	 RIP: 42bddb	 Bytes: 6
  %loadMem_42bddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bddb = call %struct.Memory* @routine_je_.L_42be3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bddb, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_42bddb, %struct.Memory** %MEMORY

  %loadBr_42bddb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bddb = icmp eq i8 %loadBr_42bddb, 1
  br i1 %cmpBr_42bddb, label %block_.L_42be3f, label %block_42bde1

block_42bde1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bde1	 Bytes: 4
  %loadMem_42bde1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bde1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bde1)
  store %struct.Memory* %call_42bde1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bde5	 Bytes: 3
  %loadMem_42bde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bde5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bde5)
  store %struct.Memory* %call_42bde5, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bde8	 Bytes: 4
  %loadMem_42bde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bde8 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bde8)
  store %struct.Memory* %call_42bde8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bdec	 Bytes: 4
  %loadMem_42bdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdec = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdec)
  store %struct.Memory* %call_42bdec, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42bdf0	 Bytes: 3
  %loadMem_42bdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdf0 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdf0)
  store %struct.Memory* %call_42bdf0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bdf3	 Bytes: 3
  %loadMem_42bdf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdf3 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdf3)
  store %struct.Memory* %call_42bdf3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bdf6	 Bytes: 3
  %loadMem_42bdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdf6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdf6)
  store %struct.Memory* %call_42bdf6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bdf9	 Bytes: 4
  %loadMem_42bdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdf9 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdf9)
  store %struct.Memory* %call_42bdf9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42bdfd	 Bytes: 3
  %loadMem_42bdfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdfd = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdfd)
  store %struct.Memory* %call_42bdfd, %struct.Memory** %MEMORY

  ; Code: je .L_42be3f	 RIP: 42be00	 Bytes: 6
  %loadMem_42be00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be00 = call %struct.Memory* @routine_je_.L_42be3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be00, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_42be00, %struct.Memory** %MEMORY

  %loadBr_42be00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42be00 = icmp eq i8 %loadBr_42be00, 1
  br i1 %cmpBr_42be00, label %block_.L_42be3f, label %block_42be06

block_42be06:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42be06	 Bytes: 4
  %loadMem_42be06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be06 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be06)
  store %struct.Memory* %call_42be06, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42be0a	 Bytes: 3
  %loadMem_42be0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be0a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be0a)
  store %struct.Memory* %call_42be0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42be0d	 Bytes: 4
  %loadMem_42be0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be0d = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be0d)
  store %struct.Memory* %call_42be0d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42be11	 Bytes: 4
  %loadMem_42be11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be11 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be11)
  store %struct.Memory* %call_42be11, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 42be15	 Bytes: 3
  %loadMem_42be15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be15 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be15)
  store %struct.Memory* %call_42be15, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42be18	 Bytes: 3
  %loadMem_42be18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be18 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be18)
  store %struct.Memory* %call_42be18, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42be1b	 Bytes: 3
  %loadMem_42be1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be1b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be1b)
  store %struct.Memory* %call_42be1b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42be1e	 Bytes: 4
  %loadMem_42be1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be1e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be1e)
  store %struct.Memory* %call_42be1e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42be22	 Bytes: 3
  %loadMem_42be22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be22 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be22)
  store %struct.Memory* %call_42be22, %struct.Memory** %MEMORY

  ; Code: je .L_42be3f	 RIP: 42be25	 Bytes: 6
  %loadMem_42be25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be25 = call %struct.Memory* @routine_je_.L_42be3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be25, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_42be25, %struct.Memory** %MEMORY

  %loadBr_42be25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42be25 = icmp eq i8 %loadBr_42be25, 1
  br i1 %cmpBr_42be25, label %block_.L_42be3f, label %block_42be2b

block_42be2b:
  ; Code: movq -0x1b0(%rbp), %rax	 RIP: 42be2b	 Bytes: 7
  %loadMem_42be2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be2b = call %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be2b)
  store %struct.Memory* %call_42be2b, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42be32	 Bytes: 4
  %loadMem_42be32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be32 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be32)
  store %struct.Memory* %call_42be32, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42be36	 Bytes: 3
  %loadMem_42be36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be36 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be36)
  store %struct.Memory* %call_42be36, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42be39	 Bytes: 3
  %loadMem_42be39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be39 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be39)
  store %struct.Memory* %call_42be39, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42be3c	 Bytes: 3
  %loadMem_42be3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be3c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be3c)
  store %struct.Memory* %call_42be3c, %struct.Memory** %MEMORY

  ; Code: .L_42be3f:	 RIP: 42be3f	 Bytes: 0
  br label %block_.L_42be3f
block_.L_42be3f:

  ; Code: jmpq .L_42be44	 RIP: 42be3f	 Bytes: 5
  %loadMem_42be3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be3f = call %struct.Memory* @routine_jmpq_.L_42be44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be3f, i64 5, i64 5)
  store %struct.Memory* %call_42be3f, %struct.Memory** %MEMORY

  br label %block_.L_42be44

  ; Code: .L_42be44:	 RIP: 42be44	 Bytes: 0
block_.L_42be44:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42be44	 Bytes: 3
  %loadMem_42be44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be44 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be44)
  store %struct.Memory* %call_42be44, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42be47	 Bytes: 3
  %loadMem_42be47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be47 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be47)
  store %struct.Memory* %call_42be47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42be4a	 Bytes: 3
  %loadMem_42be4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be4a = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be4a)
  store %struct.Memory* %call_42be4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bd62	 RIP: 42be4d	 Bytes: 5
  %loadMem_42be4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be4d = call %struct.Memory* @routine_jmpq_.L_42bd62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be4d, i64 -235, i64 5)
  store %struct.Memory* %call_42be4d, %struct.Memory** %MEMORY

  br label %block_.L_42bd62

  ; Code: .L_42be52:	 RIP: 42be52	 Bytes: 0
block_.L_42be52:

  ; Code: jmpq .L_42be57	 RIP: 42be52	 Bytes: 5
  %loadMem_42be52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be52 = call %struct.Memory* @routine_jmpq_.L_42be57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be52, i64 5, i64 5)
  store %struct.Memory* %call_42be52, %struct.Memory** %MEMORY

  br label %block_.L_42be57

  ; Code: .L_42be57:	 RIP: 42be57	 Bytes: 0
block_.L_42be57:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 42be57	 Bytes: 3
  %loadMem_42be57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be57 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be57)
  store %struct.Memory* %call_42be57, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42be5a	 Bytes: 3
  %loadMem_42be5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be5a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be5a)
  store %struct.Memory* %call_42be5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 42be5d	 Bytes: 3
  %loadMem_42be5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be5d = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be5d)
  store %struct.Memory* %call_42be5d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b8e1	 RIP: 42be60	 Bytes: 5
  %loadMem_42be60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be60 = call %struct.Memory* @routine_jmpq_.L_42b8e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be60, i64 -1407, i64 5)
  store %struct.Memory* %call_42be60, %struct.Memory** %MEMORY

  br label %block_.L_42b8e1

  ; Code: .L_42be65:	 RIP: 42be65	 Bytes: 0
block_.L_42be65:

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 42be65	 Bytes: 7
  %loadMem_42be65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be65 = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be65)
  store %struct.Memory* %call_42be65, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 42be6c	 Bytes: 4
  %loadMem_42be6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be6c = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be6c)
  store %struct.Memory* %call_42be6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42be70	 Bytes: 4
  %loadMem_42be70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be70 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be70)
  store %struct.Memory* %call_42be70, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 42be74	 Bytes: 4
  %loadMem_42be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be74 = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be74)
  store %struct.Memory* %call_42be74, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %edx	 RIP: 42be78	 Bytes: 7
  %loadMem_42be78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be78 = call %struct.Memory* @routine_movl_0x677060___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be78)
  store %struct.Memory* %call_42be78, %struct.Memory** %MEMORY

  ; Code: callq .FDot	 RIP: 42be7f	 Bytes: 5
  %loadMem1_42be7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42be7f = call %struct.Memory* @routine_callq_.FDot(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42be7f, i64 156737, i64 5, i64 5)
  store %struct.Memory* %call1_42be7f, %struct.Memory** %MEMORY

  %loadMem2_42be7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42be7f = load i64, i64* %3
  %call2_42be7f = call %struct.Memory* @sub_4522c0.FDot(%struct.State* %0, i64  %loadPC_42be7f, %struct.Memory* %loadMem2_42be7f)
  store %struct.Memory* %call2_42be7f, %struct.Memory** %MEMORY

  ; Code: movss -0x30(%rbp), %xmm1	 RIP: 42be84	 Bytes: 5
  %loadMem_42be84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be84 = call %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be84)
  store %struct.Memory* %call_42be84, %struct.Memory** %MEMORY

  ; Code: mulss -0x1dc(%rbp), %xmm1	 RIP: 42be89	 Bytes: 8
  %loadMem_42be89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be89 = call %struct.Memory* @routine_mulss_MINUS0x1dc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be89)
  store %struct.Memory* %call_42be89, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 42be91	 Bytes: 4
  %loadMem_42be91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be91 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be91)
  store %struct.Memory* %call_42be91, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42be95	 Bytes: 7
  %loadMem_42be95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be95 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be95)
  store %struct.Memory* %call_42be95, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42be9c	 Bytes: 4
  %loadMem_42be9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42be9c = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42be9c)
  store %struct.Memory* %call_42be9c, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm0	 RIP: 42bea0	 Bytes: 5
  %loadMem_42bea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bea0 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bea0)
  store %struct.Memory* %call_42bea0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 42bea5	 Bytes: 5
  %loadMem_42bea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bea5 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bea5)
  store %struct.Memory* %call_42bea5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42beaa	 Bytes: 3
  %loadMem_42beaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42beaa = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42beaa)
  store %struct.Memory* %call_42beaa, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 42bead	 Bytes: 3
  %loadMem_42bead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bead = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bead)
  store %struct.Memory* %call_42bead, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42beb0	 Bytes: 3
  %loadMem_42beb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42beb0 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42beb0)
  store %struct.Memory* %call_42beb0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b750	 RIP: 42beb3	 Bytes: 5
  %loadMem_42beb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42beb3 = call %struct.Memory* @routine_jmpq_.L_42b750(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42beb3, i64 -1891, i64 5)
  store %struct.Memory* %call_42beb3, %struct.Memory** %MEMORY

  br label %block_.L_42b750

  ; Code: .L_42beb8:	 RIP: 42beb8	 Bytes: 0
block_.L_42beb8:

  ; Code: movss 0x288a4(%rip), %xmm0	 RIP: 42beb8	 Bytes: 8
  %loadMem_42beb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42beb8 = call %struct.Memory* @routine_movss_0x288a4__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42beb8)
  store %struct.Memory* %call_42beb8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1d0(%rbp)	 RIP: 42bec0	 Bytes: 8
  %loadMem_42bec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bec0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bec0)
  store %struct.Memory* %call_42bec0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1b4(%rbp)	 RIP: 42bec8	 Bytes: 10
  %loadMem_42bec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bec8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bec8)
  store %struct.Memory* %call_42bec8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 42bed2	 Bytes: 7
  %loadMem_42bed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bed2 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bed2)
  store %struct.Memory* %call_42bed2, %struct.Memory** %MEMORY

  ; Code: .L_42bed9:	 RIP: 42bed9	 Bytes: 0
  br label %block_.L_42bed9
block_.L_42bed9:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42bed9	 Bytes: 3
  %loadMem_42bed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bed9 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bed9)
  store %struct.Memory* %call_42bed9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1b8(%rbp), %eax	 RIP: 42bedc	 Bytes: 6
  %loadMem_42bedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bedc = call %struct.Memory* @routine_cmpl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bedc)
  store %struct.Memory* %call_42bedc, %struct.Memory** %MEMORY

  ; Code: jg .L_42c059	 RIP: 42bee2	 Bytes: 6
  %loadMem_42bee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bee2 = call %struct.Memory* @routine_jg_.L_42c059(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bee2, i8* %BRANCH_TAKEN, i64 375, i64 6, i64 6)
  store %struct.Memory* %call_42bee2, %struct.Memory** %MEMORY

  %loadBr_42bee2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bee2 = icmp eq i8 %loadBr_42bee2, 1
  br i1 %cmpBr_42bee2, label %block_.L_42c059, label %block_42bee8

block_42bee8:
  ; Code: movq -0x198(%rbp), %rax	 RIP: 42bee8	 Bytes: 7
  %loadMem_42bee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bee8 = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bee8)
  store %struct.Memory* %call_42bee8, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42beef	 Bytes: 4
  %loadMem_42beef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42beef = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42beef)
  store %struct.Memory* %call_42beef, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 42bef3	 Bytes: 5
  %loadMem_42bef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bef3 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bef3)
  store %struct.Memory* %call_42bef3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1cc(%rbp)	 RIP: 42bef8	 Bytes: 8
  %loadMem_42bef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bef8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bef8)
  store %struct.Memory* %call_42bef8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 42bf00	 Bytes: 7
  %loadMem_42bf00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf00 = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf00)
  store %struct.Memory* %call_42bf00, %struct.Memory** %MEMORY

  ; Code: .L_42bf07:	 RIP: 42bf07	 Bytes: 0
  br label %block_.L_42bf07
block_.L_42bf07:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42bf07	 Bytes: 3
  %loadMem_42bf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf07 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf07)
  store %struct.Memory* %call_42bf07, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42bf0a	 Bytes: 4
  %loadMem_42bf0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf0a)
  store %struct.Memory* %call_42bf0a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 42bf0e	 Bytes: 3
  %loadMem_42bf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf0e = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf0e)
  store %struct.Memory* %call_42bf0e, %struct.Memory** %MEMORY

  ; Code: jge .L_42c018	 RIP: 42bf11	 Bytes: 6
  %loadMem_42bf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf11 = call %struct.Memory* @routine_jge_.L_42c018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf11, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_42bf11, %struct.Memory** %MEMORY

  %loadBr_42bf11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bf11 = icmp eq i8 %loadBr_42bf11, 1
  br i1 %cmpBr_42bf11, label %block_.L_42c018, label %block_42bf17

block_42bf17:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bf17	 Bytes: 4
  %loadMem_42bf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf17 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf17)
  store %struct.Memory* %call_42bf17, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bf1b	 Bytes: 3
  %loadMem_42bf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf1b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf1b)
  store %struct.Memory* %call_42bf1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bf1e	 Bytes: 4
  %loadMem_42bf1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf1e = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf1e)
  store %struct.Memory* %call_42bf1e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bf22	 Bytes: 4
  %loadMem_42bf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf22 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf22)
  store %struct.Memory* %call_42bf22, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42bf26	 Bytes: 3
  %loadMem_42bf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf26 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf26)
  store %struct.Memory* %call_42bf26, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bf29	 Bytes: 3
  %loadMem_42bf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf29 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf29)
  store %struct.Memory* %call_42bf29, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bf2c	 Bytes: 3
  %loadMem_42bf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf2c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf2c)
  store %struct.Memory* %call_42bf2c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bf2f	 Bytes: 4
  %loadMem_42bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf2f = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf2f)
  store %struct.Memory* %call_42bf2f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 42bf33	 Bytes: 3
  %loadMem_42bf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf33 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf33)
  store %struct.Memory* %call_42bf33, %struct.Memory** %MEMORY

  ; Code: je .L_42bfd0	 RIP: 42bf36	 Bytes: 6
  %loadMem_42bf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf36 = call %struct.Memory* @routine_je_.L_42bfd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf36, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_42bf36, %struct.Memory** %MEMORY

  %loadBr_42bf36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bf36 = icmp eq i8 %loadBr_42bf36, 1
  br i1 %cmpBr_42bf36, label %block_.L_42bfd0, label %block_42bf3c

block_42bf3c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bf3c	 Bytes: 4
  %loadMem_42bf3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf3c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf3c)
  store %struct.Memory* %call_42bf3c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bf40	 Bytes: 3
  %loadMem_42bf40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf40 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf40)
  store %struct.Memory* %call_42bf40, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bf43	 Bytes: 4
  %loadMem_42bf43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf43 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf43)
  store %struct.Memory* %call_42bf43, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bf47	 Bytes: 4
  %loadMem_42bf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf47 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf47)
  store %struct.Memory* %call_42bf47, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42bf4b	 Bytes: 3
  %loadMem_42bf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf4b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf4b)
  store %struct.Memory* %call_42bf4b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bf4e	 Bytes: 3
  %loadMem_42bf4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf4e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf4e)
  store %struct.Memory* %call_42bf4e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bf51	 Bytes: 3
  %loadMem_42bf51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf51 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf51)
  store %struct.Memory* %call_42bf51, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bf54	 Bytes: 4
  %loadMem_42bf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf54 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf54)
  store %struct.Memory* %call_42bf54, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 42bf58	 Bytes: 3
  %loadMem_42bf58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf58 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf58)
  store %struct.Memory* %call_42bf58, %struct.Memory** %MEMORY

  ; Code: je .L_42bfd0	 RIP: 42bf5b	 Bytes: 6
  %loadMem_42bf5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf5b = call %struct.Memory* @routine_je_.L_42bfd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf5b, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_42bf5b, %struct.Memory** %MEMORY

  %loadBr_42bf5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bf5b = icmp eq i8 %loadBr_42bf5b, 1
  br i1 %cmpBr_42bf5b, label %block_.L_42bfd0, label %block_42bf61

block_42bf61:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bf61	 Bytes: 4
  %loadMem_42bf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf61 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf61)
  store %struct.Memory* %call_42bf61, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bf65	 Bytes: 3
  %loadMem_42bf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf65 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf65)
  store %struct.Memory* %call_42bf65, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bf68	 Bytes: 4
  %loadMem_42bf68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf68 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf68)
  store %struct.Memory* %call_42bf68, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bf6c	 Bytes: 4
  %loadMem_42bf6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf6c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf6c)
  store %struct.Memory* %call_42bf6c, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42bf70	 Bytes: 3
  %loadMem_42bf70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf70 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf70)
  store %struct.Memory* %call_42bf70, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bf73	 Bytes: 3
  %loadMem_42bf73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf73 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf73)
  store %struct.Memory* %call_42bf73, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bf76	 Bytes: 3
  %loadMem_42bf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf76 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf76)
  store %struct.Memory* %call_42bf76, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bf79	 Bytes: 4
  %loadMem_42bf79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf79 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf79)
  store %struct.Memory* %call_42bf79, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 42bf7d	 Bytes: 3
  %loadMem_42bf7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf7d = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf7d)
  store %struct.Memory* %call_42bf7d, %struct.Memory** %MEMORY

  ; Code: je .L_42bfd0	 RIP: 42bf80	 Bytes: 6
  %loadMem_42bf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf80 = call %struct.Memory* @routine_je_.L_42bfd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf80, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_42bf80, %struct.Memory** %MEMORY

  %loadBr_42bf80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bf80 = icmp eq i8 %loadBr_42bf80, 1
  br i1 %cmpBr_42bf80, label %block_.L_42bfd0, label %block_42bf86

block_42bf86:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bf86	 Bytes: 4
  %loadMem_42bf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf86 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf86)
  store %struct.Memory* %call_42bf86, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bf8a	 Bytes: 3
  %loadMem_42bf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf8a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf8a)
  store %struct.Memory* %call_42bf8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bf8d	 Bytes: 4
  %loadMem_42bf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf8d = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf8d)
  store %struct.Memory* %call_42bf8d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bf91	 Bytes: 4
  %loadMem_42bf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf91 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf91)
  store %struct.Memory* %call_42bf91, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42bf95	 Bytes: 3
  %loadMem_42bf95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf95 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf95)
  store %struct.Memory* %call_42bf95, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bf98	 Bytes: 3
  %loadMem_42bf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf98 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf98)
  store %struct.Memory* %call_42bf98, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bf9b	 Bytes: 3
  %loadMem_42bf9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf9b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf9b)
  store %struct.Memory* %call_42bf9b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bf9e	 Bytes: 4
  %loadMem_42bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bf9e = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bf9e)
  store %struct.Memory* %call_42bf9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 42bfa2	 Bytes: 3
  %loadMem_42bfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfa2 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfa2)
  store %struct.Memory* %call_42bfa2, %struct.Memory** %MEMORY

  ; Code: je .L_42bfd0	 RIP: 42bfa5	 Bytes: 6
  %loadMem_42bfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfa5 = call %struct.Memory* @routine_je_.L_42bfd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfa5, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_42bfa5, %struct.Memory** %MEMORY

  %loadBr_42bfa5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bfa5 = icmp eq i8 %loadBr_42bfa5, 1
  br i1 %cmpBr_42bfa5, label %block_.L_42bfd0, label %block_42bfab

block_42bfab:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 42bfab	 Bytes: 4
  %loadMem_42bfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfab)
  store %struct.Memory* %call_42bfab, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42bfaf	 Bytes: 3
  %loadMem_42bfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfaf = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfaf)
  store %struct.Memory* %call_42bfaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x44(%rbp), %rcx	 RIP: 42bfb2	 Bytes: 4
  %loadMem_42bfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfb2 = call %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfb2)
  store %struct.Memory* %call_42bfb2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42bfb6	 Bytes: 4
  %loadMem_42bfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfb6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfb6)
  store %struct.Memory* %call_42bfb6, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 42bfba	 Bytes: 3
  %loadMem_42bfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfba = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfba)
  store %struct.Memory* %call_42bfba, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42bfbd	 Bytes: 3
  %loadMem_42bfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfbd = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfbd)
  store %struct.Memory* %call_42bfbd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42bfc0	 Bytes: 3
  %loadMem_42bfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfc0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfc0)
  store %struct.Memory* %call_42bfc0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 42bfc3	 Bytes: 4
  %loadMem_42bfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfc3 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfc3)
  store %struct.Memory* %call_42bfc3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 42bfc7	 Bytes: 3
  %loadMem_42bfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfc7 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfc7)
  store %struct.Memory* %call_42bfc7, %struct.Memory** %MEMORY

  ; Code: jne .L_42bfed	 RIP: 42bfca	 Bytes: 6
  %loadMem_42bfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfca = call %struct.Memory* @routine_jne_.L_42bfed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfca, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42bfca, %struct.Memory** %MEMORY

  %loadBr_42bfca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bfca = icmp eq i8 %loadBr_42bfca, 1
  br i1 %cmpBr_42bfca, label %block_.L_42bfed, label %block_.L_42bfd0

  ; Code: .L_42bfd0:	 RIP: 42bfd0	 Bytes: 0
block_.L_42bfd0:

  ; Code: movss -0x1c0(%rbp), %xmm0	 RIP: 42bfd0	 Bytes: 8
  %loadMem_42bfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfd0 = call %struct.Memory* @routine_movss_MINUS0x1c0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfd0)
  store %struct.Memory* %call_42bfd0, %struct.Memory** %MEMORY

  ; Code: addss -0x1cc(%rbp), %xmm0	 RIP: 42bfd8	 Bytes: 8
  %loadMem_42bfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfd8 = call %struct.Memory* @routine_addss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfd8)
  store %struct.Memory* %call_42bfd8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1cc(%rbp)	 RIP: 42bfe0	 Bytes: 8
  %loadMem_42bfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfe0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfe0)
  store %struct.Memory* %call_42bfe0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c005	 RIP: 42bfe8	 Bytes: 5
  %loadMem_42bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfe8 = call %struct.Memory* @routine_jmpq_.L_42c005(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfe8, i64 29, i64 5)
  store %struct.Memory* %call_42bfe8, %struct.Memory** %MEMORY

  br label %block_.L_42c005

  ; Code: .L_42bfed:	 RIP: 42bfed	 Bytes: 0
block_.L_42bfed:

  ; Code: movss -0x1bc(%rbp), %xmm0	 RIP: 42bfed	 Bytes: 8
  %loadMem_42bfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bfed = call %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bfed)
  store %struct.Memory* %call_42bfed, %struct.Memory** %MEMORY

  ; Code: addss -0x1cc(%rbp), %xmm0	 RIP: 42bff5	 Bytes: 8
  %loadMem_42bff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bff5 = call %struct.Memory* @routine_addss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bff5)
  store %struct.Memory* %call_42bff5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1cc(%rbp)	 RIP: 42bffd	 Bytes: 8
  %loadMem_42bffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bffd = call %struct.Memory* @routine_movss__xmm0__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bffd)
  store %struct.Memory* %call_42bffd, %struct.Memory** %MEMORY

  ; Code: .L_42c005:	 RIP: 42c005	 Bytes: 0
  br label %block_.L_42c005
block_.L_42c005:

  ; Code: jmpq .L_42c00a	 RIP: 42c005	 Bytes: 5
  %loadMem_42c005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c005 = call %struct.Memory* @routine_jmpq_.L_42c00a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c005, i64 5, i64 5)
  store %struct.Memory* %call_42c005, %struct.Memory** %MEMORY

  br label %block_.L_42c00a

  ; Code: .L_42c00a:	 RIP: 42c00a	 Bytes: 0
block_.L_42c00a:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 42c00a	 Bytes: 3
  %loadMem_42c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c00a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c00a)
  store %struct.Memory* %call_42c00a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42c00d	 Bytes: 3
  %loadMem_42c00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c00d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c00d)
  store %struct.Memory* %call_42c00d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 42c010	 Bytes: 3
  %loadMem_42c010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c010 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c010)
  store %struct.Memory* %call_42c010, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bf07	 RIP: 42c013	 Bytes: 5
  %loadMem_42c013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c013 = call %struct.Memory* @routine_jmpq_.L_42bf07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c013, i64 -268, i64 5)
  store %struct.Memory* %call_42c013, %struct.Memory** %MEMORY

  br label %block_.L_42bf07

  ; Code: .L_42c018:	 RIP: 42c018	 Bytes: 0
block_.L_42c018:

  ; Code: movss -0x1cc(%rbp), %xmm0	 RIP: 42c018	 Bytes: 8
  %loadMem_42c018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c018 = call %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c018)
  store %struct.Memory* %call_42c018, %struct.Memory** %MEMORY

  ; Code: ucomiss -0x1d0(%rbp), %xmm0	 RIP: 42c020	 Bytes: 7
  %loadMem_42c020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c020 = call %struct.Memory* @routine_ucomiss_MINUS0x1d0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c020)
  store %struct.Memory* %call_42c020, %struct.Memory** %MEMORY

  ; Code: jbe .L_42c046	 RIP: 42c027	 Bytes: 6
  %loadMem_42c027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c027 = call %struct.Memory* @routine_jbe_.L_42c046(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c027, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_42c027, %struct.Memory** %MEMORY

  %loadBr_42c027 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c027 = icmp eq i8 %loadBr_42c027, 1
  br i1 %cmpBr_42c027, label %block_.L_42c046, label %block_42c02d

block_42c02d:
  ; Code: movss -0x1cc(%rbp), %xmm0	 RIP: 42c02d	 Bytes: 8
  %loadMem_42c02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c02d = call %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c02d)
  store %struct.Memory* %call_42c02d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1d0(%rbp)	 RIP: 42c035	 Bytes: 8
  %loadMem_42c035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c035 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c035)
  store %struct.Memory* %call_42c035, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c03d	 Bytes: 3
  %loadMem_42c03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c03d = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c03d)
  store %struct.Memory* %call_42c03d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 42c040	 Bytes: 6
  %loadMem_42c040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c040 = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c040)
  store %struct.Memory* %call_42c040, %struct.Memory** %MEMORY

  ; Code: .L_42c046:	 RIP: 42c046	 Bytes: 0
  br label %block_.L_42c046
block_.L_42c046:

  ; Code: jmpq .L_42c04b	 RIP: 42c046	 Bytes: 5
  %loadMem_42c046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c046 = call %struct.Memory* @routine_jmpq_.L_42c04b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c046, i64 5, i64 5)
  store %struct.Memory* %call_42c046, %struct.Memory** %MEMORY

  br label %block_.L_42c04b

  ; Code: .L_42c04b:	 RIP: 42c04b	 Bytes: 0
block_.L_42c04b:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c04b	 Bytes: 3
  %loadMem_42c04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c04b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c04b)
  store %struct.Memory* %call_42c04b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42c04e	 Bytes: 3
  %loadMem_42c04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c04e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c04e)
  store %struct.Memory* %call_42c04e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42c051	 Bytes: 3
  %loadMem_42c051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c051 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c051)
  store %struct.Memory* %call_42c051, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bed9	 RIP: 42c054	 Bytes: 5
  %loadMem_42c054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c054 = call %struct.Memory* @routine_jmpq_.L_42bed9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c054, i64 -379, i64 5)
  store %struct.Memory* %call_42c054, %struct.Memory** %MEMORY

  br label %block_.L_42bed9

  ; Code: .L_42c059:	 RIP: 42c059	 Bytes: 0
block_.L_42c059:

  ; Code: movq -0x1a8(%rbp), %rax	 RIP: 42c059	 Bytes: 7
  %loadMem_42c059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c059 = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c059)
  store %struct.Memory* %call_42c059, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 42c060	 Bytes: 6
  %loadMem_42c060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c060 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c060)
  store %struct.Memory* %call_42c060, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 42c066	 Bytes: 7
  %loadMem_42c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c066 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c066)
  store %struct.Memory* %call_42c066, %struct.Memory** %MEMORY

  ; Code: .L_42c06d:	 RIP: 42c06d	 Bytes: 0
  br label %block_.L_42c06d
block_.L_42c06d:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c06d	 Bytes: 3
  %loadMem_42c06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c06d = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c06d)
  store %struct.Memory* %call_42c06d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42c070	 Bytes: 4
  %loadMem_42c070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c070 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c070)
  store %struct.Memory* %call_42c070, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42c074	 Bytes: 3
  %loadMem_42c074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c074 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c074)
  store %struct.Memory* %call_42c074, %struct.Memory** %MEMORY

  ; Code: jg .L_42c09d	 RIP: 42c077	 Bytes: 6
  %loadMem_42c077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c077 = call %struct.Memory* @routine_jg_.L_42c09d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c077, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42c077, %struct.Memory** %MEMORY

  %loadBr_42c077 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c077 = icmp eq i8 %loadBr_42c077, 1
  br i1 %cmpBr_42c077, label %block_.L_42c09d, label %block_42c07d

block_42c07d:
  ; Code: movq -0x1a8(%rbp), %rax	 RIP: 42c07d	 Bytes: 7
  %loadMem_42c07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c07d = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c07d)
  store %struct.Memory* %call_42c07d, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42c084	 Bytes: 4
  %loadMem_42c084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c084 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c084)
  store %struct.Memory* %call_42c084, %struct.Memory** %MEMORY

  ; Code: movl $0x8, (%rax,%rcx,4)	 RIP: 42c088	 Bytes: 7
  %loadMem_42c088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c088 = call %struct.Memory* @routine_movl__0x8____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c088)
  store %struct.Memory* %call_42c088, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c08f	 Bytes: 3
  %loadMem_42c08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c08f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c08f)
  store %struct.Memory* %call_42c08f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42c092	 Bytes: 3
  %loadMem_42c092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c092 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c092)
  store %struct.Memory* %call_42c092, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42c095	 Bytes: 3
  %loadMem_42c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c095 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c095)
  store %struct.Memory* %call_42c095, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c06d	 RIP: 42c098	 Bytes: 5
  %loadMem_42c098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c098 = call %struct.Memory* @routine_jmpq_.L_42c06d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c098, i64 -43, i64 5)
  store %struct.Memory* %call_42c098, %struct.Memory** %MEMORY

  br label %block_.L_42c06d

  ; Code: .L_42c09d:	 RIP: 42c09d	 Bytes: 0
block_.L_42c09d:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 42c09d	 Bytes: 6
  %loadMem_42c09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c09d = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c09d)
  store %struct.Memory* %call_42c09d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42c0a3	 Bytes: 3
  %loadMem_42c0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0a3 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0a3)
  store %struct.Memory* %call_42c0a3, %struct.Memory** %MEMORY

  ; Code: .L_42c0a6:	 RIP: 42c0a6	 Bytes: 0
  br label %block_.L_42c0a6
block_.L_42c0a6:

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 42c0a6	 Bytes: 4
  %loadMem_42c0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0a6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0a6)
  store %struct.Memory* %call_42c0a6, %struct.Memory** %MEMORY

  ; Code: je .L_42c0ee	 RIP: 42c0aa	 Bytes: 6
  %loadMem_42c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0aa = call %struct.Memory* @routine_je_.L_42c0ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0aa, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_42c0aa, %struct.Memory** %MEMORY

  %loadBr_42c0aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c0aa = icmp eq i8 %loadBr_42c0aa, 1
  br i1 %cmpBr_42c0aa, label %block_.L_42c0ee, label %block_42c0b0

block_42c0b0:
  ; Code: movq -0x1a8(%rbp), %rax	 RIP: 42c0b0	 Bytes: 7
  %loadMem_42c0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0b0 = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0b0)
  store %struct.Memory* %call_42c0b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42c0b7	 Bytes: 4
  %loadMem_42c0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0b7 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0b7)
  store %struct.Memory* %call_42c0b7, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42c0bb	 Bytes: 3
  %loadMem_42c0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0bb = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0bb)
  store %struct.Memory* %call_42c0bb, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffff7, %edx	 RIP: 42c0be	 Bytes: 3
  %loadMem_42c0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0be = call %struct.Memory* @routine_andl__0xfffffff7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0be)
  store %struct.Memory* %call_42c0be, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42c0c1	 Bytes: 3
  %loadMem_42c0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0c1 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0c1)
  store %struct.Memory* %call_42c0c1, %struct.Memory** %MEMORY

  ; Code: movq -0x1a8(%rbp), %rax	 RIP: 42c0c4	 Bytes: 7
  %loadMem_42c0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0c4 = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0c4)
  store %struct.Memory* %call_42c0c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42c0cb	 Bytes: 4
  %loadMem_42c0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0cb = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0cb)
  store %struct.Memory* %call_42c0cb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42c0cf	 Bytes: 3
  %loadMem_42c0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0cf = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0cf)
  store %struct.Memory* %call_42c0cf, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %edx	 RIP: 42c0d2	 Bytes: 3
  %loadMem_42c0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0d2 = call %struct.Memory* @routine_orl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0d2)
  store %struct.Memory* %call_42c0d2, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 42c0d5	 Bytes: 3
  %loadMem_42c0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0d5 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0d5)
  store %struct.Memory* %call_42c0d5, %struct.Memory** %MEMORY

  ; Code: movq -0x1a0(%rbp), %rax	 RIP: 42c0d8	 Bytes: 7
  %loadMem_42c0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0d8 = call %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0d8)
  store %struct.Memory* %call_42c0d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42c0df	 Bytes: 4
  %loadMem_42c0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0df = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0df)
  store %struct.Memory* %call_42c0df, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42c0e3	 Bytes: 3
  %loadMem_42c0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0e3 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0e3)
  store %struct.Memory* %call_42c0e3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x48(%rbp)	 RIP: 42c0e6	 Bytes: 3
  %loadMem_42c0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0e6 = call %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0e6)
  store %struct.Memory* %call_42c0e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c0a6	 RIP: 42c0e9	 Bytes: 5
  %loadMem_42c0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0e9 = call %struct.Memory* @routine_jmpq_.L_42c0a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0e9, i64 -67, i64 5)
  store %struct.Memory* %call_42c0e9, %struct.Memory** %MEMORY

  br label %block_.L_42c0a6

  ; Code: .L_42c0ee:	 RIP: 42c0ee	 Bytes: 0
block_.L_42c0ee:

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42c0ee	 Bytes: 4
  %loadMem_42c0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0ee = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0ee)
  store %struct.Memory* %call_42c0ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 42c0f2	 Bytes: 4
  %loadMem_42c0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0f2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0f2)
  store %struct.Memory* %call_42c0f2, %struct.Memory** %MEMORY

  ; Code: movq -0x1a8(%rbp), %rdx	 RIP: 42c0f6	 Bytes: 7
  %loadMem_42c0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0f6 = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0f6)
  store %struct.Memory* %call_42c0f6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 42c0fd	 Bytes: 4
  %loadMem_42c0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c0fd = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c0fd)
  store %struct.Memory* %call_42c0fd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %r8	 RIP: 42c101	 Bytes: 4
  %loadMem_42c101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c101 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c101)
  store %struct.Memory* %call_42c101, %struct.Memory** %MEMORY

  ; Code: callq .matassign2hmm	 RIP: 42c105	 Bytes: 5
  %loadMem1_42c105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c105 = call %struct.Memory* @routine_callq_.matassign2hmm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c105, i64 -11973, i64 5, i64 5)
  store %struct.Memory* %call1_42c105, %struct.Memory** %MEMORY

  %loadMem2_42c105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c105 = load i64, i64* %3
  %call2_42c105 = call %struct.Memory* @sub_429240.matassign2hmm(%struct.State* %0, i64  %loadPC_42c105, %struct.Memory* %loadMem2_42c105)
  store %struct.Memory* %call2_42c105, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 42c10a	 Bytes: 7
  %loadMem_42c10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c10a = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c10a)
  store %struct.Memory* %call_42c10a, %struct.Memory** %MEMORY

  ; Code: .L_42c111:	 RIP: 42c111	 Bytes: 0
  br label %block_.L_42c111
block_.L_42c111:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c111	 Bytes: 3
  %loadMem_42c111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c111 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c111)
  store %struct.Memory* %call_42c111, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42c114	 Bytes: 4
  %loadMem_42c114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c114 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c114)
  store %struct.Memory* %call_42c114, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42c118	 Bytes: 3
  %loadMem_42c118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c118 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c118)
  store %struct.Memory* %call_42c118, %struct.Memory** %MEMORY

  ; Code: jg .L_42c143	 RIP: 42c11b	 Bytes: 6
  %loadMem_42c11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c11b = call %struct.Memory* @routine_jg_.L_42c143(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c11b, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_42c11b, %struct.Memory** %MEMORY

  %loadBr_42c11b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42c11b = icmp eq i8 %loadBr_42c11b, 1
  br i1 %cmpBr_42c11b, label %block_.L_42c143, label %block_42c121

block_42c121:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 42c121	 Bytes: 4
  %loadMem_42c121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c121 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c121)
  store %struct.Memory* %call_42c121, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 42c125	 Bytes: 4
  %loadMem_42c125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c125 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c125)
  store %struct.Memory* %call_42c125, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42c129	 Bytes: 4
  %loadMem_42c129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c129 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c129)
  store %struct.Memory* %call_42c129, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c12d	 Bytes: 3
  %loadMem_42c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c12d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c12d)
  store %struct.Memory* %call_42c12d, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c130	 Bytes: 5
  %loadMem1_42c130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c130 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c130, i64 -175536, i64 5, i64 5)
  store %struct.Memory* %call1_42c130, %struct.Memory** %MEMORY

  %loadMem2_42c130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c130 = load i64, i64* %3
  %call2_42c130 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c130, %struct.Memory* %loadMem2_42c130)
  store %struct.Memory* %call2_42c130, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 42c135	 Bytes: 3
  %loadMem_42c135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c135 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c135)
  store %struct.Memory* %call_42c135, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42c138	 Bytes: 3
  %loadMem_42c138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c138 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c138)
  store %struct.Memory* %call_42c138, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 42c13b	 Bytes: 3
  %loadMem_42c13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c13b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c13b)
  store %struct.Memory* %call_42c13b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42c111	 RIP: 42c13e	 Bytes: 5
  %loadMem_42c13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c13e = call %struct.Memory* @routine_jmpq_.L_42c111(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c13e, i64 -45, i64 5)
  store %struct.Memory* %call_42c13e, %struct.Memory** %MEMORY

  br label %block_.L_42c111

  ; Code: .L_42c143:	 RIP: 42c143	 Bytes: 0
block_.L_42c143:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 42c143	 Bytes: 4
  %loadMem_42c143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c143 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c143)
  store %struct.Memory* %call_42c143, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c147	 Bytes: 3
  %loadMem_42c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c147 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c147)
  store %struct.Memory* %call_42c147, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c14a	 Bytes: 5
  %loadMem1_42c14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c14a = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c14a, i64 -175562, i64 5, i64 5)
  store %struct.Memory* %call1_42c14a, %struct.Memory** %MEMORY

  %loadMem2_42c14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c14a = load i64, i64* %3
  %call2_42c14a = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c14a, %struct.Memory* %loadMem2_42c14a)
  store %struct.Memory* %call2_42c14a, %struct.Memory** %MEMORY

  ; Code: movq -0x198(%rbp), %rax	 RIP: 42c14f	 Bytes: 7
  %loadMem_42c14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c14f = call %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c14f)
  store %struct.Memory* %call_42c14f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c156	 Bytes: 3
  %loadMem_42c156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c156 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c156)
  store %struct.Memory* %call_42c156, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c159	 Bytes: 5
  %loadMem1_42c159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c159 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c159, i64 -175577, i64 5, i64 5)
  store %struct.Memory* %call1_42c159, %struct.Memory** %MEMORY

  %loadMem2_42c159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c159 = load i64, i64* %3
  %call2_42c159 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c159, %struct.Memory* %loadMem2_42c159)
  store %struct.Memory* %call2_42c159, %struct.Memory** %MEMORY

  ; Code: movq -0x1a0(%rbp), %rax	 RIP: 42c15e	 Bytes: 7
  %loadMem_42c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c15e = call %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c15e)
  store %struct.Memory* %call_42c15e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c165	 Bytes: 3
  %loadMem_42c165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c165 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c165)
  store %struct.Memory* %call_42c165, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c168	 Bytes: 5
  %loadMem1_42c168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c168 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c168, i64 -175592, i64 5, i64 5)
  store %struct.Memory* %call1_42c168, %struct.Memory** %MEMORY

  %loadMem2_42c168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c168 = load i64, i64* %3
  %call2_42c168 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c168, %struct.Memory* %loadMem2_42c168)
  store %struct.Memory* %call2_42c168, %struct.Memory** %MEMORY

  ; Code: movq -0x1a8(%rbp), %rax	 RIP: 42c16d	 Bytes: 7
  %loadMem_42c16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c16d = call %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c16d)
  store %struct.Memory* %call_42c16d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c174	 Bytes: 3
  %loadMem_42c174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c174 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c174)
  store %struct.Memory* %call_42c174, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c177	 Bytes: 5
  %loadMem1_42c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c177 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c177, i64 -175607, i64 5, i64 5)
  store %struct.Memory* %call1_42c177, %struct.Memory** %MEMORY

  %loadMem2_42c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c177 = load i64, i64* %3
  %call2_42c177 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c177, %struct.Memory* %loadMem2_42c177)
  store %struct.Memory* %call2_42c177, %struct.Memory** %MEMORY

  ; Code: movq -0x1b0(%rbp), %rax	 RIP: 42c17c	 Bytes: 7
  %loadMem_42c17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c17c = call %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c17c)
  store %struct.Memory* %call_42c17c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42c183	 Bytes: 3
  %loadMem_42c183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c183 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c183)
  store %struct.Memory* %call_42c183, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 42c186	 Bytes: 5
  %loadMem1_42c186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42c186 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42c186, i64 -175622, i64 5, i64 5)
  store %struct.Memory* %call1_42c186, %struct.Memory** %MEMORY

  %loadMem2_42c186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42c186 = load i64, i64* %3
  %call2_42c186 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_42c186, %struct.Memory* %loadMem2_42c186)
  store %struct.Memory* %call2_42c186, %struct.Memory** %MEMORY

  ; Code: addq $0x270, %rsp	 RIP: 42c18b	 Bytes: 7
  %loadMem_42c18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c18b = call %struct.Memory* @routine_addq__0x270___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c18b)
  store %struct.Memory* %call_42c18b, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42c192	 Bytes: 1
  %loadMem_42c192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c192 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c192)
  store %struct.Memory* %call_42c192, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42c193	 Bytes: 1
  %loadMem_42c193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42c193 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42c193)
  store %struct.Memory* %call_42c193, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42c193
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

define %struct.Memory* @routine_subq__0x270___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 624)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x45863c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45863c_type* @G__0x45863c to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xff___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 255)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 44
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm2__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R9
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x18__rcx____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl__0x1___r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R11D to i64*
  %10 = load i32, i32* %R11D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__r11d___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45863c_type* @G__0x45863c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x100___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 256)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_0x18__rax____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x2___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 2)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movslq__r10d___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x2___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movl__0x101___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 257)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movl__0x102___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 258)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x1a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 416
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_addl__0x1___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}












define %struct.Memory* @routine_movl__0x103___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 259)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x1a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 424
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq__rax__MINUS0x1b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 432
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 24
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

define %struct.Memory* @routine_jge_.L_42b03d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x105___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 261)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_0x677060___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq__esi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl_0x677060___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.FSet(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42afcb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_42b18c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42b179(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
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

define %struct.Memory* @routine_je_.L_42b166(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 46)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 95)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 126)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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








define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_movq__rdi__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SymbolIndex(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x44__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movss___rdx__r8_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 6
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl__sil___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.P7CountSymbol(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42b16b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b05b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b17e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b044(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = bitcast i8* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = fcmp uno float %7, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %4
  %13 = fadd float %7, %10
  %14 = bitcast float %13 to i32
  %15 = and i32 %14, 2143289344
  %16 = icmp eq i32 %15, 2139095040
  %17 = and i32 %14, 4194303
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %41

; <label>:24:                                     ; preds = %4
  %25 = fcmp ogt float %7, %10
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %7, %10
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %7, %10
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %12
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %12 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %12 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %12 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %37, %20
  %42 = phi %struct.Memory* [ %23, %20 ], [ %0, %37 ]
  ret %struct.Memory* %42
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_42b1c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.log_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x29731__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x29731__rip__type* @G_0x29731__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x1f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 496
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b1d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x29710__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x29710__rip__type* @G_0x29710__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x1f0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x140__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_addq__0x5dd0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 24016)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x677060___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.FCopy(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.FNorm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.FSum(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss__xmm0__MINUS0x1dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 476
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_42b2ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -320
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fdiv float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jbe_.L_42b2ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -320
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_divss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movsd_0x29643__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x29643__rip__type* @G_0x29643__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 504
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b2c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x29622__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x29622__rip__type* @G_0x29622__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x1f8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x140__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -320
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_jmpq_.L_42b23c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.estimate_model_length(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsd_0x294f2__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x294f2__rip__type* @G_0x294f2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_0x29426__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x29426__rip__type* @G_0x29426__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = trunc i64 %3 to i32
  %11 = sitofp i32 %10 to float
  %12 = bitcast i8* %2 to float*
  store float %11, float* %12, align 1
  %13 = extractelement <2 x i32> %6, i32 1
  %14 = getelementptr inbounds i8, i8* %2, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 1
  %16 = extractelement <2 x i32> %9, i32 0
  %17 = bitcast i8* %7 to i32*
  store i32 %16, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm1___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtsd2ss__xmm4___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm3__MINUS0x1c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 456
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm2__MINUS0x1bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 444
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cvtsi2ssl__eax___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x1c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 448
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jbe_.L_42b39e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_0x29553__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x29553__rip__type* @G_0x29553__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 512
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b3b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x29532__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x29532__rip__type* @G_0x29532__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x200__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x1bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 444
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x1c0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jbe_.L_42b40f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd_0x294e2__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x294e2__rip__type* @G_0x294e2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x208__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 520
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x294c1__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x294c1__rip__type* @G_0x294c1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x208__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0x292f8__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x292f8__rip__type* @G_0x292f8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x1c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 448
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 440
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jl_.L_42b5ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 472
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jge_.L_42b56a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_42b548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42b557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42b55c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b470(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x1d8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jb_.L_42b592(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42b5ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b597(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 440
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42b452(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_jge_.L_42b744(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x209__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 521
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jle_.L_42b6f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_cmpl__0x20___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 522
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_42b6e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_cmpl__0x2e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 46)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_cmpl__0x5f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 95)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movb__sil__MINUS0x20a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 522
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
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

define %struct.Memory* @routine_movb_MINUS0x20a__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 522
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0x209__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 521
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x209__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 521
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_42b707(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42b731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x5f____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 95)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_42b5f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b736(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b5dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jle_.L_42beb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_0x1908__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x190c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6412)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_addq__0x1c2c___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7212)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__MINUS0x218__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x218__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.P7PriorifyEmissionVector(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_42b873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -240
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_jbe_.L_42b837(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -240
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movsd_0x290ba__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x290ba__rip__type* @G_0x290ba__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x220__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 544
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b84c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x29099__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x29099__rip__type* @G_0x29099__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x220__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -240
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_jmpq_.L_42b7c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_leaq_MINUS0x190__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jge_.L_42b8c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jmpq_.L_42b890(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x28e9c__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28e9c__rip__type* @G_0x28e9c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x1b8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 440
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jg_.L_42be65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__r9____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.build_cij(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 468
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42b939(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42be65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x1d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42bd3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 7)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_callq_.P7PriorifyTransitionVector(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_42b9cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x28f22__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28f22__rip__type* @G_0x28f22__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 552
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b9e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28f01__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28f01__rip__type* @G_0x28f01__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x228__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_42ba40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd_0x28eb1__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28eb1__rip__type* @G_0x28eb1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x230__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 560
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42ba55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28e90__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28e90__rip__type* @G_0x28e90__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x230__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 156
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_42baa3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x28e4e__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28e4e__rip__type* @G_0x28e4e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 568
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bab8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28e2d__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28e2d__rip__type* @G_0x28e2d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x238__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_42bb14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd_0x28ddd__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28ddd__rip__type* @G_0x28ddd__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 576
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bb29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28dbc__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28dbc__rip__type* @G_0x28dbc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x240__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_42bb85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd_0x28d6c__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28d6c__rip__type* @G_0x28d6c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 584
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bb9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28d4b__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28d4b__rip__type* @G_0x28d4b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x248__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jbe_.L_42bbf6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd_0x28cfb__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28cfb__rip__type* @G_0x28cfb__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 592
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bc0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28cda__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28cda__rip__type* @G_0x28cda__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x250__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss__xmm0__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 140
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jbe_.L_42bc59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x28c98__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x28c98__rip__type* @G_0x28c98__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 600
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bc6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x28c77__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x28c77__rip__type* @G_0x28c77__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movss__xmm0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x25c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 604
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.FDot(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x190__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0x25c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fadd float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm1__MINUS0x260__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 608
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_MINUS0x260__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 460
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_jbe_.L_42bd37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_42bd3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_callq_.FAdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_42be52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_42be3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_42be44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42bd62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42be57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b8e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss_MINUS0x1dc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 476
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_jmpq_.L_42b750(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x288a4__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x288a4__rip__type* @G_0x288a4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x1d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 464
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jg_.L_42c059(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movss__xmm0__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 460
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jge_.L_42c018(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_42bfd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















































































define %struct.Memory* @routine_jne_.L_42bfed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addss_MINUS0x1cc__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_42c005(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42c00a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42bf07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_ucomiss_MINUS0x1d0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_42c046(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 436
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42c04b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42bed9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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










define %struct.Memory* @routine_jg_.L_42c09d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x8____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 8)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_42c06d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_42c0ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0xfffffff7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -9)
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

define %struct.Memory* @routine_orl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42c0a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.matassign2hmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jg_.L_42c143(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_42c111(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
































define %struct.Memory* @routine_addq__0x270___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 624)
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

