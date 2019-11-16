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

declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42d7d0.MSAAddGF(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x459a0a_type = type <{ [4 x i8] }>
@G__0x459a0a= global %G__0x459a0a_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a0f_type = type <{ [4 x i8] }>
@G__0x459a0f= global %G__0x459a0f_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a14_type = type <{ [4 x i8] }>
@G__0x459a14= global %G__0x459a14_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a19_type = type <{ [4 x i8] }>
@G__0x459a19= global %G__0x459a19_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a1e_type = type <{ [4 x i8] }>
@G__0x459a1e= global %G__0x459a1e_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a4b_type = type <{ [4 x i8] }>
@G__0x459a4b= global %G__0x459a4b_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x459a78_type = type <{ [4 x i8] }>
@G__0x459a78= global %G__0x459a78_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
@G__0x45a1f5= global %G__0x45a1f5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @parse_gf(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .parse_gf:	 RIP: 44a900	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44a900	 Bytes: 1
  %loadMem_44a900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a900 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a900)
  store %struct.Memory* %call_44a900, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44a901	 Bytes: 3
  %loadMem_44a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a901 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a901)
  store %struct.Memory* %call_44a901, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 44a904	 Bytes: 4
  %loadMem_44a904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a904 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a904)
  store %struct.Memory* %call_44a904, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rax	 RIP: 44a908	 Bytes: 4
  %loadMem_44a908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a908 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a908)
  store %struct.Memory* %call_44a908, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rcx	 RIP: 44a90c	 Bytes: 10
  %loadMem_44a90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a90c = call %struct.Memory* @routine_movq__0x45a1f5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a90c)
  store %struct.Memory* %call_44a90c, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 44a916	 Bytes: 2
  %loadMem_44a916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a916 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a916)
  store %struct.Memory* %call_44a916, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 44a918	 Bytes: 4
  %loadMem_44a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a918 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a918)
  store %struct.Memory* %call_44a918, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 44a91c	 Bytes: 4
  %loadMem_44a91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a91c = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a91c)
  store %struct.Memory* %call_44a91c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 44a920	 Bytes: 4
  %loadMem_44a920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a920 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a920)
  store %struct.Memory* %call_44a920, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 44a924	 Bytes: 4
  %loadMem_44a924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a924 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a924)
  store %struct.Memory* %call_44a924, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 44a928	 Bytes: 3
  %loadMem_44a928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a928 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a928)
  store %struct.Memory* %call_44a928, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 44a92b	 Bytes: 3
  %loadMem_44a92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a92b = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a92b)
  store %struct.Memory* %call_44a92b, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44a92e	 Bytes: 5
  %loadMem1_44a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a92e = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a92e, i64 -17118, i64 5, i64 5)
  store %struct.Memory* %call1_44a92e, %struct.Memory** %MEMORY

  %loadMem2_44a92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a92e = load i64, i64* %3
  %call2_44a92e = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44a92e, %struct.Memory* %loadMem2_44a92e)
  store %struct.Memory* %call2_44a92e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 44a933	 Bytes: 4
  %loadMem_44a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a933 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a933)
  store %struct.Memory* %call_44a933, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44a937	 Bytes: 4
  %loadMem_44a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a937 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a937)
  store %struct.Memory* %call_44a937, %struct.Memory** %MEMORY

  ; Code: jne .L_44a94d	 RIP: 44a93b	 Bytes: 6
  %loadMem_44a93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a93b = call %struct.Memory* @routine_jne_.L_44a94d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a93b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44a93b, %struct.Memory** %MEMORY

  %loadBr_44a93b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a93b = icmp eq i8 %loadBr_44a93b, 1
  br i1 %cmpBr_44a93b, label %block_.L_44a94d, label %block_44a941

block_44a941:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44a941	 Bytes: 7
  %loadMem_44a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a941 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a941)
  store %struct.Memory* %call_44a941, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44a948	 Bytes: 5
  %loadMem_44a948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a948 = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a948, i64 1075, i64 5)
  store %struct.Memory* %call_44a948, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44a94d:	 RIP: 44a94d	 Bytes: 0
block_.L_44a94d:

  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44a94d	 Bytes: 4
  %loadMem_44a94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a94d = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a94d)
  store %struct.Memory* %call_44a94d, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44a951	 Bytes: 10
  %loadMem_44a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a951 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a951)
  store %struct.Memory* %call_44a951, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44a95b	 Bytes: 2
  %loadMem_44a95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a95b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a95b)
  store %struct.Memory* %call_44a95b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44a95d	 Bytes: 2
  %loadMem_44a95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a95d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a95d)
  store %struct.Memory* %call_44a95d, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44a95f	 Bytes: 5
  %loadMem1_44a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a95f = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a95f, i64 -17167, i64 5, i64 5)
  store %struct.Memory* %call1_44a95f, %struct.Memory** %MEMORY

  %loadMem2_44a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a95f = load i64, i64* %3
  %call2_44a95f = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44a95f, %struct.Memory* %loadMem2_44a95f)
  store %struct.Memory* %call2_44a95f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 44a964	 Bytes: 4
  %loadMem_44a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a964 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a964)
  store %struct.Memory* %call_44a964, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44a968	 Bytes: 4
  %loadMem_44a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a968 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a968)
  store %struct.Memory* %call_44a968, %struct.Memory** %MEMORY

  ; Code: jne .L_44a97e	 RIP: 44a96c	 Bytes: 6
  %loadMem_44a96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a96c = call %struct.Memory* @routine_jne_.L_44a97e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a96c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44a96c, %struct.Memory** %MEMORY

  %loadBr_44a96c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a96c = icmp eq i8 %loadBr_44a96c, 1
  br i1 %cmpBr_44a96c, label %block_.L_44a97e, label %block_44a972

block_44a972:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44a972	 Bytes: 7
  %loadMem_44a972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a972 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a972)
  store %struct.Memory* %call_44a972, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44a979	 Bytes: 5
  %loadMem_44a979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a979 = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a979, i64 1026, i64 5)
  store %struct.Memory* %call_44a979, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44a97e:	 RIP: 44a97e	 Bytes: 0
block_.L_44a97e:

  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44a97e	 Bytes: 4
  %loadMem_44a97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a97e = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a97e)
  store %struct.Memory* %call_44a97e, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rsi	 RIP: 44a982	 Bytes: 10
  %loadMem_44a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a982 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a982)
  store %struct.Memory* %call_44a982, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44a98c	 Bytes: 2
  %loadMem_44a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a98c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a98c)
  store %struct.Memory* %call_44a98c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44a98e	 Bytes: 2
  %loadMem_44a98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a98e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a98e)
  store %struct.Memory* %call_44a98e, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44a990	 Bytes: 5
  %loadMem1_44a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44a990 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44a990, i64 -17216, i64 5, i64 5)
  store %struct.Memory* %call1_44a990, %struct.Memory** %MEMORY

  %loadMem2_44a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44a990 = load i64, i64* %3
  %call2_44a990 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44a990, %struct.Memory* %loadMem2_44a990)
  store %struct.Memory* %call2_44a990, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44a995	 Bytes: 4
  %loadMem_44a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a995 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a995)
  store %struct.Memory* %call_44a995, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44a999	 Bytes: 4
  %loadMem_44a999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a999 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a999)
  store %struct.Memory* %call_44a999, %struct.Memory** %MEMORY

  ; Code: jne .L_44a9af	 RIP: 44a99d	 Bytes: 6
  %loadMem_44a99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a99d = call %struct.Memory* @routine_jne_.L_44a9af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a99d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44a99d, %struct.Memory** %MEMORY

  %loadBr_44a99d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a99d = icmp eq i8 %loadBr_44a99d, 1
  br i1 %cmpBr_44a99d, label %block_.L_44a9af, label %block_44a9a3

