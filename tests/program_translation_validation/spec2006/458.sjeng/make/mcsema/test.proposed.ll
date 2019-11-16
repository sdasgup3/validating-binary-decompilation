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

declare %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4024f0.addHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_402470.SwitchColor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62dab4_type = type <{ [4 x i8] }>
@G_0x62dab4= global %G_0x62dab4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62dab8_type = type <{ [4 x i8] }>
@G_0x62dab8= global %G_0x62dab8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e4fc_type = type <{ [4 x i8] }>
@G_0x62e4fc= global %G_0x62e4fc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e500_type = type <{ [4 x i8] }>
@G_0x62e500= global %G_0x62e500_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b40_type = type <{ [4 x i8] }>
@G_0x633b40= global %G_0x633b40_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x63ae48_type = type <{ [4 x i8] }>
@G_0x63ae48= global %G_0x63ae48_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x8661bc_type = type <{ [4 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661c0_type = type <{ [4 x i8] }>
@G_0x8661c0= global %G_0x8661c0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661d0_type = type <{ [4 x i8] }>
@G_0x8661d0= global %G_0x8661d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866358_type = type <{ [4 x i8] }>
@G_0x866358= global %G_0x866358_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866364_type = type <{ [4 x i8] }>
@G_0x866364= global %G_0x866364_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86636c_type = type <{ [4 x i8] }>
@G_0x86636c= global %G_0x86636c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866374_type = type <{ [4 x i8] }>
@G_0x866374= global %G_0x866374_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664a8_type = type <{ [4 x i8] }>
@G_0x8664a8= global %G_0x8664a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664b4_type = type <{ [4 x i8] }>
@G_0x8664b4= global %G_0x8664b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664bc_type = type <{ [4 x i8] }>
@G_0x8664bc= global %G_0x8664bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8664c4_type = type <{ [4 x i8] }>
@G_0x8664c4= global %G_0x8664c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665a8_type = type <{ [4 x i8] }>
@G_0x8665a8= global %G_0x8665a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665b4_type = type <{ [4 x i8] }>
@G_0x8665b4= global %G_0x8665b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665bc_type = type <{ [4 x i8] }>
@G_0x8665bc= global %G_0x8665bc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8665c4_type = type <{ [4 x i8] }>
@G_0x8665c4= global %G_0x8665c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8666f8_type = type <{ [4 x i8] }>
@G_0x8666f8= global %G_0x8666f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866704_type = type <{ [4 x i8] }>
@G_0x866704= global %G_0x866704_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86670c_type = type <{ [4 x i8] }>
@G_0x86670c= global %G_0x86670c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866714_type = type <{ [4 x i8] }>
@G_0x866714= global %G_0x866714_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866790_type = type <{ [4 x i8] }>
@G_0x866790= global %G_0x866790_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd7c_type = type <{ [4 x i8] }>
@G_0x86bd7c= global %G_0x86bd7c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x881de4_type = type <{ [4 x i8] }>
@G_0x881de4= global %G_0x881de4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882418_type = type <{ [4 x i8] }>
@G_0x882418= global %G_0x882418_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882424_type = type <{ [4 x i8] }>
@G_0x882424= global %G_0x882424_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x88242c_type = type <{ [4 x i8] }>
@G_0x88242c= global %G_0x88242c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882434_type = type <{ [4 x i8] }>
@G_0x882434= global %G_0x882434_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882568_type = type <{ [4 x i8] }>
@G_0x882568= global %G_0x882568_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882574_type = type <{ [4 x i8] }>
@G_0x882574= global %G_0x882574_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x88257c_type = type <{ [4 x i8] }>
@G_0x88257c= global %G_0x88257c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x882584_type = type <{ [4 x i8] }>
@G_0x882584= global %G_0x882584_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1aa8_type = type <{ [4 x i8] }>
@G_0x8a1aa8= global %G_0x8a1aa8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1ab4_type = type <{ [4 x i8] }>
@G_0x8a1ab4= global %G_0x8a1ab4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1abc_type = type <{ [4 x i8] }>
@G_0x8a1abc= global %G_0x8a1abc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1ac4_type = type <{ [4 x i8] }>
@G_0x8a1ac4= global %G_0x8a1ac4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e38_type = type <{ [4 x i8] }>
@G_0x8a1e38= global %G_0x8a1e38_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e44_type = type <{ [4 x i8] }>
@G_0x8a1e44= global %G_0x8a1e44_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e4c_type = type <{ [4 x i8] }>
@G_0x8a1e4c= global %G_0x8a1e4c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a1e54_type = type <{ [4 x i8] }>
@G_0x8a1e54= global %G_0x8a1e54_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x880b20_type = type <{ [8 x i8] }>
@G__0x880b20= global %G__0x880b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x8a0a80_type = type <{ [8 x i8] }>
@G__0x8a0a80= global %G__0x8a0a80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @make(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .make:	 RIP: 40b730	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40b730	 Bytes: 1
  %loadMem_40b730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b730 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b730)
  store %struct.Memory* %call_40b730, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40b731	 Bytes: 3
  %loadMem_40b731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b731 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b731)
  store %struct.Memory* %call_40b731, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 40b734	 Bytes: 4
  %loadMem_40b734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b734 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b734)
  store %struct.Memory* %call_40b734, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40b738	 Bytes: 10
  %loadMem_40b738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b738 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b738)
  store %struct.Memory* %call_40b738, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 40b742	 Bytes: 4
  %loadMem_40b742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b742 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b742)
  store %struct.Memory* %call_40b742, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 40b746	 Bytes: 3
  %loadMem_40b746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b746 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b746)
  store %struct.Memory* %call_40b746, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 40b749	 Bytes: 4
  %loadMem_40b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b749 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b749)
  store %struct.Memory* %call_40b749, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 40b74d	 Bytes: 4
  %loadMem_40b74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b74d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b74d)
  store %struct.Memory* %call_40b74d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 40b751	 Bytes: 4
  %loadMem_40b751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b751 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b751)
  store %struct.Memory* %call_40b751, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 40b755	 Bytes: 3
  %loadMem_40b755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b755 = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b755)
  store %struct.Memory* %call_40b755, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %esi	 RIP: 40b758	 Bytes: 3
  %loadMem_40b758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b758 = call %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b758)
  store %struct.Memory* %call_40b758, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 40b75b	 Bytes: 3
  %loadMem_40b75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b75b = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b75b)
  store %struct.Memory* %call_40b75b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40b75e	 Bytes: 4
  %loadMem_40b75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b75e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b75e)
  store %struct.Memory* %call_40b75e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40b762	 Bytes: 4
  %loadMem_40b762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b762 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b762)
  store %struct.Memory* %call_40b762, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40b766	 Bytes: 4
  %loadMem_40b766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b766 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b766)
  store %struct.Memory* %call_40b766, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40b76a	 Bytes: 3
  %loadMem_40b76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b76a = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b76a)
  store %struct.Memory* %call_40b76a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 40b76d	 Bytes: 2
  %loadMem_40b76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b76d = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b76d)
  store %struct.Memory* %call_40b76d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 40b76f	 Bytes: 3
  %loadMem_40b76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b76f = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b76f)
  store %struct.Memory* %call_40b76f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40b772	 Bytes: 4
  %loadMem_40b772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b772 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b772)
  store %struct.Memory* %call_40b772, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40b776	 Bytes: 4
  %loadMem_40b776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b776 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b776)
  store %struct.Memory* %call_40b776, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40b77a	 Bytes: 4
  %loadMem_40b77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b77a = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b77a)
  store %struct.Memory* %call_40b77a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40b77e	 Bytes: 3
  %loadMem_40b77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b77e = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b77e)
  store %struct.Memory* %call_40b77e, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %esi	 RIP: 40b781	 Bytes: 3
  %loadMem_40b781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b781 = call %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b781)
  store %struct.Memory* %call_40b781, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 40b784	 Bytes: 3
  %loadMem_40b784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b784 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b784)
  store %struct.Memory* %call_40b784, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40b787	 Bytes: 4
  %loadMem_40b787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b787 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b787)
  store %struct.Memory* %call_40b787, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40b78b	 Bytes: 4
  %loadMem_40b78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b78b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b78b)
  store %struct.Memory* %call_40b78b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40b78f	 Bytes: 4
  %loadMem_40b78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b78f = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b78f)
  store %struct.Memory* %call_40b78f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40b793	 Bytes: 3
  %loadMem_40b793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b793 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b793)
  store %struct.Memory* %call_40b793, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 40b796	 Bytes: 3
  %loadMem_40b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b796 = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b796)
  store %struct.Memory* %call_40b796, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x1c(%rbp)	 RIP: 40b799	 Bytes: 3
  %loadMem_40b799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b799 = call %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b799)
  store %struct.Memory* %call_40b799, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40b79c	 Bytes: 4
  %loadMem_40b79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b79c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b79c)
  store %struct.Memory* %call_40b79c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40b7a0	 Bytes: 4
  %loadMem_40b7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7a0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7a0)
  store %struct.Memory* %call_40b7a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40b7a4	 Bytes: 4
  %loadMem_40b7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7a4 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7a4)
  store %struct.Memory* %call_40b7a4, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40b7a8	 Bytes: 3
  %loadMem_40b7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7a8 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7a8)
  store %struct.Memory* %call_40b7a8, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 40b7ab	 Bytes: 3
  %loadMem_40b7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ab = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ab)
  store %struct.Memory* %call_40b7ab, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 40b7ae	 Bytes: 3
  %loadMem_40b7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ae = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ae)
  store %struct.Memory* %call_40b7ae, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 40b7b1	 Bytes: 4
  %loadMem_40b7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b1)
  store %struct.Memory* %call_40b7b1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 40b7b5	 Bytes: 4
  %loadMem_40b7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b5 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b5)
  store %struct.Memory* %call_40b7b5, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdi, %rdi	 RIP: 40b7b9	 Bytes: 4
  %loadMem_40b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b9 = call %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b9)
  store %struct.Memory* %call_40b7b9, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 40b7bd	 Bytes: 3
  %loadMem_40b7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7bd = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7bd)
  store %struct.Memory* %call_40b7bd, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %esi	 RIP: 40b7c0	 Bytes: 3
  %loadMem_40b7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7c0 = call %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7c0)
  store %struct.Memory* %call_40b7c0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 40b7c3	 Bytes: 3
  %loadMem_40b7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7c3 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7c3)
  store %struct.Memory* %call_40b7c3, %struct.Memory** %MEMORY

  ; Code: movl 0x881de4, %esi	 RIP: 40b7c6	 Bytes: 7
  %loadMem_40b7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7c6 = call %struct.Memory* @routine_movl_0x881de4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7c6)
  store %struct.Memory* %call_40b7c6, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40b7cd	 Bytes: 8
  %loadMem_40b7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7cd = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7cd)
  store %struct.Memory* %call_40b7cd, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40b7d5	 Bytes: 4
  %loadMem_40b7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7d5 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7d5)
  store %struct.Memory* %call_40b7d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40b7d9	 Bytes: 3
  %loadMem_40b7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7d9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7d9)
  store %struct.Memory* %call_40b7d9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 40b7dc	 Bytes: 3
  %loadMem_40b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7dc = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7dc)
  store %struct.Memory* %call_40b7dc, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rdi)	 RIP: 40b7df	 Bytes: 3
  %loadMem_40b7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7df = call %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7df)
  store %struct.Memory* %call_40b7df, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x881de4	 RIP: 40b7e2	 Bytes: 11
  %loadMem_40b7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7e2 = call %struct.Memory* @routine_movl__0x0__0x881de4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7e2)
  store %struct.Memory* %call_40b7e2, %struct.Memory** %MEMORY

  ; Code: movl 0x866790, %esi	 RIP: 40b7ed	 Bytes: 7
  %loadMem_40b7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ed = call %struct.Memory* @routine_movl_0x866790___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ed)
  store %struct.Memory* %call_40b7ed, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40b7f4	 Bytes: 8
  %loadMem_40b7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7f4 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7f4)
  store %struct.Memory* %call_40b7f4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40b7fc	 Bytes: 4
  %loadMem_40b7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7fc = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7fc)
  store %struct.Memory* %call_40b7fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b800	 Bytes: 3
  %loadMem_40b800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b800 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b800)
  store %struct.Memory* %call_40b800, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0xc(%rax)	 RIP: 40b803	 Bytes: 3
  %loadMem_40b803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b803 = call %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b803)
  store %struct.Memory* %call_40b803, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40b806	 Bytes: 4
  %loadMem_40b806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b806 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b806)
  store %struct.Memory* %call_40b806, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x866540(,%rax,4)	 RIP: 40b80a	 Bytes: 8
  %loadMem_40b80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b80a = call %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b80a)
  store %struct.Memory* %call_40b80a, %struct.Memory** %MEMORY

  ; Code: je .L_40b83c	 RIP: 40b812	 Bytes: 6
  %loadMem_40b812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b812 = call %struct.Memory* @routine_je_.L_40b83c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b812, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_40b812, %struct.Memory** %MEMORY

  %loadBr_40b812 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b812 = icmp eq i8 %loadBr_40b812, 1
  br i1 %cmpBr_40b812, label %block_.L_40b83c, label %block_40b818

block_40b818:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40b818	 Bytes: 4
  %loadMem_40b818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b818 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b818)
  store %struct.Memory* %call_40b818, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x866540(,%rax,4)	 RIP: 40b81c	 Bytes: 8
  %loadMem_40b81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b81c = call %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b81c)
  store %struct.Memory* %call_40b81c, %struct.Memory** %MEMORY

  ; Code: je .L_40b83c	 RIP: 40b824	 Bytes: 6
  %loadMem_40b824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b824 = call %struct.Memory* @routine_je_.L_40b83c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b824, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_40b824, %struct.Memory** %MEMORY

  %loadBr_40b824 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b824 = icmp eq i8 %loadBr_40b824, 1
  br i1 %cmpBr_40b824, label %block_.L_40b83c, label %block_40b82a

block_40b82a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40b82a	 Bytes: 4
  %loadMem_40b82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b82a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b82a)
  store %struct.Memory* %call_40b82a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x866540(,%rax,4)	 RIP: 40b82e	 Bytes: 8
  %loadMem_40b82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b82e = call %struct.Memory* @routine_cmpl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b82e)
  store %struct.Memory* %call_40b82e, %struct.Memory** %MEMORY

  ; Code: je .L_40b84c	 RIP: 40b836	 Bytes: 6
  %loadMem_40b836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b836 = call %struct.Memory* @routine_je_.L_40b84c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b836, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40b836, %struct.Memory** %MEMORY

  %loadBr_40b836 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b836 = icmp eq i8 %loadBr_40b836, 1
  br i1 %cmpBr_40b836, label %block_.L_40b84c, label %block_.L_40b83c

  ; Code: .L_40b83c:	 RIP: 40b83c	 Bytes: 0
block_.L_40b83c:

  ; Code: movl $0x0, 0x866790	 RIP: 40b83c	 Bytes: 11
  %loadMem_40b83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b83c = call %struct.Memory* @routine_movl__0x0__0x866790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b83c)
  store %struct.Memory* %call_40b83c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b85d	 RIP: 40b847	 Bytes: 5
  %loadMem_40b847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b847 = call %struct.Memory* @routine_jmpq_.L_40b85d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b847, i64 22, i64 5)
  store %struct.Memory* %call_40b847, %struct.Memory** %MEMORY

  br label %block_.L_40b85d

  ; Code: .L_40b84c:	 RIP: 40b84c	 Bytes: 0
block_.L_40b84c:

  ; Code: movl 0x866790, %eax	 RIP: 40b84c	 Bytes: 7
  %loadMem_40b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b84c = call %struct.Memory* @routine_movl_0x866790___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b84c)
  store %struct.Memory* %call_40b84c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b853	 Bytes: 3
  %loadMem_40b853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b853 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b853)
  store %struct.Memory* %call_40b853, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866790	 RIP: 40b856	 Bytes: 7
  %loadMem_40b856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b856 = call %struct.Memory* @routine_movl__eax__0x866790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b856)
  store %struct.Memory* %call_40b856, %struct.Memory** %MEMORY

  ; Code: .L_40b85d:	 RIP: 40b85d	 Bytes: 0
  br label %block_.L_40b85d
block_.L_40b85d:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 40b85d	 Bytes: 4
  %loadMem_40b85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b85d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b85d)
  store %struct.Memory* %call_40b85d, %struct.Memory** %MEMORY

  ; Code: jne .L_40b990	 RIP: 40b861	 Bytes: 6
  %loadMem_40b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b861 = call %struct.Memory* @routine_jne_.L_40b990(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b861, i8* %BRANCH_TAKEN, i64 303, i64 6, i64 6)
  store %struct.Memory* %call_40b861, %struct.Memory** %MEMORY

  %loadBr_40b861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b861 = icmp eq i8 %loadBr_40b861, 1
  br i1 %cmpBr_40b861, label %block_.L_40b990, label %block_40b867

block_40b867:
  ; Code: movl 0x63ae48, %eax	 RIP: 40b867	 Bytes: 7
  %loadMem_40b867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b867 = call %struct.Memory* @routine_movl_0x63ae48___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b867)
  store %struct.Memory* %call_40b867, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b86e	 Bytes: 3
  %loadMem_40b86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b86e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b86e)
  store %struct.Memory* %call_40b86e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x63ae48	 RIP: 40b871	 Bytes: 7
  %loadMem_40b871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b871 = call %struct.Memory* @routine_movl__eax__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b871)
  store %struct.Memory* %call_40b871, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 40b878	 Bytes: 7
  %loadMem_40b878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b878 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b878)
  store %struct.Memory* %call_40b878, %struct.Memory** %MEMORY

  ; Code: .L_40b87f:	 RIP: 40b87f	 Bytes: 0
  br label %block_.L_40b87f
block_.L_40b87f:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 40b87f	 Bytes: 4
  %loadMem_40b87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b87f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b87f)
  store %struct.Memory* %call_40b87f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x85f2f0(,%rax,4)	 RIP: 40b883	 Bytes: 8
  %loadMem_40b883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b883 = call %struct.Memory* @routine_cmpl__0x0__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b883)
  store %struct.Memory* %call_40b883, %struct.Memory** %MEMORY

  ; Code: je .L_40b8a4	 RIP: 40b88b	 Bytes: 6
  %loadMem_40b88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b88b = call %struct.Memory* @routine_je_.L_40b8a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b88b, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_40b88b, %struct.Memory** %MEMORY

  %loadBr_40b88b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b88b = icmp eq i8 %loadBr_40b88b, 1
  br i1 %cmpBr_40b88b, label %block_.L_40b8a4, label %block_40b891

