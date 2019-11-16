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

declare %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x45863c_type = type <{ [8 x i8] }>
@G__0x45863c= global %G__0x45863c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45881d_type = type <{ [8 x i8] }>
@G__0x45881d= global %G__0x45881d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458823_type = type <{ [8 x i8] }>
@G__0x458823= global %G__0x458823_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458829_type = type <{ [8 x i8] }>
@G__0x458829= global %G__0x458829_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @annotate_model(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .annotate_model:	 RIP: 429e00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 429e00	 Bytes: 1
  %loadMem_429e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e00)
  store %struct.Memory* %call_429e00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 429e01	 Bytes: 3
  %loadMem_429e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e01)
  store %struct.Memory* %call_429e01, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 429e04	 Bytes: 4
  %loadMem_429e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e04 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e04)
  store %struct.Memory* %call_429e04, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 429e08	 Bytes: 4
  %loadMem_429e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e08 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e08)
  store %struct.Memory* %call_429e08, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 429e0c	 Bytes: 4
  %loadMem_429e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e0c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e0c)
  store %struct.Memory* %call_429e0c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 429e10	 Bytes: 4
  %loadMem_429e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e10 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e10)
  store %struct.Memory* %call_429e10, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 429e14	 Bytes: 4
  %loadMem_429e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e14 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e14)
  store %struct.Memory* %call_429e14, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rdx)	 RIP: 429e18	 Bytes: 5
  %loadMem_429e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e18 = call %struct.Memory* @routine_cmpq__0x0__0x58__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e18)
  store %struct.Memory* %call_429e18, %struct.Memory** %MEMORY

  ; Code: je .L_429efa	 RIP: 429e1d	 Bytes: 6
  %loadMem_429e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e1d = call %struct.Memory* @routine_je_.L_429efa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e1d, i8* %BRANCH_TAKEN, i64 221, i64 6, i64 6)
  store %struct.Memory* %call_429e1d, %struct.Memory** %MEMORY

  %loadBr_429e1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429e1d = icmp eq i8 %loadBr_429e1d, 1
  br i1 %cmpBr_429e1d, label %block_.L_429efa, label %block_429e23

block_429e23:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429e23	 Bytes: 4
  %loadMem_429e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e23 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e23)
  store %struct.Memory* %call_429e23, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429e27	 Bytes: 4
  %loadMem_429e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e27 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e27)
  store %struct.Memory* %call_429e27, %struct.Memory** %MEMORY

  ; Code: movb $0x20, (%rax)	 RIP: 429e2b	 Bytes: 3
  %loadMem_429e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e2b = call %struct.Memory* @routine_movb__0x20____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e2b)
  store %struct.Memory* %call_429e2b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 429e2e	 Bytes: 7
  %loadMem_429e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e2e = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e2e)
  store %struct.Memory* %call_429e2e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 429e35	 Bytes: 7
  %loadMem_429e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e35 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e35)
  store %struct.Memory* %call_429e35, %struct.Memory** %MEMORY

  ; Code: .L_429e3c:	 RIP: 429e3c	 Bytes: 0
  br label %block_.L_429e3c
block_.L_429e3c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 429e3c	 Bytes: 3
  %loadMem_429e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e3c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e3c)
  store %struct.Memory* %call_429e3c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 429e3f	 Bytes: 4
  %loadMem_429e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e3f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e3f)
  store %struct.Memory* %call_429e3f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 429e43	 Bytes: 3
  %loadMem_429e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e43 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e43)
  store %struct.Memory* %call_429e43, %struct.Memory** %MEMORY

  ; Code: jg .L_429ed7	 RIP: 429e46	 Bytes: 6
  %loadMem_429e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e46 = call %struct.Memory* @routine_jg_.L_429ed7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e46, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_429e46, %struct.Memory** %MEMORY

  %loadBr_429e46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429e46 = icmp eq i8 %loadBr_429e46, 1
  br i1 %cmpBr_429e46, label %block_.L_429ed7, label %block_429e4c

block_429e4c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 429e4c	 Bytes: 4
  %loadMem_429e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e4c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e4c)
  store %struct.Memory* %call_429e4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 429e50	 Bytes: 4
  %loadMem_429e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e50 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e50)
  store %struct.Memory* %call_429e50, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 429e54	 Bytes: 3
  %loadMem_429e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e54 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e54)
  store %struct.Memory* %call_429e54, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 429e57	 Bytes: 3
  %loadMem_429e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e57 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e57)
  store %struct.Memory* %call_429e57, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 429e5a	 Bytes: 3
  %loadMem_429e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e5a = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e5a)
  store %struct.Memory* %call_429e5a, %struct.Memory** %MEMORY

  ; Code: je .L_429ec4	 RIP: 429e5d	 Bytes: 6
  %loadMem_429e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e5d = call %struct.Memory* @routine_je_.L_429ec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e5d, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_429e5d, %struct.Memory** %MEMORY

  %loadBr_429e5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429e5d = icmp eq i8 %loadBr_429e5d, 1
  br i1 %cmpBr_429e5d, label %block_.L_429ec4, label %block_429e63

block_429e63:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 429e63	 Bytes: 4
  %loadMem_429e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e63 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e63)
  store %struct.Memory* %call_429e63, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 429e67	 Bytes: 4
  %loadMem_429e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e67 = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e67)
  store %struct.Memory* %call_429e67, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 429e6b	 Bytes: 3
  %loadMem_429e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e6b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e6b)
  store %struct.Memory* %call_429e6b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 429e6e	 Bytes: 3
  %loadMem_429e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e6e = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e6e)
  store %struct.Memory* %call_429e6e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429e71	 Bytes: 3
  %loadMem_429e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e71 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e71)
  store %struct.Memory* %call_429e71, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 429e74	 Bytes: 4
  %loadMem_429e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e74 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e74)
  store %struct.Memory* %call_429e74, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 429e78	 Bytes: 3
  %loadMem_429e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e78 = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e78)
  store %struct.Memory* %call_429e78, %struct.Memory** %MEMORY

  ; Code: jne .L_429e8e	 RIP: 429e7b	 Bytes: 6
  %loadMem_429e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e7b = call %struct.Memory* @routine_jne_.L_429e8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e7b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_429e7b, %struct.Memory** %MEMORY

  %loadBr_429e7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429e7b = icmp eq i8 %loadBr_429e7b, 1
  br i1 %cmpBr_429e7b, label %block_.L_429e8e, label %block_429e81

block_429e81:
  ; Code: movl $0x2e, %eax	 RIP: 429e81	 Bytes: 5
  %loadMem_429e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e81 = call %struct.Memory* @routine_movl__0x2e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e81)
  store %struct.Memory* %call_429e81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 429e86	 Bytes: 3
  %loadMem_429e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e86 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e86)
  store %struct.Memory* %call_429e86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429ea6	 RIP: 429e89	 Bytes: 5
  %loadMem_429e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e89 = call %struct.Memory* @routine_jmpq_.L_429ea6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e89, i64 29, i64 5)
  store %struct.Memory* %call_429e89, %struct.Memory** %MEMORY

  br label %block_.L_429ea6

  ; Code: .L_429e8e:	 RIP: 429e8e	 Bytes: 0
block_.L_429e8e:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429e8e	 Bytes: 4
  %loadMem_429e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e8e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e8e)
  store %struct.Memory* %call_429e8e, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 429e92	 Bytes: 4
  %loadMem_429e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e92 = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e92)
  store %struct.Memory* %call_429e92, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 429e96	 Bytes: 3
  %loadMem_429e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e96 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e96)
  store %struct.Memory* %call_429e96, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 429e99	 Bytes: 3
  %loadMem_429e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e99 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e99)
  store %struct.Memory* %call_429e99, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429e9c	 Bytes: 3
  %loadMem_429e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e9c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e9c)
  store %struct.Memory* %call_429e9c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 429e9f	 Bytes: 4
  %loadMem_429e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429e9f = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429e9f)
  store %struct.Memory* %call_429e9f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 429ea3	 Bytes: 3
  %loadMem_429ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ea3 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ea3)
  store %struct.Memory* %call_429ea3, %struct.Memory** %MEMORY

  ; Code: .L_429ea6:	 RIP: 429ea6	 Bytes: 0
  br label %block_.L_429ea6
block_.L_429ea6:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 429ea6	 Bytes: 3
  %loadMem_429ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ea6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ea6)
  store %struct.Memory* %call_429ea6, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 429ea9	 Bytes: 2
  %loadMem_429ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ea9 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ea9)
  store %struct.Memory* %call_429ea9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 429eab	 Bytes: 4
  %loadMem_429eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eab)
  store %struct.Memory* %call_429eab, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdx), %rdx	 RIP: 429eaf	 Bytes: 4
  %loadMem_429eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eaf = call %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eaf)
  store %struct.Memory* %call_429eaf, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 429eb3	 Bytes: 3
  %loadMem_429eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eb3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eb3)
  store %struct.Memory* %call_429eb3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 429eb6	 Bytes: 2
  %loadMem_429eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eb6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eb6)
  store %struct.Memory* %call_429eb6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 429eb8	 Bytes: 3
  %loadMem_429eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eb8 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eb8)
  store %struct.Memory* %call_429eb8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 429ebb	 Bytes: 3
  %loadMem_429ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ebb = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ebb)
  store %struct.Memory* %call_429ebb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 429ebe	 Bytes: 3
  %loadMem_429ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ebe = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ebe)
  store %struct.Memory* %call_429ebe, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rdx,%rdi,1)	 RIP: 429ec1	 Bytes: 3
  %loadMem_429ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ec1 = call %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ec1)
  store %struct.Memory* %call_429ec1, %struct.Memory** %MEMORY

  ; Code: .L_429ec4:	 RIP: 429ec4	 Bytes: 0
  br label %block_.L_429ec4
block_.L_429ec4:

  ; Code: jmpq .L_429ec9	 RIP: 429ec4	 Bytes: 5
  %loadMem_429ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ec4 = call %struct.Memory* @routine_jmpq_.L_429ec9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ec4, i64 5, i64 5)
  store %struct.Memory* %call_429ec4, %struct.Memory** %MEMORY

  br label %block_.L_429ec9

  ; Code: .L_429ec9:	 RIP: 429ec9	 Bytes: 0
block_.L_429ec9:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 429ec9	 Bytes: 3
  %loadMem_429ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ec9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ec9)
  store %struct.Memory* %call_429ec9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429ecc	 Bytes: 3
  %loadMem_429ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ecc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ecc)
  store %struct.Memory* %call_429ecc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 429ecf	 Bytes: 3
  %loadMem_429ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ecf = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ecf)
  store %struct.Memory* %call_429ecf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429e3c	 RIP: 429ed2	 Bytes: 5
  %loadMem_429ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ed2 = call %struct.Memory* @routine_jmpq_.L_429e3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ed2, i64 -150, i64 5)
  store %struct.Memory* %call_429ed2, %struct.Memory** %MEMORY

  br label %block_.L_429e3c

  ; Code: .L_429ed7:	 RIP: 429ed7	 Bytes: 0
block_.L_429ed7:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 429ed7	 Bytes: 4
  %loadMem_429ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ed7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ed7)
  store %struct.Memory* %call_429ed7, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 429edb	 Bytes: 4
  %loadMem_429edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429edb = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429edb)
  store %struct.Memory* %call_429edb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 429edf	 Bytes: 4
  %loadMem_429edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429edf = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429edf)
  store %struct.Memory* %call_429edf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 429ee3	 Bytes: 4
  %loadMem_429ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ee3 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ee3)
  store %struct.Memory* %call_429ee3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 429ee7	 Bytes: 4
  %loadMem_429ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ee7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ee7)
  store %struct.Memory* %call_429ee7, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %edx	 RIP: 429eeb	 Bytes: 6
  %loadMem_429eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429eeb = call %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429eeb)
  store %struct.Memory* %call_429eeb, %struct.Memory** %MEMORY

  ; Code: orl $0x4, %edx	 RIP: 429ef1	 Bytes: 3
  %loadMem_429ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ef1 = call %struct.Memory* @routine_orl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ef1)
  store %struct.Memory* %call_429ef1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1c8(%rax)	 RIP: 429ef4	 Bytes: 6
  %loadMem_429ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ef4 = call %struct.Memory* @routine_movl__edx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ef4)
  store %struct.Memory* %call_429ef4, %struct.Memory** %MEMORY

  ; Code: .L_429efa:	 RIP: 429efa	 Bytes: 0
  br label %block_.L_429efa
block_.L_429efa:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429efa	 Bytes: 4
  %loadMem_429efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429efa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429efa)
  store %struct.Memory* %call_429efa, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 429efe	 Bytes: 5
  %loadMem_429efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429efe = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429efe)
  store %struct.Memory* %call_429efe, %struct.Memory** %MEMORY

  ; Code: je .L_429fe0	 RIP: 429f03	 Bytes: 6
  %loadMem_429f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f03 = call %struct.Memory* @routine_je_.L_429fe0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f03, i8* %BRANCH_TAKEN, i64 221, i64 6, i64 6)
  store %struct.Memory* %call_429f03, %struct.Memory** %MEMORY

  %loadBr_429f03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429f03 = icmp eq i8 %loadBr_429f03, 1
  br i1 %cmpBr_429f03, label %block_.L_429fe0, label %block_429f09

block_429f09:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429f09	 Bytes: 4
  %loadMem_429f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f09 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f09)
  store %struct.Memory* %call_429f09, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 429f0d	 Bytes: 4
  %loadMem_429f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f0d = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f0d)
  store %struct.Memory* %call_429f0d, %struct.Memory** %MEMORY

  ; Code: movb $0x20, (%rax)	 RIP: 429f11	 Bytes: 3
  %loadMem_429f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f11 = call %struct.Memory* @routine_movb__0x20____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f11)
  store %struct.Memory* %call_429f11, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 429f14	 Bytes: 7
  %loadMem_429f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f14 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f14)
  store %struct.Memory* %call_429f14, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 429f1b	 Bytes: 7
  %loadMem_429f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f1b = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f1b)
  store %struct.Memory* %call_429f1b, %struct.Memory** %MEMORY

  ; Code: .L_429f22:	 RIP: 429f22	 Bytes: 0
  br label %block_.L_429f22