block_44a9a3:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44a9a3	 Bytes: 7
  %loadMem_44a9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9a3 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9a3)
  store %struct.Memory* %call_44a9a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44a9aa	 Bytes: 5
  %loadMem_44a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9aa = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9aa, i64 977, i64 5)
  store %struct.Memory* %call_44a9aa, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44a9af:	 RIP: 44a9af	 Bytes: 0
block_.L_44a9af:

  ; Code: jmpq .L_44a9b4	 RIP: 44a9af	 Bytes: 5
  %loadMem_44a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9af = call %struct.Memory* @routine_jmpq_.L_44a9b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9af, i64 5, i64 5)
  store %struct.Memory* %call_44a9af, %struct.Memory** %MEMORY

  br label %block_.L_44a9b4

  ; Code: .L_44a9b4:	 RIP: 44a9b4	 Bytes: 0
block_.L_44a9b4:

  ; Code: xorl %eax, %eax	 RIP: 44a9b4	 Bytes: 2
  %loadMem_44a9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9b4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9b4)
  store %struct.Memory* %call_44a9b4, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 44a9b6	 Bytes: 2
  %loadMem_44a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9b6 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9b6)
  store %struct.Memory* %call_44a9b6, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 44a9b8	 Bytes: 4
  %loadMem_44a9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9b8 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9b8)
  store %struct.Memory* %call_44a9b8, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 44a9bc	 Bytes: 3
  %loadMem_44a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9bc = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9bc)
  store %struct.Memory* %call_44a9bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a9bf	 Bytes: 3
  %loadMem_44a9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9bf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9bf)
  store %struct.Memory* %call_44a9bf, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x39(%rbp)	 RIP: 44a9c2	 Bytes: 3
  %loadMem_44a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9c2 = call %struct.Memory* @routine_movb__cl__MINUS0x39__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9c2)
  store %struct.Memory* %call_44a9c2, %struct.Memory** %MEMORY

  ; Code: je .L_44a9f6	 RIP: 44a9c5	 Bytes: 6
  %loadMem_44a9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9c5 = call %struct.Memory* @routine_je_.L_44a9f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9c5, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_44a9c5, %struct.Memory** %MEMORY

  %loadBr_44a9c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9c5 = icmp eq i8 %loadBr_44a9c5, 1
  br i1 %cmpBr_44a9c5, label %block_.L_44a9f6, label %block_44a9cb

block_44a9cb:
  ; Code: movb $0x1, %al	 RIP: 44a9cb	 Bytes: 2
  %loadMem_44a9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9cb = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9cb)
  store %struct.Memory* %call_44a9cb, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 44a9cd	 Bytes: 4
  %loadMem_44a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9cd = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9cd)
  store %struct.Memory* %call_44a9cd, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 44a9d1	 Bytes: 3
  %loadMem_44a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9d1 = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9d1)
  store %struct.Memory* %call_44a9d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %edx	 RIP: 44a9d4	 Bytes: 3
  %loadMem_44a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9d4 = call %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9d4)
  store %struct.Memory* %call_44a9d4, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x3a(%rbp)	 RIP: 44a9d7	 Bytes: 3
  %loadMem_44a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9d7 = call %struct.Memory* @routine_movb__al__MINUS0x3a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9d7)
  store %struct.Memory* %call_44a9d7, %struct.Memory** %MEMORY

  ; Code: je .L_44a9f0	 RIP: 44a9da	 Bytes: 6
  %loadMem_44a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9da = call %struct.Memory* @routine_je_.L_44a9f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9da, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_44a9da, %struct.Memory** %MEMORY

  %loadBr_44a9da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9da = icmp eq i8 %loadBr_44a9da, 1
  br i1 %cmpBr_44a9da, label %block_.L_44a9f0, label %block_44a9e0

block_44a9e0:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 44a9e0	 Bytes: 4
  %loadMem_44a9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9e0 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9e0)
  store %struct.Memory* %call_44a9e0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 44a9e4	 Bytes: 3
  %loadMem_44a9e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9e4 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9e4)
  store %struct.Memory* %call_44a9e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, %ecx	 RIP: 44a9e7	 Bytes: 3
  %loadMem_44a9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9e7 = call %struct.Memory* @routine_cmpl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9e7)
  store %struct.Memory* %call_44a9e7, %struct.Memory** %MEMORY

  ; Code: sete %dl	 RIP: 44a9ea	 Bytes: 3
  %loadMem_44a9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ea = call %struct.Memory* @routine_sete__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ea)
  store %struct.Memory* %call_44a9ea, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x3a(%rbp)	 RIP: 44a9ed	 Bytes: 3
  %loadMem_44a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ed = call %struct.Memory* @routine_movb__dl__MINUS0x3a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ed)
  store %struct.Memory* %call_44a9ed, %struct.Memory** %MEMORY

  ; Code: .L_44a9f0:	 RIP: 44a9f0	 Bytes: 0
  br label %block_.L_44a9f0
block_.L_44a9f0:

  ; Code: movb -0x3a(%rbp), %al	 RIP: 44a9f0	 Bytes: 3
  %loadMem_44a9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f0 = call %struct.Memory* @routine_movb_MINUS0x3a__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f0)
  store %struct.Memory* %call_44a9f0, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x39(%rbp)	 RIP: 44a9f3	 Bytes: 3
  %loadMem_44a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f3 = call %struct.Memory* @routine_movb__al__MINUS0x39__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f3)
  store %struct.Memory* %call_44a9f3, %struct.Memory** %MEMORY

  ; Code: .L_44a9f6:	 RIP: 44a9f6	 Bytes: 0
  br label %block_.L_44a9f6
block_.L_44a9f6:

  ; Code: movb -0x39(%rbp), %al	 RIP: 44a9f6	 Bytes: 3
  %loadMem_44a9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f6 = call %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f6)
  store %struct.Memory* %call_44a9f6, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 44a9f9	 Bytes: 2
  %loadMem_44a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f9 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f9)
  store %struct.Memory* %call_44a9f9, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa06	 RIP: 44a9fb	 Bytes: 6
  %loadMem_44a9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9fb = call %struct.Memory* @routine_jne_.L_44aa06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9fb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44a9fb, %struct.Memory** %MEMORY

  %loadBr_44a9fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9fb = icmp eq i8 %loadBr_44a9fb, 1
  br i1 %cmpBr_44a9fb, label %block_.L_44aa06, label %block_44aa01

block_44aa01:
  ; Code: jmpq .L_44aa17	 RIP: 44aa01	 Bytes: 5
  %loadMem_44aa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa01 = call %struct.Memory* @routine_jmpq_.L_44aa17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa01, i64 22, i64 5)
  store %struct.Memory* %call_44aa01, %struct.Memory** %MEMORY

  br label %block_.L_44aa17

  ; Code: .L_44aa06:	 RIP: 44aa06	 Bytes: 0
block_.L_44aa06:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 44aa06	 Bytes: 4
  %loadMem_44aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa06 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa06)
  store %struct.Memory* %call_44aa06, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 44aa0a	 Bytes: 4
  %loadMem_44aa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa0a = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa0a)
  store %struct.Memory* %call_44aa0a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44aa0e	 Bytes: 4
  %loadMem_44aa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa0e = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa0e)
  store %struct.Memory* %call_44aa0e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a9b4	 RIP: 44aa12	 Bytes: 5
  %loadMem_44aa12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa12 = call %struct.Memory* @routine_jmpq_.L_44a9b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa12, i64 -94, i64 5)
  store %struct.Memory* %call_44aa12, %struct.Memory** %MEMORY

  br label %block_.L_44a9b4

  ; Code: .L_44aa17:	 RIP: 44aa17	 Bytes: 0
