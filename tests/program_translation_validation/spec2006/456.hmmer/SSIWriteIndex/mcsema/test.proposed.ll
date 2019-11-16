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

declare %struct.Memory* @sub_401640.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_448870.current_index_size(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401440.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401470.system_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4517e0.specqsort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_449d50.write_i32(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_449db0.write_i16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_449e20.write_i64(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446320.sre_fgets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_449e80.parse_pkey_info(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44a050.write_offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44a0c0.parse_skey_info(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x663038_type = type <{ [4 x i8] }>
@G_0x663038= global %G_0x663038_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x449cd0_type = type <{ [8 x i8] }>
@G__0x449cd0= global %G__0x449cd0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x449d10_type = type <{ [8 x i8] }>
@G__0x449d10= global %G__0x449d10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457339_type = type <{ [8 x i8] }>
@G__0x457339= global %G__0x457339_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458380_type = type <{ [8 x i8] }>
@G__0x458380= global %G__0x458380_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a9d8_type = type <{ [8 x i8] }>
@G__0x45a9d8= global %G__0x45a9d8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45aa4b_type = type <{ [8 x i8] }>
@G__0x45aa4b= global %G__0x45aa4b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @SSIWriteIndex(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SSIWriteIndex:	 RIP: 448f20	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 448f20	 Bytes: 1
  %loadMem_448f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f20 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f20)
  store %struct.Memory* %call_448f20, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 448f21	 Bytes: 3
  %loadMem_448f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f21 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f21)
  store %struct.Memory* %call_448f21, %struct.Memory** %MEMORY

  ; Code: subq $0x560, %rsp	 RIP: 448f24	 Bytes: 7
  %loadMem_448f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f24 = call %struct.Memory* @routine_subq__0x560___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f24)
  store %struct.Memory* %call_448f24, %struct.Memory** %MEMORY

  ; Code: movq $0x457339, %rax	 RIP: 448f2b	 Bytes: 10
  %loadMem_448f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f2b = call %struct.Memory* @routine_movq__0x457339___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f2b)
  store %struct.Memory* %call_448f2b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 448f35	 Bytes: 4
  %loadMem_448f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f35 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f35)
  store %struct.Memory* %call_448f35, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 448f39	 Bytes: 4
  %loadMem_448f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f39 = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f39)
  store %struct.Memory* %call_448f39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 448f3d	 Bytes: 4
  %loadMem_448f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f3d)
  store %struct.Memory* %call_448f3d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 448f41	 Bytes: 3
  %loadMem_448f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f41 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f41)
  store %struct.Memory* %call_448f41, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 448f44	 Bytes: 5
  %loadMem1_448f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_448f44 = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_448f44, i64 -293124, i64 5, i64 5)
  store %struct.Memory* %call1_448f44, %struct.Memory** %MEMORY

  %loadMem2_448f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448f44 = load i64, i64* %3
  %call2_448f44 = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64  %loadPC_448f44, %struct.Memory* %loadMem2_448f44)
  store %struct.Memory* %call2_448f44, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 448f49	 Bytes: 4
  %loadMem_448f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f49 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f49)
  store %struct.Memory* %call_448f49, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 448f4d	 Bytes: 4
  %loadMem_448f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f4d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f4d)
  store %struct.Memory* %call_448f4d, %struct.Memory** %MEMORY

  ; Code: jne .L_448f63	 RIP: 448f51	 Bytes: 6
  %loadMem_448f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f51 = call %struct.Memory* @routine_jne_.L_448f63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f51, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_448f51, %struct.Memory** %MEMORY

  %loadBr_448f51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448f51 = icmp eq i8 %loadBr_448f51, 1
  br i1 %cmpBr_448f51, label %block_.L_448f63, label %block_448f57

block_448f57:
  ; Code: movl $0x4, -0x4(%rbp)	 RIP: 448f57	 Bytes: 7
  %loadMem_448f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f57 = call %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f57)
  store %struct.Memory* %call_448f57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 448f5e	 Bytes: 5
  %loadMem_448f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f5e = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f5e, i64 3419, i64 5)
  store %struct.Memory* %call_448f5e, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_448f63:	 RIP: 448f63	 Bytes: 0
block_.L_448f63:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 448f63	 Bytes: 7
  %loadMem_448f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f63 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f63)
  store %struct.Memory* %call_448f63, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 448f6a	 Bytes: 4
  %loadMem_448f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f6a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f6a)
  store %struct.Memory* %call_448f6a, %struct.Memory** %MEMORY

  ; Code: callq .current_index_size	 RIP: 448f6e	 Bytes: 5
  %loadMem1_448f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_448f6e = call %struct.Memory* @routine_callq_.current_index_size(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_448f6e, i64 -1790, i64 5, i64 5)
  store %struct.Memory* %call1_448f6e, %struct.Memory** %MEMORY

  %loadMem2_448f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448f6e = load i64, i64* %3
  %call2_448f6e = call %struct.Memory* @sub_448870.current_index_size(%struct.State* %0, i64  %loadPC_448f6e, %struct.Memory* %loadMem2_448f6e)
  store %struct.Memory* %call2_448f6e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x7ff, %rax	 RIP: 448f73	 Bytes: 6
  %loadMem_448f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f73 = call %struct.Memory* @routine_cmpq__0x7ff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f73)
  store %struct.Memory* %call_448f73, %struct.Memory** %MEMORY

  ; Code: jb .L_448f9b	 RIP: 448f79	 Bytes: 6
  %loadMem_448f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f79 = call %struct.Memory* @routine_jb_.L_448f9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f79, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_448f79, %struct.Memory** %MEMORY

  %loadBr_448f79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448f79 = icmp eq i8 %loadBr_448f79, 1
  br i1 %cmpBr_448f79, label %block_.L_448f9b, label %block_448f7f

block_448f7f:
  ; Code: movq $0x45a9d8, %rdi	 RIP: 448f7f	 Bytes: 10
  %loadMem_448f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f7f = call %struct.Memory* @routine_movq__0x45a9d8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f7f)
  store %struct.Memory* %call_448f7f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 448f89	 Bytes: 4
  %loadMem_448f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f89 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f89)
  store %struct.Memory* %call_448f89, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x4(%rax)	 RIP: 448f8d	 Bytes: 7
  %loadMem_448f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f8d = call %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f8d)
  store %struct.Memory* %call_448f8d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 448f94	 Bytes: 2
  %loadMem_448f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f94 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f94)
  store %struct.Memory* %call_448f94, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 448f96	 Bytes: 5
  %loadMem1_448f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_448f96 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_448f96, i64 -42374, i64 5, i64 5)
  store %struct.Memory* %call1_448f96, %struct.Memory** %MEMORY

  %loadMem2_448f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448f96 = load i64, i64* %3
  %call2_448f96 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_448f96, %struct.Memory* %loadMem2_448f96)
  store %struct.Memory* %call2_448f96, %struct.Memory** %MEMORY

  ; Code: .L_448f9b:	 RIP: 448f9b	 Bytes: 0
  br label %block_.L_448f9b
block_.L_448f9b:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 448f9b	 Bytes: 4
  %loadMem_448f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f9b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f9b)
  store %struct.Memory* %call_448f9b, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 448f9f	 Bytes: 3
  %loadMem_448f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f9f = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f9f)
  store %struct.Memory* %call_448f9f, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %ecx	 RIP: 448fa2	 Bytes: 3
  %loadMem_448fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fa2 = call %struct.Memory* @routine_addl__0x10___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fa2)
  store %struct.Memory* %call_448fa2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 448fa5	 Bytes: 3
  %loadMem_448fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fa5 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fa5)
  store %struct.Memory* %call_448fa5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 448fa8	 Bytes: 4
  %loadMem_448fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fa8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fa8)
  store %struct.Memory* %call_448fa8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, (%rax)	 RIP: 448fac	 Bytes: 3
  %loadMem_448fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fac = call %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fac)
  store %struct.Memory* %call_448fac, %struct.Memory** %MEMORY

  ; Code: jne .L_448fca	 RIP: 448faf	 Bytes: 6
  %loadMem_448faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448faf = call %struct.Memory* @routine_jne_.L_448fca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448faf, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_448faf, %struct.Memory** %MEMORY

  %loadBr_448faf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448faf = icmp eq i8 %loadBr_448faf, 1
  br i1 %cmpBr_448faf, label %block_.L_448fca, label %block_448fb5

block_448fb5:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 448fb5	 Bytes: 4
  %loadMem_448fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fb5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fb5)
  store %struct.Memory* %call_448fb5, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 448fb9	 Bytes: 3
  %loadMem_448fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fb9 = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fb9)
  store %struct.Memory* %call_448fb9, %struct.Memory** %MEMORY

  ; Code: addl $0x16, %ecx	 RIP: 448fbc	 Bytes: 3
  %loadMem_448fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fbc = call %struct.Memory* @routine_addl__0x16___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fbc)
  store %struct.Memory* %call_448fbc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4d8(%rbp)	 RIP: 448fbf	 Bytes: 6
  %loadMem_448fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fbf = call %struct.Memory* @routine_movl__ecx__MINUS0x4d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fbf)
  store %struct.Memory* %call_448fbf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_448fda	 RIP: 448fc5	 Bytes: 5
  %loadMem_448fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fc5 = call %struct.Memory* @routine_jmpq_.L_448fda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fc5, i64 21, i64 5)
  store %struct.Memory* %call_448fc5, %struct.Memory** %MEMORY

  br label %block_.L_448fda

  ; Code: .L_448fca:	 RIP: 448fca	 Bytes: 0
block_.L_448fca:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 448fca	 Bytes: 4
  %loadMem_448fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fca = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fca)
  store %struct.Memory* %call_448fca, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %ecx	 RIP: 448fce	 Bytes: 3
  %loadMem_448fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fce = call %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fce)
  store %struct.Memory* %call_448fce, %struct.Memory** %MEMORY

  ; Code: addl $0xe, %ecx	 RIP: 448fd1	 Bytes: 3
  %loadMem_448fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fd1 = call %struct.Memory* @routine_addl__0xe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fd1)
  store %struct.Memory* %call_448fd1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4d8(%rbp)	 RIP: 448fd4	 Bytes: 6
  %loadMem_448fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fd4 = call %struct.Memory* @routine_movl__ecx__MINUS0x4d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fd4)
  store %struct.Memory* %call_448fd4, %struct.Memory** %MEMORY

  ; Code: .L_448fda:	 RIP: 448fda	 Bytes: 0
  br label %block_.L_448fda
block_.L_448fda:

  ; Code: movl -0x4d8(%rbp), %eax	 RIP: 448fda	 Bytes: 6
  %loadMem_448fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fda = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fda)
  store %struct.Memory* %call_448fda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 448fe0	 Bytes: 3
  %loadMem_448fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fe0 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fe0)
  store %struct.Memory* %call_448fe0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 448fe3	 Bytes: 4
  %loadMem_448fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fe3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fe3)
  store %struct.Memory* %call_448fe3, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rcx), %eax	 RIP: 448fe7	 Bytes: 3
  %loadMem_448fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fe7 = call %struct.Memory* @routine_movl_0x60__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fe7)
  store %struct.Memory* %call_448fe7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 448fea	 Bytes: 4
  %loadMem_448fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fea)
  store %struct.Memory* %call_448fea, %struct.Memory** %MEMORY

  ; Code: addl 0x40(%rcx), %eax	 RIP: 448fee	 Bytes: 3
  %loadMem_448fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fee = call %struct.Memory* @routine_addl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fee)
  store %struct.Memory* %call_448fee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 448ff1	 Bytes: 3
  %loadMem_448ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448ff1 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448ff1)
  store %struct.Memory* %call_448ff1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 448ff4	 Bytes: 7
  %loadMem_448ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448ff4 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448ff4)
  store %struct.Memory* %call_448ff4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 448ffb	 Bytes: 4
  %loadMem_448ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448ffb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448ffb)
  store %struct.Memory* %call_448ffb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, (%rcx)	 RIP: 448fff	 Bytes: 3
  %loadMem_448fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fff = call %struct.Memory* @routine_cmpl__0x1____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fff)
  store %struct.Memory* %call_448fff, %struct.Memory** %MEMORY

  ; Code: jne .L_449011	 RIP: 449002	 Bytes: 6
  %loadMem_449002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449002 = call %struct.Memory* @routine_jne_.L_449011(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449002, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_449002, %struct.Memory** %MEMORY

  %loadBr_449002 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449002 = icmp eq i8 %loadBr_449002, 1
  br i1 %cmpBr_449002, label %block_.L_449011, label %block_449008

block_449008:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 449008	 Bytes: 3
  %loadMem_449008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449008 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449008)
  store %struct.Memory* %call_449008, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %eax	 RIP: 44900b	 Bytes: 3
  %loadMem_44900b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44900b = call %struct.Memory* @routine_orl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44900b)
  store %struct.Memory* %call_44900b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44900e	 Bytes: 3
  %loadMem_44900e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44900e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44900e)
  store %struct.Memory* %call_44900e, %struct.Memory** %MEMORY

  ; Code: .L_449011:	 RIP: 449011	 Bytes: 0
  br label %block_.L_449011
block_.L_449011:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449011	 Bytes: 4
  %loadMem_449011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449011 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449011)
  store %struct.Memory* %call_449011, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x4(%rax)	 RIP: 449015	 Bytes: 4
  %loadMem_449015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449015 = call %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449015)
  store %struct.Memory* %call_449015, %struct.Memory** %MEMORY

  ; Code: jne .L_449028	 RIP: 449019	 Bytes: 6
  %loadMem_449019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449019 = call %struct.Memory* @routine_jne_.L_449028(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449019, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_449019, %struct.Memory** %MEMORY

  %loadBr_449019 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449019 = icmp eq i8 %loadBr_449019, 1
  br i1 %cmpBr_449019, label %block_.L_449028, label %block_44901f

block_44901f:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 44901f	 Bytes: 3
  %loadMem_44901f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44901f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44901f)
  store %struct.Memory* %call_44901f, %struct.Memory** %MEMORY

  ; Code: orl $0x2, %eax	 RIP: 449022	 Bytes: 3
  %loadMem_449022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449022 = call %struct.Memory* @routine_orl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449022)
  store %struct.Memory* %call_449022, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 449025	 Bytes: 3
  %loadMem_449025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449025 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449025)
  store %struct.Memory* %call_449025, %struct.Memory** %MEMORY

  ; Code: .L_449028:	 RIP: 449028	 Bytes: 0
  br label %block_.L_449028
block_.L_449028:

  ; Code: movl $0x36, %eax	 RIP: 449028	 Bytes: 5
  %loadMem_449028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449028 = call %struct.Memory* @routine_movl__0x36___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449028)
  store %struct.Memory* %call_449028, %struct.Memory** %MEMORY

  ; Code: movl $0x42, %ecx	 RIP: 44902d	 Bytes: 5
  %loadMem_44902d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44902d = call %struct.Memory* @routine_movl__0x42___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44902d)
  store %struct.Memory* %call_44902d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 449032	 Bytes: 3
  %loadMem_449032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449032 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449032)
  store %struct.Memory* %call_449032, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %edx	 RIP: 449035	 Bytes: 3
  %loadMem_449035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449035 = call %struct.Memory* @routine_andl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449035)
  store %struct.Memory* %call_449035, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 449038	 Bytes: 3
  %loadMem_449038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449038 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449038)
  store %struct.Memory* %call_449038, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 44903b	 Bytes: 3
  %loadMem_44903b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44903b = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44903b)
  store %struct.Memory* %call_44903b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 44903e	 Bytes: 3
  %loadMem_44903e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44903e = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44903e)
  store %struct.Memory* %call_44903e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 449041	 Bytes: 4
  %loadMem_449041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449041 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449041)
  store %struct.Memory* %call_449041, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 449045	 Bytes: 4
  %loadMem_449045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449045 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449045)
  store %struct.Memory* %call_449045, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 449049	 Bytes: 3
  %loadMem_449049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449049 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449049)
  store %struct.Memory* %call_449049, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44904c	 Bytes: 4
  %loadMem_44904c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44904c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44904c)
  store %struct.Memory* %call_44904c, %struct.Memory** %MEMORY

  ; Code: movzwl 0x34(%rdi), %ecx	 RIP: 449050	 Bytes: 4
  %loadMem_449050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449050 = call %struct.Memory* @routine_movzwl_0x34__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449050)
  store %struct.Memory* %call_449050, %struct.Memory** %MEMORY

  ; Code: imull %ecx, %eax	 RIP: 449054	 Bytes: 3
  %loadMem_449054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449054 = call %struct.Memory* @routine_imull__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449054)
  store %struct.Memory* %call_449054, %struct.Memory** %MEMORY

  ; Code: movl %eax, %eax	 RIP: 449057	 Bytes: 2
  %loadMem_449057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449057 = call %struct.Memory* @routine_movl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449057)
  store %struct.Memory* %call_449057, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 449059	 Bytes: 2
  %loadMem_449059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449059 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449059)
  store %struct.Memory* %call_449059, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44905b	 Bytes: 3
  %loadMem_44905b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44905b = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44905b)
  store %struct.Memory* %call_44905b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x50(%rbp)	 RIP: 44905e	 Bytes: 4
  %loadMem_44905e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44905e = call %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44905e)
  store %struct.Memory* %call_44905e, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 449062	 Bytes: 4
  %loadMem_449062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449062 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449062)
  store %struct.Memory* %call_449062, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 449066	 Bytes: 3
  %loadMem_449066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449066 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449066)
  store %struct.Memory* %call_449066, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 449069	 Bytes: 4
  %loadMem_449069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449069 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449069)
  store %struct.Memory* %call_449069, %struct.Memory** %MEMORY

  ; Code: imull 0x44(%rdi), %eax	 RIP: 44906d	 Bytes: 4
  %loadMem_44906d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44906d = call %struct.Memory* @routine_imull_0x44__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44906d)
  store %struct.Memory* %call_44906d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %eax	 RIP: 449071	 Bytes: 2
  %loadMem_449071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449071 = call %struct.Memory* @routine_movl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449071)
  store %struct.Memory* %call_449071, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 449073	 Bytes: 2
  %loadMem_449073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449073 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449073)
  store %struct.Memory* %call_449073, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 449075	 Bytes: 3
  %loadMem_449075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449075 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449075)
  store %struct.Memory* %call_449075, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x58(%rbp)	 RIP: 449078	 Bytes: 4
  %loadMem_449078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449078 = call %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449078)
  store %struct.Memory* %call_449078, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 44907c	 Bytes: 4
  %loadMem_44907c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44907c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44907c)
  store %struct.Memory* %call_44907c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rsi)	 RIP: 449080	 Bytes: 4
  %loadMem_449080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449080 = call %struct.Memory* @routine_cmpl__0x0__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449080)
  store %struct.Memory* %call_449080, %struct.Memory** %MEMORY

  ; Code: je .L_4491db	 RIP: 449084	 Bytes: 6
  %loadMem_449084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449084 = call %struct.Memory* @routine_je_.L_4491db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449084, i8* %BRANCH_TAKEN, i64 343, i64 6, i64 6)
  store %struct.Memory* %call_449084, %struct.Memory** %MEMORY

  %loadBr_449084 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449084 = icmp eq i8 %loadBr_449084, 1
  br i1 %cmpBr_449084, label %block_.L_4491db, label %block_44908a

block_44908a:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44908a	 Bytes: 4
  %loadMem_44908a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44908a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44908a)
  store %struct.Memory* %call_44908a, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rdi	 RIP: 44908e	 Bytes: 4
  %loadMem_44908e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44908e = call %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44908e)
  store %struct.Memory* %call_44908e, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 449092	 Bytes: 5
  %loadMem1_449092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449092 = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449092, i64 -293970, i64 5, i64 5)
  store %struct.Memory* %call1_449092, %struct.Memory** %MEMORY

  %loadMem2_449092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449092 = load i64, i64* %3
  %call2_449092 = call %struct.Memory* @sub_401440.fclose_plt(%struct.State* %0, i64  %loadPC_449092, %struct.Memory* %loadMem2_449092)
  store %struct.Memory* %call2_449092, %struct.Memory** %MEMORY

  ; Code: movq $0x45aa4b, %rsi	 RIP: 449097	 Bytes: 10
  %loadMem_449097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449097 = call %struct.Memory* @routine_movq__0x45aa4b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449097)
  store %struct.Memory* %call_449097, %struct.Memory** %MEMORY

  ; Code: leaq -0x470(%rbp), %rdi	 RIP: 4490a1	 Bytes: 7
  %loadMem_4490a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490a1 = call %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490a1)
  store %struct.Memory* %call_4490a1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4490a8	 Bytes: 4
  %loadMem_4490a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490a8)
  store %struct.Memory* %call_4490a8, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x50(%rcx)	 RIP: 4490ac	 Bytes: 8
  %loadMem_4490ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ac = call %struct.Memory* @routine_movq__0x0__0x50__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ac)
  store %struct.Memory* %call_4490ac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4490b4	 Bytes: 4
  %loadMem_4490b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490b4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490b4)
  store %struct.Memory* %call_4490b4, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rcx), %rdx	 RIP: 4490b8	 Bytes: 4
  %loadMem_4490b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490b8 = call %struct.Memory* @routine_movq_0x48__rcx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490b8)
  store %struct.Memory* %call_4490b8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4490bc	 Bytes: 4
  %loadMem_4490bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490bc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490bc)
  store %struct.Memory* %call_4490bc, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rcx), %rcx	 RIP: 4490c0	 Bytes: 4
  %loadMem_4490c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490c0 = call %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490c0)
  store %struct.Memory* %call_4490c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4dc(%rbp)	 RIP: 4490c4	 Bytes: 6
  %loadMem_4490c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490c4 = call %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490c4)
  store %struct.Memory* %call_4490c4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4490ca	 Bytes: 2
  %loadMem_4490ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ca = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ca)
  store %struct.Memory* %call_4490ca, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 4490cc	 Bytes: 5
  %loadMem1_4490cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4490cc = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4490cc, i64 -293388, i64 5, i64 5)
  store %struct.Memory* %call1_4490cc, %struct.Memory** %MEMORY

  %loadMem2_4490cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4490cc = load i64, i64* %3
  %call2_4490cc = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_4490cc, %struct.Memory* %loadMem2_4490cc)
  store %struct.Memory* %call2_4490cc, %struct.Memory** %MEMORY

  ; Code: leaq -0x470(%rbp), %rdi	 RIP: 4490d1	 Bytes: 7
  %loadMem_4490d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490d1 = call %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490d1)
  store %struct.Memory* %call_4490d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e0(%rbp)	 RIP: 4490d8	 Bytes: 6
  %loadMem_4490d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490d8 = call %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490d8)
  store %struct.Memory* %call_4490d8, %struct.Memory** %MEMORY

  ; Code: callq .system_plt	 RIP: 4490de	 Bytes: 5
  %loadMem1_4490de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4490de = call %struct.Memory* @routine_callq_.system_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4490de, i64 -293998, i64 5, i64 5)
  store %struct.Memory* %call1_4490de, %struct.Memory** %MEMORY

  %loadMem2_4490de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4490de = load i64, i64* %3
  %call2_4490de = call %struct.Memory* @sub_401470.system_plt(%struct.State* %0, i64  %loadPC_4490de, %struct.Memory* %loadMem2_4490de)
  store %struct.Memory* %call2_4490de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4490e3	 Bytes: 3
  %loadMem_4490e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490e3 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490e3)
  store %struct.Memory* %call_4490e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4490e6	 Bytes: 3
  %loadMem_4490e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490e6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490e6)
  store %struct.Memory* %call_4490e6, %struct.Memory** %MEMORY

  ; Code: je .L_4490fb	 RIP: 4490e9	 Bytes: 6
  %loadMem_4490e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490e9 = call %struct.Memory* @routine_je_.L_4490fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490e9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4490e9, %struct.Memory** %MEMORY

  %loadBr_4490e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4490e9 = icmp eq i8 %loadBr_4490e9, 1
  br i1 %cmpBr_4490e9, label %block_.L_4490fb, label %block_4490ef