block_.L_429f22:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 429f22	 Bytes: 3
  %loadMem_429f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f22 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f22)
  store %struct.Memory* %call_429f22, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 429f25	 Bytes: 4
  %loadMem_429f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f25 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f25)
  store %struct.Memory* %call_429f25, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 429f29	 Bytes: 3
  %loadMem_429f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f29 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f29)
  store %struct.Memory* %call_429f29, %struct.Memory** %MEMORY

  ; Code: jg .L_429fbd	 RIP: 429f2c	 Bytes: 6
  %loadMem_429f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f2c = call %struct.Memory* @routine_jg_.L_429fbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f2c, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_429f2c, %struct.Memory** %MEMORY

  %loadBr_429f2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429f2c = icmp eq i8 %loadBr_429f2c, 1
  br i1 %cmpBr_429f2c, label %block_.L_429fbd, label %block_429f32

block_429f32:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 429f32	 Bytes: 4
  %loadMem_429f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f32 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f32)
  store %struct.Memory* %call_429f32, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 429f36	 Bytes: 4
  %loadMem_429f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f36 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f36)
  store %struct.Memory* %call_429f36, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 429f3a	 Bytes: 3
  %loadMem_429f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f3a = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f3a)
  store %struct.Memory* %call_429f3a, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 429f3d	 Bytes: 3
  %loadMem_429f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f3d = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f3d)
  store %struct.Memory* %call_429f3d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 429f40	 Bytes: 3
  %loadMem_429f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f40 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f40)
  store %struct.Memory* %call_429f40, %struct.Memory** %MEMORY

  ; Code: je .L_429faa	 RIP: 429f43	 Bytes: 6
  %loadMem_429f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f43 = call %struct.Memory* @routine_je_.L_429faa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f43, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_429f43, %struct.Memory** %MEMORY

  %loadBr_429f43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429f43 = icmp eq i8 %loadBr_429f43, 1
  br i1 %cmpBr_429f43, label %block_.L_429faa, label %block_429f49

block_429f49:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 429f49	 Bytes: 4
  %loadMem_429f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f49 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f49)
  store %struct.Memory* %call_429f49, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 429f4d	 Bytes: 4
  %loadMem_429f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f4d = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f4d)
  store %struct.Memory* %call_429f4d, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 429f51	 Bytes: 3
  %loadMem_429f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f51 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f51)
  store %struct.Memory* %call_429f51, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 429f54	 Bytes: 3
  %loadMem_429f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f54 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f54)
  store %struct.Memory* %call_429f54, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429f57	 Bytes: 3
  %loadMem_429f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f57 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f57)
  store %struct.Memory* %call_429f57, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 429f5a	 Bytes: 4
  %loadMem_429f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f5a = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f5a)
  store %struct.Memory* %call_429f5a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 429f5e	 Bytes: 3
  %loadMem_429f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f5e = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f5e)
  store %struct.Memory* %call_429f5e, %struct.Memory** %MEMORY

  ; Code: jne .L_429f74	 RIP: 429f61	 Bytes: 6
  %loadMem_429f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f61 = call %struct.Memory* @routine_jne_.L_429f74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f61, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_429f61, %struct.Memory** %MEMORY

  %loadBr_429f61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429f61 = icmp eq i8 %loadBr_429f61, 1
  br i1 %cmpBr_429f61, label %block_.L_429f74, label %block_429f67

block_429f67:
  ; Code: movl $0x2e, %eax	 RIP: 429f67	 Bytes: 5
  %loadMem_429f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f67 = call %struct.Memory* @routine_movl__0x2e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f67)
  store %struct.Memory* %call_429f67, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 429f6c	 Bytes: 3
  %loadMem_429f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f6c = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f6c)
  store %struct.Memory* %call_429f6c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429f8c	 RIP: 429f6f	 Bytes: 5
  %loadMem_429f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f6f = call %struct.Memory* @routine_jmpq_.L_429f8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f6f, i64 29, i64 5)
  store %struct.Memory* %call_429f6f, %struct.Memory** %MEMORY

  br label %block_.L_429f8c

  ; Code: .L_429f74:	 RIP: 429f74	 Bytes: 0
block_.L_429f74:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429f74	 Bytes: 4
  %loadMem_429f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f74 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f74)
  store %struct.Memory* %call_429f74, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 429f78	 Bytes: 4
  %loadMem_429f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f78 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f78)
  store %struct.Memory* %call_429f78, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 429f7c	 Bytes: 3
  %loadMem_429f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f7c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f7c)
  store %struct.Memory* %call_429f7c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 429f7f	 Bytes: 3
  %loadMem_429f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f7f = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f7f)
  store %struct.Memory* %call_429f7f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 429f82	 Bytes: 3
  %loadMem_429f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f82 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f82)
  store %struct.Memory* %call_429f82, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 429f85	 Bytes: 4
  %loadMem_429f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f85 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f85)
  store %struct.Memory* %call_429f85, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 429f89	 Bytes: 3
  %loadMem_429f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f89 = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f89)
  store %struct.Memory* %call_429f89, %struct.Memory** %MEMORY

  ; Code: .L_429f8c:	 RIP: 429f8c	 Bytes: 0
  br label %block_.L_429f8c
block_.L_429f8c:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 429f8c	 Bytes: 3
  %loadMem_429f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f8c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f8c)
  store %struct.Memory* %call_429f8c, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 429f8f	 Bytes: 2
  %loadMem_429f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f8f = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f8f)
  store %struct.Memory* %call_429f8f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 429f91	 Bytes: 4
  %loadMem_429f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f91 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f91)
  store %struct.Memory* %call_429f91, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rdx), %rdx	 RIP: 429f95	 Bytes: 4
  %loadMem_429f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f95 = call %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f95)
  store %struct.Memory* %call_429f95, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 429f99	 Bytes: 3
  %loadMem_429f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f99 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f99)
  store %struct.Memory* %call_429f99, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 429f9c	 Bytes: 2
  %loadMem_429f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f9c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f9c)
  store %struct.Memory* %call_429f9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 429f9e	 Bytes: 3
  %loadMem_429f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429f9e = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429f9e)
  store %struct.Memory* %call_429f9e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 429fa1	 Bytes: 3
  %loadMem_429fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fa1 = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fa1)
  store %struct.Memory* %call_429fa1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 429fa4	 Bytes: 3
  %loadMem_429fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fa4 = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fa4)
  store %struct.Memory* %call_429fa4, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rdx,%rdi,1)	 RIP: 429fa7	 Bytes: 3
  %loadMem_429fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fa7 = call %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fa7)
  store %struct.Memory* %call_429fa7, %struct.Memory** %MEMORY

  ; Code: .L_429faa:	 RIP: 429faa	 Bytes: 0
  br label %block_.L_429faa
block_.L_429faa:

  ; Code: jmpq .L_429faf	 RIP: 429faa	 Bytes: 5
  %loadMem_429faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429faa = call %struct.Memory* @routine_jmpq_.L_429faf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429faa, i64 5, i64 5)
  store %struct.Memory* %call_429faa, %struct.Memory** %MEMORY

  br label %block_.L_429faf

  ; Code: .L_429faf:	 RIP: 429faf	 Bytes: 0
block_.L_429faf:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 429faf	 Bytes: 3
  %loadMem_429faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429faf = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429faf)
  store %struct.Memory* %call_429faf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 429fb2	 Bytes: 3
  %loadMem_429fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fb2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fb2)
  store %struct.Memory* %call_429fb2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 429fb5	 Bytes: 3
  %loadMem_429fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fb5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fb5)
  store %struct.Memory* %call_429fb5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_429f22	 RIP: 429fb8	 Bytes: 5
  %loadMem_429fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fb8 = call %struct.Memory* @routine_jmpq_.L_429f22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fb8, i64 -150, i64 5)
  store %struct.Memory* %call_429fb8, %struct.Memory** %MEMORY

  br label %block_.L_429f22

  ; Code: .L_429fbd:	 RIP: 429fbd	 Bytes: 0
block_.L_429fbd:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 429fbd	 Bytes: 4
  %loadMem_429fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fbd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fbd)
  store %struct.Memory* %call_429fbd, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 429fc1	 Bytes: 4
  %loadMem_429fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fc1 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fc1)
  store %struct.Memory* %call_429fc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 429fc5	 Bytes: 4
  %loadMem_429fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fc5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fc5)
  store %struct.Memory* %call_429fc5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 429fc9	 Bytes: 4
  %loadMem_429fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fc9 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fc9)
  store %struct.Memory* %call_429fc9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 429fcd	 Bytes: 4
  %loadMem_429fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fcd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fcd)
  store %struct.Memory* %call_429fcd, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %edx	 RIP: 429fd1	 Bytes: 6
  %loadMem_429fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fd1 = call %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fd1)
  store %struct.Memory* %call_429fd1, %struct.Memory** %MEMORY

  ; Code: orl $0x8, %edx	 RIP: 429fd7	 Bytes: 3
  %loadMem_429fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fd7 = call %struct.Memory* @routine_orl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fd7)
  store %struct.Memory* %call_429fd7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1c8(%rax)	 RIP: 429fda	 Bytes: 6
  %loadMem_429fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fda = call %struct.Memory* @routine_movl__edx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fda)
  store %struct.Memory* %call_429fda, %struct.Memory** %MEMORY

  ; Code: .L_429fe0:	 RIP: 429fe0	 Bytes: 0
  br label %block_.L_429fe0
block_.L_429fe0:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 429fe0	 Bytes: 4
  %loadMem_429fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fe0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fe0)
  store %struct.Memory* %call_429fe0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x50(%rax)	 RIP: 429fe4	 Bytes: 5
  %loadMem_429fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fe4 = call %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fe4)
  store %struct.Memory* %call_429fe4, %struct.Memory** %MEMORY

  ; Code: je .L_42a0c9	 RIP: 429fe9	 Bytes: 6
  %loadMem_429fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fe9 = call %struct.Memory* @routine_je_.L_42a0c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fe9, i8* %BRANCH_TAKEN, i64 224, i64 6, i64 6)
  store %struct.Memory* %call_429fe9, %struct.Memory** %MEMORY

  %loadBr_429fe9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429fe9 = icmp eq i8 %loadBr_429fe9, 1
  br i1 %cmpBr_429fe9, label %block_.L_42a0c9, label %block_429fef

block_429fef:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 429fef	 Bytes: 4
  %loadMem_429fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429fef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429fef)
  store %struct.Memory* %call_429fef, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 429ff3	 Bytes: 4
  %loadMem_429ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ff3 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ff3)
  store %struct.Memory* %call_429ff3, %struct.Memory** %MEMORY

  ; Code: movb $0x20, (%rax)	 RIP: 429ff7	 Bytes: 3
  %loadMem_429ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ff7 = call %struct.Memory* @routine_movb__0x20____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ff7)
  store %struct.Memory* %call_429ff7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 429ffa	 Bytes: 7
  %loadMem_429ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_429ffa = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_429ffa)
  store %struct.Memory* %call_429ffa, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 42a001	 Bytes: 7
  %loadMem_42a001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a001 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a001)
  store %struct.Memory* %call_42a001, %struct.Memory** %MEMORY

  ; Code: .L_42a008:	 RIP: 42a008	 Bytes: 0
  br label %block_.L_42a008
block_.L_42a008:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a008	 Bytes: 3
  %loadMem_42a008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a008 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a008)
  store %struct.Memory* %call_42a008, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42a00b	 Bytes: 4
  %loadMem_42a00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a00b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a00b)
  store %struct.Memory* %call_42a00b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42a00f	 Bytes: 3
  %loadMem_42a00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a00f = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a00f)
  store %struct.Memory* %call_42a00f, %struct.Memory** %MEMORY

  ; Code: jg .L_42a0a3	 RIP: 42a012	 Bytes: 6
  %loadMem_42a012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a012 = call %struct.Memory* @routine_jg_.L_42a0a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a012, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_42a012, %struct.Memory** %MEMORY

  %loadBr_42a012 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a012 = icmp eq i8 %loadBr_42a012, 1
  br i1 %cmpBr_42a012, label %block_.L_42a0a3, label %block_42a018

block_42a018:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42a018	 Bytes: 4
  %loadMem_42a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a018 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a018)
  store %struct.Memory* %call_42a018, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42a01c	 Bytes: 4
  %loadMem_42a01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a01c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a01c)
  store %struct.Memory* %call_42a01c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a020	 Bytes: 3
  %loadMem_42a020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a020 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a020)
  store %struct.Memory* %call_42a020, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 42a023	 Bytes: 3
  %loadMem_42a023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a023 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a023)
  store %struct.Memory* %call_42a023, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a026	 Bytes: 3
  %loadMem_42a026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a026 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a026)
  store %struct.Memory* %call_42a026, %struct.Memory** %MEMORY

  ; Code: je .L_42a090	 RIP: 42a029	 Bytes: 6
  %loadMem_42a029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a029 = call %struct.Memory* @routine_je_.L_42a090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a029, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_42a029, %struct.Memory** %MEMORY

  %loadBr_42a029 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a029 = icmp eq i8 %loadBr_42a029, 1
  br i1 %cmpBr_42a029, label %block_.L_42a090, label %block_42a02f