block_.L_44aa17:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44aa17	 Bytes: 4
  %loadMem_44aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa17 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa17)
  store %struct.Memory* %call_44aa17, %struct.Memory** %MEMORY

  ; Code: movl $0x459a0f, %eax	 RIP: 44aa1b	 Bytes: 5
  %loadMem_44aa1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa1b = call %struct.Memory* @routine_movl__0x459a0f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa1b)
  store %struct.Memory* %call_44aa1b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44aa20	 Bytes: 2
  %loadMem_44aa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa20 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa20)
  store %struct.Memory* %call_44aa20, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44aa22	 Bytes: 5
  %loadMem1_44aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aa22 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aa22, i64 -300226, i64 5, i64 5)
  store %struct.Memory* %call1_44aa22, %struct.Memory** %MEMORY

  %loadMem2_44aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa22 = load i64, i64* %3
  %call2_44aa22 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44aa22, %struct.Memory* %loadMem2_44aa22)
  store %struct.Memory* %call2_44aa22, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44aa27	 Bytes: 3
  %loadMem_44aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa27 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa27)
  store %struct.Memory* %call_44aa27, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa4b	 RIP: 44aa2a	 Bytes: 6
  %loadMem_44aa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa2a = call %struct.Memory* @routine_jne_.L_44aa4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa2a, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44aa2a, %struct.Memory** %MEMORY

  %loadBr_44aa2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa2a = icmp eq i8 %loadBr_44aa2a, 1
  br i1 %cmpBr_44aa2a, label %block_.L_44aa4b, label %block_44aa30

block_44aa30:
  ; Code: movl $0xffffffff, %esi	 RIP: 44aa30	 Bytes: 5
  %loadMem_44aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa30 = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa30)
  store %struct.Memory* %call_44aa30, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44aa35	 Bytes: 4
  %loadMem_44aa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa35 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa35)
  store %struct.Memory* %call_44aa35, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 44aa39	 Bytes: 5
  %loadMem1_44aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aa39 = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aa39, i64 -17177, i64 5, i64 5)
  store %struct.Memory* %call1_44aa39, %struct.Memory** %MEMORY

  %loadMem2_44aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa39 = load i64, i64* %3
  %call2_44aa39 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_44aa39, %struct.Memory* %loadMem2_44aa39)
  store %struct.Memory* %call2_44aa39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44aa3e	 Bytes: 4
  %loadMem_44aa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa3e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa3e)
  store %struct.Memory* %call_44aa3e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x28(%rdi)	 RIP: 44aa42	 Bytes: 4
  %loadMem_44aa42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa42 = call %struct.Memory* @routine_movq__rax__0x28__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa42)
  store %struct.Memory* %call_44aa42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad74	 RIP: 44aa46	 Bytes: 5
  %loadMem_44aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa46 = call %struct.Memory* @routine_jmpq_.L_44ad74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa46, i64 814, i64 5)
  store %struct.Memory* %call_44aa46, %struct.Memory** %MEMORY

  br label %block_.L_44ad74

  ; Code: .L_44aa4b:	 RIP: 44aa4b	 Bytes: 0
block_.L_44aa4b:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44aa4b	 Bytes: 4
  %loadMem_44aa4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa4b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa4b)
  store %struct.Memory* %call_44aa4b, %struct.Memory** %MEMORY

  ; Code: movl $0x459a14, %eax	 RIP: 44aa4f	 Bytes: 5
  %loadMem_44aa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa4f = call %struct.Memory* @routine_movl__0x459a14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa4f)
  store %struct.Memory* %call_44aa4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44aa54	 Bytes: 2
  %loadMem_44aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa54 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa54)
  store %struct.Memory* %call_44aa54, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44aa56	 Bytes: 5
  %loadMem1_44aa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aa56 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aa56, i64 -300278, i64 5, i64 5)
  store %struct.Memory* %call1_44aa56, %struct.Memory** %MEMORY

  %loadMem2_44aa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa56 = load i64, i64* %3
  %call2_44aa56 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44aa56, %struct.Memory* %loadMem2_44aa56)
  store %struct.Memory* %call2_44aa56, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44aa5b	 Bytes: 3
  %loadMem_44aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa5b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa5b)
  store %struct.Memory* %call_44aa5b, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa7f	 RIP: 44aa5e	 Bytes: 6
  %loadMem_44aa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa5e = call %struct.Memory* @routine_jne_.L_44aa7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa5e, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44aa5e, %struct.Memory** %MEMORY

  %loadBr_44aa5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa5e = icmp eq i8 %loadBr_44aa5e, 1
  br i1 %cmpBr_44aa5e, label %block_.L_44aa7f, label %block_44aa64

block_44aa64:
  ; Code: movl $0xffffffff, %esi	 RIP: 44aa64	 Bytes: 5
  %loadMem_44aa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa64 = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa64)
  store %struct.Memory* %call_44aa64, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44aa69	 Bytes: 4
  %loadMem_44aa69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa69 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa69)
  store %struct.Memory* %call_44aa69, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 44aa6d	 Bytes: 5
  %loadMem1_44aa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aa6d = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aa6d, i64 -17229, i64 5, i64 5)
  store %struct.Memory* %call1_44aa6d, %struct.Memory** %MEMORY

  %loadMem2_44aa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa6d = load i64, i64* %3
  %call2_44aa6d = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_44aa6d, %struct.Memory* %loadMem2_44aa6d)
  store %struct.Memory* %call2_44aa6d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44aa72	 Bytes: 4
  %loadMem_44aa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa72 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa72)
  store %struct.Memory* %call_44aa72, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rdi)	 RIP: 44aa76	 Bytes: 4
  %loadMem_44aa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa76 = call %struct.Memory* @routine_movq__rax__0x38__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa76)
  store %struct.Memory* %call_44aa76, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad6f	 RIP: 44aa7a	 Bytes: 5
  %loadMem_44aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa7a = call %struct.Memory* @routine_jmpq_.L_44ad6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa7a, i64 757, i64 5)
  store %struct.Memory* %call_44aa7a, %struct.Memory** %MEMORY

  br label %block_.L_44ad6f

  ; Code: .L_44aa7f:	 RIP: 44aa7f	 Bytes: 0
block_.L_44aa7f:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44aa7f	 Bytes: 4
  %loadMem_44aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa7f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa7f)
  store %struct.Memory* %call_44aa7f, %struct.Memory** %MEMORY

  ; Code: movl $0x459a19, %eax	 RIP: 44aa83	 Bytes: 5
  %loadMem_44aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa83 = call %struct.Memory* @routine_movl__0x459a19___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa83)
  store %struct.Memory* %call_44aa83, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44aa88	 Bytes: 2
  %loadMem_44aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa88 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa88)
  store %struct.Memory* %call_44aa88, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44aa8a	 Bytes: 5
  %loadMem1_44aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aa8a = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aa8a, i64 -300330, i64 5, i64 5)
  store %struct.Memory* %call1_44aa8a, %struct.Memory** %MEMORY

  %loadMem2_44aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aa8a = load i64, i64* %3
  %call2_44aa8a = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44aa8a, %struct.Memory* %loadMem2_44aa8a)
  store %struct.Memory* %call2_44aa8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44aa8f	 Bytes: 3
  %loadMem_44aa8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa8f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa8f)
  store %struct.Memory* %call_44aa8f, %struct.Memory** %MEMORY

  ; Code: jne .L_44aab3	 RIP: 44aa92	 Bytes: 6
  %loadMem_44aa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa92 = call %struct.Memory* @routine_jne_.L_44aab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa92, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44aa92, %struct.Memory** %MEMORY

  %loadBr_44aa92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa92 = icmp eq i8 %loadBr_44aa92, 1
  br i1 %cmpBr_44aa92, label %block_.L_44aab3, label %block_44aa98