block_40b891:
  ; Code: jmpq .L_40b896	 RIP: 40b891	 Bytes: 5
  %loadMem_40b891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b891 = call %struct.Memory* @routine_jmpq_.L_40b896(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b891, i64 5, i64 5)
  store %struct.Memory* %call_40b891, %struct.Memory** %MEMORY

  br label %block_.L_40b896

  ; Code: .L_40b896:	 RIP: 40b896	 Bytes: 0
block_.L_40b896:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40b896	 Bytes: 3
  %loadMem_40b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b896 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b896)
  store %struct.Memory* %call_40b896, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b899	 Bytes: 3
  %loadMem_40b899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b899 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b899)
  store %struct.Memory* %call_40b899, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 40b89c	 Bytes: 3
  %loadMem_40b89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b89c = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b89c)
  store %struct.Memory* %call_40b89c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b87f	 RIP: 40b89f	 Bytes: 5
  %loadMem_40b89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b89f = call %struct.Memory* @routine_jmpq_.L_40b87f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b89f, i64 -32, i64 5)
  store %struct.Memory* %call_40b89f, %struct.Memory** %MEMORY

  br label %block_.L_40b87f

  ; Code: .L_40b8a4:	 RIP: 40b8a4	 Bytes: 0
block_.L_40b8a4:

  ; Code: movl $0x1, %eax	 RIP: 40b8a4	 Bytes: 5
  %loadMem_40b8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8a4 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8a4)
  store %struct.Memory* %call_40b8a4, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 40b8a9	 Bytes: 2
  %loadMem_40b8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8a9 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8a9)
  store %struct.Memory* %call_40b8a9, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rdx	 RIP: 40b8ab	 Bytes: 10
  %loadMem_40b8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ab = call %struct.Memory* @routine_movq__0x880b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ab)
  store %struct.Memory* %call_40b8ab, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 40b8b5	 Bytes: 3
  %loadMem_40b8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8b5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8b5)
  store %struct.Memory* %call_40b8b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 40b8b8	 Bytes: 4
  %loadMem_40b8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8b8 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8b8)
  store %struct.Memory* %call_40b8b8, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x85f2f0(,%rdi,4)	 RIP: 40b8bc	 Bytes: 7
  %loadMem_40b8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8bc = call %struct.Memory* @routine_movl__esi__0x85f2f0___rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8bc)
  store %struct.Memory* %call_40b8bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 40b8c3	 Bytes: 4
  %loadMem_40b8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8c3 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8c3)
  store %struct.Memory* %call_40b8c3, %struct.Memory** %MEMORY

  ; Code: movl 0x639120(,%rdi,4), %esi	 RIP: 40b8c7	 Bytes: 7
  %loadMem_40b8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8c7 = call %struct.Memory* @routine_movl_0x639120___rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8c7)
  store %struct.Memory* %call_40b8c7, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdi	 RIP: 40b8ce	 Bytes: 8
  %loadMem_40b8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ce = call %struct.Memory* @routine_movslq_0x886bc0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ce)
  store %struct.Memory* %call_40b8ce, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 40b8d6	 Bytes: 4
  %loadMem_40b8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8d6 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8d6)
  store %struct.Memory* %call_40b8d6, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 40b8da	 Bytes: 3
  %loadMem_40b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8da = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8da)
  store %struct.Memory* %call_40b8da, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rdx)	 RIP: 40b8dd	 Bytes: 3
  %loadMem_40b8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8dd = call %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8dd)
  store %struct.Memory* %call_40b8dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40b8e0	 Bytes: 4
  %loadMem_40b8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8e0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8e0)
  store %struct.Memory* %call_40b8e0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x639120(,%rdx,4)	 RIP: 40b8e4	 Bytes: 11
  %loadMem_40b8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8e4 = call %struct.Memory* @routine_movl__0x0__0x639120___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8e4)
  store %struct.Memory* %call_40b8e4, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 40b8ef	 Bytes: 3
  %loadMem_40b8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ef = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ef)
  store %struct.Memory* %call_40b8ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40b8f2	 Bytes: 4
  %loadMem_40b8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8f2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8f2)
  store %struct.Memory* %call_40b8f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8662f0(,%rdx,4)	 RIP: 40b8f6	 Bytes: 7
  %loadMem_40b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8f6 = call %struct.Memory* @routine_movl__esi__0x8662f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8f6)
  store %struct.Memory* %call_40b8f6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 40b8fd	 Bytes: 3
  %loadMem_40b8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8fd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8fd)
  store %struct.Memory* %call_40b8fd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40b900	 Bytes: 8
  %loadMem_40b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b900 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b900)
  store %struct.Memory* %call_40b900, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 40b908	 Bytes: 3
  %loadMem_40b908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b908 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b908)
  store %struct.Memory* %call_40b908, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40b90b	 Bytes: 2
  %loadMem_40b90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b90b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b90b)
  store %struct.Memory* %call_40b90b, %struct.Memory** %MEMORY

  ; Code: callq .DropremoveHolding	 RIP: 40b90d	 Bytes: 5
  %loadMem1_40b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40b90d = call %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40b90d, i64 -37213, i64 5, i64 5)
  store %struct.Memory* %call1_40b90d, %struct.Memory** %MEMORY

  %loadMem2_40b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40b90d = load i64, i64* %3
  %call2_40b90d = call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* %0, i64  %loadPC_40b90d, %struct.Memory* %loadMem2_40b90d)
  store %struct.Memory* %call2_40b90d, %struct.Memory** %MEMORY

  ; Code: movq $0x8a0a80, %rdx	 RIP: 40b912	 Bytes: 10
  %loadMem_40b912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b912 = call %struct.Memory* @routine_movq__0x8a0a80___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b912)
  store %struct.Memory* %call_40b912, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 40b91c	 Bytes: 4
  %loadMem_40b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b91c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b91c)
  store %struct.Memory* %call_40b91c, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%r8,4), %eax	 RIP: 40b920	 Bytes: 8
  %loadMem_40b920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b920 = call %struct.Memory* @routine_movl_0x62dab0___r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b920)
  store %struct.Memory* %call_40b920, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %eax	 RIP: 40b928	 Bytes: 7
  %loadMem_40b928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b928 = call %struct.Memory* @routine_addl_0x8661c0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b928)
  store %struct.Memory* %call_40b928, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661c0	 RIP: 40b92f	 Bytes: 7
  %loadMem_40b92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b92f = call %struct.Memory* @routine_movl__eax__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b92f)
  store %struct.Memory* %call_40b92f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40b936	 Bytes: 3
  %loadMem_40b936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b936 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b936)
  store %struct.Memory* %call_40b936, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40b939	 Bytes: 4
  %loadMem_40b939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b939 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b939)
  store %struct.Memory* %call_40b939, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866540(,%r8,4)	 RIP: 40b93d	 Bytes: 8
  %loadMem_40b93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b93d = call %struct.Memory* @routine_movl__eax__0x866540___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b93d)
  store %struct.Memory* %call_40b93d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 40b945	 Bytes: 4
  %loadMem_40b945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b945 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b945)
  store %struct.Memory* %call_40b945, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %r8, %r8	 RIP: 40b949	 Bytes: 7
  %loadMem_40b949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b949 = call %struct.Memory* @routine_imulq__0x240___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b949)
  store %struct.Memory* %call_40b949, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdx	 RIP: 40b950	 Bytes: 3
  %loadMem_40b950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b950 = call %struct.Memory* @routine_addq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b950)
  store %struct.Memory* %call_40b950, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40b953	 Bytes: 4
  %loadMem_40b953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b953 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b953)
  store %struct.Memory* %call_40b953, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%r8,4), %eax	 RIP: 40b957	 Bytes: 4
  %loadMem_40b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b957 = call %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b957)
  store %struct.Memory* %call_40b957, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40b95b	 Bytes: 7
  %loadMem_40b95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b95b = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b95b)
  store %struct.Memory* %call_40b95b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40b962	 Bytes: 7
  %loadMem_40b962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b962 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b962)
  store %struct.Memory* %call_40b962, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40b969	 Bytes: 7
  %loadMem_40b969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b969 = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b969)
  store %struct.Memory* %call_40b969, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40b970	 Bytes: 3
  %loadMem_40b970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b970 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b970)
  store %struct.Memory* %call_40b970, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40b973	 Bytes: 7
  %loadMem_40b973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b973 = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b973)
  store %struct.Memory* %call_40b973, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 40b97a	 Bytes: 7
  %loadMem_40b97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b97a = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b97a)
  store %struct.Memory* %call_40b97a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b981	 Bytes: 3
  %loadMem_40b981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b981 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b981)
  store %struct.Memory* %call_40b981, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40b984	 Bytes: 7
  %loadMem_40b984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b984 = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b984)
  store %struct.Memory* %call_40b984, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40b98b	 Bytes: 5
  %loadMem_40b98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b98b = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b98b, i64 3587, i64 5)
  store %struct.Memory* %call_40b98b, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40b990:	 RIP: 40b990	 Bytes: 0
block_.L_40b990:

  ; Code: movq $0x880b20, %rax	 RIP: 40b990	 Bytes: 10
  %loadMem_40b990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b990 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b990)
  store %struct.Memory* %call_40b990, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40b99a	 Bytes: 4
  %loadMem_40b99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b99a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b99a)
  store %struct.Memory* %call_40b99a, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rcx,4), %rcx	 RIP: 40b99e	 Bytes: 8
  %loadMem_40b99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b99e = call %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b99e)
  store %struct.Memory* %call_40b99e, %struct.Memory** %MEMORY

  ; Code: movl 0x639120(,%rcx,4), %edx	 RIP: 40b9a6	 Bytes: 7
  %loadMem_40b9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9a6 = call %struct.Memory* @routine_movl_0x639120___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9a6)
  store %struct.Memory* %call_40b9a6, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40b9ad	 Bytes: 8
  %loadMem_40b9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9ad = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9ad)
  store %struct.Memory* %call_40b9ad, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40b9b5	 Bytes: 4
  %loadMem_40b9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9b5 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9b5)
  store %struct.Memory* %call_40b9b5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b9b9	 Bytes: 3
  %loadMem_40b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9b9 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9b9)
  store %struct.Memory* %call_40b9b9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40b9bc	 Bytes: 3
  %loadMem_40b9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9bc = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9bc)
  store %struct.Memory* %call_40b9bc, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rsi)	 RIP: 40b9bf	 Bytes: 3
  %loadMem_40b9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9bf = call %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9bf)
  store %struct.Memory* %call_40b9bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40b9c2	 Bytes: 4
  %loadMem_40b9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c2)
  store %struct.Memory* %call_40b9c2, %struct.Memory** %MEMORY

  ; Code: movl 0x8662f0(,%rcx,4), %edx	 RIP: 40b9c6	 Bytes: 7
  %loadMem_40b9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c6 = call %struct.Memory* @routine_movl_0x8662f0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c6)
  store %struct.Memory* %call_40b9c6, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40b9cd	 Bytes: 8
  %loadMem_40b9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9cd = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9cd)
  store %struct.Memory* %call_40b9cd, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40b9d5	 Bytes: 4
  %loadMem_40b9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9d5 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9d5)
  store %struct.Memory* %call_40b9d5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b9d9	 Bytes: 3
  %loadMem_40b9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9d9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9d9)
  store %struct.Memory* %call_40b9d9, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 40b9dc	 Bytes: 2
  %loadMem_40b9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9dc = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9dc)
  store %struct.Memory* %call_40b9dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40b9de	 Bytes: 4
  %loadMem_40b9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9de = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9de)
  store %struct.Memory* %call_40b9de, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40b9e2	 Bytes: 8
  %loadMem_40b9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9e2 = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9e2)
  store %struct.Memory* %call_40b9e2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f2f0(,%rax,4)	 RIP: 40b9ea	 Bytes: 11
  %loadMem_40b9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9ea = call %struct.Memory* @routine_movl__0x0__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9ea)
  store %struct.Memory* %call_40b9ea, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40b9f5	 Bytes: 3
  %loadMem_40b9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9f5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9f5)
  store %struct.Memory* %call_40b9f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40b9f8	 Bytes: 4
  %loadMem_40b9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9f8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9f8)
  store %struct.Memory* %call_40b9f8, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40b9fc	 Bytes: 8
  %loadMem_40b9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9fc = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9fc)
  store %struct.Memory* %call_40b9fc, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x85f2f0(,%rax,4)	 RIP: 40ba04	 Bytes: 7
  %loadMem_40ba04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba04 = call %struct.Memory* @routine_movl__edx__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba04)
  store %struct.Memory* %call_40ba04, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40ba0b	 Bytes: 4
  %loadMem_40ba0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba0b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba0b)
  store %struct.Memory* %call_40ba0b, %struct.Memory** %MEMORY

  ; Code: movl 0x8662f0(,%rax,4), %edx	 RIP: 40ba0f	 Bytes: 7
  %loadMem_40ba0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba0f = call %struct.Memory* @routine_movl_0x8662f0___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba0f)
  store %struct.Memory* %call_40ba0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ba16	 Bytes: 4
  %loadMem_40ba16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba16 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba16)
  store %struct.Memory* %call_40ba16, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8662f0(,%rax,4)	 RIP: 40ba1a	 Bytes: 7
  %loadMem_40ba1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba1a = call %struct.Memory* @routine_movl__edx__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba1a)
  store %struct.Memory* %call_40ba1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40ba21	 Bytes: 4
  %loadMem_40ba21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba21 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba21)
  store %struct.Memory* %call_40ba21, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rax,4)	 RIP: 40ba25	 Bytes: 11
  %loadMem_40ba25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba25 = call %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba25)
  store %struct.Memory* %call_40ba25, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40ba30	 Bytes: 4
  %loadMem_40ba30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba30 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba30)
  store %struct.Memory* %call_40ba30, %struct.Memory** %MEMORY

  ; Code: jne .L_40bb70	 RIP: 40ba34	 Bytes: 6
  %loadMem_40ba34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba34 = call %struct.Memory* @routine_jne_.L_40bb70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba34, i8* %BRANCH_TAKEN, i64 316, i64 6, i64 6)
  store %struct.Memory* %call_40ba34, %struct.Memory** %MEMORY

  %loadBr_40ba34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba34 = icmp eq i8 %loadBr_40ba34, 1
  br i1 %cmpBr_40ba34, label %block_.L_40bb70, label %block_40ba3a

block_40ba3a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ba3a	 Bytes: 4
  %loadMem_40ba3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba3a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba3a)
  store %struct.Memory* %call_40ba3a, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %ecx	 RIP: 40ba3e	 Bytes: 7
  %loadMem_40ba3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba3e = call %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba3e)
  store %struct.Memory* %call_40ba3e, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %ecx	 RIP: 40ba45	 Bytes: 3
  %loadMem_40ba45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba45 = call %struct.Memory* @routine_subl__0xd___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba45)
  store %struct.Memory* %call_40ba45, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 40ba48	 Bytes: 3
  %loadMem_40ba48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba48 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba48)
  store %struct.Memory* %call_40ba48, %struct.Memory** %MEMORY

  ; Code: jne .L_40ba5b	 RIP: 40ba4b	 Bytes: 6
  %loadMem_40ba4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba4b = call %struct.Memory* @routine_jne_.L_40ba5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba4b, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40ba4b, %struct.Memory** %MEMORY

  %loadBr_40ba4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba4b = icmp eq i8 %loadBr_40ba4b, 1
  br i1 %cmpBr_40ba4b, label %block_.L_40ba5b, label %block_40ba51

block_40ba51:
  ; Code: jmpq .L_40ba56	 RIP: 40ba51	 Bytes: 5
  %loadMem_40ba51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba51 = call %struct.Memory* @routine_jmpq_.L_40ba56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba51, i64 5, i64 5)
  store %struct.Memory* %call_40ba51, %struct.Memory** %MEMORY

  br label %block_.L_40ba56

  ; Code: .L_40ba56:	 RIP: 40ba56	 Bytes: 0
block_.L_40ba56:

  ; Code: jmpq .L_40bb6b	 RIP: 40ba56	 Bytes: 5
  %loadMem_40ba56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba56 = call %struct.Memory* @routine_jmpq_.L_40bb6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba56, i64 277, i64 5)
  store %struct.Memory* %call_40ba56, %struct.Memory** %MEMORY

  br label %block_.L_40bb6b

  ; Code: .L_40ba5b:	 RIP: 40ba5b	 Bytes: 0
block_.L_40ba5b:

  ; Code: cmpl $0x1, 0x85f154	 RIP: 40ba5b	 Bytes: 8
  %loadMem_40ba5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba5b = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba5b)
  store %struct.Memory* %call_40ba5b, %struct.Memory** %MEMORY

  ; Code: je .L_40ba77	 RIP: 40ba63	 Bytes: 6
  %loadMem_40ba63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba63 = call %struct.Memory* @routine_je_.L_40ba77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba63, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_40ba63, %struct.Memory** %MEMORY

  %loadBr_40ba63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba63 = icmp eq i8 %loadBr_40ba63, 1
  br i1 %cmpBr_40ba63, label %block_.L_40ba77, label %block_40ba69

block_40ba69:
  ; Code: cmpl $0x0, 0x85f154	 RIP: 40ba69	 Bytes: 8
  %loadMem_40ba69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba69 = call %struct.Memory* @routine_cmpl__0x0__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba69)
  store %struct.Memory* %call_40ba69, %struct.Memory** %MEMORY

  ; Code: jne .L_40bb02	 RIP: 40ba71	 Bytes: 6
  %loadMem_40ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba71 = call %struct.Memory* @routine_jne_.L_40bb02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba71, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_40ba71, %struct.Memory** %MEMORY

  %loadBr_40ba71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba71 = icmp eq i8 %loadBr_40ba71, 1
  br i1 %cmpBr_40ba71, label %block_.L_40bb02, label %block_.L_40ba77

  ; Code: .L_40ba77:	 RIP: 40ba77	 Bytes: 0