block_4490ef:
  ; Code: movl $0x10, -0x4(%rbp)	 RIP: 4490ef	 Bytes: 7
  %loadMem_4490ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ef = call %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ef)
  store %struct.Memory* %call_4490ef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4490f6	 Bytes: 5
  %loadMem_4490f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490f6 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490f6, i64 3011, i64 5)
  store %struct.Memory* %call_4490f6, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4490fb:	 RIP: 4490fb	 Bytes: 0
block_.L_4490fb:

  ; Code: movq $0x458380, %rsi	 RIP: 4490fb	 Bytes: 10
  %loadMem_4490fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490fb = call %struct.Memory* @routine_movq__0x458380___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490fb)
  store %struct.Memory* %call_4490fb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449105	 Bytes: 4
  %loadMem_449105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449105 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449105)
  store %struct.Memory* %call_449105, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rdi	 RIP: 449109	 Bytes: 4
  %loadMem_449109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449109 = call %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449109)
  store %struct.Memory* %call_449109, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 44910d	 Bytes: 5
  %loadMem1_44910d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44910d = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44910d, i64 -293581, i64 5, i64 5)
  store %struct.Memory* %call1_44910d, %struct.Memory** %MEMORY

  %loadMem2_44910d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44910d = load i64, i64* %3
  %call2_44910d = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64  %loadPC_44910d, %struct.Memory* %loadMem2_44910d)
  store %struct.Memory* %call2_44910d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 449112	 Bytes: 4
  %loadMem_449112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449112 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449112)
  store %struct.Memory* %call_449112, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x50(%rsi)	 RIP: 449116	 Bytes: 4
  %loadMem_449116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449116 = call %struct.Memory* @routine_movq__rax__0x50__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449116)
  store %struct.Memory* %call_449116, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44911a	 Bytes: 4
  %loadMem_44911a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44911a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44911a)
  store %struct.Memory* %call_44911a, %struct.Memory** %MEMORY

  ; Code: jne .L_449130	 RIP: 44911e	 Bytes: 6
  %loadMem_44911e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44911e = call %struct.Memory* @routine_jne_.L_449130(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44911e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44911e, %struct.Memory** %MEMORY

  %loadBr_44911e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44911e = icmp eq i8 %loadBr_44911e, 1
  br i1 %cmpBr_44911e, label %block_.L_449130, label %block_449124

block_449124:
  ; Code: movl $0x10, -0x4(%rbp)	 RIP: 449124	 Bytes: 7
  %loadMem_449124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449124 = call %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449124)
  store %struct.Memory* %call_449124, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44912b	 Bytes: 5
  %loadMem_44912b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44912b = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44912b, i64 2958, i64 5)
  store %struct.Memory* %call_44912b, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449130:	 RIP: 449130	 Bytes: 0
block_.L_449130:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449130	 Bytes: 4
  %loadMem_449130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449130 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449130)
  store %struct.Memory* %call_449130, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rdi	 RIP: 449134	 Bytes: 4
  %loadMem_449134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449134 = call %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449134)
  store %struct.Memory* %call_449134, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 449138	 Bytes: 5
  %loadMem1_449138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449138 = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449138, i64 -294136, i64 5, i64 5)
  store %struct.Memory* %call1_449138, %struct.Memory** %MEMORY

  %loadMem2_449138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449138 = load i64, i64* %3
  %call2_449138 = call %struct.Memory* @sub_401440.fclose_plt(%struct.State* %0, i64  %loadPC_449138, %struct.Memory* %loadMem2_449138)
  store %struct.Memory* %call2_449138, %struct.Memory** %MEMORY

  ; Code: movq $0x45aa4b, %rsi	 RIP: 44913d	 Bytes: 10
  %loadMem_44913d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44913d = call %struct.Memory* @routine_movq__0x45aa4b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44913d)
  store %struct.Memory* %call_44913d, %struct.Memory** %MEMORY

  ; Code: leaq -0x470(%rbp), %rdi	 RIP: 449147	 Bytes: 7
  %loadMem_449147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449147 = call %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449147)
  store %struct.Memory* %call_449147, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44914e	 Bytes: 4
  %loadMem_44914e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44914e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44914e)
  store %struct.Memory* %call_44914e, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x70(%rcx)	 RIP: 449152	 Bytes: 8
  %loadMem_449152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449152 = call %struct.Memory* @routine_movq__0x0__0x70__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449152)
  store %struct.Memory* %call_449152, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44915a	 Bytes: 4
  %loadMem_44915a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44915a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44915a)
  store %struct.Memory* %call_44915a, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rcx), %rdx	 RIP: 44915e	 Bytes: 4
  %loadMem_44915e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44915e = call %struct.Memory* @routine_movq_0x68__rcx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44915e)
  store %struct.Memory* %call_44915e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449162	 Bytes: 4
  %loadMem_449162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449162 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449162)
  store %struct.Memory* %call_449162, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rcx), %rcx	 RIP: 449166	 Bytes: 4
  %loadMem_449166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449166 = call %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449166)
  store %struct.Memory* %call_449166, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e4(%rbp)	 RIP: 44916a	 Bytes: 6
  %loadMem_44916a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44916a = call %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44916a)
  store %struct.Memory* %call_44916a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 449170	 Bytes: 2
  %loadMem_449170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449170 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449170)
  store %struct.Memory* %call_449170, %struct.Memory** %MEMORY

  ; Code: callq .sprintf_plt	 RIP: 449172	 Bytes: 5
  %loadMem1_449172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449172 = call %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449172, i64 -293554, i64 5, i64 5)
  store %struct.Memory* %call1_449172, %struct.Memory** %MEMORY

  %loadMem2_449172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449172 = load i64, i64* %3
  %call2_449172 = call %struct.Memory* @ext_sprintf(%struct.State* %0, i64  %loadPC_449172, %struct.Memory* %loadMem2_449172)
  store %struct.Memory* %call2_449172, %struct.Memory** %MEMORY

  ; Code: leaq -0x470(%rbp), %rdi	 RIP: 449177	 Bytes: 7
  %loadMem_449177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449177 = call %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449177)
  store %struct.Memory* %call_449177, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e8(%rbp)	 RIP: 44917e	 Bytes: 6
  %loadMem_44917e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44917e = call %struct.Memory* @routine_movl__eax__MINUS0x4e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44917e)
  store %struct.Memory* %call_44917e, %struct.Memory** %MEMORY

  ; Code: callq .system_plt	 RIP: 449184	 Bytes: 5
  %loadMem1_449184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449184 = call %struct.Memory* @routine_callq_.system_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449184, i64 -294164, i64 5, i64 5)
  store %struct.Memory* %call1_449184, %struct.Memory** %MEMORY

  %loadMem2_449184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449184 = load i64, i64* %3
  %call2_449184 = call %struct.Memory* @sub_401470.system_plt(%struct.State* %0, i64  %loadPC_449184, %struct.Memory* %loadMem2_449184)
  store %struct.Memory* %call2_449184, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 449189	 Bytes: 3
  %loadMem_449189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449189 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449189)
  store %struct.Memory* %call_449189, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44918c	 Bytes: 3
  %loadMem_44918c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44918c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44918c)
  store %struct.Memory* %call_44918c, %struct.Memory** %MEMORY

  ; Code: je .L_4491a1	 RIP: 44918f	 Bytes: 6
  %loadMem_44918f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44918f = call %struct.Memory* @routine_je_.L_4491a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44918f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44918f, %struct.Memory** %MEMORY

  %loadBr_44918f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44918f = icmp eq i8 %loadBr_44918f, 1
  br i1 %cmpBr_44918f, label %block_.L_4491a1, label %block_449195

block_449195:
  ; Code: movl $0x10, -0x4(%rbp)	 RIP: 449195	 Bytes: 7
  %loadMem_449195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449195 = call %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449195)
  store %struct.Memory* %call_449195, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44919c	 Bytes: 5
  %loadMem_44919c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44919c = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44919c, i64 2845, i64 5)
  store %struct.Memory* %call_44919c, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4491a1:	 RIP: 4491a1	 Bytes: 0
block_.L_4491a1:

  ; Code: movq $0x458380, %rsi	 RIP: 4491a1	 Bytes: 10
  %loadMem_4491a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491a1 = call %struct.Memory* @routine_movq__0x458380___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491a1)
  store %struct.Memory* %call_4491a1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4491ab	 Bytes: 4
  %loadMem_4491ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491ab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491ab)
  store %struct.Memory* %call_4491ab, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rdi	 RIP: 4491af	 Bytes: 4
  %loadMem_4491af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491af = call %struct.Memory* @routine_movq_0x68__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491af)
  store %struct.Memory* %call_4491af, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 4491b3	 Bytes: 5
  %loadMem1_4491b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4491b3 = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4491b3, i64 -293747, i64 5, i64 5)
  store %struct.Memory* %call1_4491b3, %struct.Memory** %MEMORY

  %loadMem2_4491b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4491b3 = load i64, i64* %3
  %call2_4491b3 = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64  %loadPC_4491b3, %struct.Memory* %loadMem2_4491b3)
  store %struct.Memory* %call2_4491b3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 4491b8	 Bytes: 4
  %loadMem_4491b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491b8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491b8)
  store %struct.Memory* %call_4491b8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70(%rsi)	 RIP: 4491bc	 Bytes: 4
  %loadMem_4491bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491bc = call %struct.Memory* @routine_movq__rax__0x70__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491bc)
  store %struct.Memory* %call_4491bc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4491c0	 Bytes: 4
  %loadMem_4491c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491c0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491c0)
  store %struct.Memory* %call_4491c0, %struct.Memory** %MEMORY

  ; Code: jne .L_4491d6	 RIP: 4491c4	 Bytes: 6
  %loadMem_4491c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491c4 = call %struct.Memory* @routine_jne_.L_4491d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491c4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4491c4, %struct.Memory** %MEMORY

  %loadBr_4491c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491c4 = icmp eq i8 %loadBr_4491c4, 1
  br i1 %cmpBr_4491c4, label %block_.L_4491d6, label %block_4491ca

block_4491ca:
  ; Code: movl $0x10, -0x4(%rbp)	 RIP: 4491ca	 Bytes: 7
  %loadMem_4491ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491ca = call %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491ca)
  store %struct.Memory* %call_4491ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4491d1	 Bytes: 5
  %loadMem_4491d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491d1 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491d1, i64 2792, i64 5)
  store %struct.Memory* %call_4491d1, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4491d6:	 RIP: 4491d6	 Bytes: 0
block_.L_4491d6:

  ; Code: jmpq .L_44923b	 RIP: 4491d6	 Bytes: 5
  %loadMem_4491d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491d6 = call %struct.Memory* @routine_jmpq_.L_44923b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491d6, i64 101, i64 5)
  store %struct.Memory* %call_4491d6, %struct.Memory** %MEMORY

  br label %block_.L_44923b

  ; Code: .L_4491db:	 RIP: 4491db	 Bytes: 0
block_.L_4491db:

  ; Code: movl $0x38, %eax	 RIP: 4491db	 Bytes: 5
  %loadMem_4491db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491db = call %struct.Memory* @routine_movl__0x38___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491db)
  store %struct.Memory* %call_4491db, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4491e0	 Bytes: 2
  %loadMem_4491e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491e0 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491e0)
  store %struct.Memory* %call_4491e0, %struct.Memory** %MEMORY

  ; Code: movq $0x449cd0, %rcx	 RIP: 4491e2	 Bytes: 10
  %loadMem_4491e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491e2 = call %struct.Memory* @routine_movq__0x449cd0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491e2)
  store %struct.Memory* %call_4491e2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 4491ec	 Bytes: 4
  %loadMem_4491ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491ec = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491ec)
  store %struct.Memory* %call_4491ec, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 4491f0	 Bytes: 4
  %loadMem_4491f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491f0 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491f0)
  store %struct.Memory* %call_4491f0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4491f4	 Bytes: 4
  %loadMem_4491f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491f4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491f4)
  store %struct.Memory* %call_4491f4, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rdi), %eax	 RIP: 4491f8	 Bytes: 3
  %loadMem_4491f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491f8 = call %struct.Memory* @routine_movl_0x44__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491f8)
  store %struct.Memory* %call_4491f8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4491fb	 Bytes: 3
  %loadMem_4491fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491fb = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491fb)
  store %struct.Memory* %call_4491fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4491fe	 Bytes: 2
  %loadMem_4491fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491fe = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491fe)
  store %struct.Memory* %call_4491fe, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 449200	 Bytes: 2
  %loadMem_449200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449200 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449200)
  store %struct.Memory* %call_449200, %struct.Memory** %MEMORY

  ; Code: callq .specqsort	 RIP: 449202	 Bytes: 5
  %loadMem1_449202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449202 = call %struct.Memory* @routine_callq_.specqsort(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449202, i64 34270, i64 5, i64 5)
  store %struct.Memory* %call1_449202, %struct.Memory** %MEMORY

  %loadMem2_449202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449202 = load i64, i64* %3
  %call2_449202 = call %struct.Memory* @sub_4517e0.specqsort(%struct.State* %0, i64  %loadPC_449202, %struct.Memory* %loadMem2_449202)
  store %struct.Memory* %call2_449202, %struct.Memory** %MEMORY

  ; Code: movl $0x10, %esi	 RIP: 449207	 Bytes: 5
  %loadMem_449207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449207 = call %struct.Memory* @routine_movl__0x10___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449207)
  store %struct.Memory* %call_449207, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44920c	 Bytes: 2
  %loadMem_44920c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44920c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44920c)
  store %struct.Memory* %call_44920c, %struct.Memory** %MEMORY

  ; Code: movq $0x449d10, %rcx	 RIP: 44920e	 Bytes: 10
  %loadMem_44920e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44920e = call %struct.Memory* @routine_movq__0x449d10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44920e)
  store %struct.Memory* %call_44920e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 449218	 Bytes: 4
  %loadMem_449218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449218 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449218)
  store %struct.Memory* %call_449218, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rdi), %rdi	 RIP: 44921c	 Bytes: 4
  %loadMem_44921c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44921c = call %struct.Memory* @routine_movq_0x58__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44921c)
  store %struct.Memory* %call_44921c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 449220	 Bytes: 4
  %loadMem_449220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449220 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449220)
  store %struct.Memory* %call_449220, %struct.Memory** %MEMORY

  ; Code: movl 0x64(%r8), %esi	 RIP: 449224	 Bytes: 4
  %loadMem_449224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449224 = call %struct.Memory* @routine_movl_0x64__r8____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449224)
  store %struct.Memory* %call_449224, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4ec(%rbp)	 RIP: 449228	 Bytes: 6
  %loadMem_449228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449228 = call %struct.Memory* @routine_movl__eax__MINUS0x4ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449228)
  store %struct.Memory* %call_449228, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44922e	 Bytes: 2
  %loadMem_44922e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44922e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44922e)
  store %struct.Memory* %call_44922e, %struct.Memory** %MEMORY

  ; Code: callq .specqsort	 RIP: 449230	 Bytes: 5
  %loadMem1_449230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449230 = call %struct.Memory* @routine_callq_.specqsort(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449230, i64 34224, i64 5, i64 5)
  store %struct.Memory* %call1_449230, %struct.Memory** %MEMORY

  %loadMem2_449230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449230 = load i64, i64* %3
  %call2_449230 = call %struct.Memory* @sub_4517e0.specqsort(%struct.State* %0, i64  %loadPC_449230, %struct.Memory* %loadMem2_449230)
  store %struct.Memory* %call2_449230, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4f0(%rbp)	 RIP: 449235	 Bytes: 6
  %loadMem_449235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449235 = call %struct.Memory* @routine_movl__eax__MINUS0x4f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449235)
  store %struct.Memory* %call_449235, %struct.Memory** %MEMORY

  ; Code: .L_44923b:	 RIP: 44923b	 Bytes: 0
  br label %block_.L_44923b
block_.L_44923b:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44923b	 Bytes: 4
  %loadMem_44923b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44923b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44923b)
  store %struct.Memory* %call_44923b, %struct.Memory** %MEMORY

  ; Code: movl 0x663038, %esi	 RIP: 44923f	 Bytes: 7
  %loadMem_44923f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44923f = call %struct.Memory* @routine_movl_0x663038___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44923f)
  store %struct.Memory* %call_44923f, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449246	 Bytes: 5
  %loadMem1_449246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449246 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449246, i64 2826, i64 5, i64 5)
  store %struct.Memory* %call1_449246, %struct.Memory** %MEMORY

  %loadMem2_449246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449246 = load i64, i64* %3
  %call2_449246 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449246, %struct.Memory* %loadMem2_449246)
  store %struct.Memory* %call2_449246, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44924b	 Bytes: 3
  %loadMem_44924b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44924b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44924b)
  store %struct.Memory* %call_44924b, %struct.Memory** %MEMORY

  ; Code: jne .L_449260	 RIP: 44924e	 Bytes: 6
  %loadMem_44924e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44924e = call %struct.Memory* @routine_jne_.L_449260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44924e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44924e, %struct.Memory** %MEMORY

  %loadBr_44924e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44924e = icmp eq i8 %loadBr_44924e, 1
  br i1 %cmpBr_44924e, label %block_.L_449260, label %block_449254

block_449254:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449254	 Bytes: 7
  %loadMem_449254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449254 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449254)
  store %struct.Memory* %call_449254, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44925b	 Bytes: 5
  %loadMem_44925b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44925b = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44925b, i64 2654, i64 5)
  store %struct.Memory* %call_44925b, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449260:	 RIP: 449260	 Bytes: 0
block_.L_449260:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449260	 Bytes: 4
  %loadMem_449260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449260 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449260)
  store %struct.Memory* %call_449260, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 449264	 Bytes: 3
  %loadMem_449264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449264 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449264)
  store %struct.Memory* %call_449264, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449267	 Bytes: 5
  %loadMem1_449267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449267 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449267, i64 2793, i64 5, i64 5)
  store %struct.Memory* %call1_449267, %struct.Memory** %MEMORY

  %loadMem2_449267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449267 = load i64, i64* %3
  %call2_449267 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449267, %struct.Memory* %loadMem2_449267)
  store %struct.Memory* %call2_449267, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44926c	 Bytes: 3
  %loadMem_44926c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44926c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44926c)
  store %struct.Memory* %call_44926c, %struct.Memory** %MEMORY

  ; Code: jne .L_449281	 RIP: 44926f	 Bytes: 6
  %loadMem_44926f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44926f = call %struct.Memory* @routine_jne_.L_449281(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44926f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44926f, %struct.Memory** %MEMORY

  %loadBr_44926f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44926f = icmp eq i8 %loadBr_44926f, 1
  br i1 %cmpBr_44926f, label %block_.L_449281, label %block_449275

block_449275:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449275	 Bytes: 7
  %loadMem_449275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449275 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449275)
  store %struct.Memory* %call_449275, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44927c	 Bytes: 5
  %loadMem_44927c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44927c = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44927c, i64 2621, i64 5)
  store %struct.Memory* %call_44927c, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449281:	 RIP: 449281	 Bytes: 0