block_44aa98:
  ; Code: movl $0xffffffff, %esi	 RIP: 44aa98	 Bytes: 5
  %loadMem_44aa98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa98 = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa98)
  store %struct.Memory* %call_44aa98, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44aa9d	 Bytes: 4
  %loadMem_44aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa9d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa9d)
  store %struct.Memory* %call_44aa9d, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 44aaa1	 Bytes: 5
  %loadMem1_44aaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aaa1 = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aaa1, i64 -17281, i64 5, i64 5)
  store %struct.Memory* %call1_44aaa1, %struct.Memory** %MEMORY

  %loadMem2_44aaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aaa1 = load i64, i64* %3
  %call2_44aaa1 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_44aaa1, %struct.Memory* %loadMem2_44aaa1)
  store %struct.Memory* %call2_44aaa1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44aaa6	 Bytes: 4
  %loadMem_44aaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaa6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaa6)
  store %struct.Memory* %call_44aaa6, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x30(%rdi)	 RIP: 44aaaa	 Bytes: 4
  %loadMem_44aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaaa = call %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaaa)
  store %struct.Memory* %call_44aaaa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad6a	 RIP: 44aaae	 Bytes: 5
  %loadMem_44aaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaae = call %struct.Memory* @routine_jmpq_.L_44ad6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaae, i64 700, i64 5)
  store %struct.Memory* %call_44aaae, %struct.Memory** %MEMORY

  br label %block_.L_44ad6a

  ; Code: .L_44aab3:	 RIP: 44aab3	 Bytes: 0
block_.L_44aab3:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44aab3	 Bytes: 4
  %loadMem_44aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aab3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aab3)
  store %struct.Memory* %call_44aab3, %struct.Memory** %MEMORY

  ; Code: movl $0x459a0a, %eax	 RIP: 44aab7	 Bytes: 5
  %loadMem_44aab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aab7 = call %struct.Memory* @routine_movl__0x459a0a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aab7)
  store %struct.Memory* %call_44aab7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44aabc	 Bytes: 2
  %loadMem_44aabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aabc = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aabc)
  store %struct.Memory* %call_44aabc, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44aabe	 Bytes: 5
  %loadMem1_44aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aabe = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aabe, i64 -300382, i64 5, i64 5)
  store %struct.Memory* %call1_44aabe, %struct.Memory** %MEMORY

  %loadMem2_44aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aabe = load i64, i64* %3
  %call2_44aabe = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44aabe, %struct.Memory* %loadMem2_44aabe)
  store %struct.Memory* %call2_44aabe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44aac3	 Bytes: 3
  %loadMem_44aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aac3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aac3)
  store %struct.Memory* %call_44aac3, %struct.Memory** %MEMORY

  ; Code: jne .L_44aae7	 RIP: 44aac6	 Bytes: 6
  %loadMem_44aac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aac6 = call %struct.Memory* @routine_jne_.L_44aae7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aac6, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44aac6, %struct.Memory** %MEMORY

  %loadBr_44aac6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aac6 = icmp eq i8 %loadBr_44aac6, 1
  br i1 %cmpBr_44aac6, label %block_.L_44aae7, label %block_44aacc

block_44aacc:
  ; Code: movl $0xffffffff, %esi	 RIP: 44aacc	 Bytes: 5
  %loadMem_44aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aacc = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aacc)
  store %struct.Memory* %call_44aacc, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44aad1	 Bytes: 4
  %loadMem_44aad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aad1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aad1)
  store %struct.Memory* %call_44aad1, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 44aad5	 Bytes: 5
  %loadMem1_44aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aad5 = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aad5, i64 -17333, i64 5, i64 5)
  store %struct.Memory* %call1_44aad5, %struct.Memory** %MEMORY

  %loadMem2_44aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aad5 = load i64, i64* %3
  %call2_44aad5 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_44aad5, %struct.Memory* %loadMem2_44aad5)
  store %struct.Memory* %call2_44aad5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44aada	 Bytes: 4
  %loadMem_44aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aada = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aada)
  store %struct.Memory* %call_44aada, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rdi)	 RIP: 44aade	 Bytes: 4
  %loadMem_44aade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aade = call %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aade)
  store %struct.Memory* %call_44aade, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad65	 RIP: 44aae2	 Bytes: 5
  %loadMem_44aae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aae2 = call %struct.Memory* @routine_jmpq_.L_44ad65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aae2, i64 643, i64 5)
  store %struct.Memory* %call_44aae2, %struct.Memory** %MEMORY

  br label %block_.L_44ad65

  ; Code: .L_44aae7:	 RIP: 44aae7	 Bytes: 0
block_.L_44aae7:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44aae7	 Bytes: 4
  %loadMem_44aae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aae7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aae7)
  store %struct.Memory* %call_44aae7, %struct.Memory** %MEMORY

  ; Code: movl $0x459a1e, %eax	 RIP: 44aaeb	 Bytes: 5
  %loadMem_44aaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaeb = call %struct.Memory* @routine_movl__0x459a1e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaeb)
  store %struct.Memory* %call_44aaeb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44aaf0	 Bytes: 2
  %loadMem_44aaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf0)
  store %struct.Memory* %call_44aaf0, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44aaf2	 Bytes: 5
  %loadMem1_44aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44aaf2 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44aaf2, i64 -300434, i64 5, i64 5)
  store %struct.Memory* %call1_44aaf2, %struct.Memory** %MEMORY

  %loadMem2_44aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44aaf2 = load i64, i64* %3
  %call2_44aaf2 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44aaf2, %struct.Memory* %loadMem2_44aaf2)
  store %struct.Memory* %call2_44aaf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44aaf7	 Bytes: 3
  %loadMem_44aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf7)
  store %struct.Memory* %call_44aaf7, %struct.Memory** %MEMORY

  ; Code: jne .L_44abb1	 RIP: 44aafa	 Bytes: 6
  %loadMem_44aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aafa = call %struct.Memory* @routine_jne_.L_44abb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aafa, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_44aafa, %struct.Memory** %MEMORY

  %loadBr_44aafa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aafa = icmp eq i8 %loadBr_44aafa, 1
  br i1 %cmpBr_44aafa, label %block_.L_44abb1, label %block_44ab00

block_44ab00:
  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44ab00	 Bytes: 4
  %loadMem_44ab00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab00 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab00)
  store %struct.Memory* %call_44ab00, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44ab04	 Bytes: 10
  %loadMem_44ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab04 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab04)
  store %struct.Memory* %call_44ab04, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44ab0e	 Bytes: 2
  %loadMem_44ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab0e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab0e)
  store %struct.Memory* %call_44ab0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ab10	 Bytes: 2
  %loadMem_44ab10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab10 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab10)
  store %struct.Memory* %call_44ab10, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 44ab12	 Bytes: 4
  %loadMem_44ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab12 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab12)
  store %struct.Memory* %call_44ab12, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x38(%rbp)	 RIP: 44ab16	 Bytes: 4
  %loadMem_44ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab16 = call %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab16)
  store %struct.Memory* %call_44ab16, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44ab1a	 Bytes: 5
  %loadMem1_44ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ab1a = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ab1a, i64 -17610, i64 5, i64 5)
  store %struct.Memory* %call1_44ab1a, %struct.Memory** %MEMORY

  %loadMem2_44ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab1a = load i64, i64* %3
  %call2_44ab1a = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44ab1a, %struct.Memory* %loadMem2_44ab1a)
  store %struct.Memory* %call2_44ab1a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44ab1f	 Bytes: 4
  %loadMem_44ab1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab1f = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab1f)
  store %struct.Memory* %call_44ab1f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44ab23	 Bytes: 4
  %loadMem_44ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab23 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab23)
  store %struct.Memory* %call_44ab23, %struct.Memory** %MEMORY

  ; Code: jne .L_44ab39	 RIP: 44ab27	 Bytes: 6
  %loadMem_44ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab27 = call %struct.Memory* @routine_jne_.L_44ab39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab27, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44ab27, %struct.Memory** %MEMORY

  %loadBr_44ab27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab27 = icmp eq i8 %loadBr_44ab27, 1
  br i1 %cmpBr_44ab27, label %block_.L_44ab39, label %block_44ab2d

