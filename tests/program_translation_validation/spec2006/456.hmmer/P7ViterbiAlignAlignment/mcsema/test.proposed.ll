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
declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451fe0.FScale(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4079d0.AllocShadowMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f800.ShadowTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407d00.FreeShadowMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x46038__rip__type = type <{ [8 x i8] }>
@G_0x46038__rip_= global %G_0x46038__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x46152__rip__type = type <{ [4 x i8] }>
@G_0x46152__rip_= global %G_0x46152__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x455f2a_type = type <{ [8 x i8] }>
@G__0x455f2a= global %G__0x455f2a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x676fe0_type = type <{ [8 x i8] }>
@G__0x676fe0= global %G__0x676fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @P7ViterbiAlignAlignment(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .P7ViterbiAlignAlignment:	 RIP: 40e500	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40e500	 Bytes: 1
  %loadMem_40e500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e500 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e500)
  store %struct.Memory* %call_40e500, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40e501	 Bytes: 3
  %loadMem_40e501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e501 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e501)
  store %struct.Memory* %call_40e501, %struct.Memory** %MEMORY

  ; Code: subq $0xc0, %rsp	 RIP: 40e504	 Bytes: 7
  %loadMem_40e504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e504 = call %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e504)
  store %struct.Memory* %call_40e504, %struct.Memory** %MEMORY

  ; Code: movq $0x455f2a, %rax	 RIP: 40e50b	 Bytes: 10
  %loadMem_40e50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e50b = call %struct.Memory* @routine_movq__0x455f2a___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e50b)
  store %struct.Memory* %call_40e50b, %struct.Memory** %MEMORY

  ; Code: movl $0x7fc, %ecx	 RIP: 40e515	 Bytes: 5
  %loadMem_40e515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e515 = call %struct.Memory* @routine_movl__0x7fc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e515)
  store %struct.Memory* %call_40e515, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 40e51a	 Bytes: 4
  %loadMem_40e51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e51a = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e51a)
  store %struct.Memory* %call_40e51a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 40e51e	 Bytes: 4
  %loadMem_40e51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e51e = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e51e)
  store %struct.Memory* %call_40e51e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 40e522	 Bytes: 4
  %loadMem_40e522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e522 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e522)
  store %struct.Memory* %call_40e522, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rsi), %edx	 RIP: 40e526	 Bytes: 3
  %loadMem_40e526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e526 = call %struct.Memory* @routine_movl_0x18__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e526)
  store %struct.Memory* %call_40e526, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40e529	 Bytes: 3
  %loadMem_40e529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e529 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e529)
  store %struct.Memory* %call_40e529, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 40e52c	 Bytes: 3
  %loadMem_40e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e52c = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e52c)
  store %struct.Memory* %call_40e52c, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rsi	 RIP: 40e52f	 Bytes: 4
  %loadMem_40e52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e52f = call %struct.Memory* @routine_shlq__0x3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e52f)
  store %struct.Memory* %call_40e52f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40e533	 Bytes: 3
  %loadMem_40e533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e533 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e533)
  store %struct.Memory* %call_40e533, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0xa0(%rbp)	 RIP: 40e536	 Bytes: 7
  %loadMem_40e536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e536 = call %struct.Memory* @routine_movq__rsi__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e536)
  store %struct.Memory* %call_40e536, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 40e53d	 Bytes: 2
  %loadMem_40e53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e53d = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e53d)
  store %struct.Memory* %call_40e53d, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rdx	 RIP: 40e53f	 Bytes: 7
  %loadMem_40e53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e53f = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e53f)
  store %struct.Memory* %call_40e53f, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 40e546	 Bytes: 5
  %loadMem1_40e546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e546 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e546, i64 228122, i64 5, i64 5)
  store %struct.Memory* %call1_40e546, %struct.Memory** %MEMORY

  %loadMem2_40e546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e546 = load i64, i64* %3
  %call2_40e546 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_40e546, %struct.Memory* %loadMem2_40e546)
  store %struct.Memory* %call2_40e546, %struct.Memory** %MEMORY

  ; Code: movq $0x455f2a, %rdi	 RIP: 40e54b	 Bytes: 10
  %loadMem_40e54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e54b = call %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e54b)
  store %struct.Memory* %call_40e54b, %struct.Memory** %MEMORY

  ; Code: movl $0x7fd, %esi	 RIP: 40e555	 Bytes: 5
  %loadMem_40e555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e555 = call %struct.Memory* @routine_movl__0x7fd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e555)
  store %struct.Memory* %call_40e555, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 40e55a	 Bytes: 4
  %loadMem_40e55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e55a = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e55a)
  store %struct.Memory* %call_40e55a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e55e	 Bytes: 4
  %loadMem_40e55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e55e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e55e)
  store %struct.Memory* %call_40e55e, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 40e562	 Bytes: 3
  %loadMem_40e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e562 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e562)
  store %struct.Memory* %call_40e562, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40e565	 Bytes: 3
  %loadMem_40e565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e565 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e565)
  store %struct.Memory* %call_40e565, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40e568	 Bytes: 3
  %loadMem_40e568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e568 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e568)
  store %struct.Memory* %call_40e568, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 40e56b	 Bytes: 4
  %loadMem_40e56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e56b = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e56b)
  store %struct.Memory* %call_40e56b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40e56f	 Bytes: 3
  %loadMem_40e56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e56f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e56f)
  store %struct.Memory* %call_40e56f, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 40e572	 Bytes: 5
  %loadMem1_40e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e572 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e572, i64 228078, i64 5, i64 5)
  store %struct.Memory* %call1_40e572, %struct.Memory** %MEMORY

  %loadMem2_40e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e572 = load i64, i64* %3
  %call2_40e572 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_40e572, %struct.Memory* %loadMem2_40e572)
  store %struct.Memory* %call2_40e572, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 40e577	 Bytes: 4
  %loadMem_40e577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e577 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e577)
  store %struct.Memory* %call_40e577, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x7c(%rbp)	 RIP: 40e57b	 Bytes: 7
  %loadMem_40e57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e57b = call %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e57b)
  store %struct.Memory* %call_40e57b, %struct.Memory** %MEMORY

  ; Code: .L_40e582:	 RIP: 40e582	 Bytes: 0
  br label %block_.L_40e582
block_.L_40e582:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40e582	 Bytes: 3
  %loadMem_40e582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e582 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e582)
  store %struct.Memory* %call_40e582, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40e585	 Bytes: 4
  %loadMem_40e585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e585 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e585)
  store %struct.Memory* %call_40e585, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 40e589	 Bytes: 3
  %loadMem_40e589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e589 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e589)
  store %struct.Memory* %call_40e589, %struct.Memory** %MEMORY

  ; Code: jg .L_40e5ea	 RIP: 40e58c	 Bytes: 6
  %loadMem_40e58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e58c = call %struct.Memory* @routine_jg_.L_40e5ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e58c, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_40e58c, %struct.Memory** %MEMORY

  %loadBr_40e58c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e58c = icmp eq i8 %loadBr_40e58c, 1
  br i1 %cmpBr_40e58c, label %block_.L_40e5ea, label %block_40e592

block_40e592:
  ; Code: movq $0x455f2a, %rdi	 RIP: 40e592	 Bytes: 10
  %loadMem_40e592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e592 = call %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e592)
  store %struct.Memory* %call_40e592, %struct.Memory** %MEMORY

  ; Code: movl $0x7ff, %esi	 RIP: 40e59c	 Bytes: 5
  %loadMem_40e59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e59c = call %struct.Memory* @routine_movl__0x7ff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e59c)
  store %struct.Memory* %call_40e59c, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rax	 RIP: 40e5a1	 Bytes: 8
  %loadMem_40e5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5a1 = call %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5a1)
  store %struct.Memory* %call_40e5a1, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 40e5a9	 Bytes: 4
  %loadMem_40e5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5a9 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5a9)
  store %struct.Memory* %call_40e5a9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40e5ad	 Bytes: 3
  %loadMem_40e5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5ad = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5ad)
  store %struct.Memory* %call_40e5ad, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 40e5b0	 Bytes: 5
  %loadMem1_40e5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e5b0 = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e5b0, i64 228016, i64 5, i64 5)
  store %struct.Memory* %call1_40e5b0, %struct.Memory** %MEMORY

  %loadMem2_40e5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e5b0 = load i64, i64* %3
  %call2_40e5b0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_40e5b0, %struct.Memory* %loadMem2_40e5b0)
  store %struct.Memory* %call2_40e5b0, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 40e5b5	 Bytes: 3
  %loadMem_40e5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5b5 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5b5)
  store %struct.Memory* %call_40e5b5, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdx	 RIP: 40e5b8	 Bytes: 4
  %loadMem_40e5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5b8 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5b8)
  store %struct.Memory* %call_40e5b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdi	 RIP: 40e5bc	 Bytes: 4
  %loadMem_40e5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5bc = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5bc)
  store %struct.Memory* %call_40e5bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 40e5c0	 Bytes: 4
  %loadMem_40e5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5c0 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5c0)
  store %struct.Memory* %call_40e5c0, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40e5c4	 Bytes: 4
  %loadMem_40e5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5c4 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5c4)
  store %struct.Memory* %call_40e5c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40e5c8	 Bytes: 4
  %loadMem_40e5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5c8 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5c8)
  store %struct.Memory* %call_40e5c8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rdi	 RIP: 40e5cc	 Bytes: 4
  %loadMem_40e5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5cc = call %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5cc)
  store %struct.Memory* %call_40e5cc, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 40e5d0	 Bytes: 7
  %loadMem_40e5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5d0 = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5d0)
  store %struct.Memory* %call_40e5d0, %struct.Memory** %MEMORY

  ; Code: callq .FSet	 RIP: 40e5d7	 Bytes: 5
  %loadMem1_40e5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e5d7 = call %struct.Memory* @routine_callq_.FSet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e5d7, i64 276841, i64 5, i64 5)
  store %struct.Memory* %call1_40e5d7, %struct.Memory** %MEMORY

  %loadMem2_40e5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e5d7 = load i64, i64* %3
  %call2_40e5d7 = call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64  %loadPC_40e5d7, %struct.Memory* %loadMem2_40e5d7)
  store %struct.Memory* %call2_40e5d7, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40e5dc	 Bytes: 3
  %loadMem_40e5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5dc = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5dc)
  store %struct.Memory* %call_40e5dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e5df	 Bytes: 3
  %loadMem_40e5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5df = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5df)
  store %struct.Memory* %call_40e5df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 40e5e2	 Bytes: 3
  %loadMem_40e5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5e2 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5e2)
  store %struct.Memory* %call_40e5e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e582	 RIP: 40e5e5	 Bytes: 5
  %loadMem_40e5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5e5 = call %struct.Memory* @routine_jmpq_.L_40e582(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5e5, i64 -99, i64 5)
  store %struct.Memory* %call_40e5e5, %struct.Memory** %MEMORY

  br label %block_.L_40e582

  ; Code: .L_40e5ea:	 RIP: 40e5ea	 Bytes: 0
block_.L_40e5ea:

  ; Code: movss 0x46152(%rip), %xmm0	 RIP: 40e5ea	 Bytes: 8
  %loadMem_40e5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5ea = call %struct.Memory* @routine_movss_0x46152__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5ea)
  store %struct.Memory* %call_40e5ea, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40e5f2	 Bytes: 4
  %loadMem_40e5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5f2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5f2)
  store %struct.Memory* %call_40e5f2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 40e5f6	 Bytes: 4
  %loadMem_40e5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5f6 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5f6)
  store %struct.Memory* %call_40e5f6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e5fa	 Bytes: 4
  %loadMem_40e5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5fa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5fa)
  store %struct.Memory* %call_40e5fa, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rdi	 RIP: 40e5fe	 Bytes: 4
  %loadMem_40e5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e5fe = call %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e5fe)
  store %struct.Memory* %call_40e5fe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e602	 Bytes: 4
  %loadMem_40e602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e602 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e602)
  store %struct.Memory* %call_40e602, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 40e606	 Bytes: 3
  %loadMem_40e606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e606 = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e606)
  store %struct.Memory* %call_40e606, %struct.Memory** %MEMORY

  ; Code: callq .FSum	 RIP: 40e609	 Bytes: 5
  %loadMem1_40e609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e609 = call %struct.Memory* @routine_callq_.FSum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e609, i64 277127, i64 5, i64 5)
  store %struct.Memory* %call1_40e609, %struct.Memory** %MEMORY

  %loadMem2_40e609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e609 = load i64, i64* %3
  %call2_40e609 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64  %loadPC_40e609, %struct.Memory* %loadMem2_40e609)
  store %struct.Memory* %call2_40e609, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x90(%rbp)	 RIP: 40e60e	 Bytes: 8
  %loadMem_40e60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e60e = call %struct.Memory* @routine_movss__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e60e)
  store %struct.Memory* %call_40e60e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x7c(%rbp)	 RIP: 40e616	 Bytes: 7
  %loadMem_40e616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e616 = call %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e616)
  store %struct.Memory* %call_40e616, %struct.Memory** %MEMORY

  ; Code: .L_40e61d:	 RIP: 40e61d	 Bytes: 0
  br label %block_.L_40e61d
block_.L_40e61d:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40e61d	 Bytes: 3
  %loadMem_40e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e61d = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e61d)
  store %struct.Memory* %call_40e61d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40e620	 Bytes: 4
  %loadMem_40e620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e620 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e620)
  store %struct.Memory* %call_40e620, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 40e624	 Bytes: 3
  %loadMem_40e624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e624 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e624)
  store %struct.Memory* %call_40e624, %struct.Memory** %MEMORY

  ; Code: jg .L_40e803	 RIP: 40e627	 Bytes: 6
  %loadMem_40e627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e627 = call %struct.Memory* @routine_jg_.L_40e803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e627, i8* %BRANCH_TAKEN, i64 476, i64 6, i64 6)
  store %struct.Memory* %call_40e627, %struct.Memory** %MEMORY

  %loadBr_40e627 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e627 = icmp eq i8 %loadBr_40e627, 1
  br i1 %cmpBr_40e627, label %block_.L_40e803, label %block_40e62d

block_40e62d:
  ; Code: movl $0x0, -0x84(%rbp)	 RIP: 40e62d	 Bytes: 10
  %loadMem_40e62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e62d = call %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e62d)
  store %struct.Memory* %call_40e62d, %struct.Memory** %MEMORY

  ; Code: .L_40e637:	 RIP: 40e637	 Bytes: 0
  br label %block_.L_40e637
block_.L_40e637:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 40e637	 Bytes: 6
  %loadMem_40e637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e637 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e637)
  store %struct.Memory* %call_40e637, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40e63d	 Bytes: 4
  %loadMem_40e63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e63d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e63d)
  store %struct.Memory* %call_40e63d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 40e641	 Bytes: 3
  %loadMem_40e641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e641 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e641)
  store %struct.Memory* %call_40e641, %struct.Memory** %MEMORY

  ; Code: jge .L_40e7a0	 RIP: 40e644	 Bytes: 6
  %loadMem_40e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e644 = call %struct.Memory* @routine_jge_.L_40e7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e644, i8* %BRANCH_TAKEN, i64 348, i64 6, i64 6)
  store %struct.Memory* %call_40e644, %struct.Memory** %MEMORY

  %loadBr_40e644 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e644 = icmp eq i8 %loadBr_40e644, 1
  br i1 %cmpBr_40e644, label %block_.L_40e7a0, label %block_40e64a

block_40e64a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e64a	 Bytes: 4
  %loadMem_40e64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e64a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e64a)
  store %struct.Memory* %call_40e64a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e64e	 Bytes: 3
  %loadMem_40e64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e64e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e64e)
  store %struct.Memory* %call_40e64e, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e651	 Bytes: 7
  %loadMem_40e651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e651 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e651)
  store %struct.Memory* %call_40e651, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e658	 Bytes: 4
  %loadMem_40e658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e658 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e658)
  store %struct.Memory* %call_40e658, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40e65c	 Bytes: 3
  %loadMem_40e65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e65c = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e65c)
  store %struct.Memory* %call_40e65c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40e65f	 Bytes: 3
  %loadMem_40e65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e65f = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e65f)
  store %struct.Memory* %call_40e65f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40e662	 Bytes: 3
  %loadMem_40e662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e662 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e662)
  store %struct.Memory* %call_40e662, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40e665	 Bytes: 4
  %loadMem_40e665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e665 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e665)
  store %struct.Memory* %call_40e665, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 40e669	 Bytes: 3
  %loadMem_40e669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e669 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e669)
  store %struct.Memory* %call_40e669, %struct.Memory** %MEMORY

  ; Code: je .L_40e787	 RIP: 40e66c	 Bytes: 6
  %loadMem_40e66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e66c = call %struct.Memory* @routine_je_.L_40e787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e66c, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_40e66c, %struct.Memory** %MEMORY

  %loadBr_40e66c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e66c = icmp eq i8 %loadBr_40e66c, 1
  br i1 %cmpBr_40e66c, label %block_.L_40e787, label %block_40e672

block_40e672:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e672	 Bytes: 4
  %loadMem_40e672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e672 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e672)
  store %struct.Memory* %call_40e672, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e676	 Bytes: 3
  %loadMem_40e676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e676 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e676)
  store %struct.Memory* %call_40e676, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e679	 Bytes: 7
  %loadMem_40e679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e679 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e679)
  store %struct.Memory* %call_40e679, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e680	 Bytes: 4
  %loadMem_40e680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e680 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e680)
  store %struct.Memory* %call_40e680, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40e684	 Bytes: 3
  %loadMem_40e684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e684 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e684)
  store %struct.Memory* %call_40e684, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40e687	 Bytes: 3
  %loadMem_40e687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e687 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e687)
  store %struct.Memory* %call_40e687, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40e68a	 Bytes: 3
  %loadMem_40e68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e68a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e68a)
  store %struct.Memory* %call_40e68a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40e68d	 Bytes: 4
  %loadMem_40e68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e68d = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e68d)
  store %struct.Memory* %call_40e68d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, %edx	 RIP: 40e691	 Bytes: 3
  %loadMem_40e691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e691 = call %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e691)
  store %struct.Memory* %call_40e691, %struct.Memory** %MEMORY

  ; Code: je .L_40e787	 RIP: 40e694	 Bytes: 6
  %loadMem_40e694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e694 = call %struct.Memory* @routine_je_.L_40e787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e694, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_40e694, %struct.Memory** %MEMORY

  %loadBr_40e694 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e694 = icmp eq i8 %loadBr_40e694, 1
  br i1 %cmpBr_40e694, label %block_.L_40e787, label %block_40e69a

block_40e69a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e69a	 Bytes: 4
  %loadMem_40e69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e69a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e69a)
  store %struct.Memory* %call_40e69a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e69e	 Bytes: 3
  %loadMem_40e69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e69e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e69e)
  store %struct.Memory* %call_40e69e, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e6a1	 Bytes: 7
  %loadMem_40e6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6a1 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6a1)
  store %struct.Memory* %call_40e6a1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e6a8	 Bytes: 4
  %loadMem_40e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6a8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6a8)
  store %struct.Memory* %call_40e6a8, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40e6ac	 Bytes: 3
  %loadMem_40e6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6ac = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6ac)
  store %struct.Memory* %call_40e6ac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40e6af	 Bytes: 3
  %loadMem_40e6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6af = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6af)
  store %struct.Memory* %call_40e6af, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40e6b2	 Bytes: 3
  %loadMem_40e6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6b2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6b2)
  store %struct.Memory* %call_40e6b2, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40e6b5	 Bytes: 4
  %loadMem_40e6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6b5 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6b5)
  store %struct.Memory* %call_40e6b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f, %edx	 RIP: 40e6b9	 Bytes: 3
  %loadMem_40e6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6b9 = call %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6b9)
  store %struct.Memory* %call_40e6b9, %struct.Memory** %MEMORY

  ; Code: je .L_40e787	 RIP: 40e6bc	 Bytes: 6
  %loadMem_40e6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6bc = call %struct.Memory* @routine_je_.L_40e787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6bc, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_40e6bc, %struct.Memory** %MEMORY

  %loadBr_40e6bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e6bc = icmp eq i8 %loadBr_40e6bc, 1
  br i1 %cmpBr_40e6bc, label %block_.L_40e787, label %block_40e6c2

block_40e6c2:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e6c2	 Bytes: 4
  %loadMem_40e6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6c2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6c2)
  store %struct.Memory* %call_40e6c2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e6c6	 Bytes: 3
  %loadMem_40e6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6c6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6c6)
  store %struct.Memory* %call_40e6c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e6c9	 Bytes: 7
  %loadMem_40e6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6c9 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6c9)
  store %struct.Memory* %call_40e6c9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e6d0	 Bytes: 4
  %loadMem_40e6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6d0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6d0)
  store %struct.Memory* %call_40e6d0, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40e6d4	 Bytes: 3
  %loadMem_40e6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6d4 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6d4)
  store %struct.Memory* %call_40e6d4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40e6d7	 Bytes: 3
  %loadMem_40e6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6d7 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6d7)
  store %struct.Memory* %call_40e6d7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40e6da	 Bytes: 3
  %loadMem_40e6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6da = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6da)
  store %struct.Memory* %call_40e6da, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40e6dd	 Bytes: 4
  %loadMem_40e6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6dd = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6dd)
  store %struct.Memory* %call_40e6dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 40e6e1	 Bytes: 3
  %loadMem_40e6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6e1 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6e1)
  store %struct.Memory* %call_40e6e1, %struct.Memory** %MEMORY

  ; Code: je .L_40e787	 RIP: 40e6e4	 Bytes: 6
  %loadMem_40e6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6e4 = call %struct.Memory* @routine_je_.L_40e787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6e4, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_40e6e4, %struct.Memory** %MEMORY

  %loadBr_40e6e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e6e4 = icmp eq i8 %loadBr_40e6e4, 1
  br i1 %cmpBr_40e6e4, label %block_.L_40e787, label %block_40e6ea

block_40e6ea:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e6ea	 Bytes: 4
  %loadMem_40e6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6ea)
  store %struct.Memory* %call_40e6ea, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e6ee	 Bytes: 3
  %loadMem_40e6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6ee = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6ee)
  store %struct.Memory* %call_40e6ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e6f1	 Bytes: 7
  %loadMem_40e6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6f1 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6f1)
  store %struct.Memory* %call_40e6f1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e6f8	 Bytes: 4
  %loadMem_40e6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6f8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6f8)
  store %struct.Memory* %call_40e6f8, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40e6fc	 Bytes: 3
  %loadMem_40e6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6fc = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6fc)
  store %struct.Memory* %call_40e6fc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40e6ff	 Bytes: 3
  %loadMem_40e6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e6ff = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e6ff)
  store %struct.Memory* %call_40e6ff, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40e702	 Bytes: 3
  %loadMem_40e702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e702 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e702)
  store %struct.Memory* %call_40e702, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 40e705	 Bytes: 4
  %loadMem_40e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e705 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e705)
  store %struct.Memory* %call_40e705, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7e, %edx	 RIP: 40e709	 Bytes: 3
  %loadMem_40e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e709 = call %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e709)
  store %struct.Memory* %call_40e709, %struct.Memory** %MEMORY

  ; Code: je .L_40e787	 RIP: 40e70c	 Bytes: 6
  %loadMem_40e70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e70c = call %struct.Memory* @routine_je_.L_40e787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e70c, i8* %BRANCH_TAKEN, i64 123, i64 6, i64 6)
  store %struct.Memory* %call_40e70c, %struct.Memory** %MEMORY

  %loadBr_40e70c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e70c = icmp eq i8 %loadBr_40e70c, 1
  br i1 %cmpBr_40e70c, label %block_.L_40e787, label %block_40e712

