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

declare %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x661538_type = type <{ [8 x i8] }>
@G__0x661538= global %G__0x661538_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x676d90_type = type <{ [8 x i8] }>
@G__0x676d90= global %G__0x676d90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @WriteBinHMM(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .WriteBinHMM:	 RIP: 423400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 423400	 Bytes: 1
  %loadMem_423400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423400)
  store %struct.Memory* %call_423400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 423401	 Bytes: 3
  %loadMem_423401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423401)
  store %struct.Memory* %call_423401, %struct.Memory** %MEMORY

  ; Code: subq $0x190, %rsp	 RIP: 423404	 Bytes: 7
  %loadMem_423404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423404 = call %struct.Memory* @routine_subq__0x190___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423404)
  store %struct.Memory* %call_423404, %struct.Memory** %MEMORY

  ; Code: movq $0x661538, %rax	 RIP: 42340b	 Bytes: 10
  %loadMem_42340b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42340b = call %struct.Memory* @routine_movq__0x661538___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42340b)
  store %struct.Memory* %call_42340b, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 423415	 Bytes: 5
  %loadMem_423415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423415 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423415)
  store %struct.Memory* %call_423415, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 42341a	 Bytes: 2
  %loadMem_42341a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42341a = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42341a)
  store %struct.Memory* %call_42341a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 42341c	 Bytes: 5
  %loadMem_42341c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42341c = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42341c)
  store %struct.Memory* %call_42341c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 423421	 Bytes: 3
  %loadMem_423421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423421 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423421)
  store %struct.Memory* %call_423421, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 423424	 Bytes: 4
  %loadMem_423424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423424 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423424)
  store %struct.Memory* %call_423424, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 423428	 Bytes: 4
  %loadMem_423428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423428 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423428)
  store %struct.Memory* %call_423428, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42342c	 Bytes: 4
  %loadMem_42342c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42342c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42342c)
  store %struct.Memory* %call_42342c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 423430	 Bytes: 3
  %loadMem_423430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423430 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423430)
  store %struct.Memory* %call_423430, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 423433	 Bytes: 3
  %loadMem_423433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423433 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423433)
  store %struct.Memory* %call_423433, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 423436	 Bytes: 3
  %loadMem_423436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423436 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423436)
  store %struct.Memory* %call_423436, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423439	 Bytes: 5
  %loadMem1_423439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423439 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423439, i64 -138585, i64 5, i64 5)
  store %struct.Memory* %call1_423439, %struct.Memory** %MEMORY

  %loadMem2_423439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423439 = load i64, i64* %3
  %call2_423439 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423439, %struct.Memory* %loadMem2_423439)
  store %struct.Memory* %call2_423439, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r9d	 RIP: 42343e	 Bytes: 6
  %loadMem_42343e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42343e = call %struct.Memory* @routine_movl__0x4___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42343e)
  store %struct.Memory* %call_42343e, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %esi	 RIP: 423444	 Bytes: 3
  %loadMem_423444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423444 = call %struct.Memory* @routine_movl__r9d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423444)
  store %struct.Memory* %call_423444, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 423447	 Bytes: 6
  %loadMem_423447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423447 = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423447)
  store %struct.Memory* %call_423447, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 42344d	 Bytes: 3
  %loadMem_42344d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42344d = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42344d)
  store %struct.Memory* %call_42344d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423450	 Bytes: 4
  %loadMem_423450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423450 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423450)
  store %struct.Memory* %call_423450, %struct.Memory** %MEMORY

  ; Code: addq $0x1c8, %rcx	 RIP: 423454	 Bytes: 7
  %loadMem_423454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423454 = call %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423454)
  store %struct.Memory* %call_423454, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42345b	 Bytes: 4
  %loadMem_42345b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42345b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42345b)
  store %struct.Memory* %call_42345b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 42345f	 Bytes: 4
  %loadMem_42345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42345f = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42345f)
  store %struct.Memory* %call_42345f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423463	 Bytes: 3
  %loadMem_423463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423463 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423463)
  store %struct.Memory* %call_423463, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 423466	 Bytes: 4
  %loadMem_423466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423466 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423466)
  store %struct.Memory* %call_423466, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 42346a	 Bytes: 4
  %loadMem_42346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42346a = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42346a)
  store %struct.Memory* %call_42346a, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42346e	 Bytes: 5
  %loadMem1_42346e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42346e = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42346e, i64 -138638, i64 5, i64 5)
  store %struct.Memory* %call1_42346e, %struct.Memory** %MEMORY

  %loadMem2_42346e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42346e = load i64, i64* %3
  %call2_42346e = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42346e, %struct.Memory* %loadMem2_42346e)
  store %struct.Memory* %call2_42346e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423473	 Bytes: 4
  %loadMem_423473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423473 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423473)
  store %struct.Memory* %call_423473, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423477	 Bytes: 4
  %loadMem_423477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423477 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423477)
  store %struct.Memory* %call_423477, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rsi	 RIP: 42347b	 Bytes: 3
  %loadMem_42347b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42347b = call %struct.Memory* @routine_movq___rcx____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42347b)
  store %struct.Memory* %call_42347b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 42347e	 Bytes: 4
  %loadMem_42347e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42347e = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42347e)
  store %struct.Memory* %call_42347e, %struct.Memory** %MEMORY

  ; Code: callq .write_bin_string	 RIP: 423482	 Bytes: 5
  %loadMem1_423482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423482 = call %struct.Memory* @routine_callq_.write_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423482, i64 1854, i64 5, i64 5)
  store %struct.Memory* %call1_423482, %struct.Memory** %MEMORY

  %loadMem2_423482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423482 = load i64, i64* %3
  %call2_423482 = call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64  %loadPC_423482, %struct.Memory* %loadMem2_423482)
  store %struct.Memory* %call2_423482, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423487	 Bytes: 4
  %loadMem_423487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423487 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423487)
  store %struct.Memory* %call_423487, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %r9d	 RIP: 42348b	 Bytes: 7
  %loadMem_42348b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42348b = call %struct.Memory* @routine_movl_0x1c8__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42348b)
  store %struct.Memory* %call_42348b, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %r9d	 RIP: 423492	 Bytes: 7
  %loadMem_423492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423492 = call %struct.Memory* @routine_andl__0x200___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423492)
  store %struct.Memory* %call_423492, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r9d	 RIP: 423499	 Bytes: 4
  %loadMem_423499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423499 = call %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423499)
  store %struct.Memory* %call_423499, %struct.Memory** %MEMORY

  ; Code: je .L_4234b4	 RIP: 42349d	 Bytes: 6
  %loadMem_42349d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42349d = call %struct.Memory* @routine_je_.L_4234b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42349d, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_42349d, %struct.Memory** %MEMORY

  %loadBr_42349d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42349d = icmp eq i8 %loadBr_42349d, 1
  br i1 %cmpBr_42349d, label %block_.L_4234b4, label %block_4234a3

block_4234a3:
  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4234a3	 Bytes: 4
  %loadMem_4234a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234a3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234a3)
  store %struct.Memory* %call_4234a3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4234a7	 Bytes: 4
  %loadMem_4234a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234a7)
  store %struct.Memory* %call_4234a7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rsi	 RIP: 4234ab	 Bytes: 4
  %loadMem_4234ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234ab = call %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234ab)
  store %struct.Memory* %call_4234ab, %struct.Memory** %MEMORY

  ; Code: callq .write_bin_string	 RIP: 4234af	 Bytes: 5
  %loadMem1_4234af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4234af = call %struct.Memory* @routine_callq_.write_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4234af, i64 1809, i64 5, i64 5)
  store %struct.Memory* %call1_4234af, %struct.Memory** %MEMORY

  %loadMem2_4234af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4234af = load i64, i64* %3
  %call2_4234af = call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64  %loadPC_4234af, %struct.Memory* %loadMem2_4234af)
  store %struct.Memory* %call2_4234af, %struct.Memory** %MEMORY

  ; Code: .L_4234b4:	 RIP: 4234b4	 Bytes: 0
  br label %block_.L_4234b4
block_.L_4234b4:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4234b4	 Bytes: 4
  %loadMem_4234b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234b4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234b4)
  store %struct.Memory* %call_4234b4, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 4234b8	 Bytes: 6
  %loadMem_4234b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234b8 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234b8)
  store %struct.Memory* %call_4234b8, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 4234be	 Bytes: 3
  %loadMem_4234be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234be = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234be)
  store %struct.Memory* %call_4234be, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4234c1	 Bytes: 3
  %loadMem_4234c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234c1 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234c1)
  store %struct.Memory* %call_4234c1, %struct.Memory** %MEMORY

  ; Code: je .L_4234db	 RIP: 4234c4	 Bytes: 6
  %loadMem_4234c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234c4 = call %struct.Memory* @routine_je_.L_4234db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234c4, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4234c4, %struct.Memory** %MEMORY

  %loadBr_4234c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4234c4 = icmp eq i8 %loadBr_4234c4, 1
  br i1 %cmpBr_4234c4, label %block_.L_4234db, label %block_4234ca

block_4234ca:
  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4234ca	 Bytes: 4
  %loadMem_4234ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234ca = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234ca)
  store %struct.Memory* %call_4234ca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4234ce	 Bytes: 4
  %loadMem_4234ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234ce)
  store %struct.Memory* %call_4234ce, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rsi	 RIP: 4234d2	 Bytes: 4
  %loadMem_4234d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234d2 = call %struct.Memory* @routine_movq_0x10__rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234d2)
  store %struct.Memory* %call_4234d2, %struct.Memory** %MEMORY

  ; Code: callq .write_bin_string	 RIP: 4234d6	 Bytes: 5
  %loadMem1_4234d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4234d6 = call %struct.Memory* @routine_callq_.write_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4234d6, i64 1770, i64 5, i64 5)
  store %struct.Memory* %call1_4234d6, %struct.Memory** %MEMORY

  %loadMem2_4234d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4234d6 = load i64, i64* %3
  %call2_4234d6 = call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64  %loadPC_4234d6, %struct.Memory* %loadMem2_4234d6)
  store %struct.Memory* %call2_4234d6, %struct.Memory** %MEMORY

  ; Code: .L_4234db:	 RIP: 4234db	 Bytes: 0
  br label %block_.L_4234db