block_44ab2d:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44ab2d	 Bytes: 7
  %loadMem_44ab2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab2d = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab2d)
  store %struct.Memory* %call_44ab2d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44ab34	 Bytes: 5
  %loadMem_44ab34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab34 = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab34, i64 583, i64 5)
  store %struct.Memory* %call_44ab34, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44ab39:	 RIP: 44ab39	 Bytes: 0
block_.L_44ab39:

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44ab39	 Bytes: 4
  %loadMem_44ab39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab39 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab39)
  store %struct.Memory* %call_44ab39, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44ab3d	 Bytes: 5
  %loadMem1_44ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ab3d = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ab3d, i64 -300813, i64 5, i64 5)
  store %struct.Memory* %call1_44ab3d, %struct.Memory** %MEMORY

  %loadMem2_44ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab3d = load i64, i64* %3
  %call2_44ab3d = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44ab3d, %struct.Memory* %loadMem2_44ab3d)
  store %struct.Memory* %call2_44ab3d, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44ab42	 Bytes: 4
  %loadMem_44ab42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab42 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab42)
  store %struct.Memory* %call_44ab42, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44ab46	 Bytes: 10
  %loadMem_44ab46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab46 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab46)
  store %struct.Memory* %call_44ab46, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44ab50	 Bytes: 2
  %loadMem_44ab50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab50 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab50)
  store %struct.Memory* %call_44ab50, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ab52	 Bytes: 2
  %loadMem_44ab52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab52 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab52)
  store %struct.Memory* %call_44ab52, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ab54	 Bytes: 4
  %loadMem_44ab54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab54 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab54)
  store %struct.Memory* %call_44ab54, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44ab58	 Bytes: 4
  %loadMem_44ab58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab58 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab58)
  store %struct.Memory* %call_44ab58, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x88(%rcx)	 RIP: 44ab5c	 Bytes: 8
  %loadMem_44ab5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab5c = call %struct.Memory* @routine_movss__xmm0__0x88__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab5c)
  store %struct.Memory* %call_44ab5c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44ab64	 Bytes: 4
  %loadMem_44ab64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab64 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab64)
  store %struct.Memory* %call_44ab64, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xa0(%rcx)	 RIP: 44ab68	 Bytes: 10
  %loadMem_44ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab68 = call %struct.Memory* @routine_movl__0x1__0xa0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab68)
  store %struct.Memory* %call_44ab68, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44ab72	 Bytes: 5
  %loadMem1_44ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ab72 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ab72, i64 -17698, i64 5, i64 5)
  store %struct.Memory* %call1_44ab72, %struct.Memory** %MEMORY

  %loadMem2_44ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab72 = load i64, i64* %3
  %call2_44ab72 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44ab72, %struct.Memory* %loadMem2_44ab72)
  store %struct.Memory* %call2_44ab72, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44ab77	 Bytes: 4
  %loadMem_44ab77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab77 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab77)
  store %struct.Memory* %call_44ab77, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44ab7b	 Bytes: 4
  %loadMem_44ab7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab7b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab7b)
  store %struct.Memory* %call_44ab7b, %struct.Memory** %MEMORY

  ; Code: je .L_44abac	 RIP: 44ab7f	 Bytes: 6
  %loadMem_44ab7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab7f = call %struct.Memory* @routine_je_.L_44abac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab7f, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44ab7f, %struct.Memory** %MEMORY

  %loadBr_44ab7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab7f = icmp eq i8 %loadBr_44ab7f, 1
  br i1 %cmpBr_44ab7f, label %block_.L_44abac, label %block_44ab85

block_44ab85:
  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44ab85	 Bytes: 4
  %loadMem_44ab85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab85 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab85)
  store %struct.Memory* %call_44ab85, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44ab89	 Bytes: 5
  %loadMem1_44ab89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ab89 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ab89, i64 -300889, i64 5, i64 5)
  store %struct.Memory* %call1_44ab89, %struct.Memory** %MEMORY

  %loadMem2_44ab89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ab89 = load i64, i64* %3
  %call2_44ab89 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44ab89, %struct.Memory* %loadMem2_44ab89)
  store %struct.Memory* %call2_44ab89, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ab8e	 Bytes: 4
  %loadMem_44ab8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab8e = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab8e)
  store %struct.Memory* %call_44ab8e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ab92	 Bytes: 4
  %loadMem_44ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab92 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab92)
  store %struct.Memory* %call_44ab92, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8c(%rdi)	 RIP: 44ab96	 Bytes: 8
  %loadMem_44ab96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab96 = call %struct.Memory* @routine_movss__xmm0__0x8c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab96)
  store %struct.Memory* %call_44ab96, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ab9e	 Bytes: 4
  %loadMem_44ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab9e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab9e)
  store %struct.Memory* %call_44ab9e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xa4(%rdi)	 RIP: 44aba2	 Bytes: 10
  %loadMem_44aba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aba2 = call %struct.Memory* @routine_movl__0x1__0xa4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aba2)
  store %struct.Memory* %call_44aba2, %struct.Memory** %MEMORY

  ; Code: .L_44abac:	 RIP: 44abac	 Bytes: 0
  br label %block_.L_44abac
block_.L_44abac:

  ; Code: jmpq .L_44ad60	 RIP: 44abac	 Bytes: 5
  %loadMem_44abac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abac = call %struct.Memory* @routine_jmpq_.L_44ad60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abac, i64 436, i64 5)
  store %struct.Memory* %call_44abac, %struct.Memory** %MEMORY

  br label %block_.L_44ad60

  ; Code: .L_44abb1:	 RIP: 44abb1	 Bytes: 0
block_.L_44abb1:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44abb1	 Bytes: 4
  %loadMem_44abb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abb1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abb1)
  store %struct.Memory* %call_44abb1, %struct.Memory** %MEMORY

  ; Code: movl $0x459a78, %eax	 RIP: 44abb5	 Bytes: 5
  %loadMem_44abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abb5 = call %struct.Memory* @routine_movl__0x459a78___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abb5)
  store %struct.Memory* %call_44abb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44abba	 Bytes: 2
  %loadMem_44abba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abba = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abba)
  store %struct.Memory* %call_44abba, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44abbc	 Bytes: 5
  %loadMem1_44abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44abbc = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44abbc, i64 -300636, i64 5, i64 5)
  store %struct.Memory* %call1_44abbc, %struct.Memory** %MEMORY

  %loadMem2_44abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44abbc = load i64, i64* %3
  %call2_44abbc = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44abbc, %struct.Memory* %loadMem2_44abbc)
  store %struct.Memory* %call2_44abbc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44abc1	 Bytes: 3
  %loadMem_44abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc1)
  store %struct.Memory* %call_44abc1, %struct.Memory** %MEMORY

  ; Code: jne .L_44ac7b	 RIP: 44abc4	 Bytes: 6
  %loadMem_44abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc4 = call %struct.Memory* @routine_jne_.L_44ac7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc4, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_44abc4, %struct.Memory** %MEMORY

  %loadBr_44abc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abc4 = icmp eq i8 %loadBr_44abc4, 1
  br i1 %cmpBr_44abc4, label %block_.L_44ac7b, label %block_44abca

