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

declare %struct.Memory* @sub_400df0.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410160.ResetHandValue(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62d784_type = type <{ [4 x i8] }>
@G_0x62d784= global %G_0x62d784_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d788_type = type <{ [4 x i8] }>
@G_0x62d788= global %G_0x62d788_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d78c_type = type <{ [4 x i8] }>
@G_0x62d78c= global %G_0x62d78c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d790_type = type <{ [4 x i8] }>
@G_0x62d790= global %G_0x62d790_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d79c_type = type <{ [4 x i8] }>
@G_0x62d79c= global %G_0x62d79c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7a0_type = type <{ [4 x i8] }>
@G_0x62d7a0= global %G_0x62d7a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7a4_type = type <{ [4 x i8] }>
@G_0x62d7a4= global %G_0x62d7a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7a8_type = type <{ [4 x i8] }>
@G_0x62d7a8= global %G_0x62d7a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7ac_type = type <{ [4 x i8] }>
@G_0x62d7ac= global %G_0x62d7ac_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7b0_type = type <{ [4 x i8] }>
@G_0x62d7b0= global %G_0x62d7b0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7c4_type = type <{ [4 x i8] }>
@G_0x62d7c4= global %G_0x62d7c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7c8_type = type <{ [4 x i8] }>
@G_0x62d7c8= global %G_0x62d7c8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7cc_type = type <{ [4 x i8] }>
@G_0x62d7cc= global %G_0x62d7cc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7d0_type = type <{ [4 x i8] }>
@G_0x62d7d0= global %G_0x62d7d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7dc_type = type <{ [4 x i8] }>
@G_0x62d7dc= global %G_0x62d7dc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7e0_type = type <{ [4 x i8] }>
@G_0x62d7e0= global %G_0x62d7e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7e4_type = type <{ [4 x i8] }>
@G_0x62d7e4= global %G_0x62d7e4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7e8_type = type <{ [4 x i8] }>
@G_0x62d7e8= global %G_0x62d7e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7ec_type = type <{ [4 x i8] }>
@G_0x62d7ec= global %G_0x62d7ec_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62d7f0_type = type <{ [4 x i8] }>
@G_0x62d7f0= global %G_0x62d7f0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x86bd60_type = type <{ [4 x i8] }>
@G_0x86bd60= global %G_0x86bd60_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd74_type = type <{ [4 x i8] }>
@G_0x86bd74= global %G_0x86bd74_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd78_type = type <{ [4 x i8] }>
@G_0x86bd78= global %G_0x86bd78_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd90_type = type <{ [4 x i8] }>
@G_0x86bd90= global %G_0x86bd90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886a60_type = type <{ [4 x i8] }>
@G_0x886a60= global %G_0x886a60_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886b84_type = type <{ [1 x i8] }>
@G_0x886b84= global %G_0x886b84_type <{ [1 x i8] c"\00" }>
%G__0x427d10_type = type <{ [8 x i8] }>
@G__0x427d10= global %G__0x427d10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42873b_type = type <{ [8 x i8] }>
@G__0x42873b= global %G__0x42873b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428778_type = type <{ [8 x i8] }>
@G__0x428778= global %G__0x428778_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42877b_type = type <{ [8 x i8] }>
@G__0x42877b= global %G__0x42877b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42877d_type = type <{ [8 x i8] }>
@G__0x42877d= global %G__0x42877d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428810_type = type <{ [8 x i8] }>
@G__0x428810= global %G__0x428810_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428816_type = type <{ [8 x i8] }>
@G__0x428816= global %G__0x428816_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428851_type = type <{ [8 x i8] }>
@G__0x428851= global %G__0x428851_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428855_type = type <{ [8 x i8] }>
@G__0x428855= global %G__0x428855_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42888d_type = type <{ [8 x i8] }>
@G__0x42888d= global %G__0x42888d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428890_type = type <{ [8 x i8] }>
@G__0x428890= global %G__0x428890_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4288af_type = type <{ [8 x i8] }>
@G__0x4288af= global %G__0x4288af_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4288b4_type = type <{ [8 x i8] }>
@G__0x4288b4= global %G__0x4288b4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4288b9_type = type <{ [8 x i8] }>
@G__0x4288b9= global %G__0x4288b9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4288dc_type = type <{ [8 x i8] }>
@G__0x4288dc= global %G__0x4288dc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4288e1_type = type <{ [8 x i8] }>
@G__0x4288e1= global %G__0x4288e1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428905_type = type <{ [8 x i8] }>
@G__0x428905= global %G__0x428905_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42890b_type = type <{ [8 x i8] }>
@G__0x42890b= global %G__0x42890b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42892e_type = type <{ [8 x i8] }>
@G__0x42892e= global %G__0x42892e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42893d_type = type <{ [8 x i8] }>
@G__0x42893d= global %G__0x42893d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428942_type = type <{ [8 x i8] }>
@G__0x428942= global %G__0x428942_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42895d_type = type <{ [8 x i8] }>
@G__0x42895d= global %G__0x42895d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42896b_type = type <{ [8 x i8] }>
@G__0x42896b= global %G__0x42896b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428971_type = type <{ [8 x i8] }>
@G__0x428971= global %G__0x428971_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428973_type = type <{ [8 x i8] }>
@G__0x428973= global %G__0x428973_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428996_type = type <{ [8 x i8] }>
@G__0x428996= global %G__0x428996_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428997_type = type <{ [8 x i8] }>
@G__0x428997= global %G__0x428997_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428998_type = type <{ [8 x i8] }>
@G__0x428998= global %G__0x428998_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42899a_type = type <{ [4 x i8] }>
@G__0x42899a= global %G__0x42899a_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4289a0_type = type <{ [4 x i8] }>
@G__0x4289a0= global %G__0x4289a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4289d1_type = type <{ [4 x i8] }>
@G__0x4289d1= global %G__0x4289d1_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4289fd_type = type <{ [8 x i8] }>
@G__0x4289fd= global %G__0x4289fd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428a1a_type = type <{ [8 x i8] }>
@G__0x428a1a= global %G__0x428a1a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428a37_type = type <{ [8 x i8] }>
@G__0x428a37= global %G__0x428a37_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428a52_type = type <{ [8 x i8] }>
@G__0x428a52= global %G__0x428a52_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428a6e_type = type <{ [8 x i8] }>
@G__0x428a6e= global %G__0x428a6e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428a89_type = type <{ [8 x i8] }>
@G__0x428a89= global %G__0x428a89_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428aa8_type = type <{ [8 x i8] }>
@G__0x428aa8= global %G__0x428aa8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ac4_type = type <{ [8 x i8] }>
@G__0x428ac4= global %G__0x428ac4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ae6_type = type <{ [8 x i8] }>
@G__0x428ae6= global %G__0x428ae6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ae7_type = type <{ [8 x i8] }>
@G__0x428ae7= global %G__0x428ae7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ae8_type = type <{ [8 x i8] }>
@G__0x428ae8= global %G__0x428ae8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428aea_type = type <{ [4 x i8] }>
@G__0x428aea= global %G__0x428aea_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x428b1f_type = type <{ [4 x i8] }>
@G__0x428b1f= global %G__0x428b1f_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x428b53_type = type <{ [4 x i8] }>
@G__0x428b53= global %G__0x428b53_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x428b82_type = type <{ [8 x i8] }>
@G__0x428b82= global %G__0x428b82_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428b84_type = type <{ [8 x i8] }>
@G__0x428b84= global %G__0x428b84_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428b94_type = type <{ [8 x i8] }>
@G__0x428b94= global %G__0x428b94_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428b9a_type = type <{ [8 x i8] }>
@G__0x428b9a= global %G__0x428b9a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428b9f_type = type <{ [8 x i8] }>
@G__0x428b9f= global %G__0x428b9f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ba1_type = type <{ [8 x i8] }>
@G__0x428ba1= global %G__0x428ba1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428baa_type = type <{ [8 x i8] }>
@G__0x428baa= global %G__0x428baa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428be1_type = type <{ [8 x i8] }>
@G__0x428be1= global %G__0x428be1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428bfb_type = type <{ [8 x i8] }>
@G__0x428bfb= global %G__0x428bfb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c00_type = type <{ [8 x i8] }>
@G__0x428c00= global %G__0x428c00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c1b_type = type <{ [8 x i8] }>
@G__0x428c1b= global %G__0x428c1b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c1e_type = type <{ [8 x i8] }>
@G__0x428c1e= global %G__0x428c1e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c21_type = type <{ [8 x i8] }>
@G__0x428c21= global %G__0x428c21_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c27_type = type <{ [8 x i8] }>
@G__0x428c27= global %G__0x428c27_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c41_type = type <{ [8 x i8] }>
@G__0x428c41= global %G__0x428c41_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428c49_type = type <{ [8 x i8] }>
@G__0x428c49= global %G__0x428c49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x428ca0_type = type <{ [8 x i8] }>
@G__0x428ca0= global %G__0x428ca0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4294da_type = type <{ [8 x i8] }>
@G__0x4294da= global %G__0x4294da_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429aeb_type = type <{ [8 x i8] }>
@G__0x429aeb= global %G__0x429aeb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b31_type = type <{ [8 x i8] }>
@G__0x429b31= global %G__0x429b31_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b3b_type = type <{ [8 x i8] }>
@G__0x429b3b= global %G__0x429b3b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b45_type = type <{ [8 x i8] }>
@G__0x429b45= global %G__0x429b45_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429b59_type = type <{ [8 x i8] }>
@G__0x429b59= global %G__0x429b59_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @HandlePtell(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .HandlePtell:	 RIP: 4102d0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4102d0	 Bytes: 1
  %loadMem_4102d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d0)
  store %struct.Memory* %call_4102d0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4102d1	 Bytes: 3
  %loadMem_4102d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d1)
  store %struct.Memory* %call_4102d1, %struct.Memory** %MEMORY

  ; Code: subq $0x120, %rsp	 RIP: 4102d4	 Bytes: 7
  %loadMem_4102d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d4 = call %struct.Memory* @routine_subq__0x120___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d4)
  store %struct.Memory* %call_4102d4, %struct.Memory** %MEMORY

  ; Code: movq $0x428778, %rsi	 RIP: 4102db	 Bytes: 10
  %loadMem_4102db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102db = call %struct.Memory* @routine_movq__0x428778___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102db)
  store %struct.Memory* %call_4102db, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4102e5	 Bytes: 5
  %loadMem_4102e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102e5 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102e5)
  store %struct.Memory* %call_4102e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4102ea	 Bytes: 2
  %loadMem_4102ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ea = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ea)
  store %struct.Memory* %call_4102ea, %struct.Memory** %MEMORY

  ; Code: movq $0x427d10, %rcx	 RIP: 4102ec	 Bytes: 10
  %loadMem_4102ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ec = call %struct.Memory* @routine_movq__0x427d10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ec)
  store %struct.Memory* %call_4102ec, %struct.Memory** %MEMORY

  ; Code: movl $0x50, %eax	 RIP: 4102f6	 Bytes: 5
  %loadMem_4102f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102f6 = call %struct.Memory* @routine_movl__0x50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102f6)
  store %struct.Memory* %call_4102f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4102fb	 Bytes: 3
  %loadMem_4102fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102fb = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102fb)
  store %struct.Memory* %call_4102fb, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %r9	 RIP: 4102fe	 Bytes: 4
  %loadMem_4102fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102fe = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102fe)
  store %struct.Memory* %call_4102fe, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 410302	 Bytes: 4
  %loadMem_410302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410302 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410302)
  store %struct.Memory* %call_410302, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 410306	 Bytes: 7
  %loadMem_410306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410306 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410306)
  store %struct.Memory* %call_410306, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdi	 RIP: 41030d	 Bytes: 3
  %loadMem_41030d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41030d = call %struct.Memory* @routine_movq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41030d)
  store %struct.Memory* %call_41030d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x68(%rbp)	 RIP: 410310	 Bytes: 4
  %loadMem_410310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410310 = call %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410310)
  store %struct.Memory* %call_410310, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 410314	 Bytes: 3
  %loadMem_410314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410314 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410314)
  store %struct.Memory* %call_410314, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x70(%rbp)	 RIP: 410317	 Bytes: 4
  %loadMem_410317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410317 = call %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410317)
  store %struct.Memory* %call_410317, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 41031b	 Bytes: 3
  %loadMem_41031b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41031b = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41031b)
  store %struct.Memory* %call_41031b, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 41031e	 Bytes: 5
  %loadMem1_41031e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41031e = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41031e, i64 -62942, i64 5, i64 5)
  store %struct.Memory* %call1_41031e, %struct.Memory** %MEMORY

  %loadMem2_41031e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41031e = load i64, i64* %3
  %call2_41031e = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_41031e, %struct.Memory* %loadMem2_41031e)
  store %struct.Memory* %call2_41031e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410323	 Bytes: 4
  %loadMem_410323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410323 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410323)
  store %struct.Memory* %call_410323, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410327	 Bytes: 4
  %loadMem_410327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410327 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410327)
  store %struct.Memory* %call_410327, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41032b	 Bytes: 3
  %loadMem_41032b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41032b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41032b)
  store %struct.Memory* %call_41032b, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 41032e	 Bytes: 4
  %loadMem_41032e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41032e = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41032e)
  store %struct.Memory* %call_41032e, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdx	 RIP: 410332	 Bytes: 4
  %loadMem_410332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410332 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410332)
  store %struct.Memory* %call_410332, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410336	 Bytes: 5
  %loadMem1_410336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410336 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410336, i64 -63190, i64 5, i64 5)
  store %struct.Memory* %call1_410336, %struct.Memory** %MEMORY

  %loadMem2_410336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410336 = load i64, i64* %3
  %call2_410336 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410336, %struct.Memory* %loadMem2_410336)
  store %struct.Memory* %call2_410336, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41033b	 Bytes: 3
  %loadMem_41033b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41033b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41033b)
  store %struct.Memory* %call_41033b, %struct.Memory** %MEMORY

  ; Code: jne .L_41035d	 RIP: 41033e	 Bytes: 6
  %loadMem_41033e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41033e = call %struct.Memory* @routine_jne_.L_41035d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41033e, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_41033e, %struct.Memory** %MEMORY

  %loadBr_41033e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41033e = icmp eq i8 %loadBr_41033e, 1
  br i1 %cmpBr_41033e, label %block_.L_41035d, label %block_410344

block_410344:
  ; Code: movq $0x42877d, %rdi	 RIP: 410344	 Bytes: 10
  %loadMem_410344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410344 = call %struct.Memory* @routine_movq__0x42877d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410344)
  store %struct.Memory* %call_410344, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41034e	 Bytes: 2
  %loadMem_41034e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41034e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41034e)
  store %struct.Memory* %call_41034e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410350	 Bytes: 5
  %loadMem1_410350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410350 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410350, i64 -63136, i64 5, i64 5)
  store %struct.Memory* %call1_410350, %struct.Memory** %MEMORY

  %loadMem2_410350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410350 = load i64, i64* %3
  %call2_410350 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410350, %struct.Memory* %loadMem2_410350)
  store %struct.Memory* %call2_410350, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 410355	 Bytes: 3
  %loadMem_410355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410355 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410355)
  store %struct.Memory* %call_410355, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41186f	 RIP: 410358	 Bytes: 5
  %loadMem_410358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410358 = call %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410358, i64 5399, i64 5)
  store %struct.Memory* %call_410358, %struct.Memory** %MEMORY

  br label %block_.L_41186f

  ; Code: .L_41035d:	 RIP: 41035d	 Bytes: 0
block_.L_41035d:

  ; Code: cmpl $0x1, 0x85f154	 RIP: 41035d	 Bytes: 8
  %loadMem_41035d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41035d = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41035d)
  store %struct.Memory* %call_41035d, %struct.Memory** %MEMORY

  ; Code: je .L_4103ae	 RIP: 410365	 Bytes: 6
  %loadMem_410365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410365 = call %struct.Memory* @routine_je_.L_4103ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410365, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_410365, %struct.Memory** %MEMORY

  %loadBr_410365 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410365 = icmp eq i8 %loadBr_410365, 1
  br i1 %cmpBr_410365, label %block_.L_4103ae, label %block_41036b

block_41036b:
  ; Code: movq $0x428810, %rsi	 RIP: 41036b	 Bytes: 10
  %loadMem_41036b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41036b = call %struct.Memory* @routine_movq__0x428810___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41036b)
  store %struct.Memory* %call_41036b, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 410375	 Bytes: 5
  %loadMem_410375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410375 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410375)
  store %struct.Memory* %call_410375, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41037a	 Bytes: 2
  %loadMem_41037a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41037a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41037a)
  store %struct.Memory* %call_41037a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41037c	 Bytes: 4
  %loadMem_41037c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41037c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41037c)
  store %struct.Memory* %call_41037c, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410380	 Bytes: 4
  %loadMem_410380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410380 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410380)
  store %struct.Memory* %call_410380, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 410384	 Bytes: 3
  %loadMem_410384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410384 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410384)
  store %struct.Memory* %call_410384, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410387	 Bytes: 5
  %loadMem1_410387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410387 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410387, i64 -63271, i64 5, i64 5)
  store %struct.Memory* %call1_410387, %struct.Memory** %MEMORY

  %loadMem2_410387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410387 = load i64, i64* %3
  %call2_410387 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410387, %struct.Memory* %loadMem2_410387)
  store %struct.Memory* %call2_410387, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41038c	 Bytes: 3
  %loadMem_41038c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41038c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41038c)
  store %struct.Memory* %call_41038c, %struct.Memory** %MEMORY

  ; Code: je .L_4103ae	 RIP: 41038f	 Bytes: 6
  %loadMem_41038f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41038f = call %struct.Memory* @routine_je_.L_4103ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41038f, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_41038f, %struct.Memory** %MEMORY

  %loadBr_41038f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41038f = icmp eq i8 %loadBr_41038f, 1
  br i1 %cmpBr_41038f, label %block_.L_4103ae, label %block_410395

block_410395:
  ; Code: movq $0x428816, %rdi	 RIP: 410395	 Bytes: 10
  %loadMem_410395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410395 = call %struct.Memory* @routine_movq__0x428816___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410395)
  store %struct.Memory* %call_410395, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41039f	 Bytes: 2
  %loadMem_41039f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41039f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41039f)
  store %struct.Memory* %call_41039f, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4103a1	 Bytes: 5
  %loadMem1_4103a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4103a1 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4103a1, i64 -63217, i64 5, i64 5)
  store %struct.Memory* %call1_4103a1, %struct.Memory** %MEMORY

  %loadMem2_4103a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4103a1 = load i64, i64* %3
  %call2_4103a1 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4103a1, %struct.Memory* %loadMem2_4103a1)
  store %struct.Memory* %call2_4103a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 4103a6	 Bytes: 3
  %loadMem_4103a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103a6 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103a6)
  store %struct.Memory* %call_4103a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41186f	 RIP: 4103a9	 Bytes: 5
  %loadMem_4103a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103a9 = call %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103a9, i64 5318, i64 5)
  store %struct.Memory* %call_4103a9, %struct.Memory** %MEMORY

  br label %block_.L_41186f

  ; Code: .L_4103ae:	 RIP: 4103ae	 Bytes: 0
block_.L_4103ae:

  ; Code: movq $0x428851, %rsi	 RIP: 4103ae	 Bytes: 10
  %loadMem_4103ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103ae = call %struct.Memory* @routine_movq__0x428851___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103ae)
  store %struct.Memory* %call_4103ae, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 4103b8	 Bytes: 5
  %loadMem_4103b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103b8 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103b8)
  store %struct.Memory* %call_4103b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4103bd	 Bytes: 2
  %loadMem_4103bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103bd = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103bd)
  store %struct.Memory* %call_4103bd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4103bf	 Bytes: 4
  %loadMem_4103bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103bf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103bf)
  store %struct.Memory* %call_4103bf, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4103c3	 Bytes: 4
  %loadMem_4103c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103c3 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103c3)
  store %struct.Memory* %call_4103c3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4103c7	 Bytes: 3
  %loadMem_4103c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103c7 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103c7)
  store %struct.Memory* %call_4103c7, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4103ca	 Bytes: 5
  %loadMem1_4103ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4103ca = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4103ca, i64 -63338, i64 5, i64 5)
  store %struct.Memory* %call1_4103ca, %struct.Memory** %MEMORY

  %loadMem2_4103ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4103ca = load i64, i64* %3
  %call2_4103ca = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4103ca, %struct.Memory* %loadMem2_4103ca)
  store %struct.Memory* %call2_4103ca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4103cf	 Bytes: 3
  %loadMem_4103cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103cf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103cf)
  store %struct.Memory* %call_4103cf, %struct.Memory** %MEMORY

  ; Code: jne .L_410407	 RIP: 4103d2	 Bytes: 6
  %loadMem_4103d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103d2 = call %struct.Memory* @routine_jne_.L_410407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103d2, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4103d2, %struct.Memory** %MEMORY

  %loadBr_4103d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4103d2 = icmp eq i8 %loadBr_4103d2, 1
  br i1 %cmpBr_4103d2, label %block_.L_410407, label %block_4103d8

block_4103d8:
  ; Code: movq $0x428855, %rdi	 RIP: 4103d8	 Bytes: 10
  %loadMem_4103d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103d8 = call %struct.Memory* @routine_movq__0x428855___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103d8)
  store %struct.Memory* %call_4103d8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4103e2	 Bytes: 2
  %loadMem_4103e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103e2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103e2)
  store %struct.Memory* %call_4103e2, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4103e4	 Bytes: 5
  %loadMem1_4103e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4103e4 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4103e4, i64 -63284, i64 5, i64 5)
  store %struct.Memory* %call1_4103e4, %struct.Memory** %MEMORY

  %loadMem2_4103e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4103e4 = load i64, i64* %3
  %call2_4103e4 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4103e4, %struct.Memory* %loadMem2_4103e4)
  store %struct.Memory* %call2_4103e4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x86bd90	 RIP: 4103e9	 Bytes: 11
  %loadMem_4103e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103e9 = call %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103e9)
  store %struct.Memory* %call_4103e9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd60	 RIP: 4103f4	 Bytes: 11
  %loadMem_4103f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103f4 = call %struct.Memory* @routine_movl__0x0__0x86bd60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103f4)
  store %struct.Memory* %call_4103f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 4103ff	 Bytes: 3
  %loadMem_4103ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103ff = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103ff)
  store %struct.Memory* %call_4103ff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41186a	 RIP: 410402	 Bytes: 5
  %loadMem_410402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410402 = call %struct.Memory* @routine_jmpq_.L_41186a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410402, i64 5224, i64 5)
  store %struct.Memory* %call_410402, %struct.Memory** %MEMORY

  br label %block_.L_41186a

  ; Code: .L_410407:	 RIP: 410407	 Bytes: 0
block_.L_410407:

  ; Code: movq $0x42888d, %rsi	 RIP: 410407	 Bytes: 10
  %loadMem_410407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410407 = call %struct.Memory* @routine_movq__0x42888d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410407)
  store %struct.Memory* %call_410407, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 410411	 Bytes: 5
  %loadMem_410411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410411 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410411)
  store %struct.Memory* %call_410411, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 410416	 Bytes: 2
  %loadMem_410416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410416 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410416)
  store %struct.Memory* %call_410416, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410418	 Bytes: 4
  %loadMem_410418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410418 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410418)
  store %struct.Memory* %call_410418, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41041c	 Bytes: 4
  %loadMem_41041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41041c = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41041c)
  store %struct.Memory* %call_41041c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 410420	 Bytes: 3
  %loadMem_410420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410420 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410420)
  store %struct.Memory* %call_410420, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410423	 Bytes: 5
  %loadMem1_410423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410423 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410423, i64 -63427, i64 5, i64 5)
  store %struct.Memory* %call1_410423, %struct.Memory** %MEMORY

  %loadMem2_410423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410423 = load i64, i64* %3
  %call2_410423 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410423, %struct.Memory* %loadMem2_410423)
  store %struct.Memory* %call2_410423, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410428	 Bytes: 3
  %loadMem_410428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410428 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410428)
  store %struct.Memory* %call_410428, %struct.Memory** %MEMORY

  ; Code: je .L_41045b	 RIP: 41042b	 Bytes: 6
  %loadMem_41042b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41042b = call %struct.Memory* @routine_je_.L_41045b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41042b, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41042b, %struct.Memory** %MEMORY

  %loadBr_41042b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41042b = icmp eq i8 %loadBr_41042b, 1
  br i1 %cmpBr_41042b, label %block_.L_41045b, label %block_410431

block_410431:
  ; Code: movq $0x4294da, %rsi	 RIP: 410431	 Bytes: 10
  %loadMem_410431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410431 = call %struct.Memory* @routine_movq__0x4294da___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410431)
  store %struct.Memory* %call_410431, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 41043b	 Bytes: 5
  %loadMem_41043b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41043b = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41043b)
  store %struct.Memory* %call_41043b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 410440	 Bytes: 2
  %loadMem_410440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410440 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410440)
  store %struct.Memory* %call_410440, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410442	 Bytes: 4
  %loadMem_410442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410442 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410442)
  store %struct.Memory* %call_410442, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410446	 Bytes: 4
  %loadMem_410446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410446 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410446)
  store %struct.Memory* %call_410446, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41044a	 Bytes: 3
  %loadMem_41044a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41044a = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41044a)
  store %struct.Memory* %call_41044a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41044d	 Bytes: 5
  %loadMem1_41044d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41044d = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41044d, i64 -63469, i64 5, i64 5)
  store %struct.Memory* %call1_41044d, %struct.Memory** %MEMORY

  %loadMem2_41044d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41044d = load i64, i64* %3
  %call2_41044d = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41044d, %struct.Memory* %loadMem2_41044d)
  store %struct.Memory* %call2_41044d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410452	 Bytes: 3
  %loadMem_410452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410452 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410452)
  store %struct.Memory* %call_410452, %struct.Memory** %MEMORY

  ; Code: jne .L_41048a	 RIP: 410455	 Bytes: 6
  %loadMem_410455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410455 = call %struct.Memory* @routine_jne_.L_41048a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410455, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_410455, %struct.Memory** %MEMORY

  %loadBr_410455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410455 = icmp eq i8 %loadBr_410455, 1
  br i1 %cmpBr_410455, label %block_.L_41048a, label %block_.L_41045b

  ; Code: .L_41045b:	 RIP: 41045b	 Bytes: 0
block_.L_41045b:

  ; Code: movq $0x428890, %rdi	 RIP: 41045b	 Bytes: 10
  %loadMem_41045b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41045b = call %struct.Memory* @routine_movq__0x428890___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41045b)
  store %struct.Memory* %call_41045b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410465	 Bytes: 2
  %loadMem_410465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410465 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410465)
  store %struct.Memory* %call_410465, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410467	 Bytes: 5
  %loadMem1_410467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410467 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410467, i64 -63415, i64 5, i64 5)
  store %struct.Memory* %call1_410467, %struct.Memory** %MEMORY

  %loadMem2_410467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410467 = load i64, i64* %3
  %call2_410467 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410467, %struct.Memory* %loadMem2_410467)
  store %struct.Memory* %call2_410467, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 41046c	 Bytes: 11
  %loadMem_41046c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41046c = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41046c)
  store %struct.Memory* %call_41046c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, 0x86bd60	 RIP: 410477	 Bytes: 11
  %loadMem_410477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410477 = call %struct.Memory* @routine_movl__0x4__0x86bd60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410477)
  store %struct.Memory* %call_410477, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 410482	 Bytes: 3
  %loadMem_410482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410482 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410482)
  store %struct.Memory* %call_410482, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411865	 RIP: 410485	 Bytes: 5
  %loadMem_410485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410485 = call %struct.Memory* @routine_jmpq_.L_411865(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410485, i64 5088, i64 5)
  store %struct.Memory* %call_410485, %struct.Memory** %MEMORY

  br label %block_.L_411865

  ; Code: .L_41048a:	 RIP: 41048a	 Bytes: 0
block_.L_41048a:

  ; Code: movq $0x4288af, %rsi	 RIP: 41048a	 Bytes: 10
  %loadMem_41048a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41048a = call %struct.Memory* @routine_movq__0x4288af___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41048a)
  store %struct.Memory* %call_41048a, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 410494	 Bytes: 5
  %loadMem_410494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410494 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410494)
  store %struct.Memory* %call_410494, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 410499	 Bytes: 2
  %loadMem_410499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410499 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410499)
  store %struct.Memory* %call_410499, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41049b	 Bytes: 4
  %loadMem_41049b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41049b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41049b)
  store %struct.Memory* %call_41049b, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41049f	 Bytes: 4
  %loadMem_41049f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41049f = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41049f)
  store %struct.Memory* %call_41049f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4104a3	 Bytes: 3
  %loadMem_4104a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104a3 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104a3)
  store %struct.Memory* %call_4104a3, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4104a6	 Bytes: 5
  %loadMem1_4104a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4104a6 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4104a6, i64 -63558, i64 5, i64 5)
  store %struct.Memory* %call1_4104a6, %struct.Memory** %MEMORY

  %loadMem2_4104a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4104a6 = load i64, i64* %3
  %call2_4104a6 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4104a6, %struct.Memory* %loadMem2_4104a6)
  store %struct.Memory* %call2_4104a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4104ab	 Bytes: 3
  %loadMem_4104ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ab = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ab)
  store %struct.Memory* %call_4104ab, %struct.Memory** %MEMORY

  ; Code: je .L_4104de	 RIP: 4104ae	 Bytes: 6
  %loadMem_4104ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ae = call %struct.Memory* @routine_je_.L_4104de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ae, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4104ae, %struct.Memory** %MEMORY

  %loadBr_4104ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4104ae = icmp eq i8 %loadBr_4104ae, 1
  br i1 %cmpBr_4104ae, label %block_.L_4104de, label %block_4104b4