block_.L_40ba77:

  ; Code: movq $0x880b20, %rax	 RIP: 40ba77	 Bytes: 10
  %loadMem_40ba77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba77 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba77)
  store %struct.Memory* %call_40ba77, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 40ba81	 Bytes: 8
  %loadMem_40ba81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba81 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba81)
  store %struct.Memory* %call_40ba81, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 40ba89	 Bytes: 4
  %loadMem_40ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba89 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba89)
  store %struct.Memory* %call_40ba89, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40ba8d	 Bytes: 3
  %loadMem_40ba8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba8d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba8d)
  store %struct.Memory* %call_40ba8d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 40ba90	 Bytes: 4
  %loadMem_40ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba90 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba90)
  store %struct.Memory* %call_40ba90, %struct.Memory** %MEMORY

  ; Code: je .L_40bace	 RIP: 40ba94	 Bytes: 6
  %loadMem_40ba94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba94 = call %struct.Memory* @routine_je_.L_40bace(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba94, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_40ba94, %struct.Memory** %MEMORY

  %loadBr_40ba94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba94 = icmp eq i8 %loadBr_40ba94, 1
  br i1 %cmpBr_40ba94, label %block_.L_40bace, label %block_40ba9a

block_40ba9a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40ba9a	 Bytes: 4
  %loadMem_40ba9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba9a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba9a)
  store %struct.Memory* %call_40ba9a, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %edi	 RIP: 40ba9e	 Bytes: 7
  %loadMem_40ba9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba9e = call %struct.Memory* @routine_movl_0x866540___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba9e)
  store %struct.Memory* %call_40ba9e, %struct.Memory** %MEMORY

  ; Code: callq .SwitchPromoted	 RIP: 40baa5	 Bytes: 5
  %loadMem1_40baa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40baa5 = call %struct.Memory* @routine_callq_.SwitchPromoted(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40baa5, i64 -38389, i64 5, i64 5)
  store %struct.Memory* %call1_40baa5, %struct.Memory** %MEMORY

  %loadMem2_40baa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40baa5 = load i64, i64* %3
  %call2_40baa5 = call %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* %0, i64  %loadPC_40baa5, %struct.Memory* %loadMem2_40baa5)
  store %struct.Memory* %call2_40baa5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 40baaa	 Bytes: 5
  %loadMem_40baaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baaa = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baaa)
  store %struct.Memory* %call_40baaa, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 40baaf	 Bytes: 2
  %loadMem_40baaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baaf = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baaf)
  store %struct.Memory* %call_40baaf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40bab1	 Bytes: 8
  %loadMem_40bab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bab1 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bab1)
  store %struct.Memory* %call_40bab1, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %edi	 RIP: 40bab9	 Bytes: 3
  %loadMem_40bab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bab9 = call %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bab9)
  store %struct.Memory* %call_40bab9, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 40babc	 Bytes: 3
  %loadMem_40babc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40babc = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40babc)
  store %struct.Memory* %call_40babc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 40babf	 Bytes: 2
  %loadMem_40babf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40babf = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40babf)
  store %struct.Memory* %call_40babf, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 40bac1	 Bytes: 3
  %loadMem_40bac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bac1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bac1)
  store %struct.Memory* %call_40bac1, %struct.Memory** %MEMORY

  ; Code: callq .addHolding	 RIP: 40bac4	 Bytes: 5
  %loadMem1_40bac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40bac4 = call %struct.Memory* @routine_callq_.addHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40bac4, i64 -38356, i64 5, i64 5)
  store %struct.Memory* %call1_40bac4, %struct.Memory** %MEMORY

  %loadMem2_40bac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40bac4 = load i64, i64* %3
  %call2_40bac4 = call %struct.Memory* @sub_4024f0.addHolding(%struct.State* %0, i64  %loadPC_40bac4, %struct.Memory* %loadMem2_40bac4)
  store %struct.Memory* %call2_40bac4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40bafd	 RIP: 40bac9	 Bytes: 5
  %loadMem_40bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bac9 = call %struct.Memory* @routine_jmpq_.L_40bafd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bac9, i64 52, i64 5)
  store %struct.Memory* %call_40bac9, %struct.Memory** %MEMORY

  br label %block_.L_40bafd

  ; Code: .L_40bace:	 RIP: 40bace	 Bytes: 0
block_.L_40bace:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40bace	 Bytes: 4
  %loadMem_40bace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bace = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bace)
  store %struct.Memory* %call_40bace, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %edi	 RIP: 40bad2	 Bytes: 7
  %loadMem_40bad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bad2 = call %struct.Memory* @routine_movl_0x866540___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bad2)
  store %struct.Memory* %call_40bad2, %struct.Memory** %MEMORY

  ; Code: callq .SwitchColor	 RIP: 40bad9	 Bytes: 5
  %loadMem1_40bad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40bad9 = call %struct.Memory* @routine_callq_.SwitchColor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40bad9, i64 -38505, i64 5, i64 5)
  store %struct.Memory* %call1_40bad9, %struct.Memory** %MEMORY

  %loadMem2_40bad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40bad9 = load i64, i64* %3
  %call2_40bad9 = call %struct.Memory* @sub_402470.SwitchColor(%struct.State* %0, i64  %loadPC_40bad9, %struct.Memory* %loadMem2_40bad9)
  store %struct.Memory* %call2_40bad9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 40bade	 Bytes: 5
  %loadMem_40bade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bade = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bade)
  store %struct.Memory* %call_40bade, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 40bae3	 Bytes: 2
  %loadMem_40bae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bae3 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bae3)
  store %struct.Memory* %call_40bae3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 40bae5	 Bytes: 8
  %loadMem_40bae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bae5 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bae5)
  store %struct.Memory* %call_40bae5, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %edi	 RIP: 40baed	 Bytes: 3
  %loadMem_40baed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baed = call %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baed)
  store %struct.Memory* %call_40baed, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x34(%rbp)	 RIP: 40baf0	 Bytes: 3
  %loadMem_40baf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf0 = call %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf0)
  store %struct.Memory* %call_40baf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 40baf3	 Bytes: 2
  %loadMem_40baf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf3 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf3)
  store %struct.Memory* %call_40baf3, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40baf5	 Bytes: 3
  %loadMem_40baf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf5 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf5)
  store %struct.Memory* %call_40baf5, %struct.Memory** %MEMORY

  ; Code: callq .addHolding	 RIP: 40baf8	 Bytes: 5
  %loadMem1_40baf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40baf8 = call %struct.Memory* @routine_callq_.addHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40baf8, i64 -38408, i64 5, i64 5)
  store %struct.Memory* %call1_40baf8, %struct.Memory** %MEMORY

  %loadMem2_40baf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40baf8 = load i64, i64* %3
  %call2_40baf8 = call %struct.Memory* @sub_4024f0.addHolding(%struct.State* %0, i64  %loadPC_40baf8, %struct.Memory* %loadMem2_40baf8)
  store %struct.Memory* %call2_40baf8, %struct.Memory** %MEMORY

  ; Code: .L_40bafd:	 RIP: 40bafd	 Bytes: 0
  br label %block_.L_40bafd
block_.L_40bafd:

  ; Code: jmpq .L_40bb02	 RIP: 40bafd	 Bytes: 5
  %loadMem_40bafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bafd = call %struct.Memory* @routine_jmpq_.L_40bb02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bafd, i64 5, i64 5)
  store %struct.Memory* %call_40bafd, %struct.Memory** %MEMORY

  br label %block_.L_40bb02

  ; Code: .L_40bb02:	 RIP: 40bb02	 Bytes: 0
block_.L_40bb02:

  ; Code: movq $0x8a0a80, %rax	 RIP: 40bb02	 Bytes: 10
  %loadMem_40bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb02 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb02)
  store %struct.Memory* %call_40bb02, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40bb0c	 Bytes: 4
  %loadMem_40bb0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb0c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb0c)
  store %struct.Memory* %call_40bb0c, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40bb10	 Bytes: 8
  %loadMem_40bb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb10 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb10)
  store %struct.Memory* %call_40bb10, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edx	 RIP: 40bb18	 Bytes: 7
  %loadMem_40bb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb18 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb18)
  store %struct.Memory* %call_40bb18, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %esi	 RIP: 40bb1f	 Bytes: 7
  %loadMem_40bb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb1f = call %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb1f)
  store %struct.Memory* %call_40bb1f, %struct.Memory** %MEMORY

  ; Code: subl %edx, %esi	 RIP: 40bb26	 Bytes: 2
  %loadMem_40bb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb26 = call %struct.Memory* @routine_subl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb26)
  store %struct.Memory* %call_40bb26, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661c0	 RIP: 40bb28	 Bytes: 7
  %loadMem_40bb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb28 = call %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb28)
  store %struct.Memory* %call_40bb28, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40bb2f	 Bytes: 4
  %loadMem_40bb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb2f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb2f)
  store %struct.Memory* %call_40bb2f, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40bb33	 Bytes: 8
  %loadMem_40bb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb33 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb33)
  store %struct.Memory* %call_40bb33, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40bb3b	 Bytes: 7
  %loadMem_40bb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb3b = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb3b)
  store %struct.Memory* %call_40bb3b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40bb42	 Bytes: 3
  %loadMem_40bb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb42 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb42)
  store %struct.Memory* %call_40bb42, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40bb45	 Bytes: 4
  %loadMem_40bb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb45 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb45)
  store %struct.Memory* %call_40bb45, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40bb49	 Bytes: 3
  %loadMem_40bb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb49 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb49)
  store %struct.Memory* %call_40bb49, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %edx	 RIP: 40bb4c	 Bytes: 7
  %loadMem_40bb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb4c = call %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb4c)
  store %struct.Memory* %call_40bb4c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x633b40	 RIP: 40bb53	 Bytes: 7
  %loadMem_40bb53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb53 = call %struct.Memory* @routine_movl__edx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb53)
  store %struct.Memory* %call_40bb53, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %edx	 RIP: 40bb5a	 Bytes: 7
  %loadMem_40bb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb5a = call %struct.Memory* @routine_movl_0x63ae48___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb5a)
  store %struct.Memory* %call_40bb5a, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 40bb61	 Bytes: 3
  %loadMem_40bb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb61 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb61)
  store %struct.Memory* %call_40bb61, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x63ae48	 RIP: 40bb64	 Bytes: 7
  %loadMem_40bb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb64 = call %struct.Memory* @routine_movl__edx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb64)
  store %struct.Memory* %call_40bb64, %struct.Memory** %MEMORY

  ; Code: .L_40bb6b:	 RIP: 40bb6b	 Bytes: 0
  br label %block_.L_40bb6b
block_.L_40bb6b:

  ; Code: jmpq .L_40bb70	 RIP: 40bb6b	 Bytes: 5
  %loadMem_40bb6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb6b = call %struct.Memory* @routine_jmpq_.L_40bb70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb6b, i64 5, i64 5)
  store %struct.Memory* %call_40bb6b, %struct.Memory** %MEMORY

  br label %block_.L_40bb70

  ; Code: .L_40bb70:	 RIP: 40bb70	 Bytes: 0
block_.L_40bb70:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40bb70	 Bytes: 4
  %loadMem_40bb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb70 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb70)
  store %struct.Memory* %call_40bb70, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x866540(,%rax,4)	 RIP: 40bb74	 Bytes: 8
  %loadMem_40bb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb74 = call %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb74)
  store %struct.Memory* %call_40bb74, %struct.Memory** %MEMORY

  ; Code: jne .L_40bed4	 RIP: 40bb7c	 Bytes: 6
  %loadMem_40bb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb7c = call %struct.Memory* @routine_jne_.L_40bed4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb7c, i8* %BRANCH_TAKEN, i64 856, i64 6, i64 6)
  store %struct.Memory* %call_40bb7c, %struct.Memory** %MEMORY

  %loadBr_40bb7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bb7c = icmp eq i8 %loadBr_40bb7c, 1
  br i1 %cmpBr_40bb7c, label %block_.L_40bed4, label %block_40bb82

block_40bb82:
  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 40bb82	 Bytes: 4
  %loadMem_40bb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb82 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb82)
  store %struct.Memory* %call_40bb82, %struct.Memory** %MEMORY

  ; Code: je .L_40bc87	 RIP: 40bb86	 Bytes: 6
  %loadMem_40bb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb86 = call %struct.Memory* @routine_je_.L_40bc87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb86, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_40bb86, %struct.Memory** %MEMORY

  %loadBr_40bb86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bb86 = icmp eq i8 %loadBr_40bb86, 1
  br i1 %cmpBr_40bb86, label %block_.L_40bc87, label %block_40bb8c

block_40bb8c:
  ; Code: movq $0x8a0a80, %rax	 RIP: 40bb8c	 Bytes: 10
  %loadMem_40bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb8c = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb8c)
  store %struct.Memory* %call_40bb8c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 40bb96	 Bytes: 3
  %loadMem_40bb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb96 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb96)
  store %struct.Memory* %call_40bb96, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bb99	 Bytes: 4
  %loadMem_40bb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb99 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb99)
  store %struct.Memory* %call_40bb99, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rdx,4)	 RIP: 40bb9d	 Bytes: 7
  %loadMem_40bb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb9d = call %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb9d)
  store %struct.Memory* %call_40bb9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bba4	 Bytes: 4
  %loadMem_40bba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bba4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bba4)
  store %struct.Memory* %call_40bba4, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rdx,4)	 RIP: 40bba8	 Bytes: 11
  %loadMem_40bba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bba8 = call %struct.Memory* @routine_movl__0xd__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bba8)
  store %struct.Memory* %call_40bba8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bbb3	 Bytes: 4
  %loadMem_40bbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbb3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbb3)
  store %struct.Memory* %call_40bbb3, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40bbb7	 Bytes: 7
  %loadMem_40bbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbb7 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbb7)
  store %struct.Memory* %call_40bbb7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bbbe	 Bytes: 3
  %loadMem_40bbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbbe = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbbe)
  store %struct.Memory* %call_40bbbe, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40bbc1	 Bytes: 7
  %loadMem_40bbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbc1 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbc1)
  store %struct.Memory* %call_40bbc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bbc8	 Bytes: 4
  %loadMem_40bbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbc8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbc8)
  store %struct.Memory* %call_40bbc8, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40bbcc	 Bytes: 7
  %loadMem_40bbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbcc = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbcc)
  store %struct.Memory* %call_40bbcc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bbd3	 Bytes: 3
  %loadMem_40bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbd3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbd3)
  store %struct.Memory* %call_40bbd3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40bbd6	 Bytes: 7
  %loadMem_40bbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbd6 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbd6)
  store %struct.Memory* %call_40bbd6, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40bbdd	 Bytes: 7
  %loadMem_40bbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbdd = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbdd)
  store %struct.Memory* %call_40bbdd, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40bbe4	 Bytes: 3
  %loadMem_40bbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbe4 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbe4)
  store %struct.Memory* %call_40bbe4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40bbe7	 Bytes: 7
  %loadMem_40bbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbe7 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbe7)
  store %struct.Memory* %call_40bbe7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bbee	 Bytes: 4
  %loadMem_40bbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbee = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbee)
  store %struct.Memory* %call_40bbee, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rdx,4), %rdx	 RIP: 40bbf2	 Bytes: 8
  %loadMem_40bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbf2 = call %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbf2)
  store %struct.Memory* %call_40bbf2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x639120(,%rdx,4)	 RIP: 40bbfa	 Bytes: 11
  %loadMem_40bbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbfa = call %struct.Memory* @routine_movl__0x1__0x639120___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbfa)
  store %struct.Memory* %call_40bbfa, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bc05	 Bytes: 4
  %loadMem_40bc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc05 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc05)
  store %struct.Memory* %call_40bc05, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rdx,4), %ecx	 RIP: 40bc09	 Bytes: 7
  %loadMem_40bc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc09 = call %struct.Memory* @routine_movl_0x8a0cc0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc09)
  store %struct.Memory* %call_40bc09, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bc10	 Bytes: 7
  %loadMem_40bc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc10 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc10)
  store %struct.Memory* %call_40bc10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bc17	 Bytes: 7
  %loadMem_40bc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc17 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc17)
  store %struct.Memory* %call_40bc17, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40bc1e	 Bytes: 4
  %loadMem_40bc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc1e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc1e)
  store %struct.Memory* %call_40bc1e, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 40bc22	 Bytes: 7
  %loadMem_40bc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc22 = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc22)
  store %struct.Memory* %call_40bc22, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bc29	 Bytes: 3
  %loadMem_40bc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc29 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc29)
  store %struct.Memory* %call_40bc29, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bc2c	 Bytes: 4
  %loadMem_40bc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc2c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc2c)
  store %struct.Memory* %call_40bc2c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40bc30	 Bytes: 3
  %loadMem_40bc30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc30 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc30)
  store %struct.Memory* %call_40bc30, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bc33	 Bytes: 7
  %loadMem_40bc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc33 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc33)
  store %struct.Memory* %call_40bc33, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bc3a	 Bytes: 7
  %loadMem_40bc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc3a = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc3a)
  store %struct.Memory* %call_40bc3a, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab4, %ecx	 RIP: 40bc41	 Bytes: 7
  %loadMem_40bc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc41 = call %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc41)
  store %struct.Memory* %call_40bc41, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %esi	 RIP: 40bc48	 Bytes: 7
  %loadMem_40bc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc48 = call %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc48)
  store %struct.Memory* %call_40bc48, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %esi	 RIP: 40bc4f	 Bytes: 2
  %loadMem_40bc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc4f = call %struct.Memory* @routine_subl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc4f)
  store %struct.Memory* %call_40bc4f, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661c0	 RIP: 40bc51	 Bytes: 7
  %loadMem_40bc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc51 = call %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc51)
  store %struct.Memory* %call_40bc51, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 40bc58	 Bytes: 4
  %loadMem_40bc58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc58 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc58)
  store %struct.Memory* %call_40bc58, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %ecx	 RIP: 40bc5c	 Bytes: 7
  %loadMem_40bc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc5c = call %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc5c)
  store %struct.Memory* %call_40bc5c, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40bc63	 Bytes: 7
  %loadMem_40bc63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc63 = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc63)
  store %struct.Memory* %call_40bc63, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40bc6a	 Bytes: 7
  %loadMem_40bc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc6a = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc6a)
  store %struct.Memory* %call_40bc6a, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40bc71	 Bytes: 7
  %loadMem_40bc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc71 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc71)
  store %struct.Memory* %call_40bc71, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bc78	 Bytes: 3
  %loadMem_40bc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc78 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc78)
  store %struct.Memory* %call_40bc78, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40bc7b	 Bytes: 7
  %loadMem_40bc7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc7b = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc7b)
  store %struct.Memory* %call_40bc7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40bc82	 Bytes: 5
  %loadMem_40bc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc82 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc82, i64 2828, i64 5)
  store %struct.Memory* %call_40bc82, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40bc87:	 RIP: 40bc87	 Bytes: 0