block_44abca:
  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44abca	 Bytes: 4
  %loadMem_44abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abca = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abca)
  store %struct.Memory* %call_44abca, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44abce	 Bytes: 10
  %loadMem_44abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abce = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abce)
  store %struct.Memory* %call_44abce, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44abd8	 Bytes: 2
  %loadMem_44abd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abd8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abd8)
  store %struct.Memory* %call_44abd8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44abda	 Bytes: 2
  %loadMem_44abda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abda = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abda)
  store %struct.Memory* %call_44abda, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 44abdc	 Bytes: 4
  %loadMem_44abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abdc = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abdc)
  store %struct.Memory* %call_44abdc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x38(%rbp)	 RIP: 44abe0	 Bytes: 4
  %loadMem_44abe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe0 = call %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe0)
  store %struct.Memory* %call_44abe0, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44abe4	 Bytes: 5
  %loadMem1_44abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44abe4 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44abe4, i64 -17812, i64 5, i64 5)
  store %struct.Memory* %call1_44abe4, %struct.Memory** %MEMORY

  %loadMem2_44abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44abe4 = load i64, i64* %3
  %call2_44abe4 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44abe4, %struct.Memory* %loadMem2_44abe4)
  store %struct.Memory* %call2_44abe4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44abe9	 Bytes: 4
  %loadMem_44abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe9 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe9)
  store %struct.Memory* %call_44abe9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44abed	 Bytes: 4
  %loadMem_44abed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abed = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abed)
  store %struct.Memory* %call_44abed, %struct.Memory** %MEMORY

  ; Code: jne .L_44ac03	 RIP: 44abf1	 Bytes: 6
  %loadMem_44abf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abf1 = call %struct.Memory* @routine_jne_.L_44ac03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abf1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44abf1, %struct.Memory** %MEMORY

  %loadBr_44abf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abf1 = icmp eq i8 %loadBr_44abf1, 1
  br i1 %cmpBr_44abf1, label %block_.L_44ac03, label %block_44abf7

block_44abf7:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44abf7	 Bytes: 7
  %loadMem_44abf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abf7 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abf7)
  store %struct.Memory* %call_44abf7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44abfe	 Bytes: 5
  %loadMem_44abfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abfe = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abfe, i64 381, i64 5)
  store %struct.Memory* %call_44abfe, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44ac03:	 RIP: 44ac03	 Bytes: 0
block_.L_44ac03:

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44ac03	 Bytes: 4
  %loadMem_44ac03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac03 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac03)
  store %struct.Memory* %call_44ac03, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44ac07	 Bytes: 5
  %loadMem1_44ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ac07 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ac07, i64 -301015, i64 5, i64 5)
  store %struct.Memory* %call1_44ac07, %struct.Memory** %MEMORY

  %loadMem2_44ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac07 = load i64, i64* %3
  %call2_44ac07 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44ac07, %struct.Memory* %loadMem2_44ac07)
  store %struct.Memory* %call2_44ac07, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44ac0c	 Bytes: 4
  %loadMem_44ac0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac0c = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac0c)
  store %struct.Memory* %call_44ac0c, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44ac10	 Bytes: 10
  %loadMem_44ac10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac10 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac10)
  store %struct.Memory* %call_44ac10, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44ac1a	 Bytes: 2
  %loadMem_44ac1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac1a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac1a)
  store %struct.Memory* %call_44ac1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ac1c	 Bytes: 2
  %loadMem_44ac1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac1c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac1c)
  store %struct.Memory* %call_44ac1c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ac1e	 Bytes: 4
  %loadMem_44ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac1e = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac1e)
  store %struct.Memory* %call_44ac1e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44ac22	 Bytes: 4
  %loadMem_44ac22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac22)
  store %struct.Memory* %call_44ac22, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x90(%rcx)	 RIP: 44ac26	 Bytes: 8
  %loadMem_44ac26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac26 = call %struct.Memory* @routine_movss__xmm0__0x90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac26)
  store %struct.Memory* %call_44ac26, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44ac2e	 Bytes: 4
  %loadMem_44ac2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac2e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac2e)
  store %struct.Memory* %call_44ac2e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xa8(%rcx)	 RIP: 44ac32	 Bytes: 10
  %loadMem_44ac32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac32 = call %struct.Memory* @routine_movl__0x1__0xa8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac32)
  store %struct.Memory* %call_44ac32, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44ac3c	 Bytes: 5
  %loadMem1_44ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ac3c = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ac3c, i64 -17900, i64 5, i64 5)
  store %struct.Memory* %call1_44ac3c, %struct.Memory** %MEMORY

  %loadMem2_44ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac3c = load i64, i64* %3
  %call2_44ac3c = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44ac3c, %struct.Memory* %loadMem2_44ac3c)
  store %struct.Memory* %call2_44ac3c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44ac41	 Bytes: 4
  %loadMem_44ac41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac41 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac41)
  store %struct.Memory* %call_44ac41, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44ac45	 Bytes: 4
  %loadMem_44ac45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac45 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac45)
  store %struct.Memory* %call_44ac45, %struct.Memory** %MEMORY

  ; Code: je .L_44ac76	 RIP: 44ac49	 Bytes: 6
  %loadMem_44ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac49 = call %struct.Memory* @routine_je_.L_44ac76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac49, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44ac49, %struct.Memory** %MEMORY

  %loadBr_44ac49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac49 = icmp eq i8 %loadBr_44ac49, 1
  br i1 %cmpBr_44ac49, label %block_.L_44ac76, label %block_44ac4f

block_44ac4f:
  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44ac4f	 Bytes: 4
  %loadMem_44ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac4f = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac4f)
  store %struct.Memory* %call_44ac4f, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44ac53	 Bytes: 5
  %loadMem1_44ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ac53 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ac53, i64 -301091, i64 5, i64 5)
  store %struct.Memory* %call1_44ac53, %struct.Memory** %MEMORY

  %loadMem2_44ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac53 = load i64, i64* %3
  %call2_44ac53 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44ac53, %struct.Memory* %loadMem2_44ac53)
  store %struct.Memory* %call2_44ac53, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ac58	 Bytes: 4
  %loadMem_44ac58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac58 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac58)
  store %struct.Memory* %call_44ac58, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ac5c	 Bytes: 4
  %loadMem_44ac5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac5c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac5c)
  store %struct.Memory* %call_44ac5c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x94(%rdi)	 RIP: 44ac60	 Bytes: 8
  %loadMem_44ac60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac60 = call %struct.Memory* @routine_movss__xmm0__0x94__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac60)
  store %struct.Memory* %call_44ac60, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ac68	 Bytes: 4
  %loadMem_44ac68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac68 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac68)
  store %struct.Memory* %call_44ac68, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xac(%rdi)	 RIP: 44ac6c	 Bytes: 10
  %loadMem_44ac6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac6c = call %struct.Memory* @routine_movl__0x1__0xac__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac6c)
  store %struct.Memory* %call_44ac6c, %struct.Memory** %MEMORY

  ; Code: .L_44ac76:	 RIP: 44ac76	 Bytes: 0
  br label %block_.L_44ac76
block_.L_44ac76:

  ; Code: jmpq .L_44ad5b	 RIP: 44ac76	 Bytes: 5
  %loadMem_44ac76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac76 = call %struct.Memory* @routine_jmpq_.L_44ad5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac76, i64 229, i64 5)
  store %struct.Memory* %call_44ac76, %struct.Memory** %MEMORY

  br label %block_.L_44ad5b

  ; Code: .L_44ac7b:	 RIP: 44ac7b	 Bytes: 0