block_.L_449281:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449281	 Bytes: 4
  %loadMem_449281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449281 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449281)
  store %struct.Memory* %call_449281, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449285	 Bytes: 4
  %loadMem_449285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449285 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449285)
  store %struct.Memory* %call_449285, %struct.Memory** %MEMORY

  ; Code: movzwl 0x34(%rax), %esi	 RIP: 449289	 Bytes: 4
  %loadMem_449289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449289 = call %struct.Memory* @routine_movzwl_0x34__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449289)
  store %struct.Memory* %call_449289, %struct.Memory** %MEMORY

  ; Code: callq .write_i16	 RIP: 44928d	 Bytes: 5
  %loadMem1_44928d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44928d = call %struct.Memory* @routine_callq_.write_i16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44928d, i64 2851, i64 5, i64 5)
  store %struct.Memory* %call1_44928d, %struct.Memory** %MEMORY

  %loadMem2_44928d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44928d = load i64, i64* %3
  %call2_44928d = call %struct.Memory* @sub_449db0.write_i16(%struct.State* %0, i64  %loadPC_44928d, %struct.Memory* %loadMem2_44928d)
  store %struct.Memory* %call2_44928d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449292	 Bytes: 3
  %loadMem_449292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449292 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449292)
  store %struct.Memory* %call_449292, %struct.Memory** %MEMORY

  ; Code: jne .L_4492a7	 RIP: 449295	 Bytes: 6
  %loadMem_449295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449295 = call %struct.Memory* @routine_jne_.L_4492a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449295, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449295, %struct.Memory** %MEMORY

  %loadBr_449295 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449295 = icmp eq i8 %loadBr_449295, 1
  br i1 %cmpBr_449295, label %block_.L_4492a7, label %block_44929b

block_44929b:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44929b	 Bytes: 7
  %loadMem_44929b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44929b = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44929b)
  store %struct.Memory* %call_44929b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4492a2	 Bytes: 5
  %loadMem_4492a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492a2 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492a2, i64 2583, i64 5)
  store %struct.Memory* %call_4492a2, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4492a7:	 RIP: 4492a7	 Bytes: 0
block_.L_4492a7:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4492a7	 Bytes: 4
  %loadMem_4492a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492a7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492a7)
  store %struct.Memory* %call_4492a7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4492ab	 Bytes: 4
  %loadMem_4492ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ab)
  store %struct.Memory* %call_4492ab, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rax), %esi	 RIP: 4492af	 Bytes: 3
  %loadMem_4492af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492af = call %struct.Memory* @routine_movl_0x44__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492af)
  store %struct.Memory* %call_4492af, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4492b2	 Bytes: 5
  %loadMem1_4492b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4492b2 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4492b2, i64 2718, i64 5, i64 5)
  store %struct.Memory* %call1_4492b2, %struct.Memory** %MEMORY

  %loadMem2_4492b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4492b2 = load i64, i64* %3
  %call2_4492b2 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4492b2, %struct.Memory* %loadMem2_4492b2)
  store %struct.Memory* %call2_4492b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4492b7	 Bytes: 3
  %loadMem_4492b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492b7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492b7)
  store %struct.Memory* %call_4492b7, %struct.Memory** %MEMORY

  ; Code: jne .L_4492cc	 RIP: 4492ba	 Bytes: 6
  %loadMem_4492ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ba = call %struct.Memory* @routine_jne_.L_4492cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ba, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4492ba, %struct.Memory** %MEMORY

  %loadBr_4492ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4492ba = icmp eq i8 %loadBr_4492ba, 1
  br i1 %cmpBr_4492ba, label %block_.L_4492cc, label %block_4492c0

block_4492c0:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4492c0	 Bytes: 7
  %loadMem_4492c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492c0 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492c0)
  store %struct.Memory* %call_4492c0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4492c7	 Bytes: 5
  %loadMem_4492c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492c7 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492c7, i64 2546, i64 5)
  store %struct.Memory* %call_4492c7, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4492cc:	 RIP: 4492cc	 Bytes: 0
block_.L_4492cc:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4492cc	 Bytes: 4
  %loadMem_4492cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492cc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492cc)
  store %struct.Memory* %call_4492cc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4492d0	 Bytes: 4
  %loadMem_4492d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492d0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492d0)
  store %struct.Memory* %call_4492d0, %struct.Memory** %MEMORY

  ; Code: movl 0x64(%rax), %esi	 RIP: 4492d4	 Bytes: 3
  %loadMem_4492d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492d4 = call %struct.Memory* @routine_movl_0x64__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492d4)
  store %struct.Memory* %call_4492d4, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4492d7	 Bytes: 5
  %loadMem1_4492d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4492d7 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4492d7, i64 2681, i64 5, i64 5)
  store %struct.Memory* %call1_4492d7, %struct.Memory** %MEMORY

  %loadMem2_4492d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4492d7 = load i64, i64* %3
  %call2_4492d7 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4492d7, %struct.Memory* %loadMem2_4492d7)
  store %struct.Memory* %call2_4492d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4492dc	 Bytes: 3
  %loadMem_4492dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492dc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492dc)
  store %struct.Memory* %call_4492dc, %struct.Memory** %MEMORY

  ; Code: jne .L_4492f1	 RIP: 4492df	 Bytes: 6
  %loadMem_4492df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492df = call %struct.Memory* @routine_jne_.L_4492f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492df, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4492df, %struct.Memory** %MEMORY

  %loadBr_4492df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4492df = icmp eq i8 %loadBr_4492df, 1
  br i1 %cmpBr_4492df, label %block_.L_4492f1, label %block_4492e5

block_4492e5:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4492e5	 Bytes: 7
  %loadMem_4492e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492e5 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492e5)
  store %struct.Memory* %call_4492e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4492ec	 Bytes: 5
  %loadMem_4492ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ec = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ec, i64 2509, i64 5)
  store %struct.Memory* %call_4492ec, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4492f1:	 RIP: 4492f1	 Bytes: 0
block_.L_4492f1:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4492f1	 Bytes: 4
  %loadMem_4492f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492f1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492f1)
  store %struct.Memory* %call_4492f1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4492f5	 Bytes: 4
  %loadMem_4492f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492f5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492f5)
  store %struct.Memory* %call_4492f5, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 4492f9	 Bytes: 3
  %loadMem_4492f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492f9 = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492f9)
  store %struct.Memory* %call_4492f9, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4492fc	 Bytes: 5
  %loadMem1_4492fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4492fc = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4492fc, i64 2644, i64 5, i64 5)
  store %struct.Memory* %call1_4492fc, %struct.Memory** %MEMORY

  %loadMem2_4492fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4492fc = load i64, i64* %3
  %call2_4492fc = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4492fc, %struct.Memory* %loadMem2_4492fc)
  store %struct.Memory* %call2_4492fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449301	 Bytes: 3
  %loadMem_449301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449301 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449301)
  store %struct.Memory* %call_449301, %struct.Memory** %MEMORY

  ; Code: jne .L_449316	 RIP: 449304	 Bytes: 6
  %loadMem_449304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449304 = call %struct.Memory* @routine_jne_.L_449316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449304, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449304, %struct.Memory** %MEMORY

  %loadBr_449304 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449304 = icmp eq i8 %loadBr_449304, 1
  br i1 %cmpBr_449304, label %block_.L_449316, label %block_44930a

block_44930a:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44930a	 Bytes: 7
  %loadMem_44930a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44930a = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44930a)
  store %struct.Memory* %call_44930a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449311	 Bytes: 5
  %loadMem_449311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449311 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449311, i64 2472, i64 5)
  store %struct.Memory* %call_449311, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449316:	 RIP: 449316	 Bytes: 0
block_.L_449316:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449316	 Bytes: 4
  %loadMem_449316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449316 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449316)
  store %struct.Memory* %call_449316, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44931a	 Bytes: 4
  %loadMem_44931a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44931a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44931a)
  store %struct.Memory* %call_44931a, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %esi	 RIP: 44931e	 Bytes: 3
  %loadMem_44931e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44931e = call %struct.Memory* @routine_movl_0x40__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44931e)
  store %struct.Memory* %call_44931e, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449321	 Bytes: 5
  %loadMem1_449321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449321 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449321, i64 2607, i64 5, i64 5)
  store %struct.Memory* %call1_449321, %struct.Memory** %MEMORY

  %loadMem2_449321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449321 = load i64, i64* %3
  %call2_449321 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449321, %struct.Memory* %loadMem2_449321)
  store %struct.Memory* %call2_449321, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449326	 Bytes: 3
  %loadMem_449326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449326 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449326)
  store %struct.Memory* %call_449326, %struct.Memory** %MEMORY

  ; Code: jne .L_44933b	 RIP: 449329	 Bytes: 6
  %loadMem_449329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449329 = call %struct.Memory* @routine_jne_.L_44933b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449329, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449329, %struct.Memory** %MEMORY

  %loadBr_449329 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449329 = icmp eq i8 %loadBr_449329, 1
  br i1 %cmpBr_449329, label %block_.L_44933b, label %block_44932f

block_44932f:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44932f	 Bytes: 7
  %loadMem_44932f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44932f = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44932f)
  store %struct.Memory* %call_44932f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449336	 Bytes: 5
  %loadMem_449336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449336 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449336, i64 2435, i64 5)
  store %struct.Memory* %call_449336, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44933b:	 RIP: 44933b	 Bytes: 0
block_.L_44933b:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44933b	 Bytes: 4
  %loadMem_44933b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44933b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44933b)
  store %struct.Memory* %call_44933b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44933f	 Bytes: 4
  %loadMem_44933f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44933f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44933f)
  store %struct.Memory* %call_44933f, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %esi	 RIP: 449343	 Bytes: 3
  %loadMem_449343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449343 = call %struct.Memory* @routine_movl_0x60__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449343)
  store %struct.Memory* %call_449343, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449346	 Bytes: 5
  %loadMem1_449346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449346 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449346, i64 2570, i64 5, i64 5)
  store %struct.Memory* %call1_449346, %struct.Memory** %MEMORY

  %loadMem2_449346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449346 = load i64, i64* %3
  %call2_449346 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449346, %struct.Memory* %loadMem2_449346)
  store %struct.Memory* %call2_449346, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44934b	 Bytes: 3
  %loadMem_44934b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44934b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44934b)
  store %struct.Memory* %call_44934b, %struct.Memory** %MEMORY

  ; Code: jne .L_449360	 RIP: 44934e	 Bytes: 6
  %loadMem_44934e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44934e = call %struct.Memory* @routine_jne_.L_449360(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44934e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44934e, %struct.Memory** %MEMORY

  %loadBr_44934e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44934e = icmp eq i8 %loadBr_44934e, 1
  br i1 %cmpBr_44934e, label %block_.L_449360, label %block_449354

block_449354:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449354	 Bytes: 7
  %loadMem_449354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449354 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449354)
  store %struct.Memory* %call_449354, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44935b	 Bytes: 5
  %loadMem_44935b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44935b = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44935b, i64 2398, i64 5)
  store %struct.Memory* %call_44935b, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449360:	 RIP: 449360	 Bytes: 0
block_.L_449360:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449360	 Bytes: 4
  %loadMem_449360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449360 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449360)
  store %struct.Memory* %call_449360, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 449364	 Bytes: 3
  %loadMem_449364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449364 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449364)
  store %struct.Memory* %call_449364, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449367	 Bytes: 5
  %loadMem1_449367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449367 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449367, i64 2537, i64 5, i64 5)
  store %struct.Memory* %call1_449367, %struct.Memory** %MEMORY

  %loadMem2_449367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449367 = load i64, i64* %3
  %call2_449367 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449367, %struct.Memory* %loadMem2_449367)
  store %struct.Memory* %call2_449367, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44936c	 Bytes: 3
  %loadMem_44936c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44936c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44936c)
  store %struct.Memory* %call_44936c, %struct.Memory** %MEMORY

  ; Code: jne .L_449381	 RIP: 44936f	 Bytes: 6
  %loadMem_44936f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44936f = call %struct.Memory* @routine_jne_.L_449381(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44936f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44936f, %struct.Memory** %MEMORY

  %loadBr_44936f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44936f = icmp eq i8 %loadBr_44936f, 1
  br i1 %cmpBr_44936f, label %block_.L_449381, label %block_449375

block_449375:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449375	 Bytes: 7
  %loadMem_449375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449375 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449375)
  store %struct.Memory* %call_449375, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44937c	 Bytes: 5
  %loadMem_44937c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44937c = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44937c, i64 2365, i64 5)
  store %struct.Memory* %call_44937c, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449381:	 RIP: 449381	 Bytes: 0
block_.L_449381:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449381	 Bytes: 4
  %loadMem_449381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449381 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449381)
  store %struct.Memory* %call_449381, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 449385	 Bytes: 3
  %loadMem_449385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449385 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449385)
  store %struct.Memory* %call_449385, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449388	 Bytes: 5
  %loadMem1_449388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449388 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449388, i64 2504, i64 5, i64 5)
  store %struct.Memory* %call1_449388, %struct.Memory** %MEMORY

  %loadMem2_449388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449388 = load i64, i64* %3
  %call2_449388 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449388, %struct.Memory* %loadMem2_449388)
  store %struct.Memory* %call2_449388, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44938d	 Bytes: 3
  %loadMem_44938d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44938d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44938d)
  store %struct.Memory* %call_44938d, %struct.Memory** %MEMORY

  ; Code: jne .L_4493a2	 RIP: 449390	 Bytes: 6
  %loadMem_449390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449390 = call %struct.Memory* @routine_jne_.L_4493a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449390, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449390, %struct.Memory** %MEMORY

  %loadBr_449390 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449390 = icmp eq i8 %loadBr_449390, 1
  br i1 %cmpBr_449390, label %block_.L_4493a2, label %block_449396

block_449396:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449396	 Bytes: 7
  %loadMem_449396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449396 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449396)
  store %struct.Memory* %call_449396, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44939d	 Bytes: 5
  %loadMem_44939d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44939d = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44939d, i64 2332, i64 5)
  store %struct.Memory* %call_44939d, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4493a2:	 RIP: 4493a2	 Bytes: 0
block_.L_4493a2:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4493a2	 Bytes: 4
  %loadMem_4493a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493a2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493a2)
  store %struct.Memory* %call_4493a2, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 4493a6	 Bytes: 3
  %loadMem_4493a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493a6 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493a6)
  store %struct.Memory* %call_4493a6, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4493a9	 Bytes: 5
  %loadMem1_4493a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4493a9 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4493a9, i64 2471, i64 5, i64 5)
  store %struct.Memory* %call1_4493a9, %struct.Memory** %MEMORY

  %loadMem2_4493a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4493a9 = load i64, i64* %3
  %call2_4493a9 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4493a9, %struct.Memory* %loadMem2_4493a9)
  store %struct.Memory* %call2_4493a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4493ae	 Bytes: 3
  %loadMem_4493ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493ae = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493ae)
  store %struct.Memory* %call_4493ae, %struct.Memory** %MEMORY

  ; Code: jne .L_4493c3	 RIP: 4493b1	 Bytes: 6
  %loadMem_4493b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493b1 = call %struct.Memory* @routine_jne_.L_4493c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493b1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4493b1, %struct.Memory** %MEMORY

  %loadBr_4493b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4493b1 = icmp eq i8 %loadBr_4493b1, 1
  br i1 %cmpBr_4493b1, label %block_.L_4493c3, label %block_4493b7

block_4493b7:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4493b7	 Bytes: 7
  %loadMem_4493b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493b7 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493b7)
  store %struct.Memory* %call_4493b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4493be	 Bytes: 5
  %loadMem_4493be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493be = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493be, i64 2299, i64 5)
  store %struct.Memory* %call_4493be, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4493c3:	 RIP: 4493c3	 Bytes: 0
block_.L_4493c3:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4493c3	 Bytes: 4
  %loadMem_4493c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493c3)
  store %struct.Memory* %call_4493c3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 4493c7	 Bytes: 4
  %loadMem_4493c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493c7 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493c7)
  store %struct.Memory* %call_4493c7, %struct.Memory** %MEMORY

  ; Code: jne .L_449448	 RIP: 4493cb	 Bytes: 6
  %loadMem_4493cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493cb = call %struct.Memory* @routine_jne_.L_449448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493cb, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_4493cb, %struct.Memory** %MEMORY

  %loadBr_4493cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4493cb = icmp eq i8 %loadBr_4493cb, 1
  br i1 %cmpBr_4493cb, label %block_.L_449448, label %block_4493d1

block_4493d1:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4493d1	 Bytes: 4
  %loadMem_4493d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493d1)
  store %struct.Memory* %call_4493d1, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4493d5	 Bytes: 4
  %loadMem_4493d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493d5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493d5)
  store %struct.Memory* %call_4493d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4493d9	 Bytes: 2
  %loadMem_4493d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493d9 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493d9)
  store %struct.Memory* %call_4493d9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4493db	 Bytes: 2
  %loadMem_4493db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493db = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493db)
  store %struct.Memory* %call_4493db, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4493dd	 Bytes: 5
  %loadMem1_4493dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4493dd = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4493dd, i64 2419, i64 5, i64 5)
  store %struct.Memory* %call1_4493dd, %struct.Memory** %MEMORY

  %loadMem2_4493dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4493dd = load i64, i64* %3
  %call2_4493dd = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4493dd, %struct.Memory* %loadMem2_4493dd)
  store %struct.Memory* %call2_4493dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4493e2	 Bytes: 3
  %loadMem_4493e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493e2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493e2)
  store %struct.Memory* %call_4493e2, %struct.Memory** %MEMORY

  ; Code: jne .L_4493f7	 RIP: 4493e5	 Bytes: 6
  %loadMem_4493e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493e5 = call %struct.Memory* @routine_jne_.L_4493f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493e5, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4493e5, %struct.Memory** %MEMORY

  %loadBr_4493e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4493e5 = icmp eq i8 %loadBr_4493e5, 1
  br i1 %cmpBr_4493e5, label %block_.L_4493f7, label %block_4493eb

block_4493eb:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4493eb	 Bytes: 7
  %loadMem_4493eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493eb = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493eb)
  store %struct.Memory* %call_4493eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4493f2	 Bytes: 5
  %loadMem_4493f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493f2 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493f2, i64 2247, i64 5)
  store %struct.Memory* %call_4493f2, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4493f7:	 RIP: 4493f7	 Bytes: 0
block_.L_4493f7:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4493f7	 Bytes: 4
  %loadMem_4493f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493f7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493f7)
  store %struct.Memory* %call_4493f7, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 4493fb	 Bytes: 4
  %loadMem_4493fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493fb = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493fb)
  store %struct.Memory* %call_4493fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4493ff	 Bytes: 2
  %loadMem_4493ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493ff = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493ff)
  store %struct.Memory* %call_4493ff, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 449401	 Bytes: 2
  %loadMem_449401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449401 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449401)
  store %struct.Memory* %call_449401, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449403	 Bytes: 5
  %loadMem1_449403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449403 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449403, i64 2381, i64 5, i64 5)
  store %struct.Memory* %call1_449403, %struct.Memory** %MEMORY

  %loadMem2_449403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449403 = load i64, i64* %3
  %call2_449403 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449403, %struct.Memory* %loadMem2_449403)
  store %struct.Memory* %call2_449403, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449408	 Bytes: 3
  %loadMem_449408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449408 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449408)
  store %struct.Memory* %call_449408, %struct.Memory** %MEMORY

  ; Code: jne .L_44941d	 RIP: 44940b	 Bytes: 6
  %loadMem_44940b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44940b = call %struct.Memory* @routine_jne_.L_44941d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44940b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44940b, %struct.Memory** %MEMORY

  %loadBr_44940b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44940b = icmp eq i8 %loadBr_44940b, 1
  br i1 %cmpBr_44940b, label %block_.L_44941d, label %block_449411

block_449411:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449411	 Bytes: 7
  %loadMem_449411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449411 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449411)
  store %struct.Memory* %call_449411, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449418	 Bytes: 5
  %loadMem_449418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449418 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449418, i64 2209, i64 5)
  store %struct.Memory* %call_449418, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44941d:	 RIP: 44941d	 Bytes: 0
block_.L_44941d:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44941d	 Bytes: 4
  %loadMem_44941d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44941d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44941d)
  store %struct.Memory* %call_44941d, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 449421	 Bytes: 4
  %loadMem_449421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449421 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449421)
  store %struct.Memory* %call_449421, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 449425	 Bytes: 2
  %loadMem_449425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449425 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449425)
  store %struct.Memory* %call_449425, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 449427	 Bytes: 2
  %loadMem_449427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449427 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449427)
  store %struct.Memory* %call_449427, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449429	 Bytes: 5
  %loadMem1_449429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449429 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449429, i64 2343, i64 5, i64 5)
  store %struct.Memory* %call1_449429, %struct.Memory** %MEMORY

  %loadMem2_449429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449429 = load i64, i64* %3
  %call2_449429 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449429, %struct.Memory* %loadMem2_449429)
  store %struct.Memory* %call2_449429, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44942e	 Bytes: 3
  %loadMem_44942e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44942e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44942e)
  store %struct.Memory* %call_44942e, %struct.Memory** %MEMORY

  ; Code: jne .L_449443	 RIP: 449431	 Bytes: 6
  %loadMem_449431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449431 = call %struct.Memory* @routine_jne_.L_449443(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449431, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449431, %struct.Memory** %MEMORY

  %loadBr_449431 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449431 = icmp eq i8 %loadBr_449431, 1
  br i1 %cmpBr_449431, label %block_.L_449443, label %block_449437

block_449437:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449437	 Bytes: 7
  %loadMem_449437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449437 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449437)
  store %struct.Memory* %call_449437, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44943e	 Bytes: 5
  %loadMem_44943e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44943e = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44943e, i64 2171, i64 5)
  store %struct.Memory* %call_44943e, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449443:	 RIP: 449443	 Bytes: 0
block_.L_449443:

  ; Code: jmpq .L_4494b3	 RIP: 449443	 Bytes: 5
  %loadMem_449443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449443 = call %struct.Memory* @routine_jmpq_.L_4494b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449443, i64 112, i64 5)
  store %struct.Memory* %call_449443, %struct.Memory** %MEMORY

  br label %block_.L_4494b3

  ; Code: .L_449448:	 RIP: 449448	 Bytes: 0