block_4104b4:
  ; Code: movq $0x4288b4, %rsi	 RIP: 4104b4	 Bytes: 10
  %loadMem_4104b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104b4 = call %struct.Memory* @routine_movq__0x4288b4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104b4)
  store %struct.Memory* %call_4104b4, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4104be	 Bytes: 5
  %loadMem_4104be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104be = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104be)
  store %struct.Memory* %call_4104be, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4104c3	 Bytes: 2
  %loadMem_4104c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104c3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104c3)
  store %struct.Memory* %call_4104c3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4104c5	 Bytes: 4
  %loadMem_4104c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104c5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104c5)
  store %struct.Memory* %call_4104c5, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4104c9	 Bytes: 4
  %loadMem_4104c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104c9 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104c9)
  store %struct.Memory* %call_4104c9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4104cd	 Bytes: 3
  %loadMem_4104cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104cd = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104cd)
  store %struct.Memory* %call_4104cd, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4104d0	 Bytes: 5
  %loadMem1_4104d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4104d0 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4104d0, i64 -63600, i64 5, i64 5)
  store %struct.Memory* %call1_4104d0, %struct.Memory** %MEMORY

  %loadMem2_4104d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4104d0 = load i64, i64* %3
  %call2_4104d0 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4104d0, %struct.Memory* %loadMem2_4104d0)
  store %struct.Memory* %call2_4104d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4104d5	 Bytes: 3
  %loadMem_4104d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104d5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104d5)
  store %struct.Memory* %call_4104d5, %struct.Memory** %MEMORY

  ; Code: jne .L_410510	 RIP: 4104d8	 Bytes: 6
  %loadMem_4104d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104d8 = call %struct.Memory* @routine_jne_.L_410510(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104d8, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4104d8, %struct.Memory** %MEMORY

  %loadBr_4104d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4104d8 = icmp eq i8 %loadBr_4104d8, 1
  br i1 %cmpBr_4104d8, label %block_.L_410510, label %block_.L_4104de

  ; Code: .L_4104de:	 RIP: 4104de	 Bytes: 0
block_.L_4104de:

  ; Code: movq $0x4288b9, %rdi	 RIP: 4104de	 Bytes: 10
  %loadMem_4104de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104de = call %struct.Memory* @routine_movq__0x4288b9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104de)
  store %struct.Memory* %call_4104de, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4104e8	 Bytes: 2
  %loadMem_4104e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104e8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104e8)
  store %struct.Memory* %call_4104e8, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4104ea	 Bytes: 5
  %loadMem1_4104ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4104ea = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4104ea, i64 -63546, i64 5, i64 5)
  store %struct.Memory* %call1_4104ea, %struct.Memory** %MEMORY

  %loadMem2_4104ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4104ea = load i64, i64* %3
  %call2_4104ea = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4104ea, %struct.Memory* %loadMem2_4104ea)
  store %struct.Memory* %call2_4104ea, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x886a60	 RIP: 4104ef	 Bytes: 11
  %loadMem_4104ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ef = call %struct.Memory* @routine_movl__0x1__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ef)
  store %struct.Memory* %call_4104ef, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 4104fa	 Bytes: 11
  %loadMem_4104fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104fa = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104fa)
  store %struct.Memory* %call_4104fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 410505	 Bytes: 6
  %loadMem_410505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410505 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410505)
  store %struct.Memory* %call_410505, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411860	 RIP: 41050b	 Bytes: 5
  %loadMem_41050b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41050b = call %struct.Memory* @routine_jmpq_.L_411860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41050b, i64 4949, i64 5)
  store %struct.Memory* %call_41050b, %struct.Memory** %MEMORY

  br label %block_.L_411860

  ; Code: .L_410510:	 RIP: 410510	 Bytes: 0
block_.L_410510:

  ; Code: movq $0x4288dc, %rsi	 RIP: 410510	 Bytes: 10
  %loadMem_410510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410510 = call %struct.Memory* @routine_movq__0x4288dc___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410510)
  store %struct.Memory* %call_410510, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 41051a	 Bytes: 5
  %loadMem_41051a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41051a = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41051a)
  store %struct.Memory* %call_41051a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41051f	 Bytes: 2
  %loadMem_41051f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41051f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41051f)
  store %struct.Memory* %call_41051f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410521	 Bytes: 4
  %loadMem_410521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410521 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410521)
  store %struct.Memory* %call_410521, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410525	 Bytes: 4
  %loadMem_410525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410525 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410525)
  store %struct.Memory* %call_410525, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 410529	 Bytes: 3
  %loadMem_410529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410529 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410529)
  store %struct.Memory* %call_410529, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41052c	 Bytes: 5
  %loadMem1_41052c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41052c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41052c, i64 -63692, i64 5, i64 5)
  store %struct.Memory* %call1_41052c, %struct.Memory** %MEMORY

  %loadMem2_41052c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41052c = load i64, i64* %3
  %call2_41052c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41052c, %struct.Memory* %loadMem2_41052c)
  store %struct.Memory* %call2_41052c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410531	 Bytes: 3
  %loadMem_410531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410531 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410531)
  store %struct.Memory* %call_410531, %struct.Memory** %MEMORY

  ; Code: jne .L_41056c	 RIP: 410534	 Bytes: 6
  %loadMem_410534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410534 = call %struct.Memory* @routine_jne_.L_41056c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410534, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_410534, %struct.Memory** %MEMORY

  %loadBr_410534 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410534 = icmp eq i8 %loadBr_410534, 1
  br i1 %cmpBr_410534, label %block_.L_41056c, label %block_41053a

block_41053a:
  ; Code: movq $0x4288e1, %rdi	 RIP: 41053a	 Bytes: 10
  %loadMem_41053a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41053a = call %struct.Memory* @routine_movq__0x4288e1___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41053a)
  store %struct.Memory* %call_41053a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410544	 Bytes: 2
  %loadMem_410544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410544 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410544)
  store %struct.Memory* %call_410544, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410546	 Bytes: 5
  %loadMem1_410546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410546 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410546, i64 -63638, i64 5, i64 5)
  store %struct.Memory* %call1_410546, %struct.Memory** %MEMORY

  %loadMem2_410546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410546 = load i64, i64* %3
  %call2_410546 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410546, %struct.Memory* %loadMem2_410546)
  store %struct.Memory* %call2_410546, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x886a60	 RIP: 41054b	 Bytes: 11
  %loadMem_41054b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41054b = call %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41054b)
  store %struct.Memory* %call_41054b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 410556	 Bytes: 11
  %loadMem_410556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410556 = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410556)
  store %struct.Memory* %call_410556, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 410561	 Bytes: 6
  %loadMem_410561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410561 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410561)
  store %struct.Memory* %call_410561, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41185b	 RIP: 410567	 Bytes: 5
  %loadMem_410567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410567 = call %struct.Memory* @routine_jmpq_.L_41185b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410567, i64 4852, i64 5)
  store %struct.Memory* %call_410567, %struct.Memory** %MEMORY

  br label %block_.L_41185b

  ; Code: .L_41056c:	 RIP: 41056c	 Bytes: 0
block_.L_41056c:

  ; Code: movq $0x428905, %rsi	 RIP: 41056c	 Bytes: 10
  %loadMem_41056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41056c = call %struct.Memory* @routine_movq__0x428905___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41056c)
  store %struct.Memory* %call_41056c, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 410576	 Bytes: 5
  %loadMem_410576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410576 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410576)
  store %struct.Memory* %call_410576, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41057b	 Bytes: 2
  %loadMem_41057b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41057b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41057b)
  store %struct.Memory* %call_41057b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41057d	 Bytes: 4
  %loadMem_41057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41057d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41057d)
  store %struct.Memory* %call_41057d, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410581	 Bytes: 4
  %loadMem_410581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410581 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410581)
  store %struct.Memory* %call_410581, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 410585	 Bytes: 3
  %loadMem_410585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410585 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410585)
  store %struct.Memory* %call_410585, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410588	 Bytes: 5
  %loadMem1_410588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410588 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410588, i64 -63784, i64 5, i64 5)
  store %struct.Memory* %call1_410588, %struct.Memory** %MEMORY

  %loadMem2_410588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410588 = load i64, i64* %3
  %call2_410588 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410588, %struct.Memory* %loadMem2_410588)
  store %struct.Memory* %call2_410588, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41058d	 Bytes: 3
  %loadMem_41058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41058d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41058d)
  store %struct.Memory* %call_41058d, %struct.Memory** %MEMORY

  ; Code: jne .L_4105c9	 RIP: 410590	 Bytes: 6
  %loadMem_410590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410590 = call %struct.Memory* @routine_jne_.L_4105c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410590, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_410590, %struct.Memory** %MEMORY

  %loadBr_410590 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410590 = icmp eq i8 %loadBr_410590, 1
  br i1 %cmpBr_410590, label %block_.L_4105c9, label %block_410596

block_410596:
  ; Code: movq $0x42890b, %rdi	 RIP: 410596	 Bytes: 10
  %loadMem_410596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410596 = call %struct.Memory* @routine_movq__0x42890b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410596)
  store %struct.Memory* %call_410596, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4105a0	 Bytes: 2
  %loadMem_4105a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105a0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105a0)
  store %struct.Memory* %call_4105a0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4105a2	 Bytes: 5
  %loadMem1_4105a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4105a2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4105a2, i64 -63730, i64 5, i64 5)
  store %struct.Memory* %call1_4105a2, %struct.Memory** %MEMORY

  %loadMem2_4105a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4105a2 = load i64, i64* %3
  %call2_4105a2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4105a2, %struct.Memory* %loadMem2_4105a2)
  store %struct.Memory* %call2_4105a2, %struct.Memory** %MEMORY

  ; Code: movq $0x42892e, %rdi	 RIP: 4105a7	 Bytes: 10
  %loadMem_4105a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105a7 = call %struct.Memory* @routine_movq__0x42892e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105a7)
  store %struct.Memory* %call_4105a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 4105b1	 Bytes: 6
  %loadMem_4105b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105b1 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105b1)
  store %struct.Memory* %call_4105b1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4105b7	 Bytes: 2
  %loadMem_4105b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105b7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105b7)
  store %struct.Memory* %call_4105b7, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4105b9	 Bytes: 5
  %loadMem1_4105b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4105b9 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4105b9, i64 -63753, i64 5, i64 5)
  store %struct.Memory* %call1_4105b9, %struct.Memory** %MEMORY

  %loadMem2_4105b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4105b9 = load i64, i64* %3
  %call2_4105b9 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4105b9, %struct.Memory* %loadMem2_4105b9)
  store %struct.Memory* %call2_4105b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 4105be	 Bytes: 6
  %loadMem_4105be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105be = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105be)
  store %struct.Memory* %call_4105be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411856	 RIP: 4105c4	 Bytes: 5
  %loadMem_4105c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105c4 = call %struct.Memory* @routine_jmpq_.L_411856(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105c4, i64 4754, i64 5)
  store %struct.Memory* %call_4105c4, %struct.Memory** %MEMORY

  br label %block_.L_411856

  ; Code: .L_4105c9:	 RIP: 4105c9	 Bytes: 0
block_.L_4105c9:

  ; Code: movq $0x42893d, %rsi	 RIP: 4105c9	 Bytes: 10
  %loadMem_4105c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105c9 = call %struct.Memory* @routine_movq__0x42893d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105c9)
  store %struct.Memory* %call_4105c9, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4105d3	 Bytes: 5
  %loadMem_4105d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105d3 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105d3)
  store %struct.Memory* %call_4105d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4105d8	 Bytes: 2
  %loadMem_4105d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105d8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105d8)
  store %struct.Memory* %call_4105d8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4105da	 Bytes: 4
  %loadMem_4105da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105da = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105da)
  store %struct.Memory* %call_4105da, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4105de	 Bytes: 4
  %loadMem_4105de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105de = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105de)
  store %struct.Memory* %call_4105de, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4105e2	 Bytes: 3
  %loadMem_4105e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105e2 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105e2)
  store %struct.Memory* %call_4105e2, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4105e5	 Bytes: 5
  %loadMem1_4105e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4105e5 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4105e5, i64 -63877, i64 5, i64 5)
  store %struct.Memory* %call1_4105e5, %struct.Memory** %MEMORY

  %loadMem2_4105e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4105e5 = load i64, i64* %3
  %call2_4105e5 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4105e5, %struct.Memory* %loadMem2_4105e5)
  store %struct.Memory* %call2_4105e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4105ea	 Bytes: 3
  %loadMem_4105ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105ea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105ea)
  store %struct.Memory* %call_4105ea, %struct.Memory** %MEMORY

  ; Code: jne .L_410626	 RIP: 4105ed	 Bytes: 6
  %loadMem_4105ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105ed = call %struct.Memory* @routine_jne_.L_410626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105ed, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4105ed, %struct.Memory** %MEMORY

  %loadBr_4105ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4105ed = icmp eq i8 %loadBr_4105ed, 1
  br i1 %cmpBr_4105ed, label %block_.L_410626, label %block_4105f3

block_4105f3:
  ; Code: movq $0x428942, %rdi	 RIP: 4105f3	 Bytes: 10
  %loadMem_4105f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105f3 = call %struct.Memory* @routine_movq__0x428942___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105f3)
  store %struct.Memory* %call_4105f3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4105fd	 Bytes: 2
  %loadMem_4105fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105fd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105fd)
  store %struct.Memory* %call_4105fd, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4105ff	 Bytes: 5
  %loadMem1_4105ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4105ff = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4105ff, i64 -63823, i64 5, i64 5)
  store %struct.Memory* %call1_4105ff, %struct.Memory** %MEMORY

  %loadMem2_4105ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4105ff = load i64, i64* %3
  %call2_4105ff = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4105ff, %struct.Memory* %loadMem2_4105ff)
  store %struct.Memory* %call2_4105ff, %struct.Memory** %MEMORY

  ; Code: movq $0x42895d, %rdi	 RIP: 410604	 Bytes: 10
  %loadMem_410604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410604 = call %struct.Memory* @routine_movq__0x42895d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410604)
  store %struct.Memory* %call_410604, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 41060e	 Bytes: 6
  %loadMem_41060e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41060e = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41060e)
  store %struct.Memory* %call_41060e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410614	 Bytes: 2
  %loadMem_410614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410614 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410614)
  store %struct.Memory* %call_410614, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410616	 Bytes: 5
  %loadMem1_410616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410616 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410616, i64 -63846, i64 5, i64 5)
  store %struct.Memory* %call1_410616, %struct.Memory** %MEMORY

  %loadMem2_410616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410616 = load i64, i64* %3
  %call2_410616 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410616, %struct.Memory* %loadMem2_410616)
  store %struct.Memory* %call2_410616, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 41061b	 Bytes: 6
  %loadMem_41061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41061b = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41061b)
  store %struct.Memory* %call_41061b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411851	 RIP: 410621	 Bytes: 5
  %loadMem_410621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410621 = call %struct.Memory* @routine_jmpq_.L_411851(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410621, i64 4656, i64 5)
  store %struct.Memory* %call_410621, %struct.Memory** %MEMORY

  br label %block_.L_411851

  ; Code: .L_410626:	 RIP: 410626	 Bytes: 0
block_.L_410626:

  ; Code: movq $0x428998, %rsi	 RIP: 410626	 Bytes: 10
  %loadMem_410626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410626 = call %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410626)
  store %struct.Memory* %call_410626, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 410630	 Bytes: 5
  %loadMem_410630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410630 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410630)
  store %struct.Memory* %call_410630, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 410635	 Bytes: 2
  %loadMem_410635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410635 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410635)
  store %struct.Memory* %call_410635, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410637	 Bytes: 4
  %loadMem_410637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410637 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410637)
  store %struct.Memory* %call_410637, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41063b	 Bytes: 4
  %loadMem_41063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41063b = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41063b)
  store %struct.Memory* %call_41063b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41063f	 Bytes: 3
  %loadMem_41063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41063f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41063f)
  store %struct.Memory* %call_41063f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410642	 Bytes: 5
  %loadMem1_410642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410642 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410642, i64 -63970, i64 5, i64 5)
  store %struct.Memory* %call1_410642, %struct.Memory** %MEMORY

  %loadMem2_410642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410642 = load i64, i64* %3
  %call2_410642 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410642, %struct.Memory* %loadMem2_410642)
  store %struct.Memory* %call2_410642, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410647	 Bytes: 3
  %loadMem_410647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410647 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410647)
  store %struct.Memory* %call_410647, %struct.Memory** %MEMORY

  ; Code: jne .L_410d8f	 RIP: 41064a	 Bytes: 6
  %loadMem_41064a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41064a = call %struct.Memory* @routine_jne_.L_410d8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41064a, i8* %BRANCH_TAKEN, i64 1861, i64 6, i64 6)
  store %struct.Memory* %call_41064a, %struct.Memory** %MEMORY

  %loadBr_41064a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41064a = icmp eq i8 %loadBr_41064a, 1
  br i1 %cmpBr_41064a, label %block_.L_410d8f, label %block_410650

block_410650:
  ; Code: movq $0x42896b, %rsi	 RIP: 410650	 Bytes: 10
  %loadMem_410650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410650 = call %struct.Memory* @routine_movq__0x42896b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410650)
  store %struct.Memory* %call_410650, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41065a	 Bytes: 4
  %loadMem_41065a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41065a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41065a)
  store %struct.Memory* %call_41065a, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41065e	 Bytes: 4
  %loadMem_41065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41065e = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41065e)
  store %struct.Memory* %call_41065e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410662	 Bytes: 3
  %loadMem_410662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410662 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410662)
  store %struct.Memory* %call_410662, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410665	 Bytes: 5
  %loadMem1_410665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410665 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410665, i64 -63605, i64 5, i64 5)
  store %struct.Memory* %call1_410665, %struct.Memory** %MEMORY

  %loadMem2_410665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410665 = load i64, i64* %3
  %call2_410665 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410665, %struct.Memory* %loadMem2_410665)
  store %struct.Memory* %call2_410665, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41066a	 Bytes: 4
  %loadMem_41066a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41066a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41066a)
  store %struct.Memory* %call_41066a, %struct.Memory** %MEMORY

  ; Code: jne .L_410770	 RIP: 41066e	 Bytes: 6
  %loadMem_41066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41066e = call %struct.Memory* @routine_jne_.L_410770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41066e, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_41066e, %struct.Memory** %MEMORY

  %loadBr_41066e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41066e = icmp eq i8 %loadBr_41066e, 1
  br i1 %cmpBr_41066e, label %block_.L_410770, label %block_410674

block_410674:
  ; Code: movq $0x429b31, %rsi	 RIP: 410674	 Bytes: 10
  %loadMem_410674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410674 = call %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410674)
  store %struct.Memory* %call_410674, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41067e	 Bytes: 4
  %loadMem_41067e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41067e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41067e)
  store %struct.Memory* %call_41067e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410682	 Bytes: 4
  %loadMem_410682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410682 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410682)
  store %struct.Memory* %call_410682, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410686	 Bytes: 3
  %loadMem_410686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410686 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410686)
  store %struct.Memory* %call_410686, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410689	 Bytes: 5
  %loadMem1_410689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410689 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410689, i64 -63641, i64 5, i64 5)
  store %struct.Memory* %call1_410689, %struct.Memory** %MEMORY

  %loadMem2_410689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410689 = load i64, i64* %3
  %call2_410689 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410689, %struct.Memory* %loadMem2_410689)
  store %struct.Memory* %call2_410689, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41068e	 Bytes: 4
  %loadMem_41068e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41068e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41068e)
  store %struct.Memory* %call_41068e, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 410692	 Bytes: 6
  %loadMem_410692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410692 = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410692, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_410692, %struct.Memory** %MEMORY

  %loadBr_410692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410692 = icmp eq i8 %loadBr_410692, 1
  br i1 %cmpBr_410692, label %block_.L_410849, label %block_410698

block_410698:
  ; Code: movq $0x429b45, %rsi	 RIP: 410698	 Bytes: 10
  %loadMem_410698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410698 = call %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410698)
  store %struct.Memory* %call_410698, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4106a2	 Bytes: 4
  %loadMem_4106a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106a2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106a2)
  store %struct.Memory* %call_4106a2, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4106a6	 Bytes: 4
  %loadMem_4106a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106a6 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106a6)
  store %struct.Memory* %call_4106a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4106aa	 Bytes: 3
  %loadMem_4106aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106aa = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106aa)
  store %struct.Memory* %call_4106aa, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4106ad	 Bytes: 5
  %loadMem1_4106ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4106ad = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4106ad, i64 -63677, i64 5, i64 5)
  store %struct.Memory* %call1_4106ad, %struct.Memory** %MEMORY

  %loadMem2_4106ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4106ad = load i64, i64* %3
  %call2_4106ad = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4106ad, %struct.Memory* %loadMem2_4106ad)
  store %struct.Memory* %call2_4106ad, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4106b2	 Bytes: 4
  %loadMem_4106b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106b2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106b2)
  store %struct.Memory* %call_4106b2, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 4106b6	 Bytes: 6
  %loadMem_4106b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106b6 = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106b6, i8* %BRANCH_TAKEN, i64 403, i64 6, i64 6)
  store %struct.Memory* %call_4106b6, %struct.Memory** %MEMORY

  %loadBr_4106b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106b6 = icmp eq i8 %loadBr_4106b6, 1
  br i1 %cmpBr_4106b6, label %block_.L_410849, label %block_4106bc

block_4106bc:
  ; Code: movq $0x42877b, %rsi	 RIP: 4106bc	 Bytes: 10
  %loadMem_4106bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106bc = call %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106bc)
  store %struct.Memory* %call_4106bc, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4106c6	 Bytes: 4
  %loadMem_4106c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106c6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106c6)
  store %struct.Memory* %call_4106c6, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4106ca	 Bytes: 4
  %loadMem_4106ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ca = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ca)
  store %struct.Memory* %call_4106ca, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4106ce	 Bytes: 3
  %loadMem_4106ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ce = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ce)
  store %struct.Memory* %call_4106ce, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4106d1	 Bytes: 5
  %loadMem1_4106d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4106d1 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4106d1, i64 -63713, i64 5, i64 5)
  store %struct.Memory* %call1_4106d1, %struct.Memory** %MEMORY

  %loadMem2_4106d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4106d1 = load i64, i64* %3
  %call2_4106d1 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4106d1, %struct.Memory* %loadMem2_4106d1)
  store %struct.Memory* %call2_4106d1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4106d6	 Bytes: 4
  %loadMem_4106d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106d6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106d6)
  store %struct.Memory* %call_4106d6, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 4106da	 Bytes: 6
  %loadMem_4106da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106da = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106da, i8* %BRANCH_TAKEN, i64 367, i64 6, i64 6)
  store %struct.Memory* %call_4106da, %struct.Memory** %MEMORY

  %loadBr_4106da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106da = icmp eq i8 %loadBr_4106da, 1
  br i1 %cmpBr_4106da, label %block_.L_410849, label %block_4106e0

block_4106e0:
  ; Code: movq $0x429b3b, %rsi	 RIP: 4106e0	 Bytes: 10
  %loadMem_4106e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106e0 = call %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106e0)
  store %struct.Memory* %call_4106e0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4106ea	 Bytes: 4
  %loadMem_4106ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ea)
  store %struct.Memory* %call_4106ea, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4106ee	 Bytes: 4
  %loadMem_4106ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ee = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ee)
  store %struct.Memory* %call_4106ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4106f2	 Bytes: 3
  %loadMem_4106f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106f2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106f2)
  store %struct.Memory* %call_4106f2, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4106f5	 Bytes: 5
  %loadMem1_4106f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4106f5 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4106f5, i64 -63749, i64 5, i64 5)
  store %struct.Memory* %call1_4106f5, %struct.Memory** %MEMORY

  %loadMem2_4106f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4106f5 = load i64, i64* %3
  %call2_4106f5 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4106f5, %struct.Memory* %loadMem2_4106f5)
  store %struct.Memory* %call2_4106f5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4106fa	 Bytes: 4
  %loadMem_4106fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106fa = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106fa)
  store %struct.Memory* %call_4106fa, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 4106fe	 Bytes: 6
  %loadMem_4106fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106fe = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106fe, i8* %BRANCH_TAKEN, i64 331, i64 6, i64 6)
  store %struct.Memory* %call_4106fe, %struct.Memory** %MEMORY

  %loadBr_4106fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106fe = icmp eq i8 %loadBr_4106fe, 1
  br i1 %cmpBr_4106fe, label %block_.L_410849, label %block_410704

block_410704:
  ; Code: movq $0x429b59, %rsi	 RIP: 410704	 Bytes: 10
  %loadMem_410704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410704 = call %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410704)
  store %struct.Memory* %call_410704, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41070e	 Bytes: 4
  %loadMem_41070e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41070e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41070e)
  store %struct.Memory* %call_41070e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410712	 Bytes: 4
  %loadMem_410712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410712 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410712)
  store %struct.Memory* %call_410712, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410716	 Bytes: 3
  %loadMem_410716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410716 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410716)
  store %struct.Memory* %call_410716, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410719	 Bytes: 5
  %loadMem1_410719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410719 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410719, i64 -63785, i64 5, i64 5)
  store %struct.Memory* %call1_410719, %struct.Memory** %MEMORY

  %loadMem2_410719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410719 = load i64, i64* %3
  %call2_410719 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410719, %struct.Memory* %loadMem2_410719)
  store %struct.Memory* %call2_410719, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41071e	 Bytes: 4
  %loadMem_41071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41071e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41071e)
  store %struct.Memory* %call_41071e, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 410722	 Bytes: 6
  %loadMem_410722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410722 = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410722, i8* %BRANCH_TAKEN, i64 295, i64 6, i64 6)
  store %struct.Memory* %call_410722, %struct.Memory** %MEMORY

  %loadBr_410722 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410722 = icmp eq i8 %loadBr_410722, 1
  br i1 %cmpBr_410722, label %block_.L_410849, label %block_410728

block_410728:
  ; Code: movq $0x429aeb, %rsi	 RIP: 410728	 Bytes: 10
  %loadMem_410728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410728 = call %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410728)
  store %struct.Memory* %call_410728, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410732	 Bytes: 4
  %loadMem_410732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410732 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410732)
  store %struct.Memory* %call_410732, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410736	 Bytes: 4
  %loadMem_410736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410736 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410736)
  store %struct.Memory* %call_410736, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41073a	 Bytes: 3
  %loadMem_41073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41073a = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41073a)
  store %struct.Memory* %call_41073a, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41073d	 Bytes: 5
  %loadMem1_41073d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41073d = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41073d, i64 -63821, i64 5, i64 5)
  store %struct.Memory* %call1_41073d, %struct.Memory** %MEMORY

  %loadMem2_41073d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41073d = load i64, i64* %3
  %call2_41073d = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41073d, %struct.Memory* %loadMem2_41073d)
  store %struct.Memory* %call2_41073d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410742	 Bytes: 4
  %loadMem_410742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410742 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410742)
  store %struct.Memory* %call_410742, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 410746	 Bytes: 6
  %loadMem_410746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410746 = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410746, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_410746, %struct.Memory** %MEMORY

  %loadBr_410746 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410746 = icmp eq i8 %loadBr_410746, 1
  br i1 %cmpBr_410746, label %block_.L_410849, label %block_41074c

block_41074c:
  ; Code: movq $0x428971, %rsi	 RIP: 41074c	 Bytes: 10
  %loadMem_41074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41074c = call %struct.Memory* @routine_movq__0x428971___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41074c)
  store %struct.Memory* %call_41074c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410756	 Bytes: 4
  %loadMem_410756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410756 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410756)
  store %struct.Memory* %call_410756, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41075a	 Bytes: 4
  %loadMem_41075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41075a = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41075a)
  store %struct.Memory* %call_41075a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41075e	 Bytes: 3
  %loadMem_41075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41075e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41075e)
  store %struct.Memory* %call_41075e, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410761	 Bytes: 5
  %loadMem1_410761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410761 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410761, i64 -63857, i64 5, i64 5)
  store %struct.Memory* %call1_410761, %struct.Memory** %MEMORY

  %loadMem2_410761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410761 = load i64, i64* %3
  %call2_410761 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410761, %struct.Memory* %loadMem2_410761)
  store %struct.Memory* %call2_410761, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410766	 Bytes: 4
  %loadMem_410766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410766 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410766)
  store %struct.Memory* %call_410766, %struct.Memory** %MEMORY

  ; Code: jne .L_410849	 RIP: 41076a	 Bytes: 6
  %loadMem_41076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41076a = call %struct.Memory* @routine_jne_.L_410849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41076a, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_41076a, %struct.Memory** %MEMORY

  %loadBr_41076a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41076a = icmp eq i8 %loadBr_41076a, 1
  br i1 %cmpBr_41076a, label %block_.L_410849, label %block_.L_410770

  ; Code: .L_410770:	 RIP: 410770	 Bytes: 0
block_.L_410770:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 410770	 Bytes: 8
  %loadMem_410770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410770 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410770)
  store %struct.Memory* %call_410770, %struct.Memory** %MEMORY

  ; Code: jne .L_4107d8	 RIP: 410778	 Bytes: 6
  %loadMem_410778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410778 = call %struct.Memory* @routine_jne_.L_4107d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410778, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_410778, %struct.Memory** %MEMORY

  %loadBr_410778 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410778 = icmp eq i8 %loadBr_410778, 1
  br i1 %cmpBr_410778, label %block_.L_4107d8, label %block_41077e

block_41077e:
  ; Code: movl 0x62d784, %eax	 RIP: 41077e	 Bytes: 7
  %loadMem_41077e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41077e = call %struct.Memory* @routine_movl_0x62d784___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41077e)
  store %struct.Memory* %call_41077e, %struct.Memory** %MEMORY

  ; Code: addl $0x19, %eax	 RIP: 410785	 Bytes: 3
  %loadMem_410785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410785 = call %struct.Memory* @routine_addl__0x19___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410785)
  store %struct.Memory* %call_410785, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 410788	 Bytes: 7
  %loadMem_410788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410788 = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410788)
  store %struct.Memory* %call_410788, %struct.Memory** %MEMORY

  ; Code: movl 0x62d78c, %eax	 RIP: 41078f	 Bytes: 7
  %loadMem_41078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41078f = call %struct.Memory* @routine_movl_0x62d78c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41078f)
  store %struct.Memory* %call_41078f, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 410796	 Bytes: 3
  %loadMem_410796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410796 = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410796)
  store %struct.Memory* %call_410796, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d78c	 RIP: 410799	 Bytes: 7
  %loadMem_410799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410799 = call %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410799)
  store %struct.Memory* %call_410799, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ac, %eax	 RIP: 4107a0	 Bytes: 7
  %loadMem_4107a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107a0 = call %struct.Memory* @routine_movl_0x62d7ac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107a0)
  store %struct.Memory* %call_4107a0, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 4107a7	 Bytes: 3
  %loadMem_4107a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107a7 = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107a7)
  store %struct.Memory* %call_4107a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 4107aa	 Bytes: 7
  %loadMem_4107aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107aa = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107aa)
  store %struct.Memory* %call_4107aa, %struct.Memory** %MEMORY

  ; Code: movl 0x62d79c, %eax	 RIP: 4107b1	 Bytes: 7
  %loadMem_4107b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107b1 = call %struct.Memory* @routine_movl_0x62d79c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107b1)
  store %struct.Memory* %call_4107b1, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 4107b8	 Bytes: 3
  %loadMem_4107b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107b8 = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107b8)
  store %struct.Memory* %call_4107b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 4107bb	 Bytes: 7
  %loadMem_4107bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107bb = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107bb)
  store %struct.Memory* %call_4107bb, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a4, %eax	 RIP: 4107c2	 Bytes: 7
  %loadMem_4107c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107c2 = call %struct.Memory* @routine_movl_0x62d7a4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107c2)
  store %struct.Memory* %call_4107c2, %struct.Memory** %MEMORY

  ; Code: addl $0x64, %eax	 RIP: 4107c9	 Bytes: 3
  %loadMem_4107c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107c9 = call %struct.Memory* @routine_addl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107c9)
  store %struct.Memory* %call_4107c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 4107cc	 Bytes: 7
  %loadMem_4107cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107cc = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107cc)
  store %struct.Memory* %call_4107cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41082d	 RIP: 4107d3	 Bytes: 5
  %loadMem_4107d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107d3 = call %struct.Memory* @routine_jmpq_.L_41082d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107d3, i64 90, i64 5)
  store %struct.Memory* %call_4107d3, %struct.Memory** %MEMORY

  br label %block_.L_41082d

  ; Code: .L_4107d8:	 RIP: 4107d8	 Bytes: 0