block_40e712:
  ; Code: movq $0x676fe0, %rdi	 RIP: 40e712	 Bytes: 10
  %loadMem_40e712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e712 = call %struct.Memory* @routine_movq__0x676fe0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e712)
  store %struct.Memory* %call_40e712, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40e71c	 Bytes: 4
  %loadMem_40e71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e71c = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e71c)
  store %struct.Memory* %call_40e71c, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40e720	 Bytes: 4
  %loadMem_40e720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e720 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e720)
  store %struct.Memory* %call_40e720, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40e724	 Bytes: 4
  %loadMem_40e724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e724 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e724)
  store %struct.Memory* %call_40e724, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40e728	 Bytes: 4
  %loadMem_40e728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e728 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e728)
  store %struct.Memory* %call_40e728, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 40e72c	 Bytes: 3
  %loadMem_40e72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e72c = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e72c)
  store %struct.Memory* %call_40e72c, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rdx	 RIP: 40e72f	 Bytes: 7
  %loadMem_40e72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e72f = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e72f)
  store %struct.Memory* %call_40e72f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40e736	 Bytes: 4
  %loadMem_40e736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e736 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e736)
  store %struct.Memory* %call_40e736, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %esi	 RIP: 40e73a	 Bytes: 3
  %loadMem_40e73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e73a = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e73a)
  store %struct.Memory* %call_40e73a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40e73d	 Bytes: 3
  %loadMem_40e73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e73d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e73d)
  store %struct.Memory* %call_40e73d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 40e740	 Bytes: 3
  %loadMem_40e740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e740 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e740)
  store %struct.Memory* %call_40e740, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rdx,1), %esi	 RIP: 40e743	 Bytes: 4
  %loadMem_40e743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e743 = call %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e743)
  store %struct.Memory* %call_40e743, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa8(%rbp)	 RIP: 40e747	 Bytes: 7
  %loadMem_40e747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e747 = call %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e747)
  store %struct.Memory* %call_40e747, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 40e74e	 Bytes: 5
  %loadMem1_40e74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e74e = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e74e, i64 -53966, i64 5, i64 5)
  store %struct.Memory* %call1_40e74e, %struct.Memory** %MEMORY

  %loadMem2_40e74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e74e = load i64, i64* %3
  %call2_40e74e = call %struct.Memory* @sub_401480.strchr_plt(%struct.State* %0, i64  %loadPC_40e74e, %struct.Memory* %loadMem2_40e74e)
  store %struct.Memory* %call2_40e74e, %struct.Memory** %MEMORY

  ; Code: movq $0x676fe0, %rcx	 RIP: 40e753	 Bytes: 10
  %loadMem_40e753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e753 = call %struct.Memory* @routine_movq__0x676fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e753)
  store %struct.Memory* %call_40e753, %struct.Memory** %MEMORY

  ; Code: subq %rcx, %rax	 RIP: 40e75d	 Bytes: 3
  %loadMem_40e75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e75d = call %struct.Memory* @routine_subq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e75d)
  store %struct.Memory* %call_40e75d, %struct.Memory** %MEMORY

  ; Code: movb %al, %r8b	 RIP: 40e760	 Bytes: 3
  %loadMem_40e760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e760 = call %struct.Memory* @routine_movb__al___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e760)
  store %struct.Memory* %call_40e760, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e763	 Bytes: 4
  %loadMem_40e763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e763 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e763)
  store %struct.Memory* %call_40e763, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 40e767	 Bytes: 4
  %loadMem_40e767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e767 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e767)
  store %struct.Memory* %call_40e767, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 40e76b	 Bytes: 7
  %loadMem_40e76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e76b = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e76b)
  store %struct.Memory* %call_40e76b, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40e772	 Bytes: 5
  %loadMem_40e772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e772 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e772)
  store %struct.Memory* %call_40e772, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rdi	 RIP: 40e777	 Bytes: 7
  %loadMem_40e777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e777 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e777)
  store %struct.Memory* %call_40e777, %struct.Memory** %MEMORY

  ; Code: movsbl %r8b, %esi	 RIP: 40e77e	 Bytes: 4
  %loadMem_40e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e77e = call %struct.Memory* @routine_movsbl__r8b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e77e)
  store %struct.Memory* %call_40e77e, %struct.Memory** %MEMORY

  ; Code: callq .P7CountSymbol	 RIP: 40e782	 Bytes: 5
  %loadMem1_40e782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e782 = call %struct.Memory* @routine_callq_.P7CountSymbol(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e782, i64 -37554, i64 5, i64 5)
  store %struct.Memory* %call1_40e782, %struct.Memory** %MEMORY

  %loadMem2_40e782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e782 = load i64, i64* %3
  %call2_40e782 = call %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* %0, i64  %loadPC_40e782, %struct.Memory* %loadMem2_40e782)
  store %struct.Memory* %call2_40e782, %struct.Memory** %MEMORY

  ; Code: .L_40e787:	 RIP: 40e787	 Bytes: 0
  br label %block_.L_40e787
block_.L_40e787:

  ; Code: jmpq .L_40e78c	 RIP: 40e787	 Bytes: 5
  %loadMem_40e787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e787 = call %struct.Memory* @routine_jmpq_.L_40e78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e787, i64 5, i64 5)
  store %struct.Memory* %call_40e787, %struct.Memory** %MEMORY

  br label %block_.L_40e78c

  ; Code: .L_40e78c:	 RIP: 40e78c	 Bytes: 0
block_.L_40e78c:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 40e78c	 Bytes: 6
  %loadMem_40e78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e78c = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e78c)
  store %struct.Memory* %call_40e78c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e792	 Bytes: 3
  %loadMem_40e792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e792 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e792)
  store %struct.Memory* %call_40e792, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 40e795	 Bytes: 6
  %loadMem_40e795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e795 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e795)
  store %struct.Memory* %call_40e795, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e637	 RIP: 40e79b	 Bytes: 5
  %loadMem_40e79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e79b = call %struct.Memory* @routine_jmpq_.L_40e637(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e79b, i64 -356, i64 5)
  store %struct.Memory* %call_40e79b, %struct.Memory** %MEMORY

  br label %block_.L_40e637

  ; Code: .L_40e7a0:	 RIP: 40e7a0	 Bytes: 0
block_.L_40e7a0:

  ; Code: movsd 0x46038(%rip), %xmm0	 RIP: 40e7a0	 Bytes: 8
  %loadMem_40e7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7a0 = call %struct.Memory* @routine_movsd_0x46038__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7a0)
  store %struct.Memory* %call_40e7a0, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40e7a8	 Bytes: 4
  %loadMem_40e7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7a8 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7a8)
  store %struct.Memory* %call_40e7a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40e7ac	 Bytes: 4
  %loadMem_40e7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7ac = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7ac)
  store %struct.Memory* %call_40e7ac, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 40e7b0	 Bytes: 4
  %loadMem_40e7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7b0 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7b0)
  store %struct.Memory* %call_40e7b0, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 40e7b4	 Bytes: 7
  %loadMem_40e7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7b4 = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7b4)
  store %struct.Memory* %call_40e7b4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x90(%rbp), %xmm1	 RIP: 40e7bb	 Bytes: 8
  %loadMem_40e7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7bb = call %struct.Memory* @routine_cvtss2sd_MINUS0x90__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7bb)
  store %struct.Memory* %call_40e7bb, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 40e7c3	 Bytes: 4
  %loadMem_40e7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7c3 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7c3)
  store %struct.Memory* %call_40e7c3, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 40e7c7	 Bytes: 4
  %loadMem_40e7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7c7 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7c7)
  store %struct.Memory* %call_40e7c7, %struct.Memory** %MEMORY

  ; Code: callq .FScale	 RIP: 40e7cb	 Bytes: 5
  %loadMem1_40e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e7cb = call %struct.Memory* @routine_callq_.FScale(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e7cb, i64 276501, i64 5, i64 5)
  store %struct.Memory* %call1_40e7cb, %struct.Memory** %MEMORY

  %loadMem2_40e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e7cb = load i64, i64* %3
  %call2_40e7cb = call %struct.Memory* @sub_451fe0.FScale(%struct.State* %0, i64  %loadPC_40e7cb, %struct.Memory* %loadMem2_40e7cb)
  store %struct.Memory* %call2_40e7cb, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40e7d0	 Bytes: 4
  %loadMem_40e7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7d0 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7d0)
  store %struct.Memory* %call_40e7d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40e7d4	 Bytes: 4
  %loadMem_40e7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7d4 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7d4)
  store %struct.Memory* %call_40e7d4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 40e7d8	 Bytes: 4
  %loadMem_40e7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7d8 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7d8)
  store %struct.Memory* %call_40e7d8, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %esi	 RIP: 40e7dc	 Bytes: 7
  %loadMem_40e7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7dc = call %struct.Memory* @routine_movl_0x677060___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7dc)
  store %struct.Memory* %call_40e7dc, %struct.Memory** %MEMORY

  ; Code: callq .FSum	 RIP: 40e7e3	 Bytes: 5
  %loadMem1_40e7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e7e3 = call %struct.Memory* @routine_callq_.FSum(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e7e3, i64 276653, i64 5, i64 5)
  store %struct.Memory* %call1_40e7e3, %struct.Memory** %MEMORY

  %loadMem2_40e7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e7e3 = load i64, i64* %3
  %call2_40e7e3 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64  %loadPC_40e7e3, %struct.Memory* %loadMem2_40e7e3)
  store %struct.Memory* %call2_40e7e3, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40e7e8	 Bytes: 4
  %loadMem_40e7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7e8 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7e8)
  store %struct.Memory* %call_40e7e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40e7ec	 Bytes: 4
  %loadMem_40e7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7ec = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7ec)
  store %struct.Memory* %call_40e7ec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40e7f0	 Bytes: 5
  %loadMem_40e7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7f0 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7f0)
  store %struct.Memory* %call_40e7f0, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40e7f5	 Bytes: 3
  %loadMem_40e7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7f5 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7f5)
  store %struct.Memory* %call_40e7f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e7f8	 Bytes: 3
  %loadMem_40e7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7f8)
  store %struct.Memory* %call_40e7f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 40e7fb	 Bytes: 3
  %loadMem_40e7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7fb = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7fb)
  store %struct.Memory* %call_40e7fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e61d	 RIP: 40e7fe	 Bytes: 5
  %loadMem_40e7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e7fe = call %struct.Memory* @routine_jmpq_.L_40e61d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e7fe, i64 -481, i64 5)
  store %struct.Memory* %call_40e7fe, %struct.Memory** %MEMORY

  br label %block_.L_40e61d

  ; Code: .L_40e803:	 RIP: 40e803	 Bytes: 0
block_.L_40e803:

  ; Code: movl $0x2, %edi	 RIP: 40e803	 Bytes: 5
  %loadMem_40e803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e803 = call %struct.Memory* @routine_movl__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e803)
  store %struct.Memory* %call_40e803, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rdx	 RIP: 40e808	 Bytes: 4
  %loadMem_40e808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e808 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e808)
  store %struct.Memory* %call_40e808, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rcx	 RIP: 40e80c	 Bytes: 4
  %loadMem_40e80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e80c = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e80c)
  store %struct.Memory* %call_40e80c, %struct.Memory** %MEMORY

  ; Code: leaq -0x40(%rbp), %r8	 RIP: 40e810	 Bytes: 4
  %loadMem_40e810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e810 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e810)
  store %struct.Memory* %call_40e810, %struct.Memory** %MEMORY

  ; Code: leaq -0x48(%rbp), %r9	 RIP: 40e814	 Bytes: 4
  %loadMem_40e814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e814 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e814)
  store %struct.Memory* %call_40e814, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40e818	 Bytes: 4
  %loadMem_40e818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e818 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e818)
  store %struct.Memory* %call_40e818, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %esi	 RIP: 40e81c	 Bytes: 6
  %loadMem_40e81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e81c = call %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e81c)
  store %struct.Memory* %call_40e81c, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Matrix	 RIP: 40e822	 Bytes: 5
  %loadMem1_40e822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e822 = call %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e822, i64 -28562, i64 5, i64 5)
  store %struct.Memory* %call1_40e822, %struct.Memory** %MEMORY

  %loadMem2_40e822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e822 = load i64, i64* %3
  %call2_40e822 = call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64  %loadPC_40e822, %struct.Memory* %loadMem2_40e822)
  store %struct.Memory* %call2_40e822, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 40e827	 Bytes: 4
  %loadMem_40e827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e827 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e827)
  store %struct.Memory* %call_40e827, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rcx	 RIP: 40e82b	 Bytes: 4
  %loadMem_40e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e82b = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e82b)
  store %struct.Memory* %call_40e82b, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %r8	 RIP: 40e82f	 Bytes: 4
  %loadMem_40e82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e82f = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e82f)
  store %struct.Memory* %call_40e82f, %struct.Memory** %MEMORY

  ; Code: leaq -0x68(%rbp), %r9	 RIP: 40e833	 Bytes: 4
  %loadMem_40e833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e833 = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e833)
  store %struct.Memory* %call_40e833, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 40e837	 Bytes: 4
  %loadMem_40e837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e837 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e837)
  store %struct.Memory* %call_40e837, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40e83b	 Bytes: 4
  %loadMem_40e83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e83b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e83b)
  store %struct.Memory* %call_40e83b, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %esi	 RIP: 40e83f	 Bytes: 3
  %loadMem_40e83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e83f = call %struct.Memory* @routine_movl_0x18__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e83f)
  store %struct.Memory* %call_40e83f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40e842	 Bytes: 3
  %loadMem_40e842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e842 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e842)
  store %struct.Memory* %call_40e842, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40e845	 Bytes: 4
  %loadMem_40e845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e845 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e845)
  store %struct.Memory* %call_40e845, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %edi	 RIP: 40e849	 Bytes: 6
  %loadMem_40e849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e849 = call %struct.Memory* @routine_movl_0x88__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e849)
  store %struct.Memory* %call_40e849, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0xac(%rbp)	 RIP: 40e84f	 Bytes: 6
  %loadMem_40e84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e84f = call %struct.Memory* @routine_movl__edi__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e84f)
  store %struct.Memory* %call_40e84f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 40e855	 Bytes: 2
  %loadMem_40e855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e855 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e855)
  store %struct.Memory* %call_40e855, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %esi	 RIP: 40e857	 Bytes: 6
  %loadMem_40e857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e857 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e857)
  store %struct.Memory* %call_40e857, %struct.Memory** %MEMORY

  ; Code: callq .AllocShadowMatrix	 RIP: 40e85d	 Bytes: 5
  %loadMem1_40e85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40e85d = call %struct.Memory* @routine_callq_.AllocShadowMatrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40e85d, i64 -28301, i64 5, i64 5)
  store %struct.Memory* %call1_40e85d, %struct.Memory** %MEMORY

  %loadMem2_40e85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40e85d = load i64, i64* %3
  %call2_40e85d = call %struct.Memory* @sub_4079d0.AllocShadowMatrix(%struct.State* %0, i64  %loadPC_40e85d, %struct.Memory* %loadMem2_40e85d)
  store %struct.Memory* %call2_40e85d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 40e862	 Bytes: 4
  %loadMem_40e862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e862 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e862)
  store %struct.Memory* %call_40e862, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e866	 Bytes: 4
  %loadMem_40e866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e866 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e866)
  store %struct.Memory* %call_40e866, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e86a	 Bytes: 3
  %loadMem_40e86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e86a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e86a)
  store %struct.Memory* %call_40e86a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x10(%rax)	 RIP: 40e86d	 Bytes: 7
  %loadMem_40e86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e86d = call %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e86d)
  store %struct.Memory* %call_40e86d, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40e874	 Bytes: 4
  %loadMem_40e874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e874 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e874)
  store %struct.Memory* %call_40e874, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e878	 Bytes: 3
  %loadMem_40e878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e878 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e878)
  store %struct.Memory* %call_40e878, %struct.Memory** %MEMORY

  ; Code: movb $0x4, 0x4(%rax)	 RIP: 40e87b	 Bytes: 4
  %loadMem_40e87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e87b = call %struct.Memory* @routine_movb__0x4__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e87b)
  store %struct.Memory* %call_40e87b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40e87f	 Bytes: 4
  %loadMem_40e87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e87f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e87f)
  store %struct.Memory* %call_40e87f, %struct.Memory** %MEMORY

  ; Code: movl 0x150(%rax), %esi	 RIP: 40e883	 Bytes: 6
  %loadMem_40e883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e883 = call %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e883)
  store %struct.Memory* %call_40e883, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e889	 Bytes: 4
  %loadMem_40e889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e889 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e889)
  store %struct.Memory* %call_40e889, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e88d	 Bytes: 3
  %loadMem_40e88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e88d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e88d)
  store %struct.Memory* %call_40e88d, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax)	 RIP: 40e890	 Bytes: 2
  %loadMem_40e890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e890 = call %struct.Memory* @routine_movl__esi____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e890)
  store %struct.Memory* %call_40e890, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40e892	 Bytes: 4
  %loadMem_40e892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e892 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e892)
  store %struct.Memory* %call_40e892, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e896	 Bytes: 3
  %loadMem_40e896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e896 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e896)
  store %struct.Memory* %call_40e896, %struct.Memory** %MEMORY

  ; Code: movb $0x5, (%rax)	 RIP: 40e899	 Bytes: 3
  %loadMem_40e899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e899 = call %struct.Memory* @routine_movb__0x5____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e899)
  store %struct.Memory* %call_40e899, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e89c	 Bytes: 4
  %loadMem_40e89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e89c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e89c)
  store %struct.Memory* %call_40e89c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e8a0	 Bytes: 3
  %loadMem_40e8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8a0 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8a0)
  store %struct.Memory* %call_40e8a0, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0xc(%rax)	 RIP: 40e8a3	 Bytes: 7
  %loadMem_40e8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8a3 = call %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8a3)
  store %struct.Memory* %call_40e8a3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e8aa	 Bytes: 4
  %loadMem_40e8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8aa = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8aa)
  store %struct.Memory* %call_40e8aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e8ae	 Bytes: 3
  %loadMem_40e8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8ae = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8ae)
  store %struct.Memory* %call_40e8ae, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 40e8b1	 Bytes: 7
  %loadMem_40e8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8b1 = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8b1)
  store %struct.Memory* %call_40e8b1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40e8b8	 Bytes: 4
  %loadMem_40e8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8b8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8b8)
  store %struct.Memory* %call_40e8b8, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e8bc	 Bytes: 3
  %loadMem_40e8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8bc = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8bc)
  store %struct.Memory* %call_40e8bc, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 40e8bf	 Bytes: 7
  %loadMem_40e8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8bf = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8bf)
  store %struct.Memory* %call_40e8bf, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40e8c6	 Bytes: 4
  %loadMem_40e8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8c6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8c6)
  store %struct.Memory* %call_40e8c6, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40e8ca	 Bytes: 4
  %loadMem_40e8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8ca = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8ca)
  store %struct.Memory* %call_40e8ca, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 40e8ce	 Bytes: 6
  %loadMem_40e8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8ce = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8ce)
  store %struct.Memory* %call_40e8ce, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40e8d4	 Bytes: 4
  %loadMem_40e8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8d4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8d4)
  store %struct.Memory* %call_40e8d4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e8d8	 Bytes: 3
  %loadMem_40e8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8d8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8d8)
  store %struct.Memory* %call_40e8d8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x3(%rax)	 RIP: 40e8db	 Bytes: 4
  %loadMem_40e8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8db = call %struct.Memory* @routine_movb__0x0__0x3__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8db)
  store %struct.Memory* %call_40e8db, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40e8df	 Bytes: 4
  %loadMem_40e8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8df = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8df)
  store %struct.Memory* %call_40e8df, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e8e3	 Bytes: 3
  %loadMem_40e8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8e3 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8e3)
  store %struct.Memory* %call_40e8e3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x2(%rax)	 RIP: 40e8e6	 Bytes: 4
  %loadMem_40e8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8e6 = call %struct.Memory* @routine_movb__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8e6)
  store %struct.Memory* %call_40e8e6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x80(%rbp)	 RIP: 40e8ea	 Bytes: 7
  %loadMem_40e8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8ea = call %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8ea)
  store %struct.Memory* %call_40e8ea, %struct.Memory** %MEMORY

  ; Code: .L_40e8f1:	 RIP: 40e8f1	 Bytes: 0
  br label %block_.L_40e8f1
block_.L_40e8f1:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40e8f1	 Bytes: 3
  %loadMem_40e8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8f1 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8f1)
  store %struct.Memory* %call_40e8f1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40e8f4	 Bytes: 4
  %loadMem_40e8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8f4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8f4)
  store %struct.Memory* %call_40e8f4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40e8f8	 Bytes: 6
  %loadMem_40e8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8f8 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8f8)
  store %struct.Memory* %call_40e8f8, %struct.Memory** %MEMORY

  ; Code: jg .L_40e975	 RIP: 40e8fe	 Bytes: 6
  %loadMem_40e8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e8fe = call %struct.Memory* @routine_jg_.L_40e975(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e8fe, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_40e8fe, %struct.Memory** %MEMORY

  %loadBr_40e8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e8fe = icmp eq i8 %loadBr_40e8fe, 1
  br i1 %cmpBr_40e8fe, label %block_.L_40e975, label %block_40e904

block_40e904:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40e904	 Bytes: 4
  %loadMem_40e904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e904 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e904)
  store %struct.Memory* %call_40e904, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e908	 Bytes: 3
  %loadMem_40e908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e908 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e908)
  store %struct.Memory* %call_40e908, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e90b	 Bytes: 4
  %loadMem_40e90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e90b = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e90b)
  store %struct.Memory* %call_40e90b, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40e90f	 Bytes: 7
  %loadMem_40e90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e90f = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e90f)
  store %struct.Memory* %call_40e90f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40e916	 Bytes: 4
  %loadMem_40e916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e916 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e916)
  store %struct.Memory* %call_40e916, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e91a	 Bytes: 3
  %loadMem_40e91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e91a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e91a)
  store %struct.Memory* %call_40e91a, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e91d	 Bytes: 4
  %loadMem_40e91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e91d = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e91d)
  store %struct.Memory* %call_40e91d, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40e921	 Bytes: 7
  %loadMem_40e921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e921 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e921)
  store %struct.Memory* %call_40e921, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40e928	 Bytes: 4
  %loadMem_40e928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e928 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e928)
  store %struct.Memory* %call_40e928, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e92c	 Bytes: 3
  %loadMem_40e92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e92c = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e92c)
  store %struct.Memory* %call_40e92c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e92f	 Bytes: 4
  %loadMem_40e92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e92f = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e92f)
  store %struct.Memory* %call_40e92f, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40e933	 Bytes: 7
  %loadMem_40e933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e933 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e933)
  store %struct.Memory* %call_40e933, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40e93a	 Bytes: 4
  %loadMem_40e93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e93a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e93a)
  store %struct.Memory* %call_40e93a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e93e	 Bytes: 3
  %loadMem_40e93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e93e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e93e)
  store %struct.Memory* %call_40e93e, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e941	 Bytes: 4
  %loadMem_40e941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e941 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e941)
  store %struct.Memory* %call_40e941, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40e945	 Bytes: 4
  %loadMem_40e945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e945 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e945)
  store %struct.Memory* %call_40e945, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40e949	 Bytes: 4
  %loadMem_40e949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e949 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e949)
  store %struct.Memory* %call_40e949, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e94d	 Bytes: 3
  %loadMem_40e94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e94d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e94d)
  store %struct.Memory* %call_40e94d, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e950	 Bytes: 4
  %loadMem_40e950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e950 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e950)
  store %struct.Memory* %call_40e950, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40e954	 Bytes: 4
  %loadMem_40e954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e954 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e954)
  store %struct.Memory* %call_40e954, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 40e958	 Bytes: 4
  %loadMem_40e958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e958 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e958)
  store %struct.Memory* %call_40e958, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40e95c	 Bytes: 3
  %loadMem_40e95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e95c = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e95c)
  store %struct.Memory* %call_40e95c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40e95f	 Bytes: 4
  %loadMem_40e95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e95f = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e95f)
  store %struct.Memory* %call_40e95f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40e963	 Bytes: 4
  %loadMem_40e963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e963 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e963)
  store %struct.Memory* %call_40e963, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40e967	 Bytes: 3
  %loadMem_40e967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e967 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e967)
  store %struct.Memory* %call_40e967, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40e96a	 Bytes: 3
  %loadMem_40e96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e96a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e96a)
  store %struct.Memory* %call_40e96a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 40e96d	 Bytes: 3
  %loadMem_40e96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e96d = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e96d)
  store %struct.Memory* %call_40e96d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e8f1	 RIP: 40e970	 Bytes: 5
  %loadMem_40e970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e970 = call %struct.Memory* @routine_jmpq_.L_40e8f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e970, i64 -127, i64 5)
  store %struct.Memory* %call_40e970, %struct.Memory** %MEMORY

  br label %block_.L_40e8f1

  ; Code: .L_40e975:	 RIP: 40e975	 Bytes: 0