block_.L_449448:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449448	 Bytes: 4
  %loadMem_449448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449448 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449448)
  store %struct.Memory* %call_449448, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44944c	 Bytes: 4
  %loadMem_44944c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44944c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44944c)
  store %struct.Memory* %call_44944c, %struct.Memory** %MEMORY

  ; Code: callq .write_i64	 RIP: 449450	 Bytes: 5
  %loadMem1_449450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449450 = call %struct.Memory* @routine_callq_.write_i64(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449450, i64 2512, i64 5, i64 5)
  store %struct.Memory* %call1_449450, %struct.Memory** %MEMORY

  %loadMem2_449450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449450 = load i64, i64* %3
  %call2_449450 = call %struct.Memory* @sub_449e20.write_i64(%struct.State* %0, i64  %loadPC_449450, %struct.Memory* %loadMem2_449450)
  store %struct.Memory* %call2_449450, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449455	 Bytes: 3
  %loadMem_449455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449455 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449455)
  store %struct.Memory* %call_449455, %struct.Memory** %MEMORY

  ; Code: jne .L_44946a	 RIP: 449458	 Bytes: 6
  %loadMem_449458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449458 = call %struct.Memory* @routine_jne_.L_44946a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449458, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449458, %struct.Memory** %MEMORY

  %loadBr_449458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449458 = icmp eq i8 %loadBr_449458, 1
  br i1 %cmpBr_449458, label %block_.L_44946a, label %block_44945e

block_44945e:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44945e	 Bytes: 7
  %loadMem_44945e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44945e = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44945e)
  store %struct.Memory* %call_44945e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449465	 Bytes: 5
  %loadMem_449465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449465 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449465, i64 2132, i64 5)
  store %struct.Memory* %call_449465, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44946a:	 RIP: 44946a	 Bytes: 0
block_.L_44946a:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44946a	 Bytes: 4
  %loadMem_44946a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44946a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44946a)
  store %struct.Memory* %call_44946a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 44946e	 Bytes: 4
  %loadMem_44946e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44946e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44946e)
  store %struct.Memory* %call_44946e, %struct.Memory** %MEMORY

  ; Code: callq .write_i64	 RIP: 449472	 Bytes: 5
  %loadMem1_449472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449472 = call %struct.Memory* @routine_callq_.write_i64(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449472, i64 2478, i64 5, i64 5)
  store %struct.Memory* %call1_449472, %struct.Memory** %MEMORY

  %loadMem2_449472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449472 = load i64, i64* %3
  %call2_449472 = call %struct.Memory* @sub_449e20.write_i64(%struct.State* %0, i64  %loadPC_449472, %struct.Memory* %loadMem2_449472)
  store %struct.Memory* %call2_449472, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449477	 Bytes: 3
  %loadMem_449477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449477 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449477)
  store %struct.Memory* %call_449477, %struct.Memory** %MEMORY

  ; Code: jne .L_44948c	 RIP: 44947a	 Bytes: 6
  %loadMem_44947a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44947a = call %struct.Memory* @routine_jne_.L_44948c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44947a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44947a, %struct.Memory** %MEMORY

  %loadBr_44947a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44947a = icmp eq i8 %loadBr_44947a, 1
  br i1 %cmpBr_44947a, label %block_.L_44948c, label %block_449480

block_449480:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449480	 Bytes: 7
  %loadMem_449480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449480 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449480)
  store %struct.Memory* %call_449480, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449487	 Bytes: 5
  %loadMem_449487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449487 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449487, i64 2098, i64 5)
  store %struct.Memory* %call_449487, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44948c:	 RIP: 44948c	 Bytes: 0
block_.L_44948c:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44948c	 Bytes: 4
  %loadMem_44948c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44948c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44948c)
  store %struct.Memory* %call_44948c, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rsi	 RIP: 449490	 Bytes: 4
  %loadMem_449490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449490 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449490)
  store %struct.Memory* %call_449490, %struct.Memory** %MEMORY

  ; Code: callq .write_i64	 RIP: 449494	 Bytes: 5
  %loadMem1_449494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449494 = call %struct.Memory* @routine_callq_.write_i64(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449494, i64 2444, i64 5, i64 5)
  store %struct.Memory* %call1_449494, %struct.Memory** %MEMORY

  %loadMem2_449494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449494 = load i64, i64* %3
  %call2_449494 = call %struct.Memory* @sub_449e20.write_i64(%struct.State* %0, i64  %loadPC_449494, %struct.Memory* %loadMem2_449494)
  store %struct.Memory* %call2_449494, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449499	 Bytes: 3
  %loadMem_449499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449499 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449499)
  store %struct.Memory* %call_449499, %struct.Memory** %MEMORY

  ; Code: jne .L_4494ae	 RIP: 44949c	 Bytes: 6
  %loadMem_44949c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44949c = call %struct.Memory* @routine_jne_.L_4494ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44949c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44949c, %struct.Memory** %MEMORY

  %loadBr_44949c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44949c = icmp eq i8 %loadBr_44949c, 1
  br i1 %cmpBr_44949c, label %block_.L_4494ae, label %block_4494a2

block_4494a2:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4494a2	 Bytes: 7
  %loadMem_4494a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494a2 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494a2)
  store %struct.Memory* %call_4494a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4494a9	 Bytes: 5
  %loadMem_4494a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494a9 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494a9, i64 2064, i64 5)
  store %struct.Memory* %call_4494a9, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4494ae:	 RIP: 4494ae	 Bytes: 0
block_.L_4494ae:

  ; Code: jmpq .L_4494b3	 RIP: 4494ae	 Bytes: 5
  %loadMem_4494ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ae = call %struct.Memory* @routine_jmpq_.L_4494b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ae, i64 5, i64 5)
  store %struct.Memory* %call_4494ae, %struct.Memory** %MEMORY

  br label %block_.L_4494b3

  ; Code: .L_4494b3:	 RIP: 4494b3	 Bytes: 0
block_.L_4494b3:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4494b3	 Bytes: 4
  %loadMem_4494b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494b3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494b3)
  store %struct.Memory* %call_4494b3, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4494b7	 Bytes: 3
  %loadMem_4494b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494b7 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494b7)
  store %struct.Memory* %call_4494b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4494ba	 Bytes: 2
  %loadMem_4494ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ba = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ba)
  store %struct.Memory* %call_4494ba, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 4494bc	 Bytes: 4
  %loadMem_4494bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494bc = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494bc)
  store %struct.Memory* %call_4494bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4494c0	 Bytes: 3
  %loadMem_4494c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494c0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494c0)
  store %struct.Memory* %call_4494c0, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 4494c3	 Bytes: 5
  %loadMem1_4494c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4494c3 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4494c3, i64 -294643, i64 5, i64 5)
  store %struct.Memory* %call1_4494c3, %struct.Memory** %MEMORY

  %loadMem2_4494c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4494c3 = load i64, i64* %3
  %call2_4494c3 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_4494c3, %struct.Memory* %loadMem2_4494c3)
  store %struct.Memory* %call2_4494c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4494c8	 Bytes: 4
  %loadMem_4494c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494c8 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494c8)
  store %struct.Memory* %call_4494c8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4494cc	 Bytes: 4
  %loadMem_4494cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494cc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494cc)
  store %struct.Memory* %call_4494cc, %struct.Memory** %MEMORY

  ; Code: jne .L_4494e2	 RIP: 4494d0	 Bytes: 6
  %loadMem_4494d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494d0 = call %struct.Memory* @routine_jne_.L_4494e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494d0, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4494d0, %struct.Memory** %MEMORY

  %loadBr_4494d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4494d0 = icmp eq i8 %loadBr_4494d0, 1
  br i1 %cmpBr_4494d0, label %block_.L_4494e2, label %block_4494d6

block_4494d6:
  ; Code: movl $0x3, -0x4(%rbp)	 RIP: 4494d6	 Bytes: 7
  %loadMem_4494d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494d6 = call %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494d6)
  store %struct.Memory* %call_4494d6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4494dd	 Bytes: 5
  %loadMem_4494dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494dd = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494dd, i64 2012, i64 5)
  store %struct.Memory* %call_4494dd, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4494e2:	 RIP: 4494e2	 Bytes: 0
block_.L_4494e2:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4494e2	 Bytes: 7
  %loadMem_4494e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494e2 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494e2)
  store %struct.Memory* %call_4494e2, %struct.Memory** %MEMORY

  ; Code: .L_4494e9:	 RIP: 4494e9	 Bytes: 0
  br label %block_.L_4494e9
block_.L_4494e9:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4494e9	 Bytes: 3
  %loadMem_4494e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494e9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494e9)
  store %struct.Memory* %call_4494e9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4494ec	 Bytes: 4
  %loadMem_4494ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ec = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ec)
  store %struct.Memory* %call_4494ec, %struct.Memory** %MEMORY

  ; Code: movzwl 0x34(%rcx), %edx	 RIP: 4494f0	 Bytes: 4
  %loadMem_4494f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f0 = call %struct.Memory* @routine_movzwl_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f0)
  store %struct.Memory* %call_4494f0, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4494f4	 Bytes: 2
  %loadMem_4494f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f4 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f4)
  store %struct.Memory* %call_4494f4, %struct.Memory** %MEMORY

  ; Code: jge .L_449663	 RIP: 4494f6	 Bytes: 6
  %loadMem_4494f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f6 = call %struct.Memory* @routine_jge_.L_449663(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f6, i8* %BRANCH_TAKEN, i64 365, i64 6, i64 6)
  store %struct.Memory* %call_4494f6, %struct.Memory** %MEMORY

  %loadBr_4494f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4494f6 = icmp eq i8 %loadBr_4494f6, 1
  br i1 %cmpBr_4494f6, label %block_.L_449663, label %block_4494fc

block_4494fc:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 4494fc	 Bytes: 7
  %loadMem_4494fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494fc = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494fc)
  store %struct.Memory* %call_4494fc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449503	 Bytes: 4
  %loadMem_449503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449503 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449503)
  store %struct.Memory* %call_449503, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 449507	 Bytes: 4
  %loadMem_449507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449507 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449507)
  store %struct.Memory* %call_449507, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 44950b	 Bytes: 4
  %loadMem_44950b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44950b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44950b)
  store %struct.Memory* %call_44950b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 44950f	 Bytes: 4
  %loadMem_44950f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44950f = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44950f)
  store %struct.Memory* %call_44950f, %struct.Memory** %MEMORY

  ; Code: jbe .L_449538	 RIP: 449513	 Bytes: 6
  %loadMem_449513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449513 = call %struct.Memory* @routine_jbe_.L_449538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449513, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_449513, %struct.Memory** %MEMORY

  %loadBr_449513 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449513 = icmp eq i8 %loadBr_449513, 1
  br i1 %cmpBr_449513, label %block_.L_449538, label %block_449519

block_449519:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 449519	 Bytes: 4
  %loadMem_449519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449519 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449519)
  store %struct.Memory* %call_449519, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44951d	 Bytes: 4
  %loadMem_44951d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44951d = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44951d)
  store %struct.Memory* %call_44951d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 449521	 Bytes: 4
  %loadMem_449521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449521 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449521)
  store %struct.Memory* %call_449521, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 449525	 Bytes: 4
  %loadMem_449525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449525 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449525)
  store %struct.Memory* %call_449525, %struct.Memory** %MEMORY

  ; Code: jbe .L_449538	 RIP: 449529	 Bytes: 6
  %loadMem_449529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449529 = call %struct.Memory* @routine_jbe_.L_449538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449529, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_449529, %struct.Memory** %MEMORY

  %loadBr_449529 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449529 = icmp eq i8 %loadBr_449529, 1
  br i1 %cmpBr_449529, label %block_.L_449538, label %block_44952f

block_44952f:
  ; Code: movl -0x30(%rbp), %eax	 RIP: 44952f	 Bytes: 3
  %loadMem_44952f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44952f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44952f)
  store %struct.Memory* %call_44952f, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %eax	 RIP: 449532	 Bytes: 3
  %loadMem_449532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449532 = call %struct.Memory* @routine_orl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449532)
  store %struct.Memory* %call_449532, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 449535	 Bytes: 3
  %loadMem_449535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449535 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449535)
  store %struct.Memory* %call_449535, %struct.Memory** %MEMORY

  ; Code: .L_449538:	 RIP: 449538	 Bytes: 0
  br label %block_.L_449538
block_.L_449538:

  ; Code: movl $0x1, %eax	 RIP: 449538	 Bytes: 5
  %loadMem_449538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449538 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449538)
  store %struct.Memory* %call_449538, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44953d	 Bytes: 2
  %loadMem_44953d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44953d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44953d)
  store %struct.Memory* %call_44953d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 44953f	 Bytes: 4
  %loadMem_44953f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44953f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44953f)
  store %struct.Memory* %call_44953f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449543	 Bytes: 4
  %loadMem_449543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449543 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449543)
  store %struct.Memory* %call_449543, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 449547	 Bytes: 4
  %loadMem_449547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449547 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449547)
  store %struct.Memory* %call_449547, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 44954b	 Bytes: 4
  %loadMem_44954b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44954b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44954b)
  store %struct.Memory* %call_44954b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 44954f	 Bytes: 4
  %loadMem_44954f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44954f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44954f)
  store %struct.Memory* %call_44954f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x4f8(%rbp)	 RIP: 449553	 Bytes: 7
  %loadMem_449553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449553 = call %struct.Memory* @routine_movq__rsi__MINUS0x4f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449553)
  store %struct.Memory* %call_449553, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 44955a	 Bytes: 3
  %loadMem_44955a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44955a = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44955a)
  store %struct.Memory* %call_44955a, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 44955d	 Bytes: 5
  %loadMem1_44955d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44955d = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44955d, i64 -295293, i64 5, i64 5)
  store %struct.Memory* %call1_44955d, %struct.Memory** %MEMORY

  %loadMem2_44955d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44955d = load i64, i64* %3
  %call2_44955d = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_44955d, %struct.Memory* %loadMem2_44955d)
  store %struct.Memory* %call2_44955d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449562	 Bytes: 4
  %loadMem_449562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449562 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449562)
  store %struct.Memory* %call_449562, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449566	 Bytes: 4
  %loadMem_449566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449566 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449566)
  store %struct.Memory* %call_449566, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rcx), %r8d	 RIP: 44956a	 Bytes: 4
  %loadMem_44956a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44956a = call %struct.Memory* @routine_movl_0x30__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44956a)
  store %struct.Memory* %call_44956a, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 44956e	 Bytes: 3
  %loadMem_44956e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44956e = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44956e)
  store %struct.Memory* %call_44956e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449571	 Bytes: 4
  %loadMem_449571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449571 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449571)
  store %struct.Memory* %call_449571, %struct.Memory** %MEMORY

  ; Code: movq -0x4f8(%rbp), %rsi	 RIP: 449575	 Bytes: 7
  %loadMem_449575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449575 = call %struct.Memory* @routine_movq_MINUS0x4f8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449575)
  store %struct.Memory* %call_449575, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x500(%rbp)	 RIP: 44957c	 Bytes: 7
  %loadMem_44957c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44957c = call %struct.Memory* @routine_movq__rax__MINUS0x500__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44957c)
  store %struct.Memory* %call_44957c, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449583	 Bytes: 5
  %loadMem1_449583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449583 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449583, i64 -294563, i64 5, i64 5)
  store %struct.Memory* %call1_449583, %struct.Memory** %MEMORY

  %loadMem2_449583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449583 = load i64, i64* %3
  %call2_449583 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449583, %struct.Memory* %loadMem2_449583)
  store %struct.Memory* %call2_449583, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449588	 Bytes: 4
  %loadMem_449588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449588 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449588)
  store %struct.Memory* %call_449588, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rcx), %r8d	 RIP: 44958c	 Bytes: 4
  %loadMem_44958c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44958c = call %struct.Memory* @routine_movl_0x30__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44958c)
  store %struct.Memory* %call_44958c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449590	 Bytes: 3
  %loadMem_449590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449590 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449590)
  store %struct.Memory* %call_449590, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449593	 Bytes: 3
  %loadMem_449593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449593 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449593)
  store %struct.Memory* %call_449593, %struct.Memory** %MEMORY

  ; Code: je .L_4495a8	 RIP: 449596	 Bytes: 6
  %loadMem_449596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449596 = call %struct.Memory* @routine_je_.L_4495a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449596, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449596, %struct.Memory** %MEMORY

  %loadBr_449596 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449596 = icmp eq i8 %loadBr_449596, 1
  br i1 %cmpBr_449596, label %block_.L_4495a8, label %block_44959c

block_44959c:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44959c	 Bytes: 7
  %loadMem_44959c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44959c = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44959c)
  store %struct.Memory* %call_44959c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4495a3	 Bytes: 5
  %loadMem_4495a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495a3 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495a3, i64 1814, i64 5)
  store %struct.Memory* %call_4495a3, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4495a8:	 RIP: 4495a8	 Bytes: 0
block_.L_4495a8:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4495a8	 Bytes: 4
  %loadMem_4495a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495a8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495a8)
  store %struct.Memory* %call_4495a8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4495ac	 Bytes: 4
  %loadMem_4495ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495ac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495ac)
  store %struct.Memory* %call_4495ac, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4495b0	 Bytes: 4
  %loadMem_4495b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495b0 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495b0)
  store %struct.Memory* %call_4495b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4495b4	 Bytes: 4
  %loadMem_4495b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495b4 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495b4)
  store %struct.Memory* %call_4495b4, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 4495b8	 Bytes: 3
  %loadMem_4495b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495b8 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495b8)
  store %struct.Memory* %call_4495b8, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4495bb	 Bytes: 5
  %loadMem1_4495bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4495bb = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4495bb, i64 1941, i64 5, i64 5)
  store %struct.Memory* %call1_4495bb, %struct.Memory** %MEMORY

  %loadMem2_4495bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4495bb = load i64, i64* %3
  %call2_4495bb = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4495bb, %struct.Memory* %loadMem2_4495bb)
  store %struct.Memory* %call2_4495bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4495c0	 Bytes: 3
  %loadMem_4495c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495c0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495c0)
  store %struct.Memory* %call_4495c0, %struct.Memory** %MEMORY

  ; Code: jne .L_4495d5	 RIP: 4495c3	 Bytes: 6
  %loadMem_4495c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495c3 = call %struct.Memory* @routine_jne_.L_4495d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495c3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4495c3, %struct.Memory** %MEMORY

  %loadBr_4495c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4495c3 = icmp eq i8 %loadBr_4495c3, 1
  br i1 %cmpBr_4495c3, label %block_.L_4495d5, label %block_4495c9

block_4495c9:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4495c9	 Bytes: 7
  %loadMem_4495c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495c9 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495c9)
  store %struct.Memory* %call_4495c9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4495d0	 Bytes: 5
  %loadMem_4495d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495d0 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495d0, i64 1769, i64 5)
  store %struct.Memory* %call_4495d0, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4495d5:	 RIP: 4495d5	 Bytes: 0
block_.L_4495d5:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4495d5	 Bytes: 4
  %loadMem_4495d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495d5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495d5)
  store %struct.Memory* %call_4495d5, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 4495d9	 Bytes: 3
  %loadMem_4495d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495d9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495d9)
  store %struct.Memory* %call_4495d9, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4495dc	 Bytes: 5
  %loadMem1_4495dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4495dc = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4495dc, i64 1908, i64 5, i64 5)
  store %struct.Memory* %call1_4495dc, %struct.Memory** %MEMORY

  %loadMem2_4495dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4495dc = load i64, i64* %3
  %call2_4495dc = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4495dc, %struct.Memory* %loadMem2_4495dc)
  store %struct.Memory* %call2_4495dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4495e1	 Bytes: 3
  %loadMem_4495e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495e1)
  store %struct.Memory* %call_4495e1, %struct.Memory** %MEMORY

  ; Code: jne .L_4495f6	 RIP: 4495e4	 Bytes: 6
  %loadMem_4495e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495e4 = call %struct.Memory* @routine_jne_.L_4495f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495e4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4495e4, %struct.Memory** %MEMORY

  %loadBr_4495e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4495e4 = icmp eq i8 %loadBr_4495e4, 1
  br i1 %cmpBr_4495e4, label %block_.L_4495f6, label %block_4495ea

block_4495ea:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4495ea	 Bytes: 7
  %loadMem_4495ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495ea = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495ea)
  store %struct.Memory* %call_4495ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4495f1	 Bytes: 5
  %loadMem_4495f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495f1 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495f1, i64 1736, i64 5)
  store %struct.Memory* %call_4495f1, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4495f6:	 RIP: 4495f6	 Bytes: 0
block_.L_4495f6:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4495f6	 Bytes: 4
  %loadMem_4495f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495f6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495f6)
  store %struct.Memory* %call_4495f6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4495fa	 Bytes: 4
  %loadMem_4495fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495fa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495fa)
  store %struct.Memory* %call_4495fa, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 4495fe	 Bytes: 4
  %loadMem_4495fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495fe = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495fe)
  store %struct.Memory* %call_4495fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 449602	 Bytes: 4
  %loadMem_449602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449602 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449602)
  store %struct.Memory* %call_449602, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 449606	 Bytes: 3
  %loadMem_449606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449606 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449606)
  store %struct.Memory* %call_449606, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449609	 Bytes: 5
  %loadMem1_449609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449609 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449609, i64 1863, i64 5, i64 5)
  store %struct.Memory* %call1_449609, %struct.Memory** %MEMORY

  %loadMem2_449609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449609 = load i64, i64* %3
  %call2_449609 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449609, %struct.Memory* %loadMem2_449609)
  store %struct.Memory* %call2_449609, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44960e	 Bytes: 3
  %loadMem_44960e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44960e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44960e)
  store %struct.Memory* %call_44960e, %struct.Memory** %MEMORY

  ; Code: jne .L_449623	 RIP: 449611	 Bytes: 6
  %loadMem_449611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449611 = call %struct.Memory* @routine_jne_.L_449623(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449611, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449611, %struct.Memory** %MEMORY

  %loadBr_449611 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449611 = icmp eq i8 %loadBr_449611, 1
  br i1 %cmpBr_449611, label %block_.L_449623, label %block_449617

block_449617:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449617	 Bytes: 7
  %loadMem_449617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449617 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449617)
  store %struct.Memory* %call_449617, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44961e	 Bytes: 5
  %loadMem_44961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44961e = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44961e, i64 1691, i64 5)
  store %struct.Memory* %call_44961e, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449623:	 RIP: 449623	 Bytes: 0