block_.L_40bc87:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40bc87	 Bytes: 4
  %loadMem_40bc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc87 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc87)
  store %struct.Memory* %call_40bc87, %struct.Memory** %MEMORY

  ; Code: je .L_40be15	 RIP: 40bc8b	 Bytes: 6
  %loadMem_40bc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc8b = call %struct.Memory* @routine_je_.L_40be15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc8b, i8* %BRANCH_TAKEN, i64 394, i64 6, i64 6)
  store %struct.Memory* %call_40bc8b, %struct.Memory** %MEMORY

  %loadBr_40bc8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bc8b = icmp eq i8 %loadBr_40bc8b, 1
  br i1 %cmpBr_40bc8b, label %block_.L_40be15, label %block_40bc91

block_40bc91:
  ; Code: movl $0x1, %edi	 RIP: 40bc91	 Bytes: 5
  %loadMem_40bc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc91 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc91)
  store %struct.Memory* %call_40bc91, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 40bc96	 Bytes: 2
  %loadMem_40bc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc96 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc96)
  store %struct.Memory* %call_40bc96, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40bc98	 Bytes: 4
  %loadMem_40bc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc98 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc98)
  store %struct.Memory* %call_40bc98, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40bc9c	 Bytes: 7
  %loadMem_40bc9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc9c = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc9c)
  store %struct.Memory* %call_40bc9c, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bca3	 Bytes: 7
  %loadMem_40bca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bca3 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bca3)
  store %struct.Memory* %call_40bca3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bcaa	 Bytes: 7
  %loadMem_40bcaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcaa = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcaa)
  store %struct.Memory* %call_40bcaa, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bcb1	 Bytes: 3
  %loadMem_40bcb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcb1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcb1)
  store %struct.Memory* %call_40bcb1, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bcb4	 Bytes: 3
  %loadMem_40bcb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcb4 = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcb4)
  store %struct.Memory* %call_40bcb4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40bcb7	 Bytes: 3
  %loadMem_40bcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcb7 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcb7)
  store %struct.Memory* %call_40bcb7, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40bcba	 Bytes: 7
  %loadMem_40bcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcba = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcba)
  store %struct.Memory* %call_40bcba, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bcc1	 Bytes: 7
  %loadMem_40bcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcc1 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcc1)
  store %struct.Memory* %call_40bcc1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bcc8	 Bytes: 7
  %loadMem_40bcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcc8 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcc8)
  store %struct.Memory* %call_40bcc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40bccf	 Bytes: 4
  %loadMem_40bccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bccf = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bccf)
  store %struct.Memory* %call_40bccf, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40bcd3	 Bytes: 7
  %loadMem_40bcd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcd3 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcd3)
  store %struct.Memory* %call_40bcd3, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bcda	 Bytes: 7
  %loadMem_40bcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcda = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcda)
  store %struct.Memory* %call_40bcda, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bce1	 Bytes: 7
  %loadMem_40bce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bce1 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bce1)
  store %struct.Memory* %call_40bce1, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab8, %ecx	 RIP: 40bce8	 Bytes: 7
  %loadMem_40bce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bce8 = call %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bce8)
  store %struct.Memory* %call_40bce8, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %edx	 RIP: 40bcef	 Bytes: 7
  %loadMem_40bcef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcef = call %struct.Memory* @routine_movl_0x8661c0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcef)
  store %struct.Memory* %call_40bcef, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %edx	 RIP: 40bcf6	 Bytes: 2
  %loadMem_40bcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcf6 = call %struct.Memory* @routine_subl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcf6)
  store %struct.Memory* %call_40bcf6, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8661c0	 RIP: 40bcf8	 Bytes: 7
  %loadMem_40bcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcf8 = call %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcf8)
  store %struct.Memory* %call_40bcf8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40bcff	 Bytes: 4
  %loadMem_40bcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcff = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcff)
  store %struct.Memory* %call_40bcff, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rax,4)	 RIP: 40bd03	 Bytes: 11
  %loadMem_40bd03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd03 = call %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd03)
  store %struct.Memory* %call_40bd03, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40bd0e	 Bytes: 4
  %loadMem_40bd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd0e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd0e)
  store %struct.Memory* %call_40bd0e, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40bd12	 Bytes: 11
  %loadMem_40bd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd12 = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd12)
  store %struct.Memory* %call_40bd12, %struct.Memory** %MEMORY

  ; Code: callq .addHolding	 RIP: 40bd1d	 Bytes: 5
  %loadMem1_40bd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40bd1d = call %struct.Memory* @routine_callq_.addHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40bd1d, i64 -38957, i64 5, i64 5)
  store %struct.Memory* %call1_40bd1d, %struct.Memory** %MEMORY

  %loadMem2_40bd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40bd1d = load i64, i64* %3
  %call2_40bd1d = call %struct.Memory* @sub_4024f0.addHolding(%struct.State* %0, i64  %loadPC_40bd1d, %struct.Memory* %loadMem2_40bd1d)
  store %struct.Memory* %call2_40bd1d, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40bd22	 Bytes: 10
  %loadMem_40bd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd22 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd22)
  store %struct.Memory* %call_40bd22, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %ecx	 RIP: 40bd2c	 Bytes: 7
  %loadMem_40bd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd2c = call %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd2c)
  store %struct.Memory* %call_40bd2c, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40bd33	 Bytes: 3
  %loadMem_40bd33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd33 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd33)
  store %struct.Memory* %call_40bd33, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x63ae48	 RIP: 40bd36	 Bytes: 7
  %loadMem_40bd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd36 = call %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd36)
  store %struct.Memory* %call_40bd36, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bd3d	 Bytes: 3
  %loadMem_40bd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd3d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd3d)
  store %struct.Memory* %call_40bd3d, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bd40	 Bytes: 3
  %loadMem_40bd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd40 = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd40)
  store %struct.Memory* %call_40bd40, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40bd43	 Bytes: 3
  %loadMem_40bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd43 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd43)
  store %struct.Memory* %call_40bd43, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%r8,4)	 RIP: 40bd46	 Bytes: 12
  %loadMem_40bd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd46 = call %struct.Memory* @routine_movl__0xd__0x866540___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd46)
  store %struct.Memory* %call_40bd46, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40bd52	 Bytes: 4
  %loadMem_40bd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd52 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd52)
  store %struct.Memory* %call_40bd52, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40bd56	 Bytes: 8
  %loadMem_40bd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd56 = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd56)
  store %struct.Memory* %call_40bd56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bd5e	 Bytes: 3
  %loadMem_40bd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd5e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd5e)
  store %struct.Memory* %call_40bd5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40bd61	 Bytes: 8
  %loadMem_40bd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd61 = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd61)
  store %struct.Memory* %call_40bd61, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %r8	 RIP: 40bd69	 Bytes: 4
  %loadMem_40bd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd69 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd69)
  store %struct.Memory* %call_40bd69, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40bd6d	 Bytes: 8
  %loadMem_40bd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd6d = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd6d)
  store %struct.Memory* %call_40bd6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bd75	 Bytes: 3
  %loadMem_40bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd75 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd75)
  store %struct.Memory* %call_40bd75, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40bd78	 Bytes: 8
  %loadMem_40bd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd78 = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd78)
  store %struct.Memory* %call_40bd78, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bd80	 Bytes: 3
  %loadMem_40bd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd80 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd80)
  store %struct.Memory* %call_40bd80, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bd83	 Bytes: 3
  %loadMem_40bd83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd83 = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd83)
  store %struct.Memory* %call_40bd83, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40bd86	 Bytes: 3
  %loadMem_40bd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd86 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd86)
  store %struct.Memory* %call_40bd86, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40bd89	 Bytes: 8
  %loadMem_40bd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd89 = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd89)
  store %struct.Memory* %call_40bd89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bd91	 Bytes: 3
  %loadMem_40bd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd91 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd91)
  store %struct.Memory* %call_40bd91, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40bd94	 Bytes: 8
  %loadMem_40bd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd94 = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd94)
  store %struct.Memory* %call_40bd94, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40bd9c	 Bytes: 7
  %loadMem_40bd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd9c = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd9c)
  store %struct.Memory* %call_40bd9c, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40bda3	 Bytes: 3
  %loadMem_40bda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bda3 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bda3)
  store %struct.Memory* %call_40bda3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40bda6	 Bytes: 7
  %loadMem_40bda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bda6 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bda6)
  store %struct.Memory* %call_40bda6, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bdad	 Bytes: 3
  %loadMem_40bdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdad = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdad)
  store %struct.Memory* %call_40bdad, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bdb0	 Bytes: 3
  %loadMem_40bdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb0 = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb0)
  store %struct.Memory* %call_40bdb0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40bdb3	 Bytes: 3
  %loadMem_40bdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb3 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb3)
  store %struct.Memory* %call_40bdb3, %struct.Memory** %MEMORY

  ; Code: movl 0x8662f0(,%r8,4), %ecx	 RIP: 40bdb6	 Bytes: 8
  %loadMem_40bdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb6 = call %struct.Memory* @routine_movl_0x8662f0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb6)
  store %struct.Memory* %call_40bdb6, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %r8	 RIP: 40bdbe	 Bytes: 8
  %loadMem_40bdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdbe = call %struct.Memory* @routine_movslq_0x886bc0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdbe)
  store %struct.Memory* %call_40bdbe, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 40bdc6	 Bytes: 4
  %loadMem_40bdc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdc6 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdc6)
  store %struct.Memory* %call_40bdc6, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 40bdca	 Bytes: 3
  %loadMem_40bdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdca = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdca)
  store %struct.Memory* %call_40bdca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 40bdcd	 Bytes: 2
  %loadMem_40bdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdcd = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdcd)
  store %struct.Memory* %call_40bdcd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bdcf	 Bytes: 3
  %loadMem_40bdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdcf = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdcf)
  store %struct.Memory* %call_40bdcf, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bdd2	 Bytes: 3
  %loadMem_40bdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd2 = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd2)
  store %struct.Memory* %call_40bdd2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40bdd5	 Bytes: 3
  %loadMem_40bdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd5 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd5)
  store %struct.Memory* %call_40bdd5, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40bdd8	 Bytes: 8
  %loadMem_40bdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd8 = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd8)
  store %struct.Memory* %call_40bdd8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f2f0(,%rax,4)	 RIP: 40bde0	 Bytes: 11
  %loadMem_40bde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bde0 = call %struct.Memory* @routine_movl__0x0__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bde0)
  store %struct.Memory* %call_40bde0, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40bdeb	 Bytes: 3
  %loadMem_40bdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdeb = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdeb)
  store %struct.Memory* %call_40bdeb, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %ecx	 RIP: 40bdee	 Bytes: 3
  %loadMem_40bdee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdee = call %struct.Memory* @routine_subl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdee)
  store %struct.Memory* %call_40bdee, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40bdf1	 Bytes: 3
  %loadMem_40bdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdf1 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdf1)
  store %struct.Memory* %call_40bdf1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rax,4)	 RIP: 40bdf4	 Bytes: 11
  %loadMem_40bdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdf4 = call %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdf4)
  store %struct.Memory* %call_40bdf4, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40bdff	 Bytes: 7
  %loadMem_40bdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdff = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdff)
  store %struct.Memory* %call_40bdff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40be06	 Bytes: 3
  %loadMem_40be06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be06 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be06)
  store %struct.Memory* %call_40be06, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40be09	 Bytes: 7
  %loadMem_40be09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be09 = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be09)
  store %struct.Memory* %call_40be09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40be10	 Bytes: 5
  %loadMem_40be10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be10 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be10, i64 2430, i64 5)
  store %struct.Memory* %call_40be10, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40be15:	 RIP: 40be15	 Bytes: 0
block_.L_40be15:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 40be15	 Bytes: 3
  %loadMem_40be15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be15 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be15)
  store %struct.Memory* %call_40be15, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40be18	 Bytes: 3
  %loadMem_40be18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be18 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be18)
  store %struct.Memory* %call_40be18, %struct.Memory** %MEMORY

  ; Code: addl $0x18, %ecx	 RIP: 40be1b	 Bytes: 3
  %loadMem_40be1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be1b = call %struct.Memory* @routine_addl__0x18___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be1b)
  store %struct.Memory* %call_40be1b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 40be1e	 Bytes: 2
  %loadMem_40be1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be1e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be1e)
  store %struct.Memory* %call_40be1e, %struct.Memory** %MEMORY

  ; Code: jne .L_40be33	 RIP: 40be20	 Bytes: 6
  %loadMem_40be20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be20 = call %struct.Memory* @routine_jne_.L_40be33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be20, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_40be20, %struct.Memory** %MEMORY

  %loadBr_40be20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40be20 = icmp eq i8 %loadBr_40be20, 1
  br i1 %cmpBr_40be20, label %block_.L_40be33, label %block_40be26

block_40be26:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 40be26	 Bytes: 3
  %loadMem_40be26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be26 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be26)
  store %struct.Memory* %call_40be26, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %eax	 RIP: 40be29	 Bytes: 3
  %loadMem_40be29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be29 = call %struct.Memory* @routine_addl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be29)
  store %struct.Memory* %call_40be29, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x881de4	 RIP: 40be2c	 Bytes: 7
  %loadMem_40be2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be2c = call %struct.Memory* @routine_movl__eax__0x881de4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be2c)
  store %struct.Memory* %call_40be2c, %struct.Memory** %MEMORY

  ; Code: .L_40be33:	 RIP: 40be33	 Bytes: 0
  br label %block_.L_40be33
block_.L_40be33:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40be33	 Bytes: 4
  %loadMem_40be33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be33 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be33)
  store %struct.Memory* %call_40be33, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40be37	 Bytes: 7
  %loadMem_40be37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be37 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be37)
  store %struct.Memory* %call_40be37, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40be3e	 Bytes: 7
  %loadMem_40be3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be3e = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be3e)
  store %struct.Memory* %call_40be3e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40be45	 Bytes: 7
  %loadMem_40be45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be45 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be45)
  store %struct.Memory* %call_40be45, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40be4c	 Bytes: 4
  %loadMem_40be4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be4c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be4c)
  store %struct.Memory* %call_40be4c, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40be50	 Bytes: 7
  %loadMem_40be50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be50 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be50)
  store %struct.Memory* %call_40be50, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40be57	 Bytes: 7
  %loadMem_40be57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be57 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be57)
  store %struct.Memory* %call_40be57, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40be5e	 Bytes: 7
  %loadMem_40be5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be5e = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be5e)
  store %struct.Memory* %call_40be5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40be65	 Bytes: 4
  %loadMem_40be65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be65 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be65)
  store %struct.Memory* %call_40be65, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x866540(,%rax,4)	 RIP: 40be69	 Bytes: 11
  %loadMem_40be69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be69 = call %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be69)
  store %struct.Memory* %call_40be69, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40be74	 Bytes: 4
  %loadMem_40be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be74 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be74)
  store %struct.Memory* %call_40be74, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40be78	 Bytes: 11
  %loadMem_40be78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be78 = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be78)
  store %struct.Memory* %call_40be78, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40be83	 Bytes: 4
  %loadMem_40be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be83 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be83)
  store %struct.Memory* %call_40be83, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40be87	 Bytes: 7
  %loadMem_40be87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be87 = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be87)
  store %struct.Memory* %call_40be87, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40be8e	 Bytes: 3
  %loadMem_40be8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be8e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be8e)
  store %struct.Memory* %call_40be8e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40be91	 Bytes: 7
  %loadMem_40be91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be91 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be91)
  store %struct.Memory* %call_40be91, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40be98	 Bytes: 4
  %loadMem_40be98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be98 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be98)
  store %struct.Memory* %call_40be98, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40be9c	 Bytes: 7
  %loadMem_40be9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be9c = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be9c)
  store %struct.Memory* %call_40be9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bea3	 Bytes: 3
  %loadMem_40bea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bea3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bea3)
  store %struct.Memory* %call_40bea3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40bea6	 Bytes: 7
  %loadMem_40bea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bea6 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bea6)
  store %struct.Memory* %call_40bea6, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40bead	 Bytes: 7
  %loadMem_40bead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bead = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bead)
  store %struct.Memory* %call_40bead, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40beb4	 Bytes: 3
  %loadMem_40beb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beb4 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beb4)
  store %struct.Memory* %call_40beb4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40beb7	 Bytes: 7
  %loadMem_40beb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beb7 = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beb7)
  store %struct.Memory* %call_40beb7, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40bebe	 Bytes: 7
  %loadMem_40bebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bebe = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bebe)
  store %struct.Memory* %call_40bebe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bec5	 Bytes: 3
  %loadMem_40bec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bec5 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bec5)
  store %struct.Memory* %call_40bec5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40bec8	 Bytes: 7
  %loadMem_40bec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bec8 = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bec8)
  store %struct.Memory* %call_40bec8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40becf	 Bytes: 5
  %loadMem_40becf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40becf = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40becf, i64 2239, i64 5)
  store %struct.Memory* %call_40becf, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40bed4:	 RIP: 40bed4	 Bytes: 0
block_.L_40bed4:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40bed4	 Bytes: 4
  %loadMem_40bed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bed4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bed4)
  store %struct.Memory* %call_40bed4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x866540(,%rax,4)	 RIP: 40bed8	 Bytes: 8
  %loadMem_40bed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bed8 = call %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bed8)
  store %struct.Memory* %call_40bed8, %struct.Memory** %MEMORY

  ; Code: jne .L_40c23b	 RIP: 40bee0	 Bytes: 6
  %loadMem_40bee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bee0 = call %struct.Memory* @routine_jne_.L_40c23b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bee0, i8* %BRANCH_TAKEN, i64 859, i64 6, i64 6)
  store %struct.Memory* %call_40bee0, %struct.Memory** %MEMORY

  %loadBr_40bee0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bee0 = icmp eq i8 %loadBr_40bee0, 1
  br i1 %cmpBr_40bee0, label %block_.L_40c23b, label %block_40bee6