block_42a02f:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 42a02f	 Bytes: 4
  %loadMem_42a02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a02f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a02f)
  store %struct.Memory* %call_42a02f, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 42a033	 Bytes: 4
  %loadMem_42a033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a033 = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a033)
  store %struct.Memory* %call_42a033, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a037	 Bytes: 3
  %loadMem_42a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a037 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a037)
  store %struct.Memory* %call_42a037, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a03a	 Bytes: 3
  %loadMem_42a03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a03a = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a03a)
  store %struct.Memory* %call_42a03a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a03d	 Bytes: 3
  %loadMem_42a03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a03d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a03d)
  store %struct.Memory* %call_42a03d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a040	 Bytes: 4
  %loadMem_42a040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a040 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a040)
  store %struct.Memory* %call_42a040, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 42a044	 Bytes: 3
  %loadMem_42a044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a044 = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a044)
  store %struct.Memory* %call_42a044, %struct.Memory** %MEMORY

  ; Code: jne .L_42a05a	 RIP: 42a047	 Bytes: 6
  %loadMem_42a047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a047 = call %struct.Memory* @routine_jne_.L_42a05a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a047, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42a047, %struct.Memory** %MEMORY

  %loadBr_42a047 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a047 = icmp eq i8 %loadBr_42a047, 1
  br i1 %cmpBr_42a047, label %block_.L_42a05a, label %block_42a04d

block_42a04d:
  ; Code: movl $0x2e, %eax	 RIP: 42a04d	 Bytes: 5
  %loadMem_42a04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a04d = call %struct.Memory* @routine_movl__0x2e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a04d)
  store %struct.Memory* %call_42a04d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 42a052	 Bytes: 3
  %loadMem_42a052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a052 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a052)
  store %struct.Memory* %call_42a052, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a072	 RIP: 42a055	 Bytes: 5
  %loadMem_42a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a055 = call %struct.Memory* @routine_jmpq_.L_42a072(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a055, i64 29, i64 5)
  store %struct.Memory* %call_42a055, %struct.Memory** %MEMORY

  br label %block_.L_42a072

  ; Code: .L_42a05a:	 RIP: 42a05a	 Bytes: 0
block_.L_42a05a:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 42a05a	 Bytes: 4
  %loadMem_42a05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a05a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a05a)
  store %struct.Memory* %call_42a05a, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rax), %rax	 RIP: 42a05e	 Bytes: 4
  %loadMem_42a05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a05e = call %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a05e)
  store %struct.Memory* %call_42a05e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a062	 Bytes: 3
  %loadMem_42a062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a062 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a062)
  store %struct.Memory* %call_42a062, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a065	 Bytes: 3
  %loadMem_42a065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a065 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a065)
  store %struct.Memory* %call_42a065, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a068	 Bytes: 3
  %loadMem_42a068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a068 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a068)
  store %struct.Memory* %call_42a068, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a06b	 Bytes: 4
  %loadMem_42a06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a06b = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a06b)
  store %struct.Memory* %call_42a06b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 42a06f	 Bytes: 3
  %loadMem_42a06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a06f = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a06f)
  store %struct.Memory* %call_42a06f, %struct.Memory** %MEMORY

  ; Code: .L_42a072:	 RIP: 42a072	 Bytes: 0
  br label %block_.L_42a072
block_.L_42a072:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 42a072	 Bytes: 3
  %loadMem_42a072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a072 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a072)
  store %struct.Memory* %call_42a072, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 42a075	 Bytes: 2
  %loadMem_42a075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a075 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a075)
  store %struct.Memory* %call_42a075, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42a077	 Bytes: 4
  %loadMem_42a077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a077 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a077)
  store %struct.Memory* %call_42a077, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 42a07b	 Bytes: 4
  %loadMem_42a07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a07b = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a07b)
  store %struct.Memory* %call_42a07b, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42a07f	 Bytes: 3
  %loadMem_42a07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a07f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a07f)
  store %struct.Memory* %call_42a07f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42a082	 Bytes: 2
  %loadMem_42a082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a082 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a082)
  store %struct.Memory* %call_42a082, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42a084	 Bytes: 3
  %loadMem_42a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a084 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a084)
  store %struct.Memory* %call_42a084, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 42a087	 Bytes: 3
  %loadMem_42a087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a087 = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a087)
  store %struct.Memory* %call_42a087, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 42a08a	 Bytes: 3
  %loadMem_42a08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a08a = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a08a)
  store %struct.Memory* %call_42a08a, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rdx,%rdi,1)	 RIP: 42a08d	 Bytes: 3
  %loadMem_42a08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a08d = call %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a08d)
  store %struct.Memory* %call_42a08d, %struct.Memory** %MEMORY

  ; Code: .L_42a090:	 RIP: 42a090	 Bytes: 0
  br label %block_.L_42a090
block_.L_42a090:

  ; Code: jmpq .L_42a095	 RIP: 42a090	 Bytes: 5
  %loadMem_42a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a090 = call %struct.Memory* @routine_jmpq_.L_42a095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a090, i64 5, i64 5)
  store %struct.Memory* %call_42a090, %struct.Memory** %MEMORY

  br label %block_.L_42a095

  ; Code: .L_42a095:	 RIP: 42a095	 Bytes: 0
block_.L_42a095:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a095	 Bytes: 3
  %loadMem_42a095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a095 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a095)
  store %struct.Memory* %call_42a095, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a098	 Bytes: 3
  %loadMem_42a098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a098 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a098)
  store %struct.Memory* %call_42a098, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42a09b	 Bytes: 3
  %loadMem_42a09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a09b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a09b)
  store %struct.Memory* %call_42a09b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a008	 RIP: 42a09e	 Bytes: 5
  %loadMem_42a09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a09e = call %struct.Memory* @routine_jmpq_.L_42a008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a09e, i64 -150, i64 5)
  store %struct.Memory* %call_42a09e, %struct.Memory** %MEMORY

  br label %block_.L_42a008

  ; Code: .L_42a0a3:	 RIP: 42a0a3	 Bytes: 0
block_.L_42a0a3:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a0a3	 Bytes: 4
  %loadMem_42a0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0a3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0a3)
  store %struct.Memory* %call_42a0a3, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 42a0a7	 Bytes: 4
  %loadMem_42a0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0a7 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0a7)
  store %struct.Memory* %call_42a0a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42a0ab	 Bytes: 4
  %loadMem_42a0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0ab = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0ab)
  store %struct.Memory* %call_42a0ab, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 42a0af	 Bytes: 4
  %loadMem_42a0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0af = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0af)
  store %struct.Memory* %call_42a0af, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a0b3	 Bytes: 4
  %loadMem_42a0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0b3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0b3)
  store %struct.Memory* %call_42a0b3, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %edx	 RIP: 42a0b7	 Bytes: 6
  %loadMem_42a0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0b7 = call %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0b7)
  store %struct.Memory* %call_42a0b7, %struct.Memory** %MEMORY

  ; Code: orl $0x2000, %edx	 RIP: 42a0bd	 Bytes: 6
  %loadMem_42a0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0bd = call %struct.Memory* @routine_orl__0x2000___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0bd)
  store %struct.Memory* %call_42a0bd, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1c8(%rax)	 RIP: 42a0c3	 Bytes: 6
  %loadMem_42a0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0c3 = call %struct.Memory* @routine_movl__edx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0c3)
  store %struct.Memory* %call_42a0c3, %struct.Memory** %MEMORY

  ; Code: .L_42a0c9:	 RIP: 42a0c9	 Bytes: 0
  br label %block_.L_42a0c9
block_.L_42a0c9:

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 42a0c9	 Bytes: 7
  %loadMem_42a0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0c9 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0c9)
  store %struct.Memory* %call_42a0c9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 42a0d0	 Bytes: 7
  %loadMem_42a0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0d0 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0d0)
  store %struct.Memory* %call_42a0d0, %struct.Memory** %MEMORY

  ; Code: .L_42a0d7:	 RIP: 42a0d7	 Bytes: 0
  br label %block_.L_42a0d7
block_.L_42a0d7:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a0d7	 Bytes: 3
  %loadMem_42a0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0d7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0d7)
  store %struct.Memory* %call_42a0d7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42a0da	 Bytes: 4
  %loadMem_42a0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0da = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0da)
  store %struct.Memory* %call_42a0da, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42a0de	 Bytes: 3
  %loadMem_42a0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0de = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0de)
  store %struct.Memory* %call_42a0de, %struct.Memory** %MEMORY

  ; Code: jg .L_42a12d	 RIP: 42a0e1	 Bytes: 6
  %loadMem_42a0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0e1 = call %struct.Memory* @routine_jg_.L_42a12d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0e1, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_42a0e1, %struct.Memory** %MEMORY

  %loadBr_42a0e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a0e1 = icmp eq i8 %loadBr_42a0e1, 1
  br i1 %cmpBr_42a0e1, label %block_.L_42a12d, label %block_42a0e7

block_42a0e7:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42a0e7	 Bytes: 4
  %loadMem_42a0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0e7)
  store %struct.Memory* %call_42a0e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42a0eb	 Bytes: 4
  %loadMem_42a0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0eb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0eb)
  store %struct.Memory* %call_42a0eb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a0ef	 Bytes: 3
  %loadMem_42a0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0ef = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0ef)
  store %struct.Memory* %call_42a0ef, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 42a0f2	 Bytes: 3
  %loadMem_42a0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0f2 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0f2)
  store %struct.Memory* %call_42a0f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a0f5	 Bytes: 3
  %loadMem_42a0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0f5 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0f5)
  store %struct.Memory* %call_42a0f5, %struct.Memory** %MEMORY

  ; Code: je .L_42a11a	 RIP: 42a0f8	 Bytes: 6
  %loadMem_42a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0f8 = call %struct.Memory* @routine_je_.L_42a11a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0f8, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_42a0f8, %struct.Memory** %MEMORY

  %loadBr_42a0f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a0f8 = icmp eq i8 %loadBr_42a0f8, 1
  br i1 %cmpBr_42a0f8, label %block_.L_42a11a, label %block_42a0fe

block_42a0fe:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a0fe	 Bytes: 3
  %loadMem_42a0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a0fe = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a0fe)
  store %struct.Memory* %call_42a0fe, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 42a101	 Bytes: 4
  %loadMem_42a101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a101 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a101)
  store %struct.Memory* %call_42a101, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rcx), %rcx	 RIP: 42a105	 Bytes: 4
  %loadMem_42a105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a105 = call %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a105)
  store %struct.Memory* %call_42a105, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edx	 RIP: 42a109	 Bytes: 3
  %loadMem_42a109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a109 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a109)
  store %struct.Memory* %call_42a109, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 42a10c	 Bytes: 2
  %loadMem_42a10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a10c = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a10c)
  store %struct.Memory* %call_42a10c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 42a10e	 Bytes: 3
  %loadMem_42a10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a10e = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a10e)
  store %struct.Memory* %call_42a10e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 42a111	 Bytes: 3
  %loadMem_42a111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a111 = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a111)
  store %struct.Memory* %call_42a111, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 42a114	 Bytes: 3
  %loadMem_42a114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a114 = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a114)
  store %struct.Memory* %call_42a114, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdi,4)	 RIP: 42a117	 Bytes: 3
  %loadMem_42a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a117 = call %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a117)
  store %struct.Memory* %call_42a117, %struct.Memory** %MEMORY

  ; Code: .L_42a11a:	 RIP: 42a11a	 Bytes: 0
  br label %block_.L_42a11a
block_.L_42a11a:

  ; Code: jmpq .L_42a11f	 RIP: 42a11a	 Bytes: 5
  %loadMem_42a11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a11a = call %struct.Memory* @routine_jmpq_.L_42a11f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a11a, i64 5, i64 5)
  store %struct.Memory* %call_42a11a, %struct.Memory** %MEMORY

  br label %block_.L_42a11f

  ; Code: .L_42a11f:	 RIP: 42a11f	 Bytes: 0
block_.L_42a11f:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a11f	 Bytes: 3
  %loadMem_42a11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a11f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a11f)
  store %struct.Memory* %call_42a11f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a122	 Bytes: 3
  %loadMem_42a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a122 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a122)
  store %struct.Memory* %call_42a122, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42a125	 Bytes: 3
  %loadMem_42a125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a125 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a125)
  store %struct.Memory* %call_42a125, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a0d7	 RIP: 42a128	 Bytes: 5
  %loadMem_42a128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a128 = call %struct.Memory* @routine_jmpq_.L_42a0d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a128, i64 -81, i64 5)
  store %struct.Memory* %call_42a128, %struct.Memory** %MEMORY

  br label %block_.L_42a0d7

  ; Code: .L_42a12d:	 RIP: 42a12d	 Bytes: 0
block_.L_42a12d:

  ; Code: movq $0x45881d, %rsi	 RIP: 42a12d	 Bytes: 10
  %loadMem_42a12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a12d = call %struct.Memory* @routine_movq__0x45881d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a12d)
  store %struct.Memory* %call_42a12d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a137	 Bytes: 4
  %loadMem_42a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a137 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a137)
  store %struct.Memory* %call_42a137, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 42a13b	 Bytes: 6
  %loadMem_42a13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a13b = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a13b)
  store %struct.Memory* %call_42a13b, %struct.Memory** %MEMORY

  ; Code: orl $0x100, %ecx	 RIP: 42a141	 Bytes: 6
  %loadMem_42a141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a141 = call %struct.Memory* @routine_orl__0x100___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a141)
  store %struct.Memory* %call_42a141, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 42a147	 Bytes: 6
  %loadMem_42a147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a147 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a147)
  store %struct.Memory* %call_42a147, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42a14d	 Bytes: 4
  %loadMem_42a14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a14d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a14d)
  store %struct.Memory* %call_42a14d, %struct.Memory** %MEMORY

  ; Code: callq .MSAGetGC	 RIP: 42a151	 Bytes: 5
  %loadMem1_42a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a151 = call %struct.Memory* @routine_callq_.MSAGetGC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a151, i64 15855, i64 5, i64 5)
  store %struct.Memory* %call1_42a151, %struct.Memory** %MEMORY

  %loadMem2_42a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a151 = load i64, i64* %3
  %call2_42a151 = call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* %0, i64  %loadPC_42a151, %struct.Memory* %loadMem2_42a151)
  store %struct.Memory* %call2_42a151, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 42a156	 Bytes: 4
  %loadMem_42a156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a156 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a156)
  store %struct.Memory* %call_42a156, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42a15a	 Bytes: 4
  %loadMem_42a15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a15a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a15a)
  store %struct.Memory* %call_42a15a, %struct.Memory** %MEMORY

  ; Code: je .L_42a315	 RIP: 42a15e	 Bytes: 6
  %loadMem_42a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a15e = call %struct.Memory* @routine_je_.L_42a315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a15e, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_42a15e, %struct.Memory** %MEMORY

  %loadBr_42a15e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a15e = icmp eq i8 %loadBr_42a15e, 1
  br i1 %cmpBr_42a15e, label %block_.L_42a315, label %block_42a164