block_.L_449623:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449623	 Bytes: 4
  %loadMem_449623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449623 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449623)
  store %struct.Memory* %call_449623, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449627	 Bytes: 4
  %loadMem_449627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449627 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449627)
  store %struct.Memory* %call_449627, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44962b	 Bytes: 4
  %loadMem_44962b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44962b = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44962b)
  store %struct.Memory* %call_44962b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 44962f	 Bytes: 4
  %loadMem_44962f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44962f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44962f)
  store %struct.Memory* %call_44962f, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 449633	 Bytes: 3
  %loadMem_449633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449633 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449633)
  store %struct.Memory* %call_449633, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449636	 Bytes: 5
  %loadMem1_449636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449636 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449636, i64 1818, i64 5, i64 5)
  store %struct.Memory* %call1_449636, %struct.Memory** %MEMORY

  %loadMem2_449636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449636 = load i64, i64* %3
  %call2_449636 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449636, %struct.Memory* %loadMem2_449636)
  store %struct.Memory* %call2_449636, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44963b	 Bytes: 3
  %loadMem_44963b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44963b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44963b)
  store %struct.Memory* %call_44963b, %struct.Memory** %MEMORY

  ; Code: jne .L_449650	 RIP: 44963e	 Bytes: 6
  %loadMem_44963e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44963e = call %struct.Memory* @routine_jne_.L_449650(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44963e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44963e, %struct.Memory** %MEMORY

  %loadBr_44963e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44963e = icmp eq i8 %loadBr_44963e, 1
  br i1 %cmpBr_44963e, label %block_.L_449650, label %block_449644

block_449644:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449644	 Bytes: 7
  %loadMem_449644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449644 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449644)
  store %struct.Memory* %call_449644, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44964b	 Bytes: 5
  %loadMem_44964b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44964b = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44964b, i64 1646, i64 5)
  store %struct.Memory* %call_44964b, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449650:	 RIP: 449650	 Bytes: 0
block_.L_449650:

  ; Code: jmpq .L_449655	 RIP: 449650	 Bytes: 5
  %loadMem_449650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449650 = call %struct.Memory* @routine_jmpq_.L_449655(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449650, i64 5, i64 5)
  store %struct.Memory* %call_449650, %struct.Memory** %MEMORY

  br label %block_.L_449655

  ; Code: .L_449655:	 RIP: 449655	 Bytes: 0
block_.L_449655:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449655	 Bytes: 3
  %loadMem_449655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449655 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449655)
  store %struct.Memory* %call_449655, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449658	 Bytes: 3
  %loadMem_449658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449658 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449658)
  store %struct.Memory* %call_449658, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44965b	 Bytes: 3
  %loadMem_44965b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44965b = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44965b)
  store %struct.Memory* %call_44965b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4494e9	 RIP: 44965e	 Bytes: 5
  %loadMem_44965e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44965e = call %struct.Memory* @routine_jmpq_.L_4494e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44965e, i64 -373, i64 5)
  store %struct.Memory* %call_44965e, %struct.Memory** %MEMORY

  br label %block_.L_4494e9

  ; Code: .L_449663:	 RIP: 449663	 Bytes: 0
block_.L_449663:

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449663	 Bytes: 4
  %loadMem_449663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449663 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449663)
  store %struct.Memory* %call_449663, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 449667	 Bytes: 5
  %loadMem1_449667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449667 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449667, i64 -295655, i64 5, i64 5)
  store %struct.Memory* %call1_449667, %struct.Memory** %MEMORY

  %loadMem2_449667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449667 = load i64, i64* %3
  %call2_449667 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_449667, %struct.Memory* %loadMem2_449667)
  store %struct.Memory* %call2_449667, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 44966c	 Bytes: 4
  %loadMem_44966c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44966c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44966c)
  store %struct.Memory* %call_44966c, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rdi), %eax	 RIP: 449670	 Bytes: 3
  %loadMem_449670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449670 = call %struct.Memory* @routine_movl_0x40__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449670)
  store %struct.Memory* %call_449670, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 449673	 Bytes: 2
  %loadMem_449673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449673 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449673)
  store %struct.Memory* %call_449673, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rdi	 RIP: 449675	 Bytes: 4
  %loadMem_449675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449675 = call %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449675)
  store %struct.Memory* %call_449675, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 449679	 Bytes: 5
  %loadMem1_449679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449679 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449679, i64 -295081, i64 5, i64 5)
  store %struct.Memory* %call1_449679, %struct.Memory** %MEMORY

  %loadMem2_449679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449679 = load i64, i64* %3
  %call2_449679 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_449679, %struct.Memory* %loadMem2_449679)
  store %struct.Memory* %call2_449679, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 44967e	 Bytes: 4
  %loadMem_44967e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44967e = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44967e)
  store %struct.Memory* %call_44967e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 449682	 Bytes: 4
  %loadMem_449682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449682 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449682)
  store %struct.Memory* %call_449682, %struct.Memory** %MEMORY

  ; Code: jne .L_449698	 RIP: 449686	 Bytes: 6
  %loadMem_449686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449686 = call %struct.Memory* @routine_jne_.L_449698(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449686, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449686, %struct.Memory** %MEMORY

  %loadBr_449686 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449686 = icmp eq i8 %loadBr_449686, 1
  br i1 %cmpBr_449686, label %block_.L_449698, label %block_44968c

block_44968c:
  ; Code: movl $0x3, -0x4(%rbp)	 RIP: 44968c	 Bytes: 7
  %loadMem_44968c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44968c = call %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44968c)
  store %struct.Memory* %call_44968c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449693	 Bytes: 5
  %loadMem_449693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449693 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449693, i64 1574, i64 5)
  store %struct.Memory* %call_449693, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449698:	 RIP: 449698	 Bytes: 0
block_.L_449698:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449698	 Bytes: 4
  %loadMem_449698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449698 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449698)
  store %struct.Memory* %call_449698, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 44969c	 Bytes: 4
  %loadMem_44969c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44969c = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44969c)
  store %struct.Memory* %call_44969c, %struct.Memory** %MEMORY

  ; Code: je .L_449860	 RIP: 4496a0	 Bytes: 6
  %loadMem_4496a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496a0 = call %struct.Memory* @routine_je_.L_449860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496a0, i8* %BRANCH_TAKEN, i64 448, i64 6, i64 6)
  store %struct.Memory* %call_4496a0, %struct.Memory** %MEMORY

  %loadBr_4496a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4496a0 = icmp eq i8 %loadBr_4496a0, 1
  br i1 %cmpBr_4496a0, label %block_.L_449860, label %block_4496a6

block_4496a6:
  ; Code: movq $0x0, -0x478(%rbp)	 RIP: 4496a6	 Bytes: 11
  %loadMem_4496a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496a6 = call %struct.Memory* @routine_movq__0x0__MINUS0x478__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496a6)
  store %struct.Memory* %call_4496a6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x47c(%rbp)	 RIP: 4496b1	 Bytes: 10
  %loadMem_4496b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496b1 = call %struct.Memory* @routine_movl__0x0__MINUS0x47c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496b1)
  store %struct.Memory* %call_4496b1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4496bb	 Bytes: 7
  %loadMem_4496bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496bb = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496bb)
  store %struct.Memory* %call_4496bb, %struct.Memory** %MEMORY

  ; Code: .L_4496c2:	 RIP: 4496c2	 Bytes: 0
  br label %block_.L_4496c2
block_.L_4496c2:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4496c2	 Bytes: 3
  %loadMem_4496c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496c2 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496c2)
  store %struct.Memory* %call_4496c2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4496c5	 Bytes: 4
  %loadMem_4496c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496c5)
  store %struct.Memory* %call_4496c5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x44(%rcx), %eax	 RIP: 4496c9	 Bytes: 3
  %loadMem_4496c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496c9 = call %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496c9)
  store %struct.Memory* %call_4496c9, %struct.Memory** %MEMORY

  ; Code: jae .L_44984f	 RIP: 4496cc	 Bytes: 6
  %loadMem_4496cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496cc = call %struct.Memory* @routine_jae_.L_44984f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496cc, i8* %BRANCH_TAKEN, i64 387, i64 6, i64 6)
  store %struct.Memory* %call_4496cc, %struct.Memory** %MEMORY

  %loadBr_4496cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4496cc = icmp eq i8 %loadBr_4496cc, 1
  br i1 %cmpBr_4496cc, label %block_.L_44984f, label %block_4496d2

block_4496d2:
  ; Code: leaq -0x478(%rbp), %rdi	 RIP: 4496d2	 Bytes: 7
  %loadMem_4496d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496d2 = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496d2)
  store %struct.Memory* %call_4496d2, %struct.Memory** %MEMORY

  ; Code: leaq -0x47c(%rbp), %rsi	 RIP: 4496d9	 Bytes: 7
  %loadMem_4496d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496d9 = call %struct.Memory* @routine_leaq_MINUS0x47c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496d9)
  store %struct.Memory* %call_4496d9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4496e0	 Bytes: 4
  %loadMem_4496e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496e0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496e0)
  store %struct.Memory* %call_4496e0, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rdx	 RIP: 4496e4	 Bytes: 4
  %loadMem_4496e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496e4 = call %struct.Memory* @routine_movq_0x50__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496e4)
  store %struct.Memory* %call_4496e4, %struct.Memory** %MEMORY

  ; Code: callq .sre_fgets	 RIP: 4496e8	 Bytes: 5
  %loadMem1_4496e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4496e8 = call %struct.Memory* @routine_callq_.sre_fgets(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4496e8, i64 -13256, i64 5, i64 5)
  store %struct.Memory* %call1_4496e8, %struct.Memory** %MEMORY

  %loadMem2_4496e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4496e8 = load i64, i64* %3
  %call2_4496e8 = call %struct.Memory* @sub_446320.sre_fgets(%struct.State* %0, i64  %loadPC_4496e8, %struct.Memory* %loadMem2_4496e8)
  store %struct.Memory* %call2_4496e8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4496ed	 Bytes: 4
  %loadMem_4496ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496ed = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496ed)
  store %struct.Memory* %call_4496ed, %struct.Memory** %MEMORY

  ; Code: jne .L_449703	 RIP: 4496f1	 Bytes: 6
  %loadMem_4496f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496f1 = call %struct.Memory* @routine_jne_.L_449703(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496f1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4496f1, %struct.Memory** %MEMORY

  %loadBr_4496f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4496f1 = icmp eq i8 %loadBr_4496f1, 1
  br i1 %cmpBr_4496f1, label %block_.L_449703, label %block_4496f7

block_4496f7:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4496f7	 Bytes: 7
  %loadMem_4496f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496f7 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496f7)
  store %struct.Memory* %call_4496f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4496fe	 Bytes: 5
  %loadMem_4496fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496fe = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496fe, i64 1467, i64 5)
  store %struct.Memory* %call_4496fe, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449703:	 RIP: 449703	 Bytes: 0
block_.L_449703:

  ; Code: leaq -0x4b8(%rbp), %rdx	 RIP: 449703	 Bytes: 7
  %loadMem_449703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449703 = call %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449703)
  store %struct.Memory* %call_449703, %struct.Memory** %MEMORY

  ; Code: movq -0x478(%rbp), %rdi	 RIP: 44970a	 Bytes: 7
  %loadMem_44970a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44970a = call %struct.Memory* @routine_movq_MINUS0x478__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44970a)
  store %struct.Memory* %call_44970a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449711	 Bytes: 4
  %loadMem_449711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449711 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449711)
  store %struct.Memory* %call_449711, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 449715	 Bytes: 2
  %loadMem_449715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449715 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449715)
  store %struct.Memory* %call_449715, %struct.Memory** %MEMORY

  ; Code: movb %cl, %sil	 RIP: 449717	 Bytes: 3
  %loadMem_449717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449717 = call %struct.Memory* @routine_movb__cl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449717)
  store %struct.Memory* %call_449717, %struct.Memory** %MEMORY

  ; Code: movsbl %sil, %esi	 RIP: 44971a	 Bytes: 4
  %loadMem_44971a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44971a = call %struct.Memory* @routine_movsbl__sil___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44971a)
  store %struct.Memory* %call_44971a, %struct.Memory** %MEMORY

  ; Code: callq .parse_pkey_info	 RIP: 44971e	 Bytes: 5
  %loadMem1_44971e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44971e = call %struct.Memory* @routine_callq_.parse_pkey_info(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44971e, i64 1890, i64 5, i64 5)
  store %struct.Memory* %call1_44971e, %struct.Memory** %MEMORY

  %loadMem2_44971e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44971e = load i64, i64* %3
  %call2_44971e = call %struct.Memory* @sub_449e80.parse_pkey_info(%struct.State* %0, i64  %loadPC_44971e, %struct.Memory* %loadMem2_44971e)
  store %struct.Memory* %call2_44971e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449723	 Bytes: 3
  %loadMem_449723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449723 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449723)
  store %struct.Memory* %call_449723, %struct.Memory** %MEMORY

  ; Code: je .L_449738	 RIP: 449726	 Bytes: 6
  %loadMem_449726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449726 = call %struct.Memory* @routine_je_.L_449738(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449726, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449726, %struct.Memory** %MEMORY

  %loadBr_449726 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449726 = icmp eq i8 %loadBr_449726, 1
  br i1 %cmpBr_449726, label %block_.L_449738, label %block_44972c

block_44972c:
  ; Code: movl $0x6, -0x4(%rbp)	 RIP: 44972c	 Bytes: 7
  %loadMem_44972c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44972c = call %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44972c)
  store %struct.Memory* %call_44972c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449733	 Bytes: 5
  %loadMem_449733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449733 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449733, i64 1414, i64 5)
  store %struct.Memory* %call_449733, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449738:	 RIP: 449738	 Bytes: 0
block_.L_449738:

  ; Code: movl $0x1, %eax	 RIP: 449738	 Bytes: 5
  %loadMem_449738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449738 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449738)
  store %struct.Memory* %call_449738, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44973d	 Bytes: 2
  %loadMem_44973d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44973d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44973d)
  store %struct.Memory* %call_44973d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 44973f	 Bytes: 4
  %loadMem_44973f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44973f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44973f)
  store %struct.Memory* %call_44973f, %struct.Memory** %MEMORY

  ; Code: movq -0x4b8(%rbp), %rcx	 RIP: 449743	 Bytes: 7
  %loadMem_449743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449743 = call %struct.Memory* @routine_movq_MINUS0x4b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449743)
  store %struct.Memory* %call_449743, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x508(%rbp)	 RIP: 44974a	 Bytes: 7
  %loadMem_44974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44974a = call %struct.Memory* @routine_movq__rsi__MINUS0x508__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44974a)
  store %struct.Memory* %call_44974a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 449751	 Bytes: 3
  %loadMem_449751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449751 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449751)
  store %struct.Memory* %call_449751, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 449754	 Bytes: 5
  %loadMem1_449754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449754 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449754, i64 -295796, i64 5, i64 5)
  store %struct.Memory* %call1_449754, %struct.Memory** %MEMORY

  %loadMem2_449754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449754 = load i64, i64* %3
  %call2_449754 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_449754, %struct.Memory* %loadMem2_449754)
  store %struct.Memory* %call2_449754, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449759	 Bytes: 4
  %loadMem_449759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449759 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449759)
  store %struct.Memory* %call_449759, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44975d	 Bytes: 4
  %loadMem_44975d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44975d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44975d)
  store %struct.Memory* %call_44975d, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %edx	 RIP: 449761	 Bytes: 3
  %loadMem_449761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449761 = call %struct.Memory* @routine_movl_0x40__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449761)
  store %struct.Memory* %call_449761, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449764	 Bytes: 4
  %loadMem_449764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449764 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449764)
  store %struct.Memory* %call_449764, %struct.Memory** %MEMORY

  ; Code: movq -0x508(%rbp), %rsi	 RIP: 449768	 Bytes: 7
  %loadMem_449768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449768 = call %struct.Memory* @routine_movq_MINUS0x508__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449768)
  store %struct.Memory* %call_449768, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x510(%rbp)	 RIP: 44976f	 Bytes: 7
  %loadMem_44976f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44976f = call %struct.Memory* @routine_movq__rax__MINUS0x510__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44976f)
  store %struct.Memory* %call_44976f, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449776	 Bytes: 5
  %loadMem1_449776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449776 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449776, i64 -295062, i64 5, i64 5)
  store %struct.Memory* %call1_449776, %struct.Memory** %MEMORY

  %loadMem2_449776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449776 = load i64, i64* %3
  %call2_449776 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449776, %struct.Memory* %loadMem2_449776)
  store %struct.Memory* %call2_449776, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44977b	 Bytes: 4
  %loadMem_44977b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44977b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44977b)
  store %struct.Memory* %call_44977b, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %r8d	 RIP: 44977f	 Bytes: 4
  %loadMem_44977f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44977f = call %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44977f)
  store %struct.Memory* %call_44977f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449783	 Bytes: 3
  %loadMem_449783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449783 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449783)
  store %struct.Memory* %call_449783, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449786	 Bytes: 3
  %loadMem_449786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449786 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449786)
  store %struct.Memory* %call_449786, %struct.Memory** %MEMORY

  ; Code: je .L_44979b	 RIP: 449789	 Bytes: 6
  %loadMem_449789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449789 = call %struct.Memory* @routine_je_.L_44979b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449789, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449789, %struct.Memory** %MEMORY

  %loadBr_449789 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449789 = icmp eq i8 %loadBr_449789, 1
  br i1 %cmpBr_449789, label %block_.L_44979b, label %block_44978f

block_44978f:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44978f	 Bytes: 7
  %loadMem_44978f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44978f = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44978f)
  store %struct.Memory* %call_44978f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449796	 Bytes: 5
  %loadMem_449796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449796 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449796, i64 1315, i64 5)
  store %struct.Memory* %call_449796, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44979b:	 RIP: 44979b	 Bytes: 0
block_.L_44979b:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44979b	 Bytes: 4
  %loadMem_44979b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44979b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44979b)
  store %struct.Memory* %call_44979b, %struct.Memory** %MEMORY

  ; Code: movzwl -0x4b0(%rbp), %esi	 RIP: 44979f	 Bytes: 7
  %loadMem_44979f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44979f = call %struct.Memory* @routine_movzwl_MINUS0x4b0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44979f)
  store %struct.Memory* %call_44979f, %struct.Memory** %MEMORY

  ; Code: callq .write_i16	 RIP: 4497a6	 Bytes: 5
  %loadMem1_4497a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4497a6 = call %struct.Memory* @routine_callq_.write_i16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4497a6, i64 1546, i64 5, i64 5)
  store %struct.Memory* %call1_4497a6, %struct.Memory** %MEMORY

  %loadMem2_4497a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4497a6 = load i64, i64* %3
  %call2_4497a6 = call %struct.Memory* @sub_449db0.write_i16(%struct.State* %0, i64  %loadPC_4497a6, %struct.Memory* %loadMem2_4497a6)
  store %struct.Memory* %call2_4497a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4497ab	 Bytes: 3
  %loadMem_4497ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497ab = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497ab)
  store %struct.Memory* %call_4497ab, %struct.Memory** %MEMORY

  ; Code: jne .L_4497c0	 RIP: 4497ae	 Bytes: 6
  %loadMem_4497ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497ae = call %struct.Memory* @routine_jne_.L_4497c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497ae, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4497ae, %struct.Memory** %MEMORY

  %loadBr_4497ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4497ae = icmp eq i8 %loadBr_4497ae, 1
  br i1 %cmpBr_4497ae, label %block_.L_4497c0, label %block_4497b4

block_4497b4:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4497b4	 Bytes: 7
  %loadMem_4497b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497b4 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497b4)
  store %struct.Memory* %call_4497b4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4497bb	 Bytes: 5
  %loadMem_4497bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497bb = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497bb, i64 1278, i64 5)
  store %struct.Memory* %call_4497bb, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4497c0:	 RIP: 4497c0	 Bytes: 0
block_.L_4497c0:

  ; Code: leaq -0x4b8(%rbp), %rax	 RIP: 4497c0	 Bytes: 7
  %loadMem_4497c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497c0 = call %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497c0)
  store %struct.Memory* %call_4497c0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4497c7	 Bytes: 4
  %loadMem_4497c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497c7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497c7)
  store %struct.Memory* %call_4497c7, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rax	 RIP: 4497cb	 Bytes: 4
  %loadMem_4497cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497cb = call %struct.Memory* @routine_addq__0x10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497cb)
  store %struct.Memory* %call_4497cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4497cf	 Bytes: 3
  %loadMem_4497cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497cf = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497cf)
  store %struct.Memory* %call_4497cf, %struct.Memory** %MEMORY

  ; Code: callq .write_offset	 RIP: 4497d2	 Bytes: 5
  %loadMem1_4497d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4497d2 = call %struct.Memory* @routine_callq_.write_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4497d2, i64 2174, i64 5, i64 5)
  store %struct.Memory* %call1_4497d2, %struct.Memory** %MEMORY

  %loadMem2_4497d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4497d2 = load i64, i64* %3
  %call2_4497d2 = call %struct.Memory* @sub_44a050.write_offset(%struct.State* %0, i64  %loadPC_4497d2, %struct.Memory* %loadMem2_4497d2)
  store %struct.Memory* %call2_4497d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4497d7	 Bytes: 3
  %loadMem_4497d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497d7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497d7)
  store %struct.Memory* %call_4497d7, %struct.Memory** %MEMORY

  ; Code: jne .L_4497ec	 RIP: 4497da	 Bytes: 6
  %loadMem_4497da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497da = call %struct.Memory* @routine_jne_.L_4497ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497da, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4497da, %struct.Memory** %MEMORY

  %loadBr_4497da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4497da = icmp eq i8 %loadBr_4497da, 1
  br i1 %cmpBr_4497da, label %block_.L_4497ec, label %block_4497e0