block_.L_4234db:

  ; Code: movl $0x4, %eax	 RIP: 4234db	 Bytes: 5
  %loadMem_4234db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234db = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234db)
  store %struct.Memory* %call_4234db, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4234e0	 Bytes: 2
  %loadMem_4234e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234e0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234e0)
  store %struct.Memory* %call_4234e0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4234e2	 Bytes: 5
  %loadMem_4234e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234e2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234e2)
  store %struct.Memory* %call_4234e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4234e7	 Bytes: 2
  %loadMem_4234e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234e7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234e7)
  store %struct.Memory* %call_4234e7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4234e9	 Bytes: 4
  %loadMem_4234e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234e9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234e9)
  store %struct.Memory* %call_4234e9, %struct.Memory** %MEMORY

  ; Code: addq $0x88, %rcx	 RIP: 4234ed	 Bytes: 7
  %loadMem_4234ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234ed = call %struct.Memory* @routine_addq__0x88___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234ed)
  store %struct.Memory* %call_4234ed, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4234f4	 Bytes: 4
  %loadMem_4234f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234f4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234f4)
  store %struct.Memory* %call_4234f4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x38(%rbp)	 RIP: 4234f8	 Bytes: 4
  %loadMem_4234f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234f8 = call %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234f8)
  store %struct.Memory* %call_4234f8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4234fc	 Bytes: 3
  %loadMem_4234fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234fc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234fc)
  store %struct.Memory* %call_4234fc, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4234ff	 Bytes: 4
  %loadMem_4234ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4234ff = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4234ff)
  store %struct.Memory* %call_4234ff, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423503	 Bytes: 5
  %loadMem1_423503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423503 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423503, i64 -138787, i64 5, i64 5)
  store %struct.Memory* %call1_423503, %struct.Memory** %MEMORY

  %loadMem2_423503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423503 = load i64, i64* %3
  %call2_423503 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423503, %struct.Memory* %loadMem2_423503)
  store %struct.Memory* %call2_423503, %struct.Memory** %MEMORY

  ; Code: movq $0x676d90, %rcx	 RIP: 423508	 Bytes: 10
  %loadMem_423508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423508 = call %struct.Memory* @routine_movq__0x676d90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423508)
  store %struct.Memory* %call_423508, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 423512	 Bytes: 6
  %loadMem_423512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423512 = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423512)
  store %struct.Memory* %call_423512, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 423518	 Bytes: 3
  %loadMem_423518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423518 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423518)
  store %struct.Memory* %call_423518, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 42351b	 Bytes: 6
  %loadMem_42351b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42351b = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42351b)
  store %struct.Memory* %call_42351b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 423521	 Bytes: 3
  %loadMem_423521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423521 = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423521)
  store %struct.Memory* %call_423521, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423524	 Bytes: 4
  %loadMem_423524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423524 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423524)
  store %struct.Memory* %call_423524, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x40(%rbp)	 RIP: 423528	 Bytes: 4
  %loadMem_423528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423528 = call %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423528)
  store %struct.Memory* %call_423528, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 42352c	 Bytes: 3
  %loadMem_42352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42352c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42352c)
  store %struct.Memory* %call_42352c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 42352f	 Bytes: 4
  %loadMem_42352f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42352f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42352f)
  store %struct.Memory* %call_42352f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 423533	 Bytes: 4
  %loadMem_423533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423533 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423533)
  store %struct.Memory* %call_423533, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423537	 Bytes: 5
  %loadMem1_423537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423537 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423537, i64 -138839, i64 5, i64 5)
  store %struct.Memory* %call1_423537, %struct.Memory** %MEMORY

  %loadMem2_423537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423537 = load i64, i64* %3
  %call2_423537 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423537, %struct.Memory* %loadMem2_423537)
  store %struct.Memory* %call2_423537, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42353c	 Bytes: 4
  %loadMem_42353c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42353c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42353c)
  store %struct.Memory* %call_42353c, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %r8d	 RIP: 423540	 Bytes: 7
  %loadMem_423540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423540 = call %struct.Memory* @routine_movl_0x1c8__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423540)
  store %struct.Memory* %call_423540, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %r8d	 RIP: 423547	 Bytes: 4
  %loadMem_423547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423547 = call %struct.Memory* @routine_andl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423547)
  store %struct.Memory* %call_423547, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r8d	 RIP: 42354b	 Bytes: 4
  %loadMem_42354b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42354b = call %struct.Memory* @routine_cmpl__0x0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42354b)
  store %struct.Memory* %call_42354b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 42354f	 Bytes: 4
  %loadMem_42354f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42354f = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42354f)
  store %struct.Memory* %call_42354f, %struct.Memory** %MEMORY

  ; Code: je .L_423585	 RIP: 423553	 Bytes: 6
  %loadMem_423553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423553 = call %struct.Memory* @routine_je_.L_423585(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423553, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_423553, %struct.Memory** %MEMORY

  %loadBr_423553 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423553 = icmp eq i8 %loadBr_423553, 1
  br i1 %cmpBr_423553, label %block_.L_423585, label %block_423559

block_423559:
  ; Code: movl $0x1, %eax	 RIP: 423559	 Bytes: 5
  %loadMem_423559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423559 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423559)
  store %struct.Memory* %call_423559, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42355e	 Bytes: 2
  %loadMem_42355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42355e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42355e)
  store %struct.Memory* %call_42355e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423560	 Bytes: 4
  %loadMem_423560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423560 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423560)
  store %struct.Memory* %call_423560, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rdi	 RIP: 423564	 Bytes: 4
  %loadMem_423564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423564 = call %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423564)
  store %struct.Memory* %call_423564, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423568	 Bytes: 4
  %loadMem_423568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423568 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423568)
  store %struct.Memory* %call_423568, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %eax	 RIP: 42356c	 Bytes: 6
  %loadMem_42356c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42356c = call %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42356c)
  store %struct.Memory* %call_42356c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423572	 Bytes: 3
  %loadMem_423572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423572 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423572)
  store %struct.Memory* %call_423572, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 423575	 Bytes: 3
  %loadMem_423575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423575 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423575)
  store %struct.Memory* %call_423575, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 423578	 Bytes: 4
  %loadMem_423578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423578 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423578)
  store %struct.Memory* %call_423578, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42357c	 Bytes: 5
  %loadMem1_42357c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42357c = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42357c, i64 -138908, i64 5, i64 5)
  store %struct.Memory* %call1_42357c, %struct.Memory** %MEMORY

  %loadMem2_42357c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42357c = load i64, i64* %3
  %call2_42357c = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42357c, %struct.Memory* %loadMem2_42357c)
  store %struct.Memory* %call2_42357c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 423581	 Bytes: 4
  %loadMem_423581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423581 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423581)
  store %struct.Memory* %call_423581, %struct.Memory** %MEMORY

  ; Code: .L_423585:	 RIP: 423585	 Bytes: 0
  br label %block_.L_423585
block_.L_423585:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423585	 Bytes: 4
  %loadMem_423585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423585 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423585)
  store %struct.Memory* %call_423585, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 423589	 Bytes: 6
  %loadMem_423589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423589 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423589)
  store %struct.Memory* %call_423589, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %ecx	 RIP: 42358f	 Bytes: 3
  %loadMem_42358f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42358f = call %struct.Memory* @routine_andl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42358f)
  store %struct.Memory* %call_42358f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 423592	 Bytes: 3
  %loadMem_423592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423592 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423592)
  store %struct.Memory* %call_423592, %struct.Memory** %MEMORY

  ; Code: je .L_4235c7	 RIP: 423595	 Bytes: 6
  %loadMem_423595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423595 = call %struct.Memory* @routine_je_.L_4235c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423595, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_423595, %struct.Memory** %MEMORY

  %loadBr_423595 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423595 = icmp eq i8 %loadBr_423595, 1
  br i1 %cmpBr_423595, label %block_.L_4235c7, label %block_42359b

block_42359b:
  ; Code: movl $0x1, %eax	 RIP: 42359b	 Bytes: 5
  %loadMem_42359b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42359b = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42359b)
  store %struct.Memory* %call_42359b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4235a0	 Bytes: 2
  %loadMem_4235a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235a0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235a0)
  store %struct.Memory* %call_4235a0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4235a2	 Bytes: 4
  %loadMem_4235a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235a2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235a2)
  store %struct.Memory* %call_4235a2, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rdi	 RIP: 4235a6	 Bytes: 4
  %loadMem_4235a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235a6 = call %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235a6)
  store %struct.Memory* %call_4235a6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4235aa	 Bytes: 4
  %loadMem_4235aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235aa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235aa)
  store %struct.Memory* %call_4235aa, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %eax	 RIP: 4235ae	 Bytes: 6
  %loadMem_4235ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235ae = call %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235ae)
  store %struct.Memory* %call_4235ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4235b4	 Bytes: 3
  %loadMem_4235b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235b4)
  store %struct.Memory* %call_4235b4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4235b7	 Bytes: 3
  %loadMem_4235b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235b7 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235b7)
  store %struct.Memory* %call_4235b7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4235ba	 Bytes: 4
  %loadMem_4235ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235ba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235ba)
  store %struct.Memory* %call_4235ba, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4235be	 Bytes: 5
  %loadMem1_4235be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4235be = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4235be, i64 -138974, i64 5, i64 5)
  store %struct.Memory* %call1_4235be, %struct.Memory** %MEMORY

  %loadMem2_4235be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4235be = load i64, i64* %3
  %call2_4235be = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4235be, %struct.Memory* %loadMem2_4235be)
  store %struct.Memory* %call2_4235be, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4235c3	 Bytes: 4
  %loadMem_4235c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235c3 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235c3)
  store %struct.Memory* %call_4235c3, %struct.Memory** %MEMORY

  ; Code: .L_4235c7:	 RIP: 4235c7	 Bytes: 0
  br label %block_.L_4235c7