block_40bee6:
  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 40bee6	 Bytes: 4
  %loadMem_40bee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bee6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bee6)
  store %struct.Memory* %call_40bee6, %struct.Memory** %MEMORY

  ; Code: je .L_40bfeb	 RIP: 40beea	 Bytes: 6
  %loadMem_40beea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beea = call %struct.Memory* @routine_je_.L_40bfeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beea, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_40beea, %struct.Memory** %MEMORY

  %loadBr_40beea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40beea = icmp eq i8 %loadBr_40beea, 1
  br i1 %cmpBr_40beea, label %block_.L_40bfeb, label %block_40bef0

block_40bef0:
  ; Code: movq $0x8a0a80, %rax	 RIP: 40bef0	 Bytes: 10
  %loadMem_40bef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bef0 = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bef0)
  store %struct.Memory* %call_40bef0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 40befa	 Bytes: 3
  %loadMem_40befa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40befa = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40befa)
  store %struct.Memory* %call_40befa, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40befd	 Bytes: 4
  %loadMem_40befd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40befd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40befd)
  store %struct.Memory* %call_40befd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x866540(,%rdx,4)	 RIP: 40bf01	 Bytes: 7
  %loadMem_40bf01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf01 = call %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf01)
  store %struct.Memory* %call_40bf01, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bf08	 Bytes: 4
  %loadMem_40bf08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf08 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf08)
  store %struct.Memory* %call_40bf08, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rdx,4)	 RIP: 40bf0c	 Bytes: 11
  %loadMem_40bf0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf0c = call %struct.Memory* @routine_movl__0xd__0x866540___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf0c)
  store %struct.Memory* %call_40bf0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bf17	 Bytes: 4
  %loadMem_40bf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf17 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf17)
  store %struct.Memory* %call_40bf17, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40bf1b	 Bytes: 7
  %loadMem_40bf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf1b = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf1b)
  store %struct.Memory* %call_40bf1b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bf22	 Bytes: 3
  %loadMem_40bf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf22 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf22)
  store %struct.Memory* %call_40bf22, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40bf25	 Bytes: 7
  %loadMem_40bf25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf25 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf25)
  store %struct.Memory* %call_40bf25, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bf2c	 Bytes: 4
  %loadMem_40bf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf2c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf2c)
  store %struct.Memory* %call_40bf2c, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rdx,4), %ecx	 RIP: 40bf30	 Bytes: 7
  %loadMem_40bf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf30 = call %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf30)
  store %struct.Memory* %call_40bf30, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bf37	 Bytes: 3
  %loadMem_40bf37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf37 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf37)
  store %struct.Memory* %call_40bf37, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rdx,4)	 RIP: 40bf3a	 Bytes: 7
  %loadMem_40bf3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf3a = call %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf3a)
  store %struct.Memory* %call_40bf3a, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40bf41	 Bytes: 7
  %loadMem_40bf41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf41 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf41)
  store %struct.Memory* %call_40bf41, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40bf48	 Bytes: 3
  %loadMem_40bf48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf48 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf48)
  store %struct.Memory* %call_40bf48, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40bf4b	 Bytes: 7
  %loadMem_40bf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf4b = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf4b)
  store %struct.Memory* %call_40bf4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bf52	 Bytes: 4
  %loadMem_40bf52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf52 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf52)
  store %struct.Memory* %call_40bf52, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rdx,4), %rdx	 RIP: 40bf56	 Bytes: 8
  %loadMem_40bf56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf56 = call %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf56)
  store %struct.Memory* %call_40bf56, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x639120(,%rdx,4)	 RIP: 40bf5e	 Bytes: 11
  %loadMem_40bf5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf5e = call %struct.Memory* @routine_movl__0x1__0x639120___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf5e)
  store %struct.Memory* %call_40bf5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40bf69	 Bytes: 4
  %loadMem_40bf69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf69 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf69)
  store %struct.Memory* %call_40bf69, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rdx,4), %ecx	 RIP: 40bf6d	 Bytes: 7
  %loadMem_40bf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf6d = call %struct.Memory* @routine_movl_0x8a0f00___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf6d)
  store %struct.Memory* %call_40bf6d, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bf74	 Bytes: 7
  %loadMem_40bf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf74 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf74)
  store %struct.Memory* %call_40bf74, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bf7b	 Bytes: 7
  %loadMem_40bf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf7b = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf7b)
  store %struct.Memory* %call_40bf7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40bf82	 Bytes: 4
  %loadMem_40bf82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf82 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf82)
  store %struct.Memory* %call_40bf82, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 40bf86	 Bytes: 7
  %loadMem_40bf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf86 = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf86)
  store %struct.Memory* %call_40bf86, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bf8d	 Bytes: 3
  %loadMem_40bf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf8d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf8d)
  store %struct.Memory* %call_40bf8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40bf90	 Bytes: 4
  %loadMem_40bf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf90 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf90)
  store %struct.Memory* %call_40bf90, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 40bf94	 Bytes: 3
  %loadMem_40bf94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf94 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf94)
  store %struct.Memory* %call_40bf94, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40bf97	 Bytes: 7
  %loadMem_40bf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf97 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf97)
  store %struct.Memory* %call_40bf97, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40bf9e	 Bytes: 7
  %loadMem_40bf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf9e = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf9e)
  store %struct.Memory* %call_40bf9e, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab8, %ecx	 RIP: 40bfa5	 Bytes: 7
  %loadMem_40bfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfa5 = call %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfa5)
  store %struct.Memory* %call_40bfa5, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %esi	 RIP: 40bfac	 Bytes: 7
  %loadMem_40bfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfac = call %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfac)
  store %struct.Memory* %call_40bfac, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %esi	 RIP: 40bfb3	 Bytes: 2
  %loadMem_40bfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfb3 = call %struct.Memory* @routine_subl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfb3)
  store %struct.Memory* %call_40bfb3, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661c0	 RIP: 40bfb5	 Bytes: 7
  %loadMem_40bfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfb5 = call %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfb5)
  store %struct.Memory* %call_40bfb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 40bfbc	 Bytes: 4
  %loadMem_40bfbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfbc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfbc)
  store %struct.Memory* %call_40bfbc, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %ecx	 RIP: 40bfc0	 Bytes: 7
  %loadMem_40bfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfc0 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfc0)
  store %struct.Memory* %call_40bfc0, %struct.Memory** %MEMORY

  ; Code: addl 0x8661c0, %ecx	 RIP: 40bfc7	 Bytes: 7
  %loadMem_40bfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfc7 = call %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfc7)
  store %struct.Memory* %call_40bfc7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661c0	 RIP: 40bfce	 Bytes: 7
  %loadMem_40bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfce = call %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfce)
  store %struct.Memory* %call_40bfce, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40bfd5	 Bytes: 7
  %loadMem_40bfd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfd5 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfd5)
  store %struct.Memory* %call_40bfd5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bfdc	 Bytes: 3
  %loadMem_40bfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfdc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfdc)
  store %struct.Memory* %call_40bfdc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40bfdf	 Bytes: 7
  %loadMem_40bfdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfdf = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfdf)
  store %struct.Memory* %call_40bfdf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40bfe6	 Bytes: 5
  %loadMem_40bfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfe6 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfe6, i64 1960, i64 5)
  store %struct.Memory* %call_40bfe6, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40bfeb:	 RIP: 40bfeb	 Bytes: 0
block_.L_40bfeb:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40bfeb	 Bytes: 4
  %loadMem_40bfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfeb = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfeb)
  store %struct.Memory* %call_40bfeb, %struct.Memory** %MEMORY

  ; Code: je .L_40c17c	 RIP: 40bfef	 Bytes: 6
  %loadMem_40bfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfef = call %struct.Memory* @routine_je_.L_40c17c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfef, i8* %BRANCH_TAKEN, i64 397, i64 6, i64 6)
  store %struct.Memory* %call_40bfef, %struct.Memory** %MEMORY

  %loadBr_40bfef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bfef = icmp eq i8 %loadBr_40bfef, 1
  br i1 %cmpBr_40bfef, label %block_.L_40c17c, label %block_40bff5

block_40bff5:
  ; Code: movl $0x2, %edi	 RIP: 40bff5	 Bytes: 5
  %loadMem_40bff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bff5 = call %struct.Memory* @routine_movl__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bff5)
  store %struct.Memory* %call_40bff5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 40bffa	 Bytes: 5
  %loadMem_40bffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bffa = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bffa)
  store %struct.Memory* %call_40bffa, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40bfff	 Bytes: 4
  %loadMem_40bfff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfff = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfff)
  store %struct.Memory* %call_40bfff, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40c003	 Bytes: 7
  %loadMem_40c003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c003 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c003)
  store %struct.Memory* %call_40c003, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40c00a	 Bytes: 7
  %loadMem_40c00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c00a = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c00a)
  store %struct.Memory* %call_40c00a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40c011	 Bytes: 7
  %loadMem_40c011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c011 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c011)
  store %struct.Memory* %call_40c011, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c018	 Bytes: 3
  %loadMem_40c018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c018 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c018)
  store %struct.Memory* %call_40c018, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c01b	 Bytes: 3
  %loadMem_40c01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c01b = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c01b)
  store %struct.Memory* %call_40c01b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40c01e	 Bytes: 3
  %loadMem_40c01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c01e = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c01e)
  store %struct.Memory* %call_40c01e, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0cc0(,%rax,4), %ecx	 RIP: 40c021	 Bytes: 7
  %loadMem_40c021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c021 = call %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c021)
  store %struct.Memory* %call_40c021, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40c028	 Bytes: 7
  %loadMem_40c028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c028 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c028)
  store %struct.Memory* %call_40c028, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40c02f	 Bytes: 7
  %loadMem_40c02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c02f = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c02f)
  store %struct.Memory* %call_40c02f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c036	 Bytes: 4
  %loadMem_40c036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c036 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c036)
  store %struct.Memory* %call_40c036, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40c03a	 Bytes: 7
  %loadMem_40c03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c03a = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c03a)
  store %struct.Memory* %call_40c03a, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40c041	 Bytes: 7
  %loadMem_40c041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c041 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c041)
  store %struct.Memory* %call_40c041, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40c048	 Bytes: 7
  %loadMem_40c048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c048 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c048)
  store %struct.Memory* %call_40c048, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab4, %ecx	 RIP: 40c04f	 Bytes: 7
  %loadMem_40c04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c04f = call %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c04f)
  store %struct.Memory* %call_40c04f, %struct.Memory** %MEMORY

  ; Code: movl 0x8661c0, %edx	 RIP: 40c056	 Bytes: 7
  %loadMem_40c056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c056 = call %struct.Memory* @routine_movl_0x8661c0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c056)
  store %struct.Memory* %call_40c056, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %edx	 RIP: 40c05d	 Bytes: 2
  %loadMem_40c05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c05d = call %struct.Memory* @routine_subl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c05d)
  store %struct.Memory* %call_40c05d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8661c0	 RIP: 40c05f	 Bytes: 7
  %loadMem_40c05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c05f = call %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c05f)
  store %struct.Memory* %call_40c05f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c066	 Bytes: 4
  %loadMem_40c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c066 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c066)
  store %struct.Memory* %call_40c066, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rax,4)	 RIP: 40c06a	 Bytes: 11
  %loadMem_40c06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c06a = call %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c06a)
  store %struct.Memory* %call_40c06a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c075	 Bytes: 4
  %loadMem_40c075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c075 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c075)
  store %struct.Memory* %call_40c075, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40c079	 Bytes: 11
  %loadMem_40c079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c079 = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c079)
  store %struct.Memory* %call_40c079, %struct.Memory** %MEMORY

  ; Code: callq .addHolding	 RIP: 40c084	 Bytes: 5
  %loadMem1_40c084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40c084 = call %struct.Memory* @routine_callq_.addHolding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40c084, i64 -39828, i64 5, i64 5)
  store %struct.Memory* %call1_40c084, %struct.Memory** %MEMORY

  %loadMem2_40c084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40c084 = load i64, i64* %3
  %call2_40c084 = call %struct.Memory* @sub_4024f0.addHolding(%struct.State* %0, i64  %loadPC_40c084, %struct.Memory* %loadMem2_40c084)
  store %struct.Memory* %call2_40c084, %struct.Memory** %MEMORY

  ; Code: movq $0x880b20, %rax	 RIP: 40c089	 Bytes: 10
  %loadMem_40c089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c089 = call %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c089)
  store %struct.Memory* %call_40c089, %struct.Memory** %MEMORY

  ; Code: movl 0x63ae48, %ecx	 RIP: 40c093	 Bytes: 7
  %loadMem_40c093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c093 = call %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c093)
  store %struct.Memory* %call_40c093, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 40c09a	 Bytes: 3
  %loadMem_40c09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c09a = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c09a)
  store %struct.Memory* %call_40c09a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x63ae48	 RIP: 40c09d	 Bytes: 7
  %loadMem_40c09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c09d = call %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c09d)
  store %struct.Memory* %call_40c09d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c0a4	 Bytes: 3
  %loadMem_40c0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0a4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0a4)
  store %struct.Memory* %call_40c0a4, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c0a7	 Bytes: 3
  %loadMem_40c0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0a7 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0a7)
  store %struct.Memory* %call_40c0a7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40c0aa	 Bytes: 3
  %loadMem_40c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0aa = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0aa)
  store %struct.Memory* %call_40c0aa, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%r8,4)	 RIP: 40c0ad	 Bytes: 12
  %loadMem_40c0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0ad = call %struct.Memory* @routine_movl__0xd__0x866540___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0ad)
  store %struct.Memory* %call_40c0ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 40c0b9	 Bytes: 4
  %loadMem_40c0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0b9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0b9)
  store %struct.Memory* %call_40c0b9, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40c0bd	 Bytes: 8
  %loadMem_40c0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0bd = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0bd)
  store %struct.Memory* %call_40c0bd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c0c5	 Bytes: 3
  %loadMem_40c0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0c5 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0c5)
  store %struct.Memory* %call_40c0c5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40c0c8	 Bytes: 8
  %loadMem_40c0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0c8 = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0c8)
  store %struct.Memory* %call_40c0c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %r8	 RIP: 40c0d0	 Bytes: 4
  %loadMem_40c0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0d0 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0d0)
  store %struct.Memory* %call_40c0d0, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40c0d4	 Bytes: 8
  %loadMem_40c0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0d4 = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0d4)
  store %struct.Memory* %call_40c0d4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c0dc	 Bytes: 3
  %loadMem_40c0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0dc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0dc)
  store %struct.Memory* %call_40c0dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40c0df	 Bytes: 8
  %loadMem_40c0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0df = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0df)
  store %struct.Memory* %call_40c0df, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c0e7	 Bytes: 3
  %loadMem_40c0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0e7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0e7)
  store %struct.Memory* %call_40c0e7, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c0ea	 Bytes: 3
  %loadMem_40c0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0ea = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0ea)
  store %struct.Memory* %call_40c0ea, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40c0ed	 Bytes: 3
  %loadMem_40c0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0ed = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0ed)
  store %struct.Memory* %call_40c0ed, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%r8,4), %ecx	 RIP: 40c0f0	 Bytes: 8
  %loadMem_40c0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0f0 = call %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0f0)
  store %struct.Memory* %call_40c0f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c0f8	 Bytes: 3
  %loadMem_40c0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0f8 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0f8)
  store %struct.Memory* %call_40c0f8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%r8,4)	 RIP: 40c0fb	 Bytes: 8
  %loadMem_40c0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0fb = call %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0fb)
  store %struct.Memory* %call_40c0fb, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40c103	 Bytes: 7
  %loadMem_40c103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c103 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c103)
  store %struct.Memory* %call_40c103, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40c10a	 Bytes: 3
  %loadMem_40c10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c10a = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c10a)
  store %struct.Memory* %call_40c10a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40c10d	 Bytes: 7
  %loadMem_40c10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c10d = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c10d)
  store %struct.Memory* %call_40c10d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c114	 Bytes: 3
  %loadMem_40c114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c114 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c114)
  store %struct.Memory* %call_40c114, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c117	 Bytes: 3
  %loadMem_40c117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c117 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c117)
  store %struct.Memory* %call_40c117, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 40c11a	 Bytes: 3
  %loadMem_40c11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c11a = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c11a)
  store %struct.Memory* %call_40c11a, %struct.Memory** %MEMORY

  ; Code: movl 0x8662f0(,%r8,4), %ecx	 RIP: 40c11d	 Bytes: 8
  %loadMem_40c11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c11d = call %struct.Memory* @routine_movl_0x8662f0___r8_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c11d)
  store %struct.Memory* %call_40c11d, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %r8	 RIP: 40c125	 Bytes: 8
  %loadMem_40c125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c125 = call %struct.Memory* @routine_movslq_0x886bc0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c125)
  store %struct.Memory* %call_40c125, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 40c12d	 Bytes: 4
  %loadMem_40c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c12d = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c12d)
  store %struct.Memory* %call_40c12d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 40c131	 Bytes: 3
  %loadMem_40c131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c131 = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c131)
  store %struct.Memory* %call_40c131, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 40c134	 Bytes: 2
  %loadMem_40c134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c134 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c134)
  store %struct.Memory* %call_40c134, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c136	 Bytes: 3
  %loadMem_40c136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c136 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c136)
  store %struct.Memory* %call_40c136, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c139	 Bytes: 3
  %loadMem_40c139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c139 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c139)
  store %struct.Memory* %call_40c139, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40c13c	 Bytes: 3
  %loadMem_40c13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c13c = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c13c)
  store %struct.Memory* %call_40c13c, %struct.Memory** %MEMORY

  ; Code: movslq 0x8662f0(,%rax,4), %rax	 RIP: 40c13f	 Bytes: 8
  %loadMem_40c13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c13f = call %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c13f)
  store %struct.Memory* %call_40c13f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f2f0(,%rax,4)	 RIP: 40c147	 Bytes: 11
  %loadMem_40c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c147 = call %struct.Memory* @routine_movl__0x0__0x85f2f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c147)
  store %struct.Memory* %call_40c147, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40c152	 Bytes: 3
  %loadMem_40c152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c152 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c152)
  store %struct.Memory* %call_40c152, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 40c155	 Bytes: 3
  %loadMem_40c155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c155 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c155)
  store %struct.Memory* %call_40c155, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40c158	 Bytes: 3
  %loadMem_40c158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c158 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c158)
  store %struct.Memory* %call_40c158, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662f0(,%rax,4)	 RIP: 40c15b	 Bytes: 11
  %loadMem_40c15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c15b = call %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c15b)
  store %struct.Memory* %call_40c15b, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40c166	 Bytes: 7
  %loadMem_40c166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c166 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c166)
  store %struct.Memory* %call_40c166, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c16d	 Bytes: 3
  %loadMem_40c16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c16d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c16d)
  store %struct.Memory* %call_40c16d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40c170	 Bytes: 7
  %loadMem_40c170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c170 = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c170)
  store %struct.Memory* %call_40c170, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c177	 Bytes: 5
  %loadMem_40c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c177 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c177, i64 1559, i64 5)
  store %struct.Memory* %call_40c177, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c17c:	 RIP: 40c17c	 Bytes: 0