block_.L_40e975:

  ; Code: movl $0x1, -0x7c(%rbp)	 RIP: 40e975	 Bytes: 7
  %loadMem_40e975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e975 = call %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e975)
  store %struct.Memory* %call_40e975, %struct.Memory** %MEMORY

  ; Code: .L_40e97c:	 RIP: 40e97c	 Bytes: 0
  br label %block_.L_40e97c
block_.L_40e97c:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40e97c	 Bytes: 3
  %loadMem_40e97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e97c = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e97c)
  store %struct.Memory* %call_40e97c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40e97f	 Bytes: 4
  %loadMem_40e97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e97f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e97f)
  store %struct.Memory* %call_40e97f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 40e983	 Bytes: 3
  %loadMem_40e983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e983 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e983)
  store %struct.Memory* %call_40e983, %struct.Memory** %MEMORY

  ; Code: jg .L_40f739	 RIP: 40e986	 Bytes: 6
  %loadMem_40e986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e986 = call %struct.Memory* @routine_jg_.L_40f739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e986, i8* %BRANCH_TAKEN, i64 3507, i64 6, i64 6)
  store %struct.Memory* %call_40e986, %struct.Memory** %MEMORY

  %loadBr_40e986 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40e986 = icmp eq i8 %loadBr_40e986, 1
  br i1 %cmpBr_40e986, label %block_.L_40f739, label %block_40e98c

block_40e98c:
  ; Code: movl $0x2, %eax	 RIP: 40e98c	 Bytes: 5
  %loadMem_40e98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e98c = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e98c)
  store %struct.Memory* %call_40e98c, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 40e991	 Bytes: 3
  %loadMem_40e991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e991 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e991)
  store %struct.Memory* %call_40e991, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 40e994	 Bytes: 6
  %loadMem_40e994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e994 = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e994)
  store %struct.Memory* %call_40e994, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40e99a	 Bytes: 2
  %loadMem_40e99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e99a = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e99a)
  store %struct.Memory* %call_40e99a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40e99c	 Bytes: 1
  %loadMem_40e99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e99c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e99c)
  store %struct.Memory* %call_40e99c, %struct.Memory** %MEMORY

  ; Code: movl -0xb0(%rbp), %ecx	 RIP: 40e99d	 Bytes: 6
  %loadMem_40e99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e99d = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e99d)
  store %struct.Memory* %call_40e99d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40e9a3	 Bytes: 2
  %loadMem_40e9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9a3 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9a3)
  store %struct.Memory* %call_40e9a3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 40e9a5	 Bytes: 6
  %loadMem_40e9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9a5 = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9a5)
  store %struct.Memory* %call_40e9a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x94(%rbp)	 RIP: 40e9ab	 Bytes: 7
  %loadMem_40e9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9ab = call %struct.Memory* @routine_cmpl__0x0__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9ab)
  store %struct.Memory* %call_40e9ab, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 40e9b2	 Bytes: 4
  %loadMem_40e9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9b2 = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9b2)
  store %struct.Memory* %call_40e9b2, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 40e9b6	 Bytes: 4
  %loadMem_40e9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9b6 = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9b6)
  store %struct.Memory* %call_40e9b6, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 40e9ba	 Bytes: 4
  %loadMem_40e9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9ba = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9ba)
  store %struct.Memory* %call_40e9ba, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edx	 RIP: 40e9be	 Bytes: 4
  %loadMem_40e9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9be = call %struct.Memory* @routine_movzbl__sil___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9be)
  store %struct.Memory* %call_40e9be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x98(%rbp)	 RIP: 40e9c2	 Bytes: 6
  %loadMem_40e9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9c2 = call %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9c2)
  store %struct.Memory* %call_40e9c2, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40e9c8	 Bytes: 4
  %loadMem_40e9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9c8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9c8)
  store %struct.Memory* %call_40e9c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %r8	 RIP: 40e9cc	 Bytes: 7
  %loadMem_40e9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9cc = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9cc)
  store %struct.Memory* %call_40e9cc, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40e9d3	 Bytes: 4
  %loadMem_40e9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9d3 = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9d3)
  store %struct.Memory* %call_40e9d3, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 40e9d7	 Bytes: 6
  %loadMem_40e9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9d7 = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9d7)
  store %struct.Memory* %call_40e9d7, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40e9dd	 Bytes: 4
  %loadMem_40e9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9dd = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9dd)
  store %struct.Memory* %call_40e9dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %r8	 RIP: 40e9e1	 Bytes: 7
  %loadMem_40e9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9e1 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9e1)
  store %struct.Memory* %call_40e9e1, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40e9e8	 Bytes: 4
  %loadMem_40e9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9e8 = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9e8)
  store %struct.Memory* %call_40e9e8, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 40e9ec	 Bytes: 6
  %loadMem_40e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9ec = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9ec)
  store %struct.Memory* %call_40e9ec, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40e9f2	 Bytes: 4
  %loadMem_40e9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9f2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9f2)
  store %struct.Memory* %call_40e9f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %r8	 RIP: 40e9f6	 Bytes: 7
  %loadMem_40e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9f6 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9f6)
  store %struct.Memory* %call_40e9f6, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40e9fd	 Bytes: 4
  %loadMem_40e9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40e9fd = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40e9fd)
  store %struct.Memory* %call_40e9fd, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rdi)	 RIP: 40ea01	 Bytes: 6
  %loadMem_40ea01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea01 = call %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea01)
  store %struct.Memory* %call_40ea01, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40ea07	 Bytes: 4
  %loadMem_40ea07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea07 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea07)
  store %struct.Memory* %call_40ea07, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %r8	 RIP: 40ea0b	 Bytes: 4
  %loadMem_40ea0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea0b = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea0b)
  store %struct.Memory* %call_40ea0b, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40ea0f	 Bytes: 4
  %loadMem_40ea0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea0f = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea0f)
  store %struct.Memory* %call_40ea0f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rdi)	 RIP: 40ea13	 Bytes: 3
  %loadMem_40ea13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea13 = call %struct.Memory* @routine_movb__0x0____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea13)
  store %struct.Memory* %call_40ea13, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 40ea16	 Bytes: 4
  %loadMem_40ea16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea16 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea16)
  store %struct.Memory* %call_40ea16, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %r8	 RIP: 40ea1a	 Bytes: 4
  %loadMem_40ea1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea1a = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea1a)
  store %struct.Memory* %call_40ea1a, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40ea1e	 Bytes: 4
  %loadMem_40ea1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea1e = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea1e)
  store %struct.Memory* %call_40ea1e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rdi)	 RIP: 40ea22	 Bytes: 3
  %loadMem_40ea22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea22 = call %struct.Memory* @routine_movb__0x0____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea22)
  store %struct.Memory* %call_40ea22, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdi	 RIP: 40ea25	 Bytes: 4
  %loadMem_40ea25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea25 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea25)
  store %struct.Memory* %call_40ea25, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %r8	 RIP: 40ea29	 Bytes: 4
  %loadMem_40ea29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea29 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea29)
  store %struct.Memory* %call_40ea29, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 40ea2d	 Bytes: 4
  %loadMem_40ea2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea2d = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea2d)
  store %struct.Memory* %call_40ea2d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rdi)	 RIP: 40ea31	 Bytes: 3
  %loadMem_40ea31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea31 = call %struct.Memory* @routine_movb__0x0____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea31)
  store %struct.Memory* %call_40ea31, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x80(%rbp)	 RIP: 40ea34	 Bytes: 7
  %loadMem_40ea34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea34 = call %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea34)
  store %struct.Memory* %call_40ea34, %struct.Memory** %MEMORY

  ; Code: .L_40ea3b:	 RIP: 40ea3b	 Bytes: 0
  br label %block_.L_40ea3b
block_.L_40ea3b:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40ea3b	 Bytes: 3
  %loadMem_40ea3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea3b = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea3b)
  store %struct.Memory* %call_40ea3b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40ea3e	 Bytes: 4
  %loadMem_40ea3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea3e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea3e)
  store %struct.Memory* %call_40ea3e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40ea42	 Bytes: 6
  %loadMem_40ea42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea42 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea42)
  store %struct.Memory* %call_40ea42, %struct.Memory** %MEMORY

  ; Code: jg .L_40f358	 RIP: 40ea48	 Bytes: 6
  %loadMem_40ea48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea48 = call %struct.Memory* @routine_jg_.L_40f358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea48, i8* %BRANCH_TAKEN, i64 2320, i64 6, i64 6)
  store %struct.Memory* %call_40ea48, %struct.Memory** %MEMORY

  %loadBr_40ea48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ea48 = icmp eq i8 %loadBr_40ea48, 1
  br i1 %cmpBr_40ea48, label %block_.L_40f358, label %block_40ea4e

block_40ea4e:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ea4e	 Bytes: 4
  %loadMem_40ea4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea4e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea4e)
  store %struct.Memory* %call_40ea4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ea52	 Bytes: 7
  %loadMem_40ea52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea52 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea52)
  store %struct.Memory* %call_40ea52, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ea59	 Bytes: 4
  %loadMem_40ea59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea59 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea59)
  store %struct.Memory* %call_40ea59, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ea5d	 Bytes: 4
  %loadMem_40ea5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea5d = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea5d)
  store %struct.Memory* %call_40ea5d, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40ea61	 Bytes: 7
  %loadMem_40ea61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea61 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea61)
  store %struct.Memory* %call_40ea61, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 40ea68	 Bytes: 4
  %loadMem_40ea68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea68 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea68)
  store %struct.Memory* %call_40ea68, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40ea6c	 Bytes: 4
  %loadMem_40ea6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea6c = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea6c)
  store %struct.Memory* %call_40ea6c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ea70	 Bytes: 4
  %loadMem_40ea70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea70 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea70)
  store %struct.Memory* %call_40ea70, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ea74	 Bytes: 4
  %loadMem_40ea74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea74 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea74)
  store %struct.Memory* %call_40ea74, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40ea78	 Bytes: 4
  %loadMem_40ea78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea78 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea78)
  store %struct.Memory* %call_40ea78, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ea7c	 Bytes: 4
  %loadMem_40ea7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea7c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea7c)
  store %struct.Memory* %call_40ea7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40ea80	 Bytes: 7
  %loadMem_40ea80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea80 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea80)
  store %struct.Memory* %call_40ea80, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ea87	 Bytes: 4
  %loadMem_40ea87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea87 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea87)
  store %struct.Memory* %call_40ea87, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ea8b	 Bytes: 3
  %loadMem_40ea8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea8b = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea8b)
  store %struct.Memory* %call_40ea8b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ea8e	 Bytes: 3
  %loadMem_40ea8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea8e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea8e)
  store %struct.Memory* %call_40ea8e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ea91	 Bytes: 3
  %loadMem_40ea91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea91 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea91)
  store %struct.Memory* %call_40ea91, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40ea94	 Bytes: 7
  %loadMem_40ea94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea94 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea94)
  store %struct.Memory* %call_40ea94, %struct.Memory** %MEMORY

  ; Code: jle .L_40eb4c	 RIP: 40ea9b	 Bytes: 6
  %loadMem_40ea9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ea9b = call %struct.Memory* @routine_jle_.L_40eb4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ea9b, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_40ea9b, %struct.Memory** %MEMORY

  %loadBr_40ea9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ea9b = icmp eq i8 %loadBr_40ea9b, 1
  br i1 %cmpBr_40ea9b, label %block_.L_40eb4c, label %block_40eaa1

block_40eaa1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40eaa1	 Bytes: 4
  %loadMem_40eaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaa1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaa1)
  store %struct.Memory* %call_40eaa1, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40eaa5	 Bytes: 7
  %loadMem_40eaa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaa5 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaa5)
  store %struct.Memory* %call_40eaa5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40eaac	 Bytes: 3
  %loadMem_40eaac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaac = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaac)
  store %struct.Memory* %call_40eaac, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %ecx	 RIP: 40eaaf	 Bytes: 3
  %loadMem_40eaaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaaf = call %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaaf)
  store %struct.Memory* %call_40eaaf, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40eab2	 Bytes: 3
  %loadMem_40eab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eab2 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eab2)
  store %struct.Memory* %call_40eab2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40eab5	 Bytes: 3
  %loadMem_40eab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eab5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eab5)
  store %struct.Memory* %call_40eab5, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rdx,4)	 RIP: 40eab8	 Bytes: 7
  %loadMem_40eab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eab8 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eab8)
  store %struct.Memory* %call_40eab8, %struct.Memory** %MEMORY

  ; Code: jle .L_40eb4c	 RIP: 40eabf	 Bytes: 6
  %loadMem_40eabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eabf = call %struct.Memory* @routine_jle_.L_40eb4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eabf, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_40eabf, %struct.Memory** %MEMORY

  %loadBr_40eabf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eabf = icmp eq i8 %loadBr_40eabf, 1
  br i1 %cmpBr_40eabf, label %block_.L_40eb4c, label %block_40eac5

block_40eac5:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40eac5	 Bytes: 4
  %loadMem_40eac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eac5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eac5)
  store %struct.Memory* %call_40eac5, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40eac9	 Bytes: 7
  %loadMem_40eac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eac9 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eac9)
  store %struct.Memory* %call_40eac9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ead0	 Bytes: 4
  %loadMem_40ead0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ead0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ead0)
  store %struct.Memory* %call_40ead0, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ead4	 Bytes: 3
  %loadMem_40ead4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ead4 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ead4)
  store %struct.Memory* %call_40ead4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ead7	 Bytes: 3
  %loadMem_40ead7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ead7 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ead7)
  store %struct.Memory* %call_40ead7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40eada	 Bytes: 3
  %loadMem_40eada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eada = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eada)
  store %struct.Memory* %call_40eada, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40eadd	 Bytes: 3
  %loadMem_40eadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eadd = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eadd)
  store %struct.Memory* %call_40eadd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40eae0	 Bytes: 4
  %loadMem_40eae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eae0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eae0)
  store %struct.Memory* %call_40eae0, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40eae4	 Bytes: 7
  %loadMem_40eae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eae4 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eae4)
  store %struct.Memory* %call_40eae4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40eaeb	 Bytes: 3
  %loadMem_40eaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaeb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaeb)
  store %struct.Memory* %call_40eaeb, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %esi	 RIP: 40eaee	 Bytes: 3
  %loadMem_40eaee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaee = call %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaee)
  store %struct.Memory* %call_40eaee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40eaf1	 Bytes: 3
  %loadMem_40eaf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaf1 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaf1)
  store %struct.Memory* %call_40eaf1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40eaf4	 Bytes: 3
  %loadMem_40eaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaf4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaf4)
  store %struct.Memory* %call_40eaf4, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40eaf7	 Bytes: 3
  %loadMem_40eaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eaf7 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eaf7)
  store %struct.Memory* %call_40eaf7, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40eafa	 Bytes: 6
  %loadMem_40eafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eafa = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eafa)
  store %struct.Memory* %call_40eafa, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40eb00	 Bytes: 4
  %loadMem_40eb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb00 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb00)
  store %struct.Memory* %call_40eb00, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40eb04	 Bytes: 7
  %loadMem_40eb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb04 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb04)
  store %struct.Memory* %call_40eb04, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40eb0b	 Bytes: 4
  %loadMem_40eb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb0b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb0b)
  store %struct.Memory* %call_40eb0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40eb0f	 Bytes: 4
  %loadMem_40eb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb0f = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb0f)
  store %struct.Memory* %call_40eb0f, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40eb13	 Bytes: 3
  %loadMem_40eb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb13 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb13)
  store %struct.Memory* %call_40eb13, %struct.Memory** %MEMORY

  ; Code: jle .L_40eb4c	 RIP: 40eb16	 Bytes: 6
  %loadMem_40eb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb16 = call %struct.Memory* @routine_jle_.L_40eb4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb16, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40eb16, %struct.Memory** %MEMORY

  %loadBr_40eb16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eb16 = icmp eq i8 %loadBr_40eb16, 1
  br i1 %cmpBr_40eb16, label %block_.L_40eb4c, label %block_40eb1c

block_40eb1c:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40eb1c	 Bytes: 6
  %loadMem_40eb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb1c = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb1c)
  store %struct.Memory* %call_40eb1c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40eb22	 Bytes: 4
  %loadMem_40eb22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb22 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb22)
  store %struct.Memory* %call_40eb22, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40eb26	 Bytes: 7
  %loadMem_40eb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb26 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb26)
  store %struct.Memory* %call_40eb26, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40eb2d	 Bytes: 4
  %loadMem_40eb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb2d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb2d)
  store %struct.Memory* %call_40eb2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40eb31	 Bytes: 4
  %loadMem_40eb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb31 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb31)
  store %struct.Memory* %call_40eb31, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40eb35	 Bytes: 3
  %loadMem_40eb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb35 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb35)
  store %struct.Memory* %call_40eb35, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40eb38	 Bytes: 4
  %loadMem_40eb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb38 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb38)
  store %struct.Memory* %call_40eb38, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40eb3c	 Bytes: 4
  %loadMem_40eb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb3c = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb3c)
  store %struct.Memory* %call_40eb3c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40eb40	 Bytes: 4
  %loadMem_40eb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb40 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb40)
  store %struct.Memory* %call_40eb40, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40eb44	 Bytes: 4
  %loadMem_40eb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb44 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb44)
  store %struct.Memory* %call_40eb44, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%rdx,1)	 RIP: 40eb48	 Bytes: 4
  %loadMem_40eb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb48 = call %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb48)
  store %struct.Memory* %call_40eb48, %struct.Memory** %MEMORY

  ; Code: .L_40eb4c:	 RIP: 40eb4c	 Bytes: 0
  br label %block_.L_40eb4c
block_.L_40eb4c:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40eb4c	 Bytes: 4
  %loadMem_40eb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb4c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb4c)
  store %struct.Memory* %call_40eb4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40eb50	 Bytes: 7
  %loadMem_40eb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb50 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb50)
  store %struct.Memory* %call_40eb50, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40eb57	 Bytes: 4
  %loadMem_40eb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb57 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb57)
  store %struct.Memory* %call_40eb57, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40eb5b	 Bytes: 3
  %loadMem_40eb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb5b = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb5b)
  store %struct.Memory* %call_40eb5b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40eb5e	 Bytes: 3
  %loadMem_40eb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb5e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb5e)
  store %struct.Memory* %call_40eb5e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40eb61	 Bytes: 3
  %loadMem_40eb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb61 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb61)
  store %struct.Memory* %call_40eb61, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40eb64	 Bytes: 7
  %loadMem_40eb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb64 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb64)
  store %struct.Memory* %call_40eb64, %struct.Memory** %MEMORY

  ; Code: jle .L_40ec3c	 RIP: 40eb6b	 Bytes: 6
  %loadMem_40eb6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb6b = call %struct.Memory* @routine_jle_.L_40ec3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb6b, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_40eb6b, %struct.Memory** %MEMORY

  %loadBr_40eb6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eb6b = icmp eq i8 %loadBr_40eb6b, 1
  br i1 %cmpBr_40eb6b, label %block_.L_40ec3c, label %block_40eb71

block_40eb71:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40eb71	 Bytes: 4
  %loadMem_40eb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb71 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb71)
  store %struct.Memory* %call_40eb71, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40eb75	 Bytes: 7
  %loadMem_40eb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb75 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb75)
  store %struct.Memory* %call_40eb75, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40eb7c	 Bytes: 4
  %loadMem_40eb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb7c = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb7c)
  store %struct.Memory* %call_40eb7c, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %ecx	 RIP: 40eb80	 Bytes: 3
  %loadMem_40eb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb80 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb80)
  store %struct.Memory* %call_40eb80, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40eb83	 Bytes: 3
  %loadMem_40eb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb83 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb83)
  store %struct.Memory* %call_40eb83, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40eb86	 Bytes: 3
  %loadMem_40eb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb86 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb86)
  store %struct.Memory* %call_40eb86, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rdx,4)	 RIP: 40eb89	 Bytes: 7
  %loadMem_40eb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb89 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb89)
  store %struct.Memory* %call_40eb89, %struct.Memory** %MEMORY

  ; Code: jle .L_40ec3c	 RIP: 40eb90	 Bytes: 6
  %loadMem_40eb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb90 = call %struct.Memory* @routine_jle_.L_40ec3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb90, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_40eb90, %struct.Memory** %MEMORY

  %loadBr_40eb90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eb90 = icmp eq i8 %loadBr_40eb90, 1
  br i1 %cmpBr_40eb90, label %block_.L_40ec3c, label %block_40eb96

block_40eb96:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 40eb96	 Bytes: 4
  %loadMem_40eb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb96 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb96)
  store %struct.Memory* %call_40eb96, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40eb9a	 Bytes: 7
  %loadMem_40eb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eb9a = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eb9a)
  store %struct.Memory* %call_40eb9a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40eba1	 Bytes: 4
  %loadMem_40eba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eba1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eba1)
  store %struct.Memory* %call_40eba1, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40eba5	 Bytes: 3
  %loadMem_40eba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eba5 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eba5)
  store %struct.Memory* %call_40eba5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40eba8	 Bytes: 3
  %loadMem_40eba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eba8 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eba8)
  store %struct.Memory* %call_40eba8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ebab	 Bytes: 3
  %loadMem_40ebab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebab = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebab)
  store %struct.Memory* %call_40ebab, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm0	 RIP: 40ebae	 Bytes: 5
  %loadMem_40ebae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebae = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebae)
  store %struct.Memory* %call_40ebae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ebb3	 Bytes: 4
  %loadMem_40ebb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebb3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebb3)
  store %struct.Memory* %call_40ebb3, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ebb7	 Bytes: 7
  %loadMem_40ebb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebb7 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebb7)
  store %struct.Memory* %call_40ebb7, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 40ebbe	 Bytes: 4
  %loadMem_40ebbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebbe = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebbe)
  store %struct.Memory* %call_40ebbe, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ebc2	 Bytes: 3
  %loadMem_40ebc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebc2 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebc2)
  store %struct.Memory* %call_40ebc2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ebc5	 Bytes: 3
  %loadMem_40ebc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebc5 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebc5)
  store %struct.Memory* %call_40ebc5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ebc8	 Bytes: 3
  %loadMem_40ebc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebc8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebc8)
  store %struct.Memory* %call_40ebc8, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm1	 RIP: 40ebcb	 Bytes: 5
  %loadMem_40ebcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebcb = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebcb)
  store %struct.Memory* %call_40ebcb, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40ebd0	 Bytes: 4
  %loadMem_40ebd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebd0 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebd0)
  store %struct.Memory* %call_40ebd0, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40ebd4	 Bytes: 3
  %loadMem_40ebd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebd4 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebd4)
  store %struct.Memory* %call_40ebd4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ebd7	 Bytes: 3
  %loadMem_40ebd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebd7 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebd7)
  store %struct.Memory* %call_40ebd7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ebda	 Bytes: 3
  %loadMem_40ebda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebda = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebda)
  store %struct.Memory* %call_40ebda, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40ebdd	 Bytes: 5
  %loadMem_40ebdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebdd = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebdd)
  store %struct.Memory* %call_40ebdd, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40ebe2	 Bytes: 4
  %loadMem_40ebe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebe2 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebe2)
  store %struct.Memory* %call_40ebe2, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm0, %edx	 RIP: 40ebe6	 Bytes: 4
  %loadMem_40ebe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebe6 = call %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebe6)
  store %struct.Memory* %call_40ebe6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40ebea	 Bytes: 6
  %loadMem_40ebea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebea = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebea)
  store %struct.Memory* %call_40ebea, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ebf0	 Bytes: 4
  %loadMem_40ebf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebf0 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebf0)
  store %struct.Memory* %call_40ebf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ebf4	 Bytes: 7
  %loadMem_40ebf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebf4 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebf4)
  store %struct.Memory* %call_40ebf4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ebfb	 Bytes: 4
  %loadMem_40ebfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebfb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebfb)
  store %struct.Memory* %call_40ebfb, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ebff	 Bytes: 4
  %loadMem_40ebff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ebff = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ebff)
  store %struct.Memory* %call_40ebff, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40ec03	 Bytes: 3
  %loadMem_40ec03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec03 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec03)
  store %struct.Memory* %call_40ec03, %struct.Memory** %MEMORY

  ; Code: jle .L_40ec3c	 RIP: 40ec06	 Bytes: 6
  %loadMem_40ec06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec06 = call %struct.Memory* @routine_jle_.L_40ec3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec06, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40ec06, %struct.Memory** %MEMORY

  %loadBr_40ec06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ec06 = icmp eq i8 %loadBr_40ec06, 1
  br i1 %cmpBr_40ec06, label %block_.L_40ec3c, label %block_40ec0c