block_.L_4107d8:

  ; Code: movl 0x62d788, %eax	 RIP: 4107d8	 Bytes: 7
  %loadMem_4107d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107d8 = call %struct.Memory* @routine_movl_0x62d788___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107d8)
  store %struct.Memory* %call_4107d8, %struct.Memory** %MEMORY

  ; Code: subl $0x19, %eax	 RIP: 4107df	 Bytes: 3
  %loadMem_4107df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107df = call %struct.Memory* @routine_subl__0x19___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107df)
  store %struct.Memory* %call_4107df, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 4107e2	 Bytes: 7
  %loadMem_4107e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e2 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e2)
  store %struct.Memory* %call_4107e2, %struct.Memory** %MEMORY

  ; Code: movl 0x62d790, %eax	 RIP: 4107e9	 Bytes: 7
  %loadMem_4107e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e9 = call %struct.Memory* @routine_movl_0x62d790___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e9)
  store %struct.Memory* %call_4107e9, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 4107f0	 Bytes: 3
  %loadMem_4107f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107f0 = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107f0)
  store %struct.Memory* %call_4107f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d790	 RIP: 4107f3	 Bytes: 7
  %loadMem_4107f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107f3 = call %struct.Memory* @routine_movl__eax__0x62d790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107f3)
  store %struct.Memory* %call_4107f3, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7b0, %eax	 RIP: 4107fa	 Bytes: 7
  %loadMem_4107fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107fa = call %struct.Memory* @routine_movl_0x62d7b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107fa)
  store %struct.Memory* %call_4107fa, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 410801	 Bytes: 3
  %loadMem_410801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410801 = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410801)
  store %struct.Memory* %call_410801, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 410804	 Bytes: 7
  %loadMem_410804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410804 = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410804)
  store %struct.Memory* %call_410804, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a0, %eax	 RIP: 41080b	 Bytes: 7
  %loadMem_41080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41080b = call %struct.Memory* @routine_movl_0x62d7a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41080b)
  store %struct.Memory* %call_41080b, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 410812	 Bytes: 3
  %loadMem_410812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410812 = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410812)
  store %struct.Memory* %call_410812, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 410815	 Bytes: 7
  %loadMem_410815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410815 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410815)
  store %struct.Memory* %call_410815, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a8, %eax	 RIP: 41081c	 Bytes: 7
  %loadMem_41081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41081c = call %struct.Memory* @routine_movl_0x62d7a8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41081c)
  store %struct.Memory* %call_41081c, %struct.Memory** %MEMORY

  ; Code: subl $0x64, %eax	 RIP: 410823	 Bytes: 3
  %loadMem_410823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410823 = call %struct.Memory* @routine_subl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410823)
  store %struct.Memory* %call_410823, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410826	 Bytes: 7
  %loadMem_410826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410826 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410826)
  store %struct.Memory* %call_410826, %struct.Memory** %MEMORY

  ; Code: .L_41082d:	 RIP: 41082d	 Bytes: 0
  br label %block_.L_41082d
block_.L_41082d:

  ; Code: movq $0x428973, %rdi	 RIP: 41082d	 Bytes: 10
  %loadMem_41082d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41082d = call %struct.Memory* @routine_movq__0x428973___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41082d)
  store %struct.Memory* %call_41082d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410837	 Bytes: 2
  %loadMem_410837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410837 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410837)
  store %struct.Memory* %call_410837, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410839	 Bytes: 5
  %loadMem1_410839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410839 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410839, i64 -64393, i64 5, i64 5)
  store %struct.Memory* %call1_410839, %struct.Memory** %MEMORY

  %loadMem2_410839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410839 = load i64, i64* %3
  %call2_410839 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410839, %struct.Memory* %loadMem2_410839)
  store %struct.Memory* %call2_410839, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 41083e	 Bytes: 6
  %loadMem_41083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41083e = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41083e)
  store %struct.Memory* %call_41083e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410937	 RIP: 410844	 Bytes: 5
  %loadMem_410844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410844 = call %struct.Memory* @routine_jmpq_.L_410937(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410844, i64 243, i64 5)
  store %struct.Memory* %call_410844, %struct.Memory** %MEMORY

  br label %block_.L_410937

  ; Code: .L_410849:	 RIP: 410849	 Bytes: 0
block_.L_410849:

  ; Code: movq $0x428996, %rsi	 RIP: 410849	 Bytes: 10
  %loadMem_410849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410849 = call %struct.Memory* @routine_movq__0x428996___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410849)
  store %struct.Memory* %call_410849, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410853	 Bytes: 4
  %loadMem_410853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410853 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410853)
  store %struct.Memory* %call_410853, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410857	 Bytes: 4
  %loadMem_410857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410857 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410857)
  store %struct.Memory* %call_410857, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41085b	 Bytes: 3
  %loadMem_41085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41085b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41085b)
  store %struct.Memory* %call_41085b, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41085e	 Bytes: 5
  %loadMem1_41085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41085e = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41085e, i64 -64110, i64 5, i64 5)
  store %struct.Memory* %call1_41085e, %struct.Memory** %MEMORY

  %loadMem2_41085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41085e = load i64, i64* %3
  %call2_41085e = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41085e, %struct.Memory* %loadMem2_41085e)
  store %struct.Memory* %call2_41085e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410863	 Bytes: 4
  %loadMem_410863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410863 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410863)
  store %struct.Memory* %call_410863, %struct.Memory** %MEMORY

  ; Code: je .L_410890	 RIP: 410867	 Bytes: 6
  %loadMem_410867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410867 = call %struct.Memory* @routine_je_.L_410890(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410867, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_410867, %struct.Memory** %MEMORY

  %loadBr_410867 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410867 = icmp eq i8 %loadBr_410867, 1
  br i1 %cmpBr_410867, label %block_.L_410890, label %block_41086d

block_41086d:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 41086d	 Bytes: 4
  %loadMem_41086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41086d = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41086d)
  store %struct.Memory* %call_41086d, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, -0xc(%rbp)	 RIP: 410871	 Bytes: 7
  %loadMem_410871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410871 = call %struct.Memory* @routine_movl__0xc350__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410871)
  store %struct.Memory* %call_410871, %struct.Memory** %MEMORY

  ; Code: movl $0x42899a, %eax	 RIP: 410878	 Bytes: 5
  %loadMem_410878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410878 = call %struct.Memory* @routine_movl__0x42899a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410878)
  store %struct.Memory* %call_410878, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41087d	 Bytes: 2
  %loadMem_41087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41087d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41087d)
  store %struct.Memory* %call_41087d, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 41087f	 Bytes: 5
  %loadMem1_41087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41087f = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41087f, i64 -64527, i64 5, i64 5)
  store %struct.Memory* %call1_41087f, %struct.Memory** %MEMORY

  %loadMem2_41087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41087f = load i64, i64* %3
  %call2_41087f = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_41087f, %struct.Memory* %loadMem2_41087f)
  store %struct.Memory* %call2_41087f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa8(%rbp)	 RIP: 410884	 Bytes: 7
  %loadMem_410884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410884 = call %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410884)
  store %struct.Memory* %call_410884, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410932	 RIP: 41088b	 Bytes: 5
  %loadMem_41088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41088b = call %struct.Memory* @routine_jmpq_.L_410932(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41088b, i64 167, i64 5)
  store %struct.Memory* %call_41088b, %struct.Memory** %MEMORY

  br label %block_.L_410932

  ; Code: .L_410890:	 RIP: 410890	 Bytes: 0
block_.L_410890:

  ; Code: movq $0x428997, %rsi	 RIP: 410890	 Bytes: 10
  %loadMem_410890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410890 = call %struct.Memory* @routine_movq__0x428997___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410890)
  store %struct.Memory* %call_410890, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41089a	 Bytes: 4
  %loadMem_41089a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41089a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41089a)
  store %struct.Memory* %call_41089a, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41089e	 Bytes: 4
  %loadMem_41089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41089e = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41089e)
  store %struct.Memory* %call_41089e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4108a2	 Bytes: 3
  %loadMem_4108a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108a2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108a2)
  store %struct.Memory* %call_4108a2, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4108a5	 Bytes: 5
  %loadMem1_4108a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4108a5 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4108a5, i64 -64181, i64 5, i64 5)
  store %struct.Memory* %call1_4108a5, %struct.Memory** %MEMORY

  %loadMem2_4108a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4108a5 = load i64, i64* %3
  %call2_4108a5 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4108a5, %struct.Memory* %loadMem2_4108a5)
  store %struct.Memory* %call2_4108a5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4108aa	 Bytes: 4
  %loadMem_4108aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108aa = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108aa)
  store %struct.Memory* %call_4108aa, %struct.Memory** %MEMORY

  ; Code: je .L_4108d7	 RIP: 4108ae	 Bytes: 6
  %loadMem_4108ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ae = call %struct.Memory* @routine_je_.L_4108d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ae, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4108ae, %struct.Memory** %MEMORY

  %loadBr_4108ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108ae = icmp eq i8 %loadBr_4108ae, 1
  br i1 %cmpBr_4108ae, label %block_.L_4108d7, label %block_4108b4

block_4108b4:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 4108b4	 Bytes: 4
  %loadMem_4108b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108b4 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108b4)
  store %struct.Memory* %call_4108b4, %struct.Memory** %MEMORY

  ; Code: movl $0x3e8, -0xc(%rbp)	 RIP: 4108b8	 Bytes: 7
  %loadMem_4108b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108b8 = call %struct.Memory* @routine_movl__0x3e8__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108b8)
  store %struct.Memory* %call_4108b8, %struct.Memory** %MEMORY

  ; Code: movl $0x4289a0, %eax	 RIP: 4108bf	 Bytes: 5
  %loadMem_4108bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108bf = call %struct.Memory* @routine_movl__0x4289a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108bf)
  store %struct.Memory* %call_4108bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4108c4	 Bytes: 2
  %loadMem_4108c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108c4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108c4)
  store %struct.Memory* %call_4108c4, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 4108c6	 Bytes: 5
  %loadMem1_4108c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4108c6 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4108c6, i64 -64598, i64 5, i64 5)
  store %struct.Memory* %call1_4108c6, %struct.Memory** %MEMORY

  %loadMem2_4108c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4108c6 = load i64, i64* %3
  %call2_4108c6 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_4108c6, %struct.Memory* %loadMem2_4108c6)
  store %struct.Memory* %call2_4108c6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb0(%rbp)	 RIP: 4108cb	 Bytes: 7
  %loadMem_4108cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108cb = call %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108cb)
  store %struct.Memory* %call_4108cb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41092d	 RIP: 4108d2	 Bytes: 5
  %loadMem_4108d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108d2 = call %struct.Memory* @routine_jmpq_.L_41092d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108d2, i64 91, i64 5)
  store %struct.Memory* %call_4108d2, %struct.Memory** %MEMORY

  br label %block_.L_41092d

  ; Code: .L_4108d7:	 RIP: 4108d7	 Bytes: 0
block_.L_4108d7:

  ; Code: movq $0x428998, %rsi	 RIP: 4108d7	 Bytes: 10
  %loadMem_4108d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108d7 = call %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108d7)
  store %struct.Memory* %call_4108d7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4108e1	 Bytes: 4
  %loadMem_4108e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108e1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108e1)
  store %struct.Memory* %call_4108e1, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4108e5	 Bytes: 4
  %loadMem_4108e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108e5 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108e5)
  store %struct.Memory* %call_4108e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4108e9	 Bytes: 3
  %loadMem_4108e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108e9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108e9)
  store %struct.Memory* %call_4108e9, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4108ec	 Bytes: 5
  %loadMem1_4108ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4108ec = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4108ec, i64 -64252, i64 5, i64 5)
  store %struct.Memory* %call1_4108ec, %struct.Memory** %MEMORY

  %loadMem2_4108ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4108ec = load i64, i64* %3
  %call2_4108ec = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4108ec, %struct.Memory* %loadMem2_4108ec)
  store %struct.Memory* %call2_4108ec, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4108f1	 Bytes: 4
  %loadMem_4108f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108f1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108f1)
  store %struct.Memory* %call_4108f1, %struct.Memory** %MEMORY

  ; Code: je .L_41091e	 RIP: 4108f5	 Bytes: 6
  %loadMem_4108f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108f5 = call %struct.Memory* @routine_je_.L_41091e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108f5, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4108f5, %struct.Memory** %MEMORY

  %loadBr_4108f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108f5 = icmp eq i8 %loadBr_4108f5, 1
  br i1 %cmpBr_4108f5, label %block_.L_41091e, label %block_4108fb

block_4108fb:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 4108fb	 Bytes: 4
  %loadMem_4108fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108fb = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108fb)
  store %struct.Memory* %call_4108fb, %struct.Memory** %MEMORY

  ; Code: movl $0x96, -0xc(%rbp)	 RIP: 4108ff	 Bytes: 7
  %loadMem_4108ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ff = call %struct.Memory* @routine_movl__0x96__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ff)
  store %struct.Memory* %call_4108ff, %struct.Memory** %MEMORY

  ; Code: movl $0x4289d1, %eax	 RIP: 410906	 Bytes: 5
  %loadMem_410906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410906 = call %struct.Memory* @routine_movl__0x4289d1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410906)
  store %struct.Memory* %call_410906, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41090b	 Bytes: 2
  %loadMem_41090b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41090b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41090b)
  store %struct.Memory* %call_41090b, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 41090d	 Bytes: 5
  %loadMem1_41090d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41090d = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41090d, i64 -64669, i64 5, i64 5)
  store %struct.Memory* %call1_41090d, %struct.Memory** %MEMORY

  %loadMem2_41090d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41090d = load i64, i64* %3
  %call2_41090d = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_41090d, %struct.Memory* %loadMem2_41090d)
  store %struct.Memory* %call2_41090d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb8(%rbp)	 RIP: 410912	 Bytes: 7
  %loadMem_410912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410912 = call %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410912)
  store %struct.Memory* %call_410912, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410928	 RIP: 410919	 Bytes: 5
  %loadMem_410919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410919 = call %struct.Memory* @routine_jmpq_.L_410928(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410919, i64 15, i64 5)
  store %struct.Memory* %call_410919, %struct.Memory** %MEMORY

  br label %block_.L_410928

  ; Code: .L_41091e:	 RIP: 41091e	 Bytes: 0
block_.L_41091e:

  ; Code: xorl %eax, %eax	 RIP: 41091e	 Bytes: 2
  %loadMem_41091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41091e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41091e)
  store %struct.Memory* %call_41091e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 410920	 Bytes: 2
  %loadMem_410920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410920 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410920)
  store %struct.Memory* %call_410920, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 410922	 Bytes: 6
  %loadMem_410922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410922 = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410922)
  store %struct.Memory* %call_410922, %struct.Memory** %MEMORY

  ; Code: .L_410928:	 RIP: 410928	 Bytes: 0
  br label %block_.L_410928
block_.L_410928:

  ; Code: jmpq .L_41092d	 RIP: 410928	 Bytes: 5
  %loadMem_410928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410928 = call %struct.Memory* @routine_jmpq_.L_41092d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410928, i64 5, i64 5)
  store %struct.Memory* %call_410928, %struct.Memory** %MEMORY

  br label %block_.L_41092d

  ; Code: .L_41092d:	 RIP: 41092d	 Bytes: 0
block_.L_41092d:

  ; Code: jmpq .L_410932	 RIP: 41092d	 Bytes: 5
  %loadMem_41092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41092d = call %struct.Memory* @routine_jmpq_.L_410932(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41092d, i64 5, i64 5)
  store %struct.Memory* %call_41092d, %struct.Memory** %MEMORY

  br label %block_.L_410932

  ; Code: .L_410932:	 RIP: 410932	 Bytes: 0
block_.L_410932:

  ; Code: jmpq .L_410937	 RIP: 410932	 Bytes: 5
  %loadMem_410932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410932 = call %struct.Memory* @routine_jmpq_.L_410937(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410932, i64 5, i64 5)
  store %struct.Memory* %call_410932, %struct.Memory** %MEMORY

  br label %block_.L_410937

  ; Code: .L_410937:	 RIP: 410937	 Bytes: 0
block_.L_410937:

  ; Code: movq $0x429b31, %rsi	 RIP: 410937	 Bytes: 10
  %loadMem_410937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410937 = call %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410937)
  store %struct.Memory* %call_410937, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410941	 Bytes: 4
  %loadMem_410941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410941 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410941)
  store %struct.Memory* %call_410941, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410945	 Bytes: 4
  %loadMem_410945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410945 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410945)
  store %struct.Memory* %call_410945, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410949	 Bytes: 3
  %loadMem_410949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410949 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410949)
  store %struct.Memory* %call_410949, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41094c	 Bytes: 5
  %loadMem1_41094c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41094c = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41094c, i64 -64348, i64 5, i64 5)
  store %struct.Memory* %call1_41094c, %struct.Memory** %MEMORY

  %loadMem2_41094c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41094c = load i64, i64* %3
  %call2_41094c = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41094c, %struct.Memory* %loadMem2_41094c)
  store %struct.Memory* %call2_41094c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410951	 Bytes: 4
  %loadMem_410951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410951 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410951)
  store %struct.Memory* %call_410951, %struct.Memory** %MEMORY

  ; Code: je .L_4109ab	 RIP: 410955	 Bytes: 6
  %loadMem_410955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410955 = call %struct.Memory* @routine_je_.L_4109ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410955, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_410955, %struct.Memory** %MEMORY

  %loadBr_410955 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410955 = icmp eq i8 %loadBr_410955, 1
  br i1 %cmpBr_410955, label %block_.L_4109ab, label %block_41095b

block_41095b:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 41095b	 Bytes: 8
  %loadMem_41095b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41095b = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41095b)
  store %struct.Memory* %call_41095b, %struct.Memory** %MEMORY

  ; Code: jne .L_41097f	 RIP: 410963	 Bytes: 6
  %loadMem_410963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410963 = call %struct.Memory* @routine_jne_.L_41097f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410963, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410963, %struct.Memory** %MEMORY

  %loadBr_410963 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410963 = icmp eq i8 %loadBr_410963, 1
  br i1 %cmpBr_410963, label %block_.L_41097f, label %block_410969

block_410969:
  ; Code: movl 0x62d7cc, %eax	 RIP: 410969	 Bytes: 7
  %loadMem_410969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410969 = call %struct.Memory* @routine_movl_0x62d7cc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410969)
  store %struct.Memory* %call_410969, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410970	 Bytes: 3
  %loadMem_410970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410970 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410970)
  store %struct.Memory* %call_410970, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d78c	 RIP: 410973	 Bytes: 7
  %loadMem_410973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410973 = call %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410973)
  store %struct.Memory* %call_410973, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410990	 RIP: 41097a	 Bytes: 5
  %loadMem_41097a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41097a = call %struct.Memory* @routine_jmpq_.L_410990(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41097a, i64 22, i64 5)
  store %struct.Memory* %call_41097a, %struct.Memory** %MEMORY

  br label %block_.L_410990

  ; Code: .L_41097f:	 RIP: 41097f	 Bytes: 0
block_.L_41097f:

  ; Code: movl 0x62d7d0, %eax	 RIP: 41097f	 Bytes: 7
  %loadMem_41097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41097f = call %struct.Memory* @routine_movl_0x62d7d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41097f)
  store %struct.Memory* %call_41097f, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410986	 Bytes: 3
  %loadMem_410986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410986 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410986)
  store %struct.Memory* %call_410986, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d790	 RIP: 410989	 Bytes: 7
  %loadMem_410989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410989 = call %struct.Memory* @routine_movl__eax__0x62d790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410989)
  store %struct.Memory* %call_410989, %struct.Memory** %MEMORY

  ; Code: .L_410990:	 RIP: 410990	 Bytes: 0
  br label %block_.L_410990
block_.L_410990:

  ; Code: movq $0x4289fd, %rdi	 RIP: 410990	 Bytes: 10
  %loadMem_410990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410990 = call %struct.Memory* @routine_movq__0x4289fd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410990)
  store %struct.Memory* %call_410990, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 41099a	 Bytes: 4
  %loadMem_41099a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41099a = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41099a)
  store %struct.Memory* %call_41099a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41099e	 Bytes: 2
  %loadMem_41099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41099e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41099e)
  store %struct.Memory* %call_41099e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4109a0	 Bytes: 5
  %loadMem1_4109a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4109a0 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4109a0, i64 -64752, i64 5, i64 5)
  store %struct.Memory* %call1_4109a0, %struct.Memory** %MEMORY

  %loadMem2_4109a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4109a0 = load i64, i64* %3
  %call2_4109a0 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4109a0, %struct.Memory* %loadMem2_4109a0)
  store %struct.Memory* %call2_4109a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 4109a5	 Bytes: 6
  %loadMem_4109a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109a5 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109a5)
  store %struct.Memory* %call_4109a5, %struct.Memory** %MEMORY

  ; Code: .L_4109ab:	 RIP: 4109ab	 Bytes: 0
  br label %block_.L_4109ab
block_.L_4109ab:

  ; Code: movq $0x429b45, %rsi	 RIP: 4109ab	 Bytes: 10
  %loadMem_4109ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109ab = call %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109ab)
  store %struct.Memory* %call_4109ab, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4109b5	 Bytes: 4
  %loadMem_4109b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109b5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109b5)
  store %struct.Memory* %call_4109b5, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4109b9	 Bytes: 4
  %loadMem_4109b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109b9 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109b9)
  store %struct.Memory* %call_4109b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4109bd	 Bytes: 3
  %loadMem_4109bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109bd = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109bd)
  store %struct.Memory* %call_4109bd, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4109c0	 Bytes: 5
  %loadMem1_4109c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4109c0 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4109c0, i64 -64464, i64 5, i64 5)
  store %struct.Memory* %call1_4109c0, %struct.Memory** %MEMORY

  %loadMem2_4109c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4109c0 = load i64, i64* %3
  %call2_4109c0 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4109c0, %struct.Memory* %loadMem2_4109c0)
  store %struct.Memory* %call2_4109c0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4109c5	 Bytes: 4
  %loadMem_4109c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109c5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109c5)
  store %struct.Memory* %call_4109c5, %struct.Memory** %MEMORY

  ; Code: je .L_410a54	 RIP: 4109c9	 Bytes: 6
  %loadMem_4109c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109c9 = call %struct.Memory* @routine_je_.L_410a54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109c9, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_4109c9, %struct.Memory** %MEMORY

  %loadBr_4109c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4109c9 = icmp eq i8 %loadBr_4109c9, 1
  br i1 %cmpBr_4109c9, label %block_.L_410a54, label %block_4109cf

block_4109cf:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 4109cf	 Bytes: 8
  %loadMem_4109cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109cf = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109cf)
  store %struct.Memory* %call_4109cf, %struct.Memory** %MEMORY

  ; Code: jne .L_4109f3	 RIP: 4109d7	 Bytes: 6
  %loadMem_4109d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109d7 = call %struct.Memory* @routine_jne_.L_4109f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109d7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4109d7, %struct.Memory** %MEMORY

  %loadBr_4109d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4109d7 = icmp eq i8 %loadBr_4109d7, 1
  br i1 %cmpBr_4109d7, label %block_.L_4109f3, label %block_4109dd

block_4109dd:
  ; Code: movl 0x62d7ec, %eax	 RIP: 4109dd	 Bytes: 7
  %loadMem_4109dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109dd = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109dd)
  store %struct.Memory* %call_4109dd, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 4109e4	 Bytes: 3
  %loadMem_4109e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109e4 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109e4)
  store %struct.Memory* %call_4109e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 4109e7	 Bytes: 7
  %loadMem_4109e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109e7 = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109e7)
  store %struct.Memory* %call_4109e7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410a04	 RIP: 4109ee	 Bytes: 5
  %loadMem_4109ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109ee = call %struct.Memory* @routine_jmpq_.L_410a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109ee, i64 22, i64 5)
  store %struct.Memory* %call_4109ee, %struct.Memory** %MEMORY

  br label %block_.L_410a04

  ; Code: .L_4109f3:	 RIP: 4109f3	 Bytes: 0
block_.L_4109f3:

  ; Code: movl 0x62d7f0, %eax	 RIP: 4109f3	 Bytes: 7
  %loadMem_4109f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109f3 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109f3)
  store %struct.Memory* %call_4109f3, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4109fa	 Bytes: 3
  %loadMem_4109fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109fa = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109fa)
  store %struct.Memory* %call_4109fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 4109fd	 Bytes: 7
  %loadMem_4109fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109fd = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109fd)
  store %struct.Memory* %call_4109fd, %struct.Memory** %MEMORY

  ; Code: .L_410a04:	 RIP: 410a04	 Bytes: 0
  br label %block_.L_410a04
block_.L_410a04:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 410a04	 Bytes: 8
  %loadMem_410a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a04 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a04)
  store %struct.Memory* %call_410a04, %struct.Memory** %MEMORY

  ; Code: jne .L_410a28	 RIP: 410a0c	 Bytes: 6
  %loadMem_410a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a0c = call %struct.Memory* @routine_jne_.L_410a28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a0c, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410a0c, %struct.Memory** %MEMORY

  %loadBr_410a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a0c = icmp eq i8 %loadBr_410a0c, 1
  br i1 %cmpBr_410a0c, label %block_.L_410a28, label %block_410a12

block_410a12:
  ; Code: movl 0x62d7e4, %eax	 RIP: 410a12	 Bytes: 7
  %loadMem_410a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a12 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a12)
  store %struct.Memory* %call_410a12, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410a19	 Bytes: 3
  %loadMem_410a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a19 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a19)
  store %struct.Memory* %call_410a19, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410a1c	 Bytes: 7
  %loadMem_410a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a1c = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a1c)
  store %struct.Memory* %call_410a1c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410a39	 RIP: 410a23	 Bytes: 5
  %loadMem_410a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a23 = call %struct.Memory* @routine_jmpq_.L_410a39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a23, i64 22, i64 5)
  store %struct.Memory* %call_410a23, %struct.Memory** %MEMORY

  br label %block_.L_410a39

  ; Code: .L_410a28:	 RIP: 410a28	 Bytes: 0
block_.L_410a28:

  ; Code: movl 0x62d7e8, %eax	 RIP: 410a28	 Bytes: 7
  %loadMem_410a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a28 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a28)
  store %struct.Memory* %call_410a28, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410a2f	 Bytes: 3
  %loadMem_410a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a2f = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a2f)
  store %struct.Memory* %call_410a2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410a32	 Bytes: 7
  %loadMem_410a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a32 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a32)
  store %struct.Memory* %call_410a32, %struct.Memory** %MEMORY

  ; Code: .L_410a39:	 RIP: 410a39	 Bytes: 0
  br label %block_.L_410a39
block_.L_410a39:

  ; Code: movq $0x428a1a, %rdi	 RIP: 410a39	 Bytes: 10
  %loadMem_410a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a39 = call %struct.Memory* @routine_movq__0x428a1a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a39)
  store %struct.Memory* %call_410a39, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410a43	 Bytes: 4
  %loadMem_410a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a43 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a43)
  store %struct.Memory* %call_410a43, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410a47	 Bytes: 2
  %loadMem_410a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a47 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a47)
  store %struct.Memory* %call_410a47, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410a49	 Bytes: 5
  %loadMem1_410a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410a49 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410a49, i64 -64921, i64 5, i64 5)
  store %struct.Memory* %call1_410a49, %struct.Memory** %MEMORY

  %loadMem2_410a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410a49 = load i64, i64* %3
  %call2_410a49 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410a49, %struct.Memory* %loadMem2_410a49)
  store %struct.Memory* %call2_410a49, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 410a4e	 Bytes: 6
  %loadMem_410a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a4e = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a4e)
  store %struct.Memory* %call_410a4e, %struct.Memory** %MEMORY

  ; Code: .L_410a54:	 RIP: 410a54	 Bytes: 0
  br label %block_.L_410a54
block_.L_410a54:

  ; Code: movq $0x429b3b, %rsi	 RIP: 410a54	 Bytes: 10
  %loadMem_410a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a54 = call %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a54)
  store %struct.Memory* %call_410a54, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410a5e	 Bytes: 4
  %loadMem_410a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a5e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a5e)
  store %struct.Memory* %call_410a5e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410a62	 Bytes: 4
  %loadMem_410a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a62 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a62)
  store %struct.Memory* %call_410a62, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410a66	 Bytes: 3
  %loadMem_410a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a66 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a66)
  store %struct.Memory* %call_410a66, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410a69	 Bytes: 5
  %loadMem1_410a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410a69 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410a69, i64 -64633, i64 5, i64 5)
  store %struct.Memory* %call1_410a69, %struct.Memory** %MEMORY

  %loadMem2_410a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410a69 = load i64, i64* %3
  %call2_410a69 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410a69, %struct.Memory* %loadMem2_410a69)
  store %struct.Memory* %call2_410a69, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410a6e	 Bytes: 4
  %loadMem_410a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a6e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a6e)
  store %struct.Memory* %call_410a6e, %struct.Memory** %MEMORY

  ; Code: je .L_410afd	 RIP: 410a72	 Bytes: 6
  %loadMem_410a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a72 = call %struct.Memory* @routine_je_.L_410afd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a72, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_410a72, %struct.Memory** %MEMORY

  %loadBr_410a72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a72 = icmp eq i8 %loadBr_410a72, 1
  br i1 %cmpBr_410a72, label %block_.L_410afd, label %block_410a78

block_410a78:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 410a78	 Bytes: 8
  %loadMem_410a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a78 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a78)
  store %struct.Memory* %call_410a78, %struct.Memory** %MEMORY

  ; Code: jne .L_410a9c	 RIP: 410a80	 Bytes: 6
  %loadMem_410a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a80 = call %struct.Memory* @routine_jne_.L_410a9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a80, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410a80, %struct.Memory** %MEMORY

  %loadBr_410a80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a80 = icmp eq i8 %loadBr_410a80, 1
  br i1 %cmpBr_410a80, label %block_.L_410a9c, label %block_410a86

block_410a86:
  ; Code: movl 0x62d7dc, %eax	 RIP: 410a86	 Bytes: 7
  %loadMem_410a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a86 = call %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a86)
  store %struct.Memory* %call_410a86, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410a8d	 Bytes: 3
  %loadMem_410a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a8d = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a8d)
  store %struct.Memory* %call_410a8d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 410a90	 Bytes: 7
  %loadMem_410a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a90 = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a90)
  store %struct.Memory* %call_410a90, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410aad	 RIP: 410a97	 Bytes: 5
  %loadMem_410a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a97 = call %struct.Memory* @routine_jmpq_.L_410aad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a97, i64 22, i64 5)
  store %struct.Memory* %call_410a97, %struct.Memory** %MEMORY

  br label %block_.L_410aad

  ; Code: .L_410a9c:	 RIP: 410a9c	 Bytes: 0
block_.L_410a9c:

  ; Code: movl 0x62d7e0, %eax	 RIP: 410a9c	 Bytes: 7
  %loadMem_410a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a9c = call %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a9c)
  store %struct.Memory* %call_410a9c, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410aa3	 Bytes: 3
  %loadMem_410aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aa3 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aa3)
  store %struct.Memory* %call_410aa3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 410aa6	 Bytes: 7
  %loadMem_410aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aa6 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aa6)
  store %struct.Memory* %call_410aa6, %struct.Memory** %MEMORY

  ; Code: .L_410aad:	 RIP: 410aad	 Bytes: 0
  br label %block_.L_410aad