block_42a164:
  ; Code: movq $0x45863c, %rdi	 RIP: 42a164	 Bytes: 10
  %loadMem_42a164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a164 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a164)
  store %struct.Memory* %call_42a164, %struct.Memory** %MEMORY

  ; Code: movl $0x380, %esi	 RIP: 42a16e	 Bytes: 5
  %loadMem_42a16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a16e = call %struct.Memory* @routine_movl__0x380___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a16e)
  store %struct.Memory* %call_42a16e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a173	 Bytes: 4
  %loadMem_42a173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a173 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a173)
  store %struct.Memory* %call_42a173, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %ecx	 RIP: 42a177	 Bytes: 6
  %loadMem_42a177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a177 = call %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a177)
  store %struct.Memory* %call_42a177, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a17d	 Bytes: 3
  %loadMem_42a17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a17d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a17d)
  store %struct.Memory* %call_42a17d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 42a180	 Bytes: 3
  %loadMem_42a180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a180 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a180)
  store %struct.Memory* %call_42a180, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42a183	 Bytes: 4
  %loadMem_42a183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a183 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a183)
  store %struct.Memory* %call_42a183, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42a187	 Bytes: 3
  %loadMem_42a187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a187 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a187)
  store %struct.Memory* %call_42a187, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42a18a	 Bytes: 5
  %loadMem1_42a18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a18a = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a18a, i64 114390, i64 5, i64 5)
  store %struct.Memory* %call1_42a18a, %struct.Memory** %MEMORY

  %loadMem2_42a18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a18a = load i64, i64* %3
  %call2_42a18a = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42a18a, %struct.Memory* %loadMem2_42a18a)
  store %struct.Memory* %call2_42a18a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42a18f	 Bytes: 4
  %loadMem_42a18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a18f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a18f)
  store %struct.Memory* %call_42a18f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x60(%rdx)	 RIP: 42a193	 Bytes: 4
  %loadMem_42a193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a193 = call %struct.Memory* @routine_movq__rax__0x60__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a193)
  store %struct.Memory* %call_42a193, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 42a197	 Bytes: 7
  %loadMem_42a197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a197 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a197)
  store %struct.Memory* %call_42a197, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 42a19e	 Bytes: 7
  %loadMem_42a19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a19e = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a19e)
  store %struct.Memory* %call_42a19e, %struct.Memory** %MEMORY

  ; Code: .L_42a1a5:	 RIP: 42a1a5	 Bytes: 0
  br label %block_.L_42a1a5
block_.L_42a1a5:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a1a5	 Bytes: 3
  %loadMem_42a1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1a5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1a5)
  store %struct.Memory* %call_42a1a5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42a1a8	 Bytes: 4
  %loadMem_42a1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1a8)
  store %struct.Memory* %call_42a1a8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42a1ac	 Bytes: 3
  %loadMem_42a1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1ac = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1ac)
  store %struct.Memory* %call_42a1ac, %struct.Memory** %MEMORY

  ; Code: jg .L_42a310	 RIP: 42a1af	 Bytes: 6
  %loadMem_42a1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1af = call %struct.Memory* @routine_jg_.L_42a310(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1af, i8* %BRANCH_TAKEN, i64 353, i64 6, i64 6)
  store %struct.Memory* %call_42a1af, %struct.Memory** %MEMORY

  %loadBr_42a1af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a1af = icmp eq i8 %loadBr_42a1af, 1
  br i1 %cmpBr_42a1af, label %block_.L_42a310, label %block_42a1b5

block_42a1b5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42a1b5	 Bytes: 4
  %loadMem_42a1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1b5)
  store %struct.Memory* %call_42a1b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42a1b9	 Bytes: 4
  %loadMem_42a1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1b9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1b9)
  store %struct.Memory* %call_42a1b9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a1bd	 Bytes: 3
  %loadMem_42a1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1bd = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1bd)
  store %struct.Memory* %call_42a1bd, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 42a1c0	 Bytes: 3
  %loadMem_42a1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1c0 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1c0)
  store %struct.Memory* %call_42a1c0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a1c3	 Bytes: 3
  %loadMem_42a1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1c3 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1c3)
  store %struct.Memory* %call_42a1c3, %struct.Memory** %MEMORY

  ; Code: je .L_42a2fd	 RIP: 42a1c6	 Bytes: 6
  %loadMem_42a1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1c6 = call %struct.Memory* @routine_je_.L_42a2fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1c6, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_42a1c6, %struct.Memory** %MEMORY

  %loadBr_42a1c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a1c6 = icmp eq i8 %loadBr_42a1c6, 1
  br i1 %cmpBr_42a1c6, label %block_.L_42a2fd, label %block_42a1cc

block_42a1cc:
  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a1cc	 Bytes: 5
  %loadMem1_42a1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a1cc = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a1cc, i64 -166588, i64 5, i64 5)
  store %struct.Memory* %call1_42a1cc, %struct.Memory** %MEMORY

  %loadMem2_42a1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a1cc = load i64, i64* %3
  %call2_42a1cc = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a1cc, %struct.Memory* %loadMem2_42a1cc)
  store %struct.Memory* %call2_42a1cc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a1d1	 Bytes: 3
  %loadMem_42a1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1d1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1d1)
  store %struct.Memory* %call_42a1d1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a1d4	 Bytes: 4
  %loadMem_42a1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1d4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1d4)
  store %struct.Memory* %call_42a1d4, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a1d8	 Bytes: 3
  %loadMem_42a1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1d8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1d8)
  store %struct.Memory* %call_42a1d8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a1db	 Bytes: 3
  %loadMem_42a1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1db = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1db)
  store %struct.Memory* %call_42a1db, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a1de	 Bytes: 3
  %loadMem_42a1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1de = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1de)
  store %struct.Memory* %call_42a1de, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a1e1	 Bytes: 4
  %loadMem_42a1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1e1 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1e1)
  store %struct.Memory* %call_42a1e1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a1e5	 Bytes: 3
  %loadMem_42a1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1e5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1e5)
  store %struct.Memory* %call_42a1e5, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a1e8	 Bytes: 4
  %loadMem_42a1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1e8 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1e8)
  store %struct.Memory* %call_42a1e8, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 42a1ec	 Bytes: 6
  %loadMem_42a1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1ec = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1ec)
  store %struct.Memory* %call_42a1ec, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a1f2	 Bytes: 3
  %loadMem_42a1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1f2 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1f2)
  store %struct.Memory* %call_42a1f2, %struct.Memory** %MEMORY

  ; Code: je .L_42a223	 RIP: 42a1f5	 Bytes: 6
  %loadMem_42a1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1f5 = call %struct.Memory* @routine_je_.L_42a223(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1f5, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42a1f5, %struct.Memory** %MEMORY

  %loadBr_42a1f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a1f5 = icmp eq i8 %loadBr_42a1f5, 1
  br i1 %cmpBr_42a1f5, label %block_.L_42a223, label %block_42a1fb

block_42a1fb:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a1fb	 Bytes: 4
  %loadMem_42a1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1fb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1fb)
  store %struct.Memory* %call_42a1fb, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a1ff	 Bytes: 3
  %loadMem_42a1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a1ff = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a1ff)
  store %struct.Memory* %call_42a1ff, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a202	 Bytes: 3
  %loadMem_42a202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a202 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a202)
  store %struct.Memory* %call_42a202, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a205	 Bytes: 3
  %loadMem_42a205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a205 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a205)
  store %struct.Memory* %call_42a205, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a208	 Bytes: 4
  %loadMem_42a208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a208 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a208)
  store %struct.Memory* %call_42a208, %struct.Memory** %MEMORY

  ; Code: subl $0x30, %ecx	 RIP: 42a20c	 Bytes: 3
  %loadMem_42a20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a20c = call %struct.Memory* @routine_subl__0x30___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a20c)
  store %struct.Memory* %call_42a20c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a20f	 Bytes: 4
  %loadMem_42a20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a20f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a20f)
  store %struct.Memory* %call_42a20f, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42a213	 Bytes: 4
  %loadMem_42a213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a213 = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a213)
  store %struct.Memory* %call_42a213, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a217	 Bytes: 4
  %loadMem_42a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a217 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a217)
  store %struct.Memory* %call_42a217, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a21b	 Bytes: 3
  %loadMem_42a21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a21b = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a21b)
  store %struct.Memory* %call_42a21b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a2f4	 RIP: 42a21e	 Bytes: 5
  %loadMem_42a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a21e = call %struct.Memory* @routine_jmpq_.L_42a2f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a21e, i64 214, i64 5)
  store %struct.Memory* %call_42a21e, %struct.Memory** %MEMORY

  br label %block_.L_42a2f4

  ; Code: .L_42a223:	 RIP: 42a223	 Bytes: 0
block_.L_42a223:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a223	 Bytes: 5
  %loadMem1_42a223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a223 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a223, i64 -166675, i64 5, i64 5)
  store %struct.Memory* %call1_42a223, %struct.Memory** %MEMORY

  %loadMem2_42a223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a223 = load i64, i64* %3
  %call2_42a223 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a223, %struct.Memory* %loadMem2_42a223)
  store %struct.Memory* %call2_42a223, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a228	 Bytes: 3
  %loadMem_42a228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a228 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a228)
  store %struct.Memory* %call_42a228, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a22b	 Bytes: 4
  %loadMem_42a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a22b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a22b)
  store %struct.Memory* %call_42a22b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a22f	 Bytes: 3
  %loadMem_42a22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a22f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a22f)
  store %struct.Memory* %call_42a22f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a232	 Bytes: 3
  %loadMem_42a232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a232 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a232)
  store %struct.Memory* %call_42a232, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a235	 Bytes: 3
  %loadMem_42a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a235 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a235)
  store %struct.Memory* %call_42a235, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a238	 Bytes: 4
  %loadMem_42a238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a238 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a238)
  store %struct.Memory* %call_42a238, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a23c	 Bytes: 3
  %loadMem_42a23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a23c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a23c)
  store %struct.Memory* %call_42a23c, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a23f	 Bytes: 4
  %loadMem_42a23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a23f = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a23f)
  store %struct.Memory* %call_42a23f, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %edx	 RIP: 42a243	 Bytes: 6
  %loadMem_42a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a243 = call %struct.Memory* @routine_andl__0x200___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a243)
  store %struct.Memory* %call_42a243, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a249	 Bytes: 3
  %loadMem_42a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a249 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a249)
  store %struct.Memory* %call_42a249, %struct.Memory** %MEMORY

  ; Code: je .L_42a27d	 RIP: 42a24c	 Bytes: 6
  %loadMem_42a24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a24c = call %struct.Memory* @routine_je_.L_42a27d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a24c, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a24c, %struct.Memory** %MEMORY

  %loadBr_42a24c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a24c = icmp eq i8 %loadBr_42a24c, 1
  br i1 %cmpBr_42a24c, label %block_.L_42a27d, label %block_42a252

block_42a252:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a252	 Bytes: 4
  %loadMem_42a252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a252 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a252)
  store %struct.Memory* %call_42a252, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a256	 Bytes: 3
  %loadMem_42a256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a256 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a256)
  store %struct.Memory* %call_42a256, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a259	 Bytes: 3
  %loadMem_42a259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a259 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a259)
  store %struct.Memory* %call_42a259, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a25c	 Bytes: 3
  %loadMem_42a25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a25c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a25c)
  store %struct.Memory* %call_42a25c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a25f	 Bytes: 4
  %loadMem_42a25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a25f = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a25f)
  store %struct.Memory* %call_42a25f, %struct.Memory** %MEMORY

  ; Code: subl $0x61, %ecx	 RIP: 42a263	 Bytes: 3
  %loadMem_42a263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a263 = call %struct.Memory* @routine_subl__0x61___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a263)
  store %struct.Memory* %call_42a263, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a266	 Bytes: 3
  %loadMem_42a266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a266 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a266)
  store %struct.Memory* %call_42a266, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a269	 Bytes: 4
  %loadMem_42a269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a269 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a269)
  store %struct.Memory* %call_42a269, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42a26d	 Bytes: 4
  %loadMem_42a26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a26d = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a26d)
  store %struct.Memory* %call_42a26d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a271	 Bytes: 4
  %loadMem_42a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a271 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a271)
  store %struct.Memory* %call_42a271, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a275	 Bytes: 3
  %loadMem_42a275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a275 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a275)
  store %struct.Memory* %call_42a275, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a2ef	 RIP: 42a278	 Bytes: 5
  %loadMem_42a278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a278 = call %struct.Memory* @routine_jmpq_.L_42a2ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a278, i64 119, i64 5)
  store %struct.Memory* %call_42a278, %struct.Memory** %MEMORY

  br label %block_.L_42a2ef

  ; Code: .L_42a27d:	 RIP: 42a27d	 Bytes: 0