block_.L_44ac7b:

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 44ac7b	 Bytes: 4
  %loadMem_44ac7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac7b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac7b)
  store %struct.Memory* %call_44ac7b, %struct.Memory** %MEMORY

  ; Code: movl $0x459a4b, %eax	 RIP: 44ac7f	 Bytes: 5
  %loadMem_44ac7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac7f = call %struct.Memory* @routine_movl__0x459a4b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac7f)
  store %struct.Memory* %call_44ac7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44ac84	 Bytes: 2
  %loadMem_44ac84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac84 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac84)
  store %struct.Memory* %call_44ac84, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 44ac86	 Bytes: 5
  %loadMem1_44ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ac86 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ac86, i64 -300838, i64 5, i64 5)
  store %struct.Memory* %call1_44ac86, %struct.Memory** %MEMORY

  %loadMem2_44ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ac86 = load i64, i64* %3
  %call2_44ac86 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_44ac86, %struct.Memory* %loadMem2_44ac86)
  store %struct.Memory* %call2_44ac86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44ac8b	 Bytes: 3
  %loadMem_44ac8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac8b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac8b)
  store %struct.Memory* %call_44ac8b, %struct.Memory** %MEMORY

  ; Code: jne .L_44ad45	 RIP: 44ac8e	 Bytes: 6
  %loadMem_44ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac8e = call %struct.Memory* @routine_jne_.L_44ad45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac8e, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_44ac8e, %struct.Memory** %MEMORY

  %loadBr_44ac8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac8e = icmp eq i8 %loadBr_44ac8e, 1
  br i1 %cmpBr_44ac8e, label %block_.L_44ad45, label %block_44ac94

block_44ac94:
  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44ac94	 Bytes: 4
  %loadMem_44ac94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac94 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac94)
  store %struct.Memory* %call_44ac94, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44ac98	 Bytes: 10
  %loadMem_44ac98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac98 = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac98)
  store %struct.Memory* %call_44ac98, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44aca2	 Bytes: 2
  %loadMem_44aca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca2)
  store %struct.Memory* %call_44aca2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44aca4	 Bytes: 2
  %loadMem_44aca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca4)
  store %struct.Memory* %call_44aca4, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 44aca6	 Bytes: 4
  %loadMem_44aca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca6)
  store %struct.Memory* %call_44aca6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x38(%rbp)	 RIP: 44acaa	 Bytes: 4
  %loadMem_44acaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acaa = call %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acaa)
  store %struct.Memory* %call_44acaa, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44acae	 Bytes: 5
  %loadMem1_44acae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44acae = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44acae, i64 -18014, i64 5, i64 5)
  store %struct.Memory* %call1_44acae, %struct.Memory** %MEMORY

  %loadMem2_44acae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44acae = load i64, i64* %3
  %call2_44acae = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44acae, %struct.Memory* %loadMem2_44acae)
  store %struct.Memory* %call2_44acae, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44acb3	 Bytes: 4
  %loadMem_44acb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acb3 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acb3)
  store %struct.Memory* %call_44acb3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44acb7	 Bytes: 4
  %loadMem_44acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acb7 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acb7)
  store %struct.Memory* %call_44acb7, %struct.Memory** %MEMORY

  ; Code: jne .L_44accd	 RIP: 44acbb	 Bytes: 6
  %loadMem_44acbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acbb = call %struct.Memory* @routine_jne_.L_44accd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acbb, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44acbb, %struct.Memory** %MEMORY

  %loadBr_44acbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44acbb = icmp eq i8 %loadBr_44acbb, 1
  br i1 %cmpBr_44acbb, label %block_.L_44accd, label %block_44acc1

block_44acc1:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 44acc1	 Bytes: 7
  %loadMem_44acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acc1 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acc1)
  store %struct.Memory* %call_44acc1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ad7b	 RIP: 44acc8	 Bytes: 5
  %loadMem_44acc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acc8 = call %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acc8, i64 179, i64 5)
  store %struct.Memory* %call_44acc8, %struct.Memory** %MEMORY

  br label %block_.L_44ad7b

  ; Code: .L_44accd:	 RIP: 44accd	 Bytes: 0
block_.L_44accd:

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44accd	 Bytes: 4
  %loadMem_44accd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44accd = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44accd)
  store %struct.Memory* %call_44accd, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44acd1	 Bytes: 5
  %loadMem1_44acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44acd1 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44acd1, i64 -301217, i64 5, i64 5)
  store %struct.Memory* %call1_44acd1, %struct.Memory** %MEMORY

  %loadMem2_44acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44acd1 = load i64, i64* %3
  %call2_44acd1 = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44acd1, %struct.Memory* %loadMem2_44acd1)
  store %struct.Memory* %call2_44acd1, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rdi	 RIP: 44acd6	 Bytes: 4
  %loadMem_44acd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acd6 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acd6)
  store %struct.Memory* %call_44acd6, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f5, %rsi	 RIP: 44acda	 Bytes: 10
  %loadMem_44acda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acda = call %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acda)
  store %struct.Memory* %call_44acda, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44ace4	 Bytes: 2
  %loadMem_44ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ace4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ace4)
  store %struct.Memory* %call_44ace4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ace6	 Bytes: 2
  %loadMem_44ace6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ace6 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ace6)
  store %struct.Memory* %call_44ace6, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ace8	 Bytes: 4
  %loadMem_44ace8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ace8 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ace8)
  store %struct.Memory* %call_44ace8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44acec	 Bytes: 4
  %loadMem_44acec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acec)
  store %struct.Memory* %call_44acec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x80(%rcx)	 RIP: 44acf0	 Bytes: 8
  %loadMem_44acf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acf0 = call %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acf0)
  store %struct.Memory* %call_44acf0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 44acf8	 Bytes: 4
  %loadMem_44acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acf8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acf8)
  store %struct.Memory* %call_44acf8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x98(%rcx)	 RIP: 44acfc	 Bytes: 10
  %loadMem_44acfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acfc = call %struct.Memory* @routine_movl__0x1__0x98__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acfc)
  store %struct.Memory* %call_44acfc, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 44ad06	 Bytes: 5
  %loadMem1_44ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ad06 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ad06, i64 -18102, i64 5, i64 5)
  store %struct.Memory* %call1_44ad06, %struct.Memory** %MEMORY

  %loadMem2_44ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad06 = load i64, i64* %3
  %call2_44ad06 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_44ad06, %struct.Memory* %loadMem2_44ad06)
  store %struct.Memory* %call2_44ad06, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 44ad0b	 Bytes: 4
  %loadMem_44ad0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad0b = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad0b)
  store %struct.Memory* %call_44ad0b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 44ad0f	 Bytes: 4
  %loadMem_44ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad0f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad0f)
  store %struct.Memory* %call_44ad0f, %struct.Memory** %MEMORY

  ; Code: je .L_44ad40	 RIP: 44ad13	 Bytes: 6
  %loadMem_44ad13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad13 = call %struct.Memory* @routine_je_.L_44ad40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad13, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44ad13, %struct.Memory** %MEMORY

  %loadBr_44ad13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad13 = icmp eq i8 %loadBr_44ad13, 1
  br i1 %cmpBr_44ad13, label %block_.L_44ad40, label %block_44ad19

block_44ad19:
  ; Code: movq -0x30(%rbp), %rdi	 RIP: 44ad19	 Bytes: 4
  %loadMem_44ad19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad19 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad19)
  store %struct.Memory* %call_44ad19, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 44ad1d	 Bytes: 5
  %loadMem1_44ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ad1d = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ad1d, i64 -301293, i64 5, i64 5)
  store %struct.Memory* %call1_44ad1d, %struct.Memory** %MEMORY

  %loadMem2_44ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad1d = load i64, i64* %3
  %call2_44ad1d = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_44ad1d, %struct.Memory* %loadMem2_44ad1d)
  store %struct.Memory* %call2_44ad1d, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 44ad22	 Bytes: 4
  %loadMem_44ad22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad22 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad22)
  store %struct.Memory* %call_44ad22, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ad26	 Bytes: 4
  %loadMem_44ad26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad26 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad26)
  store %struct.Memory* %call_44ad26, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x84(%rdi)	 RIP: 44ad2a	 Bytes: 8
  %loadMem_44ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad2a = call %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad2a)
  store %struct.Memory* %call_44ad2a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ad32	 Bytes: 4
  %loadMem_44ad32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad32 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad32)
  store %struct.Memory* %call_44ad32, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x9c(%rdi)	 RIP: 44ad36	 Bytes: 10
  %loadMem_44ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad36 = call %struct.Memory* @routine_movl__0x1__0x9c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad36)
  store %struct.Memory* %call_44ad36, %struct.Memory** %MEMORY

  ; Code: .L_44ad40:	 RIP: 44ad40	 Bytes: 0
  br label %block_.L_44ad40