block_.L_4235c7:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4235c7	 Bytes: 4
  %loadMem_4235c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235c7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235c7)
  store %struct.Memory* %call_4235c7, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 4235cb	 Bytes: 6
  %loadMem_4235cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235cb = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235cb)
  store %struct.Memory* %call_4235cb, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %ecx	 RIP: 4235d1	 Bytes: 6
  %loadMem_4235d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235d1 = call %struct.Memory* @routine_andl__0x100___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235d1)
  store %struct.Memory* %call_4235d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4235d7	 Bytes: 3
  %loadMem_4235d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235d7 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235d7)
  store %struct.Memory* %call_4235d7, %struct.Memory** %MEMORY

  ; Code: je .L_423617	 RIP: 4235da	 Bytes: 6
  %loadMem_4235da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235da = call %struct.Memory* @routine_je_.L_423617(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235da, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4235da, %struct.Memory** %MEMORY

  %loadBr_4235da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4235da = icmp eq i8 %loadBr_4235da, 1
  br i1 %cmpBr_4235da, label %block_.L_423617, label %block_4235e0

block_4235e0:
  ; Code: movl $0x4, %eax	 RIP: 4235e0	 Bytes: 5
  %loadMem_4235e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235e0 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235e0)
  store %struct.Memory* %call_4235e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4235e5	 Bytes: 2
  %loadMem_4235e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235e5 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235e5)
  store %struct.Memory* %call_4235e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4235e7	 Bytes: 4
  %loadMem_4235e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235e7)
  store %struct.Memory* %call_4235e7, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rcx), %rcx	 RIP: 4235eb	 Bytes: 4
  %loadMem_4235eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235eb = call %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235eb)
  store %struct.Memory* %call_4235eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4235ef	 Bytes: 4
  %loadMem_4235ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235ef)
  store %struct.Memory* %call_4235ef, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %eax	 RIP: 4235f3	 Bytes: 6
  %loadMem_4235f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235f3 = call %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235f3)
  store %struct.Memory* %call_4235f3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4235f9	 Bytes: 3
  %loadMem_4235f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235f9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235f9)
  store %struct.Memory* %call_4235f9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4235fc	 Bytes: 3
  %loadMem_4235fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235fc = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235fc)
  store %struct.Memory* %call_4235fc, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4235ff	 Bytes: 4
  %loadMem_4235ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4235ff = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4235ff)
  store %struct.Memory* %call_4235ff, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x68(%rbp)	 RIP: 423603	 Bytes: 4
  %loadMem_423603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423603 = call %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423603)
  store %struct.Memory* %call_423603, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423607	 Bytes: 3
  %loadMem_423607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423607 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423607)
  store %struct.Memory* %call_423607, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 42360a	 Bytes: 4
  %loadMem_42360a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42360a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42360a)
  store %struct.Memory* %call_42360a, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42360e	 Bytes: 5
  %loadMem1_42360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42360e = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42360e, i64 -139054, i64 5, i64 5)
  store %struct.Memory* %call1_42360e, %struct.Memory** %MEMORY

  %loadMem2_42360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42360e = load i64, i64* %3
  %call2_42360e = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42360e, %struct.Memory* %loadMem2_42360e)
  store %struct.Memory* %call2_42360e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 423613	 Bytes: 4
  %loadMem_423613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423613 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423613)
  store %struct.Memory* %call_423613, %struct.Memory** %MEMORY

  ; Code: .L_423617:	 RIP: 423617	 Bytes: 0
  br label %block_.L_423617
block_.L_423617:

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423617	 Bytes: 4
  %loadMem_423617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423617 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423617)
  store %struct.Memory* %call_423617, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42361b	 Bytes: 4
  %loadMem_42361b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42361b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42361b)
  store %struct.Memory* %call_42361b, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rsi	 RIP: 42361f	 Bytes: 4
  %loadMem_42361f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42361f = call %struct.Memory* @routine_movq_0x30__rax____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42361f)
  store %struct.Memory* %call_42361f, %struct.Memory** %MEMORY

  ; Code: callq .write_bin_string	 RIP: 423623	 Bytes: 5
  %loadMem1_423623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423623 = call %struct.Memory* @routine_callq_.write_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423623, i64 1437, i64 5, i64 5)
  store %struct.Memory* %call1_423623, %struct.Memory** %MEMORY

  %loadMem2_423623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423623 = load i64, i64* %3
  %call2_423623 = call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64  %loadPC_423623, %struct.Memory* %loadMem2_423623)
  store %struct.Memory* %call2_423623, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 423628	 Bytes: 5
  %loadMem_423628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423628 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423628)
  store %struct.Memory* %call_423628, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 42362d	 Bytes: 2
  %loadMem_42362d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42362d = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42362d)
  store %struct.Memory* %call_42362d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 42362f	 Bytes: 5
  %loadMem_42362f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42362f = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42362f)
  store %struct.Memory* %call_42362f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 423634	 Bytes: 2
  %loadMem_423634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423634 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423634)
  store %struct.Memory* %call_423634, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423636	 Bytes: 4
  %loadMem_423636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423636 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423636)
  store %struct.Memory* %call_423636, %struct.Memory** %MEMORY

  ; Code: addq $0x38, %rax	 RIP: 42363a	 Bytes: 4
  %loadMem_42363a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42363a = call %struct.Memory* @routine_addq__0x38___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42363a)
  store %struct.Memory* %call_42363a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42363e	 Bytes: 4
  %loadMem_42363e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42363e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42363e)
  store %struct.Memory* %call_42363e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 423642	 Bytes: 3
  %loadMem_423642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423642 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423642)
  store %struct.Memory* %call_423642, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423645	 Bytes: 5
  %loadMem1_423645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423645 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423645, i64 -139109, i64 5, i64 5)
  store %struct.Memory* %call1_423645, %struct.Memory** %MEMORY

  %loadMem2_423645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423645 = load i64, i64* %3
  %call2_423645 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423645, %struct.Memory* %loadMem2_423645)
  store %struct.Memory* %call2_423645, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42364a	 Bytes: 4
  %loadMem_42364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42364a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42364a)
  store %struct.Memory* %call_42364a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42364e	 Bytes: 4
  %loadMem_42364e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42364e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42364e)
  store %struct.Memory* %call_42364e, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rcx), %rsi	 RIP: 423652	 Bytes: 4
  %loadMem_423652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423652 = call %struct.Memory* @routine_movq_0x40__rcx____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423652)
  store %struct.Memory* %call_423652, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 423656	 Bytes: 4
  %loadMem_423656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423656 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423656)
  store %struct.Memory* %call_423656, %struct.Memory** %MEMORY

  ; Code: callq .write_bin_string	 RIP: 42365a	 Bytes: 5
  %loadMem1_42365a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42365a = call %struct.Memory* @routine_callq_.write_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42365a, i64 1382, i64 5, i64 5)
  store %struct.Memory* %call1_42365a, %struct.Memory** %MEMORY

  %loadMem2_42365a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42365a = load i64, i64* %3
  %call2_42365a = call %struct.Memory* @sub_423bc0.write_bin_string(%struct.State* %0, i64  %loadPC_42365a, %struct.Memory* %loadMem2_42365a)
  store %struct.Memory* %call2_42365a, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 42365f	 Bytes: 6
  %loadMem_42365f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42365f = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42365f)
  store %struct.Memory* %call_42365f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 423665	 Bytes: 3
  %loadMem_423665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423665 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423665)
  store %struct.Memory* %call_423665, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 423668	 Bytes: 6
  %loadMem_423668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423668 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423668)
  store %struct.Memory* %call_423668, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 42366e	 Bytes: 3
  %loadMem_42366e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42366e = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42366e)
  store %struct.Memory* %call_42366e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423671	 Bytes: 4
  %loadMem_423671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423671 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423671)
  store %struct.Memory* %call_423671, %struct.Memory** %MEMORY

  ; Code: addq $0x50, %rax	 RIP: 423675	 Bytes: 4
  %loadMem_423675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423675 = call %struct.Memory* @routine_addq__0x50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423675)
  store %struct.Memory* %call_423675, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 423679	 Bytes: 4
  %loadMem_423679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423679 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423679)
  store %struct.Memory* %call_423679, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42367d	 Bytes: 3
  %loadMem_42367d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42367d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42367d)
  store %struct.Memory* %call_42367d, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423680	 Bytes: 5
  %loadMem1_423680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423680 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423680, i64 -139168, i64 5, i64 5)
  store %struct.Memory* %call1_423680, %struct.Memory** %MEMORY

  %loadMem2_423680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423680 = load i64, i64* %3
  %call2_423680 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423680, %struct.Memory* %loadMem2_423680)
  store %struct.Memory* %call2_423680, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423685	 Bytes: 4
  %loadMem_423685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423685 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423685)
  store %struct.Memory* %call_423685, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %r8d	 RIP: 423689	 Bytes: 7
  %loadMem_423689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423689 = call %struct.Memory* @routine_movl_0x1c8__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423689)
  store %struct.Memory* %call_423689, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %r8d	 RIP: 423690	 Bytes: 7
  %loadMem_423690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423690 = call %struct.Memory* @routine_andl__0x400___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423690)
  store %struct.Memory* %call_423690, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r8d	 RIP: 423697	 Bytes: 4
  %loadMem_423697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423697 = call %struct.Memory* @routine_cmpl__0x0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423697)
  store %struct.Memory* %call_423697, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 42369b	 Bytes: 4
  %loadMem_42369b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42369b = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42369b)
  store %struct.Memory* %call_42369b, %struct.Memory** %MEMORY

  ; Code: je .L_423717	 RIP: 42369f	 Bytes: 6
  %loadMem_42369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42369f = call %struct.Memory* @routine_je_.L_423717(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42369f, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42369f, %struct.Memory** %MEMORY

  %loadBr_42369f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42369f = icmp eq i8 %loadBr_42369f, 1
  br i1 %cmpBr_42369f, label %block_.L_423717, label %block_4236a5

block_4236a5:
  ; Code: movl $0x4, %eax	 RIP: 4236a5	 Bytes: 5
  %loadMem_4236a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236a5 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236a5)
  store %struct.Memory* %call_4236a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4236aa	 Bytes: 2
  %loadMem_4236aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236aa = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236aa)
  store %struct.Memory* %call_4236aa, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4236ac	 Bytes: 5
  %loadMem_4236ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236ac = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236ac)
  store %struct.Memory* %call_4236ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4236b1	 Bytes: 2
  %loadMem_4236b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236b1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236b1)
  store %struct.Memory* %call_4236b1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4236b3	 Bytes: 4
  %loadMem_4236b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236b3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236b3)
  store %struct.Memory* %call_4236b3, %struct.Memory** %MEMORY

  ; Code: addq $0x70, %rcx	 RIP: 4236b7	 Bytes: 4
  %loadMem_4236b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236b7 = call %struct.Memory* @routine_addq__0x70___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236b7)
  store %struct.Memory* %call_4236b7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4236bb	 Bytes: 4
  %loadMem_4236bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236bb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236bb)
  store %struct.Memory* %call_4236bb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x88(%rbp)	 RIP: 4236bf	 Bytes: 7
  %loadMem_4236bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236bf = call %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236bf)
  store %struct.Memory* %call_4236bf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4236c6	 Bytes: 3
  %loadMem_4236c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236c6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236c6)
  store %struct.Memory* %call_4236c6, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 4236c9	 Bytes: 7
  %loadMem_4236c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236c9 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236c9)
  store %struct.Memory* %call_4236c9, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4236d0	 Bytes: 5
  %loadMem1_4236d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4236d0 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4236d0, i64 -139248, i64 5, i64 5)
  store %struct.Memory* %call1_4236d0, %struct.Memory** %MEMORY

  %loadMem2_4236d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4236d0 = load i64, i64* %3
  %call2_4236d0 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4236d0, %struct.Memory* %loadMem2_4236d0)
  store %struct.Memory* %call2_4236d0, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 4236d5	 Bytes: 6
  %loadMem_4236d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236d5 = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236d5)
  store %struct.Memory* %call_4236d5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 4236db	 Bytes: 3
  %loadMem_4236db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236db = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236db)
  store %struct.Memory* %call_4236db, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 4236de	 Bytes: 6
  %loadMem_4236de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236de = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236de)
  store %struct.Memory* %call_4236de, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 4236e4	 Bytes: 3
  %loadMem_4236e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236e4 = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236e4)
  store %struct.Memory* %call_4236e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4236e7	 Bytes: 4
  %loadMem_4236e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236e7)
  store %struct.Memory* %call_4236e7, %struct.Memory** %MEMORY

  ; Code: addq $0x74, %rcx	 RIP: 4236eb	 Bytes: 4
  %loadMem_4236eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236eb = call %struct.Memory* @routine_addq__0x74___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236eb)
  store %struct.Memory* %call_4236eb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4236ef	 Bytes: 4
  %loadMem_4236ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236ef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236ef)
  store %struct.Memory* %call_4236ef, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x90(%rbp)	 RIP: 4236f3	 Bytes: 7
  %loadMem_4236f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236f3 = call %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236f3)
  store %struct.Memory* %call_4236f3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4236fa	 Bytes: 3
  %loadMem_4236fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236fa = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236fa)
  store %struct.Memory* %call_4236fa, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 4236fd	 Bytes: 7
  %loadMem_4236fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4236fd = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4236fd)
  store %struct.Memory* %call_4236fd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x98(%rbp)	 RIP: 423704	 Bytes: 7
  %loadMem_423704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423704 = call %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423704)
  store %struct.Memory* %call_423704, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42370b	 Bytes: 5
  %loadMem1_42370b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42370b = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42370b, i64 -139307, i64 5, i64 5)
  store %struct.Memory* %call1_42370b, %struct.Memory** %MEMORY

  %loadMem2_42370b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42370b = load i64, i64* %3
  %call2_42370b = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42370b, %struct.Memory* %loadMem2_42370b)
  store %struct.Memory* %call2_42370b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa0(%rbp)	 RIP: 423710	 Bytes: 7
  %loadMem_423710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423710 = call %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423710)
  store %struct.Memory* %call_423710, %struct.Memory** %MEMORY

  ; Code: .L_423717:	 RIP: 423717	 Bytes: 0
  br label %block_.L_423717