block_.L_42a27d:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a27d	 Bytes: 5
  %loadMem1_42a27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a27d = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a27d, i64 -166765, i64 5, i64 5)
  store %struct.Memory* %call1_42a27d, %struct.Memory** %MEMORY

  %loadMem2_42a27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a27d = load i64, i64* %3
  %call2_42a27d = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a27d, %struct.Memory* %loadMem2_42a27d)
  store %struct.Memory* %call2_42a27d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a282	 Bytes: 3
  %loadMem_42a282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a282 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a282)
  store %struct.Memory* %call_42a282, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a285	 Bytes: 4
  %loadMem_42a285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a285 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a285)
  store %struct.Memory* %call_42a285, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a289	 Bytes: 3
  %loadMem_42a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a289 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a289)
  store %struct.Memory* %call_42a289, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a28c	 Bytes: 3
  %loadMem_42a28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a28c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a28c)
  store %struct.Memory* %call_42a28c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a28f	 Bytes: 3
  %loadMem_42a28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a28f = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a28f)
  store %struct.Memory* %call_42a28f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a292	 Bytes: 4
  %loadMem_42a292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a292 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a292)
  store %struct.Memory* %call_42a292, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a296	 Bytes: 3
  %loadMem_42a296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a296 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a296)
  store %struct.Memory* %call_42a296, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a299	 Bytes: 4
  %loadMem_42a299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a299 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a299)
  store %struct.Memory* %call_42a299, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %edx	 RIP: 42a29d	 Bytes: 6
  %loadMem_42a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a29d = call %struct.Memory* @routine_andl__0x100___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a29d)
  store %struct.Memory* %call_42a29d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a2a3	 Bytes: 3
  %loadMem_42a2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2a3 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2a3)
  store %struct.Memory* %call_42a2a3, %struct.Memory** %MEMORY

  ; Code: je .L_42a2d7	 RIP: 42a2a6	 Bytes: 6
  %loadMem_42a2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2a6 = call %struct.Memory* @routine_je_.L_42a2d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2a6, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a2a6, %struct.Memory** %MEMORY

  %loadBr_42a2a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a2a6 = icmp eq i8 %loadBr_42a2a6, 1
  br i1 %cmpBr_42a2a6, label %block_.L_42a2d7, label %block_42a2ac

block_42a2ac:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a2ac	 Bytes: 4
  %loadMem_42a2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2ac = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2ac)
  store %struct.Memory* %call_42a2ac, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a2b0	 Bytes: 3
  %loadMem_42a2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2b0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2b0)
  store %struct.Memory* %call_42a2b0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a2b3	 Bytes: 3
  %loadMem_42a2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2b3 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2b3)
  store %struct.Memory* %call_42a2b3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a2b6	 Bytes: 3
  %loadMem_42a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2b6 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2b6)
  store %struct.Memory* %call_42a2b6, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a2b9	 Bytes: 4
  %loadMem_42a2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2b9 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2b9)
  store %struct.Memory* %call_42a2b9, %struct.Memory** %MEMORY

  ; Code: subl $0x41, %ecx	 RIP: 42a2bd	 Bytes: 3
  %loadMem_42a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2bd = call %struct.Memory* @routine_subl__0x41___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2bd)
  store %struct.Memory* %call_42a2bd, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a2c0	 Bytes: 3
  %loadMem_42a2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2c0 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2c0)
  store %struct.Memory* %call_42a2c0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a2c3	 Bytes: 4
  %loadMem_42a2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2c3)
  store %struct.Memory* %call_42a2c3, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42a2c7	 Bytes: 4
  %loadMem_42a2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2c7 = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2c7)
  store %struct.Memory* %call_42a2c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a2cb	 Bytes: 4
  %loadMem_42a2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2cb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2cb)
  store %struct.Memory* %call_42a2cb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a2cf	 Bytes: 3
  %loadMem_42a2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2cf = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2cf)
  store %struct.Memory* %call_42a2cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a2ea	 RIP: 42a2d2	 Bytes: 5
  %loadMem_42a2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2d2 = call %struct.Memory* @routine_jmpq_.L_42a2ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2d2, i64 24, i64 5)
  store %struct.Memory* %call_42a2d2, %struct.Memory** %MEMORY

  br label %block_.L_42a2ea

  ; Code: .L_42a2d7:	 RIP: 42a2d7	 Bytes: 0
block_.L_42a2d7:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a2d7	 Bytes: 4
  %loadMem_42a2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2d7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2d7)
  store %struct.Memory* %call_42a2d7, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 42a2db	 Bytes: 4
  %loadMem_42a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2db = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2db)
  store %struct.Memory* %call_42a2db, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42a2df	 Bytes: 4
  %loadMem_42a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2df = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2df)
  store %struct.Memory* %call_42a2df, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, (%rax,%rcx,4)	 RIP: 42a2e3	 Bytes: 7
  %loadMem_42a2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2e3 = call %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2e3)
  store %struct.Memory* %call_42a2e3, %struct.Memory** %MEMORY

  ; Code: .L_42a2ea:	 RIP: 42a2ea	 Bytes: 0
  br label %block_.L_42a2ea
block_.L_42a2ea:

  ; Code: jmpq .L_42a2ef	 RIP: 42a2ea	 Bytes: 5
  %loadMem_42a2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2ea = call %struct.Memory* @routine_jmpq_.L_42a2ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2ea, i64 5, i64 5)
  store %struct.Memory* %call_42a2ea, %struct.Memory** %MEMORY

  br label %block_.L_42a2ef

  ; Code: .L_42a2ef:	 RIP: 42a2ef	 Bytes: 0
block_.L_42a2ef:

  ; Code: jmpq .L_42a2f4	 RIP: 42a2ef	 Bytes: 5
  %loadMem_42a2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2ef = call %struct.Memory* @routine_jmpq_.L_42a2f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2ef, i64 5, i64 5)
  store %struct.Memory* %call_42a2ef, %struct.Memory** %MEMORY

  br label %block_.L_42a2f4

  ; Code: .L_42a2f4:	 RIP: 42a2f4	 Bytes: 0
block_.L_42a2f4:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42a2f4	 Bytes: 3
  %loadMem_42a2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2f4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2f4)
  store %struct.Memory* %call_42a2f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a2f7	 Bytes: 3
  %loadMem_42a2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2f7)
  store %struct.Memory* %call_42a2f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42a2fa	 Bytes: 3
  %loadMem_42a2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2fa = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2fa)
  store %struct.Memory* %call_42a2fa, %struct.Memory** %MEMORY

  ; Code: .L_42a2fd:	 RIP: 42a2fd	 Bytes: 0
  br label %block_.L_42a2fd
block_.L_42a2fd:

  ; Code: jmpq .L_42a302	 RIP: 42a2fd	 Bytes: 5
  %loadMem_42a2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a2fd = call %struct.Memory* @routine_jmpq_.L_42a302(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a2fd, i64 5, i64 5)
  store %struct.Memory* %call_42a2fd, %struct.Memory** %MEMORY

  br label %block_.L_42a302

  ; Code: .L_42a302:	 RIP: 42a302	 Bytes: 0
block_.L_42a302:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a302	 Bytes: 3
  %loadMem_42a302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a302 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a302)
  store %struct.Memory* %call_42a302, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a305	 Bytes: 3
  %loadMem_42a305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a305 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a305)
  store %struct.Memory* %call_42a305, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42a308	 Bytes: 3
  %loadMem_42a308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a308 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a308)
  store %struct.Memory* %call_42a308, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a1a5	 RIP: 42a30b	 Bytes: 5
  %loadMem_42a30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a30b = call %struct.Memory* @routine_jmpq_.L_42a1a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a30b, i64 -358, i64 5)
  store %struct.Memory* %call_42a30b, %struct.Memory** %MEMORY

  br label %block_.L_42a1a5

  ; Code: .L_42a310:	 RIP: 42a310	 Bytes: 0
block_.L_42a310:

  ; Code: jmpq .L_42a315	 RIP: 42a310	 Bytes: 5
  %loadMem_42a310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a310 = call %struct.Memory* @routine_jmpq_.L_42a315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a310, i64 5, i64 5)
  store %struct.Memory* %call_42a310, %struct.Memory** %MEMORY

  br label %block_.L_42a315

  ; Code: .L_42a315:	 RIP: 42a315	 Bytes: 0
block_.L_42a315:

  ; Code: movq $0x458823, %rsi	 RIP: 42a315	 Bytes: 10
  %loadMem_42a315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a315 = call %struct.Memory* @routine_movq__0x458823___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a315)
  store %struct.Memory* %call_42a315, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42a31f	 Bytes: 4
  %loadMem_42a31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a31f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a31f)
  store %struct.Memory* %call_42a31f, %struct.Memory** %MEMORY

  ; Code: callq .MSAGetGC	 RIP: 42a323	 Bytes: 5
  %loadMem1_42a323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a323 = call %struct.Memory* @routine_callq_.MSAGetGC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a323, i64 15389, i64 5, i64 5)
  store %struct.Memory* %call1_42a323, %struct.Memory** %MEMORY

  %loadMem2_42a323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a323 = load i64, i64* %3
  %call2_42a323 = call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* %0, i64  %loadPC_42a323, %struct.Memory* %loadMem2_42a323)
  store %struct.Memory* %call2_42a323, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 42a328	 Bytes: 4
  %loadMem_42a328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a328 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a328)
  store %struct.Memory* %call_42a328, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42a32c	 Bytes: 4
  %loadMem_42a32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a32c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a32c)
  store %struct.Memory* %call_42a32c, %struct.Memory** %MEMORY

  ; Code: je .L_42a4e7	 RIP: 42a330	 Bytes: 6
  %loadMem_42a330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a330 = call %struct.Memory* @routine_je_.L_42a4e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a330, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_42a330, %struct.Memory** %MEMORY

  %loadBr_42a330 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a330 = icmp eq i8 %loadBr_42a330, 1
  br i1 %cmpBr_42a330, label %block_.L_42a4e7, label %block_42a336

block_42a336:
  ; Code: movq $0x45863c, %rdi	 RIP: 42a336	 Bytes: 10
  %loadMem_42a336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a336 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a336)
  store %struct.Memory* %call_42a336, %struct.Memory** %MEMORY

  ; Code: movl $0x38f, %esi	 RIP: 42a340	 Bytes: 5
  %loadMem_42a340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a340 = call %struct.Memory* @routine_movl__0x38f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a340)
  store %struct.Memory* %call_42a340, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a345	 Bytes: 4
  %loadMem_42a345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a345 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a345)
  store %struct.Memory* %call_42a345, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %ecx	 RIP: 42a349	 Bytes: 6
  %loadMem_42a349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a349 = call %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a349)
  store %struct.Memory* %call_42a349, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a34f	 Bytes: 3
  %loadMem_42a34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a34f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a34f)
  store %struct.Memory* %call_42a34f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 42a352	 Bytes: 3
  %loadMem_42a352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a352 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a352)
  store %struct.Memory* %call_42a352, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42a355	 Bytes: 4
  %loadMem_42a355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a355 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a355)
  store %struct.Memory* %call_42a355, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42a359	 Bytes: 3
  %loadMem_42a359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a359 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a359)
  store %struct.Memory* %call_42a359, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42a35c	 Bytes: 5
  %loadMem1_42a35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a35c = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a35c, i64 113924, i64 5, i64 5)
  store %struct.Memory* %call1_42a35c, %struct.Memory** %MEMORY

  %loadMem2_42a35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a35c = load i64, i64* %3
  %call2_42a35c = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42a35c, %struct.Memory* %loadMem2_42a35c)
  store %struct.Memory* %call2_42a35c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42a361	 Bytes: 4
  %loadMem_42a361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a361 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a361)
  store %struct.Memory* %call_42a361, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x68(%rdx)	 RIP: 42a365	 Bytes: 4
  %loadMem_42a365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a365 = call %struct.Memory* @routine_movq__rax__0x68__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a365)
  store %struct.Memory* %call_42a365, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 42a369	 Bytes: 7
  %loadMem_42a369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a369 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a369)
  store %struct.Memory* %call_42a369, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 42a370	 Bytes: 7
  %loadMem_42a370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a370 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a370)
  store %struct.Memory* %call_42a370, %struct.Memory** %MEMORY

  ; Code: .L_42a377:	 RIP: 42a377	 Bytes: 0
  br label %block_.L_42a377
block_.L_42a377:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a377	 Bytes: 3
  %loadMem_42a377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a377 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a377)
  store %struct.Memory* %call_42a377, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42a37a	 Bytes: 4
  %loadMem_42a37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a37a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a37a)
  store %struct.Memory* %call_42a37a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42a37e	 Bytes: 3
  %loadMem_42a37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a37e = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a37e)
  store %struct.Memory* %call_42a37e, %struct.Memory** %MEMORY

  ; Code: jg .L_42a4e2	 RIP: 42a381	 Bytes: 6
  %loadMem_42a381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a381 = call %struct.Memory* @routine_jg_.L_42a4e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a381, i8* %BRANCH_TAKEN, i64 353, i64 6, i64 6)
  store %struct.Memory* %call_42a381, %struct.Memory** %MEMORY

  %loadBr_42a381 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a381 = icmp eq i8 %loadBr_42a381, 1
  br i1 %cmpBr_42a381, label %block_.L_42a4e2, label %block_42a387

block_42a387:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42a387	 Bytes: 4
  %loadMem_42a387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a387 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a387)
  store %struct.Memory* %call_42a387, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42a38b	 Bytes: 4
  %loadMem_42a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a38b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a38b)
  store %struct.Memory* %call_42a38b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a38f	 Bytes: 3
  %loadMem_42a38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a38f = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a38f)
  store %struct.Memory* %call_42a38f, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 42a392	 Bytes: 3
  %loadMem_42a392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a392 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a392)
  store %struct.Memory* %call_42a392, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a395	 Bytes: 3
  %loadMem_42a395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a395 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a395)
  store %struct.Memory* %call_42a395, %struct.Memory** %MEMORY

  ; Code: je .L_42a4cf	 RIP: 42a398	 Bytes: 6
  %loadMem_42a398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a398 = call %struct.Memory* @routine_je_.L_42a4cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a398, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_42a398, %struct.Memory** %MEMORY

  %loadBr_42a398 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a398 = icmp eq i8 %loadBr_42a398, 1
  br i1 %cmpBr_42a398, label %block_.L_42a4cf, label %block_42a39e