block_.L_410aad:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 410aad	 Bytes: 8
  %loadMem_410aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aad = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aad)
  store %struct.Memory* %call_410aad, %struct.Memory** %MEMORY

  ; Code: jne .L_410ad1	 RIP: 410ab5	 Bytes: 6
  %loadMem_410ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ab5 = call %struct.Memory* @routine_jne_.L_410ad1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ab5, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410ab5, %struct.Memory** %MEMORY

  %loadBr_410ab5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ab5 = icmp eq i8 %loadBr_410ab5, 1
  br i1 %cmpBr_410ab5, label %block_.L_410ad1, label %block_410abb

block_410abb:
  ; Code: movl 0x62d7e4, %eax	 RIP: 410abb	 Bytes: 7
  %loadMem_410abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410abb = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410abb)
  store %struct.Memory* %call_410abb, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410ac2	 Bytes: 3
  %loadMem_410ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ac2 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ac2)
  store %struct.Memory* %call_410ac2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410ac5	 Bytes: 7
  %loadMem_410ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ac5 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ac5)
  store %struct.Memory* %call_410ac5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410ae2	 RIP: 410acc	 Bytes: 5
  %loadMem_410acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410acc = call %struct.Memory* @routine_jmpq_.L_410ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410acc, i64 22, i64 5)
  store %struct.Memory* %call_410acc, %struct.Memory** %MEMORY

  br label %block_.L_410ae2

  ; Code: .L_410ad1:	 RIP: 410ad1	 Bytes: 0
block_.L_410ad1:

  ; Code: movl 0x62d7e8, %eax	 RIP: 410ad1	 Bytes: 7
  %loadMem_410ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ad1 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ad1)
  store %struct.Memory* %call_410ad1, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410ad8	 Bytes: 3
  %loadMem_410ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ad8 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ad8)
  store %struct.Memory* %call_410ad8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410adb	 Bytes: 7
  %loadMem_410adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410adb = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410adb)
  store %struct.Memory* %call_410adb, %struct.Memory** %MEMORY

  ; Code: .L_410ae2:	 RIP: 410ae2	 Bytes: 0
  br label %block_.L_410ae2
block_.L_410ae2:

  ; Code: movq $0x428a37, %rdi	 RIP: 410ae2	 Bytes: 10
  %loadMem_410ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ae2 = call %struct.Memory* @routine_movq__0x428a37___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ae2)
  store %struct.Memory* %call_410ae2, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410aec	 Bytes: 4
  %loadMem_410aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aec = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aec)
  store %struct.Memory* %call_410aec, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410af0	 Bytes: 2
  %loadMem_410af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410af0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410af0)
  store %struct.Memory* %call_410af0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410af2	 Bytes: 5
  %loadMem1_410af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410af2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410af2, i64 -65090, i64 5, i64 5)
  store %struct.Memory* %call1_410af2, %struct.Memory** %MEMORY

  %loadMem2_410af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410af2 = load i64, i64* %3
  %call2_410af2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410af2, %struct.Memory* %loadMem2_410af2)
  store %struct.Memory* %call2_410af2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 410af7	 Bytes: 6
  %loadMem_410af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410af7 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410af7)
  store %struct.Memory* %call_410af7, %struct.Memory** %MEMORY

  ; Code: .L_410afd:	 RIP: 410afd	 Bytes: 0
  br label %block_.L_410afd
block_.L_410afd:

  ; Code: movq $0x429b59, %rsi	 RIP: 410afd	 Bytes: 10
  %loadMem_410afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410afd = call %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410afd)
  store %struct.Memory* %call_410afd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410b07	 Bytes: 4
  %loadMem_410b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b07 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b07)
  store %struct.Memory* %call_410b07, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410b0b	 Bytes: 4
  %loadMem_410b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b0b = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b0b)
  store %struct.Memory* %call_410b0b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410b0f	 Bytes: 3
  %loadMem_410b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b0f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b0f)
  store %struct.Memory* %call_410b0f, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410b12	 Bytes: 5
  %loadMem1_410b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410b12 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410b12, i64 -64802, i64 5, i64 5)
  store %struct.Memory* %call1_410b12, %struct.Memory** %MEMORY

  %loadMem2_410b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410b12 = load i64, i64* %3
  %call2_410b12 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410b12, %struct.Memory* %loadMem2_410b12)
  store %struct.Memory* %call2_410b12, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410b17	 Bytes: 4
  %loadMem_410b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b17 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b17)
  store %struct.Memory* %call_410b17, %struct.Memory** %MEMORY

  ; Code: je .L_410b71	 RIP: 410b1b	 Bytes: 6
  %loadMem_410b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b1b = call %struct.Memory* @routine_je_.L_410b71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b1b, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_410b1b, %struct.Memory** %MEMORY

  %loadBr_410b1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410b1b = icmp eq i8 %loadBr_410b1b, 1
  br i1 %cmpBr_410b1b, label %block_.L_410b71, label %block_410b21

block_410b21:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 410b21	 Bytes: 8
  %loadMem_410b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b21 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b21)
  store %struct.Memory* %call_410b21, %struct.Memory** %MEMORY

  ; Code: jne .L_410b45	 RIP: 410b29	 Bytes: 6
  %loadMem_410b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b29 = call %struct.Memory* @routine_jne_.L_410b45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b29, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410b29, %struct.Memory** %MEMORY

  %loadBr_410b29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410b29 = icmp eq i8 %loadBr_410b29, 1
  br i1 %cmpBr_410b29, label %block_.L_410b45, label %block_410b2f

block_410b2f:
  ; Code: movl 0x62d7e4, %eax	 RIP: 410b2f	 Bytes: 7
  %loadMem_410b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b2f = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b2f)
  store %struct.Memory* %call_410b2f, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410b36	 Bytes: 3
  %loadMem_410b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b36 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b36)
  store %struct.Memory* %call_410b36, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410b39	 Bytes: 7
  %loadMem_410b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b39 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b39)
  store %struct.Memory* %call_410b39, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410b56	 RIP: 410b40	 Bytes: 5
  %loadMem_410b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b40 = call %struct.Memory* @routine_jmpq_.L_410b56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b40, i64 22, i64 5)
  store %struct.Memory* %call_410b40, %struct.Memory** %MEMORY

  br label %block_.L_410b56

  ; Code: .L_410b45:	 RIP: 410b45	 Bytes: 0
block_.L_410b45:

  ; Code: movl 0x62d7e8, %eax	 RIP: 410b45	 Bytes: 7
  %loadMem_410b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b45 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b45)
  store %struct.Memory* %call_410b45, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410b4c	 Bytes: 3
  %loadMem_410b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b4c = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b4c)
  store %struct.Memory* %call_410b4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410b4f	 Bytes: 7
  %loadMem_410b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b4f = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b4f)
  store %struct.Memory* %call_410b4f, %struct.Memory** %MEMORY

  ; Code: .L_410b56:	 RIP: 410b56	 Bytes: 0
  br label %block_.L_410b56
block_.L_410b56:

  ; Code: movq $0x428a52, %rdi	 RIP: 410b56	 Bytes: 10
  %loadMem_410b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b56 = call %struct.Memory* @routine_movq__0x428a52___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b56)
  store %struct.Memory* %call_410b56, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410b60	 Bytes: 4
  %loadMem_410b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b60 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b60)
  store %struct.Memory* %call_410b60, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410b64	 Bytes: 2
  %loadMem_410b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b64 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b64)
  store %struct.Memory* %call_410b64, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410b66	 Bytes: 5
  %loadMem1_410b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410b66 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410b66, i64 -65206, i64 5, i64 5)
  store %struct.Memory* %call1_410b66, %struct.Memory** %MEMORY

  %loadMem2_410b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410b66 = load i64, i64* %3
  %call2_410b66 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410b66, %struct.Memory* %loadMem2_410b66)
  store %struct.Memory* %call2_410b66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc8(%rbp)	 RIP: 410b6b	 Bytes: 6
  %loadMem_410b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b6b = call %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b6b)
  store %struct.Memory* %call_410b6b, %struct.Memory** %MEMORY

  ; Code: .L_410b71:	 RIP: 410b71	 Bytes: 0
  br label %block_.L_410b71
block_.L_410b71:

  ; Code: movq $0x42877b, %rsi	 RIP: 410b71	 Bytes: 10
  %loadMem_410b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b71 = call %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b71)
  store %struct.Memory* %call_410b71, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410b7b	 Bytes: 4
  %loadMem_410b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b7b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b7b)
  store %struct.Memory* %call_410b7b, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410b7f	 Bytes: 4
  %loadMem_410b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b7f = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b7f)
  store %struct.Memory* %call_410b7f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410b83	 Bytes: 3
  %loadMem_410b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b83 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b83)
  store %struct.Memory* %call_410b83, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410b86	 Bytes: 5
  %loadMem1_410b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410b86 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410b86, i64 -64918, i64 5, i64 5)
  store %struct.Memory* %call1_410b86, %struct.Memory** %MEMORY

  %loadMem2_410b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410b86 = load i64, i64* %3
  %call2_410b86 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410b86, %struct.Memory* %loadMem2_410b86)
  store %struct.Memory* %call2_410b86, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410b8b	 Bytes: 4
  %loadMem_410b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b8b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b8b)
  store %struct.Memory* %call_410b8b, %struct.Memory** %MEMORY

  ; Code: je .L_410c3c	 RIP: 410b8f	 Bytes: 6
  %loadMem_410b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b8f = call %struct.Memory* @routine_je_.L_410c3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b8f, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_410b8f, %struct.Memory** %MEMORY

  %loadBr_410b8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410b8f = icmp eq i8 %loadBr_410b8f, 1
  br i1 %cmpBr_410b8f, label %block_.L_410c3c, label %block_410b95

block_410b95:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 410b95	 Bytes: 8
  %loadMem_410b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b95 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b95)
  store %struct.Memory* %call_410b95, %struct.Memory** %MEMORY

  ; Code: jne .L_410bb9	 RIP: 410b9d	 Bytes: 6
  %loadMem_410b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b9d = call %struct.Memory* @routine_jne_.L_410bb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b9d, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_410b9d, %struct.Memory** %MEMORY

  %loadBr_410b9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410b9d = icmp eq i8 %loadBr_410b9d, 1
  br i1 %cmpBr_410b9d, label %block_.L_410bb9, label %block_410ba3

block_410ba3:
  ; Code: movl 0x62d7c4, %eax	 RIP: 410ba3	 Bytes: 7
  %loadMem_410ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ba3 = call %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ba3)
  store %struct.Memory* %call_410ba3, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410baa	 Bytes: 3
  %loadMem_410baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410baa = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410baa)
  store %struct.Memory* %call_410baa, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 410bad	 Bytes: 7
  %loadMem_410bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bad = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bad)
  store %struct.Memory* %call_410bad, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410bca	 RIP: 410bb4	 Bytes: 5
  %loadMem_410bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bb4 = call %struct.Memory* @routine_jmpq_.L_410bca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bb4, i64 22, i64 5)
  store %struct.Memory* %call_410bb4, %struct.Memory** %MEMORY

  br label %block_.L_410bca

  ; Code: .L_410bb9:	 RIP: 410bb9	 Bytes: 0
block_.L_410bb9:

  ; Code: movl 0x62d7c8, %eax	 RIP: 410bb9	 Bytes: 7
  %loadMem_410bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bb9 = call %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bb9)
  store %struct.Memory* %call_410bb9, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410bc0	 Bytes: 3
  %loadMem_410bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bc0 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bc0)
  store %struct.Memory* %call_410bc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 410bc3	 Bytes: 7
  %loadMem_410bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bc3 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bc3)
  store %struct.Memory* %call_410bc3, %struct.Memory** %MEMORY

  ; Code: .L_410bca:	 RIP: 410bca	 Bytes: 0
  br label %block_.L_410bca
block_.L_410bca:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 410bca	 Bytes: 8
  %loadMem_410bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bca = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bca)
  store %struct.Memory* %call_410bca, %struct.Memory** %MEMORY

  ; Code: jne .L_410bff	 RIP: 410bd2	 Bytes: 6
  %loadMem_410bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bd2 = call %struct.Memory* @routine_jne_.L_410bff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bd2, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_410bd2, %struct.Memory** %MEMORY

  %loadBr_410bd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410bd2 = icmp eq i8 %loadBr_410bd2, 1
  br i1 %cmpBr_410bd2, label %block_.L_410bff, label %block_410bd8

block_410bd8:
  ; Code: movl 0x62d7e4, %eax	 RIP: 410bd8	 Bytes: 7
  %loadMem_410bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bd8 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bd8)
  store %struct.Memory* %call_410bd8, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410bdf	 Bytes: 3
  %loadMem_410bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bdf = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bdf)
  store %struct.Memory* %call_410bdf, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410be2	 Bytes: 7
  %loadMem_410be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410be2 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410be2)
  store %struct.Memory* %call_410be2, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ec, %eax	 RIP: 410be9	 Bytes: 7
  %loadMem_410be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410be9 = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410be9)
  store %struct.Memory* %call_410be9, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410bf0	 Bytes: 3
  %loadMem_410bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bf0 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bf0)
  store %struct.Memory* %call_410bf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 410bf3	 Bytes: 7
  %loadMem_410bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bf3 = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bf3)
  store %struct.Memory* %call_410bf3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410c21	 RIP: 410bfa	 Bytes: 5
  %loadMem_410bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bfa = call %struct.Memory* @routine_jmpq_.L_410c21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bfa, i64 39, i64 5)
  store %struct.Memory* %call_410bfa, %struct.Memory** %MEMORY

  br label %block_.L_410c21

  ; Code: .L_410bff:	 RIP: 410bff	 Bytes: 0
block_.L_410bff:

  ; Code: movl 0x62d7e8, %eax	 RIP: 410bff	 Bytes: 7
  %loadMem_410bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bff = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bff)
  store %struct.Memory* %call_410bff, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410c06	 Bytes: 3
  %loadMem_410c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c06 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c06)
  store %struct.Memory* %call_410c06, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410c09	 Bytes: 7
  %loadMem_410c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c09 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c09)
  store %struct.Memory* %call_410c09, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7f0, %eax	 RIP: 410c10	 Bytes: 7
  %loadMem_410c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c10 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c10)
  store %struct.Memory* %call_410c10, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410c17	 Bytes: 3
  %loadMem_410c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c17 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c17)
  store %struct.Memory* %call_410c17, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 410c1a	 Bytes: 7
  %loadMem_410c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c1a = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c1a)
  store %struct.Memory* %call_410c1a, %struct.Memory** %MEMORY

  ; Code: .L_410c21:	 RIP: 410c21	 Bytes: 0
  br label %block_.L_410c21
block_.L_410c21:

  ; Code: movq $0x428a6e, %rdi	 RIP: 410c21	 Bytes: 10
  %loadMem_410c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c21 = call %struct.Memory* @routine_movq__0x428a6e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c21)
  store %struct.Memory* %call_410c21, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410c2b	 Bytes: 4
  %loadMem_410c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c2b = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c2b)
  store %struct.Memory* %call_410c2b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410c2f	 Bytes: 2
  %loadMem_410c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c2f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c2f)
  store %struct.Memory* %call_410c2f, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410c31	 Bytes: 5
  %loadMem1_410c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410c31 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410c31, i64 -65409, i64 5, i64 5)
  store %struct.Memory* %call1_410c31, %struct.Memory** %MEMORY

  %loadMem2_410c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410c31 = load i64, i64* %3
  %call2_410c31 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410c31, %struct.Memory* %loadMem2_410c31)
  store %struct.Memory* %call2_410c31, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 410c36	 Bytes: 6
  %loadMem_410c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c36 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c36)
  store %struct.Memory* %call_410c36, %struct.Memory** %MEMORY

  ; Code: .L_410c3c:	 RIP: 410c3c	 Bytes: 0
  br label %block_.L_410c3c
block_.L_410c3c:

  ; Code: movq $0x429aeb, %rsi	 RIP: 410c3c	 Bytes: 10
  %loadMem_410c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c3c = call %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c3c)
  store %struct.Memory* %call_410c3c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410c46	 Bytes: 4
  %loadMem_410c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c46 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c46)
  store %struct.Memory* %call_410c46, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410c4a	 Bytes: 4
  %loadMem_410c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c4a = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c4a)
  store %struct.Memory* %call_410c4a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410c4e	 Bytes: 3
  %loadMem_410c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c4e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c4e)
  store %struct.Memory* %call_410c4e, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410c51	 Bytes: 5
  %loadMem1_410c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410c51 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410c51, i64 -65121, i64 5, i64 5)
  store %struct.Memory* %call1_410c51, %struct.Memory** %MEMORY

  %loadMem2_410c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410c51 = load i64, i64* %3
  %call2_410c51 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410c51, %struct.Memory* %loadMem2_410c51)
  store %struct.Memory* %call2_410c51, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410c56	 Bytes: 4
  %loadMem_410c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c56 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c56)
  store %struct.Memory* %call_410c56, %struct.Memory** %MEMORY

  ; Code: je .L_410cf4	 RIP: 410c5a	 Bytes: 6
  %loadMem_410c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c5a = call %struct.Memory* @routine_je_.L_410cf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c5a, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_410c5a, %struct.Memory** %MEMORY

  %loadBr_410c5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c5a = icmp eq i8 %loadBr_410c5a, 1
  br i1 %cmpBr_410c5a, label %block_.L_410cf4, label %block_410c60

block_410c60:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 410c60	 Bytes: 8
  %loadMem_410c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c60 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c60)
  store %struct.Memory* %call_410c60, %struct.Memory** %MEMORY

  ; Code: jne .L_410ca6	 RIP: 410c68	 Bytes: 6
  %loadMem_410c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c68 = call %struct.Memory* @routine_jne_.L_410ca6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c68, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_410c68, %struct.Memory** %MEMORY

  %loadBr_410c68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c68 = icmp eq i8 %loadBr_410c68, 1
  br i1 %cmpBr_410c68, label %block_.L_410ca6, label %block_410c6e

block_410c6e:
  ; Code: movl 0x62d7c4, %eax	 RIP: 410c6e	 Bytes: 7
  %loadMem_410c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c6e = call %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c6e)
  store %struct.Memory* %call_410c6e, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410c75	 Bytes: 3
  %loadMem_410c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c75 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c75)
  store %struct.Memory* %call_410c75, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 410c78	 Bytes: 7
  %loadMem_410c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c78 = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c78)
  store %struct.Memory* %call_410c78, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ec, %eax	 RIP: 410c7f	 Bytes: 7
  %loadMem_410c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c7f = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c7f)
  store %struct.Memory* %call_410c7f, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410c86	 Bytes: 3
  %loadMem_410c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c86 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c86)
  store %struct.Memory* %call_410c86, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 410c89	 Bytes: 7
  %loadMem_410c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c89 = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c89)
  store %struct.Memory* %call_410c89, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e4, %eax	 RIP: 410c90	 Bytes: 7
  %loadMem_410c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c90 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c90)
  store %struct.Memory* %call_410c90, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410c97	 Bytes: 3
  %loadMem_410c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c97 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c97)
  store %struct.Memory* %call_410c97, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410c9a	 Bytes: 7
  %loadMem_410c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c9a = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c9a)
  store %struct.Memory* %call_410c9a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410cd9	 RIP: 410ca1	 Bytes: 5
  %loadMem_410ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ca1 = call %struct.Memory* @routine_jmpq_.L_410cd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ca1, i64 56, i64 5)
  store %struct.Memory* %call_410ca1, %struct.Memory** %MEMORY

  br label %block_.L_410cd9

  ; Code: .L_410ca6:	 RIP: 410ca6	 Bytes: 0
block_.L_410ca6:

  ; Code: movl 0x62d7c8, %eax	 RIP: 410ca6	 Bytes: 7
  %loadMem_410ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ca6 = call %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ca6)
  store %struct.Memory* %call_410ca6, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410cad	 Bytes: 3
  %loadMem_410cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cad = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cad)
  store %struct.Memory* %call_410cad, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 410cb0	 Bytes: 7
  %loadMem_410cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cb0 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cb0)
  store %struct.Memory* %call_410cb0, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7f0, %eax	 RIP: 410cb7	 Bytes: 7
  %loadMem_410cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cb7 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cb7)
  store %struct.Memory* %call_410cb7, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410cbe	 Bytes: 3
  %loadMem_410cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cbe = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cbe)
  store %struct.Memory* %call_410cbe, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 410cc1	 Bytes: 7
  %loadMem_410cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cc1 = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cc1)
  store %struct.Memory* %call_410cc1, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e8, %eax	 RIP: 410cc8	 Bytes: 7
  %loadMem_410cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cc8 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cc8)
  store %struct.Memory* %call_410cc8, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410ccf	 Bytes: 3
  %loadMem_410ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ccf = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ccf)
  store %struct.Memory* %call_410ccf, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410cd2	 Bytes: 7
  %loadMem_410cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cd2 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cd2)
  store %struct.Memory* %call_410cd2, %struct.Memory** %MEMORY

  ; Code: .L_410cd9:	 RIP: 410cd9	 Bytes: 0
  br label %block_.L_410cd9
block_.L_410cd9:

  ; Code: movq $0x428a89, %rdi	 RIP: 410cd9	 Bytes: 10
  %loadMem_410cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cd9 = call %struct.Memory* @routine_movq__0x428a89___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cd9)
  store %struct.Memory* %call_410cd9, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410ce3	 Bytes: 4
  %loadMem_410ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ce3 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ce3)
  store %struct.Memory* %call_410ce3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410ce7	 Bytes: 2
  %loadMem_410ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ce7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ce7)
  store %struct.Memory* %call_410ce7, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410ce9	 Bytes: 5
  %loadMem1_410ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410ce9 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410ce9, i64 -65593, i64 5, i64 5)
  store %struct.Memory* %call1_410ce9, %struct.Memory** %MEMORY

  %loadMem2_410ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410ce9 = load i64, i64* %3
  %call2_410ce9 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410ce9, %struct.Memory* %loadMem2_410ce9)
  store %struct.Memory* %call2_410ce9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp)	 RIP: 410cee	 Bytes: 6
  %loadMem_410cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cee = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cee)
  store %struct.Memory* %call_410cee, %struct.Memory** %MEMORY

  ; Code: .L_410cf4:	 RIP: 410cf4	 Bytes: 0
  br label %block_.L_410cf4
block_.L_410cf4:

  ; Code: movq $0x428971, %rsi	 RIP: 410cf4	 Bytes: 10
  %loadMem_410cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cf4 = call %struct.Memory* @routine_movq__0x428971___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cf4)
  store %struct.Memory* %call_410cf4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410cfe	 Bytes: 4
  %loadMem_410cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cfe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cfe)
  store %struct.Memory* %call_410cfe, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410d02	 Bytes: 4
  %loadMem_410d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d02 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d02)
  store %struct.Memory* %call_410d02, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410d06	 Bytes: 3
  %loadMem_410d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d06 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d06)
  store %struct.Memory* %call_410d06, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410d09	 Bytes: 5
  %loadMem1_410d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410d09 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410d09, i64 -65305, i64 5, i64 5)
  store %struct.Memory* %call1_410d09, %struct.Memory** %MEMORY

  %loadMem2_410d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410d09 = load i64, i64* %3
  %call2_410d09 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410d09, %struct.Memory* %loadMem2_410d09)
  store %struct.Memory* %call2_410d09, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410d0e	 Bytes: 4
  %loadMem_410d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d0e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d0e)
  store %struct.Memory* %call_410d0e, %struct.Memory** %MEMORY

  ; Code: je .L_410d8a	 RIP: 410d12	 Bytes: 6
  %loadMem_410d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d12 = call %struct.Memory* @routine_je_.L_410d8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d12, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_410d12, %struct.Memory** %MEMORY

  %loadBr_410d12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d12 = icmp eq i8 %loadBr_410d12, 1
  br i1 %cmpBr_410d12, label %block_.L_410d8a, label %block_410d18

block_410d18:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 410d18	 Bytes: 8
  %loadMem_410d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d18 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d18)
  store %struct.Memory* %call_410d18, %struct.Memory** %MEMORY

  ; Code: jne .L_410d4d	 RIP: 410d20	 Bytes: 6
  %loadMem_410d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d20 = call %struct.Memory* @routine_jne_.L_410d4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d20, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_410d20, %struct.Memory** %MEMORY

  %loadBr_410d20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d20 = icmp eq i8 %loadBr_410d20, 1
  br i1 %cmpBr_410d20, label %block_.L_410d4d, label %block_410d26

block_410d26:
  ; Code: movl 0x62d7dc, %eax	 RIP: 410d26	 Bytes: 7
  %loadMem_410d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d26 = call %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d26)
  store %struct.Memory* %call_410d26, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410d2d	 Bytes: 3
  %loadMem_410d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d2d = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d2d)
  store %struct.Memory* %call_410d2d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 410d30	 Bytes: 7
  %loadMem_410d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d30 = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d30)
  store %struct.Memory* %call_410d30, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e4, %eax	 RIP: 410d37	 Bytes: 7
  %loadMem_410d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d37 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d37)
  store %struct.Memory* %call_410d37, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 410d3e	 Bytes: 3
  %loadMem_410d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d3e = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d3e)
  store %struct.Memory* %call_410d3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410d41	 Bytes: 7
  %loadMem_410d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d41 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d41)
  store %struct.Memory* %call_410d41, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410d6f	 RIP: 410d48	 Bytes: 5
  %loadMem_410d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d48 = call %struct.Memory* @routine_jmpq_.L_410d6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d48, i64 39, i64 5)
  store %struct.Memory* %call_410d48, %struct.Memory** %MEMORY

  br label %block_.L_410d6f

  ; Code: .L_410d4d:	 RIP: 410d4d	 Bytes: 0
block_.L_410d4d:

  ; Code: movl 0x62d7e0, %eax	 RIP: 410d4d	 Bytes: 7
  %loadMem_410d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d4d = call %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d4d)
  store %struct.Memory* %call_410d4d, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410d54	 Bytes: 3
  %loadMem_410d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d54 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d54)
  store %struct.Memory* %call_410d54, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 410d57	 Bytes: 7
  %loadMem_410d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d57 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d57)
  store %struct.Memory* %call_410d57, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e8, %eax	 RIP: 410d5e	 Bytes: 7
  %loadMem_410d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d5e = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d5e)
  store %struct.Memory* %call_410d5e, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410d65	 Bytes: 3
  %loadMem_410d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d65 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d65)
  store %struct.Memory* %call_410d65, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410d68	 Bytes: 7
  %loadMem_410d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d68 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d68)
  store %struct.Memory* %call_410d68, %struct.Memory** %MEMORY

  ; Code: .L_410d6f:	 RIP: 410d6f	 Bytes: 0
  br label %block_.L_410d6f
block_.L_410d6f:

  ; Code: movq $0x428aa8, %rdi	 RIP: 410d6f	 Bytes: 10
  %loadMem_410d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d6f = call %struct.Memory* @routine_movq__0x428aa8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d6f)
  store %struct.Memory* %call_410d6f, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 410d79	 Bytes: 4
  %loadMem_410d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d79 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d79)
  store %struct.Memory* %call_410d79, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410d7d	 Bytes: 2
  %loadMem_410d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d7d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d7d)
  store %struct.Memory* %call_410d7d, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410d7f	 Bytes: 5
  %loadMem1_410d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410d7f = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410d7f, i64 -65743, i64 5, i64 5)
  store %struct.Memory* %call1_410d7f, %struct.Memory** %MEMORY

  %loadMem2_410d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410d7f = load i64, i64* %3
  %call2_410d7f = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410d7f, %struct.Memory* %loadMem2_410d7f)
  store %struct.Memory* %call2_410d7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 410d84	 Bytes: 6
  %loadMem_410d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d84 = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d84)
  store %struct.Memory* %call_410d84, %struct.Memory** %MEMORY

  ; Code: .L_410d8a:	 RIP: 410d8a	 Bytes: 0
  br label %block_.L_410d8a
block_.L_410d8a:

  ; Code: jmpq .L_41184c	 RIP: 410d8a	 Bytes: 5
  %loadMem_410d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d8a = call %struct.Memory* @routine_jmpq_.L_41184c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d8a, i64 2754, i64 5)
  store %struct.Memory* %call_410d8a, %struct.Memory** %MEMORY

  br label %block_.L_41184c

  ; Code: .L_410d8f:	 RIP: 410d8f	 Bytes: 0
block_.L_410d8f:

  ; Code: movq $0x428ae8, %rsi	 RIP: 410d8f	 Bytes: 10
  %loadMem_410d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d8f = call %struct.Memory* @routine_movq__0x428ae8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d8f)
  store %struct.Memory* %call_410d8f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 410d99	 Bytes: 5
  %loadMem_410d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d99 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d99)
  store %struct.Memory* %call_410d99, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 410d9e	 Bytes: 2
  %loadMem_410d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d9e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d9e)
  store %struct.Memory* %call_410d9e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 410da0	 Bytes: 4
  %loadMem_410da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410da0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410da0)
  store %struct.Memory* %call_410da0, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 410da4	 Bytes: 4
  %loadMem_410da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410da4 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410da4)
  store %struct.Memory* %call_410da4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 410da8	 Bytes: 3
  %loadMem_410da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410da8 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410da8)
  store %struct.Memory* %call_410da8, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 410dab	 Bytes: 5
  %loadMem1_410dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410dab = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410dab, i64 -65867, i64 5, i64 5)
  store %struct.Memory* %call1_410dab, %struct.Memory** %MEMORY

  %loadMem2_410dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410dab = load i64, i64* %3
  %call2_410dab = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_410dab, %struct.Memory* %loadMem2_410dab)
  store %struct.Memory* %call2_410dab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410db0	 Bytes: 3
  %loadMem_410db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410db0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410db0)
  store %struct.Memory* %call_410db0, %struct.Memory** %MEMORY

  ; Code: jne .L_4114f8	 RIP: 410db3	 Bytes: 6
  %loadMem_410db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410db3 = call %struct.Memory* @routine_jne_.L_4114f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410db3, i8* %BRANCH_TAKEN, i64 1861, i64 6, i64 6)
  store %struct.Memory* %call_410db3, %struct.Memory** %MEMORY

  %loadBr_410db3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410db3 = icmp eq i8 %loadBr_410db3, 1
  br i1 %cmpBr_410db3, label %block_.L_4114f8, label %block_410db9

block_410db9:
  ; Code: movq $0x42896b, %rsi	 RIP: 410db9	 Bytes: 10
  %loadMem_410db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410db9 = call %struct.Memory* @routine_movq__0x42896b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410db9)
  store %struct.Memory* %call_410db9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410dc3	 Bytes: 4
  %loadMem_410dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dc3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dc3)
  store %struct.Memory* %call_410dc3, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410dc7	 Bytes: 4
  %loadMem_410dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dc7 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dc7)
  store %struct.Memory* %call_410dc7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410dcb	 Bytes: 3
  %loadMem_410dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dcb = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dcb)
  store %struct.Memory* %call_410dcb, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410dce	 Bytes: 5
  %loadMem1_410dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410dce = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410dce, i64 -65502, i64 5, i64 5)
  store %struct.Memory* %call1_410dce, %struct.Memory** %MEMORY

  %loadMem2_410dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410dce = load i64, i64* %3
  %call2_410dce = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410dce, %struct.Memory* %loadMem2_410dce)
  store %struct.Memory* %call2_410dce, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410dd3	 Bytes: 4
  %loadMem_410dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dd3 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dd3)
  store %struct.Memory* %call_410dd3, %struct.Memory** %MEMORY

  ; Code: jne .L_410ed9	 RIP: 410dd7	 Bytes: 6
  %loadMem_410dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dd7 = call %struct.Memory* @routine_jne_.L_410ed9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dd7, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_410dd7, %struct.Memory** %MEMORY

  %loadBr_410dd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410dd7 = icmp eq i8 %loadBr_410dd7, 1
  br i1 %cmpBr_410dd7, label %block_.L_410ed9, label %block_410ddd