block_.L_423717:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423717	 Bytes: 4
  %loadMem_423717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423717 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423717)
  store %struct.Memory* %call_423717, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 42371b	 Bytes: 6
  %loadMem_42371b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42371b = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42371b)
  store %struct.Memory* %call_42371b, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %ecx	 RIP: 423721	 Bytes: 6
  %loadMem_423721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423721 = call %struct.Memory* @routine_andl__0x800___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423721)
  store %struct.Memory* %call_423721, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 423727	 Bytes: 3
  %loadMem_423727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423727 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423727)
  store %struct.Memory* %call_423727, %struct.Memory** %MEMORY

  ; Code: je .L_4237a2	 RIP: 42372a	 Bytes: 6
  %loadMem_42372a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42372a = call %struct.Memory* @routine_je_.L_4237a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42372a, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42372a, %struct.Memory** %MEMORY

  %loadBr_42372a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42372a = icmp eq i8 %loadBr_42372a, 1
  br i1 %cmpBr_42372a, label %block_.L_4237a2, label %block_423730

block_423730:
  ; Code: movl $0x4, %eax	 RIP: 423730	 Bytes: 5
  %loadMem_423730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423730 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423730)
  store %struct.Memory* %call_423730, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423735	 Bytes: 2
  %loadMem_423735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423735 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423735)
  store %struct.Memory* %call_423735, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 423737	 Bytes: 5
  %loadMem_423737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423737 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423737)
  store %struct.Memory* %call_423737, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 42373c	 Bytes: 2
  %loadMem_42373c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42373c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42373c)
  store %struct.Memory* %call_42373c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42373e	 Bytes: 4
  %loadMem_42373e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42373e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42373e)
  store %struct.Memory* %call_42373e, %struct.Memory** %MEMORY

  ; Code: addq $0x78, %rcx	 RIP: 423742	 Bytes: 4
  %loadMem_423742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423742 = call %struct.Memory* @routine_addq__0x78___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423742)
  store %struct.Memory* %call_423742, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423746	 Bytes: 4
  %loadMem_423746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423746 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423746)
  store %struct.Memory* %call_423746, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa8(%rbp)	 RIP: 42374a	 Bytes: 7
  %loadMem_42374a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42374a = call %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42374a)
  store %struct.Memory* %call_42374a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423751	 Bytes: 3
  %loadMem_423751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423751 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423751)
  store %struct.Memory* %call_423751, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rcx	 RIP: 423754	 Bytes: 7
  %loadMem_423754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423754 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423754)
  store %struct.Memory* %call_423754, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42375b	 Bytes: 5
  %loadMem1_42375b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42375b = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42375b, i64 -139387, i64 5, i64 5)
  store %struct.Memory* %call1_42375b, %struct.Memory** %MEMORY

  %loadMem2_42375b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42375b = load i64, i64* %3
  %call2_42375b = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42375b, %struct.Memory* %loadMem2_42375b)
  store %struct.Memory* %call2_42375b, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 423760	 Bytes: 6
  %loadMem_423760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423760 = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423760)
  store %struct.Memory* %call_423760, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 423766	 Bytes: 3
  %loadMem_423766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423766 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423766)
  store %struct.Memory* %call_423766, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 423769	 Bytes: 6
  %loadMem_423769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423769 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423769)
  store %struct.Memory* %call_423769, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 42376f	 Bytes: 3
  %loadMem_42376f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42376f = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42376f)
  store %struct.Memory* %call_42376f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423772	 Bytes: 4
  %loadMem_423772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423772 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423772)
  store %struct.Memory* %call_423772, %struct.Memory** %MEMORY

  ; Code: addq $0x7c, %rcx	 RIP: 423776	 Bytes: 4
  %loadMem_423776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423776 = call %struct.Memory* @routine_addq__0x7c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423776)
  store %struct.Memory* %call_423776, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42377a	 Bytes: 4
  %loadMem_42377a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42377a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42377a)
  store %struct.Memory* %call_42377a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb0(%rbp)	 RIP: 42377e	 Bytes: 7
  %loadMem_42377e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42377e = call %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42377e)
  store %struct.Memory* %call_42377e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423785	 Bytes: 3
  %loadMem_423785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423785 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423785)
  store %struct.Memory* %call_423785, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rcx	 RIP: 423788	 Bytes: 7
  %loadMem_423788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423788 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423788)
  store %struct.Memory* %call_423788, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb8(%rbp)	 RIP: 42378f	 Bytes: 7
  %loadMem_42378f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42378f = call %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42378f)
  store %struct.Memory* %call_42378f, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423796	 Bytes: 5
  %loadMem1_423796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423796 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423796, i64 -139446, i64 5, i64 5)
  store %struct.Memory* %call1_423796, %struct.Memory** %MEMORY

  %loadMem2_423796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423796 = load i64, i64* %3
  %call2_423796 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423796, %struct.Memory* %loadMem2_423796)
  store %struct.Memory* %call2_423796, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc0(%rbp)	 RIP: 42379b	 Bytes: 7
  %loadMem_42379b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42379b = call %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42379b)
  store %struct.Memory* %call_42379b, %struct.Memory** %MEMORY

  ; Code: .L_4237a2:	 RIP: 4237a2	 Bytes: 0
  br label %block_.L_4237a2