block_.L_40c17c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 40c17c	 Bytes: 3
  %loadMem_40c17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c17c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c17c)
  store %struct.Memory* %call_40c17c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40c17f	 Bytes: 3
  %loadMem_40c17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c17f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c17f)
  store %struct.Memory* %call_40c17f, %struct.Memory** %MEMORY

  ; Code: subl $0x18, %ecx	 RIP: 40c182	 Bytes: 3
  %loadMem_40c182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c182 = call %struct.Memory* @routine_subl__0x18___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c182)
  store %struct.Memory* %call_40c182, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 40c185	 Bytes: 2
  %loadMem_40c185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c185 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c185)
  store %struct.Memory* %call_40c185, %struct.Memory** %MEMORY

  ; Code: jne .L_40c19a	 RIP: 40c187	 Bytes: 6
  %loadMem_40c187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c187 = call %struct.Memory* @routine_jne_.L_40c19a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c187, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_40c187, %struct.Memory** %MEMORY

  %loadBr_40c187 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c187 = icmp eq i8 %loadBr_40c187, 1
  br i1 %cmpBr_40c187, label %block_.L_40c19a, label %block_40c18d

block_40c18d:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 40c18d	 Bytes: 3
  %loadMem_40c18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c18d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c18d)
  store %struct.Memory* %call_40c18d, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %eax	 RIP: 40c190	 Bytes: 3
  %loadMem_40c190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c190 = call %struct.Memory* @routine_subl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c190)
  store %struct.Memory* %call_40c190, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x881de4	 RIP: 40c193	 Bytes: 7
  %loadMem_40c193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c193 = call %struct.Memory* @routine_movl__eax__0x881de4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c193)
  store %struct.Memory* %call_40c193, %struct.Memory** %MEMORY

  ; Code: .L_40c19a:	 RIP: 40c19a	 Bytes: 0
  br label %block_.L_40c19a
block_.L_40c19a:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c19a	 Bytes: 4
  %loadMem_40c19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c19a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c19a)
  store %struct.Memory* %call_40c19a, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x866540(,%rax,4)	 RIP: 40c19e	 Bytes: 11
  %loadMem_40c19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c19e = call %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c19e)
  store %struct.Memory* %call_40c19e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c1a9	 Bytes: 4
  %loadMem_40c1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1a9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1a9)
  store %struct.Memory* %call_40c1a9, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40c1ad	 Bytes: 11
  %loadMem_40c1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1ad = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1ad)
  store %struct.Memory* %call_40c1ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c1b8	 Bytes: 4
  %loadMem_40c1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1b8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1b8)
  store %struct.Memory* %call_40c1b8, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40c1bc	 Bytes: 7
  %loadMem_40c1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1bc = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1bc)
  store %struct.Memory* %call_40c1bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c1c3	 Bytes: 3
  %loadMem_40c1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1c3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1c3)
  store %struct.Memory* %call_40c1c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40c1c6	 Bytes: 7
  %loadMem_40c1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1c6 = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1c6)
  store %struct.Memory* %call_40c1c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c1cd	 Bytes: 4
  %loadMem_40c1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1cd = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1cd)
  store %struct.Memory* %call_40c1cd, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %ecx	 RIP: 40c1d1	 Bytes: 7
  %loadMem_40c1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1d1 = call %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1d1)
  store %struct.Memory* %call_40c1d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c1d8	 Bytes: 3
  %loadMem_40c1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1d8 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1d8)
  store %struct.Memory* %call_40c1d8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8823b0(,%rax,4)	 RIP: 40c1db	 Bytes: 7
  %loadMem_40c1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1db = call %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1db)
  store %struct.Memory* %call_40c1db, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %ecx	 RIP: 40c1e2	 Bytes: 7
  %loadMem_40c1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1e2 = call %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1e2)
  store %struct.Memory* %call_40c1e2, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %ecx	 RIP: 40c1e9	 Bytes: 3
  %loadMem_40c1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1e9 = call %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1e9)
  store %struct.Memory* %call_40c1e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8661bc	 RIP: 40c1ec	 Bytes: 7
  %loadMem_40c1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1ec = call %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1ec)
  store %struct.Memory* %call_40c1ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c1f3	 Bytes: 4
  %loadMem_40c1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1f3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1f3)
  store %struct.Memory* %call_40c1f3, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40c1f7	 Bytes: 7
  %loadMem_40c1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1f7 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1f7)
  store %struct.Memory* %call_40c1f7, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40c1fe	 Bytes: 7
  %loadMem_40c1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1fe = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1fe)
  store %struct.Memory* %call_40c1fe, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40c205	 Bytes: 7
  %loadMem_40c205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c205 = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c205)
  store %struct.Memory* %call_40c205, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c20c	 Bytes: 4
  %loadMem_40c20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c20c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c20c)
  store %struct.Memory* %call_40c20c, %struct.Memory** %MEMORY

  ; Code: movl 0x8a0f00(,%rax,4), %ecx	 RIP: 40c210	 Bytes: 7
  %loadMem_40c210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c210 = call %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c210)
  store %struct.Memory* %call_40c210, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %ecx	 RIP: 40c217	 Bytes: 7
  %loadMem_40c217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c217 = call %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c217)
  store %struct.Memory* %call_40c217, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x633b40	 RIP: 40c21e	 Bytes: 7
  %loadMem_40c21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c21e = call %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c21e)
  store %struct.Memory* %call_40c21e, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 40c225	 Bytes: 7
  %loadMem_40c225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c225 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c225)
  store %struct.Memory* %call_40c225, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c22c	 Bytes: 3
  %loadMem_40c22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c22c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c22c)
  store %struct.Memory* %call_40c22c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x886bc0	 RIP: 40c22f	 Bytes: 7
  %loadMem_40c22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c22f = call %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c22f)
  store %struct.Memory* %call_40c22f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c236	 Bytes: 5
  %loadMem_40c236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c236 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c236, i64 1368, i64 5)
  store %struct.Memory* %call_40c236, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c23b:	 RIP: 40c23b	 Bytes: 0
block_.L_40c23b:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c23b	 Bytes: 4
  %loadMem_40c23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c23b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c23b)
  store %struct.Memory* %call_40c23b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x866540(,%rax,4)	 RIP: 40c23f	 Bytes: 8
  %loadMem_40c23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c23f = call %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c23f)
  store %struct.Memory* %call_40c23f, %struct.Memory** %MEMORY

  ; Code: je .L_40c338	 RIP: 40c247	 Bytes: 6
  %loadMem_40c247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c247 = call %struct.Memory* @routine_je_.L_40c338(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c247, i8* %BRANCH_TAKEN, i64 241, i64 6, i64 6)
  store %struct.Memory* %call_40c247, %struct.Memory** %MEMORY

  %loadBr_40c247 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c247 = icmp eq i8 %loadBr_40c247, 1
  br i1 %cmpBr_40c247, label %block_.L_40c338, label %block_40c24d

block_40c24d:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c24d	 Bytes: 4
  %loadMem_40c24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c24d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c24d)
  store %struct.Memory* %call_40c24d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, 0x866540(,%rax,4)	 RIP: 40c251	 Bytes: 8
  %loadMem_40c251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c251 = call %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c251)
  store %struct.Memory* %call_40c251, %struct.Memory** %MEMORY

  ; Code: je .L_40c338	 RIP: 40c259	 Bytes: 6
  %loadMem_40c259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c259 = call %struct.Memory* @routine_je_.L_40c338(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c259, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_40c259, %struct.Memory** %MEMORY

  %loadBr_40c259 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c259 = icmp eq i8 %loadBr_40c259, 1
  br i1 %cmpBr_40c259, label %block_.L_40c338, label %block_40c25f

block_40c25f:
  ; Code: movq $0x8a0a80, %rax	 RIP: 40c25f	 Bytes: 10
  %loadMem_40c25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c25f = call %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c25f)
  store %struct.Memory* %call_40c25f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c269	 Bytes: 4
  %loadMem_40c269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c269 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c269)
  store %struct.Memory* %call_40c269, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40c26d	 Bytes: 8
  %loadMem_40c26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c26d = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c26d)
  store %struct.Memory* %call_40c26d, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40c275	 Bytes: 7
  %loadMem_40c275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c275 = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c275)
  store %struct.Memory* %call_40c275, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40c27c	 Bytes: 3
  %loadMem_40c27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c27c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c27c)
  store %struct.Memory* %call_40c27c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 40c27f	 Bytes: 3
  %loadMem_40c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c27f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c27f)
  store %struct.Memory* %call_40c27f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c282	 Bytes: 4
  %loadMem_40c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c282 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c282)
  store %struct.Memory* %call_40c282, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 40c286	 Bytes: 3
  %loadMem_40c286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c286 = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c286)
  store %struct.Memory* %call_40c286, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %esi	 RIP: 40c289	 Bytes: 7
  %loadMem_40c289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c289 = call %struct.Memory* @routine_xorl_0x633b40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c289)
  store %struct.Memory* %call_40c289, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x633b40	 RIP: 40c290	 Bytes: 7
  %loadMem_40c290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c290 = call %struct.Memory* @routine_movl__esi__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c290)
  store %struct.Memory* %call_40c290, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c297	 Bytes: 4
  %loadMem_40c297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c297 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c297)
  store %struct.Memory* %call_40c297, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 40c29b	 Bytes: 8
  %loadMem_40c29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c29b = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c29b)
  store %struct.Memory* %call_40c29b, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rcx, %rcx	 RIP: 40c2a3	 Bytes: 7
  %loadMem_40c2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2a3 = call %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2a3)
  store %struct.Memory* %call_40c2a3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c2aa	 Bytes: 3
  %loadMem_40c2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2aa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2aa)
  store %struct.Memory* %call_40c2aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c2ad	 Bytes: 4
  %loadMem_40c2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2ad = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2ad)
  store %struct.Memory* %call_40c2ad, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 40c2b1	 Bytes: 3
  %loadMem_40c2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2b1 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2b1)
  store %struct.Memory* %call_40c2b1, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %esi	 RIP: 40c2b4	 Bytes: 7
  %loadMem_40c2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2b4 = call %struct.Memory* @routine_xorl_0x633b40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2b4)
  store %struct.Memory* %call_40c2b4, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x633b40	 RIP: 40c2bb	 Bytes: 7
  %loadMem_40c2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2bb = call %struct.Memory* @routine_movl__esi__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2bb)
  store %struct.Memory* %call_40c2bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c2c2	 Bytes: 4
  %loadMem_40c2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2c2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2c2)
  store %struct.Memory* %call_40c2c2, %struct.Memory** %MEMORY

  ; Code: movl 0x866540(,%rax,4), %esi	 RIP: 40c2c6	 Bytes: 7
  %loadMem_40c2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2c6 = call %struct.Memory* @routine_movl_0x866540___rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2c6)
  store %struct.Memory* %call_40c2c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c2cd	 Bytes: 4
  %loadMem_40c2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2cd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2cd)
  store %struct.Memory* %call_40c2cd, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x866540(,%rax,4)	 RIP: 40c2d1	 Bytes: 7
  %loadMem_40c2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2d1 = call %struct.Memory* @routine_movl__esi__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2d1)
  store %struct.Memory* %call_40c2d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c2d8	 Bytes: 4
  %loadMem_40c2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2d8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2d8)
  store %struct.Memory* %call_40c2d8, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rax,4)	 RIP: 40c2dc	 Bytes: 11
  %loadMem_40c2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2dc = call %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2dc)
  store %struct.Memory* %call_40c2dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 40c2e7	 Bytes: 4
  %loadMem_40c2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2e7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2e7)
  store %struct.Memory* %call_40c2e7, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %esi	 RIP: 40c2eb	 Bytes: 7
  %loadMem_40c2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2eb = call %struct.Memory* @routine_movl_0x8823b0___rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2eb)
  store %struct.Memory* %call_40c2eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40c2f2	 Bytes: 3
  %loadMem_40c2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2f2 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2f2)
  store %struct.Memory* %call_40c2f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8823b0(,%rax,4)	 RIP: 40c2f5	 Bytes: 7
  %loadMem_40c2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2f5 = call %struct.Memory* @routine_movl__esi__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2f5)
  store %struct.Memory* %call_40c2f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c2fc	 Bytes: 4
  %loadMem_40c2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2fc = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2fc)
  store %struct.Memory* %call_40c2fc, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rax,4), %esi	 RIP: 40c300	 Bytes: 7
  %loadMem_40c300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c300 = call %struct.Memory* @routine_movl_0x8823b0___rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c300)
  store %struct.Memory* %call_40c300, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40c307	 Bytes: 3
  %loadMem_40c307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c307 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c307)
  store %struct.Memory* %call_40c307, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8823b0(,%rax,4)	 RIP: 40c30a	 Bytes: 7
  %loadMem_40c30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c30a = call %struct.Memory* @routine_movl__esi__0x8823b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c30a)
  store %struct.Memory* %call_40c30a, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %esi	 RIP: 40c311	 Bytes: 7
  %loadMem_40c311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c311 = call %struct.Memory* @routine_movl_0x8661bc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c311)
  store %struct.Memory* %call_40c311, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %esi	 RIP: 40c318	 Bytes: 3
  %loadMem_40c318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c318 = call %struct.Memory* @routine_xorl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c318)
  store %struct.Memory* %call_40c318, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8661bc	 RIP: 40c31b	 Bytes: 7
  %loadMem_40c31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c31b = call %struct.Memory* @routine_movl__esi__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c31b)
  store %struct.Memory* %call_40c31b, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %esi	 RIP: 40c322	 Bytes: 7
  %loadMem_40c322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c322 = call %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c322)
  store %struct.Memory* %call_40c322, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40c329	 Bytes: 3
  %loadMem_40c329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c329 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c329)
  store %struct.Memory* %call_40c329, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x886bc0	 RIP: 40c32c	 Bytes: 7
  %loadMem_40c32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c32c = call %struct.Memory* @routine_movl__esi__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c32c)
  store %struct.Memory* %call_40c32c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c333	 Bytes: 5
  %loadMem_40c333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c333 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c333, i64 1115, i64 5)
  store %struct.Memory* %call_40c333, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c338:	 RIP: 40c338	 Bytes: 0
block_.L_40c338:

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 40c338	 Bytes: 4
  %loadMem_40c338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c338 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c338)
  store %struct.Memory* %call_40c338, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x866540(,%rax,4)	 RIP: 40c33c	 Bytes: 8
  %loadMem_40c33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c33c = call %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c33c)
  store %struct.Memory* %call_40c33c, %struct.Memory** %MEMORY

  ; Code: jne .L_40c56c	 RIP: 40c344	 Bytes: 6
  %loadMem_40c344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c344 = call %struct.Memory* @routine_jne_.L_40c56c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c344, i8* %BRANCH_TAKEN, i64 552, i64 6, i64 6)
  store %struct.Memory* %call_40c344, %struct.Memory** %MEMORY

  %loadBr_40c344 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c344 = icmp eq i8 %loadBr_40c344, 1
  br i1 %cmpBr_40c344, label %block_.L_40c56c, label %block_40c34a