block_4497e0:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4497e0	 Bytes: 7
  %loadMem_4497e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497e0 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497e0)
  store %struct.Memory* %call_4497e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4497e7	 Bytes: 5
  %loadMem_4497e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497e7 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497e7, i64 1234, i64 5)
  store %struct.Memory* %call_4497e7, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4497ec:	 RIP: 4497ec	 Bytes: 0
block_.L_4497ec:

  ; Code: leaq -0x4b8(%rbp), %rax	 RIP: 4497ec	 Bytes: 7
  %loadMem_4497ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497ec = call %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497ec)
  store %struct.Memory* %call_4497ec, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4497f3	 Bytes: 4
  %loadMem_4497f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497f3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497f3)
  store %struct.Memory* %call_4497f3, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 4497f7	 Bytes: 4
  %loadMem_4497f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497f7 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497f7)
  store %struct.Memory* %call_4497f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4497fb	 Bytes: 3
  %loadMem_4497fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497fb = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497fb)
  store %struct.Memory* %call_4497fb, %struct.Memory** %MEMORY

  ; Code: callq .write_offset	 RIP: 4497fe	 Bytes: 5
  %loadMem1_4497fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4497fe = call %struct.Memory* @routine_callq_.write_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4497fe, i64 2130, i64 5, i64 5)
  store %struct.Memory* %call1_4497fe, %struct.Memory** %MEMORY

  %loadMem2_4497fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4497fe = load i64, i64* %3
  %call2_4497fe = call %struct.Memory* @sub_44a050.write_offset(%struct.State* %0, i64  %loadPC_4497fe, %struct.Memory* %loadMem2_4497fe)
  store %struct.Memory* %call2_4497fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449803	 Bytes: 3
  %loadMem_449803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449803 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449803)
  store %struct.Memory* %call_449803, %struct.Memory** %MEMORY

  ; Code: jne .L_449818	 RIP: 449806	 Bytes: 6
  %loadMem_449806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449806 = call %struct.Memory* @routine_jne_.L_449818(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449806, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449806, %struct.Memory** %MEMORY

  %loadBr_449806 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449806 = icmp eq i8 %loadBr_449806, 1
  br i1 %cmpBr_449806, label %block_.L_449818, label %block_44980c

block_44980c:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44980c	 Bytes: 7
  %loadMem_44980c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44980c = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44980c)
  store %struct.Memory* %call_44980c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449813	 Bytes: 5
  %loadMem_449813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449813 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449813, i64 1190, i64 5)
  store %struct.Memory* %call_449813, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449818:	 RIP: 449818	 Bytes: 0
block_.L_449818:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449818	 Bytes: 4
  %loadMem_449818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449818 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449818)
  store %struct.Memory* %call_449818, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp), %esi	 RIP: 44981c	 Bytes: 6
  %loadMem_44981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44981c = call %struct.Memory* @routine_movl_MINUS0x488__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44981c)
  store %struct.Memory* %call_44981c, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 449822	 Bytes: 5
  %loadMem1_449822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449822 = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449822, i64 1326, i64 5, i64 5)
  store %struct.Memory* %call1_449822, %struct.Memory** %MEMORY

  %loadMem2_449822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449822 = load i64, i64* %3
  %call2_449822 = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_449822, %struct.Memory* %loadMem2_449822)
  store %struct.Memory* %call2_449822, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449827	 Bytes: 3
  %loadMem_449827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449827 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449827)
  store %struct.Memory* %call_449827, %struct.Memory** %MEMORY

  ; Code: jne .L_44983c	 RIP: 44982a	 Bytes: 6
  %loadMem_44982a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44982a = call %struct.Memory* @routine_jne_.L_44983c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44982a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44982a, %struct.Memory** %MEMORY

  %loadBr_44982a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44982a = icmp eq i8 %loadBr_44982a, 1
  br i1 %cmpBr_44982a, label %block_.L_44983c, label %block_449830

block_449830:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449830	 Bytes: 7
  %loadMem_449830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449830 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449830)
  store %struct.Memory* %call_449830, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449837	 Bytes: 5
  %loadMem_449837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449837 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449837, i64 1154, i64 5)
  store %struct.Memory* %call_449837, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44983c:	 RIP: 44983c	 Bytes: 0
block_.L_44983c:

  ; Code: jmpq .L_449841	 RIP: 44983c	 Bytes: 5
  %loadMem_44983c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44983c = call %struct.Memory* @routine_jmpq_.L_449841(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44983c, i64 5, i64 5)
  store %struct.Memory* %call_44983c, %struct.Memory** %MEMORY

  br label %block_.L_449841

  ; Code: .L_449841:	 RIP: 449841	 Bytes: 0
block_.L_449841:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449841	 Bytes: 3
  %loadMem_449841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449841 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449841)
  store %struct.Memory* %call_449841, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449844	 Bytes: 3
  %loadMem_449844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449844 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449844)
  store %struct.Memory* %call_449844, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 449847	 Bytes: 3
  %loadMem_449847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449847 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449847)
  store %struct.Memory* %call_449847, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4496c2	 RIP: 44984a	 Bytes: 5
  %loadMem_44984a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44984a = call %struct.Memory* @routine_jmpq_.L_4496c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44984a, i64 -392, i64 5)
  store %struct.Memory* %call_44984a, %struct.Memory** %MEMORY

  br label %block_.L_4496c2

  ; Code: .L_44984f:	 RIP: 44984f	 Bytes: 0
block_.L_44984f:

  ; Code: movq -0x478(%rbp), %rdi	 RIP: 44984f	 Bytes: 7
  %loadMem_44984f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44984f = call %struct.Memory* @routine_movq_MINUS0x478__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44984f)
  store %struct.Memory* %call_44984f, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 449856	 Bytes: 5
  %loadMem1_449856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449856 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449856, i64 -296150, i64 5, i64 5)
  store %struct.Memory* %call1_449856, %struct.Memory** %MEMORY

  %loadMem2_449856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449856 = load i64, i64* %3
  %call2_449856 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_449856, %struct.Memory* %loadMem2_449856)
  store %struct.Memory* %call2_449856, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4499de	 RIP: 44985b	 Bytes: 5
  %loadMem_44985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44985b = call %struct.Memory* @routine_jmpq_.L_4499de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44985b, i64 387, i64 5)
  store %struct.Memory* %call_44985b, %struct.Memory** %MEMORY

  br label %block_.L_4499de

  ; Code: .L_449860:	 RIP: 449860	 Bytes: 0
block_.L_449860:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 449860	 Bytes: 7
  %loadMem_449860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449860 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449860)
  store %struct.Memory* %call_449860, %struct.Memory** %MEMORY

  ; Code: .L_449867:	 RIP: 449867	 Bytes: 0
  br label %block_.L_449867
block_.L_449867:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449867	 Bytes: 3
  %loadMem_449867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449867 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449867)
  store %struct.Memory* %call_449867, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44986a	 Bytes: 4
  %loadMem_44986a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44986a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44986a)
  store %struct.Memory* %call_44986a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x44(%rcx), %eax	 RIP: 44986e	 Bytes: 3
  %loadMem_44986e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44986e = call %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44986e)
  store %struct.Memory* %call_44986e, %struct.Memory** %MEMORY

  ; Code: jae .L_4499d9	 RIP: 449871	 Bytes: 6
  %loadMem_449871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449871 = call %struct.Memory* @routine_jae_.L_4499d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449871, i8* %BRANCH_TAKEN, i64 360, i64 6, i64 6)
  store %struct.Memory* %call_449871, %struct.Memory** %MEMORY

  %loadBr_449871 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449871 = icmp eq i8 %loadBr_449871, 1
  br i1 %cmpBr_449871, label %block_.L_4499d9, label %block_449877

block_449877:
  ; Code: movl $0x1, %eax	 RIP: 449877	 Bytes: 5
  %loadMem_449877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449877 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449877)
  store %struct.Memory* %call_449877, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44987c	 Bytes: 2
  %loadMem_44987c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44987c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44987c)
  store %struct.Memory* %call_44987c, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 44987e	 Bytes: 4
  %loadMem_44987e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44987e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44987e)
  store %struct.Memory* %call_44987e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449882	 Bytes: 4
  %loadMem_449882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449882 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449882)
  store %struct.Memory* %call_449882, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 449886	 Bytes: 4
  %loadMem_449886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449886 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449886)
  store %struct.Memory* %call_449886, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 44988a	 Bytes: 4
  %loadMem_44988a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44988a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44988a)
  store %struct.Memory* %call_44988a, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rdx, %rdx	 RIP: 44988e	 Bytes: 4
  %loadMem_44988e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44988e = call %struct.Memory* @routine_imulq__0x38___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44988e)
  store %struct.Memory* %call_44988e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449892	 Bytes: 3
  %loadMem_449892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449892 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449892)
  store %struct.Memory* %call_449892, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 449895	 Bytes: 3
  %loadMem_449895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449895 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449895)
  store %struct.Memory* %call_449895, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x518(%rbp)	 RIP: 449898	 Bytes: 7
  %loadMem_449898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449898 = call %struct.Memory* @routine_movq__rsi__MINUS0x518__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449898)
  store %struct.Memory* %call_449898, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 44989f	 Bytes: 3
  %loadMem_44989f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44989f = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44989f)
  store %struct.Memory* %call_44989f, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 4498a2	 Bytes: 5
  %loadMem1_4498a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4498a2 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4498a2, i64 -296130, i64 5, i64 5)
  store %struct.Memory* %call1_4498a2, %struct.Memory** %MEMORY

  %loadMem2_4498a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4498a2 = load i64, i64* %3
  %call2_4498a2 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_4498a2, %struct.Memory* %loadMem2_4498a2)
  store %struct.Memory* %call2_4498a2, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 4498a7	 Bytes: 4
  %loadMem_4498a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498a7 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498a7)
  store %struct.Memory* %call_4498a7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4498ab	 Bytes: 4
  %loadMem_4498ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498ab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498ab)
  store %struct.Memory* %call_4498ab, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %r8d	 RIP: 4498af	 Bytes: 4
  %loadMem_4498af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498af = call %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498af)
  store %struct.Memory* %call_4498af, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 4498b3	 Bytes: 3
  %loadMem_4498b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498b3 = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498b3)
  store %struct.Memory* %call_4498b3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4498b6	 Bytes: 4
  %loadMem_4498b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498b6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498b6)
  store %struct.Memory* %call_4498b6, %struct.Memory** %MEMORY

  ; Code: movq -0x518(%rbp), %rsi	 RIP: 4498ba	 Bytes: 7
  %loadMem_4498ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498ba = call %struct.Memory* @routine_movq_MINUS0x518__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498ba)
  store %struct.Memory* %call_4498ba, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x520(%rbp)	 RIP: 4498c1	 Bytes: 7
  %loadMem_4498c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498c1 = call %struct.Memory* @routine_movq__rax__MINUS0x520__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498c1)
  store %struct.Memory* %call_4498c1, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4498c8	 Bytes: 5
  %loadMem1_4498c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4498c8 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4498c8, i64 -295400, i64 5, i64 5)
  store %struct.Memory* %call1_4498c8, %struct.Memory** %MEMORY

  %loadMem2_4498c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4498c8 = load i64, i64* %3
  %call2_4498c8 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4498c8, %struct.Memory* %loadMem2_4498c8)
  store %struct.Memory* %call2_4498c8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4498cd	 Bytes: 4
  %loadMem_4498cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498cd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498cd)
  store %struct.Memory* %call_4498cd, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %r8d	 RIP: 4498d1	 Bytes: 4
  %loadMem_4498d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498d1 = call %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498d1)
  store %struct.Memory* %call_4498d1, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 4498d5	 Bytes: 3
  %loadMem_4498d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498d5 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498d5)
  store %struct.Memory* %call_4498d5, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 4498d8	 Bytes: 3
  %loadMem_4498d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498d8 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498d8)
  store %struct.Memory* %call_4498d8, %struct.Memory** %MEMORY

  ; Code: je .L_4498ed	 RIP: 4498db	 Bytes: 6
  %loadMem_4498db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498db = call %struct.Memory* @routine_je_.L_4498ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498db, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4498db, %struct.Memory** %MEMORY

  %loadBr_4498db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4498db = icmp eq i8 %loadBr_4498db, 1
  br i1 %cmpBr_4498db, label %block_.L_4498ed, label %block_4498e1

block_4498e1:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4498e1	 Bytes: 7
  %loadMem_4498e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498e1 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498e1)
  store %struct.Memory* %call_4498e1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4498e8	 Bytes: 5
  %loadMem_4498e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498e8 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498e8, i64 977, i64 5)
  store %struct.Memory* %call_4498e8, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4498ed:	 RIP: 4498ed	 Bytes: 0
block_.L_4498ed:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4498ed	 Bytes: 4
  %loadMem_4498ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498ed)
  store %struct.Memory* %call_4498ed, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4498f1	 Bytes: 4
  %loadMem_4498f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498f1)
  store %struct.Memory* %call_4498f1, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 4498f5	 Bytes: 4
  %loadMem_4498f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498f5 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498f5)
  store %struct.Memory* %call_4498f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4498f9	 Bytes: 4
  %loadMem_4498f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498f9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498f9)
  store %struct.Memory* %call_4498f9, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rcx, %rcx	 RIP: 4498fd	 Bytes: 4
  %loadMem_4498fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498fd = call %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498fd)
  store %struct.Memory* %call_4498fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449901	 Bytes: 3
  %loadMem_449901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449901 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449901)
  store %struct.Memory* %call_449901, %struct.Memory** %MEMORY

  ; Code: movzwl 0x8(%rax), %esi	 RIP: 449904	 Bytes: 4
  %loadMem_449904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449904 = call %struct.Memory* @routine_movzwl_0x8__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449904)
  store %struct.Memory* %call_449904, %struct.Memory** %MEMORY

  ; Code: callq .write_i16	 RIP: 449908	 Bytes: 5
  %loadMem1_449908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449908 = call %struct.Memory* @routine_callq_.write_i16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449908, i64 1192, i64 5, i64 5)
  store %struct.Memory* %call1_449908, %struct.Memory** %MEMORY

  %loadMem2_449908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449908 = load i64, i64* %3
  %call2_449908 = call %struct.Memory* @sub_449db0.write_i16(%struct.State* %0, i64  %loadPC_449908, %struct.Memory* %loadMem2_449908)
  store %struct.Memory* %call2_449908, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44990d	 Bytes: 3
  %loadMem_44990d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44990d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44990d)
  store %struct.Memory* %call_44990d, %struct.Memory** %MEMORY

  ; Code: jne .L_449922	 RIP: 449910	 Bytes: 6
  %loadMem_449910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449910 = call %struct.Memory* @routine_jne_.L_449922(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449910, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449910, %struct.Memory** %MEMORY

  %loadBr_449910 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449910 = icmp eq i8 %loadBr_449910, 1
  br i1 %cmpBr_449910, label %block_.L_449922, label %block_449916

block_449916:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449916	 Bytes: 7
  %loadMem_449916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449916 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449916)
  store %struct.Memory* %call_449916, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44991d	 Bytes: 5
  %loadMem_44991d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44991d = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44991d, i64 924, i64 5)
  store %struct.Memory* %call_44991d, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449922:	 RIP: 449922	 Bytes: 0
block_.L_449922:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449922	 Bytes: 4
  %loadMem_449922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449922 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449922)
  store %struct.Memory* %call_449922, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449926	 Bytes: 4
  %loadMem_449926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449926 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449926)
  store %struct.Memory* %call_449926, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44992a	 Bytes: 4
  %loadMem_44992a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44992a = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44992a)
  store %struct.Memory* %call_44992a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 44992e	 Bytes: 4
  %loadMem_44992e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44992e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44992e)
  store %struct.Memory* %call_44992e, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rcx, %rcx	 RIP: 449932	 Bytes: 4
  %loadMem_449932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449932 = call %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449932)
  store %struct.Memory* %call_449932, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449936	 Bytes: 3
  %loadMem_449936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449936 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449936)
  store %struct.Memory* %call_449936, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rax	 RIP: 449939	 Bytes: 4
  %loadMem_449939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449939 = call %struct.Memory* @routine_addq__0x10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449939)
  store %struct.Memory* %call_449939, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44993d	 Bytes: 3
  %loadMem_44993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44993d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44993d)
  store %struct.Memory* %call_44993d, %struct.Memory** %MEMORY

  ; Code: callq .write_offset	 RIP: 449940	 Bytes: 5
  %loadMem1_449940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449940 = call %struct.Memory* @routine_callq_.write_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449940, i64 1808, i64 5, i64 5)
  store %struct.Memory* %call1_449940, %struct.Memory** %MEMORY

  %loadMem2_449940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449940 = load i64, i64* %3
  %call2_449940 = call %struct.Memory* @sub_44a050.write_offset(%struct.State* %0, i64  %loadPC_449940, %struct.Memory* %loadMem2_449940)
  store %struct.Memory* %call2_449940, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449945	 Bytes: 3
  %loadMem_449945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449945 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449945)
  store %struct.Memory* %call_449945, %struct.Memory** %MEMORY

  ; Code: jne .L_44995a	 RIP: 449948	 Bytes: 6
  %loadMem_449948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449948 = call %struct.Memory* @routine_jne_.L_44995a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449948, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449948, %struct.Memory** %MEMORY

  %loadBr_449948 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449948 = icmp eq i8 %loadBr_449948, 1
  br i1 %cmpBr_449948, label %block_.L_44995a, label %block_44994e

block_44994e:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 44994e	 Bytes: 7
  %loadMem_44994e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44994e = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44994e)
  store %struct.Memory* %call_44994e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449955	 Bytes: 5
  %loadMem_449955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449955 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449955, i64 868, i64 5)
  store %struct.Memory* %call_449955, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_44995a:	 RIP: 44995a	 Bytes: 0
block_.L_44995a:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 44995a	 Bytes: 4
  %loadMem_44995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44995a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44995a)
  store %struct.Memory* %call_44995a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44995e	 Bytes: 4
  %loadMem_44995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44995e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44995e)
  store %struct.Memory* %call_44995e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 449962	 Bytes: 4
  %loadMem_449962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449962 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449962)
  store %struct.Memory* %call_449962, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 449966	 Bytes: 4
  %loadMem_449966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449966 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449966)
  store %struct.Memory* %call_449966, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rcx, %rcx	 RIP: 44996a	 Bytes: 4
  %loadMem_44996a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44996a = call %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44996a)
  store %struct.Memory* %call_44996a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44996e	 Bytes: 3
  %loadMem_44996e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44996e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44996e)
  store %struct.Memory* %call_44996e, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 449971	 Bytes: 4
  %loadMem_449971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449971 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449971)
  store %struct.Memory* %call_449971, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 449975	 Bytes: 3
  %loadMem_449975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449975 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449975)
  store %struct.Memory* %call_449975, %struct.Memory** %MEMORY

  ; Code: callq .write_offset	 RIP: 449978	 Bytes: 5
  %loadMem1_449978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449978 = call %struct.Memory* @routine_callq_.write_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449978, i64 1752, i64 5, i64 5)
  store %struct.Memory* %call1_449978, %struct.Memory** %MEMORY

  %loadMem2_449978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449978 = load i64, i64* %3
  %call2_449978 = call %struct.Memory* @sub_44a050.write_offset(%struct.State* %0, i64  %loadPC_449978, %struct.Memory* %loadMem2_449978)
  store %struct.Memory* %call2_449978, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44997d	 Bytes: 3
  %loadMem_44997d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44997d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44997d)
  store %struct.Memory* %call_44997d, %struct.Memory** %MEMORY

  ; Code: jne .L_449992	 RIP: 449980	 Bytes: 6
  %loadMem_449980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449980 = call %struct.Memory* @routine_jne_.L_449992(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449980, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449980, %struct.Memory** %MEMORY

  %loadBr_449980 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449980 = icmp eq i8 %loadBr_449980, 1
  br i1 %cmpBr_449980, label %block_.L_449992, label %block_449986

block_449986:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449986	 Bytes: 7
  %loadMem_449986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449986 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449986)
  store %struct.Memory* %call_449986, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 44998d	 Bytes: 5
  %loadMem_44998d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44998d = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44998d, i64 812, i64 5)
  store %struct.Memory* %call_44998d, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449992:	 RIP: 449992	 Bytes: 0