block_40ec0c:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40ec0c	 Bytes: 6
  %loadMem_40ec0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec0c = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec0c)
  store %struct.Memory* %call_40ec0c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40ec12	 Bytes: 4
  %loadMem_40ec12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec12 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec12)
  store %struct.Memory* %call_40ec12, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40ec16	 Bytes: 7
  %loadMem_40ec16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec16 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec16)
  store %struct.Memory* %call_40ec16, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ec1d	 Bytes: 4
  %loadMem_40ec1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec1d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec1d)
  store %struct.Memory* %call_40ec1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ec21	 Bytes: 4
  %loadMem_40ec21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec21 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec21)
  store %struct.Memory* %call_40ec21, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40ec25	 Bytes: 3
  %loadMem_40ec25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec25 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec25)
  store %struct.Memory* %call_40ec25, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40ec28	 Bytes: 4
  %loadMem_40ec28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec28 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec28)
  store %struct.Memory* %call_40ec28, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40ec2c	 Bytes: 4
  %loadMem_40ec2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec2c = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec2c)
  store %struct.Memory* %call_40ec2c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ec30	 Bytes: 4
  %loadMem_40ec30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec30 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec30)
  store %struct.Memory* %call_40ec30, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ec34	 Bytes: 4
  %loadMem_40ec34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec34 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec34)
  store %struct.Memory* %call_40ec34, %struct.Memory** %MEMORY

  ; Code: movb $0x3, (%rcx,%rdx,1)	 RIP: 40ec38	 Bytes: 4
  %loadMem_40ec38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec38 = call %struct.Memory* @routine_movb__0x3____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec38)
  store %struct.Memory* %call_40ec38, %struct.Memory** %MEMORY

  ; Code: .L_40ec3c:	 RIP: 40ec3c	 Bytes: 0
  br label %block_.L_40ec3c
block_.L_40ec3c:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40ec3c	 Bytes: 4
  %loadMem_40ec3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec3c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec3c)
  store %struct.Memory* %call_40ec3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40ec40	 Bytes: 7
  %loadMem_40ec40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec40 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec40)
  store %struct.Memory* %call_40ec40, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ec47	 Bytes: 4
  %loadMem_40ec47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec47 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec47)
  store %struct.Memory* %call_40ec47, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 40ec4b	 Bytes: 2
  %loadMem_40ec4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec4b = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec4b)
  store %struct.Memory* %call_40ec4b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ec4d	 Bytes: 4
  %loadMem_40ec4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec4d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec4d)
  store %struct.Memory* %call_40ec4d, %struct.Memory** %MEMORY

  ; Code: movq 0x170(%rax), %rax	 RIP: 40ec51	 Bytes: 7
  %loadMem_40ec51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec51 = call %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec51)
  store %struct.Memory* %call_40ec51, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ec58	 Bytes: 4
  %loadMem_40ec58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec58 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec58)
  store %struct.Memory* %call_40ec58, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40ec5c	 Bytes: 3
  %loadMem_40ec5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec5c = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec5c)
  store %struct.Memory* %call_40ec5c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40ec5f	 Bytes: 6
  %loadMem_40ec5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec5f = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec5f)
  store %struct.Memory* %call_40ec5f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ec65	 Bytes: 4
  %loadMem_40ec65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec65 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec65)
  store %struct.Memory* %call_40ec65, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ec69	 Bytes: 7
  %loadMem_40ec69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec69 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec69)
  store %struct.Memory* %call_40ec69, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ec70	 Bytes: 4
  %loadMem_40ec70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec70 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec70)
  store %struct.Memory* %call_40ec70, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ec74	 Bytes: 4
  %loadMem_40ec74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec74 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec74)
  store %struct.Memory* %call_40ec74, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40ec78	 Bytes: 3
  %loadMem_40ec78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec78 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec78)
  store %struct.Memory* %call_40ec78, %struct.Memory** %MEMORY

  ; Code: jle .L_40ecb1	 RIP: 40ec7b	 Bytes: 6
  %loadMem_40ec7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec7b = call %struct.Memory* @routine_jle_.L_40ecb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec7b, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40ec7b, %struct.Memory** %MEMORY

  %loadBr_40ec7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ec7b = icmp eq i8 %loadBr_40ec7b, 1
  br i1 %cmpBr_40ec7b, label %block_.L_40ecb1, label %block_40ec81

block_40ec81:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40ec81	 Bytes: 6
  %loadMem_40ec81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec81 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec81)
  store %struct.Memory* %call_40ec81, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40ec87	 Bytes: 4
  %loadMem_40ec87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec87 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec87)
  store %struct.Memory* %call_40ec87, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40ec8b	 Bytes: 7
  %loadMem_40ec8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec8b = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec8b)
  store %struct.Memory* %call_40ec8b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ec92	 Bytes: 4
  %loadMem_40ec92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec92 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec92)
  store %struct.Memory* %call_40ec92, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ec96	 Bytes: 4
  %loadMem_40ec96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec96 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec96)
  store %struct.Memory* %call_40ec96, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40ec9a	 Bytes: 3
  %loadMem_40ec9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec9a = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec9a)
  store %struct.Memory* %call_40ec9a, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40ec9d	 Bytes: 4
  %loadMem_40ec9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ec9d = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ec9d)
  store %struct.Memory* %call_40ec9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40eca1	 Bytes: 4
  %loadMem_40eca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eca1 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eca1)
  store %struct.Memory* %call_40eca1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40eca5	 Bytes: 4
  %loadMem_40eca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eca5 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eca5)
  store %struct.Memory* %call_40eca5, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40eca9	 Bytes: 4
  %loadMem_40eca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eca9 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eca9)
  store %struct.Memory* %call_40eca9, %struct.Memory** %MEMORY

  ; Code: movb $0x6, (%rcx,%rdx,1)	 RIP: 40ecad	 Bytes: 4
  %loadMem_40ecad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecad = call %struct.Memory* @routine_movb__0x6____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecad)
  store %struct.Memory* %call_40ecad, %struct.Memory** %MEMORY

  ; Code: .L_40ecb1:	 RIP: 40ecb1	 Bytes: 0
  br label %block_.L_40ecb1
block_.L_40ecb1:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40ecb1	 Bytes: 4
  %loadMem_40ecb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecb1 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecb1)
  store %struct.Memory* %call_40ecb1, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40ecb5	 Bytes: 7
  %loadMem_40ecb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecb5 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecb5)
  store %struct.Memory* %call_40ecb5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ecbc	 Bytes: 4
  %loadMem_40ecbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecbc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecbc)
  store %struct.Memory* %call_40ecbc, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ecc0	 Bytes: 3
  %loadMem_40ecc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecc0 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecc0)
  store %struct.Memory* %call_40ecc0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ecc3	 Bytes: 3
  %loadMem_40ecc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecc3 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecc3)
  store %struct.Memory* %call_40ecc3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ecc6	 Bytes: 3
  %loadMem_40ecc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecc6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecc6)
  store %struct.Memory* %call_40ecc6, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40ecc9	 Bytes: 7
  %loadMem_40ecc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecc9 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecc9)
  store %struct.Memory* %call_40ecc9, %struct.Memory** %MEMORY

  ; Code: jle .L_40ed83	 RIP: 40ecd0	 Bytes: 6
  %loadMem_40ecd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecd0 = call %struct.Memory* @routine_jle_.L_40ed83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecd0, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_40ecd0, %struct.Memory** %MEMORY

  %loadBr_40ecd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ecd0 = icmp eq i8 %loadBr_40ecd0, 1
  br i1 %cmpBr_40ecd0, label %block_.L_40ed83, label %block_40ecd6

block_40ecd6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ecd6	 Bytes: 4
  %loadMem_40ecd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecd6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecd6)
  store %struct.Memory* %call_40ecd6, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ecda	 Bytes: 7
  %loadMem_40ecda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecda = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecda)
  store %struct.Memory* %call_40ecda, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 40ece1	 Bytes: 4
  %loadMem_40ece1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ece1 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ece1)
  store %struct.Memory* %call_40ece1, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %ecx	 RIP: 40ece5	 Bytes: 3
  %loadMem_40ece5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ece5 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ece5)
  store %struct.Memory* %call_40ece5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40ece8	 Bytes: 3
  %loadMem_40ece8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ece8 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ece8)
  store %struct.Memory* %call_40ece8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40eceb	 Bytes: 3
  %loadMem_40eceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eceb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eceb)
  store %struct.Memory* %call_40eceb, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rdx,4)	 RIP: 40ecee	 Bytes: 7
  %loadMem_40ecee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecee = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecee)
  store %struct.Memory* %call_40ecee, %struct.Memory** %MEMORY

  ; Code: jle .L_40ed83	 RIP: 40ecf5	 Bytes: 6
  %loadMem_40ecf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecf5 = call %struct.Memory* @routine_jle_.L_40ed83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecf5, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_40ecf5, %struct.Memory** %MEMORY

  %loadBr_40ecf5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ecf5 = icmp eq i8 %loadBr_40ecf5, 1
  br i1 %cmpBr_40ecf5, label %block_.L_40ed83, label %block_40ecfb

block_40ecfb:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40ecfb	 Bytes: 4
  %loadMem_40ecfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecfb = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecfb)
  store %struct.Memory* %call_40ecfb, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40ecff	 Bytes: 7
  %loadMem_40ecff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ecff = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ecff)
  store %struct.Memory* %call_40ecff, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ed06	 Bytes: 4
  %loadMem_40ed06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed06 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed06)
  store %struct.Memory* %call_40ed06, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ed0a	 Bytes: 3
  %loadMem_40ed0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed0a = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed0a)
  store %struct.Memory* %call_40ed0a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ed0d	 Bytes: 3
  %loadMem_40ed0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed0d = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed0d)
  store %struct.Memory* %call_40ed0d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ed10	 Bytes: 3
  %loadMem_40ed10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed10 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed10)
  store %struct.Memory* %call_40ed10, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40ed13	 Bytes: 3
  %loadMem_40ed13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed13 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed13)
  store %struct.Memory* %call_40ed13, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ed16	 Bytes: 4
  %loadMem_40ed16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed16 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed16)
  store %struct.Memory* %call_40ed16, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ed1a	 Bytes: 7
  %loadMem_40ed1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed1a = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed1a)
  store %struct.Memory* %call_40ed1a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 40ed21	 Bytes: 4
  %loadMem_40ed21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed21 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed21)
  store %struct.Memory* %call_40ed21, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %esi	 RIP: 40ed25	 Bytes: 3
  %loadMem_40ed25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed25 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed25)
  store %struct.Memory* %call_40ed25, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40ed28	 Bytes: 3
  %loadMem_40ed28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed28 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed28)
  store %struct.Memory* %call_40ed28, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40ed2b	 Bytes: 3
  %loadMem_40ed2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed2b = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed2b)
  store %struct.Memory* %call_40ed2b, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40ed2e	 Bytes: 3
  %loadMem_40ed2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed2e = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed2e)
  store %struct.Memory* %call_40ed2e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40ed31	 Bytes: 6
  %loadMem_40ed31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed31 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed31)
  store %struct.Memory* %call_40ed31, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ed37	 Bytes: 4
  %loadMem_40ed37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed37 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed37)
  store %struct.Memory* %call_40ed37, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ed3b	 Bytes: 7
  %loadMem_40ed3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed3b = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed3b)
  store %struct.Memory* %call_40ed3b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ed42	 Bytes: 4
  %loadMem_40ed42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed42 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed42)
  store %struct.Memory* %call_40ed42, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ed46	 Bytes: 4
  %loadMem_40ed46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed46 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed46)
  store %struct.Memory* %call_40ed46, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40ed4a	 Bytes: 3
  %loadMem_40ed4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed4a = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed4a)
  store %struct.Memory* %call_40ed4a, %struct.Memory** %MEMORY

  ; Code: jle .L_40ed83	 RIP: 40ed4d	 Bytes: 6
  %loadMem_40ed4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed4d = call %struct.Memory* @routine_jle_.L_40ed83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed4d, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40ed4d, %struct.Memory** %MEMORY

  %loadBr_40ed4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ed4d = icmp eq i8 %loadBr_40ed4d, 1
  br i1 %cmpBr_40ed4d, label %block_.L_40ed83, label %block_40ed53

block_40ed53:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40ed53	 Bytes: 6
  %loadMem_40ed53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed53 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed53)
  store %struct.Memory* %call_40ed53, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40ed59	 Bytes: 4
  %loadMem_40ed59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed59 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed59)
  store %struct.Memory* %call_40ed59, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40ed5d	 Bytes: 7
  %loadMem_40ed5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed5d = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed5d)
  store %struct.Memory* %call_40ed5d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ed64	 Bytes: 4
  %loadMem_40ed64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed64 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed64)
  store %struct.Memory* %call_40ed64, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ed68	 Bytes: 4
  %loadMem_40ed68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed68 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed68)
  store %struct.Memory* %call_40ed68, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40ed6c	 Bytes: 3
  %loadMem_40ed6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed6c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed6c)
  store %struct.Memory* %call_40ed6c, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40ed6f	 Bytes: 4
  %loadMem_40ed6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed6f = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed6f)
  store %struct.Memory* %call_40ed6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40ed73	 Bytes: 4
  %loadMem_40ed73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed73 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed73)
  store %struct.Memory* %call_40ed73, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ed77	 Bytes: 4
  %loadMem_40ed77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed77 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed77)
  store %struct.Memory* %call_40ed77, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ed7b	 Bytes: 4
  %loadMem_40ed7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed7b = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed7b)
  store %struct.Memory* %call_40ed7b, %struct.Memory** %MEMORY

  ; Code: movb $0x2, (%rcx,%rdx,1)	 RIP: 40ed7f	 Bytes: 4
  %loadMem_40ed7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed7f = call %struct.Memory* @routine_movb__0x2____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed7f)
  store %struct.Memory* %call_40ed7f, %struct.Memory** %MEMORY

  ; Code: .L_40ed83:	 RIP: 40ed83	 Bytes: 0
  br label %block_.L_40ed83
block_.L_40ed83:

  ; Code: movl $0x0, -0x88(%rbp)	 RIP: 40ed83	 Bytes: 10
  %loadMem_40ed83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed83 = call %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed83)
  store %struct.Memory* %call_40ed83, %struct.Memory** %MEMORY

  ; Code: .L_40ed8d:	 RIP: 40ed8d	 Bytes: 0
  br label %block_.L_40ed8d
block_.L_40ed8d:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 40ed8d	 Bytes: 6
  %loadMem_40ed8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed8d = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed8d)
  store %struct.Memory* %call_40ed8d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 40ed93	 Bytes: 7
  %loadMem_40ed93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed93 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed93)
  store %struct.Memory* %call_40ed93, %struct.Memory** %MEMORY

  ; Code: jge .L_40ee78	 RIP: 40ed9a	 Bytes: 6
  %loadMem_40ed9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ed9a = call %struct.Memory* @routine_jge_.L_40ee78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ed9a, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_40ed9a, %struct.Memory** %MEMORY

  %loadBr_40ed9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ed9a = icmp eq i8 %loadBr_40ed9a, 1
  br i1 %cmpBr_40ed9a, label %block_.L_40ee78, label %block_40eda0

block_40eda0:
  ; Code: xorps %xmm0, %xmm0	 RIP: 40eda0	 Bytes: 3
  %loadMem_40eda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eda0 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eda0)
  store %struct.Memory* %call_40eda0, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40eda3	 Bytes: 4
  %loadMem_40eda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eda3 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eda3)
  store %struct.Memory* %call_40eda3, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40eda7	 Bytes: 4
  %loadMem_40eda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eda7 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eda7)
  store %struct.Memory* %call_40eda7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40edab	 Bytes: 4
  %loadMem_40edab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edab = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edab)
  store %struct.Memory* %call_40edab, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40edaf	 Bytes: 7
  %loadMem_40edaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edaf = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edaf)
  store %struct.Memory* %call_40edaf, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40edb6	 Bytes: 5
  %loadMem_40edb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edb6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edb6)
  store %struct.Memory* %call_40edb6, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 40edbb	 Bytes: 3
  %loadMem_40edbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edbb = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edbb)
  store %struct.Memory* %call_40edbb, %struct.Memory** %MEMORY

  ; Code: jbe .L_40ee0a	 RIP: 40edbe	 Bytes: 6
  %loadMem_40edbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edbe = call %struct.Memory* @routine_jbe_.L_40ee0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edbe, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_40edbe, %struct.Memory** %MEMORY

  %loadBr_40edbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40edbe = icmp eq i8 %loadBr_40edbe, 1
  br i1 %cmpBr_40edbe, label %block_.L_40ee0a, label %block_40edc4

block_40edc4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40edc4	 Bytes: 4
  %loadMem_40edc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edc4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edc4)
  store %struct.Memory* %call_40edc4, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 40edc8	 Bytes: 7
  %loadMem_40edc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edc8 = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edc8)
  store %struct.Memory* %call_40edc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40edcf	 Bytes: 7
  %loadMem_40edcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edcf = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edcf)
  store %struct.Memory* %call_40edcf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40edd6	 Bytes: 4
  %loadMem_40edd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edd6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edd6)
  store %struct.Memory* %call_40edd6, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40edda	 Bytes: 4
  %loadMem_40edda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edda = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edda)
  store %struct.Memory* %call_40edda, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40edde	 Bytes: 7
  %loadMem_40edde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edde = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edde)
  store %struct.Memory* %call_40edde, %struct.Memory** %MEMORY

  ; Code: jne .L_40ee0a	 RIP: 40ede5	 Bytes: 6
  %loadMem_40ede5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ede5 = call %struct.Memory* @routine_jne_.L_40ee0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ede5, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_40ede5, %struct.Memory** %MEMORY

  %loadBr_40ede5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ede5 = icmp eq i8 %loadBr_40ede5, 1
  br i1 %cmpBr_40ede5, label %block_.L_40ee0a, label %block_40edeb

block_40edeb:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40edeb	 Bytes: 4
  %loadMem_40edeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edeb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edeb)
  store %struct.Memory* %call_40edeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40edef	 Bytes: 7
  %loadMem_40edef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edef = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edef)
  store %struct.Memory* %call_40edef, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40edf6	 Bytes: 4
  %loadMem_40edf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edf6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edf6)
  store %struct.Memory* %call_40edf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40edfa	 Bytes: 4
  %loadMem_40edfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edfa = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edfa)
  store %struct.Memory* %call_40edfa, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40edfe	 Bytes: 7
  %loadMem_40edfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40edfe = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40edfe)
  store %struct.Memory* %call_40edfe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40ee78	 RIP: 40ee05	 Bytes: 5
  %loadMem_40ee05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee05 = call %struct.Memory* @routine_jmpq_.L_40ee78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee05, i64 115, i64 5)
  store %struct.Memory* %call_40ee05, %struct.Memory** %MEMORY

  br label %block_.L_40ee78

  ; Code: .L_40ee0a:	 RIP: 40ee0a	 Bytes: 0
block_.L_40ee0a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ee0a	 Bytes: 4
  %loadMem_40ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee0a)
  store %struct.Memory* %call_40ee0a, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 40ee0e	 Bytes: 7
  %loadMem_40ee0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee0e = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee0e)
  store %struct.Memory* %call_40ee0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40ee15	 Bytes: 7
  %loadMem_40ee15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee15 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee15)
  store %struct.Memory* %call_40ee15, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ee1c	 Bytes: 4
  %loadMem_40ee1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee1c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee1c)
  store %struct.Memory* %call_40ee1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ee20	 Bytes: 4
  %loadMem_40ee20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee20 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee20)
  store %struct.Memory* %call_40ee20, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm0	 RIP: 40ee24	 Bytes: 5
  %loadMem_40ee24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee24 = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee24)
  store %struct.Memory* %call_40ee24, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40ee29	 Bytes: 4
  %loadMem_40ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee29 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee29)
  store %struct.Memory* %call_40ee29, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40ee2d	 Bytes: 4
  %loadMem_40ee2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee2d = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee2d)
  store %struct.Memory* %call_40ee2d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ee31	 Bytes: 4
  %loadMem_40ee31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee31 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee31)
  store %struct.Memory* %call_40ee31, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40ee35	 Bytes: 7
  %loadMem_40ee35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee35 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee35)
  store %struct.Memory* %call_40ee35, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 40ee3c	 Bytes: 5
  %loadMem_40ee3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee3c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee3c)
  store %struct.Memory* %call_40ee3c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40ee41	 Bytes: 4
  %loadMem_40ee41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee41 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee41)
  store %struct.Memory* %call_40ee41, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ee45	 Bytes: 7
  %loadMem_40ee45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee45 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee45)
  store %struct.Memory* %call_40ee45, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ee4c	 Bytes: 4
  %loadMem_40ee4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee4c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee4c)
  store %struct.Memory* %call_40ee4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ee50	 Bytes: 4
  %loadMem_40ee50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee50 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee50)
  store %struct.Memory* %call_40ee50, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm1	 RIP: 40ee54	 Bytes: 5
  %loadMem_40ee54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee54 = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee54)
  store %struct.Memory* %call_40ee54, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 40ee59	 Bytes: 4
  %loadMem_40ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee59 = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee59)
  store %struct.Memory* %call_40ee59, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm1, %edx	 RIP: 40ee5d	 Bytes: 4
  %loadMem_40ee5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee5d = call %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee5d)
  store %struct.Memory* %call_40ee5d, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40ee61	 Bytes: 3
  %loadMem_40ee61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee61 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee61)
  store %struct.Memory* %call_40ee61, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %eax	 RIP: 40ee64	 Bytes: 6
  %loadMem_40ee64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee64 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee64)
  store %struct.Memory* %call_40ee64, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40ee6a	 Bytes: 3
  %loadMem_40ee6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee6a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee6a)
  store %struct.Memory* %call_40ee6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 40ee6d	 Bytes: 6
  %loadMem_40ee6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee6d = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee6d)
  store %struct.Memory* %call_40ee6d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40ed8d	 RIP: 40ee73	 Bytes: 5
  %loadMem_40ee73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee73 = call %struct.Memory* @routine_jmpq_.L_40ed8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee73, i64 -230, i64 5)
  store %struct.Memory* %call_40ee73, %struct.Memory** %MEMORY

  br label %block_.L_40ed8d

  ; Code: .L_40ee78:	 RIP: 40ee78	 Bytes: 0