block_42a39e:
  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a39e	 Bytes: 5
  %loadMem1_42a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a39e = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a39e, i64 -167054, i64 5, i64 5)
  store %struct.Memory* %call1_42a39e, %struct.Memory** %MEMORY

  %loadMem2_42a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a39e = load i64, i64* %3
  %call2_42a39e = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a39e, %struct.Memory* %loadMem2_42a39e)
  store %struct.Memory* %call2_42a39e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a3a3	 Bytes: 3
  %loadMem_42a3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3a3 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3a3)
  store %struct.Memory* %call_42a3a3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a3a6	 Bytes: 4
  %loadMem_42a3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3a6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3a6)
  store %struct.Memory* %call_42a3a6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a3aa	 Bytes: 3
  %loadMem_42a3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3aa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3aa)
  store %struct.Memory* %call_42a3aa, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a3ad	 Bytes: 3
  %loadMem_42a3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3ad = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3ad)
  store %struct.Memory* %call_42a3ad, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a3b0	 Bytes: 3
  %loadMem_42a3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3b0 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3b0)
  store %struct.Memory* %call_42a3b0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a3b3	 Bytes: 4
  %loadMem_42a3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3b3 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3b3)
  store %struct.Memory* %call_42a3b3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a3b7	 Bytes: 3
  %loadMem_42a3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3b7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3b7)
  store %struct.Memory* %call_42a3b7, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a3ba	 Bytes: 4
  %loadMem_42a3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3ba = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3ba)
  store %struct.Memory* %call_42a3ba, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 42a3be	 Bytes: 6
  %loadMem_42a3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3be = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3be)
  store %struct.Memory* %call_42a3be, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a3c4	 Bytes: 3
  %loadMem_42a3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3c4 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3c4)
  store %struct.Memory* %call_42a3c4, %struct.Memory** %MEMORY

  ; Code: je .L_42a3f5	 RIP: 42a3c7	 Bytes: 6
  %loadMem_42a3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3c7 = call %struct.Memory* @routine_je_.L_42a3f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3c7, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42a3c7, %struct.Memory** %MEMORY

  %loadBr_42a3c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a3c7 = icmp eq i8 %loadBr_42a3c7, 1
  br i1 %cmpBr_42a3c7, label %block_.L_42a3f5, label %block_42a3cd

block_42a3cd:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a3cd	 Bytes: 4
  %loadMem_42a3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3cd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3cd)
  store %struct.Memory* %call_42a3cd, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a3d1	 Bytes: 3
  %loadMem_42a3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3d1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3d1)
  store %struct.Memory* %call_42a3d1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a3d4	 Bytes: 3
  %loadMem_42a3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3d4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3d4)
  store %struct.Memory* %call_42a3d4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a3d7	 Bytes: 3
  %loadMem_42a3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3d7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3d7)
  store %struct.Memory* %call_42a3d7, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a3da	 Bytes: 4
  %loadMem_42a3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3da = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3da)
  store %struct.Memory* %call_42a3da, %struct.Memory** %MEMORY

  ; Code: subl $0x30, %ecx	 RIP: 42a3de	 Bytes: 3
  %loadMem_42a3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3de = call %struct.Memory* @routine_subl__0x30___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3de)
  store %struct.Memory* %call_42a3de, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a3e1	 Bytes: 4
  %loadMem_42a3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3e1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3e1)
  store %struct.Memory* %call_42a3e1, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42a3e5	 Bytes: 4
  %loadMem_42a3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3e5 = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3e5)
  store %struct.Memory* %call_42a3e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a3e9	 Bytes: 4
  %loadMem_42a3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3e9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3e9)
  store %struct.Memory* %call_42a3e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a3ed	 Bytes: 3
  %loadMem_42a3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3ed = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3ed)
  store %struct.Memory* %call_42a3ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a4c6	 RIP: 42a3f0	 Bytes: 5
  %loadMem_42a3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3f0 = call %struct.Memory* @routine_jmpq_.L_42a4c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3f0, i64 214, i64 5)
  store %struct.Memory* %call_42a3f0, %struct.Memory** %MEMORY

  br label %block_.L_42a4c6

  ; Code: .L_42a3f5:	 RIP: 42a3f5	 Bytes: 0
block_.L_42a3f5:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a3f5	 Bytes: 5
  %loadMem1_42a3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a3f5 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a3f5, i64 -167141, i64 5, i64 5)
  store %struct.Memory* %call1_42a3f5, %struct.Memory** %MEMORY

  %loadMem2_42a3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a3f5 = load i64, i64* %3
  %call2_42a3f5 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a3f5, %struct.Memory* %loadMem2_42a3f5)
  store %struct.Memory* %call2_42a3f5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a3fa	 Bytes: 3
  %loadMem_42a3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3fa = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3fa)
  store %struct.Memory* %call_42a3fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a3fd	 Bytes: 4
  %loadMem_42a3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a3fd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a3fd)
  store %struct.Memory* %call_42a3fd, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a401	 Bytes: 3
  %loadMem_42a401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a401 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a401)
  store %struct.Memory* %call_42a401, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a404	 Bytes: 3
  %loadMem_42a404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a404 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a404)
  store %struct.Memory* %call_42a404, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a407	 Bytes: 3
  %loadMem_42a407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a407 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a407)
  store %struct.Memory* %call_42a407, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a40a	 Bytes: 4
  %loadMem_42a40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a40a = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a40a)
  store %struct.Memory* %call_42a40a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a40e	 Bytes: 3
  %loadMem_42a40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a40e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a40e)
  store %struct.Memory* %call_42a40e, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a411	 Bytes: 4
  %loadMem_42a411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a411 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a411)
  store %struct.Memory* %call_42a411, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %edx	 RIP: 42a415	 Bytes: 6
  %loadMem_42a415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a415 = call %struct.Memory* @routine_andl__0x200___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a415)
  store %struct.Memory* %call_42a415, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a41b	 Bytes: 3
  %loadMem_42a41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a41b = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a41b)
  store %struct.Memory* %call_42a41b, %struct.Memory** %MEMORY

  ; Code: je .L_42a44f	 RIP: 42a41e	 Bytes: 6
  %loadMem_42a41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a41e = call %struct.Memory* @routine_je_.L_42a44f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a41e, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a41e, %struct.Memory** %MEMORY

  %loadBr_42a41e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a41e = icmp eq i8 %loadBr_42a41e, 1
  br i1 %cmpBr_42a41e, label %block_.L_42a44f, label %block_42a424

block_42a424:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a424	 Bytes: 4
  %loadMem_42a424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a424 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a424)
  store %struct.Memory* %call_42a424, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a428	 Bytes: 3
  %loadMem_42a428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a428 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a428)
  store %struct.Memory* %call_42a428, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a42b	 Bytes: 3
  %loadMem_42a42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a42b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a42b)
  store %struct.Memory* %call_42a42b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a42e	 Bytes: 3
  %loadMem_42a42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a42e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a42e)
  store %struct.Memory* %call_42a42e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a431	 Bytes: 4
  %loadMem_42a431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a431 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a431)
  store %struct.Memory* %call_42a431, %struct.Memory** %MEMORY

  ; Code: subl $0x61, %ecx	 RIP: 42a435	 Bytes: 3
  %loadMem_42a435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a435 = call %struct.Memory* @routine_subl__0x61___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a435)
  store %struct.Memory* %call_42a435, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a438	 Bytes: 3
  %loadMem_42a438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a438 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a438)
  store %struct.Memory* %call_42a438, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a43b	 Bytes: 4
  %loadMem_42a43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a43b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a43b)
  store %struct.Memory* %call_42a43b, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42a43f	 Bytes: 4
  %loadMem_42a43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a43f = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a43f)
  store %struct.Memory* %call_42a43f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a443	 Bytes: 4
  %loadMem_42a443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a443 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a443)
  store %struct.Memory* %call_42a443, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a447	 Bytes: 3
  %loadMem_42a447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a447 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a447)
  store %struct.Memory* %call_42a447, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a4c1	 RIP: 42a44a	 Bytes: 5
  %loadMem_42a44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a44a = call %struct.Memory* @routine_jmpq_.L_42a4c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a44a, i64 119, i64 5)
  store %struct.Memory* %call_42a44a, %struct.Memory** %MEMORY

  br label %block_.L_42a4c1

  ; Code: .L_42a44f:	 RIP: 42a44f	 Bytes: 0
block_.L_42a44f:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a44f	 Bytes: 5
  %loadMem1_42a44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a44f = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a44f, i64 -167231, i64 5, i64 5)
  store %struct.Memory* %call1_42a44f, %struct.Memory** %MEMORY

  %loadMem2_42a44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a44f = load i64, i64* %3
  %call2_42a44f = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a44f, %struct.Memory* %loadMem2_42a44f)
  store %struct.Memory* %call2_42a44f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a454	 Bytes: 3
  %loadMem_42a454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a454 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a454)
  store %struct.Memory* %call_42a454, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a457	 Bytes: 4
  %loadMem_42a457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a457 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a457)
  store %struct.Memory* %call_42a457, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a45b	 Bytes: 3
  %loadMem_42a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a45b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a45b)
  store %struct.Memory* %call_42a45b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a45e	 Bytes: 3
  %loadMem_42a45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a45e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a45e)
  store %struct.Memory* %call_42a45e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a461	 Bytes: 3
  %loadMem_42a461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a461 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a461)
  store %struct.Memory* %call_42a461, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a464	 Bytes: 4
  %loadMem_42a464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a464 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a464)
  store %struct.Memory* %call_42a464, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a468	 Bytes: 3
  %loadMem_42a468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a468 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a468)
  store %struct.Memory* %call_42a468, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a46b	 Bytes: 4
  %loadMem_42a46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a46b = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a46b)
  store %struct.Memory* %call_42a46b, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %edx	 RIP: 42a46f	 Bytes: 6
  %loadMem_42a46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a46f = call %struct.Memory* @routine_andl__0x100___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a46f)
  store %struct.Memory* %call_42a46f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a475	 Bytes: 3
  %loadMem_42a475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a475 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a475)
  store %struct.Memory* %call_42a475, %struct.Memory** %MEMORY

  ; Code: je .L_42a4a9	 RIP: 42a478	 Bytes: 6
  %loadMem_42a478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a478 = call %struct.Memory* @routine_je_.L_42a4a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a478, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a478, %struct.Memory** %MEMORY

  %loadBr_42a478 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a478 = icmp eq i8 %loadBr_42a478, 1
  br i1 %cmpBr_42a478, label %block_.L_42a4a9, label %block_42a47e

block_42a47e:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a47e	 Bytes: 4
  %loadMem_42a47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a47e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a47e)
  store %struct.Memory* %call_42a47e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a482	 Bytes: 3
  %loadMem_42a482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a482 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a482)
  store %struct.Memory* %call_42a482, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a485	 Bytes: 3
  %loadMem_42a485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a485 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a485)
  store %struct.Memory* %call_42a485, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a488	 Bytes: 3
  %loadMem_42a488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a488 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a488)
  store %struct.Memory* %call_42a488, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a48b	 Bytes: 4
  %loadMem_42a48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a48b = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a48b)
  store %struct.Memory* %call_42a48b, %struct.Memory** %MEMORY

  ; Code: subl $0x41, %ecx	 RIP: 42a48f	 Bytes: 3
  %loadMem_42a48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a48f = call %struct.Memory* @routine_subl__0x41___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a48f)
  store %struct.Memory* %call_42a48f, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a492	 Bytes: 3
  %loadMem_42a492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a492 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a492)
  store %struct.Memory* %call_42a492, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a495	 Bytes: 4
  %loadMem_42a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a495 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a495)
  store %struct.Memory* %call_42a495, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42a499	 Bytes: 4
  %loadMem_42a499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a499 = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a499)
  store %struct.Memory* %call_42a499, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a49d	 Bytes: 4
  %loadMem_42a49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a49d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a49d)
  store %struct.Memory* %call_42a49d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a4a1	 Bytes: 3
  %loadMem_42a4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4a1 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4a1)
  store %struct.Memory* %call_42a4a1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a4bc	 RIP: 42a4a4	 Bytes: 5
  %loadMem_42a4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4a4 = call %struct.Memory* @routine_jmpq_.L_42a4bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4a4, i64 24, i64 5)
  store %struct.Memory* %call_42a4a4, %struct.Memory** %MEMORY

  br label %block_.L_42a4bc

  ; Code: .L_42a4a9:	 RIP: 42a4a9	 Bytes: 0
block_.L_42a4a9:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a4a9	 Bytes: 4
  %loadMem_42a4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4a9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4a9)
  store %struct.Memory* %call_42a4a9, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 42a4ad	 Bytes: 4
  %loadMem_42a4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4ad = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4ad)
  store %struct.Memory* %call_42a4ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42a4b1	 Bytes: 4
  %loadMem_42a4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4b1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4b1)
  store %struct.Memory* %call_42a4b1, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, (%rax,%rcx,4)	 RIP: 42a4b5	 Bytes: 7
  %loadMem_42a4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4b5 = call %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4b5)
  store %struct.Memory* %call_42a4b5, %struct.Memory** %MEMORY

  ; Code: .L_42a4bc:	 RIP: 42a4bc	 Bytes: 0
  br label %block_.L_42a4bc
block_.L_42a4bc:

  ; Code: jmpq .L_42a4c1	 RIP: 42a4bc	 Bytes: 5
  %loadMem_42a4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4bc = call %struct.Memory* @routine_jmpq_.L_42a4c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4bc, i64 5, i64 5)
  store %struct.Memory* %call_42a4bc, %struct.Memory** %MEMORY

  br label %block_.L_42a4c1

  ; Code: .L_42a4c1:	 RIP: 42a4c1	 Bytes: 0
block_.L_42a4c1:

  ; Code: jmpq .L_42a4c6	 RIP: 42a4c1	 Bytes: 5
  %loadMem_42a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4c1 = call %struct.Memory* @routine_jmpq_.L_42a4c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4c1, i64 5, i64 5)
  store %struct.Memory* %call_42a4c1, %struct.Memory** %MEMORY

  br label %block_.L_42a4c6

  ; Code: .L_42a4c6:	 RIP: 42a4c6	 Bytes: 0