block_40c34a:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 40c34a	 Bytes: 3
  %loadMem_40c34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c34a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c34a)
  store %struct.Memory* %call_40c34a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86bd7c	 RIP: 40c34d	 Bytes: 7
  %loadMem_40c34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c34d = call %struct.Memory* @routine_movl__eax__0x86bd7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c34d)
  store %struct.Memory* %call_40c34d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c354	 Bytes: 4
  %loadMem_40c354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c354 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c354)
  store %struct.Memory* %call_40c354, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x866540(,%rcx,4)	 RIP: 40c358	 Bytes: 11
  %loadMem_40c358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c358 = call %struct.Memory* @routine_movl__0x5__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c358)
  store %struct.Memory* %call_40c358, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c363	 Bytes: 4
  %loadMem_40c363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c363 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c363)
  store %struct.Memory* %call_40c363, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rcx,4)	 RIP: 40c367	 Bytes: 11
  %loadMem_40c367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c367 = call %struct.Memory* @routine_movl__0xd__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c367)
  store %struct.Memory* %call_40c367, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c372	 Bytes: 4
  %loadMem_40c372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c372 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c372)
  store %struct.Memory* %call_40c372, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40c376	 Bytes: 7
  %loadMem_40c376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c376 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c376)
  store %struct.Memory* %call_40c376, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c37d	 Bytes: 3
  %loadMem_40c37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c37d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c37d)
  store %struct.Memory* %call_40c37d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40c380	 Bytes: 7
  %loadMem_40c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c380 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c380)
  store %struct.Memory* %call_40c380, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c387	 Bytes: 4
  %loadMem_40c387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c387 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c387)
  store %struct.Memory* %call_40c387, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40c38b	 Bytes: 7
  %loadMem_40c38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c38b = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c38b)
  store %struct.Memory* %call_40c38b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c392	 Bytes: 3
  %loadMem_40c392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c392 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c392)
  store %struct.Memory* %call_40c392, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40c395	 Bytes: 7
  %loadMem_40c395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c395 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c395)
  store %struct.Memory* %call_40c395, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40c39c	 Bytes: 7
  %loadMem_40c39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c39c = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c39c)
  store %struct.Memory* %call_40c39c, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40c3a3	 Bytes: 3
  %loadMem_40c3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3a3 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3a3)
  store %struct.Memory* %call_40c3a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40c3a6	 Bytes: 7
  %loadMem_40c3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3a6 = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3a6)
  store %struct.Memory* %call_40c3a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c3ad	 Bytes: 4
  %loadMem_40c3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ad = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ad)
  store %struct.Memory* %call_40c3ad, %struct.Memory** %MEMORY

  ; Code: movl 0x8a15c0(,%rcx,4), %eax	 RIP: 40c3b1	 Bytes: 7
  %loadMem_40c3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3b1 = call %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3b1)
  store %struct.Memory* %call_40c3b1, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c3b8	 Bytes: 7
  %loadMem_40c3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3b8 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3b8)
  store %struct.Memory* %call_40c3b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c3bf	 Bytes: 7
  %loadMem_40c3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3bf = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3bf)
  store %struct.Memory* %call_40c3bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c3c6	 Bytes: 4
  %loadMem_40c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3c6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3c6)
  store %struct.Memory* %call_40c3c6, %struct.Memory** %MEMORY

  ; Code: movl 0x8a15c0(,%rcx,4), %eax	 RIP: 40c3ca	 Bytes: 7
  %loadMem_40c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ca = call %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ca)
  store %struct.Memory* %call_40c3ca, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c3d1	 Bytes: 7
  %loadMem_40c3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3d1 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3d1)
  store %struct.Memory* %call_40c3d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c3d8	 Bytes: 7
  %loadMem_40c3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3d8 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3d8)
  store %struct.Memory* %call_40c3d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x24(%rbp)	 RIP: 40c3df	 Bytes: 4
  %loadMem_40c3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3df = call %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3df)
  store %struct.Memory* %call_40c3df, %struct.Memory** %MEMORY

  ; Code: jne .L_40c498	 RIP: 40c3e3	 Bytes: 6
  %loadMem_40c3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3e3 = call %struct.Memory* @routine_jne_.L_40c498(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3e3, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_40c3e3, %struct.Memory** %MEMORY

  %loadBr_40c3e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c3e3 = icmp eq i8 %loadBr_40c3e3, 1
  br i1 %cmpBr_40c3e3, label %block_.L_40c498, label %block_40c3e9

block_40c3e9:
  ; Code: movl $0xd, 0x8665c4	 RIP: 40c3e9	 Bytes: 11
  %loadMem_40c3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3e9 = call %struct.Memory* @routine_movl__0xd__0x8665c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3e9)
  store %struct.Memory* %call_40c3e9, %struct.Memory** %MEMORY

  ; Code: movl $0x7, 0x8665bc	 RIP: 40c3f4	 Bytes: 11
  %loadMem_40c3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3f4 = call %struct.Memory* @routine_movl__0x7__0x8665bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3f4)
  store %struct.Memory* %call_40c3f4, %struct.Memory** %MEMORY

  ; Code: movl 0x882434, %eax	 RIP: 40c3ff	 Bytes: 7
  %loadMem_40c3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ff = call %struct.Memory* @routine_movl_0x882434___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ff)
  store %struct.Memory* %call_40c3ff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c406	 Bytes: 3
  %loadMem_40c406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c406 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c406)
  store %struct.Memory* %call_40c406, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882434	 RIP: 40c409	 Bytes: 7
  %loadMem_40c409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c409 = call %struct.Memory* @routine_movl__eax__0x882434(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c409)
  store %struct.Memory* %call_40c409, %struct.Memory** %MEMORY

  ; Code: movl 0x88242c, %eax	 RIP: 40c410	 Bytes: 7
  %loadMem_40c410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c410 = call %struct.Memory* @routine_movl_0x88242c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c410)
  store %struct.Memory* %call_40c410, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c417	 Bytes: 3
  %loadMem_40c417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c417 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c417)
  store %struct.Memory* %call_40c417, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x88242c	 RIP: 40c41a	 Bytes: 7
  %loadMem_40c41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c41a = call %struct.Memory* @routine_movl__eax__0x88242c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c41a)
  store %struct.Memory* %call_40c41a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x62e4fc	 RIP: 40c421	 Bytes: 11
  %loadMem_40c421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c421 = call %struct.Memory* @routine_movl__0x1__0x62e4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c421)
  store %struct.Memory* %call_40c421, %struct.Memory** %MEMORY

  ; Code: movslq 0x866374, %rcx	 RIP: 40c42c	 Bytes: 8
  %loadMem_40c42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c42c = call %struct.Memory* @routine_movslq_0x866374___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c42c)
  store %struct.Memory* %call_40c42c, %struct.Memory** %MEMORY

  ; Code: movl $0x1f, 0x85f2f0(,%rcx,4)	 RIP: 40c434	 Bytes: 11
  %loadMem_40c434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c434 = call %struct.Memory* @routine_movl__0x1f__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c434)
  store %struct.Memory* %call_40c434, %struct.Memory** %MEMORY

  ; Code: movl 0x866374, %eax	 RIP: 40c43f	 Bytes: 7
  %loadMem_40c43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c43f = call %struct.Memory* @routine_movl_0x866374___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c43f)
  store %struct.Memory* %call_40c43f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86636c	 RIP: 40c446	 Bytes: 7
  %loadMem_40c446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c446 = call %struct.Memory* @routine_movl__eax__0x86636c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c446)
  store %struct.Memory* %call_40c446, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866374	 RIP: 40c44d	 Bytes: 11
  %loadMem_40c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c44d = call %struct.Memory* @routine_movl__0x0__0x866374(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c44d)
  store %struct.Memory* %call_40c44d, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1ac4, %eax	 RIP: 40c458	 Bytes: 7
  %loadMem_40c458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c458 = call %struct.Memory* @routine_movl_0x8a1ac4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c458)
  store %struct.Memory* %call_40c458, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c45f	 Bytes: 7
  %loadMem_40c45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c45f = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c45f)
  store %struct.Memory* %call_40c45f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c466	 Bytes: 7
  %loadMem_40c466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c466 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c466)
  store %struct.Memory* %call_40c466, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1abc, %eax	 RIP: 40c46d	 Bytes: 7
  %loadMem_40c46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c46d = call %struct.Memory* @routine_movl_0x8a1abc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c46d)
  store %struct.Memory* %call_40c46d, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c474	 Bytes: 7
  %loadMem_40c474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c474 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c474)
  store %struct.Memory* %call_40c474, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c47b	 Bytes: 7
  %loadMem_40c47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c47b = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c47b)
  store %struct.Memory* %call_40c47b, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 40c482	 Bytes: 7
  %loadMem_40c482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c482 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c482)
  store %struct.Memory* %call_40c482, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c489	 Bytes: 3
  %loadMem_40c489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c489 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c489)
  store %struct.Memory* %call_40c489, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c48c	 Bytes: 7
  %loadMem_40c48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c48c = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c48c)
  store %struct.Memory* %call_40c48c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c493	 Bytes: 5
  %loadMem_40c493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c493 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c493, i64 763, i64 5)
  store %struct.Memory* %call_40c493, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c498:	 RIP: 40c498	 Bytes: 0
block_.L_40c498:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 40c498	 Bytes: 4
  %loadMem_40c498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c498 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c498)
  store %struct.Memory* %call_40c498, %struct.Memory** %MEMORY

  ; Code: jne .L_40c551	 RIP: 40c49c	 Bytes: 6
  %loadMem_40c49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c49c = call %struct.Memory* @routine_jne_.L_40c551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c49c, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_40c49c, %struct.Memory** %MEMORY

  %loadBr_40c49c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c49c = icmp eq i8 %loadBr_40c49c, 1
  br i1 %cmpBr_40c49c, label %block_.L_40c551, label %block_40c4a2

block_40c4a2:
  ; Code: movl $0xd, 0x8665a8	 RIP: 40c4a2	 Bytes: 11
  %loadMem_40c4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4a2 = call %struct.Memory* @routine_movl__0xd__0x8665a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4a2)
  store %struct.Memory* %call_40c4a2, %struct.Memory** %MEMORY

  ; Code: movl $0x7, 0x8665b4	 RIP: 40c4ad	 Bytes: 11
  %loadMem_40c4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ad = call %struct.Memory* @routine_movl__0x7__0x8665b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ad)
  store %struct.Memory* %call_40c4ad, %struct.Memory** %MEMORY

  ; Code: movl 0x882418, %eax	 RIP: 40c4b8	 Bytes: 7
  %loadMem_40c4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4b8 = call %struct.Memory* @routine_movl_0x882418___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4b8)
  store %struct.Memory* %call_40c4b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c4bf	 Bytes: 3
  %loadMem_40c4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4bf)
  store %struct.Memory* %call_40c4bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882418	 RIP: 40c4c2	 Bytes: 7
  %loadMem_40c4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4c2 = call %struct.Memory* @routine_movl__eax__0x882418(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4c2)
  store %struct.Memory* %call_40c4c2, %struct.Memory** %MEMORY

  ; Code: movl 0x882424, %eax	 RIP: 40c4c9	 Bytes: 7
  %loadMem_40c4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4c9 = call %struct.Memory* @routine_movl_0x882424___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4c9)
  store %struct.Memory* %call_40c4c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c4d0	 Bytes: 3
  %loadMem_40c4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4d0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4d0)
  store %struct.Memory* %call_40c4d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882424	 RIP: 40c4d3	 Bytes: 7
  %loadMem_40c4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4d3 = call %struct.Memory* @routine_movl__eax__0x882424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4d3)
  store %struct.Memory* %call_40c4d3, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x62e4fc	 RIP: 40c4da	 Bytes: 11
  %loadMem_40c4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4da = call %struct.Memory* @routine_movl__0x2__0x62e4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4da)
  store %struct.Memory* %call_40c4da, %struct.Memory** %MEMORY

  ; Code: movslq 0x866358, %rcx	 RIP: 40c4e5	 Bytes: 8
  %loadMem_40c4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4e5 = call %struct.Memory* @routine_movslq_0x866358___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4e5)
  store %struct.Memory* %call_40c4e5, %struct.Memory** %MEMORY

  ; Code: movl $0x1d, 0x85f2f0(,%rcx,4)	 RIP: 40c4ed	 Bytes: 11
  %loadMem_40c4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ed = call %struct.Memory* @routine_movl__0x1d__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ed)
  store %struct.Memory* %call_40c4ed, %struct.Memory** %MEMORY

  ; Code: movl 0x866358, %eax	 RIP: 40c4f8	 Bytes: 7
  %loadMem_40c4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4f8 = call %struct.Memory* @routine_movl_0x866358___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4f8)
  store %struct.Memory* %call_40c4f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x866364	 RIP: 40c4ff	 Bytes: 7
  %loadMem_40c4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ff = call %struct.Memory* @routine_movl__eax__0x866364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ff)
  store %struct.Memory* %call_40c4ff, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866358	 RIP: 40c506	 Bytes: 11
  %loadMem_40c506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c506 = call %struct.Memory* @routine_movl__0x0__0x866358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c506)
  store %struct.Memory* %call_40c506, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1aa8, %eax	 RIP: 40c511	 Bytes: 7
  %loadMem_40c511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c511 = call %struct.Memory* @routine_movl_0x8a1aa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c511)
  store %struct.Memory* %call_40c511, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c518	 Bytes: 7
  %loadMem_40c518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c518 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c518)
  store %struct.Memory* %call_40c518, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c51f	 Bytes: 7
  %loadMem_40c51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c51f = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c51f)
  store %struct.Memory* %call_40c51f, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1ab4, %eax	 RIP: 40c526	 Bytes: 7
  %loadMem_40c526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c526 = call %struct.Memory* @routine_movl_0x8a1ab4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c526)
  store %struct.Memory* %call_40c526, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c52d	 Bytes: 7
  %loadMem_40c52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c52d = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c52d)
  store %struct.Memory* %call_40c52d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c534	 Bytes: 7
  %loadMem_40c534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c534 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c534)
  store %struct.Memory* %call_40c534, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 40c53b	 Bytes: 7
  %loadMem_40c53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c53b = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c53b)
  store %struct.Memory* %call_40c53b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c542	 Bytes: 3
  %loadMem_40c542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c542 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c542)
  store %struct.Memory* %call_40c542, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c545	 Bytes: 7
  %loadMem_40c545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c545 = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c545)
  store %struct.Memory* %call_40c545, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c54c	 Bytes: 5
  %loadMem_40c54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c54c = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c54c, i64 578, i64 5)
  store %struct.Memory* %call_40c54c, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c551:	 RIP: 40c551	 Bytes: 0
block_.L_40c551:

  ; Code: jmpq .L_40c556	 RIP: 40c551	 Bytes: 5
  %loadMem_40c551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c551 = call %struct.Memory* @routine_jmpq_.L_40c556(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c551, i64 5, i64 5)
  store %struct.Memory* %call_40c551, %struct.Memory** %MEMORY

  br label %block_.L_40c556

  ; Code: .L_40c556:	 RIP: 40c556	 Bytes: 0
block_.L_40c556:

  ; Code: movl 0x886bc0, %eax	 RIP: 40c556	 Bytes: 7
  %loadMem_40c556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c556 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c556)
  store %struct.Memory* %call_40c556, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c55d	 Bytes: 3
  %loadMem_40c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c55d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c55d)
  store %struct.Memory* %call_40c55d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c560	 Bytes: 7
  %loadMem_40c560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c560 = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c560)
  store %struct.Memory* %call_40c560, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c567	 Bytes: 5
  %loadMem_40c567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c567 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c567, i64 551, i64 5)
  store %struct.Memory* %call_40c567, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c56c:	 RIP: 40c56c	 Bytes: 0
block_.L_40c56c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 40c56c	 Bytes: 3
  %loadMem_40c56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c56c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c56c)
  store %struct.Memory* %call_40c56c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661d0	 RIP: 40c56f	 Bytes: 7
  %loadMem_40c56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c56f = call %struct.Memory* @routine_movl__eax__0x8661d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c56f)
  store %struct.Memory* %call_40c56f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c576	 Bytes: 4
  %loadMem_40c576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c576 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c576)
  store %struct.Memory* %call_40c576, %struct.Memory** %MEMORY

  ; Code: movl $0x6, 0x866540(,%rcx,4)	 RIP: 40c57a	 Bytes: 11
  %loadMem_40c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c57a = call %struct.Memory* @routine_movl__0x6__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c57a)
  store %struct.Memory* %call_40c57a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c585	 Bytes: 4
  %loadMem_40c585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c585 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c585)
  store %struct.Memory* %call_40c585, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x866540(,%rcx,4)	 RIP: 40c589	 Bytes: 11
  %loadMem_40c589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c589 = call %struct.Memory* @routine_movl__0xd__0x866540___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c589)
  store %struct.Memory* %call_40c589, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c594	 Bytes: 4
  %loadMem_40c594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c594 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c594)
  store %struct.Memory* %call_40c594, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40c598	 Bytes: 7
  %loadMem_40c598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c598 = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c598)
  store %struct.Memory* %call_40c598, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c59f	 Bytes: 3
  %loadMem_40c59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c59f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c59f)
  store %struct.Memory* %call_40c59f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40c5a2	 Bytes: 7
  %loadMem_40c5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5a2 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5a2)
  store %struct.Memory* %call_40c5a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c5a9	 Bytes: 4
  %loadMem_40c5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5a9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5a9)
  store %struct.Memory* %call_40c5a9, %struct.Memory** %MEMORY

  ; Code: movl 0x8823b0(,%rcx,4), %eax	 RIP: 40c5ad	 Bytes: 7
  %loadMem_40c5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5ad = call %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5ad)
  store %struct.Memory* %call_40c5ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c5b4	 Bytes: 3
  %loadMem_40c5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5b4)
  store %struct.Memory* %call_40c5b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8823b0(,%rcx,4)	 RIP: 40c5b7	 Bytes: 7
  %loadMem_40c5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5b7 = call %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5b7)
  store %struct.Memory* %call_40c5b7, %struct.Memory** %MEMORY

  ; Code: movl 0x8661bc, %eax	 RIP: 40c5be	 Bytes: 7
  %loadMem_40c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5be = call %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5be)
  store %struct.Memory* %call_40c5be, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %eax	 RIP: 40c5c5	 Bytes: 3
  %loadMem_40c5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5c5 = call %struct.Memory* @routine_xorl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5c5)
  store %struct.Memory* %call_40c5c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8661bc	 RIP: 40c5c8	 Bytes: 7
  %loadMem_40c5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5c8 = call %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5c8)
  store %struct.Memory* %call_40c5c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40c5cf	 Bytes: 4
  %loadMem_40c5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5cf = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5cf)
  store %struct.Memory* %call_40c5cf, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1800(,%rcx,4), %eax	 RIP: 40c5d3	 Bytes: 7
  %loadMem_40c5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5d3 = call %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5d3)
  store %struct.Memory* %call_40c5d3, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c5da	 Bytes: 7
  %loadMem_40c5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5da = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5da)
  store %struct.Memory* %call_40c5da, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c5e1	 Bytes: 7
  %loadMem_40c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5e1 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5e1)
  store %struct.Memory* %call_40c5e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40c5e8	 Bytes: 4
  %loadMem_40c5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5e8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5e8)
  store %struct.Memory* %call_40c5e8, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1800(,%rcx,4), %eax	 RIP: 40c5ec	 Bytes: 7
  %loadMem_40c5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5ec = call %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5ec)
  store %struct.Memory* %call_40c5ec, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c5f3	 Bytes: 7
  %loadMem_40c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5f3 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5f3)
  store %struct.Memory* %call_40c5f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c5fa	 Bytes: 7
  %loadMem_40c5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5fa = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5fa)
  store %struct.Memory* %call_40c5fa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x24(%rbp)	 RIP: 40c601	 Bytes: 4
  %loadMem_40c601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c601 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c601)
  store %struct.Memory* %call_40c601, %struct.Memory** %MEMORY

  ; Code: jne .L_40c6ba	 RIP: 40c605	 Bytes: 6
  %loadMem_40c605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c605 = call %struct.Memory* @routine_jne_.L_40c6ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c605, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_40c605, %struct.Memory** %MEMORY

  %loadBr_40c605 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c605 = icmp eq i8 %loadBr_40c605, 1
  br i1 %cmpBr_40c605, label %block_.L_40c6ba, label %block_40c60b