block_.L_449992:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449992	 Bytes: 4
  %loadMem_449992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449992 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449992)
  store %struct.Memory* %call_449992, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449996	 Bytes: 4
  %loadMem_449996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449996 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449996)
  store %struct.Memory* %call_449996, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44999a	 Bytes: 4
  %loadMem_44999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44999a = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44999a)
  store %struct.Memory* %call_44999a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 44999e	 Bytes: 4
  %loadMem_44999e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44999e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44999e)
  store %struct.Memory* %call_44999e, %struct.Memory** %MEMORY

  ; Code: imulq $0x38, %rcx, %rcx	 RIP: 4499a2	 Bytes: 4
  %loadMem_4499a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499a2 = call %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499a2)
  store %struct.Memory* %call_4499a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4499a6	 Bytes: 3
  %loadMem_4499a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499a6)
  store %struct.Memory* %call_4499a6, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 4499a9	 Bytes: 3
  %loadMem_4499a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499a9 = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499a9)
  store %struct.Memory* %call_4499a9, %struct.Memory** %MEMORY

  ; Code: callq .write_i32	 RIP: 4499ac	 Bytes: 5
  %loadMem1_4499ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4499ac = call %struct.Memory* @routine_callq_.write_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4499ac, i64 932, i64 5, i64 5)
  store %struct.Memory* %call1_4499ac, %struct.Memory** %MEMORY

  %loadMem2_4499ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4499ac = load i64, i64* %3
  %call2_4499ac = call %struct.Memory* @sub_449d50.write_i32(%struct.State* %0, i64  %loadPC_4499ac, %struct.Memory* %loadMem2_4499ac)
  store %struct.Memory* %call2_4499ac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4499b1	 Bytes: 3
  %loadMem_4499b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499b1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499b1)
  store %struct.Memory* %call_4499b1, %struct.Memory** %MEMORY

  ; Code: jne .L_4499c6	 RIP: 4499b4	 Bytes: 6
  %loadMem_4499b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499b4 = call %struct.Memory* @routine_jne_.L_4499c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499b4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4499b4, %struct.Memory** %MEMORY

  %loadBr_4499b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4499b4 = icmp eq i8 %loadBr_4499b4, 1
  br i1 %cmpBr_4499b4, label %block_.L_4499c6, label %block_4499ba

block_4499ba:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 4499ba	 Bytes: 7
  %loadMem_4499ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499ba = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499ba)
  store %struct.Memory* %call_4499ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 4499c1	 Bytes: 5
  %loadMem_4499c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499c1 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499c1, i64 760, i64 5)
  store %struct.Memory* %call_4499c1, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_4499c6:	 RIP: 4499c6	 Bytes: 0
block_.L_4499c6:

  ; Code: jmpq .L_4499cb	 RIP: 4499c6	 Bytes: 5
  %loadMem_4499c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499c6 = call %struct.Memory* @routine_jmpq_.L_4499cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499c6, i64 5, i64 5)
  store %struct.Memory* %call_4499c6, %struct.Memory** %MEMORY

  br label %block_.L_4499cb

  ; Code: .L_4499cb:	 RIP: 4499cb	 Bytes: 0
block_.L_4499cb:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4499cb	 Bytes: 3
  %loadMem_4499cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499cb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499cb)
  store %struct.Memory* %call_4499cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4499ce	 Bytes: 3
  %loadMem_4499ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499ce = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499ce)
  store %struct.Memory* %call_4499ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4499d1	 Bytes: 3
  %loadMem_4499d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499d1 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499d1)
  store %struct.Memory* %call_4499d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449867	 RIP: 4499d4	 Bytes: 5
  %loadMem_4499d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499d4 = call %struct.Memory* @routine_jmpq_.L_449867(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499d4, i64 -365, i64 5)
  store %struct.Memory* %call_4499d4, %struct.Memory** %MEMORY

  br label %block_.L_449867

  ; Code: .L_4499d9:	 RIP: 4499d9	 Bytes: 0
block_.L_4499d9:

  ; Code: jmpq .L_4499de	 RIP: 4499d9	 Bytes: 5
  %loadMem_4499d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499d9 = call %struct.Memory* @routine_jmpq_.L_4499de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499d9, i64 5, i64 5)
  store %struct.Memory* %call_4499d9, %struct.Memory** %MEMORY

  br label %block_.L_4499de

  ; Code: .L_4499de:	 RIP: 4499de	 Bytes: 0
block_.L_4499de:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4499de	 Bytes: 4
  %loadMem_4499de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499de = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499de)
  store %struct.Memory* %call_4499de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 4499e2	 Bytes: 4
  %loadMem_4499e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499e2 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499e2)
  store %struct.Memory* %call_4499e2, %struct.Memory** %MEMORY

  ; Code: jbe .L_449c9b	 RIP: 4499e6	 Bytes: 6
  %loadMem_4499e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499e6 = call %struct.Memory* @routine_jbe_.L_449c9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499e6, i8* %BRANCH_TAKEN, i64 693, i64 6, i64 6)
  store %struct.Memory* %call_4499e6, %struct.Memory** %MEMORY

  %loadBr_4499e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4499e6 = icmp eq i8 %loadBr_4499e6, 1
  br i1 %cmpBr_4499e6, label %block_.L_449c9b, label %block_4499ec

block_4499ec:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 4499ec	 Bytes: 4
  %loadMem_4499ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499ec = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499ec)
  store %struct.Memory* %call_4499ec, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %ecx	 RIP: 4499f0	 Bytes: 3
  %loadMem_4499f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499f0 = call %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499f0)
  store %struct.Memory* %call_4499f0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4499f3	 Bytes: 2
  %loadMem_4499f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499f3 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499f3)
  store %struct.Memory* %call_4499f3, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 4499f5	 Bytes: 4
  %loadMem_4499f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499f5 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499f5)
  store %struct.Memory* %call_4499f5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4499f9	 Bytes: 3
  %loadMem_4499f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499f9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499f9)
  store %struct.Memory* %call_4499f9, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 4499fc	 Bytes: 5
  %loadMem1_4499fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4499fc = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4499fc, i64 -295980, i64 5, i64 5)
  store %struct.Memory* %call1_4499fc, %struct.Memory** %MEMORY

  %loadMem2_4499fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4499fc = load i64, i64* %3
  %call2_4499fc = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_4499fc, %struct.Memory* %loadMem2_4499fc)
  store %struct.Memory* %call2_4499fc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 449a01	 Bytes: 4
  %loadMem_449a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a01 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a01)
  store %struct.Memory* %call_449a01, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 449a05	 Bytes: 4
  %loadMem_449a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a05 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a05)
  store %struct.Memory* %call_449a05, %struct.Memory** %MEMORY

  ; Code: jne .L_449a1b	 RIP: 449a09	 Bytes: 6
  %loadMem_449a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a09 = call %struct.Memory* @routine_jne_.L_449a1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a09, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449a09, %struct.Memory** %MEMORY

  %loadBr_449a09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a09 = icmp eq i8 %loadBr_449a09, 1
  br i1 %cmpBr_449a09, label %block_.L_449a1b, label %block_449a0f

block_449a0f:
  ; Code: movl $0x3, -0x4(%rbp)	 RIP: 449a0f	 Bytes: 7
  %loadMem_449a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a0f = call %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a0f)
  store %struct.Memory* %call_449a0f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449a16	 Bytes: 5
  %loadMem_449a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a16 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a16, i64 675, i64 5)
  store %struct.Memory* %call_449a16, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449a1b:	 RIP: 449a1b	 Bytes: 0
block_.L_449a1b:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449a1b	 Bytes: 4
  %loadMem_449a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a1b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a1b)
  store %struct.Memory* %call_449a1b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 449a1f	 Bytes: 4
  %loadMem_449a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a1f = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a1f)
  store %struct.Memory* %call_449a1f, %struct.Memory** %MEMORY

  ; Code: je .L_449b89	 RIP: 449a23	 Bytes: 6
  %loadMem_449a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a23 = call %struct.Memory* @routine_je_.L_449b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a23, i8* %BRANCH_TAKEN, i64 358, i64 6, i64 6)
  store %struct.Memory* %call_449a23, %struct.Memory** %MEMORY

  %loadBr_449a23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a23 = icmp eq i8 %loadBr_449a23, 1
  br i1 %cmpBr_449a23, label %block_.L_449b89, label %block_449a29

block_449a29:
  ; Code: movq $0x0, -0x4d0(%rbp)	 RIP: 449a29	 Bytes: 11
  %loadMem_449a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a29 = call %struct.Memory* @routine_movq__0x0__MINUS0x4d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a29)
  store %struct.Memory* %call_449a29, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4d4(%rbp)	 RIP: 449a34	 Bytes: 10
  %loadMem_449a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a34 = call %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a34)
  store %struct.Memory* %call_449a34, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 449a3e	 Bytes: 7
  %loadMem_449a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a3e = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a3e)
  store %struct.Memory* %call_449a3e, %struct.Memory** %MEMORY

  ; Code: .L_449a45:	 RIP: 449a45	 Bytes: 0
  br label %block_.L_449a45
block_.L_449a45:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449a45	 Bytes: 3
  %loadMem_449a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a45 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a45)
  store %struct.Memory* %call_449a45, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449a48	 Bytes: 4
  %loadMem_449a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a48 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a48)
  store %struct.Memory* %call_449a48, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rcx), %eax	 RIP: 449a4c	 Bytes: 3
  %loadMem_449a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a4c = call %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a4c)
  store %struct.Memory* %call_449a4c, %struct.Memory** %MEMORY

  ; Code: jae .L_449b78	 RIP: 449a4f	 Bytes: 6
  %loadMem_449a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a4f = call %struct.Memory* @routine_jae_.L_449b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a4f, i8* %BRANCH_TAKEN, i64 297, i64 6, i64 6)
  store %struct.Memory* %call_449a4f, %struct.Memory** %MEMORY

  %loadBr_449a4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a4f = icmp eq i8 %loadBr_449a4f, 1
  br i1 %cmpBr_449a4f, label %block_.L_449b78, label %block_449a55

block_449a55:
  ; Code: leaq -0x4d0(%rbp), %rdi	 RIP: 449a55	 Bytes: 7
  %loadMem_449a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a55 = call %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a55)
  store %struct.Memory* %call_449a55, %struct.Memory** %MEMORY

  ; Code: leaq -0x4d4(%rbp), %rsi	 RIP: 449a5c	 Bytes: 7
  %loadMem_449a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a5c = call %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a5c)
  store %struct.Memory* %call_449a5c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 449a63	 Bytes: 4
  %loadMem_449a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a63 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a63)
  store %struct.Memory* %call_449a63, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rdx	 RIP: 449a67	 Bytes: 4
  %loadMem_449a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a67 = call %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a67)
  store %struct.Memory* %call_449a67, %struct.Memory** %MEMORY

  ; Code: callq .sre_fgets	 RIP: 449a6b	 Bytes: 5
  %loadMem1_449a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449a6b = call %struct.Memory* @routine_callq_.sre_fgets(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449a6b, i64 -14155, i64 5, i64 5)
  store %struct.Memory* %call1_449a6b, %struct.Memory** %MEMORY

  %loadMem2_449a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449a6b = load i64, i64* %3
  %call2_449a6b = call %struct.Memory* @sub_446320.sre_fgets(%struct.State* %0, i64  %loadPC_449a6b, %struct.Memory* %loadMem2_449a6b)
  store %struct.Memory* %call2_449a6b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 449a70	 Bytes: 4
  %loadMem_449a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a70 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a70)
  store %struct.Memory* %call_449a70, %struct.Memory** %MEMORY

  ; Code: jne .L_449a86	 RIP: 449a74	 Bytes: 6
  %loadMem_449a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a74 = call %struct.Memory* @routine_jne_.L_449a86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a74, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449a74, %struct.Memory** %MEMORY

  %loadBr_449a74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a74 = icmp eq i8 %loadBr_449a74, 1
  br i1 %cmpBr_449a74, label %block_.L_449a86, label %block_449a7a

block_449a7a:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 449a7a	 Bytes: 7
  %loadMem_449a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a7a = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a7a)
  store %struct.Memory* %call_449a7a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449a81	 Bytes: 5
  %loadMem_449a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a81 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a81, i64 568, i64 5)
  store %struct.Memory* %call_449a81, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449a86:	 RIP: 449a86	 Bytes: 0
block_.L_449a86:

  ; Code: leaq -0x4c8(%rbp), %rsi	 RIP: 449a86	 Bytes: 7
  %loadMem_449a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a86 = call %struct.Memory* @routine_leaq_MINUS0x4c8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a86)
  store %struct.Memory* %call_449a86, %struct.Memory** %MEMORY

  ; Code: movq -0x4d0(%rbp), %rdi	 RIP: 449a8d	 Bytes: 7
  %loadMem_449a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a8d = call %struct.Memory* @routine_movq_MINUS0x4d0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a8d)
  store %struct.Memory* %call_449a8d, %struct.Memory** %MEMORY

  ; Code: callq .parse_skey_info	 RIP: 449a94	 Bytes: 5
  %loadMem1_449a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449a94 = call %struct.Memory* @routine_callq_.parse_skey_info(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449a94, i64 1580, i64 5, i64 5)
  store %struct.Memory* %call1_449a94, %struct.Memory** %MEMORY

  %loadMem2_449a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449a94 = load i64, i64* %3
  %call2_449a94 = call %struct.Memory* @sub_44a0c0.parse_skey_info(%struct.State* %0, i64  %loadPC_449a94, %struct.Memory* %loadMem2_449a94)
  store %struct.Memory* %call2_449a94, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449a99	 Bytes: 3
  %loadMem_449a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a99 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a99)
  store %struct.Memory* %call_449a99, %struct.Memory** %MEMORY

  ; Code: je .L_449aae	 RIP: 449a9c	 Bytes: 6
  %loadMem_449a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a9c = call %struct.Memory* @routine_je_.L_449aae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a9c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449a9c, %struct.Memory** %MEMORY

  %loadBr_449a9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a9c = icmp eq i8 %loadBr_449a9c, 1
  br i1 %cmpBr_449a9c, label %block_.L_449aae, label %block_449aa2

block_449aa2:
  ; Code: movl $0x6, -0x4(%rbp)	 RIP: 449aa2	 Bytes: 7
  %loadMem_449aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aa2 = call %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aa2)
  store %struct.Memory* %call_449aa2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449aa9	 Bytes: 5
  %loadMem_449aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aa9 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aa9, i64 528, i64 5)
  store %struct.Memory* %call_449aa9, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449aae:	 RIP: 449aae	 Bytes: 0
block_.L_449aae:

  ; Code: movl $0x1, %eax	 RIP: 449aae	 Bytes: 5
  %loadMem_449aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aae = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aae)
  store %struct.Memory* %call_449aae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 449ab3	 Bytes: 2
  %loadMem_449ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ab3 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ab3)
  store %struct.Memory* %call_449ab3, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 449ab5	 Bytes: 4
  %loadMem_449ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ab5 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ab5)
  store %struct.Memory* %call_449ab5, %struct.Memory** %MEMORY

  ; Code: movq -0x4c8(%rbp), %rcx	 RIP: 449ab9	 Bytes: 7
  %loadMem_449ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ab9 = call %struct.Memory* @routine_movq_MINUS0x4c8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ab9)
  store %struct.Memory* %call_449ab9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x528(%rbp)	 RIP: 449ac0	 Bytes: 7
  %loadMem_449ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ac0 = call %struct.Memory* @routine_movq__rsi__MINUS0x528__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ac0)
  store %struct.Memory* %call_449ac0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 449ac7	 Bytes: 3
  %loadMem_449ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ac7 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ac7)
  store %struct.Memory* %call_449ac7, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 449aca	 Bytes: 5
  %loadMem1_449aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449aca = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449aca, i64 -296682, i64 5, i64 5)
  store %struct.Memory* %call1_449aca, %struct.Memory** %MEMORY

  %loadMem2_449aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449aca = load i64, i64* %3
  %call2_449aca = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_449aca, %struct.Memory* %loadMem2_449aca)
  store %struct.Memory* %call2_449aca, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449acf	 Bytes: 4
  %loadMem_449acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449acf = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449acf)
  store %struct.Memory* %call_449acf, %struct.Memory** %MEMORY

  ; Code: movq -0x4c0(%rbp), %rsi	 RIP: 449ad3	 Bytes: 7
  %loadMem_449ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ad3 = call %struct.Memory* @routine_movq_MINUS0x4c0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ad3)
  store %struct.Memory* %call_449ad3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x530(%rbp)	 RIP: 449ada	 Bytes: 7
  %loadMem_449ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ada = call %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ada)
  store %struct.Memory* %call_449ada, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 449ae1	 Bytes: 5
  %loadMem1_449ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449ae1 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449ae1, i64 -296705, i64 5, i64 5)
  store %struct.Memory* %call1_449ae1, %struct.Memory** %MEMORY

  %loadMem2_449ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449ae1 = load i64, i64* %3
  %call2_449ae1 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_449ae1, %struct.Memory* %loadMem2_449ae1)
  store %struct.Memory* %call2_449ae1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 449ae6	 Bytes: 4
  %loadMem_449ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ae6 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ae6)
  store %struct.Memory* %call_449ae6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449aea	 Bytes: 4
  %loadMem_449aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aea)
  store %struct.Memory* %call_449aea, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rcx), %edx	 RIP: 449aee	 Bytes: 3
  %loadMem_449aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aee = call %struct.Memory* @routine_movl_0x60__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aee)
  store %struct.Memory* %call_449aee, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449af1	 Bytes: 4
  %loadMem_449af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449af1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449af1)
  store %struct.Memory* %call_449af1, %struct.Memory** %MEMORY

  ; Code: movq -0x528(%rbp), %rsi	 RIP: 449af5	 Bytes: 7
  %loadMem_449af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449af5 = call %struct.Memory* @routine_movq_MINUS0x528__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449af5)
  store %struct.Memory* %call_449af5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x538(%rbp)	 RIP: 449afc	 Bytes: 7
  %loadMem_449afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449afc = call %struct.Memory* @routine_movq__rax__MINUS0x538__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449afc)
  store %struct.Memory* %call_449afc, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449b03	 Bytes: 5
  %loadMem1_449b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449b03 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449b03, i64 -295971, i64 5, i64 5)
  store %struct.Memory* %call1_449b03, %struct.Memory** %MEMORY

  %loadMem2_449b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449b03 = load i64, i64* %3
  %call2_449b03 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449b03, %struct.Memory* %loadMem2_449b03)
  store %struct.Memory* %call2_449b03, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449b08	 Bytes: 4
  %loadMem_449b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b08 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b08)
  store %struct.Memory* %call_449b08, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rcx), %r8d	 RIP: 449b0c	 Bytes: 4
  %loadMem_449b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b0c = call %struct.Memory* @routine_movl_0x60__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b0c)
  store %struct.Memory* %call_449b0c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449b10	 Bytes: 3
  %loadMem_449b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b10 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b10)
  store %struct.Memory* %call_449b10, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449b13	 Bytes: 3
  %loadMem_449b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b13 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b13)
  store %struct.Memory* %call_449b13, %struct.Memory** %MEMORY

  ; Code: je .L_449b28	 RIP: 449b16	 Bytes: 6
  %loadMem_449b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b16 = call %struct.Memory* @routine_je_.L_449b28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b16, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449b16, %struct.Memory** %MEMORY

  %loadBr_449b16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449b16 = icmp eq i8 %loadBr_449b16, 1
  br i1 %cmpBr_449b16, label %block_.L_449b28, label %block_449b1c

block_449b1c:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449b1c	 Bytes: 7
  %loadMem_449b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b1c = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b1c)
  store %struct.Memory* %call_449b1c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449b23	 Bytes: 5
  %loadMem_449b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b23 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b23, i64 406, i64 5)
  store %struct.Memory* %call_449b23, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449b28:	 RIP: 449b28	 Bytes: 0
block_.L_449b28:

  ; Code: movl $0x1, %eax	 RIP: 449b28	 Bytes: 5
  %loadMem_449b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b28 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b28)
  store %struct.Memory* %call_449b28, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 449b2d	 Bytes: 2
  %loadMem_449b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b2d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b2d)
  store %struct.Memory* %call_449b2d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449b2f	 Bytes: 4
  %loadMem_449b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b2f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b2f)
  store %struct.Memory* %call_449b2f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449b33	 Bytes: 4
  %loadMem_449b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b33 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b33)
  store %struct.Memory* %call_449b33, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %eax	 RIP: 449b37	 Bytes: 3
  %loadMem_449b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b37 = call %struct.Memory* @routine_movl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b37)
  store %struct.Memory* %call_449b37, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 449b3a	 Bytes: 2
  %loadMem_449b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b3a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b3a)
  store %struct.Memory* %call_449b3a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449b3c	 Bytes: 4
  %loadMem_449b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b3c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b3c)
  store %struct.Memory* %call_449b3c, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449b40	 Bytes: 5
  %loadMem1_449b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449b40 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449b40, i64 -296032, i64 5, i64 5)
  store %struct.Memory* %call1_449b40, %struct.Memory** %MEMORY

  %loadMem2_449b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449b40 = load i64, i64* %3
  %call2_449b40 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449b40, %struct.Memory* %loadMem2_449b40)
  store %struct.Memory* %call2_449b40, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449b45	 Bytes: 4
  %loadMem_449b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b45 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b45)
  store %struct.Memory* %call_449b45, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %r8d	 RIP: 449b49	 Bytes: 4
  %loadMem_449b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b49 = call %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b49)
  store %struct.Memory* %call_449b49, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449b4d	 Bytes: 3
  %loadMem_449b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b4d = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b4d)
  store %struct.Memory* %call_449b4d, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449b50	 Bytes: 3
  %loadMem_449b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b50 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b50)
  store %struct.Memory* %call_449b50, %struct.Memory** %MEMORY

  ; Code: je .L_449b65	 RIP: 449b53	 Bytes: 6
  %loadMem_449b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b53 = call %struct.Memory* @routine_je_.L_449b65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b53, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449b53, %struct.Memory** %MEMORY

  %loadBr_449b53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449b53 = icmp eq i8 %loadBr_449b53, 1
  br i1 %cmpBr_449b53, label %block_.L_449b65, label %block_449b59