block_.L_4237a2:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4237a2	 Bytes: 4
  %loadMem_4237a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237a2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237a2)
  store %struct.Memory* %call_4237a2, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 4237a6	 Bytes: 6
  %loadMem_4237a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237a6 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237a6)
  store %struct.Memory* %call_4237a6, %struct.Memory** %MEMORY

  ; Code: andl $0x1000, %ecx	 RIP: 4237ac	 Bytes: 6
  %loadMem_4237ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237ac = call %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237ac)
  store %struct.Memory* %call_4237ac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4237b2	 Bytes: 3
  %loadMem_4237b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237b2 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237b2)
  store %struct.Memory* %call_4237b2, %struct.Memory** %MEMORY

  ; Code: je .L_423833	 RIP: 4237b5	 Bytes: 6
  %loadMem_4237b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237b5 = call %struct.Memory* @routine_je_.L_423833(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237b5, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_4237b5, %struct.Memory** %MEMORY

  %loadBr_4237b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4237b5 = icmp eq i8 %loadBr_4237b5, 1
  br i1 %cmpBr_4237b5, label %block_.L_423833, label %block_4237bb

block_4237bb:
  ; Code: movl $0x4, %eax	 RIP: 4237bb	 Bytes: 5
  %loadMem_4237bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237bb = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237bb)
  store %struct.Memory* %call_4237bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4237c0	 Bytes: 2
  %loadMem_4237c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237c0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237c0)
  store %struct.Memory* %call_4237c0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4237c2	 Bytes: 5
  %loadMem_4237c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237c2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237c2)
  store %struct.Memory* %call_4237c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4237c7	 Bytes: 2
  %loadMem_4237c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237c7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237c7)
  store %struct.Memory* %call_4237c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4237c9	 Bytes: 4
  %loadMem_4237c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237c9)
  store %struct.Memory* %call_4237c9, %struct.Memory** %MEMORY

  ; Code: addq $0x80, %rcx	 RIP: 4237cd	 Bytes: 7
  %loadMem_4237cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237cd = call %struct.Memory* @routine_addq__0x80___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237cd)
  store %struct.Memory* %call_4237cd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4237d4	 Bytes: 4
  %loadMem_4237d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237d4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237d4)
  store %struct.Memory* %call_4237d4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc8(%rbp)	 RIP: 4237d8	 Bytes: 7
  %loadMem_4237d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237d8 = call %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237d8)
  store %struct.Memory* %call_4237d8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4237df	 Bytes: 3
  %loadMem_4237df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237df = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237df)
  store %struct.Memory* %call_4237df, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rcx	 RIP: 4237e2	 Bytes: 7
  %loadMem_4237e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237e2 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237e2)
  store %struct.Memory* %call_4237e2, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4237e9	 Bytes: 5
  %loadMem1_4237e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4237e9 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4237e9, i64 -139529, i64 5, i64 5)
  store %struct.Memory* %call1_4237e9, %struct.Memory** %MEMORY

  %loadMem2_4237e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4237e9 = load i64, i64* %3
  %call2_4237e9 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4237e9, %struct.Memory* %loadMem2_4237e9)
  store %struct.Memory* %call2_4237e9, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 4237ee	 Bytes: 6
  %loadMem_4237ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237ee = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237ee)
  store %struct.Memory* %call_4237ee, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 4237f4	 Bytes: 3
  %loadMem_4237f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237f4 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237f4)
  store %struct.Memory* %call_4237f4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 4237f7	 Bytes: 6
  %loadMem_4237f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237f7 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237f7)
  store %struct.Memory* %call_4237f7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 4237fd	 Bytes: 3
  %loadMem_4237fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4237fd = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4237fd)
  store %struct.Memory* %call_4237fd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423800	 Bytes: 4
  %loadMem_423800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423800 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423800)
  store %struct.Memory* %call_423800, %struct.Memory** %MEMORY

  ; Code: addq $0x84, %rcx	 RIP: 423804	 Bytes: 7
  %loadMem_423804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423804 = call %struct.Memory* @routine_addq__0x84___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423804)
  store %struct.Memory* %call_423804, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42380b	 Bytes: 4
  %loadMem_42380b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42380b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42380b)
  store %struct.Memory* %call_42380b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xd0(%rbp)	 RIP: 42380f	 Bytes: 7
  %loadMem_42380f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42380f = call %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42380f)
  store %struct.Memory* %call_42380f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423816	 Bytes: 3
  %loadMem_423816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423816 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423816)
  store %struct.Memory* %call_423816, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rcx	 RIP: 423819	 Bytes: 7
  %loadMem_423819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423819 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423819)
  store %struct.Memory* %call_423819, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 423820	 Bytes: 7
  %loadMem_423820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423820 = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423820)
  store %struct.Memory* %call_423820, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423827	 Bytes: 5
  %loadMem1_423827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423827 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423827, i64 -139591, i64 5, i64 5)
  store %struct.Memory* %call1_423827, %struct.Memory** %MEMORY

  %loadMem2_423827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423827 = load i64, i64* %3
  %call2_423827 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423827, %struct.Memory* %loadMem2_423827)
  store %struct.Memory* %call2_423827, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 42382c	 Bytes: 7
  %loadMem_42382c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42382c = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42382c)
  store %struct.Memory* %call_42382c, %struct.Memory** %MEMORY

  ; Code: .L_423833:	 RIP: 423833	 Bytes: 0
  br label %block_.L_423833
block_.L_423833:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 423833	 Bytes: 7
  %loadMem_423833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423833 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423833)
  store %struct.Memory* %call_423833, %struct.Memory** %MEMORY

  ; Code: .L_42383a:	 RIP: 42383a	 Bytes: 0
  br label %block_.L_42383a
block_.L_42383a:

  ; Code: cmpl $0x4, -0x14(%rbp)	 RIP: 42383a	 Bytes: 4
  %loadMem_42383a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42383a = call %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42383a)
  store %struct.Memory* %call_42383a, %struct.Memory** %MEMORY

  ; Code: jge .L_423897	 RIP: 42383e	 Bytes: 6
  %loadMem_42383e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42383e = call %struct.Memory* @routine_jge_.L_423897(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42383e, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_42383e, %struct.Memory** %MEMORY

  %loadBr_42383e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42383e = icmp eq i8 %loadBr_42383e, 1
  br i1 %cmpBr_42383e, label %block_.L_423897, label %block_423844

block_423844:
  ; Code: movl $0x4, %eax	 RIP: 423844	 Bytes: 5
  %loadMem_423844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423844 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423844)
  store %struct.Memory* %call_423844, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423849	 Bytes: 2
  %loadMem_423849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423849 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423849)
  store %struct.Memory* %call_423849, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 42384b	 Bytes: 5
  %loadMem_42384b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42384b = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42384b)
  store %struct.Memory* %call_42384b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 423850	 Bytes: 2
  %loadMem_423850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423850 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423850)
  store %struct.Memory* %call_423850, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423852	 Bytes: 4
  %loadMem_423852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423852 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423852)
  store %struct.Memory* %call_423852, %struct.Memory** %MEMORY

  ; Code: addq $0xac, %rcx	 RIP: 423856	 Bytes: 7
  %loadMem_423856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423856 = call %struct.Memory* @routine_addq__0xac___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423856)
  store %struct.Memory* %call_423856, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 42385d	 Bytes: 4
  %loadMem_42385d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42385d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42385d)
  store %struct.Memory* %call_42385d, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 423861	 Bytes: 4
  %loadMem_423861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423861 = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423861)
  store %struct.Memory* %call_423861, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 423865	 Bytes: 3
  %loadMem_423865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423865 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423865)
  store %struct.Memory* %call_423865, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423868	 Bytes: 4
  %loadMem_423868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423868 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423868)
  store %struct.Memory* %call_423868, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe8(%rbp)	 RIP: 42386c	 Bytes: 7
  %loadMem_42386c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42386c = call %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42386c)
  store %struct.Memory* %call_42386c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423873	 Bytes: 3
  %loadMem_423873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423873 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423873)
  store %struct.Memory* %call_423873, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %rcx	 RIP: 423876	 Bytes: 7
  %loadMem_423876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423876 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423876)
  store %struct.Memory* %call_423876, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 42387d	 Bytes: 5
  %loadMem1_42387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42387d = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42387d, i64 -139677, i64 5, i64 5)
  store %struct.Memory* %call1_42387d, %struct.Memory** %MEMORY

  %loadMem2_42387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42387d = load i64, i64* %3
  %call2_42387d = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_42387d, %struct.Memory* %loadMem2_42387d)
  store %struct.Memory* %call2_42387d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf0(%rbp)	 RIP: 423882	 Bytes: 7
  %loadMem_423882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423882 = call %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423882)
  store %struct.Memory* %call_423882, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423889	 Bytes: 3
  %loadMem_423889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423889 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423889)
  store %struct.Memory* %call_423889, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42388c	 Bytes: 3
  %loadMem_42388c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42388c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42388c)
  store %struct.Memory* %call_42388c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 42388f	 Bytes: 3
  %loadMem_42388f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42388f = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42388f)
  store %struct.Memory* %call_42388f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42383a	 RIP: 423892	 Bytes: 5
  %loadMem_423892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423892 = call %struct.Memory* @routine_jmpq_.L_42383a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423892, i64 -88, i64 5)
  store %struct.Memory* %call_423892, %struct.Memory** %MEMORY

  br label %block_.L_42383a

  ; Code: .L_423897:	 RIP: 423897	 Bytes: 0