block_.L_40ee78:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40ee78	 Bytes: 4
  %loadMem_40ee78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee78 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee78)
  store %struct.Memory* %call_40ee78, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ee7c	 Bytes: 7
  %loadMem_40ee7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee7c = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee7c)
  store %struct.Memory* %call_40ee7c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ee83	 Bytes: 4
  %loadMem_40ee83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee83 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee83)
  store %struct.Memory* %call_40ee83, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ee87	 Bytes: 4
  %loadMem_40ee87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee87 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee87)
  store %struct.Memory* %call_40ee87, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40ee8b	 Bytes: 7
  %loadMem_40ee8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee8b = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee8b)
  store %struct.Memory* %call_40ee8b, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40ee92	 Bytes: 4
  %loadMem_40ee92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee92 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee92)
  store %struct.Memory* %call_40ee92, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40ee96	 Bytes: 4
  %loadMem_40ee96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee96 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee96)
  store %struct.Memory* %call_40ee96, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ee9a	 Bytes: 4
  %loadMem_40ee9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee9a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee9a)
  store %struct.Memory* %call_40ee9a, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ee9e	 Bytes: 4
  %loadMem_40ee9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ee9e = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ee9e)
  store %struct.Memory* %call_40ee9e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40eea2	 Bytes: 4
  %loadMem_40eea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eea2 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eea2)
  store %struct.Memory* %call_40eea2, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40eea6	 Bytes: 4
  %loadMem_40eea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eea6 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eea6)
  store %struct.Memory* %call_40eea6, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40eeaa	 Bytes: 7
  %loadMem_40eeaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeaa = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeaa)
  store %struct.Memory* %call_40eeaa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40eeb1	 Bytes: 4
  %loadMem_40eeb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeb1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeb1)
  store %struct.Memory* %call_40eeb1, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40eeb5	 Bytes: 3
  %loadMem_40eeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeb5 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeb5)
  store %struct.Memory* %call_40eeb5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40eeb8	 Bytes: 3
  %loadMem_40eeb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeb8 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeb8)
  store %struct.Memory* %call_40eeb8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40eebb	 Bytes: 3
  %loadMem_40eebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eebb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eebb)
  store %struct.Memory* %call_40eebb, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40eebe	 Bytes: 7
  %loadMem_40eebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eebe = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eebe)
  store %struct.Memory* %call_40eebe, %struct.Memory** %MEMORY

  ; Code: jle .L_40ef78	 RIP: 40eec5	 Bytes: 6
  %loadMem_40eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eec5 = call %struct.Memory* @routine_jle_.L_40ef78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eec5, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_40eec5, %struct.Memory** %MEMORY

  %loadBr_40eec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eec5 = icmp eq i8 %loadBr_40eec5, 1
  br i1 %cmpBr_40eec5, label %block_.L_40ef78, label %block_40eecb

block_40eecb:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40eecb	 Bytes: 4
  %loadMem_40eecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eecb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eecb)
  store %struct.Memory* %call_40eecb, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40eecf	 Bytes: 7
  %loadMem_40eecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eecf = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eecf)
  store %struct.Memory* %call_40eecf, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 40eed6	 Bytes: 4
  %loadMem_40eed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eed6 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eed6)
  store %struct.Memory* %call_40eed6, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %ecx	 RIP: 40eeda	 Bytes: 3
  %loadMem_40eeda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeda = call %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeda)
  store %struct.Memory* %call_40eeda, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40eedd	 Bytes: 3
  %loadMem_40eedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eedd = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eedd)
  store %struct.Memory* %call_40eedd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40eee0	 Bytes: 3
  %loadMem_40eee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eee0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eee0)
  store %struct.Memory* %call_40eee0, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rdx,4)	 RIP: 40eee3	 Bytes: 7
  %loadMem_40eee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eee3 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eee3)
  store %struct.Memory* %call_40eee3, %struct.Memory** %MEMORY

  ; Code: jle .L_40ef78	 RIP: 40eeea	 Bytes: 6
  %loadMem_40eeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeea = call %struct.Memory* @routine_jle_.L_40ef78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeea, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_40eeea, %struct.Memory** %MEMORY

  %loadBr_40eeea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eeea = icmp eq i8 %loadBr_40eeea, 1
  br i1 %cmpBr_40eeea, label %block_.L_40ef78, label %block_40eef0

block_40eef0:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40eef0	 Bytes: 4
  %loadMem_40eef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eef0 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eef0)
  store %struct.Memory* %call_40eef0, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40eef4	 Bytes: 7
  %loadMem_40eef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eef4 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eef4)
  store %struct.Memory* %call_40eef4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40eefb	 Bytes: 4
  %loadMem_40eefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eefb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eefb)
  store %struct.Memory* %call_40eefb, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40eeff	 Bytes: 3
  %loadMem_40eeff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eeff = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eeff)
  store %struct.Memory* %call_40eeff, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ef02	 Bytes: 3
  %loadMem_40ef02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef02 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef02)
  store %struct.Memory* %call_40ef02, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ef05	 Bytes: 3
  %loadMem_40ef05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef05 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef05)
  store %struct.Memory* %call_40ef05, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40ef08	 Bytes: 3
  %loadMem_40ef08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef08 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef08)
  store %struct.Memory* %call_40ef08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ef0b	 Bytes: 4
  %loadMem_40ef0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef0b)
  store %struct.Memory* %call_40ef0b, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40ef0f	 Bytes: 7
  %loadMem_40ef0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef0f = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef0f)
  store %struct.Memory* %call_40ef0f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 40ef16	 Bytes: 4
  %loadMem_40ef16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef16 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef16)
  store %struct.Memory* %call_40ef16, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %esi	 RIP: 40ef1a	 Bytes: 3
  %loadMem_40ef1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef1a = call %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef1a)
  store %struct.Memory* %call_40ef1a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40ef1d	 Bytes: 3
  %loadMem_40ef1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef1d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef1d)
  store %struct.Memory* %call_40ef1d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40ef20	 Bytes: 3
  %loadMem_40ef20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef20 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef20)
  store %struct.Memory* %call_40ef20, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40ef23	 Bytes: 3
  %loadMem_40ef23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef23 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef23)
  store %struct.Memory* %call_40ef23, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40ef26	 Bytes: 6
  %loadMem_40ef26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef26 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef26)
  store %struct.Memory* %call_40ef26, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40ef2c	 Bytes: 4
  %loadMem_40ef2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef2c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef2c)
  store %struct.Memory* %call_40ef2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ef30	 Bytes: 7
  %loadMem_40ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef30 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef30)
  store %struct.Memory* %call_40ef30, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ef37	 Bytes: 4
  %loadMem_40ef37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef37 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef37)
  store %struct.Memory* %call_40ef37, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40ef3b	 Bytes: 4
  %loadMem_40ef3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef3b = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef3b)
  store %struct.Memory* %call_40ef3b, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40ef3f	 Bytes: 3
  %loadMem_40ef3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef3f = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef3f)
  store %struct.Memory* %call_40ef3f, %struct.Memory** %MEMORY

  ; Code: jle .L_40ef78	 RIP: 40ef42	 Bytes: 6
  %loadMem_40ef42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef42 = call %struct.Memory* @routine_jle_.L_40ef78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef42, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40ef42, %struct.Memory** %MEMORY

  %loadBr_40ef42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef42 = icmp eq i8 %loadBr_40ef42, 1
  br i1 %cmpBr_40ef42, label %block_.L_40ef78, label %block_40ef48

block_40ef48:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40ef48	 Bytes: 6
  %loadMem_40ef48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef48 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef48)
  store %struct.Memory* %call_40ef48, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40ef4e	 Bytes: 4
  %loadMem_40ef4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef4e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef4e)
  store %struct.Memory* %call_40ef4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40ef52	 Bytes: 7
  %loadMem_40ef52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef52 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef52)
  store %struct.Memory* %call_40ef52, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ef59	 Bytes: 4
  %loadMem_40ef59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef59 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef59)
  store %struct.Memory* %call_40ef59, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ef5d	 Bytes: 4
  %loadMem_40ef5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef5d = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef5d)
  store %struct.Memory* %call_40ef5d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40ef61	 Bytes: 3
  %loadMem_40ef61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef61 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef61)
  store %struct.Memory* %call_40ef61, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40ef64	 Bytes: 4
  %loadMem_40ef64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef64 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef64)
  store %struct.Memory* %call_40ef64, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40ef68	 Bytes: 4
  %loadMem_40ef68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef68 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef68)
  store %struct.Memory* %call_40ef68, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40ef6c	 Bytes: 4
  %loadMem_40ef6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef6c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef6c)
  store %struct.Memory* %call_40ef6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40ef70	 Bytes: 4
  %loadMem_40ef70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef70 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef70)
  store %struct.Memory* %call_40ef70, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%rdx,1)	 RIP: 40ef74	 Bytes: 4
  %loadMem_40ef74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef74 = call %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef74)
  store %struct.Memory* %call_40ef74, %struct.Memory** %MEMORY

  ; Code: .L_40ef78:	 RIP: 40ef78	 Bytes: 0
  br label %block_.L_40ef78
block_.L_40ef78:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40ef78	 Bytes: 4
  %loadMem_40ef78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef78 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef78)
  store %struct.Memory* %call_40ef78, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40ef7c	 Bytes: 7
  %loadMem_40ef7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef7c = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef7c)
  store %struct.Memory* %call_40ef7c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40ef83	 Bytes: 4
  %loadMem_40ef83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef83 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef83)
  store %struct.Memory* %call_40ef83, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40ef87	 Bytes: 3
  %loadMem_40ef87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef87 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef87)
  store %struct.Memory* %call_40ef87, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40ef8a	 Bytes: 3
  %loadMem_40ef8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef8a = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef8a)
  store %struct.Memory* %call_40ef8a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40ef8d	 Bytes: 3
  %loadMem_40ef8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef8d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef8d)
  store %struct.Memory* %call_40ef8d, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40ef90	 Bytes: 7
  %loadMem_40ef90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef90 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef90)
  store %struct.Memory* %call_40ef90, %struct.Memory** %MEMORY

  ; Code: jle .L_40f04a	 RIP: 40ef97	 Bytes: 6
  %loadMem_40ef97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef97 = call %struct.Memory* @routine_jle_.L_40f04a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef97, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_40ef97, %struct.Memory** %MEMORY

  %loadBr_40ef97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef97 = icmp eq i8 %loadBr_40ef97, 1
  br i1 %cmpBr_40ef97, label %block_.L_40f04a, label %block_40ef9d

block_40ef9d:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40ef9d	 Bytes: 4
  %loadMem_40ef9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ef9d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ef9d)
  store %struct.Memory* %call_40ef9d, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40efa1	 Bytes: 7
  %loadMem_40efa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efa1 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efa1)
  store %struct.Memory* %call_40efa1, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 40efa8	 Bytes: 4
  %loadMem_40efa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efa8 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efa8)
  store %struct.Memory* %call_40efa8, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %ecx	 RIP: 40efac	 Bytes: 3
  %loadMem_40efac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efac = call %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efac)
  store %struct.Memory* %call_40efac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40efaf	 Bytes: 3
  %loadMem_40efaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efaf = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efaf)
  store %struct.Memory* %call_40efaf, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40efb2	 Bytes: 3
  %loadMem_40efb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efb2 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efb2)
  store %struct.Memory* %call_40efb2, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rdx,4)	 RIP: 40efb5	 Bytes: 7
  %loadMem_40efb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efb5 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efb5)
  store %struct.Memory* %call_40efb5, %struct.Memory** %MEMORY

  ; Code: jle .L_40f04a	 RIP: 40efbc	 Bytes: 6
  %loadMem_40efbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efbc = call %struct.Memory* @routine_jle_.L_40f04a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efbc, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_40efbc, %struct.Memory** %MEMORY

  %loadBr_40efbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40efbc = icmp eq i8 %loadBr_40efbc, 1
  br i1 %cmpBr_40efbc, label %block_.L_40f04a, label %block_40efc2

block_40efc2:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 40efc2	 Bytes: 4
  %loadMem_40efc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efc2 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efc2)
  store %struct.Memory* %call_40efc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40efc6	 Bytes: 7
  %loadMem_40efc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efc6 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efc6)
  store %struct.Memory* %call_40efc6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40efcd	 Bytes: 4
  %loadMem_40efcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efcd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efcd)
  store %struct.Memory* %call_40efcd, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 40efd1	 Bytes: 3
  %loadMem_40efd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efd1 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efd1)
  store %struct.Memory* %call_40efd1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40efd4	 Bytes: 3
  %loadMem_40efd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efd4 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efd4)
  store %struct.Memory* %call_40efd4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40efd7	 Bytes: 3
  %loadMem_40efd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efd7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efd7)
  store %struct.Memory* %call_40efd7, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40efda	 Bytes: 3
  %loadMem_40efda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efda = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efda)
  store %struct.Memory* %call_40efda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40efdd	 Bytes: 4
  %loadMem_40efdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efdd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efdd)
  store %struct.Memory* %call_40efdd, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40efe1	 Bytes: 7
  %loadMem_40efe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efe1 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efe1)
  store %struct.Memory* %call_40efe1, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 40efe8	 Bytes: 4
  %loadMem_40efe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efe8 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efe8)
  store %struct.Memory* %call_40efe8, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %esi	 RIP: 40efec	 Bytes: 3
  %loadMem_40efec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efec = call %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efec)
  store %struct.Memory* %call_40efec, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40efef	 Bytes: 3
  %loadMem_40efef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40efef = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40efef)
  store %struct.Memory* %call_40efef, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 40eff2	 Bytes: 3
  %loadMem_40eff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eff2 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eff2)
  store %struct.Memory* %call_40eff2, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40eff5	 Bytes: 3
  %loadMem_40eff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eff5 = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eff5)
  store %struct.Memory* %call_40eff5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40eff8	 Bytes: 6
  %loadMem_40eff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40eff8 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40eff8)
  store %struct.Memory* %call_40eff8, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40effe	 Bytes: 4
  %loadMem_40effe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40effe = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40effe)
  store %struct.Memory* %call_40effe, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f002	 Bytes: 7
  %loadMem_40f002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f002 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f002)
  store %struct.Memory* %call_40f002, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f009	 Bytes: 4
  %loadMem_40f009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f009 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f009)
  store %struct.Memory* %call_40f009, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f00d	 Bytes: 4
  %loadMem_40f00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f00d = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f00d)
  store %struct.Memory* %call_40f00d, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40f011	 Bytes: 3
  %loadMem_40f011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f011 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f011)
  store %struct.Memory* %call_40f011, %struct.Memory** %MEMORY

  ; Code: jle .L_40f04a	 RIP: 40f014	 Bytes: 6
  %loadMem_40f014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f014 = call %struct.Memory* @routine_jle_.L_40f04a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f014, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40f014, %struct.Memory** %MEMORY

  %loadBr_40f014 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f014 = icmp eq i8 %loadBr_40f014, 1
  br i1 %cmpBr_40f014, label %block_.L_40f04a, label %block_40f01a

block_40f01a:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f01a	 Bytes: 6
  %loadMem_40f01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f01a = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f01a)
  store %struct.Memory* %call_40f01a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 40f020	 Bytes: 4
  %loadMem_40f020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f020 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f020)
  store %struct.Memory* %call_40f020, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f024	 Bytes: 7
  %loadMem_40f024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f024 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f024)
  store %struct.Memory* %call_40f024, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f02b	 Bytes: 4
  %loadMem_40f02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f02b = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f02b)
  store %struct.Memory* %call_40f02b, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f02f	 Bytes: 4
  %loadMem_40f02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f02f = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f02f)
  store %struct.Memory* %call_40f02f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40f033	 Bytes: 3
  %loadMem_40f033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f033 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f033)
  store %struct.Memory* %call_40f033, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 40f036	 Bytes: 4
  %loadMem_40f036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f036 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f036)
  store %struct.Memory* %call_40f036, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f03a	 Bytes: 4
  %loadMem_40f03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f03a = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f03a)
  store %struct.Memory* %call_40f03a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f03e	 Bytes: 4
  %loadMem_40f03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f03e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f03e)
  store %struct.Memory* %call_40f03e, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f042	 Bytes: 4
  %loadMem_40f042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f042 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f042)
  store %struct.Memory* %call_40f042, %struct.Memory** %MEMORY

  ; Code: movb $0x2, (%rcx,%rdx,1)	 RIP: 40f046	 Bytes: 4
  %loadMem_40f046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f046 = call %struct.Memory* @routine_movb__0x2____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f046)
  store %struct.Memory* %call_40f046, %struct.Memory** %MEMORY

  ; Code: .L_40f04a:	 RIP: 40f04a	 Bytes: 0
  br label %block_.L_40f04a
block_.L_40f04a:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40f04a	 Bytes: 3
  %loadMem_40f04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f04a = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f04a)
  store %struct.Memory* %call_40f04a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40f04d	 Bytes: 4
  %loadMem_40f04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f04d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f04d)
  store %struct.Memory* %call_40f04d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40f051	 Bytes: 6
  %loadMem_40f051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f051 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f051)
  store %struct.Memory* %call_40f051, %struct.Memory** %MEMORY

  ; Code: jge .L_40f345	 RIP: 40f057	 Bytes: 6
  %loadMem_40f057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f057 = call %struct.Memory* @routine_jge_.L_40f345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f057, i8* %BRANCH_TAKEN, i64 750, i64 6, i64 6)
  store %struct.Memory* %call_40f057, %struct.Memory** %MEMORY

  %loadBr_40f057 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f057 = icmp eq i8 %loadBr_40f057, 1
  br i1 %cmpBr_40f057, label %block_.L_40f345, label %block_40f05d

block_40f05d:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f05d	 Bytes: 4
  %loadMem_40f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f05d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f05d)
  store %struct.Memory* %call_40f05d, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f061	 Bytes: 7
  %loadMem_40f061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f061 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f061)
  store %struct.Memory* %call_40f061, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f068	 Bytes: 4
  %loadMem_40f068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f068 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f068)
  store %struct.Memory* %call_40f068, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f06c	 Bytes: 4
  %loadMem_40f06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f06c = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f06c)
  store %struct.Memory* %call_40f06c, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f070	 Bytes: 7
  %loadMem_40f070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f070 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f070)
  store %struct.Memory* %call_40f070, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 40f077	 Bytes: 4
  %loadMem_40f077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f077 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f077)
  store %struct.Memory* %call_40f077, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f07b	 Bytes: 4
  %loadMem_40f07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f07b = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f07b)
  store %struct.Memory* %call_40f07b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f07f	 Bytes: 4
  %loadMem_40f07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f07f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f07f)
  store %struct.Memory* %call_40f07f, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f083	 Bytes: 4
  %loadMem_40f083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f083 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f083)
  store %struct.Memory* %call_40f083, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 40f087	 Bytes: 4
  %loadMem_40f087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f087 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f087)
  store %struct.Memory* %call_40f087, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40f08b	 Bytes: 4
  %loadMem_40f08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f08b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f08b)
  store %struct.Memory* %call_40f08b, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f08f	 Bytes: 7
  %loadMem_40f08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f08f = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f08f)
  store %struct.Memory* %call_40f08f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f096	 Bytes: 4
  %loadMem_40f096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f096 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f096)
  store %struct.Memory* %call_40f096, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f09a	 Bytes: 4
  %loadMem_40f09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f09a = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f09a)
  store %struct.Memory* %call_40f09a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f09e	 Bytes: 7
  %loadMem_40f09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f09e = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f09e)
  store %struct.Memory* %call_40f09e, %struct.Memory** %MEMORY

  ; Code: jle .L_40f162	 RIP: 40f0a5	 Bytes: 6
  %loadMem_40f0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0a5 = call %struct.Memory* @routine_jle_.L_40f162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0a5, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_40f0a5, %struct.Memory** %MEMORY

  %loadBr_40f0a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f0a5 = icmp eq i8 %loadBr_40f0a5, 1
  br i1 %cmpBr_40f0a5, label %block_.L_40f162, label %block_40f0ab

block_40f0ab:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f0ab	 Bytes: 4
  %loadMem_40f0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0ab)
  store %struct.Memory* %call_40f0ab, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40f0af	 Bytes: 7
  %loadMem_40f0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0af = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0af)
  store %struct.Memory* %call_40f0af, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40f0b6	 Bytes: 4
  %loadMem_40f0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0b6 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0b6)
  store %struct.Memory* %call_40f0b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f0ba	 Bytes: 4
  %loadMem_40f0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0ba = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0ba)
  store %struct.Memory* %call_40f0ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f0be	 Bytes: 7
  %loadMem_40f0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0be = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0be)
  store %struct.Memory* %call_40f0be, %struct.Memory** %MEMORY

  ; Code: jle .L_40f162	 RIP: 40f0c5	 Bytes: 6
  %loadMem_40f0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0c5 = call %struct.Memory* @routine_jle_.L_40f162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0c5, i8* %BRANCH_TAKEN, i64 157, i64 6, i64 6)
  store %struct.Memory* %call_40f0c5, %struct.Memory** %MEMORY

  %loadBr_40f0c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f0c5 = icmp eq i8 %loadBr_40f0c5, 1
  br i1 %cmpBr_40f0c5, label %block_.L_40f162, label %block_40f0cb