block_410ddd:
  ; Code: movq $0x429b31, %rsi	 RIP: 410ddd	 Bytes: 10
  %loadMem_410ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ddd = call %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ddd)
  store %struct.Memory* %call_410ddd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410de7	 Bytes: 4
  %loadMem_410de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410de7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410de7)
  store %struct.Memory* %call_410de7, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410deb	 Bytes: 4
  %loadMem_410deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410deb = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410deb)
  store %struct.Memory* %call_410deb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410def	 Bytes: 3
  %loadMem_410def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410def = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410def)
  store %struct.Memory* %call_410def, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410df2	 Bytes: 5
  %loadMem1_410df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410df2 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410df2, i64 -65538, i64 5, i64 5)
  store %struct.Memory* %call1_410df2, %struct.Memory** %MEMORY

  %loadMem2_410df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410df2 = load i64, i64* %3
  %call2_410df2 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410df2, %struct.Memory* %loadMem2_410df2)
  store %struct.Memory* %call2_410df2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410df7	 Bytes: 4
  %loadMem_410df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410df7 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410df7)
  store %struct.Memory* %call_410df7, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410dfb	 Bytes: 6
  %loadMem_410dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dfb = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dfb, i8* %BRANCH_TAKEN, i64 439, i64 6, i64 6)
  store %struct.Memory* %call_410dfb, %struct.Memory** %MEMORY

  %loadBr_410dfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410dfb = icmp eq i8 %loadBr_410dfb, 1
  br i1 %cmpBr_410dfb, label %block_.L_410fb2, label %block_410e01

block_410e01:
  ; Code: movq $0x429b45, %rsi	 RIP: 410e01	 Bytes: 10
  %loadMem_410e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e01 = call %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e01)
  store %struct.Memory* %call_410e01, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410e0b	 Bytes: 4
  %loadMem_410e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e0b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e0b)
  store %struct.Memory* %call_410e0b, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410e0f	 Bytes: 4
  %loadMem_410e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e0f = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e0f)
  store %struct.Memory* %call_410e0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410e13	 Bytes: 3
  %loadMem_410e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e13 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e13)
  store %struct.Memory* %call_410e13, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410e16	 Bytes: 5
  %loadMem1_410e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410e16 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410e16, i64 -65574, i64 5, i64 5)
  store %struct.Memory* %call1_410e16, %struct.Memory** %MEMORY

  %loadMem2_410e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410e16 = load i64, i64* %3
  %call2_410e16 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410e16, %struct.Memory* %loadMem2_410e16)
  store %struct.Memory* %call2_410e16, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410e1b	 Bytes: 4
  %loadMem_410e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e1b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e1b)
  store %struct.Memory* %call_410e1b, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410e1f	 Bytes: 6
  %loadMem_410e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e1f = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e1f, i8* %BRANCH_TAKEN, i64 403, i64 6, i64 6)
  store %struct.Memory* %call_410e1f, %struct.Memory** %MEMORY

  %loadBr_410e1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e1f = icmp eq i8 %loadBr_410e1f, 1
  br i1 %cmpBr_410e1f, label %block_.L_410fb2, label %block_410e25

block_410e25:
  ; Code: movq $0x42877b, %rsi	 RIP: 410e25	 Bytes: 10
  %loadMem_410e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e25 = call %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e25)
  store %struct.Memory* %call_410e25, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410e2f	 Bytes: 4
  %loadMem_410e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e2f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e2f)
  store %struct.Memory* %call_410e2f, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410e33	 Bytes: 4
  %loadMem_410e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e33 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e33)
  store %struct.Memory* %call_410e33, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410e37	 Bytes: 3
  %loadMem_410e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e37 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e37)
  store %struct.Memory* %call_410e37, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410e3a	 Bytes: 5
  %loadMem1_410e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410e3a = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410e3a, i64 -65610, i64 5, i64 5)
  store %struct.Memory* %call1_410e3a, %struct.Memory** %MEMORY

  %loadMem2_410e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410e3a = load i64, i64* %3
  %call2_410e3a = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410e3a, %struct.Memory* %loadMem2_410e3a)
  store %struct.Memory* %call2_410e3a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410e3f	 Bytes: 4
  %loadMem_410e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e3f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e3f)
  store %struct.Memory* %call_410e3f, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410e43	 Bytes: 6
  %loadMem_410e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e43 = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e43, i8* %BRANCH_TAKEN, i64 367, i64 6, i64 6)
  store %struct.Memory* %call_410e43, %struct.Memory** %MEMORY

  %loadBr_410e43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e43 = icmp eq i8 %loadBr_410e43, 1
  br i1 %cmpBr_410e43, label %block_.L_410fb2, label %block_410e49

block_410e49:
  ; Code: movq $0x429b3b, %rsi	 RIP: 410e49	 Bytes: 10
  %loadMem_410e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e49 = call %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e49)
  store %struct.Memory* %call_410e49, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410e53	 Bytes: 4
  %loadMem_410e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e53 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e53)
  store %struct.Memory* %call_410e53, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410e57	 Bytes: 4
  %loadMem_410e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e57 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e57)
  store %struct.Memory* %call_410e57, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410e5b	 Bytes: 3
  %loadMem_410e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e5b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e5b)
  store %struct.Memory* %call_410e5b, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410e5e	 Bytes: 5
  %loadMem1_410e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410e5e = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410e5e, i64 -65646, i64 5, i64 5)
  store %struct.Memory* %call1_410e5e, %struct.Memory** %MEMORY

  %loadMem2_410e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410e5e = load i64, i64* %3
  %call2_410e5e = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410e5e, %struct.Memory* %loadMem2_410e5e)
  store %struct.Memory* %call2_410e5e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410e63	 Bytes: 4
  %loadMem_410e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e63 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e63)
  store %struct.Memory* %call_410e63, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410e67	 Bytes: 6
  %loadMem_410e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e67 = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e67, i8* %BRANCH_TAKEN, i64 331, i64 6, i64 6)
  store %struct.Memory* %call_410e67, %struct.Memory** %MEMORY

  %loadBr_410e67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e67 = icmp eq i8 %loadBr_410e67, 1
  br i1 %cmpBr_410e67, label %block_.L_410fb2, label %block_410e6d

block_410e6d:
  ; Code: movq $0x429b59, %rsi	 RIP: 410e6d	 Bytes: 10
  %loadMem_410e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e6d = call %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e6d)
  store %struct.Memory* %call_410e6d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410e77	 Bytes: 4
  %loadMem_410e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e77 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e77)
  store %struct.Memory* %call_410e77, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410e7b	 Bytes: 4
  %loadMem_410e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e7b = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e7b)
  store %struct.Memory* %call_410e7b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410e7f	 Bytes: 3
  %loadMem_410e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e7f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e7f)
  store %struct.Memory* %call_410e7f, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410e82	 Bytes: 5
  %loadMem1_410e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410e82 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410e82, i64 -65682, i64 5, i64 5)
  store %struct.Memory* %call1_410e82, %struct.Memory** %MEMORY

  %loadMem2_410e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410e82 = load i64, i64* %3
  %call2_410e82 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410e82, %struct.Memory* %loadMem2_410e82)
  store %struct.Memory* %call2_410e82, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410e87	 Bytes: 4
  %loadMem_410e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e87 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e87)
  store %struct.Memory* %call_410e87, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410e8b	 Bytes: 6
  %loadMem_410e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e8b = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e8b, i8* %BRANCH_TAKEN, i64 295, i64 6, i64 6)
  store %struct.Memory* %call_410e8b, %struct.Memory** %MEMORY

  %loadBr_410e8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e8b = icmp eq i8 %loadBr_410e8b, 1
  br i1 %cmpBr_410e8b, label %block_.L_410fb2, label %block_410e91

block_410e91:
  ; Code: movq $0x429aeb, %rsi	 RIP: 410e91	 Bytes: 10
  %loadMem_410e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e91 = call %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e91)
  store %struct.Memory* %call_410e91, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410e9b	 Bytes: 4
  %loadMem_410e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e9b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e9b)
  store %struct.Memory* %call_410e9b, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410e9f	 Bytes: 4
  %loadMem_410e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e9f = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e9f)
  store %struct.Memory* %call_410e9f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410ea3	 Bytes: 3
  %loadMem_410ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ea3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ea3)
  store %struct.Memory* %call_410ea3, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410ea6	 Bytes: 5
  %loadMem1_410ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410ea6 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410ea6, i64 -65718, i64 5, i64 5)
  store %struct.Memory* %call1_410ea6, %struct.Memory** %MEMORY

  %loadMem2_410ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410ea6 = load i64, i64* %3
  %call2_410ea6 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410ea6, %struct.Memory* %loadMem2_410ea6)
  store %struct.Memory* %call2_410ea6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410eab	 Bytes: 4
  %loadMem_410eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eab = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eab)
  store %struct.Memory* %call_410eab, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410eaf	 Bytes: 6
  %loadMem_410eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eaf = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eaf, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_410eaf, %struct.Memory** %MEMORY

  %loadBr_410eaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410eaf = icmp eq i8 %loadBr_410eaf, 1
  br i1 %cmpBr_410eaf, label %block_.L_410fb2, label %block_410eb5

block_410eb5:
  ; Code: movq $0x428971, %rsi	 RIP: 410eb5	 Bytes: 10
  %loadMem_410eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eb5 = call %struct.Memory* @routine_movq__0x428971___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eb5)
  store %struct.Memory* %call_410eb5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410ebf	 Bytes: 4
  %loadMem_410ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ebf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ebf)
  store %struct.Memory* %call_410ebf, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410ec3	 Bytes: 4
  %loadMem_410ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec3 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec3)
  store %struct.Memory* %call_410ec3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410ec7	 Bytes: 3
  %loadMem_410ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec7)
  store %struct.Memory* %call_410ec7, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410eca	 Bytes: 5
  %loadMem1_410eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410eca = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410eca, i64 -65754, i64 5, i64 5)
  store %struct.Memory* %call1_410eca, %struct.Memory** %MEMORY

  %loadMem2_410eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410eca = load i64, i64* %3
  %call2_410eca = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410eca, %struct.Memory* %loadMem2_410eca)
  store %struct.Memory* %call2_410eca, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410ecf	 Bytes: 4
  %loadMem_410ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ecf = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ecf)
  store %struct.Memory* %call_410ecf, %struct.Memory** %MEMORY

  ; Code: jne .L_410fb2	 RIP: 410ed3	 Bytes: 6
  %loadMem_410ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ed3 = call %struct.Memory* @routine_jne_.L_410fb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ed3, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_410ed3, %struct.Memory** %MEMORY

  %loadBr_410ed3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ed3 = icmp eq i8 %loadBr_410ed3, 1
  br i1 %cmpBr_410ed3, label %block_.L_410fb2, label %block_.L_410ed9

  ; Code: .L_410ed9:	 RIP: 410ed9	 Bytes: 0
block_.L_410ed9:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 410ed9	 Bytes: 8
  %loadMem_410ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ed9 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ed9)
  store %struct.Memory* %call_410ed9, %struct.Memory** %MEMORY

  ; Code: jne .L_410f41	 RIP: 410ee1	 Bytes: 6
  %loadMem_410ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ee1 = call %struct.Memory* @routine_jne_.L_410f41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ee1, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_410ee1, %struct.Memory** %MEMORY

  %loadBr_410ee1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ee1 = icmp eq i8 %loadBr_410ee1, 1
  br i1 %cmpBr_410ee1, label %block_.L_410f41, label %block_410ee7

block_410ee7:
  ; Code: movl 0x62d788, %eax	 RIP: 410ee7	 Bytes: 7
  %loadMem_410ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ee7 = call %struct.Memory* @routine_movl_0x62d788___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ee7)
  store %struct.Memory* %call_410ee7, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410eee	 Bytes: 3
  %loadMem_410eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eee = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eee)
  store %struct.Memory* %call_410eee, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 410ef1	 Bytes: 7
  %loadMem_410ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ef1 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ef1)
  store %struct.Memory* %call_410ef1, %struct.Memory** %MEMORY

  ; Code: movl 0x62d790, %eax	 RIP: 410ef8	 Bytes: 7
  %loadMem_410ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ef8 = call %struct.Memory* @routine_movl_0x62d790___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ef8)
  store %struct.Memory* %call_410ef8, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 410eff	 Bytes: 3
  %loadMem_410eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eff = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eff)
  store %struct.Memory* %call_410eff, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d790	 RIP: 410f02	 Bytes: 7
  %loadMem_410f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f02 = call %struct.Memory* @routine_movl__eax__0x62d790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f02)
  store %struct.Memory* %call_410f02, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7b0, %eax	 RIP: 410f09	 Bytes: 7
  %loadMem_410f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f09 = call %struct.Memory* @routine_movl_0x62d7b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f09)
  store %struct.Memory* %call_410f09, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 410f10	 Bytes: 3
  %loadMem_410f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f10 = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f10)
  store %struct.Memory* %call_410f10, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 410f13	 Bytes: 7
  %loadMem_410f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f13 = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f13)
  store %struct.Memory* %call_410f13, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a0, %eax	 RIP: 410f1a	 Bytes: 7
  %loadMem_410f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f1a = call %struct.Memory* @routine_movl_0x62d7a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f1a)
  store %struct.Memory* %call_410f1a, %struct.Memory** %MEMORY

  ; Code: subl $0x32, %eax	 RIP: 410f21	 Bytes: 3
  %loadMem_410f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f21 = call %struct.Memory* @routine_subl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f21)
  store %struct.Memory* %call_410f21, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 410f24	 Bytes: 7
  %loadMem_410f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f24 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f24)
  store %struct.Memory* %call_410f24, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a8, %eax	 RIP: 410f2b	 Bytes: 7
  %loadMem_410f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f2b = call %struct.Memory* @routine_movl_0x62d7a8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f2b)
  store %struct.Memory* %call_410f2b, %struct.Memory** %MEMORY

  ; Code: subl $0x64, %eax	 RIP: 410f32	 Bytes: 3
  %loadMem_410f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f32 = call %struct.Memory* @routine_subl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f32)
  store %struct.Memory* %call_410f32, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 410f35	 Bytes: 7
  %loadMem_410f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f35 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f35)
  store %struct.Memory* %call_410f35, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410f96	 RIP: 410f3c	 Bytes: 5
  %loadMem_410f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f3c = call %struct.Memory* @routine_jmpq_.L_410f96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f3c, i64 90, i64 5)
  store %struct.Memory* %call_410f3c, %struct.Memory** %MEMORY

  br label %block_.L_410f96

  ; Code: .L_410f41:	 RIP: 410f41	 Bytes: 0
block_.L_410f41:

  ; Code: movl 0x62d784, %eax	 RIP: 410f41	 Bytes: 7
  %loadMem_410f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f41 = call %struct.Memory* @routine_movl_0x62d784___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f41)
  store %struct.Memory* %call_410f41, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410f48	 Bytes: 3
  %loadMem_410f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f48 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f48)
  store %struct.Memory* %call_410f48, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 410f4b	 Bytes: 7
  %loadMem_410f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f4b = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f4b)
  store %struct.Memory* %call_410f4b, %struct.Memory** %MEMORY

  ; Code: movl 0x62d78c, %eax	 RIP: 410f52	 Bytes: 7
  %loadMem_410f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f52 = call %struct.Memory* @routine_movl_0x62d78c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f52)
  store %struct.Memory* %call_410f52, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 410f59	 Bytes: 3
  %loadMem_410f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f59 = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f59)
  store %struct.Memory* %call_410f59, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d78c	 RIP: 410f5c	 Bytes: 7
  %loadMem_410f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f5c = call %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f5c)
  store %struct.Memory* %call_410f5c, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ac, %eax	 RIP: 410f63	 Bytes: 7
  %loadMem_410f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f63 = call %struct.Memory* @routine_movl_0x62d7ac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f63)
  store %struct.Memory* %call_410f63, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 410f6a	 Bytes: 3
  %loadMem_410f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f6a = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f6a)
  store %struct.Memory* %call_410f6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 410f6d	 Bytes: 7
  %loadMem_410f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f6d = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f6d)
  store %struct.Memory* %call_410f6d, %struct.Memory** %MEMORY

  ; Code: movl 0x62d79c, %eax	 RIP: 410f74	 Bytes: 7
  %loadMem_410f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f74 = call %struct.Memory* @routine_movl_0x62d79c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f74)
  store %struct.Memory* %call_410f74, %struct.Memory** %MEMORY

  ; Code: addl $0x32, %eax	 RIP: 410f7b	 Bytes: 3
  %loadMem_410f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f7b = call %struct.Memory* @routine_addl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f7b)
  store %struct.Memory* %call_410f7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 410f7e	 Bytes: 7
  %loadMem_410f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f7e = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f7e)
  store %struct.Memory* %call_410f7e, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7a4, %eax	 RIP: 410f85	 Bytes: 7
  %loadMem_410f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f85 = call %struct.Memory* @routine_movl_0x62d7a4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f85)
  store %struct.Memory* %call_410f85, %struct.Memory** %MEMORY

  ; Code: addl $0x64, %eax	 RIP: 410f8c	 Bytes: 3
  %loadMem_410f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f8c = call %struct.Memory* @routine_addl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f8c)
  store %struct.Memory* %call_410f8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 410f8f	 Bytes: 7
  %loadMem_410f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f8f = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f8f)
  store %struct.Memory* %call_410f8f, %struct.Memory** %MEMORY

  ; Code: .L_410f96:	 RIP: 410f96	 Bytes: 0
  br label %block_.L_410f96
block_.L_410f96:

  ; Code: movq $0x428ac4, %rdi	 RIP: 410f96	 Bytes: 10
  %loadMem_410f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410f96 = call %struct.Memory* @routine_movq__0x428ac4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410f96)
  store %struct.Memory* %call_410f96, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 410fa0	 Bytes: 2
  %loadMem_410fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fa0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fa0)
  store %struct.Memory* %call_410fa0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 410fa2	 Bytes: 5
  %loadMem1_410fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410fa2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410fa2, i64 -66290, i64 5, i64 5)
  store %struct.Memory* %call1_410fa2, %struct.Memory** %MEMORY

  %loadMem2_410fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410fa2 = load i64, i64* %3
  %call2_410fa2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_410fa2, %struct.Memory* %loadMem2_410fa2)
  store %struct.Memory* %call2_410fa2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 410fa7	 Bytes: 6
  %loadMem_410fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fa7 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fa7)
  store %struct.Memory* %call_410fa7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4110a0	 RIP: 410fad	 Bytes: 5
  %loadMem_410fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fad = call %struct.Memory* @routine_jmpq_.L_4110a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fad, i64 243, i64 5)
  store %struct.Memory* %call_410fad, %struct.Memory** %MEMORY

  br label %block_.L_4110a0

  ; Code: .L_410fb2:	 RIP: 410fb2	 Bytes: 0
block_.L_410fb2:

  ; Code: movq $0x428ae6, %rsi	 RIP: 410fb2	 Bytes: 10
  %loadMem_410fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fb2 = call %struct.Memory* @routine_movq__0x428ae6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fb2)
  store %struct.Memory* %call_410fb2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 410fbc	 Bytes: 4
  %loadMem_410fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fbc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fbc)
  store %struct.Memory* %call_410fbc, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 410fc0	 Bytes: 4
  %loadMem_410fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fc0 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fc0)
  store %struct.Memory* %call_410fc0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 410fc4	 Bytes: 3
  %loadMem_410fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fc4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fc4)
  store %struct.Memory* %call_410fc4, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 410fc7	 Bytes: 5
  %loadMem1_410fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410fc7 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410fc7, i64 -66007, i64 5, i64 5)
  store %struct.Memory* %call1_410fc7, %struct.Memory** %MEMORY

  %loadMem2_410fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410fc7 = load i64, i64* %3
  %call2_410fc7 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_410fc7, %struct.Memory* %loadMem2_410fc7)
  store %struct.Memory* %call2_410fc7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 410fcc	 Bytes: 4
  %loadMem_410fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fcc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fcc)
  store %struct.Memory* %call_410fcc, %struct.Memory** %MEMORY

  ; Code: je .L_410ff9	 RIP: 410fd0	 Bytes: 6
  %loadMem_410fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fd0 = call %struct.Memory* @routine_je_.L_410ff9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fd0, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_410fd0, %struct.Memory** %MEMORY

  %loadBr_410fd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410fd0 = icmp eq i8 %loadBr_410fd0, 1
  br i1 %cmpBr_410fd0, label %block_.L_410ff9, label %block_410fd6

block_410fd6:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 410fd6	 Bytes: 4
  %loadMem_410fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fd6 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fd6)
  store %struct.Memory* %call_410fd6, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, -0xc(%rbp)	 RIP: 410fda	 Bytes: 7
  %loadMem_410fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fda = call %struct.Memory* @routine_movl__0xc350__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fda)
  store %struct.Memory* %call_410fda, %struct.Memory** %MEMORY

  ; Code: movl $0x428aea, %eax	 RIP: 410fe1	 Bytes: 5
  %loadMem_410fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fe1 = call %struct.Memory* @routine_movl__0x428aea___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fe1)
  store %struct.Memory* %call_410fe1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 410fe6	 Bytes: 2
  %loadMem_410fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fe6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fe6)
  store %struct.Memory* %call_410fe6, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 410fe8	 Bytes: 5
  %loadMem1_410fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410fe8 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410fe8, i64 -66424, i64 5, i64 5)
  store %struct.Memory* %call1_410fe8, %struct.Memory** %MEMORY

  %loadMem2_410fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410fe8 = load i64, i64* %3
  %call2_410fe8 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_410fe8, %struct.Memory* %loadMem2_410fe8)
  store %struct.Memory* %call2_410fe8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 410fed	 Bytes: 7
  %loadMem_410fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410fed = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410fed)
  store %struct.Memory* %call_410fed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41109b	 RIP: 410ff4	 Bytes: 5
  %loadMem_410ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ff4 = call %struct.Memory* @routine_jmpq_.L_41109b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ff4, i64 167, i64 5)
  store %struct.Memory* %call_410ff4, %struct.Memory** %MEMORY

  br label %block_.L_41109b

  ; Code: .L_410ff9:	 RIP: 410ff9	 Bytes: 0
block_.L_410ff9:

  ; Code: movq $0x428ae7, %rsi	 RIP: 410ff9	 Bytes: 10
  %loadMem_410ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ff9 = call %struct.Memory* @routine_movq__0x428ae7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ff9)
  store %struct.Memory* %call_410ff9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 411003	 Bytes: 4
  %loadMem_411003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411003 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411003)
  store %struct.Memory* %call_411003, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411007	 Bytes: 4
  %loadMem_411007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411007 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411007)
  store %struct.Memory* %call_411007, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41100b	 Bytes: 3
  %loadMem_41100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41100b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41100b)
  store %struct.Memory* %call_41100b, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41100e	 Bytes: 5
  %loadMem1_41100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41100e = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41100e, i64 -66078, i64 5, i64 5)
  store %struct.Memory* %call1_41100e, %struct.Memory** %MEMORY

  %loadMem2_41100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41100e = load i64, i64* %3
  %call2_41100e = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41100e, %struct.Memory* %loadMem2_41100e)
  store %struct.Memory* %call2_41100e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 411013	 Bytes: 4
  %loadMem_411013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411013 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411013)
  store %struct.Memory* %call_411013, %struct.Memory** %MEMORY

  ; Code: je .L_411040	 RIP: 411017	 Bytes: 6
  %loadMem_411017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411017 = call %struct.Memory* @routine_je_.L_411040(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411017, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_411017, %struct.Memory** %MEMORY

  %loadBr_411017 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411017 = icmp eq i8 %loadBr_411017, 1
  br i1 %cmpBr_411017, label %block_.L_411040, label %block_41101d

block_41101d:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 41101d	 Bytes: 4
  %loadMem_41101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41101d = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41101d)
  store %struct.Memory* %call_41101d, %struct.Memory** %MEMORY

  ; Code: movl $0x3e8, -0xc(%rbp)	 RIP: 411021	 Bytes: 7
  %loadMem_411021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411021 = call %struct.Memory* @routine_movl__0x3e8__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411021)
  store %struct.Memory* %call_411021, %struct.Memory** %MEMORY

  ; Code: movl $0x428b1f, %eax	 RIP: 411028	 Bytes: 5
  %loadMem_411028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411028 = call %struct.Memory* @routine_movl__0x428b1f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411028)
  store %struct.Memory* %call_411028, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41102d	 Bytes: 2
  %loadMem_41102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41102d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41102d)
  store %struct.Memory* %call_41102d, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 41102f	 Bytes: 5
  %loadMem1_41102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41102f = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41102f, i64 -66495, i64 5, i64 5)
  store %struct.Memory* %call1_41102f, %struct.Memory** %MEMORY

  %loadMem2_41102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41102f = load i64, i64* %3
  %call2_41102f = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_41102f, %struct.Memory* %loadMem2_41102f)
  store %struct.Memory* %call2_41102f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe8(%rbp)	 RIP: 411034	 Bytes: 7
  %loadMem_411034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411034 = call %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411034)
  store %struct.Memory* %call_411034, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411096	 RIP: 41103b	 Bytes: 5
  %loadMem_41103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41103b = call %struct.Memory* @routine_jmpq_.L_411096(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41103b, i64 91, i64 5)
  store %struct.Memory* %call_41103b, %struct.Memory** %MEMORY

  br label %block_.L_411096

  ; Code: .L_411040:	 RIP: 411040	 Bytes: 0
block_.L_411040:

  ; Code: movq $0x428ae8, %rsi	 RIP: 411040	 Bytes: 10
  %loadMem_411040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411040 = call %struct.Memory* @routine_movq__0x428ae8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411040)
  store %struct.Memory* %call_411040, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41104a	 Bytes: 4
  %loadMem_41104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41104a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41104a)
  store %struct.Memory* %call_41104a, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41104e	 Bytes: 4
  %loadMem_41104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41104e = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41104e)
  store %struct.Memory* %call_41104e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 411052	 Bytes: 3
  %loadMem_411052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411052 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411052)
  store %struct.Memory* %call_411052, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 411055	 Bytes: 5
  %loadMem1_411055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411055 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411055, i64 -66149, i64 5, i64 5)
  store %struct.Memory* %call1_411055, %struct.Memory** %MEMORY

  %loadMem2_411055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411055 = load i64, i64* %3
  %call2_411055 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_411055, %struct.Memory* %loadMem2_411055)
  store %struct.Memory* %call2_411055, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41105a	 Bytes: 4
  %loadMem_41105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41105a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41105a)
  store %struct.Memory* %call_41105a, %struct.Memory** %MEMORY

  ; Code: je .L_411087	 RIP: 41105e	 Bytes: 6
  %loadMem_41105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41105e = call %struct.Memory* @routine_je_.L_411087(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41105e, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_41105e, %struct.Memory** %MEMORY

  %loadBr_41105e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41105e = icmp eq i8 %loadBr_41105e, 1
  br i1 %cmpBr_41105e, label %block_.L_411087, label %block_411064

block_411064:
  ; Code: leaq -0x60(%rbp), %rdi	 RIP: 411064	 Bytes: 4
  %loadMem_411064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411064 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411064)
  store %struct.Memory* %call_411064, %struct.Memory** %MEMORY

  ; Code: movl $0x96, -0xc(%rbp)	 RIP: 411068	 Bytes: 7
  %loadMem_411068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411068 = call %struct.Memory* @routine_movl__0x96__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411068)
  store %struct.Memory* %call_411068, %struct.Memory** %MEMORY

  ; Code: movl $0x428b53, %eax	 RIP: 41106f	 Bytes: 5
  %loadMem_41106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41106f = call %struct.Memory* @routine_movl__0x428b53___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41106f)
  store %struct.Memory* %call_41106f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 411074	 Bytes: 2
  %loadMem_411074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411074 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411074)
  store %struct.Memory* %call_411074, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 411076	 Bytes: 5
  %loadMem1_411076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411076 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411076, i64 -66566, i64 5, i64 5)
  store %struct.Memory* %call1_411076, %struct.Memory** %MEMORY

  %loadMem2_411076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411076 = load i64, i64* %3
  %call2_411076 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_411076, %struct.Memory* %loadMem2_411076)
  store %struct.Memory* %call2_411076, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf0(%rbp)	 RIP: 41107b	 Bytes: 7
  %loadMem_41107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41107b = call %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41107b)
  store %struct.Memory* %call_41107b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411091	 RIP: 411082	 Bytes: 5
  %loadMem_411082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411082 = call %struct.Memory* @routine_jmpq_.L_411091(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411082, i64 15, i64 5)
  store %struct.Memory* %call_411082, %struct.Memory** %MEMORY

  br label %block_.L_411091

  ; Code: .L_411087:	 RIP: 411087	 Bytes: 0
block_.L_411087:

  ; Code: xorl %eax, %eax	 RIP: 411087	 Bytes: 2
  %loadMem_411087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411087 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411087)
  store %struct.Memory* %call_411087, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 411089	 Bytes: 2
  %loadMem_411089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411089 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411089)
  store %struct.Memory* %call_411089, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 41108b	 Bytes: 6
  %loadMem_41108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41108b = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41108b)
  store %struct.Memory* %call_41108b, %struct.Memory** %MEMORY

  ; Code: .L_411091:	 RIP: 411091	 Bytes: 0
  br label %block_.L_411091
block_.L_411091:

  ; Code: jmpq .L_411096	 RIP: 411091	 Bytes: 5
  %loadMem_411091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411091 = call %struct.Memory* @routine_jmpq_.L_411096(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411091, i64 5, i64 5)
  store %struct.Memory* %call_411091, %struct.Memory** %MEMORY

  br label %block_.L_411096

  ; Code: .L_411096:	 RIP: 411096	 Bytes: 0
block_.L_411096:

  ; Code: jmpq .L_41109b	 RIP: 411096	 Bytes: 5
  %loadMem_411096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411096 = call %struct.Memory* @routine_jmpq_.L_41109b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411096, i64 5, i64 5)
  store %struct.Memory* %call_411096, %struct.Memory** %MEMORY

  br label %block_.L_41109b

  ; Code: .L_41109b:	 RIP: 41109b	 Bytes: 0
block_.L_41109b:

  ; Code: jmpq .L_4110a0	 RIP: 41109b	 Bytes: 5
  %loadMem_41109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41109b = call %struct.Memory* @routine_jmpq_.L_4110a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41109b, i64 5, i64 5)
  store %struct.Memory* %call_41109b, %struct.Memory** %MEMORY

  br label %block_.L_4110a0

  ; Code: .L_4110a0:	 RIP: 4110a0	 Bytes: 0