block_.L_423897:

  ; Code: movl $0x4, %eax	 RIP: 423897	 Bytes: 5
  %loadMem_423897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423897 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423897)
  store %struct.Memory* %call_423897, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42389c	 Bytes: 2
  %loadMem_42389c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42389c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42389c)
  store %struct.Memory* %call_42389c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 42389e	 Bytes: 5
  %loadMem_42389e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42389e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42389e)
  store %struct.Memory* %call_42389e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4238a3	 Bytes: 2
  %loadMem_4238a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238a3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238a3)
  store %struct.Memory* %call_4238a3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4238a5	 Bytes: 4
  %loadMem_4238a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238a5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238a5)
  store %struct.Memory* %call_4238a5, %struct.Memory** %MEMORY

  ; Code: addq $0x130, %rcx	 RIP: 4238a9	 Bytes: 7
  %loadMem_4238a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238a9 = call %struct.Memory* @routine_addq__0x130___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238a9)
  store %struct.Memory* %call_4238a9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4238b0	 Bytes: 4
  %loadMem_4238b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238b0)
  store %struct.Memory* %call_4238b0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xf8(%rbp)	 RIP: 4238b4	 Bytes: 7
  %loadMem_4238b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238b4 = call %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238b4)
  store %struct.Memory* %call_4238b4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4238bb	 Bytes: 3
  %loadMem_4238bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238bb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238bb)
  store %struct.Memory* %call_4238bb, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rcx	 RIP: 4238be	 Bytes: 7
  %loadMem_4238be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238be = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238be)
  store %struct.Memory* %call_4238be, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4238c5	 Bytes: 5
  %loadMem1_4238c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4238c5 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4238c5, i64 -139749, i64 5, i64 5)
  store %struct.Memory* %call1_4238c5, %struct.Memory** %MEMORY

  %loadMem2_4238c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4238c5 = load i64, i64* %3
  %call2_4238c5 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4238c5, %struct.Memory* %loadMem2_4238c5)
  store %struct.Memory* %call2_4238c5, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 4238ca	 Bytes: 6
  %loadMem_4238ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238ca = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238ca)
  store %struct.Memory* %call_4238ca, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 4238d0	 Bytes: 3
  %loadMem_4238d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238d0 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238d0)
  store %struct.Memory* %call_4238d0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4238d3	 Bytes: 4
  %loadMem_4238d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238d3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238d3)
  store %struct.Memory* %call_4238d3, %struct.Memory** %MEMORY

  ; Code: addq $0xe0, %rcx	 RIP: 4238d7	 Bytes: 7
  %loadMem_4238d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238d7 = call %struct.Memory* @routine_addq__0xe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238d7)
  store %struct.Memory* %call_4238d7, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 4238de	 Bytes: 8
  %loadMem_4238de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238de = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238de)
  store %struct.Memory* %call_4238de, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4238e6	 Bytes: 4
  %loadMem_4238e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238e6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238e6)
  store %struct.Memory* %call_4238e6, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x100(%rbp)	 RIP: 4238ea	 Bytes: 7
  %loadMem_4238ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238ea = call %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238ea)
  store %struct.Memory* %call_4238ea, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4238f1	 Bytes: 3
  %loadMem_4238f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238f1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238f1)
  store %struct.Memory* %call_4238f1, %struct.Memory** %MEMORY

  ; Code: movq -0x100(%rbp), %rcx	 RIP: 4238f4	 Bytes: 7
  %loadMem_4238f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238f4 = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238f4)
  store %struct.Memory* %call_4238f4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x108(%rbp)	 RIP: 4238fb	 Bytes: 7
  %loadMem_4238fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4238fb = call %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4238fb)
  store %struct.Memory* %call_4238fb, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423902	 Bytes: 5
  %loadMem1_423902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423902 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423902, i64 -139810, i64 5, i64 5)
  store %struct.Memory* %call1_423902, %struct.Memory** %MEMORY

  %loadMem2_423902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423902 = load i64, i64* %3
  %call2_423902 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423902, %struct.Memory* %loadMem2_423902)
  store %struct.Memory* %call2_423902, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423907	 Bytes: 4
  %loadMem_423907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423907 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423907)
  store %struct.Memory* %call_423907, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rcx), %r8d	 RIP: 42390b	 Bytes: 7
  %loadMem_42390b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42390b = call %struct.Memory* @routine_movl_0x1c8__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42390b)
  store %struct.Memory* %call_42390b, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %r8d	 RIP: 423912	 Bytes: 7
  %loadMem_423912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423912 = call %struct.Memory* @routine_andl__0x80___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423912)
  store %struct.Memory* %call_423912, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r8d	 RIP: 423919	 Bytes: 4
  %loadMem_423919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423919 = call %struct.Memory* @routine_cmpl__0x0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423919)
  store %struct.Memory* %call_423919, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 42391d	 Bytes: 7
  %loadMem_42391d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42391d = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42391d)
  store %struct.Memory* %call_42391d, %struct.Memory** %MEMORY

  ; Code: je .L_4239a2	 RIP: 423924	 Bytes: 6
  %loadMem_423924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423924 = call %struct.Memory* @routine_je_.L_4239a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423924, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_423924, %struct.Memory** %MEMORY

  %loadBr_423924 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423924 = icmp eq i8 %loadBr_423924, 1
  br i1 %cmpBr_423924, label %block_.L_4239a2, label %block_42392a

block_42392a:
  ; Code: movl $0x4, %eax	 RIP: 42392a	 Bytes: 5
  %loadMem_42392a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42392a = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42392a)
  store %struct.Memory* %call_42392a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42392f	 Bytes: 2
  %loadMem_42392f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42392f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42392f)
  store %struct.Memory* %call_42392f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 423931	 Bytes: 5
  %loadMem_423931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423931 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423931)
  store %struct.Memory* %call_423931, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 423936	 Bytes: 2
  %loadMem_423936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423936 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423936)
  store %struct.Memory* %call_423936, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423938	 Bytes: 4
  %loadMem_423938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423938 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423938)
  store %struct.Memory* %call_423938, %struct.Memory** %MEMORY

  ; Code: addq $0x1c0, %rcx	 RIP: 42393c	 Bytes: 7
  %loadMem_42393c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42393c = call %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42393c)
  store %struct.Memory* %call_42393c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423943	 Bytes: 4
  %loadMem_423943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423943 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423943)
  store %struct.Memory* %call_423943, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x118(%rbp)	 RIP: 423947	 Bytes: 7
  %loadMem_423947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423947 = call %struct.Memory* @routine_movq__rdi__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423947)
  store %struct.Memory* %call_423947, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 42394e	 Bytes: 3
  %loadMem_42394e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42394e = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42394e)
  store %struct.Memory* %call_42394e, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 423951	 Bytes: 7
  %loadMem_423951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423951 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423951)
  store %struct.Memory* %call_423951, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423958	 Bytes: 5
  %loadMem1_423958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423958 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423958, i64 -139896, i64 5, i64 5)
  store %struct.Memory* %call1_423958, %struct.Memory** %MEMORY

  %loadMem2_423958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423958 = load i64, i64* %3
  %call2_423958 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423958, %struct.Memory* %loadMem2_423958)
  store %struct.Memory* %call2_423958, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 42395d	 Bytes: 6
  %loadMem_42395d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42395d = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42395d)
  store %struct.Memory* %call_42395d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 423963	 Bytes: 3
  %loadMem_423963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423963 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423963)
  store %struct.Memory* %call_423963, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 423966	 Bytes: 6
  %loadMem_423966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423966 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423966)
  store %struct.Memory* %call_423966, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 42396c	 Bytes: 3
  %loadMem_42396c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42396c = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42396c)
  store %struct.Memory* %call_42396c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42396f	 Bytes: 4
  %loadMem_42396f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42396f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42396f)
  store %struct.Memory* %call_42396f, %struct.Memory** %MEMORY

  ; Code: addq $0x1c4, %rcx	 RIP: 423973	 Bytes: 7
  %loadMem_423973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423973 = call %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423973)
  store %struct.Memory* %call_423973, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42397a	 Bytes: 4
  %loadMem_42397a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42397a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42397a)
  store %struct.Memory* %call_42397a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x120(%rbp)	 RIP: 42397e	 Bytes: 7
  %loadMem_42397e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42397e = call %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42397e)
  store %struct.Memory* %call_42397e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423985	 Bytes: 3
  %loadMem_423985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423985 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423985)
  store %struct.Memory* %call_423985, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 423988	 Bytes: 7
  %loadMem_423988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423988 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423988)
  store %struct.Memory* %call_423988, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x128(%rbp)	 RIP: 42398f	 Bytes: 7
  %loadMem_42398f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42398f = call %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42398f)
  store %struct.Memory* %call_42398f, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423996	 Bytes: 5
  %loadMem1_423996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423996 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423996, i64 -139958, i64 5, i64 5)
  store %struct.Memory* %call1_423996, %struct.Memory** %MEMORY

  %loadMem2_423996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423996 = load i64, i64* %3
  %call2_423996 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423996, %struct.Memory* %loadMem2_423996)
  store %struct.Memory* %call2_423996, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x130(%rbp)	 RIP: 42399b	 Bytes: 7
  %loadMem_42399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42399b = call %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42399b)
  store %struct.Memory* %call_42399b, %struct.Memory** %MEMORY

  ; Code: .L_4239a2:	 RIP: 4239a2	 Bytes: 0
  br label %block_.L_4239a2