block_449b59:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449b59	 Bytes: 7
  %loadMem_449b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b59 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b59)
  store %struct.Memory* %call_449b59, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449b60	 Bytes: 5
  %loadMem_449b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b60 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b60, i64 345, i64 5)
  store %struct.Memory* %call_449b60, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449b65:	 RIP: 449b65	 Bytes: 0
block_.L_449b65:

  ; Code: jmpq .L_449b6a	 RIP: 449b65	 Bytes: 5
  %loadMem_449b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b65 = call %struct.Memory* @routine_jmpq_.L_449b6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b65, i64 5, i64 5)
  store %struct.Memory* %call_449b65, %struct.Memory** %MEMORY

  br label %block_.L_449b6a

  ; Code: .L_449b6a:	 RIP: 449b6a	 Bytes: 0
block_.L_449b6a:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449b6a	 Bytes: 3
  %loadMem_449b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b6a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b6a)
  store %struct.Memory* %call_449b6a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449b6d	 Bytes: 3
  %loadMem_449b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b6d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b6d)
  store %struct.Memory* %call_449b6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 449b70	 Bytes: 3
  %loadMem_449b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b70 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b70)
  store %struct.Memory* %call_449b70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449a45	 RIP: 449b73	 Bytes: 5
  %loadMem_449b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b73 = call %struct.Memory* @routine_jmpq_.L_449a45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b73, i64 -302, i64 5)
  store %struct.Memory* %call_449b73, %struct.Memory** %MEMORY

  br label %block_.L_449a45

  ; Code: .L_449b78:	 RIP: 449b78	 Bytes: 0
block_.L_449b78:

  ; Code: movq -0x4d0(%rbp), %rdi	 RIP: 449b78	 Bytes: 7
  %loadMem_449b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b78 = call %struct.Memory* @routine_movq_MINUS0x4d0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b78)
  store %struct.Memory* %call_449b78, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 449b7f	 Bytes: 5
  %loadMem1_449b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449b7f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449b7f, i64 -296959, i64 5, i64 5)
  store %struct.Memory* %call1_449b7f, %struct.Memory** %MEMORY

  %loadMem2_449b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449b7f = load i64, i64* %3
  %call2_449b7f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_449b7f, %struct.Memory* %loadMem2_449b7f)
  store %struct.Memory* %call2_449b7f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449c92	 RIP: 449b84	 Bytes: 5
  %loadMem_449b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b84 = call %struct.Memory* @routine_jmpq_.L_449c92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b84, i64 270, i64 5)
  store %struct.Memory* %call_449b84, %struct.Memory** %MEMORY

  br label %block_.L_449c92

  ; Code: .L_449b89:	 RIP: 449b89	 Bytes: 0
block_.L_449b89:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 449b89	 Bytes: 7
  %loadMem_449b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b89 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b89)
  store %struct.Memory* %call_449b89, %struct.Memory** %MEMORY

  ; Code: .L_449b90:	 RIP: 449b90	 Bytes: 0
  br label %block_.L_449b90
block_.L_449b90:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449b90	 Bytes: 3
  %loadMem_449b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b90 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b90)
  store %struct.Memory* %call_449b90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449b93	 Bytes: 4
  %loadMem_449b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b93 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b93)
  store %struct.Memory* %call_449b93, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rcx), %eax	 RIP: 449b97	 Bytes: 3
  %loadMem_449b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b97 = call %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b97)
  store %struct.Memory* %call_449b97, %struct.Memory** %MEMORY

  ; Code: jae .L_449c8d	 RIP: 449b9a	 Bytes: 6
  %loadMem_449b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b9a = call %struct.Memory* @routine_jae_.L_449c8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b9a, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_449b9a, %struct.Memory** %MEMORY

  %loadBr_449b9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449b9a = icmp eq i8 %loadBr_449b9a, 1
  br i1 %cmpBr_449b9a, label %block_.L_449c8d, label %block_449ba0

block_449ba0:
  ; Code: movl $0x1, %eax	 RIP: 449ba0	 Bytes: 5
  %loadMem_449ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ba0 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ba0)
  store %struct.Memory* %call_449ba0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 449ba5	 Bytes: 2
  %loadMem_449ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ba5 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ba5)
  store %struct.Memory* %call_449ba5, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 449ba7	 Bytes: 4
  %loadMem_449ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ba7 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ba7)
  store %struct.Memory* %call_449ba7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449bab	 Bytes: 4
  %loadMem_449bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bab)
  store %struct.Memory* %call_449bab, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rcx), %rcx	 RIP: 449baf	 Bytes: 4
  %loadMem_449baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449baf = call %struct.Memory* @routine_movq_0x58__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449baf)
  store %struct.Memory* %call_449baf, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 449bb3	 Bytes: 4
  %loadMem_449bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bb3 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bb3)
  store %struct.Memory* %call_449bb3, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449bb7	 Bytes: 4
  %loadMem_449bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bb7 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bb7)
  store %struct.Memory* %call_449bb7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449bbb	 Bytes: 3
  %loadMem_449bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bbb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bbb)
  store %struct.Memory* %call_449bbb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 449bbe	 Bytes: 3
  %loadMem_449bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bbe = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bbe)
  store %struct.Memory* %call_449bbe, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x540(%rbp)	 RIP: 449bc1	 Bytes: 7
  %loadMem_449bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bc1 = call %struct.Memory* @routine_movq__rsi__MINUS0x540__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bc1)
  store %struct.Memory* %call_449bc1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 449bc8	 Bytes: 3
  %loadMem_449bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bc8 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bc8)
  store %struct.Memory* %call_449bc8, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 449bcb	 Bytes: 5
  %loadMem1_449bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449bcb = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449bcb, i64 -296939, i64 5, i64 5)
  store %struct.Memory* %call1_449bcb, %struct.Memory** %MEMORY

  %loadMem2_449bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449bcb = load i64, i64* %3
  %call2_449bcb = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_449bcb, %struct.Memory* %loadMem2_449bcb)
  store %struct.Memory* %call2_449bcb, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449bd0	 Bytes: 4
  %loadMem_449bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd0 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd0)
  store %struct.Memory* %call_449bd0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449bd4	 Bytes: 4
  %loadMem_449bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd4)
  store %struct.Memory* %call_449bd4, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rcx), %rcx	 RIP: 449bd8	 Bytes: 4
  %loadMem_449bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd8 = call %struct.Memory* @routine_movq_0x58__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd8)
  store %struct.Memory* %call_449bd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 449bdc	 Bytes: 4
  %loadMem_449bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bdc = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bdc)
  store %struct.Memory* %call_449bdc, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449be0	 Bytes: 4
  %loadMem_449be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449be0 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449be0)
  store %struct.Memory* %call_449be0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449be4	 Bytes: 3
  %loadMem_449be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449be4 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449be4)
  store %struct.Memory* %call_449be4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rsi	 RIP: 449be7	 Bytes: 4
  %loadMem_449be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449be7 = call %struct.Memory* @routine_movq_0x8__rcx____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449be7)
  store %struct.Memory* %call_449be7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x548(%rbp)	 RIP: 449beb	 Bytes: 7
  %loadMem_449beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449beb = call %struct.Memory* @routine_movq__rax__MINUS0x548__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449beb)
  store %struct.Memory* %call_449beb, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 449bf2	 Bytes: 5
  %loadMem1_449bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449bf2 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449bf2, i64 -296978, i64 5, i64 5)
  store %struct.Memory* %call1_449bf2, %struct.Memory** %MEMORY

  %loadMem2_449bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449bf2 = load i64, i64* %3
  %call2_449bf2 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_449bf2, %struct.Memory* %loadMem2_449bf2)
  store %struct.Memory* %call2_449bf2, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 449bf7	 Bytes: 4
  %loadMem_449bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bf7 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bf7)
  store %struct.Memory* %call_449bf7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449bfb	 Bytes: 4
  %loadMem_449bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bfb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bfb)
  store %struct.Memory* %call_449bfb, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rcx), %r8d	 RIP: 449bff	 Bytes: 4
  %loadMem_449bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bff = call %struct.Memory* @routine_movl_0x60__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bff)
  store %struct.Memory* %call_449bff, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 449c03	 Bytes: 3
  %loadMem_449c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c03 = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c03)
  store %struct.Memory* %call_449c03, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449c06	 Bytes: 4
  %loadMem_449c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c06 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c06)
  store %struct.Memory* %call_449c06, %struct.Memory** %MEMORY

  ; Code: movq -0x540(%rbp), %rsi	 RIP: 449c0a	 Bytes: 7
  %loadMem_449c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c0a = call %struct.Memory* @routine_movq_MINUS0x540__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c0a)
  store %struct.Memory* %call_449c0a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x550(%rbp)	 RIP: 449c11	 Bytes: 7
  %loadMem_449c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c11 = call %struct.Memory* @routine_movq__rax__MINUS0x550__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c11)
  store %struct.Memory* %call_449c11, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449c18	 Bytes: 5
  %loadMem1_449c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449c18 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449c18, i64 -296248, i64 5, i64 5)
  store %struct.Memory* %call1_449c18, %struct.Memory** %MEMORY

  %loadMem2_449c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449c18 = load i64, i64* %3
  %call2_449c18 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449c18, %struct.Memory* %loadMem2_449c18)
  store %struct.Memory* %call2_449c18, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449c1d	 Bytes: 4
  %loadMem_449c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c1d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c1d)
  store %struct.Memory* %call_449c1d, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rcx), %r8d	 RIP: 449c21	 Bytes: 4
  %loadMem_449c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c21 = call %struct.Memory* @routine_movl_0x60__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c21)
  store %struct.Memory* %call_449c21, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449c25	 Bytes: 3
  %loadMem_449c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c25 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c25)
  store %struct.Memory* %call_449c25, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449c28	 Bytes: 3
  %loadMem_449c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c28 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c28)
  store %struct.Memory* %call_449c28, %struct.Memory** %MEMORY

  ; Code: je .L_449c3d	 RIP: 449c2b	 Bytes: 6
  %loadMem_449c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c2b = call %struct.Memory* @routine_je_.L_449c3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c2b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449c2b, %struct.Memory** %MEMORY

  %loadBr_449c2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449c2b = icmp eq i8 %loadBr_449c2b, 1
  br i1 %cmpBr_449c2b, label %block_.L_449c3d, label %block_449c31

block_449c31:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449c31	 Bytes: 7
  %loadMem_449c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c31 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c31)
  store %struct.Memory* %call_449c31, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449c38	 Bytes: 5
  %loadMem_449c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c38 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c38, i64 129, i64 5)
  store %struct.Memory* %call_449c38, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449c3d:	 RIP: 449c3d	 Bytes: 0
block_.L_449c3d:

  ; Code: movl $0x1, %eax	 RIP: 449c3d	 Bytes: 5
  %loadMem_449c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c3d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c3d)
  store %struct.Memory* %call_449c3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 449c42	 Bytes: 2
  %loadMem_449c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c42 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c42)
  store %struct.Memory* %call_449c42, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449c44	 Bytes: 4
  %loadMem_449c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c44 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c44)
  store %struct.Memory* %call_449c44, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449c48	 Bytes: 4
  %loadMem_449c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c48 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c48)
  store %struct.Memory* %call_449c48, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %eax	 RIP: 449c4c	 Bytes: 3
  %loadMem_449c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c4c = call %struct.Memory* @routine_movl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c4c)
  store %struct.Memory* %call_449c4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 449c4f	 Bytes: 2
  %loadMem_449c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c4f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c4f)
  store %struct.Memory* %call_449c4f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 449c51	 Bytes: 4
  %loadMem_449c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c51 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c51)
  store %struct.Memory* %call_449c51, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 449c55	 Bytes: 5
  %loadMem1_449c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449c55 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449c55, i64 -296309, i64 5, i64 5)
  store %struct.Memory* %call1_449c55, %struct.Memory** %MEMORY

  %loadMem2_449c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449c55 = load i64, i64* %3
  %call2_449c55 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_449c55, %struct.Memory* %loadMem2_449c55)
  store %struct.Memory* %call2_449c55, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 449c5a	 Bytes: 4
  %loadMem_449c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c5a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c5a)
  store %struct.Memory* %call_449c5a, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rcx), %r8d	 RIP: 449c5e	 Bytes: 4
  %loadMem_449c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c5e = call %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c5e)
  store %struct.Memory* %call_449c5e, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 449c62	 Bytes: 3
  %loadMem_449c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c62 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c62)
  store %struct.Memory* %call_449c62, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 449c65	 Bytes: 3
  %loadMem_449c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c65 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c65)
  store %struct.Memory* %call_449c65, %struct.Memory** %MEMORY

  ; Code: je .L_449c7a	 RIP: 449c68	 Bytes: 6
  %loadMem_449c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c68 = call %struct.Memory* @routine_je_.L_449c7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c68, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_449c68, %struct.Memory** %MEMORY

  %loadBr_449c68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449c68 = icmp eq i8 %loadBr_449c68, 1
  br i1 %cmpBr_449c68, label %block_.L_449c7a, label %block_449c6e

block_449c6e:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 449c6e	 Bytes: 7
  %loadMem_449c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c6e = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c6e)
  store %struct.Memory* %call_449c6e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cb9	 RIP: 449c75	 Bytes: 5
  %loadMem_449c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c75 = call %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c75, i64 68, i64 5)
  store %struct.Memory* %call_449c75, %struct.Memory** %MEMORY

  br label %block_.L_449cb9

  ; Code: .L_449c7a:	 RIP: 449c7a	 Bytes: 0
block_.L_449c7a:

  ; Code: jmpq .L_449c7f	 RIP: 449c7a	 Bytes: 5
  %loadMem_449c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c7a = call %struct.Memory* @routine_jmpq_.L_449c7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c7a, i64 5, i64 5)
  store %struct.Memory* %call_449c7a, %struct.Memory** %MEMORY

  br label %block_.L_449c7f

  ; Code: .L_449c7f:	 RIP: 449c7f	 Bytes: 0
block_.L_449c7f:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 449c7f	 Bytes: 3
  %loadMem_449c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c7f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c7f)
  store %struct.Memory* %call_449c7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449c82	 Bytes: 3
  %loadMem_449c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c82 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c82)
  store %struct.Memory* %call_449c82, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 449c85	 Bytes: 3
  %loadMem_449c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c85 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c85)
  store %struct.Memory* %call_449c85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449b90	 RIP: 449c88	 Bytes: 5
  %loadMem_449c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c88 = call %struct.Memory* @routine_jmpq_.L_449b90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c88, i64 -248, i64 5)
  store %struct.Memory* %call_449c88, %struct.Memory** %MEMORY

  br label %block_.L_449b90

  ; Code: .L_449c8d:	 RIP: 449c8d	 Bytes: 0
block_.L_449c8d:

  ; Code: jmpq .L_449c92	 RIP: 449c8d	 Bytes: 5
  %loadMem_449c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c8d = call %struct.Memory* @routine_jmpq_.L_449c92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c8d, i64 5, i64 5)
  store %struct.Memory* %call_449c8d, %struct.Memory** %MEMORY

  br label %block_.L_449c92

  ; Code: .L_449c92:	 RIP: 449c92	 Bytes: 0
block_.L_449c92:

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 449c92	 Bytes: 4
  %loadMem_449c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c92 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c92)
  store %struct.Memory* %call_449c92, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 449c96	 Bytes: 5
  %loadMem1_449c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449c96 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449c96, i64 -297238, i64 5, i64 5)
  store %struct.Memory* %call1_449c96, %struct.Memory** %MEMORY

  %loadMem2_449c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449c96 = load i64, i64* %3
  %call2_449c96 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_449c96, %struct.Memory* %loadMem2_449c96)
  store %struct.Memory* %call2_449c96, %struct.Memory** %MEMORY

  ; Code: .L_449c9b:	 RIP: 449c9b	 Bytes: 0
  br label %block_.L_449c9b
block_.L_449c9b:

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 449c9b	 Bytes: 4
  %loadMem_449c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c9b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c9b)
  store %struct.Memory* %call_449c9b, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 449c9f	 Bytes: 5
  %loadMem1_449c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449c9f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449c9f, i64 -297247, i64 5, i64 5)
  store %struct.Memory* %call1_449c9f, %struct.Memory** %MEMORY

  %loadMem2_449c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449c9f = load i64, i64* %3
  %call2_449c9f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_449c9f, %struct.Memory* %loadMem2_449c9f)
  store %struct.Memory* %call2_449c9f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 449ca4	 Bytes: 4
  %loadMem_449ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ca4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ca4)
  store %struct.Memory* %call_449ca4, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 449ca8	 Bytes: 5
  %loadMem1_449ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449ca8 = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449ca8, i64 -297064, i64 5, i64 5)
  store %struct.Memory* %call1_449ca8, %struct.Memory** %MEMORY

  %loadMem2_449ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449ca8 = load i64, i64* %3
  %call2_449ca8 = call %struct.Memory* @sub_401440.fclose_plt(%struct.State* %0, i64  %loadPC_449ca8, %struct.Memory* %loadMem2_449ca8)
  store %struct.Memory* %call2_449ca8, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 449cad	 Bytes: 3
  %loadMem_449cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cad = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cad)
  store %struct.Memory* %call_449cad, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 449cb0	 Bytes: 3
  %loadMem_449cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cb0 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cb0)
  store %struct.Memory* %call_449cb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x554(%rbp)	 RIP: 449cb3	 Bytes: 6
  %loadMem_449cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cb3 = call %struct.Memory* @routine_movl__eax__MINUS0x554__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cb3)
  store %struct.Memory* %call_449cb3, %struct.Memory** %MEMORY

  ; Code: .L_449cb9:	 RIP: 449cb9	 Bytes: 0
  br label %block_.L_449cb9
block_.L_449cb9:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 449cb9	 Bytes: 3
  %loadMem_449cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cb9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cb9)
  store %struct.Memory* %call_449cb9, %struct.Memory** %MEMORY

  ; Code: addq $0x560, %rsp	 RIP: 449cbc	 Bytes: 7
  %loadMem_449cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cbc = call %struct.Memory* @routine_addq__0x560___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cbc)
  store %struct.Memory* %call_449cbc, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 449cc3	 Bytes: 1
  %loadMem_449cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cc3 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cc3)
  store %struct.Memory* %call_449cc3, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 449cc4	 Bytes: 1
  %loadMem_449cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cc4 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cc4)
  store %struct.Memory* %call_449cc4, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_449cc4
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

define %struct.Memory* @routine_subq__0x560___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1376)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x457339___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457339_type* @G__0x457339 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_448f63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_449cb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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


define %struct.Memory* @routine_callq_.current_index_size(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x7ff___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 2047)
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

define %struct.Memory* @routine_jb_.L_448f9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45a9d8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45a9d8_type* @G__0x45a9d8 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_addl__0x10___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_448fca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x16___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 22)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_448fda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_addl__0xe___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 14)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0x60__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_addl_0x40__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_cmpl__0x1____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_449011(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_orl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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




define %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_449028(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_orl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x36___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 54)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x42___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 66)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_andl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl_0x34__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_imull__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
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

define %struct.Memory* @routine_imull_0x44__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl__0x0__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_4491db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.fclose_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x45aa4b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45aa4b_type* @G__0x45aa4b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x470__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x50__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x48__rcx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.system_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4490fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__0x50__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_449130(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__0x0__0x70__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x68__rcx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__eax__MINUS0x4e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1256
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_je_.L_4491a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x68__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__0x70__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4491d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_44923b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x38___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 56)
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


define %struct.Memory* @routine_movq__0x449cd0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x449cd0_type* @G__0x449cd0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x44__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_callq_.specqsort(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x10___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 16)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x449d10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x449d10_type* @G__0x449d10 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x58__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x64__r8____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x4ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x4f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_0x663038___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x663038_type* @G_0x663038 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.write_i32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_449260(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_449281(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movzwl_0x34__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.write_i16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4492a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x44__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4492cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x64__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4492f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_449316(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x40__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_44933b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x60__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_449360(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_449381(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4493a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4493c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_449448(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4493f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_44941d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_449443(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4494b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_callq_.write_i64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_44946a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_44948c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4494ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.malloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4494e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movzwl_0x34__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jge_.L_449663(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jbe_.L_449538(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rsi__MINUS0x4f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1272
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x30__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x4f8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x500__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1280
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.fwrite_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_je_.L_4495a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_jne_.L_4495d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4495f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_449623(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_449650(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_449655(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4494e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x40__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jne_.L_449698(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_449860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0__MINUS0x478__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x47c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jae_.L_44984f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x478__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x47c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x50__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sre_fgets(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_449703(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x478__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_callq_.parse_pkey_info(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_449738(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movq_MINUS0x4b8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x508__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1288
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movl_0x40__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x508__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x510__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1296
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x40__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_44979b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movzwl_MINUS0x4b0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_4497c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_addq__0x10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_callq_.write_offset(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4497ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_449818(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x488__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_44983c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_449841(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4496c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_4499de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jae_.L_4499d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_imulq__0x38___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 56)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x518__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1304
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movq_MINUS0x518__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x520__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_je_.L_4498ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 56)
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


define %struct.Memory* @routine_movzwl_0x8__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_449922(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_jne_.L_44995a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_jne_.L_449992(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_4499c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4499cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_449867(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jbe_.L_449c9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_449a1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_449b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0__MINUS0x4d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1232
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jae_.L_449b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_449a86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_leaq_MINUS0x4c8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x4d0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.parse_skey_info(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_449aae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x4c8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x528__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1320
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_MINUS0x4c0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0x60__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x528__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x538__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x60__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_449b28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x40__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_je_.L_449b65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_449b6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_449a45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_449c92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jae_.L_449c8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x58__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rsi__MINUS0x540__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1344
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movq_0x8__rcx____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x548__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1352
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movq_MINUS0x540__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x550__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1360
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_je_.L_449c3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_449c7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_449c7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_449b90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x554__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_addq__0x560___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1376)
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