block_.L_4110a0:

  ; Code: movq $0x429b31, %rsi	 RIP: 4110a0	 Bytes: 10
  %loadMem_4110a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110a0 = call %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110a0)
  store %struct.Memory* %call_4110a0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4110aa	 Bytes: 4
  %loadMem_4110aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110aa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110aa)
  store %struct.Memory* %call_4110aa, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4110ae	 Bytes: 4
  %loadMem_4110ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110ae = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110ae)
  store %struct.Memory* %call_4110ae, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4110b2	 Bytes: 3
  %loadMem_4110b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110b2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110b2)
  store %struct.Memory* %call_4110b2, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4110b5	 Bytes: 5
  %loadMem1_4110b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4110b5 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4110b5, i64 -66245, i64 5, i64 5)
  store %struct.Memory* %call1_4110b5, %struct.Memory** %MEMORY

  %loadMem2_4110b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4110b5 = load i64, i64* %3
  %call2_4110b5 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4110b5, %struct.Memory* %loadMem2_4110b5)
  store %struct.Memory* %call2_4110b5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4110ba	 Bytes: 4
  %loadMem_4110ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110ba = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110ba)
  store %struct.Memory* %call_4110ba, %struct.Memory** %MEMORY

  ; Code: je .L_411114	 RIP: 4110be	 Bytes: 6
  %loadMem_4110be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110be = call %struct.Memory* @routine_je_.L_411114(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110be, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_4110be, %struct.Memory** %MEMORY

  %loadBr_4110be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4110be = icmp eq i8 %loadBr_4110be, 1
  br i1 %cmpBr_4110be, label %block_.L_411114, label %block_4110c4

block_4110c4:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 4110c4	 Bytes: 8
  %loadMem_4110c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110c4 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110c4)
  store %struct.Memory* %call_4110c4, %struct.Memory** %MEMORY

  ; Code: jne .L_4110e8	 RIP: 4110cc	 Bytes: 6
  %loadMem_4110cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110cc = call %struct.Memory* @routine_jne_.L_4110e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110cc, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4110cc, %struct.Memory** %MEMORY

  %loadBr_4110cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4110cc = icmp eq i8 %loadBr_4110cc, 1
  br i1 %cmpBr_4110cc, label %block_.L_4110e8, label %block_4110d2

block_4110d2:
  ; Code: movl 0x62d7d0, %eax	 RIP: 4110d2	 Bytes: 7
  %loadMem_4110d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110d2 = call %struct.Memory* @routine_movl_0x62d7d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110d2)
  store %struct.Memory* %call_4110d2, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4110d9	 Bytes: 3
  %loadMem_4110d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110d9 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110d9)
  store %struct.Memory* %call_4110d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d790	 RIP: 4110dc	 Bytes: 7
  %loadMem_4110dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110dc = call %struct.Memory* @routine_movl__eax__0x62d790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110dc)
  store %struct.Memory* %call_4110dc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4110f9	 RIP: 4110e3	 Bytes: 5
  %loadMem_4110e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110e3 = call %struct.Memory* @routine_jmpq_.L_4110f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110e3, i64 22, i64 5)
  store %struct.Memory* %call_4110e3, %struct.Memory** %MEMORY

  br label %block_.L_4110f9

  ; Code: .L_4110e8:	 RIP: 4110e8	 Bytes: 0
block_.L_4110e8:

  ; Code: movl 0x62d7cc, %eax	 RIP: 4110e8	 Bytes: 7
  %loadMem_4110e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110e8 = call %struct.Memory* @routine_movl_0x62d7cc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110e8)
  store %struct.Memory* %call_4110e8, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 4110ef	 Bytes: 3
  %loadMem_4110ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110ef = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110ef)
  store %struct.Memory* %call_4110ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d78c	 RIP: 4110f2	 Bytes: 7
  %loadMem_4110f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110f2 = call %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110f2)
  store %struct.Memory* %call_4110f2, %struct.Memory** %MEMORY

  ; Code: .L_4110f9:	 RIP: 4110f9	 Bytes: 0
  br label %block_.L_4110f9
block_.L_4110f9:

  ; Code: movq $0x4289fd, %rdi	 RIP: 4110f9	 Bytes: 10
  %loadMem_4110f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4110f9 = call %struct.Memory* @routine_movq__0x4289fd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4110f9)
  store %struct.Memory* %call_4110f9, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 411103	 Bytes: 4
  %loadMem_411103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411103 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411103)
  store %struct.Memory* %call_411103, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 411107	 Bytes: 2
  %loadMem_411107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411107 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411107)
  store %struct.Memory* %call_411107, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 411109	 Bytes: 5
  %loadMem1_411109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411109 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411109, i64 -66649, i64 5, i64 5)
  store %struct.Memory* %call1_411109, %struct.Memory** %MEMORY

  %loadMem2_411109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411109 = load i64, i64* %3
  %call2_411109 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_411109, %struct.Memory* %loadMem2_411109)
  store %struct.Memory* %call2_411109, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 41110e	 Bytes: 6
  %loadMem_41110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41110e = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41110e)
  store %struct.Memory* %call_41110e, %struct.Memory** %MEMORY

  ; Code: .L_411114:	 RIP: 411114	 Bytes: 0
  br label %block_.L_411114
block_.L_411114:

  ; Code: movq $0x429b45, %rsi	 RIP: 411114	 Bytes: 10
  %loadMem_411114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411114 = call %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411114)
  store %struct.Memory* %call_411114, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41111e	 Bytes: 4
  %loadMem_41111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41111e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41111e)
  store %struct.Memory* %call_41111e, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411122	 Bytes: 4
  %loadMem_411122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411122 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411122)
  store %struct.Memory* %call_411122, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 411126	 Bytes: 3
  %loadMem_411126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411126 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411126)
  store %struct.Memory* %call_411126, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 411129	 Bytes: 5
  %loadMem1_411129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411129 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411129, i64 -66361, i64 5, i64 5)
  store %struct.Memory* %call1_411129, %struct.Memory** %MEMORY

  %loadMem2_411129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411129 = load i64, i64* %3
  %call2_411129 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_411129, %struct.Memory* %loadMem2_411129)
  store %struct.Memory* %call2_411129, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41112e	 Bytes: 4
  %loadMem_41112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41112e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41112e)
  store %struct.Memory* %call_41112e, %struct.Memory** %MEMORY

  ; Code: je .L_4111bd	 RIP: 411132	 Bytes: 6
  %loadMem_411132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411132 = call %struct.Memory* @routine_je_.L_4111bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411132, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_411132, %struct.Memory** %MEMORY

  %loadBr_411132 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411132 = icmp eq i8 %loadBr_411132, 1
  br i1 %cmpBr_411132, label %block_.L_4111bd, label %block_411138

block_411138:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 411138	 Bytes: 8
  %loadMem_411138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411138 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411138)
  store %struct.Memory* %call_411138, %struct.Memory** %MEMORY

  ; Code: jne .L_41115c	 RIP: 411140	 Bytes: 6
  %loadMem_411140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411140 = call %struct.Memory* @routine_jne_.L_41115c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411140, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_411140, %struct.Memory** %MEMORY

  %loadBr_411140 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411140 = icmp eq i8 %loadBr_411140, 1
  br i1 %cmpBr_411140, label %block_.L_41115c, label %block_411146

block_411146:
  ; Code: movl 0x62d7f0, %eax	 RIP: 411146	 Bytes: 7
  %loadMem_411146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411146 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411146)
  store %struct.Memory* %call_411146, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 41114d	 Bytes: 3
  %loadMem_41114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41114d = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41114d)
  store %struct.Memory* %call_41114d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 411150	 Bytes: 7
  %loadMem_411150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411150 = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411150)
  store %struct.Memory* %call_411150, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41116d	 RIP: 411157	 Bytes: 5
  %loadMem_411157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411157 = call %struct.Memory* @routine_jmpq_.L_41116d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411157, i64 22, i64 5)
  store %struct.Memory* %call_411157, %struct.Memory** %MEMORY

  br label %block_.L_41116d

  ; Code: .L_41115c:	 RIP: 41115c	 Bytes: 0
block_.L_41115c:

  ; Code: movl 0x62d7ec, %eax	 RIP: 41115c	 Bytes: 7
  %loadMem_41115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41115c = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41115c)
  store %struct.Memory* %call_41115c, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411163	 Bytes: 3
  %loadMem_411163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411163 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411163)
  store %struct.Memory* %call_411163, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 411166	 Bytes: 7
  %loadMem_411166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411166 = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411166)
  store %struct.Memory* %call_411166, %struct.Memory** %MEMORY

  ; Code: .L_41116d:	 RIP: 41116d	 Bytes: 0
  br label %block_.L_41116d
block_.L_41116d:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 41116d	 Bytes: 8
  %loadMem_41116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41116d = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41116d)
  store %struct.Memory* %call_41116d, %struct.Memory** %MEMORY

  ; Code: jne .L_411191	 RIP: 411175	 Bytes: 6
  %loadMem_411175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411175 = call %struct.Memory* @routine_jne_.L_411191(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411175, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_411175, %struct.Memory** %MEMORY

  %loadBr_411175 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411175 = icmp eq i8 %loadBr_411175, 1
  br i1 %cmpBr_411175, label %block_.L_411191, label %block_41117b

block_41117b:
  ; Code: movl 0x62d7e8, %eax	 RIP: 41117b	 Bytes: 7
  %loadMem_41117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41117b = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41117b)
  store %struct.Memory* %call_41117b, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411182	 Bytes: 3
  %loadMem_411182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411182 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411182)
  store %struct.Memory* %call_411182, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 411185	 Bytes: 7
  %loadMem_411185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411185 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411185)
  store %struct.Memory* %call_411185, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4111a2	 RIP: 41118c	 Bytes: 5
  %loadMem_41118c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41118c = call %struct.Memory* @routine_jmpq_.L_4111a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41118c, i64 22, i64 5)
  store %struct.Memory* %call_41118c, %struct.Memory** %MEMORY

  br label %block_.L_4111a2

  ; Code: .L_411191:	 RIP: 411191	 Bytes: 0
block_.L_411191:

  ; Code: movl 0x62d7e4, %eax	 RIP: 411191	 Bytes: 7
  %loadMem_411191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411191 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411191)
  store %struct.Memory* %call_411191, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411198	 Bytes: 3
  %loadMem_411198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411198 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411198)
  store %struct.Memory* %call_411198, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 41119b	 Bytes: 7
  %loadMem_41119b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41119b = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41119b)
  store %struct.Memory* %call_41119b, %struct.Memory** %MEMORY

  ; Code: .L_4111a2:	 RIP: 4111a2	 Bytes: 0
  br label %block_.L_4111a2
block_.L_4111a2:

  ; Code: movq $0x428a1a, %rdi	 RIP: 4111a2	 Bytes: 10
  %loadMem_4111a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111a2 = call %struct.Memory* @routine_movq__0x428a1a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111a2)
  store %struct.Memory* %call_4111a2, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 4111ac	 Bytes: 4
  %loadMem_4111ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111ac = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111ac)
  store %struct.Memory* %call_4111ac, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4111b0	 Bytes: 2
  %loadMem_4111b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111b0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111b0)
  store %struct.Memory* %call_4111b0, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4111b2	 Bytes: 5
  %loadMem1_4111b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4111b2 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4111b2, i64 -66818, i64 5, i64 5)
  store %struct.Memory* %call1_4111b2, %struct.Memory** %MEMORY

  %loadMem2_4111b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4111b2 = load i64, i64* %3
  %call2_4111b2 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4111b2, %struct.Memory* %loadMem2_4111b2)
  store %struct.Memory* %call2_4111b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf8(%rbp)	 RIP: 4111b7	 Bytes: 6
  %loadMem_4111b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111b7 = call %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111b7)
  store %struct.Memory* %call_4111b7, %struct.Memory** %MEMORY

  ; Code: .L_4111bd:	 RIP: 4111bd	 Bytes: 0
  br label %block_.L_4111bd
block_.L_4111bd:

  ; Code: movq $0x429b3b, %rsi	 RIP: 4111bd	 Bytes: 10
  %loadMem_4111bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111bd = call %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111bd)
  store %struct.Memory* %call_4111bd, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4111c7	 Bytes: 4
  %loadMem_4111c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111c7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111c7)
  store %struct.Memory* %call_4111c7, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4111cb	 Bytes: 4
  %loadMem_4111cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111cb = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111cb)
  store %struct.Memory* %call_4111cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4111cf	 Bytes: 3
  %loadMem_4111cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111cf = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111cf)
  store %struct.Memory* %call_4111cf, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4111d2	 Bytes: 5
  %loadMem1_4111d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4111d2 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4111d2, i64 -66530, i64 5, i64 5)
  store %struct.Memory* %call1_4111d2, %struct.Memory** %MEMORY

  %loadMem2_4111d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4111d2 = load i64, i64* %3
  %call2_4111d2 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4111d2, %struct.Memory* %loadMem2_4111d2)
  store %struct.Memory* %call2_4111d2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4111d7	 Bytes: 4
  %loadMem_4111d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111d7 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111d7)
  store %struct.Memory* %call_4111d7, %struct.Memory** %MEMORY

  ; Code: je .L_411266	 RIP: 4111db	 Bytes: 6
  %loadMem_4111db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111db = call %struct.Memory* @routine_je_.L_411266(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111db, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_4111db, %struct.Memory** %MEMORY

  %loadBr_4111db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4111db = icmp eq i8 %loadBr_4111db, 1
  br i1 %cmpBr_4111db, label %block_.L_411266, label %block_4111e1

block_4111e1:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 4111e1	 Bytes: 8
  %loadMem_4111e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111e1 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111e1)
  store %struct.Memory* %call_4111e1, %struct.Memory** %MEMORY

  ; Code: jne .L_411205	 RIP: 4111e9	 Bytes: 6
  %loadMem_4111e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111e9 = call %struct.Memory* @routine_jne_.L_411205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111e9, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4111e9, %struct.Memory** %MEMORY

  %loadBr_4111e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4111e9 = icmp eq i8 %loadBr_4111e9, 1
  br i1 %cmpBr_4111e9, label %block_.L_411205, label %block_4111ef

block_4111ef:
  ; Code: movl 0x62d7e0, %eax	 RIP: 4111ef	 Bytes: 7
  %loadMem_4111ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111ef = call %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111ef)
  store %struct.Memory* %call_4111ef, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4111f6	 Bytes: 3
  %loadMem_4111f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111f6 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111f6)
  store %struct.Memory* %call_4111f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 4111f9	 Bytes: 7
  %loadMem_4111f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4111f9 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4111f9)
  store %struct.Memory* %call_4111f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411216	 RIP: 411200	 Bytes: 5
  %loadMem_411200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411200 = call %struct.Memory* @routine_jmpq_.L_411216(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411200, i64 22, i64 5)
  store %struct.Memory* %call_411200, %struct.Memory** %MEMORY

  br label %block_.L_411216

  ; Code: .L_411205:	 RIP: 411205	 Bytes: 0
block_.L_411205:

  ; Code: movl 0x62d7dc, %eax	 RIP: 411205	 Bytes: 7
  %loadMem_411205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411205 = call %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411205)
  store %struct.Memory* %call_411205, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 41120c	 Bytes: 3
  %loadMem_41120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41120c = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41120c)
  store %struct.Memory* %call_41120c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 41120f	 Bytes: 7
  %loadMem_41120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41120f = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41120f)
  store %struct.Memory* %call_41120f, %struct.Memory** %MEMORY

  ; Code: .L_411216:	 RIP: 411216	 Bytes: 0
  br label %block_.L_411216
block_.L_411216:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 411216	 Bytes: 8
  %loadMem_411216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411216 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411216)
  store %struct.Memory* %call_411216, %struct.Memory** %MEMORY

  ; Code: jne .L_41123a	 RIP: 41121e	 Bytes: 6
  %loadMem_41121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41121e = call %struct.Memory* @routine_jne_.L_41123a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41121e, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41121e, %struct.Memory** %MEMORY

  %loadBr_41121e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41121e = icmp eq i8 %loadBr_41121e, 1
  br i1 %cmpBr_41121e, label %block_.L_41123a, label %block_411224

block_411224:
  ; Code: movl 0x62d7e8, %eax	 RIP: 411224	 Bytes: 7
  %loadMem_411224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411224 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411224)
  store %struct.Memory* %call_411224, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 41122b	 Bytes: 3
  %loadMem_41122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41122b = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41122b)
  store %struct.Memory* %call_41122b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 41122e	 Bytes: 7
  %loadMem_41122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41122e = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41122e)
  store %struct.Memory* %call_41122e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41124b	 RIP: 411235	 Bytes: 5
  %loadMem_411235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411235 = call %struct.Memory* @routine_jmpq_.L_41124b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411235, i64 22, i64 5)
  store %struct.Memory* %call_411235, %struct.Memory** %MEMORY

  br label %block_.L_41124b

  ; Code: .L_41123a:	 RIP: 41123a	 Bytes: 0
block_.L_41123a:

  ; Code: movl 0x62d7e4, %eax	 RIP: 41123a	 Bytes: 7
  %loadMem_41123a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41123a = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41123a)
  store %struct.Memory* %call_41123a, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411241	 Bytes: 3
  %loadMem_411241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411241 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411241)
  store %struct.Memory* %call_411241, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 411244	 Bytes: 7
  %loadMem_411244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411244 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411244)
  store %struct.Memory* %call_411244, %struct.Memory** %MEMORY

  ; Code: .L_41124b:	 RIP: 41124b	 Bytes: 0
  br label %block_.L_41124b
block_.L_41124b:

  ; Code: movq $0x428a37, %rdi	 RIP: 41124b	 Bytes: 10
  %loadMem_41124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41124b = call %struct.Memory* @routine_movq__0x428a37___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41124b)
  store %struct.Memory* %call_41124b, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 411255	 Bytes: 4
  %loadMem_411255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411255 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411255)
  store %struct.Memory* %call_411255, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 411259	 Bytes: 2
  %loadMem_411259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411259 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411259)
  store %struct.Memory* %call_411259, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41125b	 Bytes: 5
  %loadMem1_41125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41125b = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41125b, i64 -66987, i64 5, i64 5)
  store %struct.Memory* %call1_41125b, %struct.Memory** %MEMORY

  %loadMem2_41125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41125b = load i64, i64* %3
  %call2_41125b = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41125b, %struct.Memory* %loadMem2_41125b)
  store %struct.Memory* %call2_41125b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 411260	 Bytes: 6
  %loadMem_411260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411260 = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411260)
  store %struct.Memory* %call_411260, %struct.Memory** %MEMORY

  ; Code: .L_411266:	 RIP: 411266	 Bytes: 0
  br label %block_.L_411266
block_.L_411266:

  ; Code: movq $0x429b59, %rsi	 RIP: 411266	 Bytes: 10
  %loadMem_411266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411266 = call %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411266)
  store %struct.Memory* %call_411266, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 411270	 Bytes: 4
  %loadMem_411270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411270 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411270)
  store %struct.Memory* %call_411270, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411274	 Bytes: 4
  %loadMem_411274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411274 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411274)
  store %struct.Memory* %call_411274, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 411278	 Bytes: 3
  %loadMem_411278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411278 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411278)
  store %struct.Memory* %call_411278, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41127b	 Bytes: 5
  %loadMem1_41127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41127b = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41127b, i64 -66699, i64 5, i64 5)
  store %struct.Memory* %call1_41127b, %struct.Memory** %MEMORY

  %loadMem2_41127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41127b = load i64, i64* %3
  %call2_41127b = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41127b, %struct.Memory* %loadMem2_41127b)
  store %struct.Memory* %call2_41127b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 411280	 Bytes: 4
  %loadMem_411280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411280 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411280)
  store %struct.Memory* %call_411280, %struct.Memory** %MEMORY

  ; Code: je .L_4112da	 RIP: 411284	 Bytes: 6
  %loadMem_411284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411284 = call %struct.Memory* @routine_je_.L_4112da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411284, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_411284, %struct.Memory** %MEMORY

  %loadBr_411284 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411284 = icmp eq i8 %loadBr_411284, 1
  br i1 %cmpBr_411284, label %block_.L_4112da, label %block_41128a

block_41128a:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 41128a	 Bytes: 8
  %loadMem_41128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41128a = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41128a)
  store %struct.Memory* %call_41128a, %struct.Memory** %MEMORY

  ; Code: jne .L_4112ae	 RIP: 411292	 Bytes: 6
  %loadMem_411292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411292 = call %struct.Memory* @routine_jne_.L_4112ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411292, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_411292, %struct.Memory** %MEMORY

  %loadBr_411292 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411292 = icmp eq i8 %loadBr_411292, 1
  br i1 %cmpBr_411292, label %block_.L_4112ae, label %block_411298

block_411298:
  ; Code: movl 0x62d7e8, %eax	 RIP: 411298	 Bytes: 7
  %loadMem_411298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411298 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411298)
  store %struct.Memory* %call_411298, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 41129f	 Bytes: 3
  %loadMem_41129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41129f = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41129f)
  store %struct.Memory* %call_41129f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 4112a2	 Bytes: 7
  %loadMem_4112a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112a2 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112a2)
  store %struct.Memory* %call_4112a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4112bf	 RIP: 4112a9	 Bytes: 5
  %loadMem_4112a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112a9 = call %struct.Memory* @routine_jmpq_.L_4112bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112a9, i64 22, i64 5)
  store %struct.Memory* %call_4112a9, %struct.Memory** %MEMORY

  br label %block_.L_4112bf

  ; Code: .L_4112ae:	 RIP: 4112ae	 Bytes: 0
block_.L_4112ae:

  ; Code: movl 0x62d7e4, %eax	 RIP: 4112ae	 Bytes: 7
  %loadMem_4112ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112ae = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112ae)
  store %struct.Memory* %call_4112ae, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 4112b5	 Bytes: 3
  %loadMem_4112b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112b5 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112b5)
  store %struct.Memory* %call_4112b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 4112b8	 Bytes: 7
  %loadMem_4112b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112b8 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112b8)
  store %struct.Memory* %call_4112b8, %struct.Memory** %MEMORY

  ; Code: .L_4112bf:	 RIP: 4112bf	 Bytes: 0
  br label %block_.L_4112bf
block_.L_4112bf:

  ; Code: movq $0x428a52, %rdi	 RIP: 4112bf	 Bytes: 10
  %loadMem_4112bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112bf = call %struct.Memory* @routine_movq__0x428a52___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112bf)
  store %struct.Memory* %call_4112bf, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 4112c9	 Bytes: 4
  %loadMem_4112c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112c9 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112c9)
  store %struct.Memory* %call_4112c9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4112cd	 Bytes: 2
  %loadMem_4112cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112cd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112cd)
  store %struct.Memory* %call_4112cd, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4112cf	 Bytes: 5
  %loadMem1_4112cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4112cf = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4112cf, i64 -67103, i64 5, i64 5)
  store %struct.Memory* %call1_4112cf, %struct.Memory** %MEMORY

  %loadMem2_4112cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4112cf = load i64, i64* %3
  %call2_4112cf = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4112cf, %struct.Memory* %loadMem2_4112cf)
  store %struct.Memory* %call2_4112cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x100(%rbp)	 RIP: 4112d4	 Bytes: 6
  %loadMem_4112d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112d4 = call %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112d4)
  store %struct.Memory* %call_4112d4, %struct.Memory** %MEMORY

  ; Code: .L_4112da:	 RIP: 4112da	 Bytes: 0
  br label %block_.L_4112da
block_.L_4112da:

  ; Code: movq $0x42877b, %rsi	 RIP: 4112da	 Bytes: 10
  %loadMem_4112da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112da = call %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112da)
  store %struct.Memory* %call_4112da, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4112e4	 Bytes: 4
  %loadMem_4112e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112e4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112e4)
  store %struct.Memory* %call_4112e4, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4112e8	 Bytes: 4
  %loadMem_4112e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112e8 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112e8)
  store %struct.Memory* %call_4112e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4112ec	 Bytes: 3
  %loadMem_4112ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112ec = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112ec)
  store %struct.Memory* %call_4112ec, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4112ef	 Bytes: 5
  %loadMem1_4112ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4112ef = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4112ef, i64 -66815, i64 5, i64 5)
  store %struct.Memory* %call1_4112ef, %struct.Memory** %MEMORY

  %loadMem2_4112ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4112ef = load i64, i64* %3
  %call2_4112ef = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4112ef, %struct.Memory* %loadMem2_4112ef)
  store %struct.Memory* %call2_4112ef, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4112f4	 Bytes: 4
  %loadMem_4112f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112f4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112f4)
  store %struct.Memory* %call_4112f4, %struct.Memory** %MEMORY

  ; Code: je .L_4113a5	 RIP: 4112f8	 Bytes: 6
  %loadMem_4112f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112f8 = call %struct.Memory* @routine_je_.L_4113a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112f8, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_4112f8, %struct.Memory** %MEMORY

  %loadBr_4112f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4112f8 = icmp eq i8 %loadBr_4112f8, 1
  br i1 %cmpBr_4112f8, label %block_.L_4113a5, label %block_4112fe

block_4112fe:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 4112fe	 Bytes: 8
  %loadMem_4112fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4112fe = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4112fe)
  store %struct.Memory* %call_4112fe, %struct.Memory** %MEMORY

  ; Code: jne .L_411322	 RIP: 411306	 Bytes: 6
  %loadMem_411306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411306 = call %struct.Memory* @routine_jne_.L_411322(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411306, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_411306, %struct.Memory** %MEMORY

  %loadBr_411306 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411306 = icmp eq i8 %loadBr_411306, 1
  br i1 %cmpBr_411306, label %block_.L_411322, label %block_41130c

block_41130c:
  ; Code: movl 0x62d7c8, %eax	 RIP: 41130c	 Bytes: 7
  %loadMem_41130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41130c = call %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41130c)
  store %struct.Memory* %call_41130c, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411313	 Bytes: 3
  %loadMem_411313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411313 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411313)
  store %struct.Memory* %call_411313, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 411316	 Bytes: 7
  %loadMem_411316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411316 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411316)
  store %struct.Memory* %call_411316, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411333	 RIP: 41131d	 Bytes: 5
  %loadMem_41131d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41131d = call %struct.Memory* @routine_jmpq_.L_411333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41131d, i64 22, i64 5)
  store %struct.Memory* %call_41131d, %struct.Memory** %MEMORY

  br label %block_.L_411333

  ; Code: .L_411322:	 RIP: 411322	 Bytes: 0
block_.L_411322:

  ; Code: movl 0x62d7c4, %eax	 RIP: 411322	 Bytes: 7
  %loadMem_411322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411322 = call %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411322)
  store %struct.Memory* %call_411322, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411329	 Bytes: 3
  %loadMem_411329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411329 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411329)
  store %struct.Memory* %call_411329, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 41132c	 Bytes: 7
  %loadMem_41132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41132c = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41132c)
  store %struct.Memory* %call_41132c, %struct.Memory** %MEMORY

  ; Code: .L_411333:	 RIP: 411333	 Bytes: 0
  br label %block_.L_411333
block_.L_411333:

  ; Code: cmpl $0x1, 0x886b84	 RIP: 411333	 Bytes: 8
  %loadMem_411333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411333 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411333)
  store %struct.Memory* %call_411333, %struct.Memory** %MEMORY

  ; Code: jne .L_411368	 RIP: 41133b	 Bytes: 6
  %loadMem_41133b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41133b = call %struct.Memory* @routine_jne_.L_411368(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41133b, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_41133b, %struct.Memory** %MEMORY

  %loadBr_41133b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41133b = icmp eq i8 %loadBr_41133b, 1
  br i1 %cmpBr_41133b, label %block_.L_411368, label %block_411341

block_411341:
  ; Code: movl 0x62d7e8, %eax	 RIP: 411341	 Bytes: 7
  %loadMem_411341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411341 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411341)
  store %struct.Memory* %call_411341, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411348	 Bytes: 3
  %loadMem_411348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411348 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411348)
  store %struct.Memory* %call_411348, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 41134b	 Bytes: 7
  %loadMem_41134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41134b = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41134b)
  store %struct.Memory* %call_41134b, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7f0, %eax	 RIP: 411352	 Bytes: 7
  %loadMem_411352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411352 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411352)
  store %struct.Memory* %call_411352, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411359	 Bytes: 3
  %loadMem_411359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411359 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411359)
  store %struct.Memory* %call_411359, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 41135c	 Bytes: 7
  %loadMem_41135c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41135c = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41135c)
  store %struct.Memory* %call_41135c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41138a	 RIP: 411363	 Bytes: 5
  %loadMem_411363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411363 = call %struct.Memory* @routine_jmpq_.L_41138a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411363, i64 39, i64 5)
  store %struct.Memory* %call_411363, %struct.Memory** %MEMORY

  br label %block_.L_41138a

  ; Code: .L_411368:	 RIP: 411368	 Bytes: 0
block_.L_411368:

  ; Code: movl 0x62d7e4, %eax	 RIP: 411368	 Bytes: 7
  %loadMem_411368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411368 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411368)
  store %struct.Memory* %call_411368, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 41136f	 Bytes: 3
  %loadMem_41136f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41136f = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41136f)
  store %struct.Memory* %call_41136f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 411372	 Bytes: 7
  %loadMem_411372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411372 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411372)
  store %struct.Memory* %call_411372, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ec, %eax	 RIP: 411379	 Bytes: 7
  %loadMem_411379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411379 = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411379)
  store %struct.Memory* %call_411379, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411380	 Bytes: 3
  %loadMem_411380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411380 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411380)
  store %struct.Memory* %call_411380, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 411383	 Bytes: 7
  %loadMem_411383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411383 = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411383)
  store %struct.Memory* %call_411383, %struct.Memory** %MEMORY

  ; Code: .L_41138a:	 RIP: 41138a	 Bytes: 0
  br label %block_.L_41138a
block_.L_41138a:

  ; Code: movq $0x428a6e, %rdi	 RIP: 41138a	 Bytes: 10
  %loadMem_41138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41138a = call %struct.Memory* @routine_movq__0x428a6e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41138a)
  store %struct.Memory* %call_41138a, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 411394	 Bytes: 4
  %loadMem_411394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411394 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411394)
  store %struct.Memory* %call_411394, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 411398	 Bytes: 2
  %loadMem_411398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411398 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411398)
  store %struct.Memory* %call_411398, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41139a	 Bytes: 5
  %loadMem1_41139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41139a = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41139a, i64 -67306, i64 5, i64 5)
  store %struct.Memory* %call1_41139a, %struct.Memory** %MEMORY

  %loadMem2_41139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41139a = load i64, i64* %3
  %call2_41139a = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41139a, %struct.Memory* %loadMem2_41139a)
  store %struct.Memory* %call2_41139a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x104(%rbp)	 RIP: 41139f	 Bytes: 6
  %loadMem_41139f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41139f = call %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41139f)
  store %struct.Memory* %call_41139f, %struct.Memory** %MEMORY

  ; Code: .L_4113a5:	 RIP: 4113a5	 Bytes: 0
  br label %block_.L_4113a5