block_40f0cb:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40f0cb	 Bytes: 4
  %loadMem_40f0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0cb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0cb)
  store %struct.Memory* %call_40f0cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f0cf	 Bytes: 7
  %loadMem_40f0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0cf = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0cf)
  store %struct.Memory* %call_40f0cf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f0d6	 Bytes: 4
  %loadMem_40f0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0d6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0d6)
  store %struct.Memory* %call_40f0d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f0da	 Bytes: 4
  %loadMem_40f0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0da = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0da)
  store %struct.Memory* %call_40f0da, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm0	 RIP: 40f0de	 Bytes: 5
  %loadMem_40f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0de = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0de)
  store %struct.Memory* %call_40f0de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f0e3	 Bytes: 4
  %loadMem_40f0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0e3)
  store %struct.Memory* %call_40f0e3, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40f0e7	 Bytes: 7
  %loadMem_40f0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0e7 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0e7)
  store %struct.Memory* %call_40f0e7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 40f0ee	 Bytes: 4
  %loadMem_40f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0ee = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0ee)
  store %struct.Memory* %call_40f0ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f0f2	 Bytes: 4
  %loadMem_40f0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0f2 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0f2)
  store %struct.Memory* %call_40f0f2, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm1	 RIP: 40f0f6	 Bytes: 5
  %loadMem_40f0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0f6 = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0f6)
  store %struct.Memory* %call_40f0f6, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f0fb	 Bytes: 4
  %loadMem_40f0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0fb = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0fb)
  store %struct.Memory* %call_40f0fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f0ff	 Bytes: 4
  %loadMem_40f0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f0ff = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f0ff)
  store %struct.Memory* %call_40f0ff, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40f103	 Bytes: 5
  %loadMem_40f103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f103 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f103)
  store %struct.Memory* %call_40f103, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40f108	 Bytes: 4
  %loadMem_40f108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f108 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f108)
  store %struct.Memory* %call_40f108, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm0, %edx	 RIP: 40f10c	 Bytes: 4
  %loadMem_40f10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f10c = call %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f10c)
  store %struct.Memory* %call_40f10c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f110	 Bytes: 6
  %loadMem_40f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f110 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f110)
  store %struct.Memory* %call_40f110, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f116	 Bytes: 4
  %loadMem_40f116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f116 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f116)
  store %struct.Memory* %call_40f116, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f11a	 Bytes: 7
  %loadMem_40f11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f11a = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f11a)
  store %struct.Memory* %call_40f11a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f121	 Bytes: 4
  %loadMem_40f121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f121 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f121)
  store %struct.Memory* %call_40f121, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f125	 Bytes: 4
  %loadMem_40f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f125 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f125)
  store %struct.Memory* %call_40f125, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40f129	 Bytes: 3
  %loadMem_40f129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f129 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f129)
  store %struct.Memory* %call_40f129, %struct.Memory** %MEMORY

  ; Code: jle .L_40f162	 RIP: 40f12c	 Bytes: 6
  %loadMem_40f12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f12c = call %struct.Memory* @routine_jle_.L_40f162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f12c, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40f12c, %struct.Memory** %MEMORY

  %loadBr_40f12c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f12c = icmp eq i8 %loadBr_40f12c, 1
  br i1 %cmpBr_40f12c, label %block_.L_40f162, label %block_40f132

block_40f132:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f132	 Bytes: 6
  %loadMem_40f132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f132 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f132)
  store %struct.Memory* %call_40f132, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40f138	 Bytes: 4
  %loadMem_40f138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f138 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f138)
  store %struct.Memory* %call_40f138, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f13c	 Bytes: 7
  %loadMem_40f13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f13c = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f13c)
  store %struct.Memory* %call_40f13c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f143	 Bytes: 4
  %loadMem_40f143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f143 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f143)
  store %struct.Memory* %call_40f143, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f147	 Bytes: 4
  %loadMem_40f147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f147 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f147)
  store %struct.Memory* %call_40f147, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40f14b	 Bytes: 3
  %loadMem_40f14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f14b = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f14b)
  store %struct.Memory* %call_40f14b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 40f14e	 Bytes: 4
  %loadMem_40f14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f14e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f14e)
  store %struct.Memory* %call_40f14e, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f152	 Bytes: 4
  %loadMem_40f152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f152 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f152)
  store %struct.Memory* %call_40f152, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f156	 Bytes: 4
  %loadMem_40f156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f156 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f156)
  store %struct.Memory* %call_40f156, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f15a	 Bytes: 4
  %loadMem_40f15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f15a = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f15a)
  store %struct.Memory* %call_40f15a, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%rdx,1)	 RIP: 40f15e	 Bytes: 4
  %loadMem_40f15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f15e = call %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f15e)
  store %struct.Memory* %call_40f15e, %struct.Memory** %MEMORY

  ; Code: .L_40f162:	 RIP: 40f162	 Bytes: 0
  br label %block_.L_40f162
block_.L_40f162:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f162	 Bytes: 4
  %loadMem_40f162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f162 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f162)
  store %struct.Memory* %call_40f162, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f166	 Bytes: 7
  %loadMem_40f166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f166 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f166)
  store %struct.Memory* %call_40f166, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f16d	 Bytes: 4
  %loadMem_40f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f16d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f16d)
  store %struct.Memory* %call_40f16d, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f171	 Bytes: 4
  %loadMem_40f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f171 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f171)
  store %struct.Memory* %call_40f171, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f175	 Bytes: 7
  %loadMem_40f175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f175 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f175)
  store %struct.Memory* %call_40f175, %struct.Memory** %MEMORY

  ; Code: jle .L_40f24b	 RIP: 40f17c	 Bytes: 6
  %loadMem_40f17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f17c = call %struct.Memory* @routine_jle_.L_40f24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f17c, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_40f17c, %struct.Memory** %MEMORY

  %loadBr_40f17c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f17c = icmp eq i8 %loadBr_40f17c, 1
  br i1 %cmpBr_40f17c, label %block_.L_40f24b, label %block_40f182

block_40f182:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f182	 Bytes: 4
  %loadMem_40f182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f182 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f182)
  store %struct.Memory* %call_40f182, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40f186	 Bytes: 7
  %loadMem_40f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f186 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f186)
  store %struct.Memory* %call_40f186, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40f18d	 Bytes: 4
  %loadMem_40f18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f18d = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f18d)
  store %struct.Memory* %call_40f18d, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f191	 Bytes: 4
  %loadMem_40f191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f191 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f191)
  store %struct.Memory* %call_40f191, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f195	 Bytes: 7
  %loadMem_40f195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f195 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f195)
  store %struct.Memory* %call_40f195, %struct.Memory** %MEMORY

  ; Code: jle .L_40f24b	 RIP: 40f19c	 Bytes: 6
  %loadMem_40f19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f19c = call %struct.Memory* @routine_jle_.L_40f24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f19c, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_40f19c, %struct.Memory** %MEMORY

  %loadBr_40f19c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f19c = icmp eq i8 %loadBr_40f19c, 1
  br i1 %cmpBr_40f19c, label %block_.L_40f24b, label %block_40f1a2

block_40f1a2:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f1a2	 Bytes: 4
  %loadMem_40f1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1a2 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1a2)
  store %struct.Memory* %call_40f1a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f1a6	 Bytes: 7
  %loadMem_40f1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1a6 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1a6)
  store %struct.Memory* %call_40f1a6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f1ad	 Bytes: 4
  %loadMem_40f1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1ad = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1ad)
  store %struct.Memory* %call_40f1ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f1b1	 Bytes: 4
  %loadMem_40f1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1b1 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1b1)
  store %struct.Memory* %call_40f1b1, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm0	 RIP: 40f1b5	 Bytes: 5
  %loadMem_40f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1b5 = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1b5)
  store %struct.Memory* %call_40f1b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f1ba	 Bytes: 4
  %loadMem_40f1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1ba)
  store %struct.Memory* %call_40f1ba, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 40f1be	 Bytes: 7
  %loadMem_40f1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1be = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1be)
  store %struct.Memory* %call_40f1be, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 40f1c5	 Bytes: 4
  %loadMem_40f1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1c5 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1c5)
  store %struct.Memory* %call_40f1c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f1c9	 Bytes: 4
  %loadMem_40f1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1c9 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1c9)
  store %struct.Memory* %call_40f1c9, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm1	 RIP: 40f1cd	 Bytes: 5
  %loadMem_40f1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1cd = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1cd)
  store %struct.Memory* %call_40f1cd, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f1d2	 Bytes: 4
  %loadMem_40f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1d2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1d2)
  store %struct.Memory* %call_40f1d2, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 40f1d6	 Bytes: 3
  %loadMem_40f1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1d6 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1d6)
  store %struct.Memory* %call_40f1d6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40f1d9	 Bytes: 3
  %loadMem_40f1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1d9 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1d9)
  store %struct.Memory* %call_40f1d9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40f1dc	 Bytes: 3
  %loadMem_40f1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1dc = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1dc)
  store %struct.Memory* %call_40f1dc, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40f1df	 Bytes: 5
  %loadMem_40f1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1df = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1df)
  store %struct.Memory* %call_40f1df, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f1e4	 Bytes: 4
  %loadMem_40f1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1e4 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1e4)
  store %struct.Memory* %call_40f1e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f1e8	 Bytes: 4
  %loadMem_40f1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1e8 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1e8)
  store %struct.Memory* %call_40f1e8, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40f1ec	 Bytes: 5
  %loadMem_40f1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1ec = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1ec)
  store %struct.Memory* %call_40f1ec, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40f1f1	 Bytes: 4
  %loadMem_40f1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1f1 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1f1)
  store %struct.Memory* %call_40f1f1, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm0, %edx	 RIP: 40f1f5	 Bytes: 4
  %loadMem_40f1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1f5 = call %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1f5)
  store %struct.Memory* %call_40f1f5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f1f9	 Bytes: 6
  %loadMem_40f1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1f9 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1f9)
  store %struct.Memory* %call_40f1f9, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f1ff	 Bytes: 4
  %loadMem_40f1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f1ff = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f1ff)
  store %struct.Memory* %call_40f1ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f203	 Bytes: 7
  %loadMem_40f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f203 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f203)
  store %struct.Memory* %call_40f203, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f20a	 Bytes: 4
  %loadMem_40f20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f20a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f20a)
  store %struct.Memory* %call_40f20a, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f20e	 Bytes: 4
  %loadMem_40f20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f20e = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f20e)
  store %struct.Memory* %call_40f20e, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax,%rcx,4), %edx	 RIP: 40f212	 Bytes: 3
  %loadMem_40f212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f212 = call %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f212)
  store %struct.Memory* %call_40f212, %struct.Memory** %MEMORY

  ; Code: jle .L_40f24b	 RIP: 40f215	 Bytes: 6
  %loadMem_40f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f215 = call %struct.Memory* @routine_jle_.L_40f24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f215, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_40f215, %struct.Memory** %MEMORY

  %loadBr_40f215 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f215 = icmp eq i8 %loadBr_40f215, 1
  br i1 %cmpBr_40f215, label %block_.L_40f24b, label %block_40f21b

block_40f21b:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f21b	 Bytes: 6
  %loadMem_40f21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f21b = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f21b)
  store %struct.Memory* %call_40f21b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40f221	 Bytes: 4
  %loadMem_40f221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f221 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f221)
  store %struct.Memory* %call_40f221, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f225	 Bytes: 7
  %loadMem_40f225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f225 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f225)
  store %struct.Memory* %call_40f225, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f22c	 Bytes: 4
  %loadMem_40f22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f22c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f22c)
  store %struct.Memory* %call_40f22c, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f230	 Bytes: 4
  %loadMem_40f230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f230 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f230)
  store %struct.Memory* %call_40f230, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40f234	 Bytes: 3
  %loadMem_40f234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f234 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f234)
  store %struct.Memory* %call_40f234, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 40f237	 Bytes: 4
  %loadMem_40f237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f237 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f237)
  store %struct.Memory* %call_40f237, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f23b	 Bytes: 4
  %loadMem_40f23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f23b = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f23b)
  store %struct.Memory* %call_40f23b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f23f	 Bytes: 4
  %loadMem_40f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f23f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f23f)
  store %struct.Memory* %call_40f23f, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rdx	 RIP: 40f243	 Bytes: 4
  %loadMem_40f243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f243 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f243)
  store %struct.Memory* %call_40f243, %struct.Memory** %MEMORY

  ; Code: movb $0x3, (%rcx,%rdx,1)	 RIP: 40f247	 Bytes: 4
  %loadMem_40f247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f247 = call %struct.Memory* @routine_movb__0x3____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f247)
  store %struct.Memory* %call_40f247, %struct.Memory** %MEMORY

  ; Code: .L_40f24b:	 RIP: 40f24b	 Bytes: 0
  br label %block_.L_40f24b
block_.L_40f24b:

  ; Code: movl $0x0, -0x88(%rbp)	 RIP: 40f24b	 Bytes: 10
  %loadMem_40f24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f24b = call %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f24b)
  store %struct.Memory* %call_40f24b, %struct.Memory** %MEMORY

  ; Code: .L_40f255:	 RIP: 40f255	 Bytes: 0
  br label %block_.L_40f255
block_.L_40f255:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 40f255	 Bytes: 6
  %loadMem_40f255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f255 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f255)
  store %struct.Memory* %call_40f255, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 40f25b	 Bytes: 7
  %loadMem_40f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f25b = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f25b)
  store %struct.Memory* %call_40f25b, %struct.Memory** %MEMORY

  ; Code: jge .L_40f340	 RIP: 40f262	 Bytes: 6
  %loadMem_40f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f262 = call %struct.Memory* @routine_jge_.L_40f340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f262, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_40f262, %struct.Memory** %MEMORY

  %loadBr_40f262 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f262 = icmp eq i8 %loadBr_40f262, 1
  br i1 %cmpBr_40f262, label %block_.L_40f340, label %block_40f268

block_40f268:
  ; Code: xorps %xmm0, %xmm0	 RIP: 40f268	 Bytes: 3
  %loadMem_40f268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f268 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f268)
  store %struct.Memory* %call_40f268, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40f26b	 Bytes: 4
  %loadMem_40f26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f26b = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f26b)
  store %struct.Memory* %call_40f26b, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f26f	 Bytes: 4
  %loadMem_40f26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f26f = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f26f)
  store %struct.Memory* %call_40f26f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f273	 Bytes: 4
  %loadMem_40f273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f273 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f273)
  store %struct.Memory* %call_40f273, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40f277	 Bytes: 7
  %loadMem_40f277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f277 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f277)
  store %struct.Memory* %call_40f277, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40f27e	 Bytes: 5
  %loadMem_40f27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f27e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f27e)
  store %struct.Memory* %call_40f27e, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 40f283	 Bytes: 3
  %loadMem_40f283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f283 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f283)
  store %struct.Memory* %call_40f283, %struct.Memory** %MEMORY

  ; Code: jbe .L_40f2d2	 RIP: 40f286	 Bytes: 6
  %loadMem_40f286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f286 = call %struct.Memory* @routine_jbe_.L_40f2d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f286, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_40f286, %struct.Memory** %MEMORY

  %loadBr_40f286 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f286 = icmp eq i8 %loadBr_40f286, 1
  br i1 %cmpBr_40f286, label %block_.L_40f2d2, label %block_40f28c

block_40f28c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f28c	 Bytes: 4
  %loadMem_40f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f28c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f28c)
  store %struct.Memory* %call_40f28c, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 40f290	 Bytes: 7
  %loadMem_40f290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f290 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f290)
  store %struct.Memory* %call_40f290, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40f297	 Bytes: 7
  %loadMem_40f297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f297 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f297)
  store %struct.Memory* %call_40f297, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f29e	 Bytes: 4
  %loadMem_40f29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f29e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f29e)
  store %struct.Memory* %call_40f29e, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f2a2	 Bytes: 4
  %loadMem_40f2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2a2 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2a2)
  store %struct.Memory* %call_40f2a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f2a6	 Bytes: 7
  %loadMem_40f2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2a6 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2a6)
  store %struct.Memory* %call_40f2a6, %struct.Memory** %MEMORY

  ; Code: jne .L_40f2d2	 RIP: 40f2ad	 Bytes: 6
  %loadMem_40f2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2ad = call %struct.Memory* @routine_jne_.L_40f2d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2ad, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_40f2ad, %struct.Memory** %MEMORY

  %loadBr_40f2ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f2ad = icmp eq i8 %loadBr_40f2ad, 1
  br i1 %cmpBr_40f2ad, label %block_.L_40f2d2, label %block_40f2b3

block_40f2b3:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f2b3	 Bytes: 4
  %loadMem_40f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2b3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2b3)
  store %struct.Memory* %call_40f2b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f2b7	 Bytes: 7
  %loadMem_40f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2b7 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2b7)
  store %struct.Memory* %call_40f2b7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f2be	 Bytes: 4
  %loadMem_40f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2be = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2be)
  store %struct.Memory* %call_40f2be, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f2c2	 Bytes: 4
  %loadMem_40f2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2c2 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2c2)
  store %struct.Memory* %call_40f2c2, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f2c6	 Bytes: 7
  %loadMem_40f2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2c6 = call %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2c6)
  store %struct.Memory* %call_40f2c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40f340	 RIP: 40f2cd	 Bytes: 5
  %loadMem_40f2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2cd = call %struct.Memory* @routine_jmpq_.L_40f340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2cd, i64 115, i64 5)
  store %struct.Memory* %call_40f2cd, %struct.Memory** %MEMORY

  br label %block_.L_40f340

  ; Code: .L_40f2d2:	 RIP: 40f2d2	 Bytes: 0
block_.L_40f2d2:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f2d2	 Bytes: 4
  %loadMem_40f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2d2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2d2)
  store %struct.Memory* %call_40f2d2, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 40f2d6	 Bytes: 7
  %loadMem_40f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2d6 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2d6)
  store %struct.Memory* %call_40f2d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40f2dd	 Bytes: 7
  %loadMem_40f2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2dd = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2dd)
  store %struct.Memory* %call_40f2dd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f2e4	 Bytes: 4
  %loadMem_40f2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2e4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2e4)
  store %struct.Memory* %call_40f2e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f2e8	 Bytes: 4
  %loadMem_40f2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2e8 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2e8)
  store %struct.Memory* %call_40f2e8, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm0	 RIP: 40f2ec	 Bytes: 5
  %loadMem_40f2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2ec = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2ec)
  store %struct.Memory* %call_40f2ec, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40f2f1	 Bytes: 4
  %loadMem_40f2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2f1 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2f1)
  store %struct.Memory* %call_40f2f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f2f5	 Bytes: 4
  %loadMem_40f2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2f5 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2f5)
  store %struct.Memory* %call_40f2f5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f2f9	 Bytes: 4
  %loadMem_40f2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2f9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2f9)
  store %struct.Memory* %call_40f2f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 40f2fd	 Bytes: 7
  %loadMem_40f2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f2fd = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f2fd)
  store %struct.Memory* %call_40f2fd, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 40f304	 Bytes: 5
  %loadMem_40f304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f304 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f304)
  store %struct.Memory* %call_40f304, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40f309	 Bytes: 4
  %loadMem_40f309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f309 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f309)
  store %struct.Memory* %call_40f309, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f30d	 Bytes: 7
  %loadMem_40f30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f30d = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f30d)
  store %struct.Memory* %call_40f30d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f314	 Bytes: 4
  %loadMem_40f314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f314 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f314)
  store %struct.Memory* %call_40f314, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f318	 Bytes: 4
  %loadMem_40f318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f318 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f318)
  store %struct.Memory* %call_40f318, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl (%rax,%rcx,4), %xmm1	 RIP: 40f31c	 Bytes: 5
  %loadMem_40f31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f31c = call %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f31c)
  store %struct.Memory* %call_40f31c, %struct.Memory** %MEMORY

  ; Code: addss %xmm0, %xmm1	 RIP: 40f321	 Bytes: 4
  %loadMem_40f321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f321 = call %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f321)
  store %struct.Memory* %call_40f321, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm1, %edx	 RIP: 40f325	 Bytes: 4
  %loadMem_40f325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f325 = call %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f325)
  store %struct.Memory* %call_40f325, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40f329	 Bytes: 3
  %loadMem_40f329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f329 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f329)
  store %struct.Memory* %call_40f329, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %eax	 RIP: 40f32c	 Bytes: 6
  %loadMem_40f32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f32c = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f32c)
  store %struct.Memory* %call_40f32c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40f332	 Bytes: 3
  %loadMem_40f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f332 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f332)
  store %struct.Memory* %call_40f332, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 40f335	 Bytes: 6
  %loadMem_40f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f335 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f335)
  store %struct.Memory* %call_40f335, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40f255	 RIP: 40f33b	 Bytes: 5
  %loadMem_40f33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f33b = call %struct.Memory* @routine_jmpq_.L_40f255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f33b, i64 -230, i64 5)
  store %struct.Memory* %call_40f33b, %struct.Memory** %MEMORY

  br label %block_.L_40f255

  ; Code: .L_40f340:	 RIP: 40f340	 Bytes: 0
block_.L_40f340:

  ; Code: jmpq .L_40f345	 RIP: 40f340	 Bytes: 5
  %loadMem_40f340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f340 = call %struct.Memory* @routine_jmpq_.L_40f345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f340, i64 5, i64 5)
  store %struct.Memory* %call_40f340, %struct.Memory** %MEMORY

  br label %block_.L_40f345

  ; Code: .L_40f345:	 RIP: 40f345	 Bytes: 0
block_.L_40f345:

  ; Code: jmpq .L_40f34a	 RIP: 40f345	 Bytes: 5
  %loadMem_40f345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f345 = call %struct.Memory* @routine_jmpq_.L_40f34a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f345, i64 5, i64 5)
  store %struct.Memory* %call_40f345, %struct.Memory** %MEMORY

  br label %block_.L_40f34a

  ; Code: .L_40f34a:	 RIP: 40f34a	 Bytes: 0
block_.L_40f34a:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40f34a	 Bytes: 3
  %loadMem_40f34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f34a = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f34a)
  store %struct.Memory* %call_40f34a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40f34d	 Bytes: 3
  %loadMem_40f34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f34d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f34d)
  store %struct.Memory* %call_40f34d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 40f350	 Bytes: 3
  %loadMem_40f350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f350 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f350)
  store %struct.Memory* %call_40f350, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40ea3b	 RIP: 40f353	 Bytes: 5
  %loadMem_40f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f353 = call %struct.Memory* @routine_jmpq_.L_40ea3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f353, i64 -2328, i64 5)
  store %struct.Memory* %call_40f353, %struct.Memory** %MEMORY

  br label %block_.L_40ea3b

  ; Code: .L_40f358:	 RIP: 40f358	 Bytes: 0
block_.L_40f358:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f358	 Bytes: 4
  %loadMem_40f358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f358 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f358)
  store %struct.Memory* %call_40f358, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f35c	 Bytes: 7
  %loadMem_40f35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f35c = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f35c)
  store %struct.Memory* %call_40f35c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f363	 Bytes: 4
  %loadMem_40f363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f363 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f363)
  store %struct.Memory* %call_40f363, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x10(%rax)	 RIP: 40f367	 Bytes: 7
  %loadMem_40f367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f367 = call %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f367)
  store %struct.Memory* %call_40f367, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40f36e	 Bytes: 4
  %loadMem_40f36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f36e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f36e)
  store %struct.Memory* %call_40f36e, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f372	 Bytes: 4
  %loadMem_40f372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f372 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f372)
  store %struct.Memory* %call_40f372, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f376	 Bytes: 4
  %loadMem_40f376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f376 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f376)
  store %struct.Memory* %call_40f376, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x4(%rax)	 RIP: 40f37a	 Bytes: 4
  %loadMem_40f37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f37a = call %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f37a)
  store %struct.Memory* %call_40f37a, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f37e	 Bytes: 4
  %loadMem_40f37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f37e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f37e)
  store %struct.Memory* %call_40f37e, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f382	 Bytes: 7
  %loadMem_40f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f382 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f382)
  store %struct.Memory* %call_40f382, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f389	 Bytes: 4
  %loadMem_40f389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f389 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f389)
  store %struct.Memory* %call_40f389, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x10(%rax)	 RIP: 40f38d	 Bytes: 7
  %loadMem_40f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f38d = call %struct.Memory* @routine_cmpl__0xc521974f__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f38d)
  store %struct.Memory* %call_40f38d, %struct.Memory** %MEMORY

  ; Code: jle .L_40f41d	 RIP: 40f394	 Bytes: 6
  %loadMem_40f394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f394 = call %struct.Memory* @routine_jle_.L_40f41d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f394, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_40f394, %struct.Memory** %MEMORY

  %loadBr_40f394 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f394 = icmp eq i8 %loadBr_40f394, 1
  br i1 %cmpBr_40f394, label %block_.L_40f41d, label %block_40f39a

block_40f39a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f39a	 Bytes: 4
  %loadMem_40f39a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f39a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f39a)
  store %struct.Memory* %call_40f39a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x154(%rax)	 RIP: 40f39e	 Bytes: 10
  %loadMem_40f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f39e = call %struct.Memory* @routine_cmpl__0xc521974f__0x154__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f39e)
  store %struct.Memory* %call_40f39e, %struct.Memory** %MEMORY

  ; Code: jle .L_40f41d	 RIP: 40f3a8	 Bytes: 6
  %loadMem_40f3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3a8 = call %struct.Memory* @routine_jle_.L_40f41d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3a8, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_40f3a8, %struct.Memory** %MEMORY

  %loadBr_40f3a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f3a8 = icmp eq i8 %loadBr_40f3a8, 1
  br i1 %cmpBr_40f3a8, label %block_.L_40f41d, label %block_40f3ae