block_40c60b:
  ; Code: movl $0xd, 0x866714	 RIP: 40c60b	 Bytes: 11
  %loadMem_40c60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c60b = call %struct.Memory* @routine_movl__0xd__0x866714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c60b)
  store %struct.Memory* %call_40c60b, %struct.Memory** %MEMORY

  ; Code: movl $0x8, 0x86670c	 RIP: 40c616	 Bytes: 11
  %loadMem_40c616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c616 = call %struct.Memory* @routine_movl__0x8__0x86670c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c616)
  store %struct.Memory* %call_40c616, %struct.Memory** %MEMORY

  ; Code: movl 0x882584, %eax	 RIP: 40c621	 Bytes: 7
  %loadMem_40c621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c621 = call %struct.Memory* @routine_movl_0x882584___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c621)
  store %struct.Memory* %call_40c621, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c628	 Bytes: 3
  %loadMem_40c628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c628 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c628)
  store %struct.Memory* %call_40c628, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882584	 RIP: 40c62b	 Bytes: 7
  %loadMem_40c62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c62b = call %struct.Memory* @routine_movl__eax__0x882584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c62b)
  store %struct.Memory* %call_40c62b, %struct.Memory** %MEMORY

  ; Code: movl 0x88257c, %eax	 RIP: 40c632	 Bytes: 7
  %loadMem_40c632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c632 = call %struct.Memory* @routine_movl_0x88257c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c632)
  store %struct.Memory* %call_40c632, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c639	 Bytes: 3
  %loadMem_40c639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c639 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c639)
  store %struct.Memory* %call_40c639, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x88257c	 RIP: 40c63c	 Bytes: 7
  %loadMem_40c63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c63c = call %struct.Memory* @routine_movl__eax__0x88257c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c63c)
  store %struct.Memory* %call_40c63c, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x62e500	 RIP: 40c643	 Bytes: 11
  %loadMem_40c643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c643 = call %struct.Memory* @routine_movl__0x3__0x62e500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c643)
  store %struct.Memory* %call_40c643, %struct.Memory** %MEMORY

  ; Code: movslq 0x8664c4, %rcx	 RIP: 40c64e	 Bytes: 8
  %loadMem_40c64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c64e = call %struct.Memory* @routine_movslq_0x8664c4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c64e)
  store %struct.Memory* %call_40c64e, %struct.Memory** %MEMORY

  ; Code: movl $0x73, 0x85f2f0(,%rcx,4)	 RIP: 40c656	 Bytes: 11
  %loadMem_40c656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c656 = call %struct.Memory* @routine_movl__0x73__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c656)
  store %struct.Memory* %call_40c656, %struct.Memory** %MEMORY

  ; Code: movl 0x8664c4, %eax	 RIP: 40c661	 Bytes: 7
  %loadMem_40c661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c661 = call %struct.Memory* @routine_movl_0x8664c4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c661)
  store %struct.Memory* %call_40c661, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8664bc	 RIP: 40c668	 Bytes: 7
  %loadMem_40c668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c668 = call %struct.Memory* @routine_movl__eax__0x8664bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c668)
  store %struct.Memory* %call_40c668, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8664c4	 RIP: 40c66f	 Bytes: 11
  %loadMem_40c66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c66f = call %struct.Memory* @routine_movl__0x0__0x8664c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c66f)
  store %struct.Memory* %call_40c66f, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e54, %eax	 RIP: 40c67a	 Bytes: 7
  %loadMem_40c67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c67a = call %struct.Memory* @routine_movl_0x8a1e54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c67a)
  store %struct.Memory* %call_40c67a, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c681	 Bytes: 7
  %loadMem_40c681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c681 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c681)
  store %struct.Memory* %call_40c681, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c688	 Bytes: 7
  %loadMem_40c688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c688 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c688)
  store %struct.Memory* %call_40c688, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e4c, %eax	 RIP: 40c68f	 Bytes: 7
  %loadMem_40c68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c68f = call %struct.Memory* @routine_movl_0x8a1e4c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c68f)
  store %struct.Memory* %call_40c68f, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c696	 Bytes: 7
  %loadMem_40c696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c696 = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c696)
  store %struct.Memory* %call_40c696, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c69d	 Bytes: 7
  %loadMem_40c69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c69d = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c69d)
  store %struct.Memory* %call_40c69d, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 40c6a4	 Bytes: 7
  %loadMem_40c6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6a4 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6a4)
  store %struct.Memory* %call_40c6a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c6ab	 Bytes: 3
  %loadMem_40c6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6ab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6ab)
  store %struct.Memory* %call_40c6ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c6ae	 Bytes: 7
  %loadMem_40c6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6ae = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6ae)
  store %struct.Memory* %call_40c6ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c6b5	 Bytes: 5
  %loadMem_40c6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6b5 = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6b5, i64 217, i64 5)
  store %struct.Memory* %call_40c6b5, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c6ba:	 RIP: 40c6ba	 Bytes: 0
block_.L_40c6ba:

  ; Code: cmpl $0x4, -0x24(%rbp)	 RIP: 40c6ba	 Bytes: 4
  %loadMem_40c6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6ba = call %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6ba)
  store %struct.Memory* %call_40c6ba, %struct.Memory** %MEMORY

  ; Code: jne .L_40c773	 RIP: 40c6be	 Bytes: 6
  %loadMem_40c6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6be = call %struct.Memory* @routine_jne_.L_40c773(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6be, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_40c6be, %struct.Memory** %MEMORY

  %loadBr_40c6be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c6be = icmp eq i8 %loadBr_40c6be, 1
  br i1 %cmpBr_40c6be, label %block_.L_40c773, label %block_40c6c4

block_40c6c4:
  ; Code: movl $0xd, 0x8666f8	 RIP: 40c6c4	 Bytes: 11
  %loadMem_40c6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6c4 = call %struct.Memory* @routine_movl__0xd__0x8666f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6c4)
  store %struct.Memory* %call_40c6c4, %struct.Memory** %MEMORY

  ; Code: movl $0x8, 0x866704	 RIP: 40c6cf	 Bytes: 11
  %loadMem_40c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6cf = call %struct.Memory* @routine_movl__0x8__0x866704(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6cf)
  store %struct.Memory* %call_40c6cf, %struct.Memory** %MEMORY

  ; Code: movl 0x882568, %eax	 RIP: 40c6da	 Bytes: 7
  %loadMem_40c6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6da = call %struct.Memory* @routine_movl_0x882568___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6da)
  store %struct.Memory* %call_40c6da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c6e1	 Bytes: 3
  %loadMem_40c6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6e1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6e1)
  store %struct.Memory* %call_40c6e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882568	 RIP: 40c6e4	 Bytes: 7
  %loadMem_40c6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6e4 = call %struct.Memory* @routine_movl__eax__0x882568(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6e4)
  store %struct.Memory* %call_40c6e4, %struct.Memory** %MEMORY

  ; Code: movl 0x882574, %eax	 RIP: 40c6eb	 Bytes: 7
  %loadMem_40c6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6eb = call %struct.Memory* @routine_movl_0x882574___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6eb)
  store %struct.Memory* %call_40c6eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c6f2	 Bytes: 3
  %loadMem_40c6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6f2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6f2)
  store %struct.Memory* %call_40c6f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x882574	 RIP: 40c6f5	 Bytes: 7
  %loadMem_40c6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6f5 = call %struct.Memory* @routine_movl__eax__0x882574(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6f5)
  store %struct.Memory* %call_40c6f5, %struct.Memory** %MEMORY

  ; Code: movl $0x4, 0x62e500	 RIP: 40c6fc	 Bytes: 11
  %loadMem_40c6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6fc = call %struct.Memory* @routine_movl__0x4__0x62e500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6fc)
  store %struct.Memory* %call_40c6fc, %struct.Memory** %MEMORY

  ; Code: movslq 0x8664a8, %rcx	 RIP: 40c707	 Bytes: 8
  %loadMem_40c707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c707 = call %struct.Memory* @routine_movslq_0x8664a8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c707)
  store %struct.Memory* %call_40c707, %struct.Memory** %MEMORY

  ; Code: movl $0x71, 0x85f2f0(,%rcx,4)	 RIP: 40c70f	 Bytes: 11
  %loadMem_40c70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c70f = call %struct.Memory* @routine_movl__0x71__0x85f2f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c70f)
  store %struct.Memory* %call_40c70f, %struct.Memory** %MEMORY

  ; Code: movl 0x8664a8, %eax	 RIP: 40c71a	 Bytes: 7
  %loadMem_40c71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c71a = call %struct.Memory* @routine_movl_0x8664a8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c71a)
  store %struct.Memory* %call_40c71a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8664b4	 RIP: 40c721	 Bytes: 7
  %loadMem_40c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c721 = call %struct.Memory* @routine_movl__eax__0x8664b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c721)
  store %struct.Memory* %call_40c721, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8664a8	 RIP: 40c728	 Bytes: 11
  %loadMem_40c728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c728 = call %struct.Memory* @routine_movl__0x0__0x8664a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c728)
  store %struct.Memory* %call_40c728, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e38, %eax	 RIP: 40c733	 Bytes: 7
  %loadMem_40c733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c733 = call %struct.Memory* @routine_movl_0x8a1e38___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c733)
  store %struct.Memory* %call_40c733, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c73a	 Bytes: 7
  %loadMem_40c73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c73a = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c73a)
  store %struct.Memory* %call_40c73a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c741	 Bytes: 7
  %loadMem_40c741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c741 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c741)
  store %struct.Memory* %call_40c741, %struct.Memory** %MEMORY

  ; Code: movl 0x8a1e44, %eax	 RIP: 40c748	 Bytes: 7
  %loadMem_40c748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c748 = call %struct.Memory* @routine_movl_0x8a1e44___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c748)
  store %struct.Memory* %call_40c748, %struct.Memory** %MEMORY

  ; Code: xorl 0x633b40, %eax	 RIP: 40c74f	 Bytes: 7
  %loadMem_40c74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c74f = call %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c74f)
  store %struct.Memory* %call_40c74f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b40	 RIP: 40c756	 Bytes: 7
  %loadMem_40c756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c756 = call %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c756)
  store %struct.Memory* %call_40c756, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 40c75d	 Bytes: 7
  %loadMem_40c75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c75d = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c75d)
  store %struct.Memory* %call_40c75d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c764	 Bytes: 3
  %loadMem_40c764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c764 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c764)
  store %struct.Memory* %call_40c764, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c767	 Bytes: 7
  %loadMem_40c767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c767 = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c767)
  store %struct.Memory* %call_40c767, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c78e	 RIP: 40c76e	 Bytes: 5
  %loadMem_40c76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c76e = call %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c76e, i64 32, i64 5)
  store %struct.Memory* %call_40c76e, %struct.Memory** %MEMORY

  br label %block_.L_40c78e

  ; Code: .L_40c773:	 RIP: 40c773	 Bytes: 0
block_.L_40c773:

  ; Code: jmpq .L_40c778	 RIP: 40c773	 Bytes: 5
  %loadMem_40c773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c773 = call %struct.Memory* @routine_jmpq_.L_40c778(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c773, i64 5, i64 5)
  store %struct.Memory* %call_40c773, %struct.Memory** %MEMORY

  br label %block_.L_40c778

  ; Code: .L_40c778:	 RIP: 40c778	 Bytes: 0
block_.L_40c778:

  ; Code: jmpq .L_40c77d	 RIP: 40c778	 Bytes: 5
  %loadMem_40c778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c778 = call %struct.Memory* @routine_jmpq_.L_40c77d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c778, i64 5, i64 5)
  store %struct.Memory* %call_40c778, %struct.Memory** %MEMORY

  br label %block_.L_40c77d

  ; Code: .L_40c77d:	 RIP: 40c77d	 Bytes: 0
block_.L_40c77d:

  ; Code: movl 0x886bc0, %eax	 RIP: 40c77d	 Bytes: 7
  %loadMem_40c77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c77d = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c77d)
  store %struct.Memory* %call_40c77d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40c784	 Bytes: 3
  %loadMem_40c784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c784 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c784)
  store %struct.Memory* %call_40c784, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x886bc0	 RIP: 40c787	 Bytes: 7
  %loadMem_40c787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c787 = call %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c787)
  store %struct.Memory* %call_40c787, %struct.Memory** %MEMORY

  ; Code: .L_40c78e:	 RIP: 40c78e	 Bytes: 0
  br label %block_.L_40c78e
block_.L_40c78e:

  ; Code: addq $0x40, %rsp	 RIP: 40c78e	 Bytes: 4
  %loadMem_40c78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c78e = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c78e)
  store %struct.Memory* %call_40c78e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40c792	 Bytes: 1
  %loadMem_40c792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c792 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c792)
  store %struct.Memory* %call_40c792, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40c793	 Bytes: 1
  %loadMem_40c793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c793 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c793)
  store %struct.Memory* %call_40c793, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40c793
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x880b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x880b20_type* @G__0x880b20 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
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

define %struct.Memory* @routine_addq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 24)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x881de4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x881de4_type* @G_0x881de4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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




define %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_movl__0x0__0x881de4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x881de4_type* @G_0x881de4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x866790___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_je_.L_40b83c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0xd__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_40b84c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x866790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40b85d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x866790___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64))
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


define %struct.Memory* @routine_movl__eax__0x866790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866790_type* @G_0x866790 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_40b990(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x63ae48___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x85f2f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_40b8a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40b896(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40b87f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__0x880b20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x880b20_type* @G__0x880b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__0x85f2f0___rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8778480
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl_0x639120___rdi_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6525216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_0x886bc0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_shlq__0x4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__0x0__0x639120___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 6525216
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__0x8662f0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x8a0a80___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x8a0a80_type* @G__0x8a0a80 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl_0x8661c0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x866540___r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_imulq__0x240___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 576)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = xor i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_xorl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x639120___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6525216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x8662f0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__0x0__0x85f2f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__0x85f2f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8778480
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl_0x8662f0___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edx__0x8662f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40bb70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__0xd___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 13)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jne_.L_40ba5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40ba56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40bb6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_40ba77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_40bb02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_40bace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x866540___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.SwitchPromoted(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.addHolding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40bafd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_callq_.SwitchColor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_jmpq_.L_40bb02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x8a0a80_type* @G__0x8a0a80 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x62dab0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 576)
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


define %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x63ae48___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_40bb70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_40bed4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_40bc87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movl__0xd__0x866540___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807152
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__0x1__0x639120___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 6525216
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8a0cc0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
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


define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 576)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62dab4_type* @G_0x62dab4 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_je_.L_40be15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047232
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subl__0xc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047808
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62dab8_type* @G_0x62dab8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x8661c0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661c0_type* @G_0x8661c0 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movslq__ecx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xd__0x866540___r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 12
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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
































define %struct.Memory* @routine_movl_0x8662f0___r8_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_0x886bc0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_shlq__0x4___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x18___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
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


define %struct.Memory* @routine_jne_.L_40be33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl__0xc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 12)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x881de4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x881de4_type* @G_0x881de4 to i64), i64 %10)
  ret %struct.Memory* %13
}




























define %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




























define %struct.Memory* @routine_jne_.L_40c23b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_40bfeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_movl_0x8a0f00___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9047808
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}














































define %struct.Memory* @routine_je_.L_40c17c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addl__0xc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
}




























define %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 2)
  ret %struct.Memory* %14
}








































































































define %struct.Memory* @routine_subl__0x18___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_40c19a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl__0xc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 12)
  ret %struct.Memory* %12
}




























































define %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 5)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_40c338(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 6)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_xorl_0x633b40___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__0x633b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64), i64 %10)
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








define %struct.Memory* @routine_movl_0x866540___rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__esi__0x866540___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_movl_0x8823b0___rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__esi__0x8823b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_movl_0x8661bc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__esi__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jne_.L_40c56c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x86bd7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd7c_type* @G_0x86bd7c to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x5__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 5)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0xd__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 13)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8922032
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


















define %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9049536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40c498(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xd__0x8665c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665c4_type* @G_0x8665c4 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x7__0x8665bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665bc_type* @G_0x8665bc to i64), i64 7)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882434___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882434_type* @G_0x882434 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882434(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882434_type* @G_0x882434 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x88242c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x88242c_type* @G_0x88242c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x88242c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x88242c_type* @G_0x88242c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__0x62e4fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4fc_type* @G_0x62e4fc to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x866374___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x866374_type* @G_0x866374 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1f__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 31)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x866374___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x866374_type* @G_0x866374 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x86636c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86636c_type* @G_0x86636c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x866374(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866374_type* @G_0x866374 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x8a1ac4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1ac4_type* @G_0x8a1ac4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1abc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1abc_type* @G_0x8a1abc to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40c551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xd__0x8665a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665a8_type* @G_0x8665a8 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x7__0x8665b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8665b4_type* @G_0x8665b4 to i64), i64 7)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882418___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882418_type* @G_0x882418 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882418(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882418_type* @G_0x882418 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x882424___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882424_type* @G_0x882424 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882424(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882424_type* @G_0x882424 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x2__0x62e4fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4fc_type* @G_0x62e4fc to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x866358___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x866358_type* @G_0x866358 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1d__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 29)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x866358___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x866358_type* @G_0x866358 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x866364(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866364_type* @G_0x866364 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x866358(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866358_type* @G_0x866358 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x8a1aa8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1aa8_type* @G_0x8a1aa8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1ab4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1ab4_type* @G_0x8a1ab4 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_40c556(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__eax__0x8661d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661d0_type* @G_0x8661d0 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x6__0x866540___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 6)
  ret %struct.Memory* %14
}






























define %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 9050112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40c6ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xd__0x866714(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866714_type* @G_0x866714 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x8__0x86670c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86670c_type* @G_0x86670c to i64), i64 8)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882584___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882584_type* @G_0x882584 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882584(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882584_type* @G_0x882584 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x88257c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x88257c_type* @G_0x88257c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x88257c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x88257c_type* @G_0x88257c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x3__0x62e500(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e500_type* @G_0x62e500 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x8664c4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8664c4_type* @G_0x8664c4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x73__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 115)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8664c4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8664c4_type* @G_0x8664c4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x8664bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664bc_type* @G_0x8664bc to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x8664c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664c4_type* @G_0x8664c4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x8a1e54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e54_type* @G_0x8a1e54 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1e4c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e4c_type* @G_0x8a1e4c to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40c773(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xd__0x8666f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8666f8_type* @G_0x8666f8 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x8__0x866704(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866704_type* @G_0x866704 to i64), i64 8)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x882568___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882568_type* @G_0x882568 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882568(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882568_type* @G_0x882568 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x882574___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x882574_type* @G_0x882574 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x882574(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x882574_type* @G_0x882574 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x4__0x62e500(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e500_type* @G_0x62e500 to i64), i64 4)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movslq_0x8664a8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8664a8_type* @G_0x8664a8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x71__0x85f2f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8778480
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 113)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x8664a8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8664a8_type* @G_0x8664a8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x8664b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664b4_type* @G_0x8664b4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x8664a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8664a8_type* @G_0x8664a8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x8a1e38___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e38_type* @G_0x8a1e38 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x8a1e44___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x8a1e44_type* @G_0x8a1e44 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_40c778(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40c77d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