block_.L_4239a2:

  ; Code: movl $0x4, %eax	 RIP: 4239a2	 Bytes: 5
  %loadMem_4239a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239a2 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239a2)
  store %struct.Memory* %call_4239a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4239a7	 Bytes: 2
  %loadMem_4239a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239a7 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239a7)
  store %struct.Memory* %call_4239a7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4239a9	 Bytes: 5
  %loadMem_4239a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239a9 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239a9)
  store %struct.Memory* %call_4239a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4239ae	 Bytes: 2
  %loadMem_4239ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239ae = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239ae)
  store %struct.Memory* %call_4239ae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4239b0	 Bytes: 4
  %loadMem_4239b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239b0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239b0)
  store %struct.Memory* %call_4239b0, %struct.Memory** %MEMORY

  ; Code: addq $0xa8, %rcx	 RIP: 4239b4	 Bytes: 7
  %loadMem_4239b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239b4 = call %struct.Memory* @routine_addq__0xa8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239b4)
  store %struct.Memory* %call_4239b4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4239bb	 Bytes: 4
  %loadMem_4239bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239bb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239bb)
  store %struct.Memory* %call_4239bb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x138(%rbp)	 RIP: 4239bf	 Bytes: 7
  %loadMem_4239bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239bf = call %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239bf)
  store %struct.Memory* %call_4239bf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4239c6	 Bytes: 3
  %loadMem_4239c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239c6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239c6)
  store %struct.Memory* %call_4239c6, %struct.Memory** %MEMORY

  ; Code: movq -0x138(%rbp), %rcx	 RIP: 4239c9	 Bytes: 7
  %loadMem_4239c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239c9 = call %struct.Memory* @routine_movq_MINUS0x138__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239c9)
  store %struct.Memory* %call_4239c9, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 4239d0	 Bytes: 5
  %loadMem1_4239d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4239d0 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4239d0, i64 -140016, i64 5, i64 5)
  store %struct.Memory* %call1_4239d0, %struct.Memory** %MEMORY

  %loadMem2_4239d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4239d0 = load i64, i64* %3
  %call2_4239d0 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_4239d0, %struct.Memory* %loadMem2_4239d0)
  store %struct.Memory* %call2_4239d0, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 4239d5	 Bytes: 6
  %loadMem_4239d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239d5 = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239d5)
  store %struct.Memory* %call_4239d5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 4239db	 Bytes: 3
  %loadMem_4239db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239db = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239db)
  store %struct.Memory* %call_4239db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4239de	 Bytes: 4
  %loadMem_4239de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239de = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239de)
  store %struct.Memory* %call_4239de, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rcx), %rcx	 RIP: 4239e2	 Bytes: 7
  %loadMem_4239e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239e2 = call %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239e2)
  store %struct.Memory* %call_4239e2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4239e9	 Bytes: 4
  %loadMem_4239e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239e9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239e9)
  store %struct.Memory* %call_4239e9, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %r8d	 RIP: 4239ed	 Bytes: 7
  %loadMem_4239ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239ed = call %struct.Memory* @routine_movl_0x88__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239ed)
  store %struct.Memory* %call_4239ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 4239f4	 Bytes: 4
  %loadMem_4239f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239f4 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239f4)
  store %struct.Memory* %call_4239f4, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 4239f8	 Bytes: 3
  %loadMem_4239f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239f8 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239f8)
  store %struct.Memory* %call_4239f8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4239fb	 Bytes: 4
  %loadMem_4239fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239fb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239fb)
  store %struct.Memory* %call_4239fb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x140(%rbp)	 RIP: 4239ff	 Bytes: 7
  %loadMem_4239ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239ff = call %struct.Memory* @routine_movq__rdi__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239ff)
  store %struct.Memory* %call_4239ff, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423a06	 Bytes: 3
  %loadMem_423a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a06 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a06)
  store %struct.Memory* %call_423a06, %struct.Memory** %MEMORY

  ; Code: movq -0x140(%rbp), %rcx	 RIP: 423a09	 Bytes: 7
  %loadMem_423a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a09 = call %struct.Memory* @routine_movq_MINUS0x140__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a09)
  store %struct.Memory* %call_423a09, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x148(%rbp)	 RIP: 423a10	 Bytes: 7
  %loadMem_423a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a10 = call %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a10)
  store %struct.Memory* %call_423a10, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423a17	 Bytes: 5
  %loadMem1_423a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423a17 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423a17, i64 -140087, i64 5, i64 5)
  store %struct.Memory* %call1_423a17, %struct.Memory** %MEMORY

  %loadMem2_423a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423a17 = load i64, i64* %3
  %call2_423a17 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423a17, %struct.Memory* %loadMem2_423a17)
  store %struct.Memory* %call2_423a17, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r8d	 RIP: 423a1c	 Bytes: 6
  %loadMem_423a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a1c = call %struct.Memory* @routine_movl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a1c)
  store %struct.Memory* %call_423a1c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 423a22	 Bytes: 3
  %loadMem_423a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a22 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a22)
  store %struct.Memory* %call_423a22, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423a25	 Bytes: 4
  %loadMem_423a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a25 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a25)
  store %struct.Memory* %call_423a25, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rcx), %rcx	 RIP: 423a29	 Bytes: 7
  %loadMem_423a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a29 = call %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a29)
  store %struct.Memory* %call_423a29, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 423a30	 Bytes: 4
  %loadMem_423a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a30 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a30)
  store %struct.Memory* %call_423a30, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %r8d	 RIP: 423a34	 Bytes: 7
  %loadMem_423a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a34 = call %struct.Memory* @routine_movl_0x88__rdx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a34)
  store %struct.Memory* %call_423a34, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 423a3b	 Bytes: 4
  %loadMem_423a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a3b = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a3b)
  store %struct.Memory* %call_423a3b, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 423a3f	 Bytes: 3
  %loadMem_423a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a3f = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a3f)
  store %struct.Memory* %call_423a3f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423a42	 Bytes: 4
  %loadMem_423a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a42 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a42)
  store %struct.Memory* %call_423a42, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x150(%rbp)	 RIP: 423a46	 Bytes: 7
  %loadMem_423a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a46 = call %struct.Memory* @routine_movq__rdi__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a46)
  store %struct.Memory* %call_423a46, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423a4d	 Bytes: 3
  %loadMem_423a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a4d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a4d)
  store %struct.Memory* %call_423a4d, %struct.Memory** %MEMORY

  ; Code: movq -0x150(%rbp), %rcx	 RIP: 423a50	 Bytes: 7
  %loadMem_423a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a50 = call %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a50)
  store %struct.Memory* %call_423a50, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x158(%rbp)	 RIP: 423a57	 Bytes: 7
  %loadMem_423a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a57 = call %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a57)
  store %struct.Memory* %call_423a57, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423a5e	 Bytes: 5
  %loadMem1_423a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423a5e = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423a5e, i64 -140158, i64 5, i64 5)
  store %struct.Memory* %call1_423a5e, %struct.Memory** %MEMORY

  %loadMem2_423a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423a5e = load i64, i64* %3
  %call2_423a5e = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423a5e, %struct.Memory* %loadMem2_423a5e)
  store %struct.Memory* %call2_423a5e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 423a63	 Bytes: 7
  %loadMem_423a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a63 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a63)
  store %struct.Memory* %call_423a63, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x160(%rbp)	 RIP: 423a6a	 Bytes: 7
  %loadMem_423a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a6a = call %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a6a)
  store %struct.Memory* %call_423a6a, %struct.Memory** %MEMORY

  ; Code: .L_423a71:	 RIP: 423a71	 Bytes: 0
  br label %block_.L_423a71
block_.L_423a71:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423a71	 Bytes: 3
  %loadMem_423a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a71 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a71)
  store %struct.Memory* %call_423a71, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423a74	 Bytes: 4
  %loadMem_423a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a74)
  store %struct.Memory* %call_423a74, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 423a78	 Bytes: 6
  %loadMem_423a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a78 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a78)
  store %struct.Memory* %call_423a78, %struct.Memory** %MEMORY

  ; Code: jg .L_423ad5	 RIP: 423a7e	 Bytes: 6
  %loadMem_423a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a7e = call %struct.Memory* @routine_jg_.L_423ad5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a7e, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_423a7e, %struct.Memory** %MEMORY

  %loadBr_423a7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423a7e = icmp eq i8 %loadBr_423a7e, 1
  br i1 %cmpBr_423a7e, label %block_.L_423ad5, label %block_423a84

block_423a84:
  ; Code: movl $0x4, %eax	 RIP: 423a84	 Bytes: 5
  %loadMem_423a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a84 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a84)
  store %struct.Memory* %call_423a84, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423a89	 Bytes: 2
  %loadMem_423a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a89 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a89)
  store %struct.Memory* %call_423a89, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423a8b	 Bytes: 4
  %loadMem_423a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a8b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a8b)
  store %struct.Memory* %call_423a8b, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rcx), %rcx	 RIP: 423a8f	 Bytes: 7
  %loadMem_423a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a8f = call %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a8f)
  store %struct.Memory* %call_423a8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 423a96	 Bytes: 4
  %loadMem_423a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a96 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a96)
  store %struct.Memory* %call_423a96, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 423a9a	 Bytes: 4
  %loadMem_423a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a9a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a9a)
  store %struct.Memory* %call_423a9a, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 423a9e	 Bytes: 8
  %loadMem_423a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a9e = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a9e)
  store %struct.Memory* %call_423a9e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423aa6	 Bytes: 4
  %loadMem_423aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aa6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aa6)
  store %struct.Memory* %call_423aa6, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x168(%rbp)	 RIP: 423aaa	 Bytes: 7
  %loadMem_423aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aaa = call %struct.Memory* @routine_movq__rdi__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aaa)
  store %struct.Memory* %call_423aaa, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423ab1	 Bytes: 3
  %loadMem_423ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ab1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ab1)
  store %struct.Memory* %call_423ab1, %struct.Memory** %MEMORY

  ; Code: movq -0x168(%rbp), %rcx	 RIP: 423ab4	 Bytes: 7
  %loadMem_423ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ab4 = call %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ab4)
  store %struct.Memory* %call_423ab4, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423abb	 Bytes: 5
  %loadMem1_423abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423abb = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423abb, i64 -140251, i64 5, i64 5)
  store %struct.Memory* %call1_423abb, %struct.Memory** %MEMORY

  %loadMem2_423abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423abb = load i64, i64* %3
  %call2_423abb = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423abb, %struct.Memory* %loadMem2_423abb)
  store %struct.Memory* %call2_423abb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x170(%rbp)	 RIP: 423ac0	 Bytes: 7
  %loadMem_423ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ac0 = call %struct.Memory* @routine_movq__rax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ac0)
  store %struct.Memory* %call_423ac0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423ac7	 Bytes: 3
  %loadMem_423ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ac7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ac7)
  store %struct.Memory* %call_423ac7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423aca	 Bytes: 3
  %loadMem_423aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aca)
  store %struct.Memory* %call_423aca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 423acd	 Bytes: 3
  %loadMem_423acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423acd = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423acd)
  store %struct.Memory* %call_423acd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423a71	 RIP: 423ad0	 Bytes: 5
  %loadMem_423ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ad0 = call %struct.Memory* @routine_jmpq_.L_423a71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ad0, i64 -95, i64 5)
  store %struct.Memory* %call_423ad0, %struct.Memory** %MEMORY

  br label %block_.L_423a71

  ; Code: .L_423ad5:	 RIP: 423ad5	 Bytes: 0
block_.L_423ad5:

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 423ad5	 Bytes: 7
  %loadMem_423ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ad5 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ad5)
  store %struct.Memory* %call_423ad5, %struct.Memory** %MEMORY

  ; Code: .L_423adc:	 RIP: 423adc	 Bytes: 0
  br label %block_.L_423adc
block_.L_423adc:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423adc	 Bytes: 3
  %loadMem_423adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423adc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423adc)
  store %struct.Memory* %call_423adc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423adf	 Bytes: 4
  %loadMem_423adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423adf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423adf)
  store %struct.Memory* %call_423adf, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 423ae3	 Bytes: 6
  %loadMem_423ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ae3 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ae3)
  store %struct.Memory* %call_423ae3, %struct.Memory** %MEMORY

  ; Code: jge .L_423b40	 RIP: 423ae9	 Bytes: 6
  %loadMem_423ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ae9 = call %struct.Memory* @routine_jge_.L_423b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ae9, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_423ae9, %struct.Memory** %MEMORY

  %loadBr_423ae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ae9 = icmp eq i8 %loadBr_423ae9, 1
  br i1 %cmpBr_423ae9, label %block_.L_423b40, label %block_423aef