block_40f3ae:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f3ae	 Bytes: 4
  %loadMem_40f3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3ae = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3ae)
  store %struct.Memory* %call_40f3ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f3b2	 Bytes: 7
  %loadMem_40f3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3b2 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3b2)
  store %struct.Memory* %call_40f3b2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f3b9	 Bytes: 4
  %loadMem_40f3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3b9)
  store %struct.Memory* %call_40f3b9, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x10(%rax), %xmm0	 RIP: 40f3bd	 Bytes: 5
  %loadMem_40f3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3bd = call %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3bd)
  store %struct.Memory* %call_40f3bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f3c2	 Bytes: 4
  %loadMem_40f3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3c2)
  store %struct.Memory* %call_40f3c2, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x154(%rax), %xmm1	 RIP: 40f3c6	 Bytes: 8
  %loadMem_40f3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3c6 = call %struct.Memory* @routine_cvtsi2ssl_0x154__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3c6)
  store %struct.Memory* %call_40f3c6, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f3ce	 Bytes: 4
  %loadMem_40f3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3ce = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3ce)
  store %struct.Memory* %call_40f3ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f3d2	 Bytes: 4
  %loadMem_40f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3d2 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3d2)
  store %struct.Memory* %call_40f3d2, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40f3d6	 Bytes: 5
  %loadMem_40f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3d6 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3d6)
  store %struct.Memory* %call_40f3d6, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40f3db	 Bytes: 4
  %loadMem_40f3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3db = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3db)
  store %struct.Memory* %call_40f3db, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm0, %edx	 RIP: 40f3df	 Bytes: 4
  %loadMem_40f3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3df = call %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3df)
  store %struct.Memory* %call_40f3df, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f3e3	 Bytes: 6
  %loadMem_40f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3e3 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3e3)
  store %struct.Memory* %call_40f3e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40f3e9	 Bytes: 6
  %loadMem_40f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3e9 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3e9)
  store %struct.Memory* %call_40f3e9, %struct.Memory** %MEMORY

  ; Code: jle .L_40f41d	 RIP: 40f3ef	 Bytes: 6
  %loadMem_40f3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3ef = call %struct.Memory* @routine_jle_.L_40f41d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3ef, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_40f3ef, %struct.Memory** %MEMORY

  %loadBr_40f3ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f3ef = icmp eq i8 %loadBr_40f3ef, 1
  br i1 %cmpBr_40f3ef, label %block_.L_40f41d, label %block_40f3f5

block_40f3f5:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f3f5	 Bytes: 6
  %loadMem_40f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3f5 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3f5)
  store %struct.Memory* %call_40f3f5, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f3fb	 Bytes: 4
  %loadMem_40f3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3fb = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3fb)
  store %struct.Memory* %call_40f3fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f3ff	 Bytes: 7
  %loadMem_40f3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f3ff = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f3ff)
  store %struct.Memory* %call_40f3ff, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f406	 Bytes: 4
  %loadMem_40f406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f406 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f406)
  store %struct.Memory* %call_40f406, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rcx)	 RIP: 40f40a	 Bytes: 3
  %loadMem_40f40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f40a = call %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f40a)
  store %struct.Memory* %call_40f40a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 40f40d	 Bytes: 4
  %loadMem_40f40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f40d = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f40d)
  store %struct.Memory* %call_40f40d, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f411	 Bytes: 4
  %loadMem_40f411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f411 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f411)
  store %struct.Memory* %call_40f411, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f415	 Bytes: 4
  %loadMem_40f415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f415 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f415)
  store %struct.Memory* %call_40f415, %struct.Memory** %MEMORY

  ; Code: movb $0x5, 0x4(%rcx)	 RIP: 40f419	 Bytes: 4
  %loadMem_40f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f419 = call %struct.Memory* @routine_movb__0x5__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f419)
  store %struct.Memory* %call_40f419, %struct.Memory** %MEMORY

  ; Code: .L_40f41d:	 RIP: 40f41d	 Bytes: 0
  br label %block_.L_40f41d
block_.L_40f41d:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f41d	 Bytes: 4
  %loadMem_40f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f41d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f41d)
  store %struct.Memory* %call_40f41d, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f421	 Bytes: 7
  %loadMem_40f421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f421 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f421)
  store %struct.Memory* %call_40f421, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f428	 Bytes: 4
  %loadMem_40f428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f428 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f428)
  store %struct.Memory* %call_40f428, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x4(%rax)	 RIP: 40f42c	 Bytes: 7
  %loadMem_40f42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f42c = call %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f42c)
  store %struct.Memory* %call_40f42c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40f433	 Bytes: 4
  %loadMem_40f433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f433 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f433)
  store %struct.Memory* %call_40f433, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f437	 Bytes: 4
  %loadMem_40f437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f437 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f437)
  store %struct.Memory* %call_40f437, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f43b	 Bytes: 4
  %loadMem_40f43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f43b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f43b)
  store %struct.Memory* %call_40f43b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x1(%rax)	 RIP: 40f43f	 Bytes: 4
  %loadMem_40f43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f43f = call %struct.Memory* @routine_movb__0x0__0x1__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f43f)
  store %struct.Memory* %call_40f43f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x80(%rbp)	 RIP: 40f443	 Bytes: 7
  %loadMem_40f443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f443 = call %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f443)
  store %struct.Memory* %call_40f443, %struct.Memory** %MEMORY

  ; Code: .L_40f44a:	 RIP: 40f44a	 Bytes: 0
  br label %block_.L_40f44a
block_.L_40f44a:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40f44a	 Bytes: 3
  %loadMem_40f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f44a = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f44a)
  store %struct.Memory* %call_40f44a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40f44d	 Bytes: 4
  %loadMem_40f44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f44d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f44d)
  store %struct.Memory* %call_40f44d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 40f451	 Bytes: 6
  %loadMem_40f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f451 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f451)
  store %struct.Memory* %call_40f451, %struct.Memory** %MEMORY

  ; Code: jg .L_40f51c	 RIP: 40f457	 Bytes: 6
  %loadMem_40f457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f457 = call %struct.Memory* @routine_jg_.L_40f51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f457, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_40f457, %struct.Memory** %MEMORY

  %loadBr_40f457 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f457 = icmp eq i8 %loadBr_40f457, 1
  br i1 %cmpBr_40f457, label %block_.L_40f51c, label %block_40f45d

block_40f45d:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40f45d	 Bytes: 4
  %loadMem_40f45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f45d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f45d)
  store %struct.Memory* %call_40f45d, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f461	 Bytes: 7
  %loadMem_40f461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f461 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f461)
  store %struct.Memory* %call_40f461, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f468	 Bytes: 4
  %loadMem_40f468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f468 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f468)
  store %struct.Memory* %call_40f468, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f46c	 Bytes: 4
  %loadMem_40f46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f46c = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f46c)
  store %struct.Memory* %call_40f46c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f470	 Bytes: 7
  %loadMem_40f470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f470 = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f470)
  store %struct.Memory* %call_40f470, %struct.Memory** %MEMORY

  ; Code: jle .L_40f509	 RIP: 40f477	 Bytes: 6
  %loadMem_40f477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f477 = call %struct.Memory* @routine_jle_.L_40f509(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f477, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_40f477, %struct.Memory** %MEMORY

  %loadBr_40f477 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f477 = icmp eq i8 %loadBr_40f477, 1
  br i1 %cmpBr_40f477, label %block_.L_40f509, label %block_40f47d

block_40f47d:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f47d	 Bytes: 4
  %loadMem_40f47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f47d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f47d)
  store %struct.Memory* %call_40f47d, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 40f481	 Bytes: 7
  %loadMem_40f481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f481 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f481)
  store %struct.Memory* %call_40f481, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f488	 Bytes: 4
  %loadMem_40f488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f488 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f488)
  store %struct.Memory* %call_40f488, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, (%rax,%rcx,4)	 RIP: 40f48c	 Bytes: 7
  %loadMem_40f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f48c = call %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f48c)
  store %struct.Memory* %call_40f48c, %struct.Memory** %MEMORY

  ; Code: jle .L_40f509	 RIP: 40f493	 Bytes: 6
  %loadMem_40f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f493 = call %struct.Memory* @routine_jle_.L_40f509(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f493, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_40f493, %struct.Memory** %MEMORY

  %loadBr_40f493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f493 = icmp eq i8 %loadBr_40f493, 1
  br i1 %cmpBr_40f493, label %block_.L_40f509, label %block_40f499

block_40f499:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40f499	 Bytes: 4
  %loadMem_40f499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f499 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f499)
  store %struct.Memory* %call_40f499, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f49d	 Bytes: 7
  %loadMem_40f49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f49d = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f49d)
  store %struct.Memory* %call_40f49d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f4a4	 Bytes: 4
  %loadMem_40f4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4a4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4a4)
  store %struct.Memory* %call_40f4a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f4a8	 Bytes: 4
  %loadMem_40f4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4a8 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4a8)
  store %struct.Memory* %call_40f4a8, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40f4ac	 Bytes: 3
  %loadMem_40f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4ac = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4ac)
  store %struct.Memory* %call_40f4ac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f4af	 Bytes: 4
  %loadMem_40f4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4af = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4af)
  store %struct.Memory* %call_40f4af, %struct.Memory** %MEMORY

  ; Code: movq 0x178(%rax), %rax	 RIP: 40f4b3	 Bytes: 7
  %loadMem_40f4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4b3 = call %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4b3)
  store %struct.Memory* %call_40f4b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %rcx	 RIP: 40f4ba	 Bytes: 4
  %loadMem_40f4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4ba = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4ba)
  store %struct.Memory* %call_40f4ba, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rcx,4), %edx	 RIP: 40f4be	 Bytes: 3
  %loadMem_40f4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4be = call %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4be)
  store %struct.Memory* %call_40f4be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f4c1	 Bytes: 6
  %loadMem_40f4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4c1 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4c1)
  store %struct.Memory* %call_40f4c1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f4c7	 Bytes: 4
  %loadMem_40f4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4c7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4c7)
  store %struct.Memory* %call_40f4c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f4cb	 Bytes: 7
  %loadMem_40f4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4cb = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4cb)
  store %struct.Memory* %call_40f4cb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f4d2	 Bytes: 4
  %loadMem_40f4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4d2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4d2)
  store %struct.Memory* %call_40f4d2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %edx	 RIP: 40f4d6	 Bytes: 3
  %loadMem_40f4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4d6 = call %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4d6)
  store %struct.Memory* %call_40f4d6, %struct.Memory** %MEMORY

  ; Code: jle .L_40f509	 RIP: 40f4d9	 Bytes: 6
  %loadMem_40f4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4d9 = call %struct.Memory* @routine_jle_.L_40f509(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4d9, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_40f4d9, %struct.Memory** %MEMORY

  %loadBr_40f4d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f4d9 = icmp eq i8 %loadBr_40f4d9, 1
  br i1 %cmpBr_40f4d9, label %block_.L_40f509, label %block_40f4df

block_40f4df:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f4df	 Bytes: 6
  %loadMem_40f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4df = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4df)
  store %struct.Memory* %call_40f4df, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f4e5	 Bytes: 4
  %loadMem_40f4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4e5 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4e5)
  store %struct.Memory* %call_40f4e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f4e9	 Bytes: 7
  %loadMem_40f4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4e9 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4e9)
  store %struct.Memory* %call_40f4e9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f4f0	 Bytes: 4
  %loadMem_40f4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4f0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4f0)
  store %struct.Memory* %call_40f4f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 40f4f4	 Bytes: 3
  %loadMem_40f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4f4 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4f4)
  store %struct.Memory* %call_40f4f4, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40f4f7	 Bytes: 3
  %loadMem_40f4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4f7 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4f7)
  store %struct.Memory* %call_40f4f7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40f4fa	 Bytes: 4
  %loadMem_40f4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4fa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4fa)
  store %struct.Memory* %call_40f4fa, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rcx	 RIP: 40f4fe	 Bytes: 4
  %loadMem_40f4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f4fe = call %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f4fe)
  store %struct.Memory* %call_40f4fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f502	 Bytes: 4
  %loadMem_40f502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f502 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f502)
  store %struct.Memory* %call_40f502, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 40f506	 Bytes: 3
  %loadMem_40f506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f506 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f506)
  store %struct.Memory* %call_40f506, %struct.Memory** %MEMORY

  ; Code: .L_40f509:	 RIP: 40f509	 Bytes: 0
  br label %block_.L_40f509
block_.L_40f509:

  ; Code: jmpq .L_40f50e	 RIP: 40f509	 Bytes: 5
  %loadMem_40f509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f509 = call %struct.Memory* @routine_jmpq_.L_40f50e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f509, i64 5, i64 5)
  store %struct.Memory* %call_40f509, %struct.Memory** %MEMORY

  br label %block_.L_40f50e

  ; Code: .L_40f50e:	 RIP: 40f50e	 Bytes: 0
block_.L_40f50e:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 40f50e	 Bytes: 3
  %loadMem_40f50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f50e = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f50e)
  store %struct.Memory* %call_40f50e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40f511	 Bytes: 3
  %loadMem_40f511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f511 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f511)
  store %struct.Memory* %call_40f511, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 40f514	 Bytes: 3
  %loadMem_40f514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f514 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f514)
  store %struct.Memory* %call_40f514, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40f44a	 RIP: 40f517	 Bytes: 5
  %loadMem_40f517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f517 = call %struct.Memory* @routine_jmpq_.L_40f44a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f517, i64 -205, i64 5)
  store %struct.Memory* %call_40f517, %struct.Memory** %MEMORY

  br label %block_.L_40f44a

  ; Code: .L_40f51c:	 RIP: 40f51c	 Bytes: 0
block_.L_40f51c:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f51c	 Bytes: 4
  %loadMem_40f51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f51c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f51c)
  store %struct.Memory* %call_40f51c, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f520	 Bytes: 7
  %loadMem_40f520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f520 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f520)
  store %struct.Memory* %call_40f520, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f527	 Bytes: 4
  %loadMem_40f527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f527 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f527)
  store %struct.Memory* %call_40f527, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, (%rax)	 RIP: 40f52b	 Bytes: 6
  %loadMem_40f52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f52b = call %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f52b)
  store %struct.Memory* %call_40f52b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40f531	 Bytes: 4
  %loadMem_40f531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f531 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f531)
  store %struct.Memory* %call_40f531, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f535	 Bytes: 4
  %loadMem_40f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f535 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f535)
  store %struct.Memory* %call_40f535, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f539	 Bytes: 4
  %loadMem_40f539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f539 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f539)
  store %struct.Memory* %call_40f539, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax)	 RIP: 40f53d	 Bytes: 3
  %loadMem_40f53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f53d = call %struct.Memory* @routine_movb__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f53d)
  store %struct.Memory* %call_40f53d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f540	 Bytes: 4
  %loadMem_40f540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f540 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f540)
  store %struct.Memory* %call_40f540, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f544	 Bytes: 7
  %loadMem_40f544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f544 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f544)
  store %struct.Memory* %call_40f544, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f54b	 Bytes: 4
  %loadMem_40f54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f54b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f54b)
  store %struct.Memory* %call_40f54b, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x10(%rax)	 RIP: 40f54f	 Bytes: 7
  %loadMem_40f54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f54f = call %struct.Memory* @routine_cmpl__0xc521974f__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f54f)
  store %struct.Memory* %call_40f54f, %struct.Memory** %MEMORY

  ; Code: jle .L_40f5cf	 RIP: 40f556	 Bytes: 6
  %loadMem_40f556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f556 = call %struct.Memory* @routine_jle_.L_40f5cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f556, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_40f556, %struct.Memory** %MEMORY

  %loadBr_40f556 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f556 = icmp eq i8 %loadBr_40f556, 1
  br i1 %cmpBr_40f556, label %block_.L_40f5cf, label %block_40f55c

block_40f55c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f55c	 Bytes: 4
  %loadMem_40f55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f55c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f55c)
  store %struct.Memory* %call_40f55c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x150(%rax)	 RIP: 40f560	 Bytes: 10
  %loadMem_40f560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f560 = call %struct.Memory* @routine_cmpl__0xc521974f__0x150__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f560)
  store %struct.Memory* %call_40f560, %struct.Memory** %MEMORY

  ; Code: jle .L_40f5cf	 RIP: 40f56a	 Bytes: 6
  %loadMem_40f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f56a = call %struct.Memory* @routine_jle_.L_40f5cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f56a, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_40f56a, %struct.Memory** %MEMORY

  %loadBr_40f56a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f56a = icmp eq i8 %loadBr_40f56a, 1
  br i1 %cmpBr_40f56a, label %block_.L_40f5cf, label %block_40f570

block_40f570:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f570	 Bytes: 4
  %loadMem_40f570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f570 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f570)
  store %struct.Memory* %call_40f570, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f574	 Bytes: 7
  %loadMem_40f574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f574 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f574)
  store %struct.Memory* %call_40f574, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f57b	 Bytes: 4
  %loadMem_40f57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f57b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f57b)
  store %struct.Memory* %call_40f57b, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 40f57f	 Bytes: 3
  %loadMem_40f57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f57f = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f57f)
  store %struct.Memory* %call_40f57f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f582	 Bytes: 4
  %loadMem_40f582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f582 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f582)
  store %struct.Memory* %call_40f582, %struct.Memory** %MEMORY

  ; Code: addl 0x150(%rax), %edx	 RIP: 40f586	 Bytes: 6
  %loadMem_40f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f586 = call %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f586)
  store %struct.Memory* %call_40f586, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f58c	 Bytes: 6
  %loadMem_40f58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f58c = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f58c)
  store %struct.Memory* %call_40f58c, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f592	 Bytes: 4
  %loadMem_40f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f592 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f592)
  store %struct.Memory* %call_40f592, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f596	 Bytes: 7
  %loadMem_40f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f596 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f596)
  store %struct.Memory* %call_40f596, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f59d	 Bytes: 4
  %loadMem_40f59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f59d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f59d)
  store %struct.Memory* %call_40f59d, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %edx	 RIP: 40f5a1	 Bytes: 2
  %loadMem_40f5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5a1 = call %struct.Memory* @routine_cmpl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5a1)
  store %struct.Memory* %call_40f5a1, %struct.Memory** %MEMORY

  ; Code: jle .L_40f5cf	 RIP: 40f5a3	 Bytes: 6
  %loadMem_40f5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5a3 = call %struct.Memory* @routine_jle_.L_40f5cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5a3, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_40f5a3, %struct.Memory** %MEMORY

  %loadBr_40f5a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f5a3 = icmp eq i8 %loadBr_40f5a3, 1
  br i1 %cmpBr_40f5a3, label %block_.L_40f5cf, label %block_40f5a9

block_40f5a9:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f5a9	 Bytes: 6
  %loadMem_40f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5a9 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5a9)
  store %struct.Memory* %call_40f5a9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f5af	 Bytes: 4
  %loadMem_40f5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5af = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5af)
  store %struct.Memory* %call_40f5af, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f5b3	 Bytes: 7
  %loadMem_40f5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5b3 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5b3)
  store %struct.Memory* %call_40f5b3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f5ba	 Bytes: 4
  %loadMem_40f5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5ba = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5ba)
  store %struct.Memory* %call_40f5ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 40f5be	 Bytes: 2
  %loadMem_40f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5be = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5be)
  store %struct.Memory* %call_40f5be, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 40f5c0	 Bytes: 4
  %loadMem_40f5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5c0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5c0)
  store %struct.Memory* %call_40f5c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f5c4	 Bytes: 4
  %loadMem_40f5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5c4 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5c4)
  store %struct.Memory* %call_40f5c4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f5c8	 Bytes: 4
  %loadMem_40f5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5c8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5c8)
  store %struct.Memory* %call_40f5c8, %struct.Memory** %MEMORY

  ; Code: movb $0x5, (%rcx)	 RIP: 40f5cc	 Bytes: 3
  %loadMem_40f5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5cc = call %struct.Memory* @routine_movb__0x5____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5cc)
  store %struct.Memory* %call_40f5cc, %struct.Memory** %MEMORY

  ; Code: .L_40f5cf:	 RIP: 40f5cf	 Bytes: 0
  br label %block_.L_40f5cf
block_.L_40f5cf:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f5cf	 Bytes: 4
  %loadMem_40f5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5cf = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5cf)
  store %struct.Memory* %call_40f5cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f5d3	 Bytes: 7
  %loadMem_40f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5d3 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5d3)
  store %struct.Memory* %call_40f5d3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f5da	 Bytes: 4
  %loadMem_40f5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5da = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5da)
  store %struct.Memory* %call_40f5da, %struct.Memory** %MEMORY

  ; Code: movl $0xc521974f, 0x8(%rax)	 RIP: 40f5de	 Bytes: 7
  %loadMem_40f5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5de = call %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5de)
  store %struct.Memory* %call_40f5de, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40f5e5	 Bytes: 4
  %loadMem_40f5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5e5 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5e5)
  store %struct.Memory* %call_40f5e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f5e9	 Bytes: 4
  %loadMem_40f5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5e9 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5e9)
  store %struct.Memory* %call_40f5e9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f5ed	 Bytes: 4
  %loadMem_40f5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5ed = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5ed)
  store %struct.Memory* %call_40f5ed, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x2(%rax)	 RIP: 40f5f1	 Bytes: 4
  %loadMem_40f5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5f1 = call %struct.Memory* @routine_movb__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5f1)
  store %struct.Memory* %call_40f5f1, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f5f5	 Bytes: 4
  %loadMem_40f5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5f5 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5f5)
  store %struct.Memory* %call_40f5f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f5f9	 Bytes: 7
  %loadMem_40f5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f5f9 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f5f9)
  store %struct.Memory* %call_40f5f9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f600	 Bytes: 4
  %loadMem_40f600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f600 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f600)
  store %struct.Memory* %call_40f600, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x8(%rax)	 RIP: 40f604	 Bytes: 7
  %loadMem_40f604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f604 = call %struct.Memory* @routine_cmpl__0xc521974f__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f604)
  store %struct.Memory* %call_40f604, %struct.Memory** %MEMORY

  ; Code: jle .L_40f694	 RIP: 40f60b	 Bytes: 6
  %loadMem_40f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f60b = call %struct.Memory* @routine_jle_.L_40f694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f60b, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_40f60b, %struct.Memory** %MEMORY

  %loadBr_40f60b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f60b = icmp eq i8 %loadBr_40f60b, 1
  br i1 %cmpBr_40f60b, label %block_.L_40f694, label %block_40f611

block_40f611:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f611	 Bytes: 4
  %loadMem_40f611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f611 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f611)
  store %struct.Memory* %call_40f611, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x164(%rax)	 RIP: 40f615	 Bytes: 10
  %loadMem_40f615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f615 = call %struct.Memory* @routine_cmpl__0xc521974f__0x164__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f615)
  store %struct.Memory* %call_40f615, %struct.Memory** %MEMORY

  ; Code: jle .L_40f694	 RIP: 40f61f	 Bytes: 6
  %loadMem_40f61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f61f = call %struct.Memory* @routine_jle_.L_40f694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f61f, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_40f61f, %struct.Memory** %MEMORY

  %loadBr_40f61f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f61f = icmp eq i8 %loadBr_40f61f, 1
  br i1 %cmpBr_40f61f, label %block_.L_40f694, label %block_40f625