block_.L_4113a5:

  ; Code: movq $0x429aeb, %rsi	 RIP: 4113a5	 Bytes: 10
  %loadMem_4113a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113a5 = call %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113a5)
  store %struct.Memory* %call_4113a5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4113af	 Bytes: 4
  %loadMem_4113af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113af = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113af)
  store %struct.Memory* %call_4113af, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4113b3	 Bytes: 4
  %loadMem_4113b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113b3 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113b3)
  store %struct.Memory* %call_4113b3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4113b7	 Bytes: 3
  %loadMem_4113b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113b7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113b7)
  store %struct.Memory* %call_4113b7, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4113ba	 Bytes: 5
  %loadMem1_4113ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4113ba = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4113ba, i64 -67018, i64 5, i64 5)
  store %struct.Memory* %call1_4113ba, %struct.Memory** %MEMORY

  %loadMem2_4113ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4113ba = load i64, i64* %3
  %call2_4113ba = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4113ba, %struct.Memory* %loadMem2_4113ba)
  store %struct.Memory* %call2_4113ba, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4113bf	 Bytes: 4
  %loadMem_4113bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113bf = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113bf)
  store %struct.Memory* %call_4113bf, %struct.Memory** %MEMORY

  ; Code: je .L_41145d	 RIP: 4113c3	 Bytes: 6
  %loadMem_4113c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113c3 = call %struct.Memory* @routine_je_.L_41145d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113c3, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_4113c3, %struct.Memory** %MEMORY

  %loadBr_4113c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113c3 = icmp eq i8 %loadBr_4113c3, 1
  br i1 %cmpBr_4113c3, label %block_.L_41145d, label %block_4113c9

block_4113c9:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 4113c9	 Bytes: 8
  %loadMem_4113c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113c9 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113c9)
  store %struct.Memory* %call_4113c9, %struct.Memory** %MEMORY

  ; Code: jne .L_41140f	 RIP: 4113d1	 Bytes: 6
  %loadMem_4113d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113d1 = call %struct.Memory* @routine_jne_.L_41140f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113d1, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4113d1, %struct.Memory** %MEMORY

  %loadBr_4113d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113d1 = icmp eq i8 %loadBr_4113d1, 1
  br i1 %cmpBr_4113d1, label %block_.L_41140f, label %block_4113d7

block_4113d7:
  ; Code: movl 0x62d7c8, %eax	 RIP: 4113d7	 Bytes: 7
  %loadMem_4113d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113d7 = call %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113d7)
  store %struct.Memory* %call_4113d7, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4113de	 Bytes: 3
  %loadMem_4113de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113de = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113de)
  store %struct.Memory* %call_4113de, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d788	 RIP: 4113e1	 Bytes: 7
  %loadMem_4113e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113e1 = call %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113e1)
  store %struct.Memory* %call_4113e1, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7f0, %eax	 RIP: 4113e8	 Bytes: 7
  %loadMem_4113e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113e8 = call %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113e8)
  store %struct.Memory* %call_4113e8, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4113ef	 Bytes: 3
  %loadMem_4113ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113ef = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113ef)
  store %struct.Memory* %call_4113ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7b0	 RIP: 4113f2	 Bytes: 7
  %loadMem_4113f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113f2 = call %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113f2)
  store %struct.Memory* %call_4113f2, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e8, %eax	 RIP: 4113f9	 Bytes: 7
  %loadMem_4113f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4113f9 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4113f9)
  store %struct.Memory* %call_4113f9, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411400	 Bytes: 3
  %loadMem_411400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411400 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411400)
  store %struct.Memory* %call_411400, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 411403	 Bytes: 7
  %loadMem_411403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411403 = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411403)
  store %struct.Memory* %call_411403, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411442	 RIP: 41140a	 Bytes: 5
  %loadMem_41140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41140a = call %struct.Memory* @routine_jmpq_.L_411442(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41140a, i64 56, i64 5)
  store %struct.Memory* %call_41140a, %struct.Memory** %MEMORY

  br label %block_.L_411442

  ; Code: .L_41140f:	 RIP: 41140f	 Bytes: 0
block_.L_41140f:

  ; Code: movl 0x62d7c4, %eax	 RIP: 41140f	 Bytes: 7
  %loadMem_41140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41140f = call %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41140f)
  store %struct.Memory* %call_41140f, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411416	 Bytes: 3
  %loadMem_411416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411416 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411416)
  store %struct.Memory* %call_411416, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d784	 RIP: 411419	 Bytes: 7
  %loadMem_411419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411419 = call %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411419)
  store %struct.Memory* %call_411419, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7ec, %eax	 RIP: 411420	 Bytes: 7
  %loadMem_411420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411420 = call %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411420)
  store %struct.Memory* %call_411420, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411427	 Bytes: 3
  %loadMem_411427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411427 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411427)
  store %struct.Memory* %call_411427, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7ac	 RIP: 41142a	 Bytes: 7
  %loadMem_41142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41142a = call %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41142a)
  store %struct.Memory* %call_41142a, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e4, %eax	 RIP: 411431	 Bytes: 7
  %loadMem_411431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411431 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411431)
  store %struct.Memory* %call_411431, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 411438	 Bytes: 3
  %loadMem_411438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411438 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411438)
  store %struct.Memory* %call_411438, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 41143b	 Bytes: 7
  %loadMem_41143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41143b = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41143b)
  store %struct.Memory* %call_41143b, %struct.Memory** %MEMORY

  ; Code: .L_411442:	 RIP: 411442	 Bytes: 0
  br label %block_.L_411442
block_.L_411442:

  ; Code: movq $0x428a89, %rdi	 RIP: 411442	 Bytes: 10
  %loadMem_411442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411442 = call %struct.Memory* @routine_movq__0x428a89___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411442)
  store %struct.Memory* %call_411442, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 41144c	 Bytes: 4
  %loadMem_41144c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41144c = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41144c)
  store %struct.Memory* %call_41144c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 411450	 Bytes: 2
  %loadMem_411450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411450 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411450)
  store %struct.Memory* %call_411450, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 411452	 Bytes: 5
  %loadMem1_411452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411452 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411452, i64 -67490, i64 5, i64 5)
  store %struct.Memory* %call1_411452, %struct.Memory** %MEMORY

  %loadMem2_411452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411452 = load i64, i64* %3
  %call2_411452 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_411452, %struct.Memory* %loadMem2_411452)
  store %struct.Memory* %call2_411452, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x108(%rbp)	 RIP: 411457	 Bytes: 6
  %loadMem_411457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411457 = call %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411457)
  store %struct.Memory* %call_411457, %struct.Memory** %MEMORY

  ; Code: .L_41145d:	 RIP: 41145d	 Bytes: 0
  br label %block_.L_41145d
block_.L_41145d:

  ; Code: movq $0x428971, %rsi	 RIP: 41145d	 Bytes: 10
  %loadMem_41145d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41145d = call %struct.Memory* @routine_movq__0x428971___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41145d)
  store %struct.Memory* %call_41145d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 411467	 Bytes: 4
  %loadMem_411467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411467 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411467)
  store %struct.Memory* %call_411467, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 41146b	 Bytes: 4
  %loadMem_41146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41146b = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41146b)
  store %struct.Memory* %call_41146b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41146f	 Bytes: 3
  %loadMem_41146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41146f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41146f)
  store %struct.Memory* %call_41146f, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 411472	 Bytes: 5
  %loadMem1_411472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411472 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411472, i64 -67202, i64 5, i64 5)
  store %struct.Memory* %call1_411472, %struct.Memory** %MEMORY

  %loadMem2_411472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411472 = load i64, i64* %3
  %call2_411472 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_411472, %struct.Memory* %loadMem2_411472)
  store %struct.Memory* %call2_411472, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 411477	 Bytes: 4
  %loadMem_411477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411477 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411477)
  store %struct.Memory* %call_411477, %struct.Memory** %MEMORY

  ; Code: je .L_4114f3	 RIP: 41147b	 Bytes: 6
  %loadMem_41147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41147b = call %struct.Memory* @routine_je_.L_4114f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41147b, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_41147b, %struct.Memory** %MEMORY

  %loadBr_41147b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41147b = icmp eq i8 %loadBr_41147b, 1
  br i1 %cmpBr_41147b, label %block_.L_4114f3, label %block_411481

block_411481:
  ; Code: cmpl $0x1, 0x886b84	 RIP: 411481	 Bytes: 8
  %loadMem_411481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411481 = call %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411481)
  store %struct.Memory* %call_411481, %struct.Memory** %MEMORY

  ; Code: jne .L_4114b6	 RIP: 411489	 Bytes: 6
  %loadMem_411489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411489 = call %struct.Memory* @routine_jne_.L_4114b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411489, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_411489, %struct.Memory** %MEMORY

  %loadBr_411489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411489 = icmp eq i8 %loadBr_411489, 1
  br i1 %cmpBr_411489, label %block_.L_4114b6, label %block_41148f

block_41148f:
  ; Code: movl 0x62d7e0, %eax	 RIP: 41148f	 Bytes: 7
  %loadMem_41148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41148f = call %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41148f)
  store %struct.Memory* %call_41148f, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 411496	 Bytes: 3
  %loadMem_411496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411496 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411496)
  store %struct.Memory* %call_411496, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a0	 RIP: 411499	 Bytes: 7
  %loadMem_411499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411499 = call %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411499)
  store %struct.Memory* %call_411499, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e8, %eax	 RIP: 4114a0	 Bytes: 7
  %loadMem_4114a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114a0 = call %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114a0)
  store %struct.Memory* %call_4114a0, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 4114a7	 Bytes: 3
  %loadMem_4114a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114a7 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114a7)
  store %struct.Memory* %call_4114a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a8	 RIP: 4114aa	 Bytes: 7
  %loadMem_4114aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114aa = call %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114aa)
  store %struct.Memory* %call_4114aa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4114d8	 RIP: 4114b1	 Bytes: 5
  %loadMem_4114b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114b1 = call %struct.Memory* @routine_jmpq_.L_4114d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114b1, i64 39, i64 5)
  store %struct.Memory* %call_4114b1, %struct.Memory** %MEMORY

  br label %block_.L_4114d8

  ; Code: .L_4114b6:	 RIP: 4114b6	 Bytes: 0
block_.L_4114b6:

  ; Code: movl 0x62d7dc, %eax	 RIP: 4114b6	 Bytes: 7
  %loadMem_4114b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114b6 = call %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114b6)
  store %struct.Memory* %call_4114b6, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 4114bd	 Bytes: 3
  %loadMem_4114bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114bd = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114bd)
  store %struct.Memory* %call_4114bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d79c	 RIP: 4114c0	 Bytes: 7
  %loadMem_4114c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114c0 = call %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114c0)
  store %struct.Memory* %call_4114c0, %struct.Memory** %MEMORY

  ; Code: movl 0x62d7e4, %eax	 RIP: 4114c7	 Bytes: 7
  %loadMem_4114c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114c7 = call %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114c7)
  store %struct.Memory* %call_4114c7, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 4114ce	 Bytes: 3
  %loadMem_4114ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114ce = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114ce)
  store %struct.Memory* %call_4114ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62d7a4	 RIP: 4114d1	 Bytes: 7
  %loadMem_4114d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114d1 = call %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114d1)
  store %struct.Memory* %call_4114d1, %struct.Memory** %MEMORY

  ; Code: .L_4114d8:	 RIP: 4114d8	 Bytes: 0
  br label %block_.L_4114d8
block_.L_4114d8:

  ; Code: movq $0x428aa8, %rdi	 RIP: 4114d8	 Bytes: 10
  %loadMem_4114d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114d8 = call %struct.Memory* @routine_movq__0x428aa8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114d8)
  store %struct.Memory* %call_4114d8, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 4114e2	 Bytes: 4
  %loadMem_4114e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114e2 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114e2)
  store %struct.Memory* %call_4114e2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4114e6	 Bytes: 2
  %loadMem_4114e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114e6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114e6)
  store %struct.Memory* %call_4114e6, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4114e8	 Bytes: 5
  %loadMem1_4114e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4114e8 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4114e8, i64 -67640, i64 5, i64 5)
  store %struct.Memory* %call1_4114e8, %struct.Memory** %MEMORY

  %loadMem2_4114e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4114e8 = load i64, i64* %3
  %call2_4114e8 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4114e8, %struct.Memory* %loadMem2_4114e8)
  store %struct.Memory* %call2_4114e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c(%rbp)	 RIP: 4114ed	 Bytes: 6
  %loadMem_4114ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114ed = call %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114ed)
  store %struct.Memory* %call_4114ed, %struct.Memory** %MEMORY

  ; Code: .L_4114f3:	 RIP: 4114f3	 Bytes: 0
  br label %block_.L_4114f3
block_.L_4114f3:

  ; Code: jmpq .L_411847	 RIP: 4114f3	 Bytes: 5
  %loadMem_4114f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114f3 = call %struct.Memory* @routine_jmpq_.L_411847(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114f3, i64 852, i64 5)
  store %struct.Memory* %call_4114f3, %struct.Memory** %MEMORY

  br label %block_.L_411847

  ; Code: .L_4114f8:	 RIP: 4114f8	 Bytes: 0
block_.L_4114f8:

  ; Code: movq $0x428b82, %rsi	 RIP: 4114f8	 Bytes: 10
  %loadMem_4114f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4114f8 = call %struct.Memory* @routine_movq__0x428b82___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4114f8)
  store %struct.Memory* %call_4114f8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 411502	 Bytes: 5
  %loadMem_411502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411502 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411502)
  store %struct.Memory* %call_411502, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 411507	 Bytes: 2
  %loadMem_411507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411507 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411507)
  store %struct.Memory* %call_411507, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 411509	 Bytes: 4
  %loadMem_411509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411509 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411509)
  store %struct.Memory* %call_411509, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41150d	 Bytes: 4
  %loadMem_41150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41150d = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41150d)
  store %struct.Memory* %call_41150d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411511	 Bytes: 3
  %loadMem_411511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411511 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411511)
  store %struct.Memory* %call_411511, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 411514	 Bytes: 5
  %loadMem1_411514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411514 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411514, i64 -67764, i64 5, i64 5)
  store %struct.Memory* %call1_411514, %struct.Memory** %MEMORY

  %loadMem2_411514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411514 = load i64, i64* %3
  %call2_411514 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_411514, %struct.Memory* %loadMem2_411514)
  store %struct.Memory* %call2_411514, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411519	 Bytes: 3
  %loadMem_411519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411519 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411519)
  store %struct.Memory* %call_411519, %struct.Memory** %MEMORY

  ; Code: je .L_4115b8	 RIP: 41151c	 Bytes: 6
  %loadMem_41151c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41151c = call %struct.Memory* @routine_je_.L_4115b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41151c, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_41151c, %struct.Memory** %MEMORY

  %loadBr_41151c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41151c = icmp eq i8 %loadBr_41151c, 1
  br i1 %cmpBr_41151c, label %block_.L_4115b8, label %block_411522

block_411522:
  ; Code: movq $0x428b84, %rsi	 RIP: 411522	 Bytes: 10
  %loadMem_411522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411522 = call %struct.Memory* @routine_movq__0x428b84___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411522)
  store %struct.Memory* %call_411522, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41152c	 Bytes: 4
  %loadMem_41152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41152c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41152c)
  store %struct.Memory* %call_41152c, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411530	 Bytes: 4
  %loadMem_411530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411530 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411530)
  store %struct.Memory* %call_411530, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 411534	 Bytes: 3
  %loadMem_411534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411534 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411534)
  store %struct.Memory* %call_411534, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 411537	 Bytes: 5
  %loadMem1_411537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411537 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411537, i64 -67399, i64 5, i64 5)
  store %struct.Memory* %call1_411537, %struct.Memory** %MEMORY

  %loadMem2_411537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411537 = load i64, i64* %3
  %call2_411537 = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_411537, %struct.Memory* %loadMem2_411537)
  store %struct.Memory* %call2_411537, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41153c	 Bytes: 4
  %loadMem_41153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41153c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41153c)
  store %struct.Memory* %call_41153c, %struct.Memory** %MEMORY

  ; Code: jne .L_4115b8	 RIP: 411540	 Bytes: 6
  %loadMem_411540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411540 = call %struct.Memory* @routine_jne_.L_4115b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411540, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_411540, %struct.Memory** %MEMORY

  %loadBr_411540 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411540 = icmp eq i8 %loadBr_411540, 1
  br i1 %cmpBr_411540, label %block_.L_4115b8, label %block_411546

block_411546:
  ; Code: movq $0x428b94, %rsi	 RIP: 411546	 Bytes: 10
  %loadMem_411546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411546 = call %struct.Memory* @routine_movq__0x428b94___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411546)
  store %struct.Memory* %call_411546, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 411550	 Bytes: 4
  %loadMem_411550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411550 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411550)
  store %struct.Memory* %call_411550, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411554	 Bytes: 4
  %loadMem_411554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411554 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411554)
  store %struct.Memory* %call_411554, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 411558	 Bytes: 3
  %loadMem_411558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411558 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411558)
  store %struct.Memory* %call_411558, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41155b	 Bytes: 5
  %loadMem1_41155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41155b = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41155b, i64 -67435, i64 5, i64 5)
  store %struct.Memory* %call1_41155b, %struct.Memory** %MEMORY

  %loadMem2_41155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41155b = load i64, i64* %3
  %call2_41155b = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41155b, %struct.Memory* %loadMem2_41155b)
  store %struct.Memory* %call2_41155b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 411560	 Bytes: 4
  %loadMem_411560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411560 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411560)
  store %struct.Memory* %call_411560, %struct.Memory** %MEMORY

  ; Code: je .L_41158e	 RIP: 411564	 Bytes: 6
  %loadMem_411564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411564 = call %struct.Memory* @routine_je_.L_41158e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411564, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_411564, %struct.Memory** %MEMORY

  %loadBr_411564 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411564 = icmp eq i8 %loadBr_411564, 1
  br i1 %cmpBr_411564, label %block_.L_41158e, label %block_41156a

block_41156a:
  ; Code: movq $0x428b9a, %rsi	 RIP: 41156a	 Bytes: 10
  %loadMem_41156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41156a = call %struct.Memory* @routine_movq__0x428b9a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41156a)
  store %struct.Memory* %call_41156a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 411574	 Bytes: 4
  %loadMem_411574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411574 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411574)
  store %struct.Memory* %call_411574, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 411578	 Bytes: 4
  %loadMem_411578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411578 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411578)
  store %struct.Memory* %call_411578, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41157c	 Bytes: 3
  %loadMem_41157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41157c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41157c)
  store %struct.Memory* %call_41157c, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 41157f	 Bytes: 5
  %loadMem1_41157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41157f = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41157f, i64 -67471, i64 5, i64 5)
  store %struct.Memory* %call1_41157f, %struct.Memory** %MEMORY

  %loadMem2_41157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41157f = load i64, i64* %3
  %call2_41157f = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_41157f, %struct.Memory* %loadMem2_41157f)
  store %struct.Memory* %call2_41157f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 411584	 Bytes: 4
  %loadMem_411584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411584 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411584)
  store %struct.Memory* %call_411584, %struct.Memory** %MEMORY

  ; Code: jne .L_4115b8	 RIP: 411588	 Bytes: 6
  %loadMem_411588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411588 = call %struct.Memory* @routine_jne_.L_4115b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411588, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_411588, %struct.Memory** %MEMORY

  %loadBr_411588 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411588 = icmp eq i8 %loadBr_411588, 1
  br i1 %cmpBr_411588, label %block_.L_4115b8, label %block_.L_41158e

  ; Code: .L_41158e:	 RIP: 41158e	 Bytes: 0
block_.L_41158e:

  ; Code: movq $0x428b9f, %rsi	 RIP: 41158e	 Bytes: 10
  %loadMem_41158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41158e = call %struct.Memory* @routine_movq__0x428b9f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41158e)
  store %struct.Memory* %call_41158e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 411598	 Bytes: 5
  %loadMem_411598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411598 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411598)
  store %struct.Memory* %call_411598, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41159d	 Bytes: 2
  %loadMem_41159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41159d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41159d)
  store %struct.Memory* %call_41159d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41159f	 Bytes: 4
  %loadMem_41159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41159f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41159f)
  store %struct.Memory* %call_41159f, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4115a3	 Bytes: 4
  %loadMem_4115a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115a3 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115a3)
  store %struct.Memory* %call_4115a3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4115a7	 Bytes: 3
  %loadMem_4115a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115a7 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115a7)
  store %struct.Memory* %call_4115a7, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4115aa	 Bytes: 5
  %loadMem1_4115aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4115aa = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4115aa, i64 -67914, i64 5, i64 5)
  store %struct.Memory* %call1_4115aa, %struct.Memory** %MEMORY

  %loadMem2_4115aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4115aa = load i64, i64* %3
  %call2_4115aa = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4115aa, %struct.Memory* %loadMem2_4115aa)
  store %struct.Memory* %call2_4115aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4115af	 Bytes: 3
  %loadMem_4115af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115af = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115af)
  store %struct.Memory* %call_4115af, %struct.Memory** %MEMORY

  ; Code: jne .L_41161e	 RIP: 4115b2	 Bytes: 6
  %loadMem_4115b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115b2 = call %struct.Memory* @routine_jne_.L_41161e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115b2, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_4115b2, %struct.Memory** %MEMORY

  %loadBr_4115b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4115b2 = icmp eq i8 %loadBr_4115b2, 1
  br i1 %cmpBr_4115b2, label %block_.L_41161e, label %block_.L_4115b8

  ; Code: .L_4115b8:	 RIP: 4115b8	 Bytes: 0
block_.L_4115b8:

  ; Code: movq $0x428ba1, %rsi	 RIP: 4115b8	 Bytes: 10
  %loadMem_4115b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115b8 = call %struct.Memory* @routine_movq__0x428ba1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115b8)
  store %struct.Memory* %call_4115b8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4115c2	 Bytes: 4
  %loadMem_4115c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115c2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115c2)
  store %struct.Memory* %call_4115c2, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4115c6	 Bytes: 4
  %loadMem_4115c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115c6 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115c6)
  store %struct.Memory* %call_4115c6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4115ca	 Bytes: 3
  %loadMem_4115ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115ca = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115ca)
  store %struct.Memory* %call_4115ca, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4115cd	 Bytes: 5
  %loadMem1_4115cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4115cd = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4115cd, i64 -67549, i64 5, i64 5)
  store %struct.Memory* %call1_4115cd, %struct.Memory** %MEMORY

  %loadMem2_4115cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4115cd = load i64, i64* %3
  %call2_4115cd = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4115cd, %struct.Memory* %loadMem2_4115cd)
  store %struct.Memory* %call2_4115cd, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4115d2	 Bytes: 4
  %loadMem_4115d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115d2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115d2)
  store %struct.Memory* %call_4115d2, %struct.Memory** %MEMORY

  ; Code: jne .L_41161e	 RIP: 4115d6	 Bytes: 6
  %loadMem_4115d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115d6 = call %struct.Memory* @routine_jne_.L_41161e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115d6, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4115d6, %struct.Memory** %MEMORY

  %loadBr_4115d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4115d6 = icmp eq i8 %loadBr_4115d6, 1
  br i1 %cmpBr_4115d6, label %block_.L_41161e, label %block_4115dc

block_4115dc:
  ; Code: movq $0x428baa, %rdi	 RIP: 4115dc	 Bytes: 10
  %loadMem_4115dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115dc = call %struct.Memory* @routine_movq__0x428baa___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115dc)
  store %struct.Memory* %call_4115dc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4115e6	 Bytes: 2
  %loadMem_4115e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115e6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115e6)
  store %struct.Memory* %call_4115e6, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4115e8	 Bytes: 5
  %loadMem1_4115e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4115e8 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4115e8, i64 -67896, i64 5, i64 5)
  store %struct.Memory* %call1_4115e8, %struct.Memory** %MEMORY

  %loadMem2_4115e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4115e8 = load i64, i64* %3
  %call2_4115e8 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4115e8, %struct.Memory* %loadMem2_4115e8)
  store %struct.Memory* %call2_4115e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x110(%rbp)	 RIP: 4115ed	 Bytes: 6
  %loadMem_4115ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115ed = call %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115ed)
  store %struct.Memory* %call_4115ed, %struct.Memory** %MEMORY

  ; Code: callq .ResetHandValue	 RIP: 4115f3	 Bytes: 5
  %loadMem1_4115f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4115f3 = call %struct.Memory* @routine_callq_.ResetHandValue(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4115f3, i64 -5267, i64 5, i64 5)
  store %struct.Memory* %call1_4115f3, %struct.Memory** %MEMORY

  %loadMem2_4115f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4115f3 = load i64, i64* %3
  %call2_4115f3 = call %struct.Memory* @sub_410160.ResetHandValue(%struct.State* %0, i64  %loadPC_4115f3, %struct.Memory* %loadMem2_4115f3)
  store %struct.Memory* %call2_4115f3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 4115f8	 Bytes: 11
  %loadMem_4115f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4115f8 = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4115f8)
  store %struct.Memory* %call_4115f8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd78	 RIP: 411603	 Bytes: 11
  %loadMem_411603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411603 = call %struct.Memory* @routine_movl__0x0__0x86bd78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411603)
  store %struct.Memory* %call_411603, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd74	 RIP: 41160e	 Bytes: 11
  %loadMem_41160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41160e = call %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41160e)
  store %struct.Memory* %call_41160e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411842	 RIP: 411619	 Bytes: 5
  %loadMem_411619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411619 = call %struct.Memory* @routine_jmpq_.L_411842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411619, i64 553, i64 5)
  store %struct.Memory* %call_411619, %struct.Memory** %MEMORY

  br label %block_.L_411842

  ; Code: .L_41161e:	 RIP: 41161e	 Bytes: 0
block_.L_41161e:

  ; Code: movq $0x428be1, %rsi	 RIP: 41161e	 Bytes: 10
  %loadMem_41161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41161e = call %struct.Memory* @routine_movq__0x428be1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41161e)
  store %struct.Memory* %call_41161e, %struct.Memory** %MEMORY

  ; Code: movl $0x19, %eax	 RIP: 411628	 Bytes: 5
  %loadMem_411628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411628 = call %struct.Memory* @routine_movl__0x19___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411628)
  store %struct.Memory* %call_411628, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41162d	 Bytes: 2
  %loadMem_41162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41162d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41162d)
  store %struct.Memory* %call_41162d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41162f	 Bytes: 4
  %loadMem_41162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41162f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41162f)
  store %struct.Memory* %call_41162f, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 411633	 Bytes: 4
  %loadMem_411633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411633 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411633)
  store %struct.Memory* %call_411633, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411637	 Bytes: 3
  %loadMem_411637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411637 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411637)
  store %struct.Memory* %call_411637, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41163a	 Bytes: 5
  %loadMem1_41163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41163a = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41163a, i64 -68058, i64 5, i64 5)
  store %struct.Memory* %call1_41163a, %struct.Memory** %MEMORY

  %loadMem2_41163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41163a = load i64, i64* %3
  %call2_41163a = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41163a, %struct.Memory* %loadMem2_41163a)
  store %struct.Memory* %call2_41163a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41163f	 Bytes: 3
  %loadMem_41163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41163f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41163f)
  store %struct.Memory* %call_41163f, %struct.Memory** %MEMORY

  ; Code: je .L_411672	 RIP: 411642	 Bytes: 6
  %loadMem_411642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411642 = call %struct.Memory* @routine_je_.L_411672(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411642, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_411642, %struct.Memory** %MEMORY

  %loadBr_411642 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411642 = icmp eq i8 %loadBr_411642, 1
  br i1 %cmpBr_411642, label %block_.L_411672, label %block_411648

block_411648:
  ; Code: movq $0x428bfb, %rsi	 RIP: 411648	 Bytes: 10
  %loadMem_411648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411648 = call %struct.Memory* @routine_movq__0x428bfb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411648)
  store %struct.Memory* %call_411648, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 411652	 Bytes: 5
  %loadMem_411652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411652 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411652)
  store %struct.Memory* %call_411652, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 411657	 Bytes: 2
  %loadMem_411657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411657 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411657)
  store %struct.Memory* %call_411657, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 411659	 Bytes: 4
  %loadMem_411659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411659 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411659)
  store %struct.Memory* %call_411659, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41165d	 Bytes: 4
  %loadMem_41165d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41165d = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41165d)
  store %struct.Memory* %call_41165d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411661	 Bytes: 3
  %loadMem_411661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411661 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411661)
  store %struct.Memory* %call_411661, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 411664	 Bytes: 5
  %loadMem1_411664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411664 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411664, i64 -68100, i64 5, i64 5)
  store %struct.Memory* %call1_411664, %struct.Memory** %MEMORY

  %loadMem2_411664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411664 = load i64, i64* %3
  %call2_411664 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_411664, %struct.Memory* %loadMem2_411664)
  store %struct.Memory* %call2_411664, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411669	 Bytes: 3
  %loadMem_411669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411669 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411669)
  store %struct.Memory* %call_411669, %struct.Memory** %MEMORY

  ; Code: jne .L_411698	 RIP: 41166c	 Bytes: 6
  %loadMem_41166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41166c = call %struct.Memory* @routine_jne_.L_411698(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41166c, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_41166c, %struct.Memory** %MEMORY

  %loadBr_41166c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41166c = icmp eq i8 %loadBr_41166c, 1
  br i1 %cmpBr_41166c, label %block_.L_411698, label %block_.L_411672

  ; Code: .L_411672:	 RIP: 411672	 Bytes: 0
block_.L_411672:

  ; Code: movl $0x1, 0x886a60	 RIP: 411672	 Bytes: 11
  %loadMem_411672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411672 = call %struct.Memory* @routine_movl__0x1__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411672)
  store %struct.Memory* %call_411672, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 41167d	 Bytes: 11
  %loadMem_41167d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41167d = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41167d)
  store %struct.Memory* %call_41167d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x86bd78	 RIP: 411688	 Bytes: 11
  %loadMem_411688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411688 = call %struct.Memory* @routine_movl__0x1__0x86bd78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411688)
  store %struct.Memory* %call_411688, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41183d	 RIP: 411693	 Bytes: 5
  %loadMem_411693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411693 = call %struct.Memory* @routine_jmpq_.L_41183d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411693, i64 426, i64 5)
  store %struct.Memory* %call_411693, %struct.Memory** %MEMORY

  br label %block_.L_41183d

  ; Code: .L_411698:	 RIP: 411698	 Bytes: 0
block_.L_411698:

  ; Code: movq $0x428c00, %rsi	 RIP: 411698	 Bytes: 10
  %loadMem_411698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411698 = call %struct.Memory* @routine_movq__0x428c00___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411698)
  store %struct.Memory* %call_411698, %struct.Memory** %MEMORY

  ; Code: movl $0x1a, %eax	 RIP: 4116a2	 Bytes: 5
  %loadMem_4116a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116a2 = call %struct.Memory* @routine_movl__0x1a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116a2)
  store %struct.Memory* %call_4116a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4116a7	 Bytes: 2
  %loadMem_4116a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116a7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116a7)
  store %struct.Memory* %call_4116a7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4116a9	 Bytes: 4
  %loadMem_4116a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116a9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116a9)
  store %struct.Memory* %call_4116a9, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4116ad	 Bytes: 4
  %loadMem_4116ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116ad = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116ad)
  store %struct.Memory* %call_4116ad, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4116b1	 Bytes: 3
  %loadMem_4116b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116b1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116b1)
  store %struct.Memory* %call_4116b1, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4116b4	 Bytes: 5
  %loadMem1_4116b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4116b4 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4116b4, i64 -68180, i64 5, i64 5)
  store %struct.Memory* %call1_4116b4, %struct.Memory** %MEMORY

  %loadMem2_4116b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4116b4 = load i64, i64* %3
  %call2_4116b4 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4116b4, %struct.Memory* %loadMem2_4116b4)
  store %struct.Memory* %call2_4116b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4116b9	 Bytes: 3
  %loadMem_4116b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116b9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116b9)
  store %struct.Memory* %call_4116b9, %struct.Memory** %MEMORY

  ; Code: jne .L_4116e8	 RIP: 4116bc	 Bytes: 6
  %loadMem_4116bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116bc = call %struct.Memory* @routine_jne_.L_4116e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116bc, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4116bc, %struct.Memory** %MEMORY

  %loadBr_4116bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4116bc = icmp eq i8 %loadBr_4116bc, 1
  br i1 %cmpBr_4116bc, label %block_.L_4116e8, label %block_4116c2