block_423aef:
  ; Code: movl $0x4, %eax	 RIP: 423aef	 Bytes: 5
  %loadMem_423aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aef = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aef)
  store %struct.Memory* %call_423aef, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423af4	 Bytes: 2
  %loadMem_423af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423af4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423af4)
  store %struct.Memory* %call_423af4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423af6	 Bytes: 4
  %loadMem_423af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423af6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423af6)
  store %struct.Memory* %call_423af6, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rcx), %rcx	 RIP: 423afa	 Bytes: 7
  %loadMem_423afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423afa = call %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423afa)
  store %struct.Memory* %call_423afa, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 423b01	 Bytes: 4
  %loadMem_423b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b01 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b01)
  store %struct.Memory* %call_423b01, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 423b05	 Bytes: 4
  %loadMem_423b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b05 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b05)
  store %struct.Memory* %call_423b05, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 423b09	 Bytes: 8
  %loadMem_423b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b09 = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b09)
  store %struct.Memory* %call_423b09, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423b11	 Bytes: 4
  %loadMem_423b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b11 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b11)
  store %struct.Memory* %call_423b11, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x178(%rbp)	 RIP: 423b15	 Bytes: 7
  %loadMem_423b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b15 = call %struct.Memory* @routine_movq__rdi__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b15)
  store %struct.Memory* %call_423b15, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423b1c	 Bytes: 3
  %loadMem_423b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b1c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b1c)
  store %struct.Memory* %call_423b1c, %struct.Memory** %MEMORY

  ; Code: movq -0x178(%rbp), %rcx	 RIP: 423b1f	 Bytes: 7
  %loadMem_423b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b1f = call %struct.Memory* @routine_movq_MINUS0x178__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b1f)
  store %struct.Memory* %call_423b1f, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423b26	 Bytes: 5
  %loadMem1_423b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423b26 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423b26, i64 -140358, i64 5, i64 5)
  store %struct.Memory* %call1_423b26, %struct.Memory** %MEMORY

  %loadMem2_423b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423b26 = load i64, i64* %3
  %call2_423b26 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423b26, %struct.Memory* %loadMem2_423b26)
  store %struct.Memory* %call2_423b26, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x180(%rbp)	 RIP: 423b2b	 Bytes: 7
  %loadMem_423b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b2b = call %struct.Memory* @routine_movq__rax__MINUS0x180__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b2b)
  store %struct.Memory* %call_423b2b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423b32	 Bytes: 3
  %loadMem_423b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b32 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b32)
  store %struct.Memory* %call_423b32, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423b35	 Bytes: 3
  %loadMem_423b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b35 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b35)
  store %struct.Memory* %call_423b35, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 423b38	 Bytes: 3
  %loadMem_423b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b38 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b38)
  store %struct.Memory* %call_423b38, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423adc	 RIP: 423b3b	 Bytes: 5
  %loadMem_423b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b3b = call %struct.Memory* @routine_jmpq_.L_423adc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b3b, i64 -95, i64 5)
  store %struct.Memory* %call_423b3b, %struct.Memory** %MEMORY

  br label %block_.L_423adc

  ; Code: .L_423b40:	 RIP: 423b40	 Bytes: 0
block_.L_423b40:

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 423b40	 Bytes: 7
  %loadMem_423b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b40 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b40)
  store %struct.Memory* %call_423b40, %struct.Memory** %MEMORY

  ; Code: .L_423b47:	 RIP: 423b47	 Bytes: 0
  br label %block_.L_423b47
block_.L_423b47:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423b47	 Bytes: 3
  %loadMem_423b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b47 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b47)
  store %struct.Memory* %call_423b47, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423b4a	 Bytes: 4
  %loadMem_423b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b4a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b4a)
  store %struct.Memory* %call_423b4a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 423b4e	 Bytes: 6
  %loadMem_423b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b4e = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b4e)
  store %struct.Memory* %call_423b4e, %struct.Memory** %MEMORY

  ; Code: jge .L_423baa	 RIP: 423b54	 Bytes: 6
  %loadMem_423b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b54 = call %struct.Memory* @routine_jge_.L_423baa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b54, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_423b54, %struct.Memory** %MEMORY

  %loadBr_423b54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423b54 = icmp eq i8 %loadBr_423b54, 1
  br i1 %cmpBr_423b54, label %block_.L_423baa, label %block_423b5a

block_423b5a:
  ; Code: movl $0x4, %eax	 RIP: 423b5a	 Bytes: 5
  %loadMem_423b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b5a = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b5a)
  store %struct.Memory* %call_423b5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423b5f	 Bytes: 2
  %loadMem_423b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b5f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b5f)
  store %struct.Memory* %call_423b5f, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 423b61	 Bytes: 5
  %loadMem_423b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b61 = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b61)
  store %struct.Memory* %call_423b61, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 423b66	 Bytes: 2
  %loadMem_423b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b66 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b66)
  store %struct.Memory* %call_423b66, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423b68	 Bytes: 4
  %loadMem_423b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b68 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b68)
  store %struct.Memory* %call_423b68, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 423b6c	 Bytes: 7
  %loadMem_423b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b6c = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b6c)
  store %struct.Memory* %call_423b6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 423b73	 Bytes: 4
  %loadMem_423b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b73 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b73)
  store %struct.Memory* %call_423b73, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 423b77	 Bytes: 4
  %loadMem_423b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b77 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b77)
  store %struct.Memory* %call_423b77, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 423b7b	 Bytes: 4
  %loadMem_423b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b7b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b7b)
  store %struct.Memory* %call_423b7b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x188(%rbp)	 RIP: 423b7f	 Bytes: 7
  %loadMem_423b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b7f = call %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b7f)
  store %struct.Memory* %call_423b7f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 423b86	 Bytes: 3
  %loadMem_423b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b86 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b86)
  store %struct.Memory* %call_423b86, %struct.Memory** %MEMORY

  ; Code: movq -0x188(%rbp), %rcx	 RIP: 423b89	 Bytes: 7
  %loadMem_423b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b89 = call %struct.Memory* @routine_movq_MINUS0x188__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b89)
  store %struct.Memory* %call_423b89, %struct.Memory** %MEMORY

  ; Code: callq .fwrite_plt	 RIP: 423b90	 Bytes: 5
  %loadMem1_423b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423b90 = call %struct.Memory* @routine_callq_.fwrite_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423b90, i64 -140464, i64 5, i64 5)
  store %struct.Memory* %call1_423b90, %struct.Memory** %MEMORY

  %loadMem2_423b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423b90 = load i64, i64* %3
  %call2_423b90 = call %struct.Memory* @ext_fwrite(%struct.State* %0, i64  %loadPC_423b90, %struct.Memory* %loadMem2_423b90)
  store %struct.Memory* %call2_423b90, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x190(%rbp)	 RIP: 423b95	 Bytes: 7
  %loadMem_423b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b95 = call %struct.Memory* @routine_movq__rax__MINUS0x190__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b95)
  store %struct.Memory* %call_423b95, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 423b9c	 Bytes: 3
  %loadMem_423b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b9c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b9c)
  store %struct.Memory* %call_423b9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423b9f	 Bytes: 3
  %loadMem_423b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b9f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b9f)
  store %struct.Memory* %call_423b9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 423ba2	 Bytes: 3
  %loadMem_423ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ba2 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ba2)
  store %struct.Memory* %call_423ba2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423b47	 RIP: 423ba5	 Bytes: 5
  %loadMem_423ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ba5 = call %struct.Memory* @routine_jmpq_.L_423b47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ba5, i64 -94, i64 5)
  store %struct.Memory* %call_423ba5, %struct.Memory** %MEMORY

  br label %block_.L_423b47

  ; Code: .L_423baa:	 RIP: 423baa	 Bytes: 0
block_.L_423baa:

  ; Code: addq $0x190, %rsp	 RIP: 423baa	 Bytes: 7
  %loadMem_423baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423baa = call %struct.Memory* @routine_addq__0x190___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423baa)
  store %struct.Memory* %call_423baa, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 423bb1	 Bytes: 1
  %loadMem_423bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bb1 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bb1)
  store %struct.Memory* %call_423bb1, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 423bb2	 Bytes: 1
  %loadMem_423bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bb2 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bb2)
  store %struct.Memory* %call_423bb2, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_423bb2
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

define %struct.Memory* @routine_subq__0x190___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 400)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x661538___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x661538_type* @G__0x661538 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__0x4___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r9d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__r9d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_addq__0x1c8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 456)
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


define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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








define %struct.Memory* @routine_movq___rcx____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.write_bin_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x1c8__rax____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_andl__0x200___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 512)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_cmpl__0x0___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_4234b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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


define %struct.Memory* @routine_je_.L_4234db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x10__rax____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_addq__0x88___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 136)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movq__0x676d90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x676d90_type* @G__0x676d90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x4___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x1c8__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_andl__0x4___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_cmpl__0x0___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_423585(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_andl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4235c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_andl__0x100___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_423617(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movq_0x30__rax____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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








define %struct.Memory* @routine_addq__0x38___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 56)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movq_0x40__rcx____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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














define %struct.Memory* @routine_addq__0x50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 80)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_andl__0x400___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1024)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_423717(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x70___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 112)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addq__0x74___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 116)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_andl__0x800___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4237a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x78___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 120)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addq__0x7c___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 124)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4096)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_423833(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x80___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 128)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addq__0x84___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 132)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 224
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_423897(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0xac___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 172)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 3)
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




define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42383a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_addq__0x130___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 304)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addq__0xe0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 224)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_andl__0x80___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 128)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_4239a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 448)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 452)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_addq__0xa8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 168)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x138__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x88__rdx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movq__rdi__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x140__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movq__rdi__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 344
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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

define %struct.Memory* @routine_jg_.L_423ad5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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






define %struct.Memory* @routine_movq__rdi__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x170__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_423a71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_423b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movq__rdi__MINUS0x178__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x178__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x180__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 384
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_423adc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_423baa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq__rdi__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x188__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x190__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 400
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_423b47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_addq__0x190___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 400)
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