block_40f625:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f625	 Bytes: 4
  %loadMem_40f625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f625 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f625)
  store %struct.Memory* %call_40f625, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 40f629	 Bytes: 7
  %loadMem_40f629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f629 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f629)
  store %struct.Memory* %call_40f629, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f630	 Bytes: 4
  %loadMem_40f630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f630 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f630)
  store %struct.Memory* %call_40f630, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x8(%rax), %xmm0	 RIP: 40f634	 Bytes: 5
  %loadMem_40f634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f634 = call %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f634)
  store %struct.Memory* %call_40f634, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f639	 Bytes: 4
  %loadMem_40f639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f639 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f639)
  store %struct.Memory* %call_40f639, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x164(%rax), %xmm1	 RIP: 40f63d	 Bytes: 8
  %loadMem_40f63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f63d = call %struct.Memory* @routine_cvtsi2ssl_0x164__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f63d)
  store %struct.Memory* %call_40f63d, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f645	 Bytes: 4
  %loadMem_40f645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f645 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f645)
  store %struct.Memory* %call_40f645, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f649	 Bytes: 4
  %loadMem_40f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f649 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f649)
  store %struct.Memory* %call_40f649, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40f64d	 Bytes: 5
  %loadMem_40f64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f64d = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f64d)
  store %struct.Memory* %call_40f64d, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40f652	 Bytes: 4
  %loadMem_40f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f652 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f652)
  store %struct.Memory* %call_40f652, %struct.Memory** %MEMORY

  ; Code: cvttss2si %xmm0, %edx	 RIP: 40f656	 Bytes: 4
  %loadMem_40f656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f656 = call %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f656)
  store %struct.Memory* %call_40f656, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f65a	 Bytes: 6
  %loadMem_40f65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f65a = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f65a)
  store %struct.Memory* %call_40f65a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, %edx	 RIP: 40f660	 Bytes: 6
  %loadMem_40f660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f660 = call %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f660)
  store %struct.Memory* %call_40f660, %struct.Memory** %MEMORY

  ; Code: jle .L_40f694	 RIP: 40f666	 Bytes: 6
  %loadMem_40f666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f666 = call %struct.Memory* @routine_jle_.L_40f694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f666, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_40f666, %struct.Memory** %MEMORY

  %loadBr_40f666 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f666 = icmp eq i8 %loadBr_40f666, 1
  br i1 %cmpBr_40f666, label %block_.L_40f694, label %block_40f66c

block_40f66c:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f66c	 Bytes: 6
  %loadMem_40f66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f66c = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f66c)
  store %struct.Memory* %call_40f66c, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f672	 Bytes: 4
  %loadMem_40f672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f672 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f672)
  store %struct.Memory* %call_40f672, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f676	 Bytes: 7
  %loadMem_40f676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f676 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f676)
  store %struct.Memory* %call_40f676, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f67d	 Bytes: 4
  %loadMem_40f67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f67d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f67d)
  store %struct.Memory* %call_40f67d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40f681	 Bytes: 3
  %loadMem_40f681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f681 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f681)
  store %struct.Memory* %call_40f681, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 40f684	 Bytes: 4
  %loadMem_40f684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f684 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f684)
  store %struct.Memory* %call_40f684, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f688	 Bytes: 4
  %loadMem_40f688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f688 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f688)
  store %struct.Memory* %call_40f688, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f68c	 Bytes: 4
  %loadMem_40f68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f68c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f68c)
  store %struct.Memory* %call_40f68c, %struct.Memory** %MEMORY

  ; Code: movb $0x8, 0x2(%rcx)	 RIP: 40f690	 Bytes: 4
  %loadMem_40f690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f690 = call %struct.Memory* @routine_movb__0x8__0x2__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f690)
  store %struct.Memory* %call_40f690, %struct.Memory** %MEMORY

  ; Code: .L_40f694:	 RIP: 40f694	 Bytes: 0
  br label %block_.L_40f694
block_.L_40f694:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f694	 Bytes: 4
  %loadMem_40f694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f694 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f694)
  store %struct.Memory* %call_40f694, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f698	 Bytes: 7
  %loadMem_40f698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f698 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f698)
  store %struct.Memory* %call_40f698, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f69f	 Bytes: 4
  %loadMem_40f69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f69f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f69f)
  store %struct.Memory* %call_40f69f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x4(%rax)	 RIP: 40f6a3	 Bytes: 7
  %loadMem_40f6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6a3 = call %struct.Memory* @routine_cmpl__0xc521974f__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6a3)
  store %struct.Memory* %call_40f6a3, %struct.Memory** %MEMORY

  ; Code: jle .L_40f726	 RIP: 40f6aa	 Bytes: 6
  %loadMem_40f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6aa = call %struct.Memory* @routine_jle_.L_40f726(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6aa, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_40f6aa, %struct.Memory** %MEMORY

  %loadBr_40f6aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f6aa = icmp eq i8 %loadBr_40f6aa, 1
  br i1 %cmpBr_40f6aa, label %block_.L_40f726, label %block_40f6b0

block_40f6b0:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f6b0	 Bytes: 4
  %loadMem_40f6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6b0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6b0)
  store %struct.Memory* %call_40f6b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc521974f, 0x158(%rax)	 RIP: 40f6b4	 Bytes: 10
  %loadMem_40f6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6b4 = call %struct.Memory* @routine_cmpl__0xc521974f__0x158__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6b4)
  store %struct.Memory* %call_40f6b4, %struct.Memory** %MEMORY

  ; Code: jle .L_40f726	 RIP: 40f6be	 Bytes: 6
  %loadMem_40f6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6be = call %struct.Memory* @routine_jle_.L_40f726(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6be, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_40f6be, %struct.Memory** %MEMORY

  %loadBr_40f6be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f6be = icmp eq i8 %loadBr_40f6be, 1
  br i1 %cmpBr_40f6be, label %block_.L_40f726, label %block_40f6c4

block_40f6c4:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f6c4	 Bytes: 4
  %loadMem_40f6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6c4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6c4)
  store %struct.Memory* %call_40f6c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f6c8	 Bytes: 7
  %loadMem_40f6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6c8 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6c8)
  store %struct.Memory* %call_40f6c8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f6cf	 Bytes: 4
  %loadMem_40f6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6cf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6cf)
  store %struct.Memory* %call_40f6cf, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 40f6d3	 Bytes: 3
  %loadMem_40f6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6d3 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6d3)
  store %struct.Memory* %call_40f6d3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40f6d6	 Bytes: 4
  %loadMem_40f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6d6)
  store %struct.Memory* %call_40f6d6, %struct.Memory** %MEMORY

  ; Code: addl 0x158(%rax), %edx	 RIP: 40f6da	 Bytes: 6
  %loadMem_40f6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6da = call %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6da)
  store %struct.Memory* %call_40f6da, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f6e0	 Bytes: 6
  %loadMem_40f6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6e0 = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6e0)
  store %struct.Memory* %call_40f6e0, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40f6e6	 Bytes: 4
  %loadMem_40f6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6e6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6e6)
  store %struct.Memory* %call_40f6e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 40f6ea	 Bytes: 7
  %loadMem_40f6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6ea = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6ea)
  store %struct.Memory* %call_40f6ea, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f6f1	 Bytes: 4
  %loadMem_40f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6f1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6f1)
  store %struct.Memory* %call_40f6f1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %edx	 RIP: 40f6f5	 Bytes: 3
  %loadMem_40f6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6f5 = call %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6f5)
  store %struct.Memory* %call_40f6f5, %struct.Memory** %MEMORY

  ; Code: jle .L_40f726	 RIP: 40f6f8	 Bytes: 6
  %loadMem_40f6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6f8 = call %struct.Memory* @routine_jle_.L_40f726(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6f8, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_40f6f8, %struct.Memory** %MEMORY

  %loadBr_40f6f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f6f8 = icmp eq i8 %loadBr_40f6f8, 1
  br i1 %cmpBr_40f6f8, label %block_.L_40f726, label %block_40f6fe

block_40f6fe:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 40f6fe	 Bytes: 6
  %loadMem_40f6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f6fe = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f6fe)
  store %struct.Memory* %call_40f6fe, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f704	 Bytes: 4
  %loadMem_40f704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f704 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f704)
  store %struct.Memory* %call_40f704, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 40f708	 Bytes: 7
  %loadMem_40f708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f708 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f708)
  store %struct.Memory* %call_40f708, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f70f	 Bytes: 4
  %loadMem_40f70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f70f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f70f)
  store %struct.Memory* %call_40f70f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 40f713	 Bytes: 3
  %loadMem_40f713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f713 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f713)
  store %struct.Memory* %call_40f713, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 40f716	 Bytes: 4
  %loadMem_40f716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f716 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f716)
  store %struct.Memory* %call_40f716, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rdx	 RIP: 40f71a	 Bytes: 4
  %loadMem_40f71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f71a = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f71a)
  store %struct.Memory* %call_40f71a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 40f71e	 Bytes: 4
  %loadMem_40f71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f71e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f71e)
  store %struct.Memory* %call_40f71e, %struct.Memory** %MEMORY

  ; Code: movb $0x7, 0x2(%rcx)	 RIP: 40f722	 Bytes: 4
  %loadMem_40f722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f722 = call %struct.Memory* @routine_movb__0x7__0x2__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f722)
  store %struct.Memory* %call_40f722, %struct.Memory** %MEMORY

  ; Code: .L_40f726:	 RIP: 40f726	 Bytes: 0
  br label %block_.L_40f726
block_.L_40f726:

  ; Code: jmpq .L_40f72b	 RIP: 40f726	 Bytes: 5
  %loadMem_40f726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f726 = call %struct.Memory* @routine_jmpq_.L_40f72b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f726, i64 5, i64 5)
  store %struct.Memory* %call_40f726, %struct.Memory** %MEMORY

  br label %block_.L_40f72b

  ; Code: .L_40f72b:	 RIP: 40f72b	 Bytes: 0
block_.L_40f72b:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40f72b	 Bytes: 3
  %loadMem_40f72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f72b = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f72b)
  store %struct.Memory* %call_40f72b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40f72e	 Bytes: 3
  %loadMem_40f72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f72e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f72e)
  store %struct.Memory* %call_40f72e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 40f731	 Bytes: 3
  %loadMem_40f731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f731 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f731)
  store %struct.Memory* %call_40f731, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40e97c	 RIP: 40f734	 Bytes: 5
  %loadMem_40f734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f734 = call %struct.Memory* @routine_jmpq_.L_40e97c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f734, i64 -3512, i64 5)
  store %struct.Memory* %call_40f734, %struct.Memory** %MEMORY

  br label %block_.L_40e97c

  ; Code: .L_40f739:	 RIP: 40f739	 Bytes: 0
block_.L_40f739:

  ; Code: movl $0x2, %eax	 RIP: 40f739	 Bytes: 5
  %loadMem_40f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f739 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f739)
  store %struct.Memory* %call_40f739, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40f73e	 Bytes: 4
  %loadMem_40f73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f73e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f73e)
  store %struct.Memory* %call_40f73e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 40f742	 Bytes: 4
  %loadMem_40f742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f742 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f742)
  store %struct.Memory* %call_40f742, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdx), %esi	 RIP: 40f746	 Bytes: 3
  %loadMem_40f746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f746 = call %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f746)
  store %struct.Memory* %call_40f746, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 40f749	 Bytes: 6
  %loadMem_40f749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f749 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f749)
  store %struct.Memory* %call_40f749, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 40f74f	 Bytes: 2
  %loadMem_40f74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f74f = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f74f)
  store %struct.Memory* %call_40f74f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40f751	 Bytes: 1
  %loadMem_40f751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f751 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f751)
  store %struct.Memory* %call_40f751, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %esi	 RIP: 40f752	 Bytes: 6
  %loadMem_40f752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f752 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f752)
  store %struct.Memory* %call_40f752, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 40f758	 Bytes: 2
  %loadMem_40f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f758 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f758)
  store %struct.Memory* %call_40f758, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 40f75a	 Bytes: 3
  %loadMem_40f75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f75a = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f75a)
  store %struct.Memory* %call_40f75a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 40f75d	 Bytes: 4
  %loadMem_40f75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f75d = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f75d)
  store %struct.Memory* %call_40f75d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %edx	 RIP: 40f761	 Bytes: 3
  %loadMem_40f761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f761 = call %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f761)
  store %struct.Memory* %call_40f761, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40f764	 Bytes: 4
  %loadMem_40f764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f764 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f764)
  store %struct.Memory* %call_40f764, %struct.Memory** %MEMORY

  ; Code: addl 0x160(%rcx), %edx	 RIP: 40f768	 Bytes: 6
  %loadMem_40f768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f768 = call %struct.Memory* @routine_addl_0x160__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f768)
  store %struct.Memory* %call_40f768, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8c(%rbp)	 RIP: 40f76e	 Bytes: 6
  %loadMem_40f76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f76e = call %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f76e)
  store %struct.Memory* %call_40f76e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 40f774	 Bytes: 4
  %loadMem_40f774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f774 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f774)
  store %struct.Memory* %call_40f774, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40f778	 Bytes: 4
  %loadMem_40f778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f778 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f778)
  store %struct.Memory* %call_40f778, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40f77c	 Bytes: 4
  %loadMem_40f77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f77c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f77c)
  store %struct.Memory* %call_40f77c, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rcx), %edx	 RIP: 40f780	 Bytes: 3
  %loadMem_40f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f780 = call %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f780)
  store %struct.Memory* %call_40f780, %struct.Memory** %MEMORY

  ; Code: callq .ShadowTrace	 RIP: 40f783	 Bytes: 5
  %loadMem1_40f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f783 = call %struct.Memory* @routine_callq_.ShadowTrace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f783, i64 125, i64 5, i64 5)
  store %struct.Memory* %call1_40f783, %struct.Memory** %MEMORY

  %loadMem2_40f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f783 = load i64, i64* %3
  %call2_40f783 = call %struct.Memory* @sub_40f800.ShadowTrace(%struct.State* %0, i64  %loadPC_40f783, %struct.Memory* %loadMem2_40f783)
  store %struct.Memory* %call2_40f783, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 40f788	 Bytes: 4
  %loadMem_40f788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f788 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f788)
  store %struct.Memory* %call_40f788, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40f78c	 Bytes: 4
  %loadMem_40f78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f78c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f78c)
  store %struct.Memory* %call_40f78c, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7Matrix	 RIP: 40f790	 Bytes: 5
  %loadMem1_40f790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f790 = call %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f790, i64 -32336, i64 5, i64 5)
  store %struct.Memory* %call1_40f790, %struct.Memory** %MEMORY

  %loadMem2_40f790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f790 = load i64, i64* %3
  %call2_40f790 = call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* %0, i64  %loadPC_40f790, %struct.Memory* %loadMem2_40f790)
  store %struct.Memory* %call2_40f790, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 40f795	 Bytes: 4
  %loadMem_40f795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f795 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f795)
  store %struct.Memory* %call_40f795, %struct.Memory** %MEMORY

  ; Code: callq .FreeShadowMatrix	 RIP: 40f799	 Bytes: 5
  %loadMem1_40f799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f799 = call %struct.Memory* @routine_callq_.FreeShadowMatrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f799, i64 -31385, i64 5, i64 5)
  store %struct.Memory* %call1_40f799, %struct.Memory** %MEMORY

  %loadMem2_40f799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f799 = load i64, i64* %3
  %call2_40f799 = call %struct.Memory* @sub_407d00.FreeShadowMatrix(%struct.State* %0, i64  %loadPC_40f799, %struct.Memory* %loadMem2_40f799)
  store %struct.Memory* %call2_40f799, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x7c(%rbp)	 RIP: 40f79e	 Bytes: 7
  %loadMem_40f79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f79e = call %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f79e)
  store %struct.Memory* %call_40f79e, %struct.Memory** %MEMORY

  ; Code: .L_40f7a5:	 RIP: 40f7a5	 Bytes: 0
  br label %block_.L_40f7a5
block_.L_40f7a5:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40f7a5	 Bytes: 3
  %loadMem_40f7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7a5 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7a5)
  store %struct.Memory* %call_40f7a5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40f7a8	 Bytes: 4
  %loadMem_40f7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7a8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7a8)
  store %struct.Memory* %call_40f7a8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 40f7ac	 Bytes: 3
  %loadMem_40f7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7ac = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7ac)
  store %struct.Memory* %call_40f7ac, %struct.Memory** %MEMORY

  ; Code: jg .L_40f7d7	 RIP: 40f7af	 Bytes: 6
  %loadMem_40f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7af = call %struct.Memory* @routine_jg_.L_40f7d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7af, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_40f7af, %struct.Memory** %MEMORY

  %loadBr_40f7af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f7af = icmp eq i8 %loadBr_40f7af, 1
  br i1 %cmpBr_40f7af, label %block_.L_40f7d7, label %block_40f7b5

block_40f7b5:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 40f7b5	 Bytes: 4
  %loadMem_40f7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7b5 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7b5)
  store %struct.Memory* %call_40f7b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %rcx	 RIP: 40f7b9	 Bytes: 4
  %loadMem_40f7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7b9 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7b9)
  store %struct.Memory* %call_40f7b9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40f7bd	 Bytes: 4
  %loadMem_40f7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7bd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7bd)
  store %struct.Memory* %call_40f7bd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40f7c1	 Bytes: 3
  %loadMem_40f7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7c1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7c1)
  store %struct.Memory* %call_40f7c1, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40f7c4	 Bytes: 5
  %loadMem1_40f7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f7c4 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f7c4, i64 -58436, i64 5, i64 5)
  store %struct.Memory* %call1_40f7c4, %struct.Memory** %MEMORY

  %loadMem2_40f7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f7c4 = load i64, i64* %3
  %call2_40f7c4 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_40f7c4, %struct.Memory* %loadMem2_40f7c4)
  store %struct.Memory* %call2_40f7c4, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 40f7c9	 Bytes: 3
  %loadMem_40f7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7c9 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7c9)
  store %struct.Memory* %call_40f7c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40f7cc	 Bytes: 3
  %loadMem_40f7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7cc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7cc)
  store %struct.Memory* %call_40f7cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 40f7cf	 Bytes: 3
  %loadMem_40f7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7cf = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7cf)
  store %struct.Memory* %call_40f7cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40f7a5	 RIP: 40f7d2	 Bytes: 5
  %loadMem_40f7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7d2 = call %struct.Memory* @routine_jmpq_.L_40f7a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7d2, i64 -45, i64 5)
  store %struct.Memory* %call_40f7d2, %struct.Memory** %MEMORY

  br label %block_.L_40f7a5

  ; Code: .L_40f7d7:	 RIP: 40f7d7	 Bytes: 0
block_.L_40f7d7:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40f7d7	 Bytes: 4
  %loadMem_40f7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7d7 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7d7)
  store %struct.Memory* %call_40f7d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40f7db	 Bytes: 3
  %loadMem_40f7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7db = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7db)
  store %struct.Memory* %call_40f7db, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40f7de	 Bytes: 5
  %loadMem1_40f7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f7de = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f7de, i64 -58462, i64 5, i64 5)
  store %struct.Memory* %call1_40f7de, %struct.Memory** %MEMORY

  %loadMem2_40f7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f7de = load i64, i64* %3
  %call2_40f7de = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_40f7de, %struct.Memory* %loadMem2_40f7de)
  store %struct.Memory* %call2_40f7de, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40f7e3	 Bytes: 4
  %loadMem_40f7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7e3 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7e3)
  store %struct.Memory* %call_40f7e3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40f7e7	 Bytes: 3
  %loadMem_40f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7e7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7e7)
  store %struct.Memory* %call_40f7e7, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40f7ea	 Bytes: 5
  %loadMem1_40f7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40f7ea = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40f7ea, i64 -58474, i64 5, i64 5)
  store %struct.Memory* %call1_40f7ea, %struct.Memory** %MEMORY

  %loadMem2_40f7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f7ea = load i64, i64* %3
  %call2_40f7ea = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_40f7ea, %struct.Memory* %loadMem2_40f7ea)
  store %struct.Memory* %call2_40f7ea, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40f7ef	 Bytes: 4
  %loadMem_40f7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7ef = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7ef)
  store %struct.Memory* %call_40f7ef, %struct.Memory** %MEMORY

  ; Code: addq $0xc0, %rsp	 RIP: 40f7f3	 Bytes: 7
  %loadMem_40f7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7f3 = call %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7f3)
  store %struct.Memory* %call_40f7f3, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40f7fa	 Bytes: 1
  %loadMem_40f7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7fa = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7fa)
  store %struct.Memory* %call_40f7fa, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40f7fb	 Bytes: 1
  %loadMem_40f7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40f7fb = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40f7fb)
  store %struct.Memory* %call_40f7fb, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40f7fb
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x455f2a___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x455f2a_type* @G__0x455f2a to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x7fc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2044)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x18__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_shlq__0x3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3)
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


define %struct.Memory* @routine_movq__rsi__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x455f2a_type* @G__0x455f2a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x7fd___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2045)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 124
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_jg_.L_40e5ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x7ff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2047)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40e582(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x46152__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x46152__rip__type* @G_0x46152__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
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










define %struct.Memory* @routine_jg_.L_40e803(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jge_.L_40e7a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_je_.L_40e787(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x676fe0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x676fe0_type* @G__0x676fe0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.strchr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x676fe0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x676fe0_type* @G__0x676fe0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
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

define %struct.Memory* @routine_movsbl__r8b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
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


define %struct.Memory* @routine_jmpq_.L_40e78c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40e637(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x46038__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x46038__rip__type* @G_0x46038__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x90__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_callq_.FScale(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_40e61d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x68__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x18__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
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




define %struct.Memory* @routine_movl_0x88__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.AllocShadowMatrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x4__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__esi____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movb__0x5____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 5)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movb__0x0__0x3__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movb__0x0__0x2__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jg_.L_40e975(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_40e8f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jg_.L_40f739(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
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

define %struct.Memory* @routine_andb__0x1___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -987654321)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__0x0____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jg_.L_40f358(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
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

define %struct.Memory* @routine_jle_.L_40eb4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
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


define %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -987654321)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_jle_.L_40ec3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}














define %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSS2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero32EfEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = tail call float @llvm.trunc.f32(float %7) #22
  %9 = tail call float @llvm.fabs.f32(float %8) #22
  %10 = fcmp ogt float %9, 0x41E0000000000000
  %11 = fptosi float %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSS2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero32EfEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}




































define %struct.Memory* @routine_movb__0x3____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 3)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 368
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jle_.L_40ecb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movb__0x6____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 6)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_jle_.L_40ed83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}










































































define %struct.Memory* @routine_movb__0x2____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 2)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_jge_.L_40ee78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jbe_.L_40ee0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
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

define %struct.Memory* @routine_jne_.L_40ee0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_40ee78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSS2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero32EfEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_jmpq_.L_40ed8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




































define %struct.Memory* @routine_jle_.L_40ef78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























































define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_jle_.L_40f04a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


















































































define %struct.Memory* @routine_jge_.L_40f345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jle_.L_40f162(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jle_.L_40f24b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































































































define %struct.Memory* @routine_jge_.L_40f340(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jbe_.L_40f2d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_40f2d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_40f340(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














































define %struct.Memory* @routine_jmpq_.L_40f255(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40f345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40f34a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40ea3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpl__0xc521974f__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40f41d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xc521974f__0x154__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 340
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x154__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movb__0x5__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_movb__0x0__0x1__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jg_.L_40f51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jle_.L_40f509(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


































define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_40f50e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40f44a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -987654321)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movb__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jle_.L_40f5cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xc521974f__0x150__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movb__0x5____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 5)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_cmpl__0xc521974f__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40f694(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xc521974f__0x164__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x164__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 356
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movb__0x8__0x2__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpl__0xc521974f__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_40f726(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xc521974f__0x158__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 344
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -987654321)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movb__0x7__0x2__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40f72b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40e97c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_idivl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq__edx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x160__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 352
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.ShadowTrace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.FreeShadowMatrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jg_.L_40f7d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_40f7a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
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