block_.L_42a4c6:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42a4c6	 Bytes: 3
  %loadMem_42a4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4c6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4c6)
  store %struct.Memory* %call_42a4c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a4c9	 Bytes: 3
  %loadMem_42a4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4c9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4c9)
  store %struct.Memory* %call_42a4c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42a4cc	 Bytes: 3
  %loadMem_42a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4cc = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4cc)
  store %struct.Memory* %call_42a4cc, %struct.Memory** %MEMORY

  ; Code: .L_42a4cf:	 RIP: 42a4cf	 Bytes: 0
  br label %block_.L_42a4cf
block_.L_42a4cf:

  ; Code: jmpq .L_42a4d4	 RIP: 42a4cf	 Bytes: 5
  %loadMem_42a4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4cf = call %struct.Memory* @routine_jmpq_.L_42a4d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4cf, i64 5, i64 5)
  store %struct.Memory* %call_42a4cf, %struct.Memory** %MEMORY

  br label %block_.L_42a4d4

  ; Code: .L_42a4d4:	 RIP: 42a4d4	 Bytes: 0
block_.L_42a4d4:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a4d4	 Bytes: 3
  %loadMem_42a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4d4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4d4)
  store %struct.Memory* %call_42a4d4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a4d7	 Bytes: 3
  %loadMem_42a4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4d7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4d7)
  store %struct.Memory* %call_42a4d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42a4da	 Bytes: 3
  %loadMem_42a4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4da = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4da)
  store %struct.Memory* %call_42a4da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a377	 RIP: 42a4dd	 Bytes: 5
  %loadMem_42a4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4dd = call %struct.Memory* @routine_jmpq_.L_42a377(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4dd, i64 -358, i64 5)
  store %struct.Memory* %call_42a4dd, %struct.Memory** %MEMORY

  br label %block_.L_42a377

  ; Code: .L_42a4e2:	 RIP: 42a4e2	 Bytes: 0
block_.L_42a4e2:

  ; Code: jmpq .L_42a4e7	 RIP: 42a4e2	 Bytes: 5
  %loadMem_42a4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4e2 = call %struct.Memory* @routine_jmpq_.L_42a4e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4e2, i64 5, i64 5)
  store %struct.Memory* %call_42a4e2, %struct.Memory** %MEMORY

  br label %block_.L_42a4e7

  ; Code: .L_42a4e7:	 RIP: 42a4e7	 Bytes: 0
block_.L_42a4e7:

  ; Code: movq $0x458829, %rsi	 RIP: 42a4e7	 Bytes: 10
  %loadMem_42a4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4e7 = call %struct.Memory* @routine_movq__0x458829___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4e7)
  store %struct.Memory* %call_42a4e7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 42a4f1	 Bytes: 4
  %loadMem_42a4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4f1)
  store %struct.Memory* %call_42a4f1, %struct.Memory** %MEMORY

  ; Code: callq .MSAGetGC	 RIP: 42a4f5	 Bytes: 5
  %loadMem1_42a4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a4f5 = call %struct.Memory* @routine_callq_.MSAGetGC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a4f5, i64 14923, i64 5, i64 5)
  store %struct.Memory* %call1_42a4f5, %struct.Memory** %MEMORY

  %loadMem2_42a4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a4f5 = load i64, i64* %3
  %call2_42a4f5 = call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* %0, i64  %loadPC_42a4f5, %struct.Memory* %loadMem2_42a4f5)
  store %struct.Memory* %call2_42a4f5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 42a4fa	 Bytes: 4
  %loadMem_42a4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4fa = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4fa)
  store %struct.Memory* %call_42a4fa, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42a4fe	 Bytes: 4
  %loadMem_42a4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4fe = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4fe)
  store %struct.Memory* %call_42a4fe, %struct.Memory** %MEMORY

  ; Code: je .L_42a6b9	 RIP: 42a502	 Bytes: 6
  %loadMem_42a502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a502 = call %struct.Memory* @routine_je_.L_42a6b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a502, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_42a502, %struct.Memory** %MEMORY

  %loadBr_42a502 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a502 = icmp eq i8 %loadBr_42a502, 1
  br i1 %cmpBr_42a502, label %block_.L_42a6b9, label %block_42a508

block_42a508:
  ; Code: movq $0x45863c, %rdi	 RIP: 42a508	 Bytes: 10
  %loadMem_42a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a508 = call %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a508)
  store %struct.Memory* %call_42a508, %struct.Memory** %MEMORY

  ; Code: movl $0x39e, %esi	 RIP: 42a512	 Bytes: 5
  %loadMem_42a512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a512 = call %struct.Memory* @routine_movl__0x39e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a512)
  store %struct.Memory* %call_42a512, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a517	 Bytes: 4
  %loadMem_42a517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a517 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a517)
  store %struct.Memory* %call_42a517, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %ecx	 RIP: 42a51b	 Bytes: 6
  %loadMem_42a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a51b = call %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a51b)
  store %struct.Memory* %call_42a51b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42a521	 Bytes: 3
  %loadMem_42a521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a521 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a521)
  store %struct.Memory* %call_42a521, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 42a524	 Bytes: 3
  %loadMem_42a524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a524 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a524)
  store %struct.Memory* %call_42a524, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 42a527	 Bytes: 4
  %loadMem_42a527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a527 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a527)
  store %struct.Memory* %call_42a527, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 42a52b	 Bytes: 3
  %loadMem_42a52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a52b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a52b)
  store %struct.Memory* %call_42a52b, %struct.Memory** %MEMORY

  ; Code: callq .sre_malloc	 RIP: 42a52e	 Bytes: 5
  %loadMem1_42a52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a52e = call %struct.Memory* @routine_callq_.sre_malloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a52e, i64 113458, i64 5, i64 5)
  store %struct.Memory* %call1_42a52e, %struct.Memory** %MEMORY

  %loadMem2_42a52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a52e = load i64, i64* %3
  %call2_42a52e = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64  %loadPC_42a52e, %struct.Memory* %loadMem2_42a52e)
  store %struct.Memory* %call2_42a52e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 42a533	 Bytes: 4
  %loadMem_42a533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a533 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a533)
  store %struct.Memory* %call_42a533, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x58(%rdx)	 RIP: 42a537	 Bytes: 4
  %loadMem_42a537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a537 = call %struct.Memory* @routine_movq__rax__0x58__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a537)
  store %struct.Memory* %call_42a537, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 42a53b	 Bytes: 7
  %loadMem_42a53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a53b = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a53b)
  store %struct.Memory* %call_42a53b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 42a542	 Bytes: 7
  %loadMem_42a542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a542 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a542)
  store %struct.Memory* %call_42a542, %struct.Memory** %MEMORY

  ; Code: .L_42a549:	 RIP: 42a549	 Bytes: 0
  br label %block_.L_42a549
block_.L_42a549:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a549	 Bytes: 3
  %loadMem_42a549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a549 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a549)
  store %struct.Memory* %call_42a549, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 42a54c	 Bytes: 4
  %loadMem_42a54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a54c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a54c)
  store %struct.Memory* %call_42a54c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 42a550	 Bytes: 3
  %loadMem_42a550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a550 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a550)
  store %struct.Memory* %call_42a550, %struct.Memory** %MEMORY

  ; Code: jg .L_42a6b4	 RIP: 42a553	 Bytes: 6
  %loadMem_42a553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a553 = call %struct.Memory* @routine_jg_.L_42a6b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a553, i8* %BRANCH_TAKEN, i64 353, i64 6, i64 6)
  store %struct.Memory* %call_42a553, %struct.Memory** %MEMORY

  %loadBr_42a553 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a553 = icmp eq i8 %loadBr_42a553, 1
  br i1 %cmpBr_42a553, label %block_.L_42a6b4, label %block_42a559

block_42a559:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 42a559	 Bytes: 4
  %loadMem_42a559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a559 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a559)
  store %struct.Memory* %call_42a559, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42a55d	 Bytes: 4
  %loadMem_42a55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a55d = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a55d)
  store %struct.Memory* %call_42a55d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 42a561	 Bytes: 3
  %loadMem_42a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a561 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a561)
  store %struct.Memory* %call_42a561, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %edx	 RIP: 42a564	 Bytes: 3
  %loadMem_42a564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a564 = call %struct.Memory* @routine_andl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a564)
  store %struct.Memory* %call_42a564, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a567	 Bytes: 3
  %loadMem_42a567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a567 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a567)
  store %struct.Memory* %call_42a567, %struct.Memory** %MEMORY

  ; Code: je .L_42a6a1	 RIP: 42a56a	 Bytes: 6
  %loadMem_42a56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a56a = call %struct.Memory* @routine_je_.L_42a6a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a56a, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_42a56a, %struct.Memory** %MEMORY

  %loadBr_42a56a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a56a = icmp eq i8 %loadBr_42a56a, 1
  br i1 %cmpBr_42a56a, label %block_.L_42a6a1, label %block_42a570

block_42a570:
  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a570	 Bytes: 5
  %loadMem1_42a570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a570 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a570, i64 -167520, i64 5, i64 5)
  store %struct.Memory* %call1_42a570, %struct.Memory** %MEMORY

  %loadMem2_42a570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a570 = load i64, i64* %3
  %call2_42a570 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a570, %struct.Memory* %loadMem2_42a570)
  store %struct.Memory* %call2_42a570, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a575	 Bytes: 3
  %loadMem_42a575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a575 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a575)
  store %struct.Memory* %call_42a575, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a578	 Bytes: 4
  %loadMem_42a578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a578 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a578)
  store %struct.Memory* %call_42a578, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a57c	 Bytes: 3
  %loadMem_42a57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a57c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a57c)
  store %struct.Memory* %call_42a57c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a57f	 Bytes: 3
  %loadMem_42a57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a57f = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a57f)
  store %struct.Memory* %call_42a57f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a582	 Bytes: 3
  %loadMem_42a582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a582 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a582)
  store %struct.Memory* %call_42a582, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a585	 Bytes: 4
  %loadMem_42a585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a585 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a585)
  store %struct.Memory* %call_42a585, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a589	 Bytes: 3
  %loadMem_42a589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a589 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a589)
  store %struct.Memory* %call_42a589, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a58c	 Bytes: 4
  %loadMem_42a58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a58c = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a58c)
  store %struct.Memory* %call_42a58c, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 42a590	 Bytes: 6
  %loadMem_42a590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a590 = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a590)
  store %struct.Memory* %call_42a590, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a596	 Bytes: 3
  %loadMem_42a596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a596 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a596)
  store %struct.Memory* %call_42a596, %struct.Memory** %MEMORY

  ; Code: je .L_42a5c7	 RIP: 42a599	 Bytes: 6
  %loadMem_42a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a599 = call %struct.Memory* @routine_je_.L_42a5c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a599, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_42a599, %struct.Memory** %MEMORY

  %loadBr_42a599 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a599 = icmp eq i8 %loadBr_42a599, 1
  br i1 %cmpBr_42a599, label %block_.L_42a5c7, label %block_42a59f

block_42a59f:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a59f	 Bytes: 4
  %loadMem_42a59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a59f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a59f)
  store %struct.Memory* %call_42a59f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a5a3	 Bytes: 3
  %loadMem_42a5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5a3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5a3)
  store %struct.Memory* %call_42a5a3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a5a6	 Bytes: 3
  %loadMem_42a5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5a6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5a6)
  store %struct.Memory* %call_42a5a6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a5a9	 Bytes: 3
  %loadMem_42a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5a9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5a9)
  store %struct.Memory* %call_42a5a9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a5ac	 Bytes: 4
  %loadMem_42a5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5ac = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5ac)
  store %struct.Memory* %call_42a5ac, %struct.Memory** %MEMORY

  ; Code: subl $0x30, %ecx	 RIP: 42a5b0	 Bytes: 3
  %loadMem_42a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5b0 = call %struct.Memory* @routine_subl__0x30___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5b0)
  store %struct.Memory* %call_42a5b0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a5b3	 Bytes: 4
  %loadMem_42a5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5b3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5b3)
  store %struct.Memory* %call_42a5b3, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42a5b7	 Bytes: 4
  %loadMem_42a5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5b7 = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5b7)
  store %struct.Memory* %call_42a5b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a5bb	 Bytes: 4
  %loadMem_42a5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5bb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5bb)
  store %struct.Memory* %call_42a5bb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a5bf	 Bytes: 3
  %loadMem_42a5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5bf = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5bf)
  store %struct.Memory* %call_42a5bf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a698	 RIP: 42a5c2	 Bytes: 5
  %loadMem_42a5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5c2 = call %struct.Memory* @routine_jmpq_.L_42a698(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5c2, i64 214, i64 5)
  store %struct.Memory* %call_42a5c2, %struct.Memory** %MEMORY

  br label %block_.L_42a698

  ; Code: .L_42a5c7:	 RIP: 42a5c7	 Bytes: 0