block_.L_44ad40:

  ; Code: jmpq .L_44ad56	 RIP: 44ad40	 Bytes: 5
  %loadMem_44ad40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad40 = call %struct.Memory* @routine_jmpq_.L_44ad56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad40, i64 22, i64 5)
  store %struct.Memory* %call_44ad40, %struct.Memory** %MEMORY

  br label %block_.L_44ad56

  ; Code: .L_44ad45:	 RIP: 44ad45	 Bytes: 0
block_.L_44ad45:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44ad45	 Bytes: 4
  %loadMem_44ad45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad45 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad45)
  store %struct.Memory* %call_44ad45, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 44ad49	 Bytes: 4
  %loadMem_44ad49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad49 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad49)
  store %struct.Memory* %call_44ad49, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 44ad4d	 Bytes: 4
  %loadMem_44ad4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad4d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad4d)
  store %struct.Memory* %call_44ad4d, %struct.Memory** %MEMORY

  ; Code: callq .MSAAddGF	 RIP: 44ad51	 Bytes: 5
  %loadMem1_44ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ad51 = call %struct.Memory* @routine_callq_.MSAAddGF(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ad51, i64 -120193, i64 5, i64 5)
  store %struct.Memory* %call1_44ad51, %struct.Memory** %MEMORY

  %loadMem2_44ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ad51 = load i64, i64* %3
  %call2_44ad51 = call %struct.Memory* @sub_42d7d0.MSAAddGF(%struct.State* %0, i64  %loadPC_44ad51, %struct.Memory* %loadMem2_44ad51)
  store %struct.Memory* %call2_44ad51, %struct.Memory** %MEMORY

  ; Code: .L_44ad56:	 RIP: 44ad56	 Bytes: 0
  br label %block_.L_44ad56
block_.L_44ad56:

  ; Code: jmpq .L_44ad5b	 RIP: 44ad56	 Bytes: 5
  %loadMem_44ad56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad56 = call %struct.Memory* @routine_jmpq_.L_44ad5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad56, i64 5, i64 5)
  store %struct.Memory* %call_44ad56, %struct.Memory** %MEMORY

  br label %block_.L_44ad5b

  ; Code: .L_44ad5b:	 RIP: 44ad5b	 Bytes: 0
block_.L_44ad5b:

  ; Code: jmpq .L_44ad60	 RIP: 44ad5b	 Bytes: 5
  %loadMem_44ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad5b = call %struct.Memory* @routine_jmpq_.L_44ad60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad5b, i64 5, i64 5)
  store %struct.Memory* %call_44ad5b, %struct.Memory** %MEMORY

  br label %block_.L_44ad60

  ; Code: .L_44ad60:	 RIP: 44ad60	 Bytes: 0
block_.L_44ad60:

  ; Code: jmpq .L_44ad65	 RIP: 44ad60	 Bytes: 5
  %loadMem_44ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad60 = call %struct.Memory* @routine_jmpq_.L_44ad65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad60, i64 5, i64 5)
  store %struct.Memory* %call_44ad60, %struct.Memory** %MEMORY

  br label %block_.L_44ad65

  ; Code: .L_44ad65:	 RIP: 44ad65	 Bytes: 0
block_.L_44ad65:

  ; Code: jmpq .L_44ad6a	 RIP: 44ad65	 Bytes: 5
  %loadMem_44ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad65 = call %struct.Memory* @routine_jmpq_.L_44ad6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad65, i64 5, i64 5)
  store %struct.Memory* %call_44ad65, %struct.Memory** %MEMORY

  br label %block_.L_44ad6a

  ; Code: .L_44ad6a:	 RIP: 44ad6a	 Bytes: 0
block_.L_44ad6a:

  ; Code: jmpq .L_44ad6f	 RIP: 44ad6a	 Bytes: 5
  %loadMem_44ad6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad6a = call %struct.Memory* @routine_jmpq_.L_44ad6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad6a, i64 5, i64 5)
  store %struct.Memory* %call_44ad6a, %struct.Memory** %MEMORY

  br label %block_.L_44ad6f

  ; Code: .L_44ad6f:	 RIP: 44ad6f	 Bytes: 0
block_.L_44ad6f:

  ; Code: jmpq .L_44ad74	 RIP: 44ad6f	 Bytes: 5
  %loadMem_44ad6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad6f = call %struct.Memory* @routine_jmpq_.L_44ad74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad6f, i64 5, i64 5)
  store %struct.Memory* %call_44ad6f, %struct.Memory** %MEMORY

  br label %block_.L_44ad74

  ; Code: .L_44ad74:	 RIP: 44ad74	 Bytes: 0
block_.L_44ad74:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 44ad74	 Bytes: 7
  %loadMem_44ad74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad74 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad74)
  store %struct.Memory* %call_44ad74, %struct.Memory** %MEMORY

  ; Code: .L_44ad7b:	 RIP: 44ad7b	 Bytes: 0
  br label %block_.L_44ad7b
block_.L_44ad7b:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44ad7b	 Bytes: 3
  %loadMem_44ad7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad7b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad7b)
  store %struct.Memory* %call_44ad7b, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rsp	 RIP: 44ad7e	 Bytes: 4
  %loadMem_44ad7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad7e = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad7e)
  store %struct.Memory* %call_44ad7e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44ad82	 Bytes: 1
  %loadMem_44ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad82 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad82)
  store %struct.Memory* %call_44ad82, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44ad83	 Bytes: 1
  %loadMem_44ad83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad83 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad83)
  store %struct.Memory* %call_44ad83, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44ad83
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x45a1f5___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x45a1f5_type* @G__0x45a1f5 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_callq_.sre_strtok(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_44a94d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44ad7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f5_type* @G__0x45a1f5 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_jne_.L_44a97e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_jne_.L_44a9af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_44a9b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x39__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_je_.L_44a9f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movb__al__MINUS0x3a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 58
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_44a9f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x9___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl__MINUS0x3a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 58
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
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

define %struct.Memory* @routine_movb_MINUS0x3a__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 58
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0x39__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 57
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x39__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 57
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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


define %struct.Memory* @routine_jne_.L_44aa06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_44aa17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x459a0f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a0f_type* @G__0x459a0f to i64))
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


define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_44aa4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4294967295)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sre_strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x28__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_44ad74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a14_type* @G__0x459a14 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44aa7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rax__0x38__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_44ad6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a19___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a19_type* @G__0x459a19 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44aab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_44ad6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a0a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a0a_type* @G__0x459a0a to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44aae7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rax__0x40__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_44ad65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a1e___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a1e_type* @G__0x459a1e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44abb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jne_.L_44ab39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.atof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__0x88__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0xa0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_je_.L_44abac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movss__xmm0__0x8c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 140
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0xa4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44ad60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a78___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a78_type* @G__0x459a78 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44ac7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_44ac03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movss__xmm0__0x90__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0xa8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_je_.L_44ac76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movss__xmm0__0x94__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0xac__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44ad5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x459a4b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x459a4b_type* @G__0x459a4b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_44ad45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_44accd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movss__xmm0__0x80__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0x98__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_je_.L_44ad40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movss__xmm0__0x84__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 132
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__0x9c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44ad56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.MSAAddGF(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