block_4116c2:
  ; Code: movl $0x1, 0x886a60	 RIP: 4116c2	 Bytes: 11
  %loadMem_4116c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116c2 = call %struct.Memory* @routine_movl__0x1__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116c2)
  store %struct.Memory* %call_4116c2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd90	 RIP: 4116cd	 Bytes: 11
  %loadMem_4116cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116cd = call %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116cd)
  store %struct.Memory* %call_4116cd, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x86bd74	 RIP: 4116d8	 Bytes: 11
  %loadMem_4116d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116d8 = call %struct.Memory* @routine_movl__0x1__0x86bd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116d8)
  store %struct.Memory* %call_4116d8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411838	 RIP: 4116e3	 Bytes: 5
  %loadMem_4116e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116e3 = call %struct.Memory* @routine_jmpq_.L_411838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116e3, i64 341, i64 5)
  store %struct.Memory* %call_4116e3, %struct.Memory** %MEMORY

  br label %block_.L_411838

  ; Code: .L_4116e8:	 RIP: 4116e8	 Bytes: 0
block_.L_4116e8:

  ; Code: movq $0x428810, %rsi	 RIP: 4116e8	 Bytes: 10
  %loadMem_4116e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116e8 = call %struct.Memory* @routine_movq__0x428810___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116e8)
  store %struct.Memory* %call_4116e8, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 4116f2	 Bytes: 5
  %loadMem_4116f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116f2 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116f2)
  store %struct.Memory* %call_4116f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4116f7	 Bytes: 2
  %loadMem_4116f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116f7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116f7)
  store %struct.Memory* %call_4116f7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4116f9	 Bytes: 4
  %loadMem_4116f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116f9)
  store %struct.Memory* %call_4116f9, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 4116fd	 Bytes: 4
  %loadMem_4116fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4116fd = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4116fd)
  store %struct.Memory* %call_4116fd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411701	 Bytes: 3
  %loadMem_411701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411701 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411701)
  store %struct.Memory* %call_411701, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 411704	 Bytes: 5
  %loadMem1_411704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411704 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411704, i64 -68260, i64 5, i64 5)
  store %struct.Memory* %call1_411704, %struct.Memory** %MEMORY

  %loadMem2_411704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411704 = load i64, i64* %3
  %call2_411704 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_411704, %struct.Memory* %loadMem2_411704)
  store %struct.Memory* %call2_411704, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411709	 Bytes: 3
  %loadMem_411709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411709 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411709)
  store %struct.Memory* %call_411709, %struct.Memory** %MEMORY

  ; Code: jne .L_411717	 RIP: 41170c	 Bytes: 6
  %loadMem_41170c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41170c = call %struct.Memory* @routine_jne_.L_411717(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41170c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41170c, %struct.Memory** %MEMORY

  %loadBr_41170c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41170c = icmp eq i8 %loadBr_41170c, 1
  br i1 %cmpBr_41170c, label %block_.L_411717, label %block_411712

block_411712:
  ; Code: jmpq .L_41186f	 RIP: 411712	 Bytes: 5
  %loadMem_411712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411712 = call %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411712, i64 349, i64 5)
  store %struct.Memory* %call_411712, %struct.Memory** %MEMORY

  br label %block_.L_41186f

  ; Code: .L_411717:	 RIP: 411717	 Bytes: 0
block_.L_411717:

  ; Code: movq $0x428c1b, %rsi	 RIP: 411717	 Bytes: 10
  %loadMem_411717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411717 = call %struct.Memory* @routine_movq__0x428c1b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411717)
  store %struct.Memory* %call_411717, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 411721	 Bytes: 5
  %loadMem_411721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411721 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411721)
  store %struct.Memory* %call_411721, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 411726	 Bytes: 2
  %loadMem_411726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411726 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411726)
  store %struct.Memory* %call_411726, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 411728	 Bytes: 4
  %loadMem_411728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411728 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411728)
  store %struct.Memory* %call_411728, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41172c	 Bytes: 4
  %loadMem_41172c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41172c = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41172c)
  store %struct.Memory* %call_41172c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411730	 Bytes: 3
  %loadMem_411730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411730 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411730)
  store %struct.Memory* %call_411730, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 411733	 Bytes: 5
  %loadMem1_411733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411733 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411733, i64 -68307, i64 5, i64 5)
  store %struct.Memory* %call1_411733, %struct.Memory** %MEMORY

  %loadMem2_411733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411733 = load i64, i64* %3
  %call2_411733 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_411733, %struct.Memory* %loadMem2_411733)
  store %struct.Memory* %call2_411733, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411738	 Bytes: 3
  %loadMem_411738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411738 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411738)
  store %struct.Memory* %call_411738, %struct.Memory** %MEMORY

  ; Code: jne .L_411746	 RIP: 41173b	 Bytes: 6
  %loadMem_41173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41173b = call %struct.Memory* @routine_jne_.L_411746(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41173b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41173b, %struct.Memory** %MEMORY

  %loadBr_41173b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41173b = icmp eq i8 %loadBr_41173b, 1
  br i1 %cmpBr_41173b, label %block_.L_411746, label %block_411741

block_411741:
  ; Code: jmpq .L_41186f	 RIP: 411741	 Bytes: 5
  %loadMem_411741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411741 = call %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411741, i64 302, i64 5)
  store %struct.Memory* %call_411741, %struct.Memory** %MEMORY

  br label %block_.L_41186f

  ; Code: .L_411746:	 RIP: 411746	 Bytes: 0
block_.L_411746:

  ; Code: movq $0x428c1e, %rsi	 RIP: 411746	 Bytes: 10
  %loadMem_411746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411746 = call %struct.Memory* @routine_movq__0x428c1e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411746)
  store %struct.Memory* %call_411746, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 411750	 Bytes: 5
  %loadMem_411750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411750 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411750)
  store %struct.Memory* %call_411750, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 411755	 Bytes: 2
  %loadMem_411755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411755 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411755)
  store %struct.Memory* %call_411755, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 411757	 Bytes: 4
  %loadMem_411757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411757 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411757)
  store %struct.Memory* %call_411757, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 41175b	 Bytes: 4
  %loadMem_41175b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41175b = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41175b)
  store %struct.Memory* %call_41175b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41175f	 Bytes: 3
  %loadMem_41175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41175f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41175f)
  store %struct.Memory* %call_41175f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 411762	 Bytes: 5
  %loadMem1_411762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411762 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411762, i64 -68354, i64 5, i64 5)
  store %struct.Memory* %call1_411762, %struct.Memory** %MEMORY

  %loadMem2_411762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411762 = load i64, i64* %3
  %call2_411762 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_411762, %struct.Memory* %loadMem2_411762)
  store %struct.Memory* %call2_411762, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411767	 Bytes: 3
  %loadMem_411767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411767 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411767)
  store %struct.Memory* %call_411767, %struct.Memory** %MEMORY

  ; Code: je .L_41179a	 RIP: 41176a	 Bytes: 6
  %loadMem_41176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41176a = call %struct.Memory* @routine_je_.L_41179a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41176a, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41176a, %struct.Memory** %MEMORY

  %loadBr_41176a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41176a = icmp eq i8 %loadBr_41176a, 1
  br i1 %cmpBr_41176a, label %block_.L_41179a, label %block_411770

block_411770:
  ; Code: movq $0x428c21, %rsi	 RIP: 411770	 Bytes: 10
  %loadMem_411770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411770 = call %struct.Memory* @routine_movq__0x428c21___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411770)
  store %struct.Memory* %call_411770, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 41177a	 Bytes: 5
  %loadMem_41177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41177a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41177a)
  store %struct.Memory* %call_41177a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41177f	 Bytes: 2
  %loadMem_41177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41177f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41177f)
  store %struct.Memory* %call_41177f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 411781	 Bytes: 4
  %loadMem_411781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411781 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411781)
  store %struct.Memory* %call_411781, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rcx	 RIP: 411785	 Bytes: 4
  %loadMem_411785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411785 = call %struct.Memory* @routine_addq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411785)
  store %struct.Memory* %call_411785, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 411789	 Bytes: 3
  %loadMem_411789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411789 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411789)
  store %struct.Memory* %call_411789, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41178c	 Bytes: 5
  %loadMem1_41178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41178c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41178c, i64 -68396, i64 5, i64 5)
  store %struct.Memory* %call1_41178c, %struct.Memory** %MEMORY

  %loadMem2_41178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41178c = load i64, i64* %3
  %call2_41178c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41178c, %struct.Memory* %loadMem2_41178c)
  store %struct.Memory* %call2_41178c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 411791	 Bytes: 3
  %loadMem_411791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411791 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411791)
  store %struct.Memory* %call_411791, %struct.Memory** %MEMORY

  ; Code: jne .L_4117b6	 RIP: 411794	 Bytes: 6
  %loadMem_411794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411794 = call %struct.Memory* @routine_jne_.L_4117b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411794, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_411794, %struct.Memory** %MEMORY

  %loadBr_411794 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411794 = icmp eq i8 %loadBr_411794, 1
  br i1 %cmpBr_411794, label %block_.L_4117b6, label %block_.L_41179a

  ; Code: .L_41179a:	 RIP: 41179a	 Bytes: 0
block_.L_41179a:

  ; Code: movq $0x428c27, %rdi	 RIP: 41179a	 Bytes: 10
  %loadMem_41179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41179a = call %struct.Memory* @routine_movq__0x428c27___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41179a)
  store %struct.Memory* %call_41179a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4117a4	 Bytes: 2
  %loadMem_4117a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117a4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117a4)
  store %struct.Memory* %call_4117a4, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4117a6	 Bytes: 5
  %loadMem1_4117a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4117a6 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4117a6, i64 -68342, i64 5, i64 5)
  store %struct.Memory* %call1_4117a6, %struct.Memory** %MEMORY

  %loadMem2_4117a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4117a6 = load i64, i64* %3
  %call2_4117a6 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4117a6, %struct.Memory* %loadMem2_4117a6)
  store %struct.Memory* %call2_4117a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x114(%rbp)	 RIP: 4117ab	 Bytes: 6
  %loadMem_4117ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117ab = call %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117ab)
  store %struct.Memory* %call_4117ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411829	 RIP: 4117b1	 Bytes: 5
  %loadMem_4117b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117b1 = call %struct.Memory* @routine_jmpq_.L_411829(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117b1, i64 120, i64 5)
  store %struct.Memory* %call_4117b1, %struct.Memory** %MEMORY

  br label %block_.L_411829

  ; Code: .L_4117b6:	 RIP: 4117b6	 Bytes: 0
block_.L_4117b6:

  ; Code: movq $0x428c41, %rsi	 RIP: 4117b6	 Bytes: 10
  %loadMem_4117b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117b6 = call %struct.Memory* @routine_movq__0x428c41___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117b6)
  store %struct.Memory* %call_4117b6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4117c0	 Bytes: 4
  %loadMem_4117c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117c0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117c0)
  store %struct.Memory* %call_4117c0, %struct.Memory** %MEMORY

  ; Code: addq $0x6, %rax	 RIP: 4117c4	 Bytes: 4
  %loadMem_4117c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117c4 = call %struct.Memory* @routine_addq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117c4)
  store %struct.Memory* %call_4117c4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4117c8	 Bytes: 3
  %loadMem_4117c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117c8 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117c8)
  store %struct.Memory* %call_4117c8, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4117cb	 Bytes: 5
  %loadMem1_4117cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4117cb = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4117cb, i64 -68059, i64 5, i64 5)
  store %struct.Memory* %call1_4117cb, %struct.Memory** %MEMORY

  %loadMem2_4117cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4117cb = load i64, i64* %3
  %call2_4117cb = call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* %0, i64  %loadPC_4117cb, %struct.Memory* %loadMem2_4117cb)
  store %struct.Memory* %call2_4117cb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4117d0	 Bytes: 4
  %loadMem_4117d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117d0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117d0)
  store %struct.Memory* %call_4117d0, %struct.Memory** %MEMORY

  ; Code: je .L_41180d	 RIP: 4117d4	 Bytes: 6
  %loadMem_4117d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117d4 = call %struct.Memory* @routine_je_.L_41180d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117d4, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4117d4, %struct.Memory** %MEMORY

  %loadBr_4117d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4117d4 = icmp eq i8 %loadBr_4117d4, 1
  br i1 %cmpBr_4117d4, label %block_.L_41180d, label %block_4117da

block_4117da:
  ; Code: movq $0x428c49, %rdi	 RIP: 4117da	 Bytes: 10
  %loadMem_4117da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117da = call %struct.Memory* @routine_movq__0x428c49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117da)
  store %struct.Memory* %call_4117da, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4117e4	 Bytes: 2
  %loadMem_4117e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117e4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117e4)
  store %struct.Memory* %call_4117e4, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4117e6	 Bytes: 5
  %loadMem1_4117e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4117e6 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4117e6, i64 -68406, i64 5, i64 5)
  store %struct.Memory* %call1_4117e6, %struct.Memory** %MEMORY

  %loadMem2_4117e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4117e6 = load i64, i64* %3
  %call2_4117e6 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4117e6, %struct.Memory* %loadMem2_4117e6)
  store %struct.Memory* %call2_4117e6, %struct.Memory** %MEMORY

  ; Code: movq $0x42873b, %rdi	 RIP: 4117eb	 Bytes: 10
  %loadMem_4117eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117eb = call %struct.Memory* @routine_movq__0x42873b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117eb)
  store %struct.Memory* %call_4117eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x118(%rbp)	 RIP: 4117f5	 Bytes: 6
  %loadMem_4117f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117f5 = call %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117f5)
  store %struct.Memory* %call_4117f5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4117fb	 Bytes: 2
  %loadMem_4117fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4117fb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4117fb)
  store %struct.Memory* %call_4117fb, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4117fd	 Bytes: 5
  %loadMem1_4117fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4117fd = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4117fd, i64 -68429, i64 5, i64 5)
  store %struct.Memory* %call1_4117fd, %struct.Memory** %MEMORY

  %loadMem2_4117fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4117fd = load i64, i64* %3
  %call2_4117fd = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4117fd, %struct.Memory* %loadMem2_4117fd)
  store %struct.Memory* %call2_4117fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 411802	 Bytes: 6
  %loadMem_411802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411802 = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411802)
  store %struct.Memory* %call_411802, %struct.Memory** %MEMORY

  ; Code: jmpq .L_411824	 RIP: 411808	 Bytes: 5
  %loadMem_411808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411808 = call %struct.Memory* @routine_jmpq_.L_411824(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411808, i64 28, i64 5)
  store %struct.Memory* %call_411808, %struct.Memory** %MEMORY

  br label %block_.L_411824

  ; Code: .L_41180d:	 RIP: 41180d	 Bytes: 0
block_.L_41180d:

  ; Code: movq $0x428ca0, %rdi	 RIP: 41180d	 Bytes: 10
  %loadMem_41180d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41180d = call %struct.Memory* @routine_movq__0x428ca0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41180d)
  store %struct.Memory* %call_41180d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 411817	 Bytes: 2
  %loadMem_411817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411817 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411817)
  store %struct.Memory* %call_411817, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 411819	 Bytes: 5
  %loadMem1_411819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_411819 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_411819, i64 -68457, i64 5, i64 5)
  store %struct.Memory* %call1_411819, %struct.Memory** %MEMORY

  %loadMem2_411819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411819 = load i64, i64* %3
  %call2_411819 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_411819, %struct.Memory* %loadMem2_411819)
  store %struct.Memory* %call2_411819, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x120(%rbp)	 RIP: 41181e	 Bytes: 6
  %loadMem_41181e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41181e = call %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41181e)
  store %struct.Memory* %call_41181e, %struct.Memory** %MEMORY

  ; Code: .L_411824:	 RIP: 411824	 Bytes: 0
  br label %block_.L_411824
block_.L_411824:

  ; Code: jmpq .L_411829	 RIP: 411824	 Bytes: 5
  %loadMem_411824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411824 = call %struct.Memory* @routine_jmpq_.L_411829(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411824, i64 5, i64 5)
  store %struct.Memory* %call_411824, %struct.Memory** %MEMORY

  br label %block_.L_411829

  ; Code: .L_411829:	 RIP: 411829	 Bytes: 0
block_.L_411829:

  ; Code: jmpq .L_41182e	 RIP: 411829	 Bytes: 5
  %loadMem_411829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411829 = call %struct.Memory* @routine_jmpq_.L_41182e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411829, i64 5, i64 5)
  store %struct.Memory* %call_411829, %struct.Memory** %MEMORY

  br label %block_.L_41182e

  ; Code: .L_41182e:	 RIP: 41182e	 Bytes: 0
block_.L_41182e:

  ; Code: jmpq .L_411833	 RIP: 41182e	 Bytes: 5
  %loadMem_41182e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41182e = call %struct.Memory* @routine_jmpq_.L_411833(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41182e, i64 5, i64 5)
  store %struct.Memory* %call_41182e, %struct.Memory** %MEMORY

  br label %block_.L_411833

  ; Code: .L_411833:	 RIP: 411833	 Bytes: 0
block_.L_411833:

  ; Code: jmpq .L_411838	 RIP: 411833	 Bytes: 5
  %loadMem_411833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411833 = call %struct.Memory* @routine_jmpq_.L_411838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411833, i64 5, i64 5)
  store %struct.Memory* %call_411833, %struct.Memory** %MEMORY

  br label %block_.L_411838

  ; Code: .L_411838:	 RIP: 411838	 Bytes: 0
block_.L_411838:

  ; Code: jmpq .L_41183d	 RIP: 411838	 Bytes: 5
  %loadMem_411838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411838 = call %struct.Memory* @routine_jmpq_.L_41183d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411838, i64 5, i64 5)
  store %struct.Memory* %call_411838, %struct.Memory** %MEMORY

  br label %block_.L_41183d

  ; Code: .L_41183d:	 RIP: 41183d	 Bytes: 0
block_.L_41183d:

  ; Code: jmpq .L_411842	 RIP: 41183d	 Bytes: 5
  %loadMem_41183d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41183d = call %struct.Memory* @routine_jmpq_.L_411842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41183d, i64 5, i64 5)
  store %struct.Memory* %call_41183d, %struct.Memory** %MEMORY

  br label %block_.L_411842

  ; Code: .L_411842:	 RIP: 411842	 Bytes: 0
block_.L_411842:

  ; Code: jmpq .L_411847	 RIP: 411842	 Bytes: 5
  %loadMem_411842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411842 = call %struct.Memory* @routine_jmpq_.L_411847(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411842, i64 5, i64 5)
  store %struct.Memory* %call_411842, %struct.Memory** %MEMORY

  br label %block_.L_411847

  ; Code: .L_411847:	 RIP: 411847	 Bytes: 0
block_.L_411847:

  ; Code: jmpq .L_41184c	 RIP: 411847	 Bytes: 5
  %loadMem_411847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411847 = call %struct.Memory* @routine_jmpq_.L_41184c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411847, i64 5, i64 5)
  store %struct.Memory* %call_411847, %struct.Memory** %MEMORY

  br label %block_.L_41184c

  ; Code: .L_41184c:	 RIP: 41184c	 Bytes: 0
block_.L_41184c:

  ; Code: jmpq .L_411851	 RIP: 41184c	 Bytes: 5
  %loadMem_41184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41184c = call %struct.Memory* @routine_jmpq_.L_411851(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41184c, i64 5, i64 5)
  store %struct.Memory* %call_41184c, %struct.Memory** %MEMORY

  br label %block_.L_411851

  ; Code: .L_411851:	 RIP: 411851	 Bytes: 0
block_.L_411851:

  ; Code: jmpq .L_411856	 RIP: 411851	 Bytes: 5
  %loadMem_411851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411851 = call %struct.Memory* @routine_jmpq_.L_411856(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411851, i64 5, i64 5)
  store %struct.Memory* %call_411851, %struct.Memory** %MEMORY

  br label %block_.L_411856

  ; Code: .L_411856:	 RIP: 411856	 Bytes: 0
block_.L_411856:

  ; Code: jmpq .L_41185b	 RIP: 411856	 Bytes: 5
  %loadMem_411856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411856 = call %struct.Memory* @routine_jmpq_.L_41185b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411856, i64 5, i64 5)
  store %struct.Memory* %call_411856, %struct.Memory** %MEMORY

  br label %block_.L_41185b

  ; Code: .L_41185b:	 RIP: 41185b	 Bytes: 0
block_.L_41185b:

  ; Code: jmpq .L_411860	 RIP: 41185b	 Bytes: 5
  %loadMem_41185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41185b = call %struct.Memory* @routine_jmpq_.L_411860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41185b, i64 5, i64 5)
  store %struct.Memory* %call_41185b, %struct.Memory** %MEMORY

  br label %block_.L_411860

  ; Code: .L_411860:	 RIP: 411860	 Bytes: 0
block_.L_411860:

  ; Code: jmpq .L_411865	 RIP: 411860	 Bytes: 5
  %loadMem_411860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411860 = call %struct.Memory* @routine_jmpq_.L_411865(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411860, i64 5, i64 5)
  store %struct.Memory* %call_411860, %struct.Memory** %MEMORY

  br label %block_.L_411865

  ; Code: .L_411865:	 RIP: 411865	 Bytes: 0
block_.L_411865:

  ; Code: jmpq .L_41186a	 RIP: 411865	 Bytes: 5
  %loadMem_411865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411865 = call %struct.Memory* @routine_jmpq_.L_41186a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411865, i64 5, i64 5)
  store %struct.Memory* %call_411865, %struct.Memory** %MEMORY

  br label %block_.L_41186a

  ; Code: .L_41186a:	 RIP: 41186a	 Bytes: 0
block_.L_41186a:

  ; Code: jmpq .L_41186f	 RIP: 41186a	 Bytes: 5
  %loadMem_41186a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41186a = call %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41186a, i64 5, i64 5)
  store %struct.Memory* %call_41186a, %struct.Memory** %MEMORY

  br label %block_.L_41186f

  ; Code: .L_41186f:	 RIP: 41186f	 Bytes: 0
block_.L_41186f:

  ; Code: addq $0x120, %rsp	 RIP: 41186f	 Bytes: 7
  %loadMem_41186f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41186f = call %struct.Memory* @routine_addq__0x120___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41186f)
  store %struct.Memory* %call_41186f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 411876	 Bytes: 1
  %loadMem_411876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411876 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411876)
  store %struct.Memory* %call_411876, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 411877	 Bytes: 1
  %loadMem_411877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_411877 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_411877)
  store %struct.Memory* %call_411877, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_411877
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

define %struct.Memory* @routine_subq__0x120___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 288)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x428778___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428778_type* @G__0x428778 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__0x427d10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x427d10_type* @G__0x427d10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 80)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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


define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x6___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_41035d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x42877d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42877d_type* @G__0x42877d to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41186f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_je_.L_4103ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428810___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428810_type* @G__0x428810 to i64))
  ret %struct.Memory* %11
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
















define %struct.Memory* @routine_movq__0x428816___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428816_type* @G__0x428816 to i64))
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




define %struct.Memory* @routine_movq__0x428851___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428851_type* @G__0x428851 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jne_.L_410407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428855___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428855_type* @G__0x428855 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd90_type* @G_0x86bd90 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86bd60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd60_type* @G_0x86bd60 to i64), i64 0)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jmpq_.L_41186a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x42888d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x42888d_type* @G__0x42888d to i64))
  ret %struct.Memory* %11
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














define %struct.Memory* @routine_je_.L_41045b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4294da___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4294da_type* @G__0x4294da to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_41048a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428890___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428890_type* @G__0x428890 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd90_type* @G_0x86bd90 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x4__0x86bd60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd60_type* @G_0x86bd60 to i64), i64 4)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jmpq_.L_411865(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4288af___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4288af_type* @G__0x4288af to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_je_.L_4104de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4288b4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4288b4_type* @G__0x4288b4 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_410510(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4288b9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4288b9_type* @G__0x4288b9 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x1__0x886a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a60_type* @G_0x886a60 to i64), i64 1)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jmpq_.L_411860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4288dc___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4288dc_type* @G__0x4288dc to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_41056c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4288e1___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4288e1_type* @G__0x4288e1 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a60_type* @G_0x886a60 to i64), i64 0)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jmpq_.L_41185b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428905___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428905_type* @G__0x428905 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_4105c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x42890b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42890b_type* @G__0x42890b to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x42892e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42892e_type* @G__0x42892e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411856(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x42893d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x42893d_type* @G__0x42893d to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_410626(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428942___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428942_type* @G__0x428942 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x42895d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42895d_type* @G__0x42895d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411851(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428998___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428998_type* @G__0x428998 to i64))
  ret %struct.Memory* %11
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














define %struct.Memory* @routine_jne_.L_410d8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x42896b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x42896b_type* @G__0x42896b to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_addq__0x6___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
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


define %struct.Memory* @routine_callq_.strstr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_410770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b31_type* @G__0x429b31 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_410849(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b45_type* @G__0x429b45 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x42877b_type* @G__0x42877b to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b3b_type* @G__0x429b3b to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429b59_type* @G__0x429b59 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x429aeb_type* @G__0x429aeb to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x428971___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428971_type* @G__0x428971 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886b84_type* @G_0x886b84 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4107d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x62d784___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d784_type* @G_0x62d784 to i64))
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

define %struct.Memory* @routine_addl__0x19___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 25)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d784(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d784_type* @G_0x62d784 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d78c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d78c_type* @G_0x62d78c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x32___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 50)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d78c_type* @G_0x62d78c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d7ac___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7ac_type* @G_0x62d7ac to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d7ac_type* @G_0x62d7ac to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d79c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d79c_type* @G_0x62d79c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d79c_type* @G_0x62d79c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d7a4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7a4_type* @G_0x62d7a4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x64___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 100)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d7a4_type* @G_0x62d7a4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41082d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d788___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d788_type* @G_0x62d788 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subl__0x19___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 25)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d788(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d788_type* @G_0x62d788 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d790___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d790_type* @G_0x62d790 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__0x32___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 50)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d790_type* @G_0x62d790 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d7b0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7b0_type* @G_0x62d7b0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d7b0_type* @G_0x62d7b0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d7a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7a0_type* @G_0x62d7a0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d7a0_type* @G_0x62d7a0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x62d7a8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7a8_type* @G_0x62d7a8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__0x64___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 100)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62d7a8_type* @G_0x62d7a8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x428973___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428973_type* @G__0x428973 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_410937(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428996___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428996_type* @G__0x428996 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_410890(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xc350__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x42899a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x42899a_type* @G__0x42899a to i64))
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


define %struct.Memory* @routine_jmpq_.L_410932(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428997___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428997_type* @G__0x428997 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_4108d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x3e8__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x4289a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4289a0_type* @G__0x4289a0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_41092d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_41091e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x96__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 150)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x4289d1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4289d1_type* @G__0x4289d1 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_410928(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_je_.L_4109ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41097f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62d7cc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7cc_type* @G_0x62d7cc to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_410990(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d7d0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7d0_type* @G_0x62d7d0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x4289fd___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4289fd_type* @G__0x4289fd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410a54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4109f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7ec_type* @G_0x62d7ec to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jmpq_.L_410a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7f0_type* @G_0x62d7f0 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_410a28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7e4_type* @G_0x62d7e4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jmpq_.L_410a39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7e8_type* @G_0x62d7e8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x428a1a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428a1a_type* @G__0x428a1a to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410afd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_410a9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7dc_type* @G_0x62d7dc to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jmpq_.L_410aad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7e0_type* @G_0x62d7e0 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_410ad1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_410ae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movq__0x428a37___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428a37_type* @G__0x428a37 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410b71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_410b45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_410b56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movq__0x428a52___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428a52_type* @G__0x428a52 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410c3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_410bb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7c4_type* @G_0x62d7c4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jmpq_.L_410bca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62d7c8_type* @G_0x62d7c8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_410bff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_410c21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movq__0x428a6e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428a6e_type* @G__0x428a6e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410cf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_410ca6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_410cd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_movq__0x428a89___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428a89_type* @G__0x428a89 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_410d8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_410d4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_410d6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movq__0x428aa8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428aa8_type* @G__0x428aa8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41184c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428ae8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428ae8_type* @G__0x428ae8 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_4114f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410ed9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410fb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























































































define %struct.Memory* @routine_jne_.L_410f41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}




























define %struct.Memory* @routine_jmpq_.L_410f96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}




























define %struct.Memory* @routine_movq__0x428ac4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428ac4_type* @G__0x428ac4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4110a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428ae6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428ae6_type* @G__0x428ae6 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_410ff9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x428aea___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x428aea_type* @G__0x428aea to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_41109b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428ae7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428ae7_type* @G__0x428ae7 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_411040(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x428b1f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x428b1f_type* @G__0x428b1f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_411096(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_je_.L_411087(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x428b53___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x428b53_type* @G__0x428b53 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_411091(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_je_.L_411114(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4110e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4110f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_4111bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41115c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_41116d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jne_.L_411191(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4111a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_411266(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_411205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_411216(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jne_.L_41123a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_41124b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_4112da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4112ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4112bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_4113a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_411322(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_411333(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jne_.L_411368(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_41138a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_41145d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41140f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_411442(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_je_.L_4114f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4114b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_4114d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411847(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428b82___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428b82_type* @G__0x428b82 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_je_.L_4115b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428b84___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428b84_type* @G__0x428b84 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4115b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428b94___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428b94_type* @G__0x428b94 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_41158e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428b9a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428b9a_type* @G__0x428b9a to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x428b9f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428b9f_type* @G__0x428b9f to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_41161e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428ba1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428ba1_type* @G__0x428ba1 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x428baa___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428baa_type* @G__0x428baa to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.ResetHandValue(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x86bd78(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd78_type* @G_0x86bd78 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd74_type* @G_0x86bd74 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_411842(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428be1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428be1_type* @G__0x428be1 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x19___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 25)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_je_.L_411672(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428bfb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428bfb_type* @G__0x428bfb to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_411698(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__0x86bd78(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd78_type* @G_0x86bd78 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41183d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428c00___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428c00_type* @G__0x428c00 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 26)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jne_.L_4116e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__0x86bd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd74_type* @G_0x86bd74 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_411838(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jne_.L_411717(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x428c1b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428c1b_type* @G__0x428c1b to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_411746(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x428c1e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428c1e_type* @G__0x428c1e to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_je_.L_41179a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428c21___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428c21_type* @G__0x428c21 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jne_.L_4117b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428c27___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428c27_type* @G__0x428c27 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411829(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428c41___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x428c41_type* @G__0x428c41 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_je_.L_41180d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x428c49___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428c49_type* @G__0x428c49 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x42873b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42873b_type* @G__0x42873b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_411824(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x428ca0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x428ca0_type* @G__0x428ca0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_41182e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_411833(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_addq__0x120___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 288)
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