block_.L_42a5c7:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a5c7	 Bytes: 5
  %loadMem1_42a5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a5c7 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a5c7, i64 -167607, i64 5, i64 5)
  store %struct.Memory* %call1_42a5c7, %struct.Memory** %MEMORY

  %loadMem2_42a5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a5c7 = load i64, i64* %3
  %call2_42a5c7 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a5c7, %struct.Memory* %loadMem2_42a5c7)
  store %struct.Memory* %call2_42a5c7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a5cc	 Bytes: 3
  %loadMem_42a5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5cc = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5cc)
  store %struct.Memory* %call_42a5cc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a5cf	 Bytes: 4
  %loadMem_42a5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5cf = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5cf)
  store %struct.Memory* %call_42a5cf, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a5d3	 Bytes: 3
  %loadMem_42a5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5d3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5d3)
  store %struct.Memory* %call_42a5d3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a5d6	 Bytes: 3
  %loadMem_42a5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5d6 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5d6)
  store %struct.Memory* %call_42a5d6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a5d9	 Bytes: 3
  %loadMem_42a5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5d9 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5d9)
  store %struct.Memory* %call_42a5d9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a5dc	 Bytes: 4
  %loadMem_42a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5dc = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5dc)
  store %struct.Memory* %call_42a5dc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a5e0	 Bytes: 3
  %loadMem_42a5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5e0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5e0)
  store %struct.Memory* %call_42a5e0, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a5e3	 Bytes: 4
  %loadMem_42a5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5e3 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5e3)
  store %struct.Memory* %call_42a5e3, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %edx	 RIP: 42a5e7	 Bytes: 6
  %loadMem_42a5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5e7 = call %struct.Memory* @routine_andl__0x200___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5e7)
  store %struct.Memory* %call_42a5e7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a5ed	 Bytes: 3
  %loadMem_42a5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5ed = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5ed)
  store %struct.Memory* %call_42a5ed, %struct.Memory** %MEMORY

  ; Code: je .L_42a621	 RIP: 42a5f0	 Bytes: 6
  %loadMem_42a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5f0 = call %struct.Memory* @routine_je_.L_42a621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5f0, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a5f0, %struct.Memory** %MEMORY

  %loadBr_42a5f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a5f0 = icmp eq i8 %loadBr_42a5f0, 1
  br i1 %cmpBr_42a5f0, label %block_.L_42a621, label %block_42a5f6

block_42a5f6:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a5f6	 Bytes: 4
  %loadMem_42a5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5f6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5f6)
  store %struct.Memory* %call_42a5f6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a5fa	 Bytes: 3
  %loadMem_42a5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5fa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5fa)
  store %struct.Memory* %call_42a5fa, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a5fd	 Bytes: 3
  %loadMem_42a5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5fd = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5fd)
  store %struct.Memory* %call_42a5fd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a600	 Bytes: 3
  %loadMem_42a600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a600 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a600)
  store %struct.Memory* %call_42a600, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a603	 Bytes: 4
  %loadMem_42a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a603 = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a603)
  store %struct.Memory* %call_42a603, %struct.Memory** %MEMORY

  ; Code: subl $0x61, %ecx	 RIP: 42a607	 Bytes: 3
  %loadMem_42a607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a607 = call %struct.Memory* @routine_subl__0x61___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a607)
  store %struct.Memory* %call_42a607, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a60a	 Bytes: 3
  %loadMem_42a60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a60a = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a60a)
  store %struct.Memory* %call_42a60a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a60d	 Bytes: 4
  %loadMem_42a60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a60d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a60d)
  store %struct.Memory* %call_42a60d, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42a611	 Bytes: 4
  %loadMem_42a611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a611 = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a611)
  store %struct.Memory* %call_42a611, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a615	 Bytes: 4
  %loadMem_42a615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a615 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a615)
  store %struct.Memory* %call_42a615, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a619	 Bytes: 3
  %loadMem_42a619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a619 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a619)
  store %struct.Memory* %call_42a619, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a693	 RIP: 42a61c	 Bytes: 5
  %loadMem_42a61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a61c = call %struct.Memory* @routine_jmpq_.L_42a693(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a61c, i64 119, i64 5)
  store %struct.Memory* %call_42a61c, %struct.Memory** %MEMORY

  br label %block_.L_42a693

  ; Code: .L_42a621:	 RIP: 42a621	 Bytes: 0
block_.L_42a621:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 42a621	 Bytes: 5
  %loadMem1_42a621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a621 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a621, i64 -167697, i64 5, i64 5)
  store %struct.Memory* %call1_42a621, %struct.Memory** %MEMORY

  %loadMem2_42a621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a621 = load i64, i64* %3
  %call2_42a621 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_42a621, %struct.Memory* %loadMem2_42a621)
  store %struct.Memory* %call2_42a621, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a626	 Bytes: 3
  %loadMem_42a626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a626 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a626)
  store %struct.Memory* %call_42a626, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 42a629	 Bytes: 4
  %loadMem_42a629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a629 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a629)
  store %struct.Memory* %call_42a629, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 42a62d	 Bytes: 3
  %loadMem_42a62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a62d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a62d)
  store %struct.Memory* %call_42a62d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42a630	 Bytes: 3
  %loadMem_42a630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a630 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a630)
  store %struct.Memory* %call_42a630, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 42a633	 Bytes: 3
  %loadMem_42a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a633 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a633)
  store %struct.Memory* %call_42a633, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx,%rsi,1), %edx	 RIP: 42a636	 Bytes: 4
  %loadMem_42a636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a636 = call %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a636)
  store %struct.Memory* %call_42a636, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 42a63a	 Bytes: 3
  %loadMem_42a63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a63a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a63a)
  store %struct.Memory* %call_42a63a, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 42a63d	 Bytes: 4
  %loadMem_42a63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a63d = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a63d)
  store %struct.Memory* %call_42a63d, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %edx	 RIP: 42a641	 Bytes: 6
  %loadMem_42a641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a641 = call %struct.Memory* @routine_andl__0x100___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a641)
  store %struct.Memory* %call_42a641, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 42a647	 Bytes: 3
  %loadMem_42a647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a647 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a647)
  store %struct.Memory* %call_42a647, %struct.Memory** %MEMORY

  ; Code: je .L_42a67b	 RIP: 42a64a	 Bytes: 6
  %loadMem_42a64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a64a = call %struct.Memory* @routine_je_.L_42a67b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a64a, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_42a64a, %struct.Memory** %MEMORY

  %loadBr_42a64a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a64a = icmp eq i8 %loadBr_42a64a, 1
  br i1 %cmpBr_42a64a, label %block_.L_42a67b, label %block_42a650

block_42a650:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 42a650	 Bytes: 4
  %loadMem_42a650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a650 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a650)
  store %struct.Memory* %call_42a650, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 42a654	 Bytes: 3
  %loadMem_42a654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a654 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a654)
  store %struct.Memory* %call_42a654, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42a657	 Bytes: 3
  %loadMem_42a657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a657 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a657)
  store %struct.Memory* %call_42a657, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 42a65a	 Bytes: 3
  %loadMem_42a65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a65a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a65a)
  store %struct.Memory* %call_42a65a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %ecx	 RIP: 42a65d	 Bytes: 4
  %loadMem_42a65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a65d = call %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a65d)
  store %struct.Memory* %call_42a65d, %struct.Memory** %MEMORY

  ; Code: subl $0x41, %ecx	 RIP: 42a661	 Bytes: 3
  %loadMem_42a661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a661 = call %struct.Memory* @routine_subl__0x41___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a661)
  store %struct.Memory* %call_42a661, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 42a664	 Bytes: 3
  %loadMem_42a664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a664 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a664)
  store %struct.Memory* %call_42a664, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a667	 Bytes: 4
  %loadMem_42a667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a667 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a667)
  store %struct.Memory* %call_42a667, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42a66b	 Bytes: 4
  %loadMem_42a66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a66b = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a66b)
  store %struct.Memory* %call_42a66b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 42a66f	 Bytes: 4
  %loadMem_42a66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a66f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a66f)
  store %struct.Memory* %call_42a66f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 42a673	 Bytes: 3
  %loadMem_42a673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a673 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a673)
  store %struct.Memory* %call_42a673, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a68e	 RIP: 42a676	 Bytes: 5
  %loadMem_42a676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a676 = call %struct.Memory* @routine_jmpq_.L_42a68e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a676, i64 24, i64 5)
  store %struct.Memory* %call_42a676, %struct.Memory** %MEMORY

  br label %block_.L_42a68e

  ; Code: .L_42a67b:	 RIP: 42a67b	 Bytes: 0
block_.L_42a67b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a67b	 Bytes: 4
  %loadMem_42a67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a67b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a67b)
  store %struct.Memory* %call_42a67b, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 42a67f	 Bytes: 4
  %loadMem_42a67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a67f = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a67f)
  store %struct.Memory* %call_42a67f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 42a683	 Bytes: 4
  %loadMem_42a683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a683 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a683)
  store %struct.Memory* %call_42a683, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, (%rax,%rcx,4)	 RIP: 42a687	 Bytes: 7
  %loadMem_42a687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a687 = call %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a687)
  store %struct.Memory* %call_42a687, %struct.Memory** %MEMORY

  ; Code: .L_42a68e:	 RIP: 42a68e	 Bytes: 0
  br label %block_.L_42a68e
block_.L_42a68e:

  ; Code: jmpq .L_42a693	 RIP: 42a68e	 Bytes: 5
  %loadMem_42a68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a68e = call %struct.Memory* @routine_jmpq_.L_42a693(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a68e, i64 5, i64 5)
  store %struct.Memory* %call_42a68e, %struct.Memory** %MEMORY

  br label %block_.L_42a693

  ; Code: .L_42a693:	 RIP: 42a693	 Bytes: 0
block_.L_42a693:

  ; Code: jmpq .L_42a698	 RIP: 42a693	 Bytes: 5
  %loadMem_42a693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a693 = call %struct.Memory* @routine_jmpq_.L_42a698(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a693, i64 5, i64 5)
  store %struct.Memory* %call_42a693, %struct.Memory** %MEMORY

  br label %block_.L_42a698

  ; Code: .L_42a698:	 RIP: 42a698	 Bytes: 0
block_.L_42a698:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 42a698	 Bytes: 3
  %loadMem_42a698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a698 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a698)
  store %struct.Memory* %call_42a698, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a69b	 Bytes: 3
  %loadMem_42a69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a69b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a69b)
  store %struct.Memory* %call_42a69b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 42a69e	 Bytes: 3
  %loadMem_42a69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a69e = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a69e)
  store %struct.Memory* %call_42a69e, %struct.Memory** %MEMORY

  ; Code: .L_42a6a1:	 RIP: 42a6a1	 Bytes: 0
  br label %block_.L_42a6a1
block_.L_42a6a1:

  ; Code: jmpq .L_42a6a6	 RIP: 42a6a1	 Bytes: 5
  %loadMem_42a6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6a1 = call %struct.Memory* @routine_jmpq_.L_42a6a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6a1, i64 5, i64 5)
  store %struct.Memory* %call_42a6a1, %struct.Memory** %MEMORY

  br label %block_.L_42a6a6

  ; Code: .L_42a6a6:	 RIP: 42a6a6	 Bytes: 0
block_.L_42a6a6:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42a6a6	 Bytes: 3
  %loadMem_42a6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6a6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6a6)
  store %struct.Memory* %call_42a6a6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42a6a9	 Bytes: 3
  %loadMem_42a6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6a9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6a9)
  store %struct.Memory* %call_42a6a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 42a6ac	 Bytes: 3
  %loadMem_42a6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6ac = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6ac)
  store %struct.Memory* %call_42a6ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a549	 RIP: 42a6af	 Bytes: 5
  %loadMem_42a6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6af = call %struct.Memory* @routine_jmpq_.L_42a549(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6af, i64 -358, i64 5)
  store %struct.Memory* %call_42a6af, %struct.Memory** %MEMORY

  br label %block_.L_42a549

  ; Code: .L_42a6b4:	 RIP: 42a6b4	 Bytes: 0
block_.L_42a6b4:

  ; Code: jmpq .L_42a6b9	 RIP: 42a6b4	 Bytes: 5
  %loadMem_42a6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6b4 = call %struct.Memory* @routine_jmpq_.L_42a6b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6b4, i64 5, i64 5)
  store %struct.Memory* %call_42a6b4, %struct.Memory** %MEMORY

  br label %block_.L_42a6b9

  ; Code: .L_42a6b9:	 RIP: 42a6b9	 Bytes: 0
block_.L_42a6b9:

  ; Code: addq $0x40, %rsp	 RIP: 42a6b9	 Bytes: 4
  %loadMem_42a6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6b9 = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6b9)
  store %struct.Memory* %call_42a6b9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42a6bd	 Bytes: 1
  %loadMem_42a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6bd = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6bd)
  store %struct.Memory* %call_42a6bd, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42a6be	 Bytes: 1
  %loadMem_42a6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6be = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6be)
  store %struct.Memory* %call_42a6be, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42a6be
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
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

define %struct.Memory* @routine_cmpq__0x0__0x58__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
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

define %struct.Memory* @routine_je_.L_429efa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x20____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jg_.L_429ed7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_andl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
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


define %struct.Memory* @routine_je_.L_429ec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
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

define %struct.Memory* @routine_jne_.L_429e8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2e___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 46)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_429ea6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__eax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RDI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_429ec9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_429e3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_orl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 456
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_429fe0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jg_.L_429fbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_429faa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jne_.L_429f74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_429f8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_jmpq_.L_429faf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_429f22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_orl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42a0c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jg_.L_42a0a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_42a090(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jne_.L_42a05a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42a072(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_jmpq_.L_42a095(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42a008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_orl__0x2000___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8192)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jg_.L_42a12d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_42a11a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
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


define %struct.Memory* @routine_jmpq_.L_42a11f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42a0d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45881d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45881d_type* @G__0x45881d to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_orl__0x100___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_callq_.MSAGetGC(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_42a315(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x380___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 896)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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




define %struct.Memory* @routine_movq__rax__0x60__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jg_.L_42a310(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_42a2fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_andl__0x800___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42a223(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_subl__0x30___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 48)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_42a2f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_andl__0x200___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 512)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42a27d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_subl__0x61___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 97)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__0xa___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 10)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_42a2ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_andl__0x100___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 256)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_42a2d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_42a2ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -1)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_42a302(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42a1a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42a315(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x458823___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458823_type* @G__0x458823 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_je_.L_42a4e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x38f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 911)
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movq__rax__0x68__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jg_.L_42a4e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_42a4cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_42a3f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_42a4c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_je_.L_42a44f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_42a4c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_je_.L_42a4a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_42a4bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jmpq_.L_42a4d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42a377(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42a4e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x458829___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458829_type* @G__0x458829 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_je_.L_42a6b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x39e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 926)
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movq__rax__0x58__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jg_.L_42a6b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_42a6a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_42a5c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_42a698(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_je_.L_42a621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_42a693(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_je_.L_42a67b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_42a68e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jmpq_.L_42a6a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42a549(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42a6b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

