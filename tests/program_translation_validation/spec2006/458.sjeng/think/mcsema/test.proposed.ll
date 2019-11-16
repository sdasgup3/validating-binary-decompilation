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

declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423760.rtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40d610.check_phase(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4214c0.allocate_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4204c0.clear_tt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_402c10.reset_ecache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414310.proofnumberscan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423770.rdifftime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4193f0.search_root(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4232b0.stringize_pv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423410.post_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4159f0.proofnumbercheck(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401be0.ProcessHoldings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x46bd08__rip__type = type <{ [4 x i8] }>
@G_0x46bd08__rip_= global %G_0x46bd08__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62db08_type = type <{ [8 x i8] }>
@G_0x62db08= global %G_0x62db08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db0c_type = type <{ [4 x i8] }>
@G_0x62db0c= global %G_0x62db0c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62db10_type = type <{ [8 x i8] }>
@G_0x62db10= global %G_0x62db10_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62db18_type = type <{ [8 x i8] }>
@G_0x62db18= global %G_0x62db18_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62e4f0_type = type <{ [4 x i8] }>
@G_0x62e4f0= global %G_0x62e4f0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
@G_0x62e4f8= global %G_0x62e4f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e514_type = type <{ [1 x i8] }>
@G_0x62e514= global %G_0x62e514_type <{ [1 x i8] c"\00" }>
%G_0x62e51c_type = type <{ [4 x i8] }>
@G_0x62e51c= global %G_0x62e51c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9e0_type = type <{ [4 x i8] }>
@G_0x62e9e0= global %G_0x62e9e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9e4_type = type <{ [4 x i8] }>
@G_0x62e9e4= global %G_0x62e9e4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9f4_type = type <{ [4 x i8] }>
@G_0x62e9f4= global %G_0x62e9f4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9f8_type = type <{ [4 x i8] }>
@G_0x62e9f8= global %G_0x62e9f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62e9fc_type = type <{ [4 x i8] }>
@G_0x62e9fc= global %G_0x62e9fc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea10_type = type <{ [4 x i8] }>
@G_0x62ea10= global %G_0x62ea10_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea14_type = type <{ [4 x i8] }>
@G_0x62ea14= global %G_0x62ea14_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea18_type = type <{ [4 x i8] }>
@G_0x62ea18= global %G_0x62ea18_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea1c_type = type <{ [4 x i8] }>
@G_0x62ea1c= global %G_0x62ea1c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea20_type = type <{ [8 x i8] }>
@G_0x62ea20= global %G_0x62ea20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ea24_type = type <{ [4 x i8] }>
@G_0x62ea24= global %G_0x62ea24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x62ea28_type = type <{ [8 x i8] }>
@G_0x62ea28= global %G_0x62ea28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x62ea30_type = type <{ [8 x i8] }>
@G_0x62ea30= global %G_0x62ea30_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x633b44_type = type <{ [4 x i8] }>
@G_0x633b44= global %G_0x633b44_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b50_type = type <{ [4 x i8] }>
@G_0x633b50= global %G_0x633b50_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x63ae44_type = type <{ [4 x i8] }>
@G_0x63ae44= global %G_0x63ae44_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x63ae48_type = type <{ [1 x i8] }>
@G_0x63ae48= global %G_0x63ae48_type <{ [1 x i8] c"\00" }>
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x85f164_type = type <{ [4 x i8] }>
@G_0x85f164= global %G_0x85f164_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f168_type = type <{ [4 x i8] }>
@G_0x85f168= global %G_0x85f168_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8644f4_type = type <{ [4 x i8] }>
@G_0x8644f4= global %G_0x8644f4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x864500_type = type <{ [4 x i8] }>
@G_0x864500= global %G_0x864500_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x864504_type = type <{ [4 x i8] }>
@G_0x864504= global %G_0x864504_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x864508_type = type <{ [4 x i8] }>
@G_0x864508= global %G_0x864508_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86450c_type = type <{ [4 x i8] }>
@G_0x86450c= global %G_0x86450c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x8661d8_type = type <{ [1 x i8] }>
@G_0x8661d8= global %G_0x8661d8_type <{ [1 x i8] c"\00" }>
%G_0x8661dc_type = type <{ [1 x i8] }>
@G_0x8661dc= global %G_0x8661dc_type <{ [1 x i8] c"\00" }>
%G_0x8662e0_type = type <{ [4 x i8] }>
@G_0x8662e0= global %G_0x8662e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8662e8_type = type <{ [8 x i8] }>
@G_0x8662e8= global %G_0x8662e8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x866530_type = type <{ [4 x i8] }>
@G_0x866530= global %G_0x866530_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866538_type = type <{ [4 x i8] }>
@G_0x866538= global %G_0x866538_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866780_type = type <{ [4 x i8] }>
@G_0x866780= global %G_0x866780_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x866788_type = type <{ [1 x i8] }>
@G_0x866788= global %G_0x866788_type <{ [1 x i8] c"\00" }>
%G_0x86678c_type = type <{ [1 x i8] }>
@G_0x86678c= global %G_0x86678c_type <{ [1 x i8] c"\00" }>
%G_0x86679c_type = type <{ [1 x i8] }>
@G_0x86679c= global %G_0x86679c_type <{ [1 x i8] c"\00" }>
%G_0x8667a4_type = type <{ [4 x i8] }>
@G_0x8667a4= global %G_0x8667a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd6c_type = type <{ [4 x i8] }>
@G_0x86bd6c= global %G_0x86bd6c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd78_type = type <{ [1 x i8] }>
@G_0x86bd78= global %G_0x86bd78_type <{ [1 x i8] c"\00" }>
%G_0x86bd84_type = type <{ [4 x i8] }>
@G_0x86bd84= global %G_0x86bd84_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd88_type = type <{ [4 x i8] }>
@G_0x86bd88= global %G_0x86bd88_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86bd90_type = type <{ [4 x i8] }>
@G_0x86bd90= global %G_0x86bd90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x880b10_type = type <{ [4 x i8] }>
@G_0x880b10= global %G_0x880b10_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x880b18_type = type <{ [4 x i8] }>
@G_0x880b18= global %G_0x880b18_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x881df0_type = type <{ [4 x i8] }>
@G_0x881df0= global %G_0x881df0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8825f8_type = type <{ [4 x i8] }>
@G_0x8825f8= global %G_0x8825f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886a60_type = type <{ [1 x i8] }>
@G_0x886a60= global %G_0x886a60_type <{ [1 x i8] c"\00" }>
%G_0x886a68_type = type <{ [4 x i8] }>
@G_0x886a68= global %G_0x886a68_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886b80_type = type <{ [4 x i8] }>
@G_0x886b80= global %G_0x886b80_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x886bbc_type = type <{ [1 x i8] }>
@G_0x886bbc= global %G_0x886bbc_type <{ [1 x i8] c"\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8870a0_type = type <{ [4 x i8] }>
@G_0x8870a0= global %G_0x8870a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8870a4_type = type <{ [4 x i8] }>
@G_0x8870a4= global %G_0x8870a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a05b4_type = type <{ [4 x i8] }>
@G_0x8a05b4= global %G_0x8a05b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a0a70_type = type <{ [4 x i8] }>
@G_0x8a0a70= global %G_0x8a0a70_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a0a74_type = type <{ [4 x i8] }>
@G_0x8a0a74= global %G_0x8a0a74_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a0a78_type = type <{ [4 x i8] }>
@G_0x8a0a78= global %G_0x8a0a78_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
@G_0x8a2a04= global %G_0x8a2a04_type <{ [1 x i8] c"\00" }>
%G_0xd0f3__rip__type = type <{ [8 x i8] }>
@G_0xd0f3__rip_= global %G_0xd0f3__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xd420__rip__type = type <{ [8 x i8] }>
@G_0xd420__rip_= global %G_0xd420__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xd430__rip__type = type <{ [8 x i8] }>
@G_0xd430__rip_= global %G_0xd430__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xd4f7__rip__type = type <{ [4 x i8] }>
@G_0xd4f7__rip_= global %G_0xd4f7__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xd50b__rip__type = type <{ [8 x i8] }>
@G_0xd50b__rip_= global %G_0xd50b__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429086_type = type <{ [8 x i8] }>
@G__0x429086= global %G__0x429086_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429096_type = type <{ [8 x i8] }>
@G__0x429096= global %G__0x429096_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4290a9_type = type <{ [8 x i8] }>
@G__0x4290a9= global %G__0x4290a9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4290b9_type = type <{ [8 x i8] }>
@G__0x4290b9= global %G__0x4290b9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4290cd_type = type <{ [8 x i8] }>
@G__0x4290cd= global %G__0x4290cd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4290fe_type = type <{ [8 x i8] }>
@G__0x4290fe= global %G__0x4290fe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429119_type = type <{ [8 x i8] }>
@G__0x429119= global %G__0x429119_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42914d_type = type <{ [8 x i8] }>
@G__0x42914d= global %G__0x42914d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x429172_type = type <{ [8 x i8] }>
@G__0x429172= global %G__0x429172_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42918b_type = type <{ [8 x i8] }>
@G__0x42918b= global %G__0x42918b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4291bc_type = type <{ [8 x i8] }>
@G__0x4291bc= global %G__0x4291bc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4291cc_type = type <{ [8 x i8] }>
@G__0x4291cc= global %G__0x4291cc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x42921d_type = type <{ [8 x i8] }>
@G__0x42921d= global %G__0x42921d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x639220_type = type <{ [8 x i8] }>
@G__0x639220= global %G__0x639220_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x63ae50_type = type <{ [8 x i8] }>
@G__0x63ae50= global %G__0x63ae50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x85f1f0_type = type <{ [8 x i8] }>
@G__0x85f1f0= global %G__0x85f1f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x86bda0_type = type <{ [8 x i8] }>
@G__0x86bda0= global %G__0x86bda0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x8822b0_type = type <{ [8 x i8] }>
@G__0x8822b0= global %G__0x8822b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x882600_type = type <{ [8 x i8] }>
@G__0x882600= global %G__0x882600_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x884320_type = type <{ [8 x i8] }>
@G__0x884320= global %G__0x884320_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x884b20_type = type <{ [8 x i8] }>
@G__0x884b20= global %G__0x884b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x886bf0_type = type <{ [8 x i8] }>
@G__0x886bf0= global %G__0x886bf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @think(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .think:	 RIP: 41a940	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41a940	 Bytes: 1
  %loadMem_41a940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a940 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a940)
  store %struct.Memory* %call_41a940, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41a941	 Bytes: 3
  %loadMem_41a941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a941 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a941)
  store %struct.Memory* %call_41a941, %struct.Memory** %MEMORY

  ; Code: subq $0x3160, %rsp	 RIP: 41a944	 Bytes: 7
  %loadMem_41a944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a944 = call %struct.Memory* @routine_subq__0x3160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a944)
  store %struct.Memory* %call_41a944, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %rax	 RIP: 41a94b	 Bytes: 3
  %loadMem_41a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a94b = call %struct.Memory* @routine_movq__rdi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a94b)
  store %struct.Memory* %call_41a94b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 41a94e	 Bytes: 7
  %loadMem_41a94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a94e = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a94e)
  store %struct.Memory* %call_41a94e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5c(%rbp)	 RIP: 41a955	 Bytes: 7
  %loadMem_41a955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a955 = call %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a955)
  store %struct.Memory* %call_41a955, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3078(%rbp)	 RIP: 41a95c	 Bytes: 10
  %loadMem_41a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a95c = call %struct.Memory* @routine_movl__0x0__MINUS0x3078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a95c)
  store %struct.Memory* %call_41a95c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd84	 RIP: 41a966	 Bytes: 11
  %loadMem_41a966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a966 = call %struct.Memory* @routine_movl__0x0__0x86bd84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a966)
  store %struct.Memory* %call_41a966, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3080(%rbp)	 RIP: 41a971	 Bytes: 10
  %loadMem_41a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a971 = call %struct.Memory* @routine_movl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a971)
  store %struct.Memory* %call_41a971, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30f8(%rbp)	 RIP: 41a97b	 Bytes: 7
  %loadMem_41a97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a97b = call %struct.Memory* @routine_movq__rax__MINUS0x30f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a97b)
  store %struct.Memory* %call_41a97b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x3100(%rbp)	 RIP: 41a982	 Bytes: 7
  %loadMem_41a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a982 = call %struct.Memory* @routine_movq__rdi__MINUS0x3100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a982)
  store %struct.Memory* %call_41a982, %struct.Memory** %MEMORY

  ; Code: .L_41a989:	 RIP: 41a989	 Bytes: 0
  br label %block_.L_41a989
block_.L_41a989:

  ; Code: movl $0x0, 0x864500	 RIP: 41a989	 Bytes: 11
  %loadMem_41a989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a989 = call %struct.Memory* @routine_movl__0x0__0x864500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a989)
  store %struct.Memory* %call_41a989, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x63ae44	 RIP: 41a994	 Bytes: 11
  %loadMem_41a994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a994 = call %struct.Memory* @routine_movl__0x0__0x63ae44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a994)
  store %struct.Memory* %call_41a994, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x886bc0	 RIP: 41a99f	 Bytes: 11
  %loadMem_41a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a99f = call %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a99f)
  store %struct.Memory* %call_41a99f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x880b10	 RIP: 41a9aa	 Bytes: 11
  %loadMem_41a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9aa = call %struct.Memory* @routine_movl__0x0__0x880b10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9aa)
  store %struct.Memory* %call_41a9aa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e4f0	 RIP: 41a9b5	 Bytes: 11
  %loadMem_41a9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9b5 = call %struct.Memory* @routine_movl__0x0__0x62e4f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9b5)
  store %struct.Memory* %call_41a9b5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62ea14	 RIP: 41a9c0	 Bytes: 11
  %loadMem_41a9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9c0 = call %struct.Memory* @routine_movl__0x0__0x62ea14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9c0)
  store %struct.Memory* %call_41a9c0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8667a4	 RIP: 41a9cb	 Bytes: 11
  %loadMem_41a9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9cb = call %struct.Memory* @routine_movl__0x0__0x8667a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9cb)
  store %struct.Memory* %call_41a9cb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x864508	 RIP: 41a9d6	 Bytes: 11
  %loadMem_41a9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9d6 = call %struct.Memory* @routine_movl__0x0__0x864508(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9d6)
  store %struct.Memory* %call_41a9d6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86bd6c	 RIP: 41a9e1	 Bytes: 11
  %loadMem_41a9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9e1 = call %struct.Memory* @routine_movl__0x0__0x86bd6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9e1)
  store %struct.Memory* %call_41a9e1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8870a4	 RIP: 41a9ec	 Bytes: 11
  %loadMem_41a9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9ec = call %struct.Memory* @routine_movl__0x0__0x8870a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9ec)
  store %struct.Memory* %call_41a9ec, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x886a68	 RIP: 41a9f7	 Bytes: 11
  %loadMem_41a9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41a9f7 = call %struct.Memory* @routine_movl__0x0__0x886a68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41a9f7)
  store %struct.Memory* %call_41a9f7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8a0a70	 RIP: 41aa02	 Bytes: 11
  %loadMem_41aa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa02 = call %struct.Memory* @routine_movl__0x0__0x8a0a70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa02)
  store %struct.Memory* %call_41aa02, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8662e0	 RIP: 41aa0d	 Bytes: 11
  %loadMem_41aa0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa0d = call %struct.Memory* @routine_movl__0x0__0x8662e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa0d)
  store %struct.Memory* %call_41aa0d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9fc	 RIP: 41aa18	 Bytes: 11
  %loadMem_41aa18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa18 = call %struct.Memory* @routine_movl__0x0__0x62e9fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa18)
  store %struct.Memory* %call_41aa18, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866538	 RIP: 41aa23	 Bytes: 11
  %loadMem_41aa23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa23 = call %struct.Memory* @routine_movl__0x0__0x866538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa23)
  store %struct.Memory* %call_41aa23, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x881df0	 RIP: 41aa2e	 Bytes: 11
  %loadMem_41aa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa2e = call %struct.Memory* @routine_movl__0x0__0x881df0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa2e)
  store %struct.Memory* %call_41aa2e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9f8	 RIP: 41aa39	 Bytes: 11
  %loadMem_41aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa39 = call %struct.Memory* @routine_movl__0x0__0x62e9f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa39)
  store %struct.Memory* %call_41aa39, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866780	 RIP: 41aa44	 Bytes: 11
  %loadMem_41aa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa44 = call %struct.Memory* @routine_movl__0x0__0x866780(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa44)
  store %struct.Memory* %call_41aa44, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9f4	 RIP: 41aa4f	 Bytes: 11
  %loadMem_41aa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa4f = call %struct.Memory* @routine_movl__0x0__0x62e9f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa4f)
  store %struct.Memory* %call_41aa4f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x864504	 RIP: 41aa5a	 Bytes: 11
  %loadMem_41aa5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa5a = call %struct.Memory* @routine_movl__0x0__0x864504(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa5a)
  store %struct.Memory* %call_41aa5a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8870a0	 RIP: 41aa65	 Bytes: 11
  %loadMem_41aa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa65 = call %struct.Memory* @routine_movl__0x0__0x8870a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa65)
  store %struct.Memory* %call_41aa65, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8a0a74	 RIP: 41aa70	 Bytes: 11
  %loadMem_41aa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa70 = call %struct.Memory* @routine_movl__0x0__0x8a0a74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa70)
  store %struct.Memory* %call_41aa70, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 41aa7b	 Bytes: 7
  %loadMem_41aa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa7b = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa7b)
  store %struct.Memory* %call_41aa7b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62ea1c	 RIP: 41aa82	 Bytes: 11
  %loadMem_41aa82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa82 = call %struct.Memory* @routine_movl__0x0__0x62ea1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa82)
  store %struct.Memory* %call_41aa82, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e4f8	 RIP: 41aa8d	 Bytes: 11
  %loadMem_41aa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa8d = call %struct.Memory* @routine_movl__0x0__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa8d)
  store %struct.Memory* %call_41aa8d, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, 0x62ea18	 RIP: 41aa98	 Bytes: 11
  %loadMem_41aa98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aa98 = call %struct.Memory* @routine_movl__0xc8__0x62ea18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aa98)
  store %struct.Memory* %call_41aa98, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0x86678c	 RIP: 41aaa3	 Bytes: 8
  %loadMem_41aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aaa3 = call %struct.Memory* @routine_movb__0x0__0x86678c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aaa3)
  store %struct.Memory* %call_41aaa3, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, 0x8825f8	 RIP: 41aaab	 Bytes: 11
  %loadMem_41aaab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aaab = call %struct.Memory* @routine_movl__0xffffffff__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aaab)
  store %struct.Memory* %call_41aaab, %struct.Memory** %MEMORY

  ; Code: callq .interrupt	 RIP: 41aab6	 Bytes: 5
  %loadMem1_41aab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41aab6 = call %struct.Memory* @routine_callq_.interrupt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41aab6, i64 39210, i64 5, i64 5)
  store %struct.Memory* %call1_41aab6, %struct.Memory** %MEMORY

  %loadMem2_41aab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41aab6 = load i64, i64* %3
  %call2_41aab6 = call %struct.Memory* @sub_4243e0.interrupt(%struct.State* %0, i64  %loadPC_41aab6, %struct.Memory* %loadMem2_41aab6)
  store %struct.Memory* %call2_41aab6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41aabb	 Bytes: 3
  %loadMem_41aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aabb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aabb)
  store %struct.Memory* %call_41aabb, %struct.Memory** %MEMORY

  ; Code: je .L_41ab0f	 RIP: 41aabe	 Bytes: 6
  %loadMem_41aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aabe = call %struct.Memory* @routine_je_.L_41ab0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aabe, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_41aabe, %struct.Memory** %MEMORY

  %loadBr_41aabe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aabe = icmp eq i8 %loadBr_41aabe, 1
  br i1 %cmpBr_41aabe, label %block_.L_41ab0f, label %block_41aac4

block_41aac4:
  ; Code: cmpl $0x0, 0x62e514	 RIP: 41aac4	 Bytes: 8
  %loadMem_41aac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aac4 = call %struct.Memory* @routine_cmpl__0x0__0x62e514(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aac4)
  store %struct.Memory* %call_41aac4, %struct.Memory** %MEMORY

  ; Code: jne .L_41aae0	 RIP: 41aacc	 Bytes: 6
  %loadMem_41aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aacc = call %struct.Memory* @routine_jne_.L_41aae0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aacc, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41aacc, %struct.Memory** %MEMORY

  %loadBr_41aacc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aacc = icmp eq i8 %loadBr_41aacc, 1
  br i1 %cmpBr_41aacc, label %block_.L_41aae0, label %block_41aad2

block_41aad2:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41aad2	 Bytes: 8
  %loadMem_41aad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aad2 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aad2)
  store %struct.Memory* %call_41aad2, %struct.Memory** %MEMORY

  ; Code: je .L_41ab0f	 RIP: 41aada	 Bytes: 6
  %loadMem_41aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aada = call %struct.Memory* @routine_je_.L_41ab0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aada, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_41aada, %struct.Memory** %MEMORY

  %loadBr_41aada = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41aada = icmp eq i8 %loadBr_41aada, 1
  br i1 %cmpBr_41aada, label %block_.L_41ab0f, label %block_.L_41aae0

  ; Code: .L_41aae0:	 RIP: 41aae0	 Bytes: 0
block_.L_41aae0:

  ; Code: movq 0x62db08, %rax	 RIP: 41aae0	 Bytes: 8
  %loadMem_41aae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aae0 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aae0)
  store %struct.Memory* %call_41aae0, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rcx	 RIP: 41aae8	 Bytes: 7
  %loadMem_41aae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aae8 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aae8)
  store %struct.Memory* %call_41aae8, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41aaef	 Bytes: 3
  %loadMem_41aaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aaef = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aaef)
  store %struct.Memory* %call_41aaef, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 41aaf2	 Bytes: 8
  %loadMem_41aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aaf2 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aaf2)
  store %struct.Memory* %call_41aaf2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41aafa	 Bytes: 4
  %loadMem_41aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aafa = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aafa)
  store %struct.Memory* %call_41aafa, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 41aafe	 Bytes: 8
  %loadMem_41aafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aafe = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aafe)
  store %struct.Memory* %call_41aafe, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41ab06	 Bytes: 4
  %loadMem_41ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab06 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab06)
  store %struct.Memory* %call_41ab06, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41be00	 RIP: 41ab0a	 Bytes: 5
  %loadMem_41ab0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab0a = call %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab0a, i64 4854, i64 5)
  store %struct.Memory* %call_41ab0a, %struct.Memory** %MEMORY

  br label %block_.L_41be00

  ; Code: .L_41ab0f:	 RIP: 41ab0f	 Bytes: 0
block_.L_41ab0f:

  ; Code: callq .rtime	 RIP: 41ab0f	 Bytes: 5
  %loadMem1_41ab0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ab0f = call %struct.Memory* @routine_callq_.rtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ab0f, i64 35921, i64 5, i64 5)
  store %struct.Memory* %call1_41ab0f, %struct.Memory** %MEMORY

  %loadMem2_41ab0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab0f = load i64, i64* %3
  %call2_41ab0f = call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64  %loadPC_41ab0f, %struct.Memory* %loadMem2_41ab0f)
  store %struct.Memory* %call2_41ab0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8662e8	 RIP: 41ab14	 Bytes: 8
  %loadMem_41ab14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab14 = call %struct.Memory* @routine_movq__rax__0x8662e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab14)
  store %struct.Memory* %call_41ab14, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9e0	 RIP: 41ab1c	 Bytes: 11
  %loadMem_41ab1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab1c = call %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab1c)
  store %struct.Memory* %call_41ab1c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x85f154	 RIP: 41ab27	 Bytes: 8
  %loadMem_41ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab27 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab27)
  store %struct.Memory* %call_41ab27, %struct.Memory** %MEMORY

  ; Code: jne .L_41ab45	 RIP: 41ab2f	 Bytes: 6
  %loadMem_41ab2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab2f = call %struct.Memory* @routine_jne_.L_41ab45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab2f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41ab2f, %struct.Memory** %MEMORY

  %loadBr_41ab2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ab2f = icmp eq i8 %loadBr_41ab2f, 1
  br i1 %cmpBr_41ab2f, label %block_.L_41ab45, label %block_41ab35

block_41ab35:
  ; Code: movl $0x1, 0x85f164	 RIP: 41ab35	 Bytes: 11
  %loadMem_41ab35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab35 = call %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab35)
  store %struct.Memory* %call_41ab35, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ab50	 RIP: 41ab40	 Bytes: 5
  %loadMem_41ab40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab40 = call %struct.Memory* @routine_jmpq_.L_41ab50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab40, i64 16, i64 5)
  store %struct.Memory* %call_41ab40, %struct.Memory** %MEMORY

  br label %block_.L_41ab50

  ; Code: .L_41ab45:	 RIP: 41ab45	 Bytes: 0
block_.L_41ab45:

  ; Code: movl $0x0, 0x85f164	 RIP: 41ab45	 Bytes: 11
  %loadMem_41ab45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab45 = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab45)
  store %struct.Memory* %call_41ab45, %struct.Memory** %MEMORY

  ; Code: .L_41ab50:	 RIP: 41ab50	 Bytes: 0
  br label %block_.L_41ab50
block_.L_41ab50:

  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41ab50	 Bytes: 7
  %loadMem_41ab50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab50 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab50)
  store %struct.Memory* %call_41ab50, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 41ab57	 Bytes: 5
  %loadMem1_41ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ab57 = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ab57, i64 -77095, i64 5, i64 5)
  store %struct.Memory* %call1_41ab57, %struct.Memory** %MEMORY

  %loadMem2_41ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab57 = load i64, i64* %3
  %call2_41ab57 = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_41ab57, %struct.Memory* %loadMem2_41ab57)
  store %struct.Memory* %call2_41ab57, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 41ab5c	 Bytes: 7
  %loadMem_41ab5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab5c = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab5c)
  store %struct.Memory* %call_41ab5c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3084(%rbp)	 RIP: 41ab63	 Bytes: 6
  %loadMem_41ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab63 = call %struct.Memory* @routine_movl__eax__MINUS0x3084__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab63)
  store %struct.Memory* %call_41ab63, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 41ab69	 Bytes: 5
  %loadMem1_41ab69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ab69 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ab69, i64 -70281, i64 5, i64 5)
  store %struct.Memory* %call1_41ab69, %struct.Memory** %MEMORY

  %loadMem2_41ab69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab69 = load i64, i64* %3
  %call2_41ab69 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41ab69, %struct.Memory* %loadMem2_41ab69)
  store %struct.Memory* %call2_41ab69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x307c(%rbp)	 RIP: 41ab6e	 Bytes: 6
  %loadMem_41ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab6e = call %struct.Memory* @routine_movl__eax__MINUS0x307c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab6e)
  store %struct.Memory* %call_41ab6e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3074(%rbp)	 RIP: 41ab74	 Bytes: 10
  %loadMem_41ab74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab74 = call %struct.Memory* @routine_movl__0x0__MINUS0x3074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab74)
  store %struct.Memory* %call_41ab74, %struct.Memory** %MEMORY

  ; Code: .L_41ab7e:	 RIP: 41ab7e	 Bytes: 0
  br label %block_.L_41ab7e
block_.L_41ab7e:

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41ab7e	 Bytes: 6
  %loadMem_41ab7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab7e = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab7e)
  store %struct.Memory* %call_41ab7e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x85f150, %eax	 RIP: 41ab84	 Bytes: 7
  %loadMem_41ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab84 = call %struct.Memory* @routine_cmpl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab84)
  store %struct.Memory* %call_41ab84, %struct.Memory** %MEMORY

  ; Code: jge .L_41ac07	 RIP: 41ab8b	 Bytes: 6
  %loadMem_41ab8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab8b = call %struct.Memory* @routine_jge_.L_41ac07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab8b, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_41ab8b, %struct.Memory** %MEMORY

  %loadBr_41ab8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ab8b = icmp eq i8 %loadBr_41ab8b, 1
  br i1 %cmpBr_41ab8b, label %block_.L_41ac07, label %block_41ab91

block_41ab91:
  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41ab91	 Bytes: 7
  %loadMem_41ab91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab91 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab91)
  store %struct.Memory* %call_41ab91, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41ab98	 Bytes: 6
  %loadMem_41ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ab98 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ab98)
  store %struct.Memory* %call_41ab98, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41ab9e	 Bytes: 5
  %loadMem1_41ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ab9e = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ab9e, i64 -62574, i64 5, i64 5)
  store %struct.Memory* %call1_41ab9e, %struct.Memory** %MEMORY

  %loadMem2_41ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ab9e = load i64, i64* %3
  %call2_41ab9e = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41ab9e, %struct.Memory* %loadMem2_41ab9e)
  store %struct.Memory* %call2_41ab9e, %struct.Memory** %MEMORY

  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41aba3	 Bytes: 7
  %loadMem_41aba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aba3 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aba3)
  store %struct.Memory* %call_41aba3, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41abaa	 Bytes: 6
  %loadMem_41abaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abaa = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abaa)
  store %struct.Memory* %call_41abaa, %struct.Memory** %MEMORY

  ; Code: movl -0x307c(%rbp), %edx	 RIP: 41abb0	 Bytes: 6
  %loadMem_41abb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abb0 = call %struct.Memory* @routine_movl_MINUS0x307c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abb0)
  store %struct.Memory* %call_41abb0, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 41abb6	 Bytes: 5
  %loadMem1_41abb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41abb6 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41abb6, i64 -83254, i64 5, i64 5)
  store %struct.Memory* %call1_41abb6, %struct.Memory** %MEMORY

  %loadMem2_41abb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41abb6 = load i64, i64* %3
  %call2_41abb6 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_41abb6, %struct.Memory* %loadMem2_41abb6)
  store %struct.Memory* %call2_41abb6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41abbb	 Bytes: 3
  %loadMem_41abbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abbb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abbb)
  store %struct.Memory* %call_41abbb, %struct.Memory** %MEMORY

  ; Code: je .L_41abe1	 RIP: 41abbe	 Bytes: 6
  %loadMem_41abbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abbe = call %struct.Memory* @routine_je_.L_41abe1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abbe, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_41abbe, %struct.Memory** %MEMORY

  %loadBr_41abbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41abbe = icmp eq i8 %loadBr_41abbe, 1
  br i1 %cmpBr_41abbe, label %block_.L_41abe1, label %block_41abc4

block_41abc4:
  ; Code: movl 0x62e9e0, %eax	 RIP: 41abc4	 Bytes: 7
  %loadMem_41abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abc4 = call %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abc4)
  store %struct.Memory* %call_41abc4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41abcb	 Bytes: 3
  %loadMem_41abcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abcb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abcb)
  store %struct.Memory* %call_41abcb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62e9e0	 RIP: 41abce	 Bytes: 7
  %loadMem_41abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abce = call %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abce)
  store %struct.Memory* %call_41abce, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41abd5	 Bytes: 6
  %loadMem_41abd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abd5 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abd5)
  store %struct.Memory* %call_41abd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3078(%rbp)	 RIP: 41abdb	 Bytes: 6
  %loadMem_41abdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abdb = call %struct.Memory* @routine_movl__eax__MINUS0x3078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abdb)
  store %struct.Memory* %call_41abdb, %struct.Memory** %MEMORY

  ; Code: .L_41abe1:	 RIP: 41abe1	 Bytes: 0
  br label %block_.L_41abe1
block_.L_41abe1:

  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41abe1	 Bytes: 7
  %loadMem_41abe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abe1 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abe1)
  store %struct.Memory* %call_41abe1, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41abe8	 Bytes: 6
  %loadMem_41abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abe8 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abe8)
  store %struct.Memory* %call_41abe8, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 41abee	 Bytes: 5
  %loadMem1_41abee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41abee = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41abee, i64 -58446, i64 5, i64 5)
  store %struct.Memory* %call1_41abee, %struct.Memory** %MEMORY

  %loadMem2_41abee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41abee = load i64, i64* %3
  %call2_41abee = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_41abee, %struct.Memory* %loadMem2_41abee)
  store %struct.Memory* %call2_41abee, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41abf3	 Bytes: 6
  %loadMem_41abf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abf3 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abf3)
  store %struct.Memory* %call_41abf3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41abf9	 Bytes: 3
  %loadMem_41abf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abf9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abf9)
  store %struct.Memory* %call_41abf9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3074(%rbp)	 RIP: 41abfc	 Bytes: 6
  %loadMem_41abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41abfc = call %struct.Memory* @routine_movl__eax__MINUS0x3074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41abfc)
  store %struct.Memory* %call_41abfc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ab7e	 RIP: 41ac02	 Bytes: 5
  %loadMem_41ac02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac02 = call %struct.Memory* @routine_jmpq_.L_41ab7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac02, i64 -132, i64 5)
  store %struct.Memory* %call_41ac02, %struct.Memory** %MEMORY

  br label %block_.L_41ab7e

  ; Code: .L_41ac07:	 RIP: 41ac07	 Bytes: 0
block_.L_41ac07:

  ; Code: cmpl $0x4, 0x85f154	 RIP: 41ac07	 Bytes: 8
  %loadMem_41ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac07 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac07)
  store %struct.Memory* %call_41ac07, %struct.Memory** %MEMORY

  ; Code: jne .L_41ace9	 RIP: 41ac0f	 Bytes: 6
  %loadMem_41ac0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac0f = call %struct.Memory* @routine_jne_.L_41ace9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac0f, i8* %BRANCH_TAKEN, i64 218, i64 6, i64 6)
  store %struct.Memory* %call_41ac0f, %struct.Memory** %MEMORY

  %loadBr_41ac0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac0f = icmp eq i8 %loadBr_41ac0f, 1
  br i1 %cmpBr_41ac0f, label %block_.L_41ace9, label %block_41ac15

block_41ac15:
  ; Code: cmpl $0x0, 0x62e9e0	 RIP: 41ac15	 Bytes: 8
  %loadMem_41ac15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac15 = call %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac15)
  store %struct.Memory* %call_41ac15, %struct.Memory** %MEMORY

  ; Code: jne .L_41ace9	 RIP: 41ac1d	 Bytes: 6
  %loadMem_41ac1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac1d = call %struct.Memory* @routine_jne_.L_41ace9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac1d, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_41ac1d, %struct.Memory** %MEMORY

  %loadBr_41ac1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac1d = icmp eq i8 %loadBr_41ac1d, 1
  br i1 %cmpBr_41ac1d, label %block_.L_41ace9, label %block_41ac23

block_41ac23:
  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41ac23	 Bytes: 7
  %loadMem_41ac23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac23 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac23)
  store %struct.Memory* %call_41ac23, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f164	 RIP: 41ac2a	 Bytes: 11
  %loadMem_41ac2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac2a = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac2a)
  store %struct.Memory* %call_41ac2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3084(%rbp)	 RIP: 41ac35	 Bytes: 10
  %loadMem_41ac35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac35 = call %struct.Memory* @routine_movl__0x0__MINUS0x3084__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac35)
  store %struct.Memory* %call_41ac35, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 41ac3f	 Bytes: 5
  %loadMem1_41ac3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ac3f = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ac3f, i64 -77327, i64 5, i64 5)
  store %struct.Memory* %call1_41ac3f, %struct.Memory** %MEMORY

  %loadMem2_41ac3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ac3f = load i64, i64* %3
  %call2_41ac3f = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_41ac3f, %struct.Memory* %loadMem2_41ac3f)
  store %struct.Memory* %call2_41ac3f, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 41ac44	 Bytes: 7
  %loadMem_41ac44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac44 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac44)
  store %struct.Memory* %call_41ac44, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3084(%rbp)	 RIP: 41ac4b	 Bytes: 6
  %loadMem_41ac4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac4b = call %struct.Memory* @routine_movl__eax__MINUS0x3084__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac4b)
  store %struct.Memory* %call_41ac4b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3074(%rbp)	 RIP: 41ac51	 Bytes: 10
  %loadMem_41ac51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac51 = call %struct.Memory* @routine_movl__0x0__MINUS0x3074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac51)
  store %struct.Memory* %call_41ac51, %struct.Memory** %MEMORY

  ; Code: .L_41ac5b:	 RIP: 41ac5b	 Bytes: 0
  br label %block_.L_41ac5b
block_.L_41ac5b:

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41ac5b	 Bytes: 6
  %loadMem_41ac5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac5b = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac5b)
  store %struct.Memory* %call_41ac5b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x85f150, %eax	 RIP: 41ac61	 Bytes: 7
  %loadMem_41ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac61 = call %struct.Memory* @routine_cmpl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac61)
  store %struct.Memory* %call_41ac61, %struct.Memory** %MEMORY

  ; Code: jge .L_41ace4	 RIP: 41ac68	 Bytes: 6
  %loadMem_41ac68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac68 = call %struct.Memory* @routine_jge_.L_41ace4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac68, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_41ac68, %struct.Memory** %MEMORY

  %loadBr_41ac68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac68 = icmp eq i8 %loadBr_41ac68, 1
  br i1 %cmpBr_41ac68, label %block_.L_41ace4, label %block_41ac6e

block_41ac6e:
  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41ac6e	 Bytes: 7
  %loadMem_41ac6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac6e = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac6e)
  store %struct.Memory* %call_41ac6e, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41ac75	 Bytes: 6
  %loadMem_41ac75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac75 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac75)
  store %struct.Memory* %call_41ac75, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41ac7b	 Bytes: 5
  %loadMem1_41ac7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ac7b = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ac7b, i64 -62795, i64 5, i64 5)
  store %struct.Memory* %call1_41ac7b, %struct.Memory** %MEMORY

  %loadMem2_41ac7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ac7b = load i64, i64* %3
  %call2_41ac7b = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41ac7b, %struct.Memory* %loadMem2_41ac7b)
  store %struct.Memory* %call2_41ac7b, %struct.Memory** %MEMORY

  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41ac80	 Bytes: 7
  %loadMem_41ac80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac80 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac80)
  store %struct.Memory* %call_41ac80, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41ac87	 Bytes: 6
  %loadMem_41ac87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac87 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac87)
  store %struct.Memory* %call_41ac87, %struct.Memory** %MEMORY

  ; Code: movl -0x307c(%rbp), %edx	 RIP: 41ac8d	 Bytes: 6
  %loadMem_41ac8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac8d = call %struct.Memory* @routine_movl_MINUS0x307c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac8d)
  store %struct.Memory* %call_41ac8d, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 41ac93	 Bytes: 5
  %loadMem1_41ac93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ac93 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ac93, i64 -83475, i64 5, i64 5)
  store %struct.Memory* %call1_41ac93, %struct.Memory** %MEMORY

  %loadMem2_41ac93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ac93 = load i64, i64* %3
  %call2_41ac93 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_41ac93, %struct.Memory* %loadMem2_41ac93)
  store %struct.Memory* %call2_41ac93, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41ac98	 Bytes: 3
  %loadMem_41ac98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac98 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac98)
  store %struct.Memory* %call_41ac98, %struct.Memory** %MEMORY

  ; Code: je .L_41acbe	 RIP: 41ac9b	 Bytes: 6
  %loadMem_41ac9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ac9b = call %struct.Memory* @routine_je_.L_41acbe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ac9b, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_41ac9b, %struct.Memory** %MEMORY

  %loadBr_41ac9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac9b = icmp eq i8 %loadBr_41ac9b, 1
  br i1 %cmpBr_41ac9b, label %block_.L_41acbe, label %block_41aca1

block_41aca1:
  ; Code: movl 0x62e9e0, %eax	 RIP: 41aca1	 Bytes: 7
  %loadMem_41aca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aca1 = call %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aca1)
  store %struct.Memory* %call_41aca1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41aca8	 Bytes: 3
  %loadMem_41aca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aca8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aca8)
  store %struct.Memory* %call_41aca8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62e9e0	 RIP: 41acab	 Bytes: 7
  %loadMem_41acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acab = call %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acab)
  store %struct.Memory* %call_41acab, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41acb2	 Bytes: 6
  %loadMem_41acb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acb2 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acb2)
  store %struct.Memory* %call_41acb2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3078(%rbp)	 RIP: 41acb8	 Bytes: 6
  %loadMem_41acb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acb8 = call %struct.Memory* @routine_movl__eax__MINUS0x3078__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acb8)
  store %struct.Memory* %call_41acb8, %struct.Memory** %MEMORY

  ; Code: .L_41acbe:	 RIP: 41acbe	 Bytes: 0
  br label %block_.L_41acbe
block_.L_41acbe:

  ; Code: leaq -0x3070(%rbp), %rdi	 RIP: 41acbe	 Bytes: 7
  %loadMem_41acbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acbe = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acbe)
  store %struct.Memory* %call_41acbe, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %esi	 RIP: 41acc5	 Bytes: 6
  %loadMem_41acc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acc5 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acc5)
  store %struct.Memory* %call_41acc5, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 41accb	 Bytes: 5
  %loadMem1_41accb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41accb = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41accb, i64 -58667, i64 5, i64 5)
  store %struct.Memory* %call1_41accb, %struct.Memory** %MEMORY

  %loadMem2_41accb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41accb = load i64, i64* %3
  %call2_41accb = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_41accb, %struct.Memory* %loadMem2_41accb)
  store %struct.Memory* %call2_41accb, %struct.Memory** %MEMORY

  ; Code: movl -0x3074(%rbp), %eax	 RIP: 41acd0	 Bytes: 6
  %loadMem_41acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acd0 = call %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acd0)
  store %struct.Memory* %call_41acd0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41acd6	 Bytes: 3
  %loadMem_41acd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acd6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acd6)
  store %struct.Memory* %call_41acd6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3074(%rbp)	 RIP: 41acd9	 Bytes: 6
  %loadMem_41acd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acd9 = call %struct.Memory* @routine_movl__eax__MINUS0x3074__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acd9)
  store %struct.Memory* %call_41acd9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ac5b	 RIP: 41acdf	 Bytes: 5
  %loadMem_41acdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acdf = call %struct.Memory* @routine_jmpq_.L_41ac5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acdf, i64 -132, i64 5)
  store %struct.Memory* %call_41acdf, %struct.Memory** %MEMORY

  br label %block_.L_41ac5b

  ; Code: .L_41ace4:	 RIP: 41ace4	 Bytes: 0
block_.L_41ace4:

  ; Code: jmpq .L_41ace9	 RIP: 41ace4	 Bytes: 5
  %loadMem_41ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ace4 = call %struct.Memory* @routine_jmpq_.L_41ace9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ace4, i64 5, i64 5)
  store %struct.Memory* %call_41ace4, %struct.Memory** %MEMORY

  br label %block_.L_41ace9

  ; Code: .L_41ace9:	 RIP: 41ace9	 Bytes: 0
block_.L_41ace9:

  ; Code: cmpl $0x1, 0x85f154	 RIP: 41ace9	 Bytes: 8
  %loadMem_41ace9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ace9 = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ace9)
  store %struct.Memory* %call_41ace9, %struct.Memory** %MEMORY

  ; Code: je .L_41ad65	 RIP: 41acf1	 Bytes: 6
  %loadMem_41acf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acf1 = call %struct.Memory* @routine_je_.L_41ad65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acf1, i8* %BRANCH_TAKEN, i64 116, i64 6, i64 6)
  store %struct.Memory* %call_41acf1, %struct.Memory** %MEMORY

  %loadBr_41acf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41acf1 = icmp eq i8 %loadBr_41acf1, 1
  br i1 %cmpBr_41acf1, label %block_.L_41ad65, label %block_41acf7

block_41acf7:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41acf7	 Bytes: 8
  %loadMem_41acf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acf7 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acf7)
  store %struct.Memory* %call_41acf7, %struct.Memory** %MEMORY

  ; Code: jne .L_41ad65	 RIP: 41acff	 Bytes: 6
  %loadMem_41acff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41acff = call %struct.Memory* @routine_jne_.L_41ad65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41acff, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_41acff, %struct.Memory** %MEMORY

  %loadBr_41acff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41acff = icmp eq i8 %loadBr_41acff, 1
  br i1 %cmpBr_41acff, label %block_.L_41ad65, label %block_41ad05

block_41ad05:
  ; Code: cmpl $0x1, 0x62e9e0	 RIP: 41ad05	 Bytes: 8
  %loadMem_41ad05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad05 = call %struct.Memory* @routine_cmpl__0x1__0x62e9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad05)
  store %struct.Memory* %call_41ad05, %struct.Memory** %MEMORY

  ; Code: jne .L_41ad60	 RIP: 41ad0d	 Bytes: 6
  %loadMem_41ad0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad0d = call %struct.Memory* @routine_jne_.L_41ad60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad0d, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_41ad0d, %struct.Memory** %MEMORY

  %loadBr_41ad0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ad0d = icmp eq i8 %loadBr_41ad0d, 1
  br i1 %cmpBr_41ad0d, label %block_.L_41ad60, label %block_41ad13

block_41ad13:
  ; Code: leaq -0x3070(%rbp), %rax	 RIP: 41ad13	 Bytes: 7
  %loadMem_41ad13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad13 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad13)
  store %struct.Memory* %call_41ad13, %struct.Memory** %MEMORY

  ; Code: imull $0x64, 0x8a0a78, %ecx	 RIP: 41ad1a	 Bytes: 8
  %loadMem_41ad1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad1a = call %struct.Memory* @routine_imull__0x64__0x8a0a78___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad1a)
  store %struct.Memory* %call_41ad1a, %struct.Memory** %MEMORY

  ; Code: addl 0x86bd88, %ecx	 RIP: 41ad22	 Bytes: 7
  %loadMem_41ad22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad22 = call %struct.Memory* @routine_addl_0x86bd88___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad22)
  store %struct.Memory* %call_41ad22, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x86bd88	 RIP: 41ad29	 Bytes: 7
  %loadMem_41ad29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad29 = call %struct.Memory* @routine_movl__ecx__0x86bd88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad29)
  store %struct.Memory* %call_41ad29, %struct.Memory** %MEMORY

  ; Code: movslq -0x3078(%rbp), %rdx	 RIP: 41ad30	 Bytes: 7
  %loadMem_41ad30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad30 = call %struct.Memory* @routine_movslq_MINUS0x3078__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad30)
  store %struct.Memory* %call_41ad30, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41ad37	 Bytes: 4
  %loadMem_41ad37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad37 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad37)
  store %struct.Memory* %call_41ad37, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41ad3b	 Bytes: 3
  %loadMem_41ad3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad3b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad3b)
  store %struct.Memory* %call_41ad3b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 41ad3e	 Bytes: 3
  %loadMem_41ad3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad3e = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad3e)
  store %struct.Memory* %call_41ad3e, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rsi	 RIP: 41ad41	 Bytes: 7
  %loadMem_41ad41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad41 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad41)
  store %struct.Memory* %call_41ad41, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rsi)	 RIP: 41ad48	 Bytes: 3
  %loadMem_41ad48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad48 = call %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad48)
  store %struct.Memory* %call_41ad48, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 41ad4b	 Bytes: 4
  %loadMem_41ad4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad4b = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad4b)
  store %struct.Memory* %call_41ad4b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rsi)	 RIP: 41ad4f	 Bytes: 4
  %loadMem_41ad4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad4f = call %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad4f)
  store %struct.Memory* %call_41ad4f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41ad53	 Bytes: 4
  %loadMem_41ad53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad53 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad53)
  store %struct.Memory* %call_41ad53, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsi)	 RIP: 41ad57	 Bytes: 4
  %loadMem_41ad57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad57 = call %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad57)
  store %struct.Memory* %call_41ad57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41be00	 RIP: 41ad5b	 Bytes: 5
  %loadMem_41ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad5b = call %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad5b, i64 4261, i64 5)
  store %struct.Memory* %call_41ad5b, %struct.Memory** %MEMORY

  br label %block_.L_41be00

  ; Code: .L_41ad60:	 RIP: 41ad60	 Bytes: 0
block_.L_41ad60:

  ; Code: jmpq .L_41ad65	 RIP: 41ad60	 Bytes: 5
  %loadMem_41ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad60 = call %struct.Memory* @routine_jmpq_.L_41ad65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad60, i64 5, i64 5)
  store %struct.Memory* %call_41ad60, %struct.Memory** %MEMORY

  br label %block_.L_41ad65

  ; Code: .L_41ad65:	 RIP: 41ad65	 Bytes: 0
block_.L_41ad65:

  ; Code: callq .check_phase	 RIP: 41ad65	 Bytes: 5
  %loadMem1_41ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ad65 = call %struct.Memory* @routine_callq_.check_phase(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ad65, i64 -55125, i64 5, i64 5)
  store %struct.Memory* %call1_41ad65, %struct.Memory** %MEMORY

  %loadMem2_41ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ad65 = load i64, i64* %3
  %call2_41ad65 = call %struct.Memory* @sub_40d610.check_phase(%struct.State* %0, i64  %loadPC_41ad65, %struct.Memory* %loadMem2_41ad65)
  store %struct.Memory* %call2_41ad65, %struct.Memory** %MEMORY

  ; Code: movl 0x46bd08(%rip), %eax	 RIP: 41ad6a	 Bytes: 6
  %loadMem_41ad6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad6a = call %struct.Memory* @routine_movl_0x46bd08__rip____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad6a)
  store %struct.Memory* %call_41ad6a, %struct.Memory** %MEMORY

  ; Code: testl %eax, %eax	 RIP: 41ad70	 Bytes: 2
  %loadMem_41ad70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad70 = call %struct.Memory* @routine_testl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad70)
  store %struct.Memory* %call_41ad70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3104(%rbp)	 RIP: 41ad72	 Bytes: 6
  %loadMem_41ad72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad72 = call %struct.Memory* @routine_movl__eax__MINUS0x3104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad72)
  store %struct.Memory* %call_41ad72, %struct.Memory** %MEMORY

  ; Code: je .L_41adb7	 RIP: 41ad78	 Bytes: 6
  %loadMem_41ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad78 = call %struct.Memory* @routine_je_.L_41adb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad78, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41ad78, %struct.Memory** %MEMORY

  %loadBr_41ad78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ad78 = icmp eq i8 %loadBr_41ad78, 1
  br i1 %cmpBr_41ad78, label %block_.L_41adb7, label %block_41ad7e

block_41ad7e:
  ; Code: jmpq .L_41ad83	 RIP: 41ad7e	 Bytes: 5
  %loadMem_41ad7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad7e = call %struct.Memory* @routine_jmpq_.L_41ad83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad7e, i64 5, i64 5)
  store %struct.Memory* %call_41ad7e, %struct.Memory** %MEMORY

  br label %block_.L_41ad83

  ; Code: .L_41ad83:	 RIP: 41ad83	 Bytes: 0
block_.L_41ad83:

  ; Code: movl -0x3104(%rbp), %eax	 RIP: 41ad83	 Bytes: 6
  %loadMem_41ad83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad83 = call %struct.Memory* @routine_movl_MINUS0x3104__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad83)
  store %struct.Memory* %call_41ad83, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41ad89	 Bytes: 3
  %loadMem_41ad89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad89 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad89)
  store %struct.Memory* %call_41ad89, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3108(%rbp)	 RIP: 41ad8c	 Bytes: 6
  %loadMem_41ad8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad8c = call %struct.Memory* @routine_movl__eax__MINUS0x3108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad8c)
  store %struct.Memory* %call_41ad8c, %struct.Memory** %MEMORY

  ; Code: je .L_41add3	 RIP: 41ad92	 Bytes: 6
  %loadMem_41ad92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad92 = call %struct.Memory* @routine_je_.L_41add3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad92, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_41ad92, %struct.Memory** %MEMORY

  %loadBr_41ad92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ad92 = icmp eq i8 %loadBr_41ad92, 1
  br i1 %cmpBr_41ad92, label %block_.L_41add3, label %block_41ad98

block_41ad98:
  ; Code: jmpq .L_41ad9d	 RIP: 41ad98	 Bytes: 5
  %loadMem_41ad98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad98 = call %struct.Memory* @routine_jmpq_.L_41ad9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad98, i64 5, i64 5)
  store %struct.Memory* %call_41ad98, %struct.Memory** %MEMORY

  br label %block_.L_41ad9d

  ; Code: .L_41ad9d:	 RIP: 41ad9d	 Bytes: 0
block_.L_41ad9d:

  ; Code: movl -0x3104(%rbp), %eax	 RIP: 41ad9d	 Bytes: 6
  %loadMem_41ad9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ad9d = call %struct.Memory* @routine_movl_MINUS0x3104__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ad9d)
  store %struct.Memory* %call_41ad9d, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %eax	 RIP: 41ada3	 Bytes: 3
  %loadMem_41ada3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ada3 = call %struct.Memory* @routine_subl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ada3)
  store %struct.Memory* %call_41ada3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310c(%rbp)	 RIP: 41ada6	 Bytes: 6
  %loadMem_41ada6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ada6 = call %struct.Memory* @routine_movl__eax__MINUS0x310c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ada6)
  store %struct.Memory* %call_41ada6, %struct.Memory** %MEMORY

  ; Code: je .L_41adef	 RIP: 41adac	 Bytes: 6
  %loadMem_41adac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adac = call %struct.Memory* @routine_je_.L_41adef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adac, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_41adac, %struct.Memory** %MEMORY

  %loadBr_41adac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41adac = icmp eq i8 %loadBr_41adac, 1
  br i1 %cmpBr_41adac, label %block_.L_41adef, label %block_41adb2

block_41adb2:
  ; Code: jmpq .L_41ae06	 RIP: 41adb2	 Bytes: 5
  %loadMem_41adb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adb2 = call %struct.Memory* @routine_jmpq_.L_41ae06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adb2, i64 84, i64 5)
  store %struct.Memory* %call_41adb2, %struct.Memory** %MEMORY

  br label %block_.L_41ae06

  ; Code: .L_41adb7:	 RIP: 41adb7	 Bytes: 0
block_.L_41adb7:

  ; Code: movq $0x429086, %rdi	 RIP: 41adb7	 Bytes: 10
  %loadMem_41adb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adb7 = call %struct.Memory* @routine_movq__0x429086___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adb7)
  store %struct.Memory* %call_41adb7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41adc1	 Bytes: 2
  %loadMem_41adc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adc1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adc1)
  store %struct.Memory* %call_41adc1, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41adc3	 Bytes: 5
  %loadMem1_41adc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41adc3 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41adc3, i64 -106771, i64 5, i64 5)
  store %struct.Memory* %call1_41adc3, %struct.Memory** %MEMORY

  %loadMem2_41adc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41adc3 = load i64, i64* %3
  %call2_41adc3 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41adc3, %struct.Memory* %loadMem2_41adc3)
  store %struct.Memory* %call2_41adc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3110(%rbp)	 RIP: 41adc8	 Bytes: 6
  %loadMem_41adc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adc8 = call %struct.Memory* @routine_movl__eax__MINUS0x3110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adc8)
  store %struct.Memory* %call_41adc8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ae06	 RIP: 41adce	 Bytes: 5
  %loadMem_41adce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adce = call %struct.Memory* @routine_jmpq_.L_41ae06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adce, i64 56, i64 5)
  store %struct.Memory* %call_41adce, %struct.Memory** %MEMORY

  br label %block_.L_41ae06

  ; Code: .L_41add3:	 RIP: 41add3	 Bytes: 0
block_.L_41add3:

  ; Code: movq $0x429096, %rdi	 RIP: 41add3	 Bytes: 10
  %loadMem_41add3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41add3 = call %struct.Memory* @routine_movq__0x429096___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41add3)
  store %struct.Memory* %call_41add3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41addd	 Bytes: 2
  %loadMem_41addd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41addd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41addd)
  store %struct.Memory* %call_41addd, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41addf	 Bytes: 5
  %loadMem1_41addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41addf = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41addf, i64 -106799, i64 5, i64 5)
  store %struct.Memory* %call1_41addf, %struct.Memory** %MEMORY

  %loadMem2_41addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41addf = load i64, i64* %3
  %call2_41addf = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41addf, %struct.Memory* %loadMem2_41addf)
  store %struct.Memory* %call2_41addf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3114(%rbp)	 RIP: 41ade4	 Bytes: 6
  %loadMem_41ade4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ade4 = call %struct.Memory* @routine_movl__eax__MINUS0x3114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ade4)
  store %struct.Memory* %call_41ade4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ae06	 RIP: 41adea	 Bytes: 5
  %loadMem_41adea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adea = call %struct.Memory* @routine_jmpq_.L_41ae06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adea, i64 28, i64 5)
  store %struct.Memory* %call_41adea, %struct.Memory** %MEMORY

  br label %block_.L_41ae06

  ; Code: .L_41adef:	 RIP: 41adef	 Bytes: 0
block_.L_41adef:

  ; Code: movq $0x4290a9, %rdi	 RIP: 41adef	 Bytes: 10
  %loadMem_41adef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adef = call %struct.Memory* @routine_movq__0x4290a9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adef)
  store %struct.Memory* %call_41adef, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41adf9	 Bytes: 2
  %loadMem_41adf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41adf9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41adf9)
  store %struct.Memory* %call_41adf9, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41adfb	 Bytes: 5
  %loadMem1_41adfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41adfb = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41adfb, i64 -106827, i64 5, i64 5)
  store %struct.Memory* %call1_41adfb, %struct.Memory** %MEMORY

  %loadMem2_41adfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41adfb = load i64, i64* %3
  %call2_41adfb = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41adfb, %struct.Memory* %loadMem2_41adfb)
  store %struct.Memory* %call2_41adfb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3118(%rbp)	 RIP: 41ae00	 Bytes: 6
  %loadMem_41ae00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae00 = call %struct.Memory* @routine_movl__eax__MINUS0x3118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae00)
  store %struct.Memory* %call_41ae00, %struct.Memory** %MEMORY

  ; Code: .L_41ae06:	 RIP: 41ae06	 Bytes: 0
  br label %block_.L_41ae06
block_.L_41ae06:

  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41ae06	 Bytes: 8
  %loadMem_41ae06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae06 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae06)
  store %struct.Memory* %call_41ae06, %struct.Memory** %MEMORY

  ; Code: jne .L_41ae85	 RIP: 41ae0e	 Bytes: 6
  %loadMem_41ae0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae0e = call %struct.Memory* @routine_jne_.L_41ae85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae0e, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_41ae0e, %struct.Memory** %MEMORY

  %loadBr_41ae0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae0e = icmp eq i8 %loadBr_41ae0e, 1
  br i1 %cmpBr_41ae0e, label %block_.L_41ae85, label %block_41ae14

block_41ae14:
  ; Code: cmpl $0x0, 0x886b80	 RIP: 41ae14	 Bytes: 8
  %loadMem_41ae14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae14 = call %struct.Memory* @routine_cmpl__0x0__0x886b80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae14)
  store %struct.Memory* %call_41ae14, %struct.Memory** %MEMORY

  ; Code: jne .L_41ae72	 RIP: 41ae1c	 Bytes: 6
  %loadMem_41ae1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae1c = call %struct.Memory* @routine_jne_.L_41ae72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae1c, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_41ae1c, %struct.Memory** %MEMORY

  %loadBr_41ae1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae1c = icmp eq i8 %loadBr_41ae1c, 1
  br i1 %cmpBr_41ae1c, label %block_.L_41ae72, label %block_41ae22

block_41ae22:
  ; Code: cmpl $0x0, 0x886a60	 RIP: 41ae22	 Bytes: 8
  %loadMem_41ae22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae22 = call %struct.Memory* @routine_cmpl__0x0__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae22)
  store %struct.Memory* %call_41ae22, %struct.Memory** %MEMORY

  ; Code: je .L_41ae61	 RIP: 41ae2a	 Bytes: 6
  %loadMem_41ae2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae2a = call %struct.Memory* @routine_je_.L_41ae61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae2a, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_41ae2a, %struct.Memory** %MEMORY

  %loadBr_41ae2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae2a = icmp eq i8 %loadBr_41ae2a, 1
  br i1 %cmpBr_41ae2a, label %block_.L_41ae61, label %block_41ae30

block_41ae30:
  ; Code: callq .allocate_time	 RIP: 41ae30	 Bytes: 5
  %loadMem1_41ae30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ae30 = call %struct.Memory* @routine_callq_.allocate_time(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ae30, i64 26256, i64 5, i64 5)
  store %struct.Memory* %call1_41ae30, %struct.Memory** %MEMORY

  %loadMem2_41ae30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ae30 = load i64, i64* %3
  %call2_41ae30 = call %struct.Memory* @sub_4214c0.allocate_time(%struct.State* %0, i64  %loadPC_41ae30, %struct.Memory* %loadMem2_41ae30)
  store %struct.Memory* %call2_41ae30, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 41ae35	 Bytes: 3
  %loadMem_41ae35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae35 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae35)
  store %struct.Memory* %call_41ae35, %struct.Memory** %MEMORY

  ; Code: cmpl $0x28, -0x6c(%rbp)	 RIP: 41ae38	 Bytes: 4
  %loadMem_41ae38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae38 = call %struct.Memory* @routine_cmpl__0x28__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae38)
  store %struct.Memory* %call_41ae38, %struct.Memory** %MEMORY

  ; Code: jle .L_41ae52	 RIP: 41ae3c	 Bytes: 6
  %loadMem_41ae3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae3c = call %struct.Memory* @routine_jle_.L_41ae52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae3c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41ae3c, %struct.Memory** %MEMORY

  %loadBr_41ae3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae3c = icmp eq i8 %loadBr_41ae3c, 1
  br i1 %cmpBr_41ae3c, label %block_.L_41ae52, label %block_41ae42

block_41ae42:
  ; Code: movl $0x28, 0x633b44	 RIP: 41ae42	 Bytes: 11
  %loadMem_41ae42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae42 = call %struct.Memory* @routine_movl__0x28__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae42)
  store %struct.Memory* %call_41ae42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ae5c	 RIP: 41ae4d	 Bytes: 5
  %loadMem_41ae4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae4d = call %struct.Memory* @routine_jmpq_.L_41ae5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae4d, i64 15, i64 5)
  store %struct.Memory* %call_41ae4d, %struct.Memory** %MEMORY

  br label %block_.L_41ae5c

  ; Code: .L_41ae52:	 RIP: 41ae52	 Bytes: 0
block_.L_41ae52:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 41ae52	 Bytes: 3
  %loadMem_41ae52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae52 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae52)
  store %struct.Memory* %call_41ae52, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b44	 RIP: 41ae55	 Bytes: 7
  %loadMem_41ae55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae55 = call %struct.Memory* @routine_movl__eax__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae55)
  store %struct.Memory* %call_41ae55, %struct.Memory** %MEMORY

  ; Code: .L_41ae5c:	 RIP: 41ae5c	 Bytes: 0
  br label %block_.L_41ae5c
block_.L_41ae5c:

  ; Code: jmpq .L_41ae6d	 RIP: 41ae5c	 Bytes: 5
  %loadMem_41ae5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae5c = call %struct.Memory* @routine_jmpq_.L_41ae6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae5c, i64 17, i64 5)
  store %struct.Memory* %call_41ae5c, %struct.Memory** %MEMORY

  br label %block_.L_41ae6d

  ; Code: .L_41ae61:	 RIP: 41ae61	 Bytes: 0
block_.L_41ae61:

  ; Code: callq .allocate_time	 RIP: 41ae61	 Bytes: 5
  %loadMem1_41ae61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ae61 = call %struct.Memory* @routine_callq_.allocate_time(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ae61, i64 26207, i64 5, i64 5)
  store %struct.Memory* %call1_41ae61, %struct.Memory** %MEMORY

  %loadMem2_41ae61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ae61 = load i64, i64* %3
  %call2_41ae61 = call %struct.Memory* @sub_4214c0.allocate_time(%struct.State* %0, i64  %loadPC_41ae61, %struct.Memory* %loadMem2_41ae61)
  store %struct.Memory* %call2_41ae61, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b44	 RIP: 41ae66	 Bytes: 7
  %loadMem_41ae66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae66 = call %struct.Memory* @routine_movl__eax__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae66)
  store %struct.Memory* %call_41ae66, %struct.Memory** %MEMORY

  ; Code: .L_41ae6d:	 RIP: 41ae6d	 Bytes: 0
  br label %block_.L_41ae6d
block_.L_41ae6d:

  ; Code: jmpq .L_41ae80	 RIP: 41ae6d	 Bytes: 5
  %loadMem_41ae6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae6d = call %struct.Memory* @routine_jmpq_.L_41ae80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae6d, i64 19, i64 5)
  store %struct.Memory* %call_41ae6d, %struct.Memory** %MEMORY

  br label %block_.L_41ae80

  ; Code: .L_41ae72:	 RIP: 41ae72	 Bytes: 0
block_.L_41ae72:

  ; Code: movl 0x886b80, %eax	 RIP: 41ae72	 Bytes: 7
  %loadMem_41ae72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae72 = call %struct.Memory* @routine_movl_0x886b80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae72)
  store %struct.Memory* %call_41ae72, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b44	 RIP: 41ae79	 Bytes: 7
  %loadMem_41ae79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae79 = call %struct.Memory* @routine_movl__eax__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae79)
  store %struct.Memory* %call_41ae79, %struct.Memory** %MEMORY

  ; Code: .L_41ae80:	 RIP: 41ae80	 Bytes: 0
  br label %block_.L_41ae80
block_.L_41ae80:

  ; Code: jmpq .L_41ae90	 RIP: 41ae80	 Bytes: 5
  %loadMem_41ae80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae80 = call %struct.Memory* @routine_jmpq_.L_41ae90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae80, i64 16, i64 5)
  store %struct.Memory* %call_41ae80, %struct.Memory** %MEMORY

  br label %block_.L_41ae90

  ; Code: .L_41ae85:	 RIP: 41ae85	 Bytes: 0
block_.L_41ae85:

  ; Code: movl $0xf423f, 0x633b44	 RIP: 41ae85	 Bytes: 11
  %loadMem_41ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae85 = call %struct.Memory* @routine_movl__0xf423f__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae85)
  store %struct.Memory* %call_41ae85, %struct.Memory** %MEMORY

  ; Code: .L_41ae90:	 RIP: 41ae90	 Bytes: 0
  br label %block_.L_41ae90
block_.L_41ae90:

  ; Code: cmpl $0x0, -0x3080(%rbp)	 RIP: 41ae90	 Bytes: 7
  %loadMem_41ae90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae90 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae90)
  store %struct.Memory* %call_41ae90, %struct.Memory** %MEMORY

  ; Code: je .L_41aedd	 RIP: 41ae97	 Bytes: 6
  %loadMem_41ae97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae97 = call %struct.Memory* @routine_je_.L_41aedd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae97, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_41ae97, %struct.Memory** %MEMORY

  %loadBr_41ae97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ae97 = icmp eq i8 %loadBr_41ae97, 1
  br i1 %cmpBr_41ae97, label %block_.L_41aedd, label %block_41ae9d

block_41ae9d:
  ; Code: movsd 0xd50b(%rip), %xmm0	 RIP: 41ae9d	 Bytes: 8
  %loadMem_41ae9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ae9d = call %struct.Memory* @routine_movsd_0xd50b__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ae9d)
  store %struct.Memory* %call_41ae9d, %struct.Memory** %MEMORY

  ; Code: movss 0xd4f7(%rip), %xmm1	 RIP: 41aea5	 Bytes: 8
  %loadMem_41aea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aea5 = call %struct.Memory* @routine_movss_0xd4f7__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aea5)
  store %struct.Memory* %call_41aea5, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x633b44, %xmm2	 RIP: 41aead	 Bytes: 9
  %loadMem_41aead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aead = call %struct.Memory* @routine_cvtsi2ssl_0x633b44___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aead)
  store %struct.Memory* %call_41aead, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm2	 RIP: 41aeb6	 Bytes: 4
  %loadMem_41aeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aeb6 = call %struct.Memory* @routine_mulss__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aeb6)
  store %struct.Memory* %call_41aeb6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm1	 RIP: 41aeba	 Bytes: 4
  %loadMem_41aeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aeba = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aeba)
  store %struct.Memory* %call_41aeba, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0x3080(%rbp), %xmm2	 RIP: 41aebe	 Bytes: 8
  %loadMem_41aebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aebe = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x3080__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aebe)
  store %struct.Memory* %call_41aebe, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm2	 RIP: 41aec6	 Bytes: 4
  %loadMem_41aec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aec6 = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aec6)
  store %struct.Memory* %call_41aec6, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 41aeca	 Bytes: 4
  %loadMem_41aeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aeca = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aeca)
  store %struct.Memory* %call_41aeca, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 41aece	 Bytes: 4
  %loadMem_41aece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aece = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aece)
  store %struct.Memory* %call_41aece, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %eax	 RIP: 41aed2	 Bytes: 4
  %loadMem_41aed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aed2 = call %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aed2)
  store %struct.Memory* %call_41aed2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b44	 RIP: 41aed6	 Bytes: 7
  %loadMem_41aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aed6 = call %struct.Memory* @routine_movl__eax__0x633b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aed6)
  store %struct.Memory* %call_41aed6, %struct.Memory** %MEMORY

  ; Code: .L_41aedd:	 RIP: 41aedd	 Bytes: 0
  br label %block_.L_41aedd
block_.L_41aedd:

  ; Code: movq $0x4290b9, %rdi	 RIP: 41aedd	 Bytes: 10
  %loadMem_41aedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aedd = call %struct.Memory* @routine_movq__0x4290b9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aedd)
  store %struct.Memory* %call_41aedd, %struct.Memory** %MEMORY

  ; Code: movl 0x633b44, %esi	 RIP: 41aee7	 Bytes: 7
  %loadMem_41aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aee7 = call %struct.Memory* @routine_movl_0x633b44___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aee7)
  store %struct.Memory* %call_41aee7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41aeee	 Bytes: 2
  %loadMem_41aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aeee = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aeee)
  store %struct.Memory* %call_41aeee, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41aef0	 Bytes: 5
  %loadMem1_41aef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41aef0 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41aef0, i64 -107072, i64 5, i64 5)
  store %struct.Memory* %call1_41aef0, %struct.Memory** %MEMORY

  %loadMem2_41aef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41aef0 = load i64, i64* %3
  %call2_41aef0 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41aef0, %struct.Memory* %loadMem2_41aef0)
  store %struct.Memory* %call2_41aef0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3080(%rbp)	 RIP: 41aef5	 Bytes: 7
  %loadMem_41aef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aef5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aef5)
  store %struct.Memory* %call_41aef5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x311c(%rbp)	 RIP: 41aefc	 Bytes: 6
  %loadMem_41aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aefc = call %struct.Memory* @routine_movl__eax__MINUS0x311c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aefc)
  store %struct.Memory* %call_41aefc, %struct.Memory** %MEMORY

  ; Code: jne .L_41af2d	 RIP: 41af02	 Bytes: 6
  %loadMem_41af02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af02 = call %struct.Memory* @routine_jne_.L_41af2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af02, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_41af02, %struct.Memory** %MEMORY

  %loadBr_41af02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af02 = icmp eq i8 %loadBr_41af02, 1
  br i1 %cmpBr_41af02, label %block_.L_41af2d, label %block_41af08

block_41af08:
  ; Code: callq .clear_tt	 RIP: 41af08	 Bytes: 5
  %loadMem1_41af08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41af08 = call %struct.Memory* @routine_callq_.clear_tt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41af08, i64 21944, i64 5, i64 5)
  store %struct.Memory* %call1_41af08, %struct.Memory** %MEMORY

  %loadMem2_41af08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41af08 = load i64, i64* %3
  %call2_41af08 = call %struct.Memory* @sub_4204c0.clear_tt(%struct.State* %0, i64  %loadPC_41af08, %struct.Memory* %loadMem2_41af08)
  store %struct.Memory* %call2_41af08, %struct.Memory** %MEMORY

  ; Code: callq .reset_ecache	 RIP: 41af0d	 Bytes: 5
  %loadMem1_41af0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41af0d = call %struct.Memory* @routine_callq_.reset_ecache(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41af0d, i64 -99069, i64 5, i64 5)
  store %struct.Memory* %call1_41af0d, %struct.Memory** %MEMORY

  %loadMem2_41af0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41af0d = load i64, i64* %3
  %call2_41af0d = call %struct.Memory* @sub_402c10.reset_ecache(%struct.State* %0, i64  %loadPC_41af0d, %struct.Memory* %loadMem2_41af0d)
  store %struct.Memory* %call2_41af0d, %struct.Memory** %MEMORY

  ; Code: movq $0x886bf0, %rax	 RIP: 41af12	 Bytes: 10
  %loadMem_41af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af12 = call %struct.Memory* @routine_movq__0x886bf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af12)
  store %struct.Memory* %call_41af12, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 41af1c	 Bytes: 2
  %loadMem_41af1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af1c = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af1c)
  store %struct.Memory* %call_41af1c, %struct.Memory** %MEMORY

  ; Code: movl $0x4b0, %ecx	 RIP: 41af1e	 Bytes: 5
  %loadMem_41af1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af1e = call %struct.Memory* @routine_movl__0x4b0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af1e)
  store %struct.Memory* %call_41af1e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41af23	 Bytes: 2
  %loadMem_41af23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af23 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af23)
  store %struct.Memory* %call_41af23, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41af25	 Bytes: 3
  %loadMem_41af25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af25 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af25)
  store %struct.Memory* %call_41af25, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 41af28	 Bytes: 5
  %loadMem1_41af28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41af28 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41af28, i64 -107096, i64 5, i64 5)
  store %struct.Memory* %call1_41af28, %struct.Memory** %MEMORY

  %loadMem2_41af28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41af28 = load i64, i64* %3
  %call2_41af28 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_41af28, %struct.Memory* %loadMem2_41af28)
  store %struct.Memory* %call2_41af28, %struct.Memory** %MEMORY

  ; Code: .L_41af2d:	 RIP: 41af2d	 Bytes: 0
  br label %block_.L_41af2d
block_.L_41af2d:

  ; Code: cmpl $0x0, -0x3080(%rbp)	 RIP: 41af2d	 Bytes: 7
  %loadMem_41af2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af2d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af2d)
  store %struct.Memory* %call_41af2d, %struct.Memory** %MEMORY

  ; Code: jne .L_41afba	 RIP: 41af34	 Bytes: 6
  %loadMem_41af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af34 = call %struct.Memory* @routine_jne_.L_41afba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af34, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_41af34, %struct.Memory** %MEMORY

  %loadBr_41af34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af34 = icmp eq i8 %loadBr_41af34, 1
  br i1 %cmpBr_41af34, label %block_.L_41afba, label %block_41af3a

block_41af3a:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41af3a	 Bytes: 8
  %loadMem_41af3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af3a = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af3a)
  store %struct.Memory* %call_41af3a, %struct.Memory** %MEMORY

  ; Code: jne .L_41afba	 RIP: 41af42	 Bytes: 6
  %loadMem_41af42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af42 = call %struct.Memory* @routine_jne_.L_41afba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af42, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_41af42, %struct.Memory** %MEMORY

  %loadBr_41af42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af42 = icmp eq i8 %loadBr_41af42, 1
  br i1 %cmpBr_41af42, label %block_.L_41afba, label %block_41af48

block_41af48:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 41af48	 Bytes: 8
  %loadMem_41af48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af48 = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af48)
  store %struct.Memory* %call_41af48, %struct.Memory** %MEMORY

  ; Code: je .L_41af64	 RIP: 41af50	 Bytes: 6
  %loadMem_41af50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af50 = call %struct.Memory* @routine_je_.L_41af64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af50, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41af50, %struct.Memory** %MEMORY

  %loadBr_41af50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af50 = icmp eq i8 %loadBr_41af50, 1
  br i1 %cmpBr_41af50, label %block_.L_41af64, label %block_41af56

block_41af56:
  ; Code: cmpl $0x4, 0x85f154	 RIP: 41af56	 Bytes: 8
  %loadMem_41af56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af56 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af56)
  store %struct.Memory* %call_41af56, %struct.Memory** %MEMORY

  ; Code: jne .L_41afba	 RIP: 41af5e	 Bytes: 6
  %loadMem_41af5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af5e = call %struct.Memory* @routine_jne_.L_41afba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af5e, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_41af5e, %struct.Memory** %MEMORY

  %loadBr_41af5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af5e = icmp eq i8 %loadBr_41af5e, 1
  br i1 %cmpBr_41af5e, label %block_.L_41afba, label %block_.L_41af64

  ; Code: .L_41af64:	 RIP: 41af64	 Bytes: 0
block_.L_41af64:

  ; Code: cmpl $0x3, 0x63ae48	 RIP: 41af64	 Bytes: 8
  %loadMem_41af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af64 = call %struct.Memory* @routine_cmpl__0x3__0x63ae48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af64)
  store %struct.Memory* %call_41af64, %struct.Memory** %MEMORY

  ; Code: jg .L_41af80	 RIP: 41af6c	 Bytes: 6
  %loadMem_41af6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af6c = call %struct.Memory* @routine_jg_.L_41af80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af6c, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41af6c, %struct.Memory** %MEMORY

  %loadBr_41af6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af6c = icmp eq i8 %loadBr_41af6c, 1
  br i1 %cmpBr_41af6c, label %block_.L_41af80, label %block_41af72

block_41af72:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 41af72	 Bytes: 8
  %loadMem_41af72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af72 = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af72)
  store %struct.Memory* %call_41af72, %struct.Memory** %MEMORY

  ; Code: je .L_41afba	 RIP: 41af7a	 Bytes: 6
  %loadMem_41af7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af7a = call %struct.Memory* @routine_je_.L_41afba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af7a, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_41af7a, %struct.Memory** %MEMORY

  %loadBr_41af7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41af7a = icmp eq i8 %loadBr_41af7a, 1
  br i1 %cmpBr_41af7a, label %block_.L_41afba, label %block_.L_41af80

  ; Code: .L_41af80:	 RIP: 41af80	 Bytes: 0
block_.L_41af80:

  ; Code: movsd 0xd430(%rip), %xmm0	 RIP: 41af80	 Bytes: 8
  %loadMem_41af80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af80 = call %struct.Memory* @routine_movsd_0xd430__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af80)
  store %struct.Memory* %call_41af80, %struct.Memory** %MEMORY

  ; Code: movsd 0xd420(%rip), %xmm1	 RIP: 41af88	 Bytes: 8
  %loadMem_41af88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af88 = call %struct.Memory* @routine_movsd_0xd420__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af88)
  store %struct.Memory* %call_41af88, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x633b44, %xmm2	 RIP: 41af90	 Bytes: 9
  %loadMem_41af90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af90 = call %struct.Memory* @routine_cvtsi2ssl_0x633b44___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af90)
  store %struct.Memory* %call_41af90, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm2	 RIP: 41af99	 Bytes: 4
  %loadMem_41af99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af99 = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af99)
  store %struct.Memory* %call_41af99, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm2	 RIP: 41af9d	 Bytes: 4
  %loadMem_41af9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41af9d = call %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41af9d)
  store %struct.Memory* %call_41af9d, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm2	 RIP: 41afa1	 Bytes: 4
  %loadMem_41afa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afa1 = call %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afa1)
  store %struct.Memory* %call_41afa1, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %eax	 RIP: 41afa5	 Bytes: 4
  %loadMem_41afa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afa5 = call %struct.Memory* @routine_cvttsd2si__xmm2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afa5)
  store %struct.Memory* %call_41afa5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x85f168	 RIP: 41afa9	 Bytes: 7
  %loadMem_41afa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afa9 = call %struct.Memory* @routine_movl__eax__0x85f168(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afa9)
  store %struct.Memory* %call_41afa9, %struct.Memory** %MEMORY

  ; Code: callq .proofnumberscan	 RIP: 41afb0	 Bytes: 5
  %loadMem1_41afb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41afb0 = call %struct.Memory* @routine_callq_.proofnumberscan(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41afb0, i64 -27808, i64 5, i64 5)
  store %struct.Memory* %call1_41afb0, %struct.Memory** %MEMORY

  %loadMem2_41afb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41afb0 = load i64, i64* %3
  %call2_41afb0 = call %struct.Memory* @sub_414310.proofnumberscan(%struct.State* %0, i64  %loadPC_41afb0, %struct.Memory* %loadMem2_41afb0)
  store %struct.Memory* %call2_41afb0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41affc	 RIP: 41afb5	 Bytes: 5
  %loadMem_41afb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afb5 = call %struct.Memory* @routine_jmpq_.L_41affc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afb5, i64 71, i64 5)
  store %struct.Memory* %call_41afb5, %struct.Memory** %MEMORY

  br label %block_.L_41affc

  ; Code: .L_41afba:	 RIP: 41afba	 Bytes: 0
block_.L_41afba:

  ; Code: cmpl $0x0, -0x3080(%rbp)	 RIP: 41afba	 Bytes: 7
  %loadMem_41afba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afba = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afba)
  store %struct.Memory* %call_41afba, %struct.Memory** %MEMORY

  ; Code: jne .L_41aff7	 RIP: 41afc1	 Bytes: 6
  %loadMem_41afc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afc1 = call %struct.Memory* @routine_jne_.L_41aff7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afc1, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41afc1, %struct.Memory** %MEMORY

  %loadBr_41afc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41afc1 = icmp eq i8 %loadBr_41afc1, 1
  br i1 %cmpBr_41afc1, label %block_.L_41aff7, label %block_41afc7

block_41afc7:
  ; Code: movq 0x62db08, %rax	 RIP: 41afc7	 Bytes: 8
  %loadMem_41afc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afc7 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afc7)
  store %struct.Memory* %call_41afc7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea20	 RIP: 41afcf	 Bytes: 8
  %loadMem_41afcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afcf = call %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afcf)
  store %struct.Memory* %call_41afcf, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 41afd7	 Bytes: 8
  %loadMem_41afd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afd7 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afd7)
  store %struct.Memory* %call_41afd7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea28	 RIP: 41afdf	 Bytes: 8
  %loadMem_41afdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afdf = call %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afdf)
  store %struct.Memory* %call_41afdf, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 41afe7	 Bytes: 8
  %loadMem_41afe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afe7 = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afe7)
  store %struct.Memory* %call_41afe7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x62ea30	 RIP: 41afef	 Bytes: 8
  %loadMem_41afef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41afef = call %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41afef)
  store %struct.Memory* %call_41afef, %struct.Memory** %MEMORY

  ; Code: .L_41aff7:	 RIP: 41aff7	 Bytes: 0
  br label %block_.L_41aff7
block_.L_41aff7:

  ; Code: jmpq .L_41affc	 RIP: 41aff7	 Bytes: 5
  %loadMem_41aff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41aff7 = call %struct.Memory* @routine_jmpq_.L_41affc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41aff7, i64 5, i64 5)
  store %struct.Memory* %call_41aff7, %struct.Memory** %MEMORY

  br label %block_.L_41affc

  ; Code: .L_41affc:	 RIP: 41affc	 Bytes: 0
block_.L_41affc:

  ; Code: cmpl $0x0, 0x866530	 RIP: 41affc	 Bytes: 8
  %loadMem_41affc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41affc = call %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41affc)
  store %struct.Memory* %call_41affc, %struct.Memory** %MEMORY

  ; Code: je .L_41b04d	 RIP: 41b004	 Bytes: 6
  %loadMem_41b004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b004 = call %struct.Memory* @routine_je_.L_41b04d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b004, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_41b004, %struct.Memory** %MEMORY

  %loadBr_41b004 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b004 = icmp eq i8 %loadBr_41b004, 1
  br i1 %cmpBr_41b004, label %block_.L_41b04d, label %block_41b00a

block_41b00a:
  ; Code: movl 0x62ea24, %eax	 RIP: 41b00a	 Bytes: 7
  %loadMem_41b00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b00a = call %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b00a)
  store %struct.Memory* %call_41b00a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db0c, %eax	 RIP: 41b011	 Bytes: 7
  %loadMem_41b011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b011 = call %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b011)
  store %struct.Memory* %call_41b011, %struct.Memory** %MEMORY

  ; Code: jne .L_41b04d	 RIP: 41b018	 Bytes: 6
  %loadMem_41b018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b018 = call %struct.Memory* @routine_jne_.L_41b04d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b018, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_41b018, %struct.Memory** %MEMORY

  %loadBr_41b018 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b018 = icmp eq i8 %loadBr_41b018, 1
  br i1 %cmpBr_41b018, label %block_.L_41b04d, label %block_41b01e

block_41b01e:
  ; Code: movq 0x62ea20, %rax	 RIP: 41b01e	 Bytes: 8
  %loadMem_41b01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b01e = call %struct.Memory* @routine_movq_0x62ea20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b01e)
  store %struct.Memory* %call_41b01e, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rcx	 RIP: 41b026	 Bytes: 7
  %loadMem_41b026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b026 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b026)
  store %struct.Memory* %call_41b026, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41b02d	 Bytes: 3
  %loadMem_41b02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b02d = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b02d)
  store %struct.Memory* %call_41b02d, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea28, %rax	 RIP: 41b030	 Bytes: 8
  %loadMem_41b030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b030 = call %struct.Memory* @routine_movq_0x62ea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b030)
  store %struct.Memory* %call_41b030, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41b038	 Bytes: 4
  %loadMem_41b038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b038 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b038)
  store %struct.Memory* %call_41b038, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea30, %rax	 RIP: 41b03c	 Bytes: 8
  %loadMem_41b03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b03c = call %struct.Memory* @routine_movq_0x62ea30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b03c)
  store %struct.Memory* %call_41b03c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41b044	 Bytes: 4
  %loadMem_41b044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b044 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b044)
  store %struct.Memory* %call_41b044, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41be00	 RIP: 41b048	 Bytes: 5
  %loadMem_41b048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b048 = call %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b048, i64 3512, i64 5)
  store %struct.Memory* %call_41b048, %struct.Memory** %MEMORY

  br label %block_.L_41be00

  ; Code: .L_41b04d:	 RIP: 41b04d	 Bytes: 0
block_.L_41b04d:

  ; Code: cmpl $0x0, 0x62e4f8	 RIP: 41b04d	 Bytes: 8
  %loadMem_41b04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b04d = call %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b04d)
  store %struct.Memory* %call_41b04d, %struct.Memory** %MEMORY

  ; Code: jne .L_41b069	 RIP: 41b055	 Bytes: 6
  %loadMem_41b055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b055 = call %struct.Memory* @routine_jne_.L_41b069(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b055, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41b055, %struct.Memory** %MEMORY

  %loadBr_41b055 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b055 = icmp eq i8 %loadBr_41b055, 1
  br i1 %cmpBr_41b055, label %block_.L_41b069, label %block_41b05b

block_41b05b:
  ; Code: cmpl $0x0, 0x866530	 RIP: 41b05b	 Bytes: 8
  %loadMem_41b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b05b = call %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b05b)
  store %struct.Memory* %call_41b05b, %struct.Memory** %MEMORY

  ; Code: je .L_41b0b4	 RIP: 41b063	 Bytes: 6
  %loadMem_41b063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b063 = call %struct.Memory* @routine_je_.L_41b0b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b063, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_41b063, %struct.Memory** %MEMORY

  %loadBr_41b063 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b063 = icmp eq i8 %loadBr_41b063, 1
  br i1 %cmpBr_41b063, label %block_.L_41b0b4, label %block_.L_41b069

  ; Code: .L_41b069:	 RIP: 41b069	 Bytes: 0
block_.L_41b069:

  ; Code: movl 0x62ea24, %eax	 RIP: 41b069	 Bytes: 7
  %loadMem_41b069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b069 = call %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b069)
  store %struct.Memory* %call_41b069, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db0c, %eax	 RIP: 41b070	 Bytes: 7
  %loadMem_41b070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b070 = call %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b070)
  store %struct.Memory* %call_41b070, %struct.Memory** %MEMORY

  ; Code: je .L_41b0b4	 RIP: 41b077	 Bytes: 6
  %loadMem_41b077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b077 = call %struct.Memory* @routine_je_.L_41b0b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b077, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_41b077, %struct.Memory** %MEMORY

  %loadBr_41b077 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b077 = icmp eq i8 %loadBr_41b077, 1
  br i1 %cmpBr_41b077, label %block_.L_41b0b4, label %block_41b07d

block_41b07d:
  ; Code: cmpl $0x0, 0x62e514	 RIP: 41b07d	 Bytes: 8
  %loadMem_41b07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b07d = call %struct.Memory* @routine_cmpl__0x0__0x62e514(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b07d)
  store %struct.Memory* %call_41b07d, %struct.Memory** %MEMORY

  ; Code: jne .L_41b0b4	 RIP: 41b085	 Bytes: 6
  %loadMem_41b085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b085 = call %struct.Memory* @routine_jne_.L_41b0b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b085, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_41b085, %struct.Memory** %MEMORY

  %loadBr_41b085 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b085 = icmp eq i8 %loadBr_41b085, 1
  br i1 %cmpBr_41b085, label %block_.L_41b0b4, label %block_41b08b

block_41b08b:
  ; Code: movq 0x62ea20, %rax	 RIP: 41b08b	 Bytes: 8
  %loadMem_41b08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b08b = call %struct.Memory* @routine_movq_0x62ea20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b08b)
  store %struct.Memory* %call_41b08b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 41b093	 Bytes: 4
  %loadMem_41b093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b093 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b093)
  store %struct.Memory* %call_41b093, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea28, %rax	 RIP: 41b097	 Bytes: 8
  %loadMem_41b097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b097 = call %struct.Memory* @routine_movq_0x62ea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b097)
  store %struct.Memory* %call_41b097, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41b09f	 Bytes: 4
  %loadMem_41b09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b09f = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b09f)
  store %struct.Memory* %call_41b09f, %struct.Memory** %MEMORY

  ; Code: movq 0x62ea30, %rax	 RIP: 41b0a3	 Bytes: 8
  %loadMem_41b0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0a3 = call %struct.Memory* @routine_movq_0x62ea30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0a3)
  store %struct.Memory* %call_41b0a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41b0ab	 Bytes: 4
  %loadMem_41b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0ab = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0ab)
  store %struct.Memory* %call_41b0ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b6d2	 RIP: 41b0af	 Bytes: 5
  %loadMem_41b0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0af = call %struct.Memory* @routine_jmpq_.L_41b6d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0af, i64 1571, i64 5)
  store %struct.Memory* %call_41b0af, %struct.Memory** %MEMORY

  br label %block_.L_41b6d2

  ; Code: .L_41b0b4:	 RIP: 41b0b4	 Bytes: 0
block_.L_41b0b4:

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 41b0b4	 Bytes: 7
  %loadMem_41b0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0b4 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0b4)
  store %struct.Memory* %call_41b0b4, %struct.Memory** %MEMORY

  ; Code: .L_41b0bb:	 RIP: 41b0bb	 Bytes: 0
  br label %block_.L_41b0bb
block_.L_41b0bb:

  ; Code: cmpl $0x12c, -0x4c(%rbp)	 RIP: 41b0bb	 Bytes: 7
  %loadMem_41b0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0bb = call %struct.Memory* @routine_cmpl__0x12c__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0bb)
  store %struct.Memory* %call_41b0bb, %struct.Memory** %MEMORY

  ; Code: jge .L_41b143	 RIP: 41b0c2	 Bytes: 6
  %loadMem_41b0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0c2 = call %struct.Memory* @routine_jge_.L_41b143(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0c2, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_41b0c2, %struct.Memory** %MEMORY

  %loadBr_41b0c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b0c2 = icmp eq i8 %loadBr_41b0c2, 1
  br i1 %cmpBr_41b0c2, label %block_.L_41b143, label %block_41b0c8

block_41b0c8:
  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 41b0c8	 Bytes: 7
  %loadMem_41b0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0c8 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0c8)
  store %struct.Memory* %call_41b0c8, %struct.Memory** %MEMORY

  ; Code: .L_41b0cf:	 RIP: 41b0cf	 Bytes: 0
  br label %block_.L_41b0cf
block_.L_41b0cf:

  ; Code: cmpl $0x12c, -0x50(%rbp)	 RIP: 41b0cf	 Bytes: 7
  %loadMem_41b0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0cf = call %struct.Memory* @routine_cmpl__0x12c__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0cf)
  store %struct.Memory* %call_41b0cf, %struct.Memory** %MEMORY

  ; Code: jge .L_41b130	 RIP: 41b0d6	 Bytes: 6
  %loadMem_41b0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0d6 = call %struct.Memory* @routine_jge_.L_41b130(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0d6, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_41b0d6, %struct.Memory** %MEMORY

  %loadBr_41b0d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b0d6 = icmp eq i8 %loadBr_41b0d6, 1
  br i1 %cmpBr_41b0d6, label %block_.L_41b130, label %block_41b0dc

block_41b0dc:
  ; Code: movq $0x63ae50, %rax	 RIP: 41b0dc	 Bytes: 10
  %loadMem_41b0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0dc = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0dc)
  store %struct.Memory* %call_41b0dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41b0e6	 Bytes: 4
  %loadMem_41b0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0e6 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0e6)
  store %struct.Memory* %call_41b0e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rcx, %rcx	 RIP: 41b0ea	 Bytes: 7
  %loadMem_41b0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0ea = call %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0ea)
  store %struct.Memory* %call_41b0ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b0f1	 Bytes: 3
  %loadMem_41b0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0f1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0f1)
  store %struct.Memory* %call_41b0f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 41b0f4	 Bytes: 4
  %loadMem_41b0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0f4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0f4)
  store %struct.Memory* %call_41b0f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41b0f8	 Bytes: 4
  %loadMem_41b0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0f8 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0f8)
  store %struct.Memory* %call_41b0f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b0fc	 Bytes: 3
  %loadMem_41b0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0fc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0fc)
  store %struct.Memory* %call_41b0fc, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rcx	 RIP: 41b0ff	 Bytes: 8
  %loadMem_41b0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b0ff = call %struct.Memory* @routine_movq_0x62db08___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b0ff)
  store %struct.Memory* %call_41b0ff, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rax)	 RIP: 41b107	 Bytes: 3
  %loadMem_41b107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b107 = call %struct.Memory* @routine_movq__rcx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b107)
  store %struct.Memory* %call_41b107, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rcx	 RIP: 41b10a	 Bytes: 8
  %loadMem_41b10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b10a = call %struct.Memory* @routine_movq_0x62db10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b10a)
  store %struct.Memory* %call_41b10a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rax)	 RIP: 41b112	 Bytes: 4
  %loadMem_41b112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b112 = call %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b112)
  store %struct.Memory* %call_41b112, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rcx	 RIP: 41b116	 Bytes: 8
  %loadMem_41b116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b116 = call %struct.Memory* @routine_movq_0x62db18___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b116)
  store %struct.Memory* %call_41b116, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rax)	 RIP: 41b11e	 Bytes: 4
  %loadMem_41b11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b11e = call %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b11e)
  store %struct.Memory* %call_41b11e, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 41b122	 Bytes: 3
  %loadMem_41b122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b122 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b122)
  store %struct.Memory* %call_41b122, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b125	 Bytes: 3
  %loadMem_41b125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b125 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b125)
  store %struct.Memory* %call_41b125, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 41b128	 Bytes: 3
  %loadMem_41b128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b128 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b128)
  store %struct.Memory* %call_41b128, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b0cf	 RIP: 41b12b	 Bytes: 5
  %loadMem_41b12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b12b = call %struct.Memory* @routine_jmpq_.L_41b0cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b12b, i64 -92, i64 5)
  store %struct.Memory* %call_41b12b, %struct.Memory** %MEMORY

  br label %block_.L_41b0cf

  ; Code: .L_41b130:	 RIP: 41b130	 Bytes: 0
block_.L_41b130:

  ; Code: jmpq .L_41b135	 RIP: 41b130	 Bytes: 5
  %loadMem_41b130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b130 = call %struct.Memory* @routine_jmpq_.L_41b135(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b130, i64 5, i64 5)
  store %struct.Memory* %call_41b130, %struct.Memory** %MEMORY

  br label %block_.L_41b135

  ; Code: .L_41b135:	 RIP: 41b135	 Bytes: 0
block_.L_41b135:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41b135	 Bytes: 3
  %loadMem_41b135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b135 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b135)
  store %struct.Memory* %call_41b135, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b138	 Bytes: 3
  %loadMem_41b138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b138 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b138)
  store %struct.Memory* %call_41b138, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41b13b	 Bytes: 3
  %loadMem_41b13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b13b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b13b)
  store %struct.Memory* %call_41b13b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b0bb	 RIP: 41b13e	 Bytes: 5
  %loadMem_41b13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b13e = call %struct.Memory* @routine_jmpq_.L_41b0bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b13e, i64 -131, i64 5)
  store %struct.Memory* %call_41b13e, %struct.Memory** %MEMORY

  br label %block_.L_41b0bb

  ; Code: .L_41b143:	 RIP: 41b143	 Bytes: 0
block_.L_41b143:

  ; Code: movq $0x86bda0, %rax	 RIP: 41b143	 Bytes: 10
  %loadMem_41b143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b143 = call %struct.Memory* @routine_movq__0x86bda0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b143)
  store %struct.Memory* %call_41b143, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 41b14d	 Bytes: 2
  %loadMem_41b14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b14d = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b14d)
  store %struct.Memory* %call_41b14d, %struct.Memory** %MEMORY

  ; Code: movl $0x14400, %ecx	 RIP: 41b14f	 Bytes: 5
  %loadMem_41b14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b14f = call %struct.Memory* @routine_movl__0x14400___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b14f)
  store %struct.Memory* %call_41b14f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41b154	 Bytes: 2
  %loadMem_41b154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b154 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b154)
  store %struct.Memory* %call_41b154, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41b156	 Bytes: 3
  %loadMem_41b156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b156 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b156)
  store %struct.Memory* %call_41b156, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 41b159	 Bytes: 5
  %loadMem1_41b159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b159 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b159, i64 -107657, i64 5, i64 5)
  store %struct.Memory* %call1_41b159, %struct.Memory** %MEMORY

  %loadMem2_41b159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b159 = load i64, i64* %3
  %call2_41b159 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_41b159, %struct.Memory* %loadMem2_41b159)
  store %struct.Memory* %call2_41b159, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 41b15e	 Bytes: 7
  %loadMem_41b15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b15e = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b15e)
  store %struct.Memory* %call_41b15e, %struct.Memory** %MEMORY

  ; Code: .L_41b165:	 RIP: 41b165	 Bytes: 0
  br label %block_.L_41b165
block_.L_41b165:

  ; Code: cmpl $0x12c, -0x4c(%rbp)	 RIP: 41b165	 Bytes: 7
  %loadMem_41b165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b165 = call %struct.Memory* @routine_cmpl__0x12c__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b165)
  store %struct.Memory* %call_41b165, %struct.Memory** %MEMORY

  ; Code: jge .L_41b255	 RIP: 41b16c	 Bytes: 6
  %loadMem_41b16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b16c = call %struct.Memory* @routine_jge_.L_41b255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b16c, i8* %BRANCH_TAKEN, i64 233, i64 6, i64 6)
  store %struct.Memory* %call_41b16c, %struct.Memory** %MEMORY

  %loadBr_41b16c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b16c = icmp eq i8 %loadBr_41b16c, 1
  br i1 %cmpBr_41b16c, label %block_.L_41b255, label %block_41b172

block_41b172:
  ; Code: movq $0x882600, %rax	 RIP: 41b172	 Bytes: 10
  %loadMem_41b172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b172 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b172)
  store %struct.Memory* %call_41b172, %struct.Memory** %MEMORY

  ; Code: movq $0x639220, %rcx	 RIP: 41b17c	 Bytes: 10
  %loadMem_41b17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b17c = call %struct.Memory* @routine_movq__0x639220___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b17c)
  store %struct.Memory* %call_41b17c, %struct.Memory** %MEMORY

  ; Code: movq $0x884b20, %rdx	 RIP: 41b186	 Bytes: 10
  %loadMem_41b186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b186 = call %struct.Memory* @routine_movq__0x884b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b186)
  store %struct.Memory* %call_41b186, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rsi	 RIP: 41b190	 Bytes: 4
  %loadMem_41b190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b190 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b190)
  store %struct.Memory* %call_41b190, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e530(,%rsi,4)	 RIP: 41b194	 Bytes: 11
  %loadMem_41b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b194 = call %struct.Memory* @routine_movl__0x0__0x62e530___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b194)
  store %struct.Memory* %call_41b194, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rsi	 RIP: 41b19f	 Bytes: 4
  %loadMem_41b19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b19f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b19f)
  store %struct.Memory* %call_41b19f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x638c60(,%rsi,4)	 RIP: 41b1a3	 Bytes: 11
  %loadMem_41b1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1a3 = call %struct.Memory* @routine_movl__0x0__0x638c60___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1a3)
  store %struct.Memory* %call_41b1a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rsi	 RIP: 41b1ae	 Bytes: 4
  %loadMem_41b1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1ae = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1ae)
  store %struct.Memory* %call_41b1ae, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x881e00(,%rsi,4)	 RIP: 41b1b2	 Bytes: 11
  %loadMem_41b1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1b2 = call %struct.Memory* @routine_movl__0x0__0x881e00___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1b2)
  store %struct.Memory* %call_41b1b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rsi	 RIP: 41b1bd	 Bytes: 4
  %loadMem_41b1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1bd = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1bd)
  store %struct.Memory* %call_41b1bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 41b1c1	 Bytes: 4
  %loadMem_41b1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1c1 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1c1)
  store %struct.Memory* %call_41b1c1, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 41b1c5	 Bytes: 3
  %loadMem_41b1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1c5 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1c5)
  store %struct.Memory* %call_41b1c5, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rsi	 RIP: 41b1c8	 Bytes: 8
  %loadMem_41b1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1c8 = call %struct.Memory* @routine_movq_0x62db08___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1c8)
  store %struct.Memory* %call_41b1c8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 41b1d0	 Bytes: 3
  %loadMem_41b1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1d0 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1d0)
  store %struct.Memory* %call_41b1d0, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rsi	 RIP: 41b1d3	 Bytes: 8
  %loadMem_41b1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1d3 = call %struct.Memory* @routine_movq_0x62db10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1d3)
  store %struct.Memory* %call_41b1d3, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x8(%rdx)	 RIP: 41b1db	 Bytes: 4
  %loadMem_41b1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1db = call %struct.Memory* @routine_movq__rsi__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1db)
  store %struct.Memory* %call_41b1db, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rsi	 RIP: 41b1df	 Bytes: 8
  %loadMem_41b1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1df = call %struct.Memory* @routine_movq_0x62db18___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1df)
  store %struct.Memory* %call_41b1df, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x10(%rdx)	 RIP: 41b1e7	 Bytes: 4
  %loadMem_41b1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1e7 = call %struct.Memory* @routine_movq__rsi__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1e7)
  store %struct.Memory* %call_41b1e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 41b1eb	 Bytes: 4
  %loadMem_41b1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1eb = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1eb)
  store %struct.Memory* %call_41b1eb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41b1ef	 Bytes: 4
  %loadMem_41b1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1ef = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1ef)
  store %struct.Memory* %call_41b1ef, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41b1f3	 Bytes: 3
  %loadMem_41b1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1f3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1f3)
  store %struct.Memory* %call_41b1f3, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rdx	 RIP: 41b1f6	 Bytes: 8
  %loadMem_41b1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1f6 = call %struct.Memory* @routine_movq_0x62db08___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1f6)
  store %struct.Memory* %call_41b1f6, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 41b1fe	 Bytes: 3
  %loadMem_41b1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b1fe = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b1fe)
  store %struct.Memory* %call_41b1fe, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rdx	 RIP: 41b201	 Bytes: 8
  %loadMem_41b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b201 = call %struct.Memory* @routine_movq_0x62db10___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b201)
  store %struct.Memory* %call_41b201, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x8(%rcx)	 RIP: 41b209	 Bytes: 4
  %loadMem_41b209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b209 = call %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b209)
  store %struct.Memory* %call_41b209, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rdx	 RIP: 41b20d	 Bytes: 8
  %loadMem_41b20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b20d = call %struct.Memory* @routine_movq_0x62db18___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b20d)
  store %struct.Memory* %call_41b20d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x10(%rcx)	 RIP: 41b215	 Bytes: 4
  %loadMem_41b215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b215 = call %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b215)
  store %struct.Memory* %call_41b215, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41b219	 Bytes: 4
  %loadMem_41b219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b219 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b219)
  store %struct.Memory* %call_41b219, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41b21d	 Bytes: 4
  %loadMem_41b21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b21d = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b21d)
  store %struct.Memory* %call_41b21d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b221	 Bytes: 3
  %loadMem_41b221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b221 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b221)
  store %struct.Memory* %call_41b221, %struct.Memory** %MEMORY

  ; Code: movq 0x62db08, %rcx	 RIP: 41b224	 Bytes: 8
  %loadMem_41b224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b224 = call %struct.Memory* @routine_movq_0x62db08___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b224)
  store %struct.Memory* %call_41b224, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rax)	 RIP: 41b22c	 Bytes: 3
  %loadMem_41b22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b22c = call %struct.Memory* @routine_movq__rcx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b22c)
  store %struct.Memory* %call_41b22c, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rcx	 RIP: 41b22f	 Bytes: 8
  %loadMem_41b22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b22f = call %struct.Memory* @routine_movq_0x62db10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b22f)
  store %struct.Memory* %call_41b22f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rax)	 RIP: 41b237	 Bytes: 4
  %loadMem_41b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b237 = call %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b237)
  store %struct.Memory* %call_41b237, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rcx	 RIP: 41b23b	 Bytes: 8
  %loadMem_41b23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b23b = call %struct.Memory* @routine_movq_0x62db18___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b23b)
  store %struct.Memory* %call_41b23b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rax)	 RIP: 41b243	 Bytes: 4
  %loadMem_41b243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b243 = call %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b243)
  store %struct.Memory* %call_41b243, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41b247	 Bytes: 3
  %loadMem_41b247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b247 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b247)
  store %struct.Memory* %call_41b247, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b24a	 Bytes: 3
  %loadMem_41b24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b24a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b24a)
  store %struct.Memory* %call_41b24a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41b24d	 Bytes: 3
  %loadMem_41b24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b24d = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b24d)
  store %struct.Memory* %call_41b24d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b165	 RIP: 41b250	 Bytes: 5
  %loadMem_41b250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b250 = call %struct.Memory* @routine_jmpq_.L_41b165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b250, i64 -235, i64 5)
  store %struct.Memory* %call_41b250, %struct.Memory** %MEMORY

  br label %block_.L_41b165

  ; Code: .L_41b255:	 RIP: 41b255	 Bytes: 0
block_.L_41b255:

  ; Code: movq $0x884320, %rax	 RIP: 41b255	 Bytes: 10
  %loadMem_41b255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b255 = call %struct.Memory* @routine_movq__0x884320___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b255)
  store %struct.Memory* %call_41b255, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 41b25f	 Bytes: 2
  %loadMem_41b25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b25f = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b25f)
  store %struct.Memory* %call_41b25f, %struct.Memory** %MEMORY

  ; Code: movl $0x800, %ecx	 RIP: 41b261	 Bytes: 5
  %loadMem_41b261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b261 = call %struct.Memory* @routine_movl__0x800___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b261)
  store %struct.Memory* %call_41b261, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41b266	 Bytes: 2
  %loadMem_41b266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b266 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b266)
  store %struct.Memory* %call_41b266, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41b268	 Bytes: 3
  %loadMem_41b268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b268 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b268)
  store %struct.Memory* %call_41b268, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 41b26b	 Bytes: 5
  %loadMem1_41b26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b26b = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b26b, i64 -107931, i64 5, i64 5)
  store %struct.Memory* %call1_41b26b, %struct.Memory** %MEMORY

  %loadMem2_41b26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b26b = load i64, i64* %3
  %call2_41b26b = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_41b26b, %struct.Memory* %loadMem2_41b26b)
  store %struct.Memory* %call2_41b26b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5c(%rbp)	 RIP: 41b270	 Bytes: 7
  %loadMem_41b270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b270 = call %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b270)
  store %struct.Memory* %call_41b270, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x86450c	 RIP: 41b277	 Bytes: 11
  %loadMem_41b277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b277 = call %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b277)
  store %struct.Memory* %call_41b277, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x60(%rbp)	 RIP: 41b282	 Bytes: 7
  %loadMem_41b282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b282 = call %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b282)
  store %struct.Memory* %call_41b282, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x633b50	 RIP: 41b289	 Bytes: 11
  %loadMem_41b289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b289 = call %struct.Memory* @routine_movl__0x1__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b289)
  store %struct.Memory* %call_41b289, %struct.Memory** %MEMORY

  ; Code: .L_41b294:	 RIP: 41b294	 Bytes: 0
  br label %block_.L_41b294
block_.L_41b294:

  ; Code: movl 0x633b50, %eax	 RIP: 41b294	 Bytes: 7
  %loadMem_41b294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b294 = call %struct.Memory* @routine_movl_0x633b50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b294)
  store %struct.Memory* %call_41b294, %struct.Memory** %MEMORY

  ; Code: cmpl 0x880b18, %eax	 RIP: 41b29b	 Bytes: 7
  %loadMem_41b29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b29b = call %struct.Memory* @routine_cmpl_0x880b18___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b29b)
  store %struct.Memory* %call_41b29b, %struct.Memory** %MEMORY

  ; Code: jg .L_41b6cd	 RIP: 41b2a2	 Bytes: 6
  %loadMem_41b2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2a2 = call %struct.Memory* @routine_jg_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2a2, i8* %BRANCH_TAKEN, i64 1067, i64 6, i64 6)
  store %struct.Memory* %call_41b2a2, %struct.Memory** %MEMORY

  %loadBr_41b2a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b2a2 = icmp eq i8 %loadBr_41b2a2, 1
  br i1 %cmpBr_41b2a2, label %block_.L_41b6cd, label %block_41b2a8

block_41b2a8:
  ; Code: callq .rtime	 RIP: 41b2a8	 Bytes: 5
  %loadMem1_41b2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b2a8 = call %struct.Memory* @routine_callq_.rtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b2a8, i64 33976, i64 5, i64 5)
  store %struct.Memory* %call1_41b2a8, %struct.Memory** %MEMORY

  %loadMem2_41b2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b2a8 = load i64, i64* %3
  %call2_41b2a8 = call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64  %loadPC_41b2a8, %struct.Memory* %loadMem2_41b2a8)
  store %struct.Memory* %call2_41b2a8, %struct.Memory** %MEMORY

  ; Code: movq 0x8662e8, %rsi	 RIP: 41b2ad	 Bytes: 8
  %loadMem_41b2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2ad = call %struct.Memory* @routine_movq_0x8662e8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2ad)
  store %struct.Memory* %call_41b2ad, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41b2b5	 Bytes: 3
  %loadMem_41b2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2b5 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2b5)
  store %struct.Memory* %call_41b2b5, %struct.Memory** %MEMORY

  ; Code: callq .rdifftime	 RIP: 41b2b8	 Bytes: 5
  %loadMem1_41b2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b2b8 = call %struct.Memory* @routine_callq_.rdifftime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b2b8, i64 33976, i64 5, i64 5)
  store %struct.Memory* %call1_41b2b8, %struct.Memory** %MEMORY

  %loadMem2_41b2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b2b8 = load i64, i64* %3
  %call2_41b2b8 = call %struct.Memory* @sub_423770.rdifftime(%struct.State* %0, i64  %loadPC_41b2b8, %struct.Memory* %loadMem2_41b2b8)
  store %struct.Memory* %call2_41b2b8, %struct.Memory** %MEMORY

  ; Code: movsd 0xd0f3(%rip), %xmm0	 RIP: 41b2bd	 Bytes: 8
  %loadMem_41b2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2bd = call %struct.Memory* @routine_movsd_0xd0f3__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2bd)
  store %struct.Memory* %call_41b2bd, %struct.Memory** %MEMORY

  ; Code: movsd 0xd0f3(%rip), %xmm1	 RIP: 41b2c5	 Bytes: 8
  %loadMem_41b2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2c5 = call %struct.Memory* @routine_movsd_0xd0f3__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2c5)
  store %struct.Memory* %call_41b2c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 41b2cd	 Bytes: 3
  %loadMem_41b2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2cd = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2cd)
  store %struct.Memory* %call_41b2cd, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x58(%rbp), %xmm2	 RIP: 41b2d0	 Bytes: 5
  %loadMem_41b2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2d0 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2d0)
  store %struct.Memory* %call_41b2d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x633b44, %xmm3	 RIP: 41b2d5	 Bytes: 9
  %loadMem_41b2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2d5 = call %struct.Memory* @routine_cvtsi2sdl_0x633b44___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2d5)
  store %struct.Memory* %call_41b2d5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm3	 RIP: 41b2de	 Bytes: 4
  %loadMem_41b2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2de = call %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2de)
  store %struct.Memory* %call_41b2de, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm3	 RIP: 41b2e2	 Bytes: 4
  %loadMem_41b2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2e2 = call %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2e2)
  store %struct.Memory* %call_41b2e2, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm3, %xmm2	 RIP: 41b2e6	 Bytes: 4
  %loadMem_41b2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2e6 = call %struct.Memory* @routine_ucomisd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2e6)
  store %struct.Memory* %call_41b2e6, %struct.Memory** %MEMORY

  ; Code: jbe .L_41b303	 RIP: 41b2ea	 Bytes: 6
  %loadMem_41b2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2ea = call %struct.Memory* @routine_jbe_.L_41b303(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2ea, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41b2ea, %struct.Memory** %MEMORY

  %loadBr_41b2ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b2ea = icmp eq i8 %loadBr_41b2ea, 1
  br i1 %cmpBr_41b2ea, label %block_.L_41b303, label %block_41b2f0

block_41b2f0:
  ; Code: cmpl $0x2, 0x633b50	 RIP: 41b2f0	 Bytes: 8
  %loadMem_41b2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2f0 = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2f0)
  store %struct.Memory* %call_41b2f0, %struct.Memory** %MEMORY

  ; Code: jle .L_41b303	 RIP: 41b2f8	 Bytes: 6
  %loadMem_41b2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2f8 = call %struct.Memory* @routine_jle_.L_41b303(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2f8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41b2f8, %struct.Memory** %MEMORY

  %loadBr_41b2f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b2f8 = icmp eq i8 %loadBr_41b2f8, 1
  br i1 %cmpBr_41b2f8, label %block_.L_41b303, label %block_41b2fe

block_41b2fe:
  ; Code: jmpq .L_41b6cd	 RIP: 41b2fe	 Bytes: 5
  %loadMem_41b2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b2fe = call %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b2fe, i64 975, i64 5)
  store %struct.Memory* %call_41b2fe, %struct.Memory** %MEMORY

  br label %block_.L_41b6cd

  ; Code: .L_41b303:	 RIP: 41b303	 Bytes: 0
block_.L_41b303:

  ; Code: leaq -0x30a8(%rbp), %rdi	 RIP: 41b303	 Bytes: 7
  %loadMem_41b303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b303 = call %struct.Memory* @routine_leaq_MINUS0x30a8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b303)
  store %struct.Memory* %call_41b303, %struct.Memory** %MEMORY

  ; Code: movl $0x64, %eax	 RIP: 41b30a	 Bytes: 5
  %loadMem_41b30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b30a = call %struct.Memory* @routine_movl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b30a)
  store %struct.Memory* %call_41b30a, %struct.Memory** %MEMORY

  ; Code: movl $0x23, %ecx	 RIP: 41b30f	 Bytes: 5
  %loadMem_41b30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b30f = call %struct.Memory* @routine_movl__0x23___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b30f)
  store %struct.Memory* %call_41b30f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8644f4	 RIP: 41b314	 Bytes: 11
  %loadMem_41b314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b314 = call %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b314)
  store %struct.Memory* %call_41b314, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edx	 RIP: 41b31f	 Bytes: 3
  %loadMem_41b31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b31f = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b31f)
  store %struct.Memory* %call_41b31f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x85f154	 RIP: 41b322	 Bytes: 8
  %loadMem_41b322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b322 = call %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b322)
  store %struct.Memory* %call_41b322, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41b32a	 Bytes: 2
  %loadMem_41b32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b32a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b32a)
  store %struct.Memory* %call_41b32a, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %esi	 RIP: 41b32c	 Bytes: 3
  %loadMem_41b32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b32c = call %struct.Memory* @routine_cmovel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b32c)
  store %struct.Memory* %call_41b32c, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 41b32f	 Bytes: 2
  %loadMem_41b32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b32f = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b32f)
  store %struct.Memory* %call_41b32f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x64(%rbp)	 RIP: 41b331	 Bytes: 3
  %loadMem_41b331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b331 = call %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b331)
  store %struct.Memory* %call_41b331, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edx	 RIP: 41b334	 Bytes: 3
  %loadMem_41b334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b334 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b334)
  store %struct.Memory* %call_41b334, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x85f154	 RIP: 41b337	 Bytes: 8
  %loadMem_41b337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b337 = call %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b337)
  store %struct.Memory* %call_41b337, %struct.Memory** %MEMORY

  ; Code: cmovel %ecx, %eax	 RIP: 41b33f	 Bytes: 3
  %loadMem_41b33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b33f = call %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b33f)
  store %struct.Memory* %call_41b33f, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edx	 RIP: 41b342	 Bytes: 2
  %loadMem_41b342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b342 = call %struct.Memory* @routine_addl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b342)
  store %struct.Memory* %call_41b342, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x68(%rbp)	 RIP: 41b344	 Bytes: 3
  %loadMem_41b344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b344 = call %struct.Memory* @routine_movl__edx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b344)
  store %struct.Memory* %call_41b344, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 41b347	 Bytes: 3
  %loadMem_41b347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b347 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b347)
  store %struct.Memory* %call_41b347, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edx	 RIP: 41b34a	 Bytes: 3
  %loadMem_41b34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b34a = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b34a)
  store %struct.Memory* %call_41b34a, %struct.Memory** %MEMORY

  ; Code: movl 0x633b50, %ecx	 RIP: 41b34d	 Bytes: 7
  %loadMem_41b34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b34d = call %struct.Memory* @routine_movl_0x633b50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b34d)
  store %struct.Memory* %call_41b34d, %struct.Memory** %MEMORY

  ; Code: callq .search_root	 RIP: 41b354	 Bytes: 5
  %loadMem1_41b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b354 = call %struct.Memory* @routine_callq_.search_root(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b354, i64 -8036, i64 5, i64 5)
  store %struct.Memory* %call1_41b354, %struct.Memory** %MEMORY

  %loadMem2_41b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b354 = load i64, i64* %3
  %call2_41b354 = call %struct.Memory* @sub_4193f0.search_root(%struct.State* %0, i64  %loadPC_41b354, %struct.Memory* %loadMem2_41b354)
  store %struct.Memory* %call2_41b354, %struct.Memory** %MEMORY

  ; Code: movq -0x30a8(%rbp), %rdi	 RIP: 41b359	 Bytes: 7
  %loadMem_41b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b359 = call %struct.Memory* @routine_movq_MINUS0x30a8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b359)
  store %struct.Memory* %call_41b359, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x30(%rbp)	 RIP: 41b360	 Bytes: 4
  %loadMem_41b360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b360 = call %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b360)
  store %struct.Memory* %call_41b360, %struct.Memory** %MEMORY

  ; Code: movq -0x30a0(%rbp), %rdi	 RIP: 41b364	 Bytes: 7
  %loadMem_41b364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b364 = call %struct.Memory* @routine_movq_MINUS0x30a0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b364)
  store %struct.Memory* %call_41b364, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x28(%rbp)	 RIP: 41b36b	 Bytes: 4
  %loadMem_41b36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b36b = call %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b36b)
  store %struct.Memory* %call_41b36b, %struct.Memory** %MEMORY

  ; Code: movq -0x3098(%rbp), %rdi	 RIP: 41b36f	 Bytes: 7
  %loadMem_41b36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b36f = call %struct.Memory* @routine_movq_MINUS0x3098__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b36f)
  store %struct.Memory* %call_41b36f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 41b376	 Bytes: 4
  %loadMem_41b376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b376 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b376)
  store %struct.Memory* %call_41b376, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866530	 RIP: 41b37a	 Bytes: 8
  %loadMem_41b37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b37a = call %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b37a)
  store %struct.Memory* %call_41b37a, %struct.Memory** %MEMORY

  ; Code: je .L_41b38d	 RIP: 41b382	 Bytes: 6
  %loadMem_41b382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b382 = call %struct.Memory* @routine_je_.L_41b38d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b382, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41b382, %struct.Memory** %MEMORY

  %loadBr_41b382 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b382 = icmp eq i8 %loadBr_41b382, 1
  br i1 %cmpBr_41b382, label %block_.L_41b38d, label %block_41b388

block_41b388:
  ; Code: jmpq .L_41b6cd	 RIP: 41b388	 Bytes: 5
  %loadMem_41b388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b388 = call %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b388, i64 837, i64 5)
  store %struct.Memory* %call_41b388, %struct.Memory** %MEMORY

  br label %block_.L_41b6cd

  ; Code: .L_41b38d:	 RIP: 41b38d	 Bytes: 0
block_.L_41b38d:

  ; Code: movl 0x86450c, %eax	 RIP: 41b38d	 Bytes: 7
  %loadMem_41b38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b38d = call %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b38d)
  store %struct.Memory* %call_41b38d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 41b394	 Bytes: 3
  %loadMem_41b394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b394 = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b394)
  store %struct.Memory* %call_41b394, %struct.Memory** %MEMORY

  ; Code: jg .L_41b3ad	 RIP: 41b397	 Bytes: 6
  %loadMem_41b397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b397 = call %struct.Memory* @routine_jg_.L_41b3ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b397, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41b397, %struct.Memory** %MEMORY

  %loadBr_41b397 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b397 = icmp eq i8 %loadBr_41b397, 1
  br i1 %cmpBr_41b397, label %block_.L_41b3ad, label %block_41b39d

block_41b39d:
  ; Code: movl $0x1, 0x8644f4	 RIP: 41b39d	 Bytes: 11
  %loadMem_41b39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b39d = call %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b39d)
  store %struct.Memory* %call_41b39d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b3b8	 RIP: 41b3a8	 Bytes: 5
  %loadMem_41b3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3a8 = call %struct.Memory* @routine_jmpq_.L_41b3b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3a8, i64 16, i64 5)
  store %struct.Memory* %call_41b3a8, %struct.Memory** %MEMORY

  br label %block_.L_41b3b8

  ; Code: .L_41b3ad:	 RIP: 41b3ad	 Bytes: 0
block_.L_41b3ad:

  ; Code: movl $0x0, 0x8644f4	 RIP: 41b3ad	 Bytes: 11
  %loadMem_41b3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3ad = call %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3ad)
  store %struct.Memory* %call_41b3ad, %struct.Memory** %MEMORY

  ; Code: .L_41b3b8:	 RIP: 41b3b8	 Bytes: 0
  br label %block_.L_41b3b8
block_.L_41b3b8:

  ; Code: movl 0x86450c, %eax	 RIP: 41b3b8	 Bytes: 7
  %loadMem_41b3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3b8 = call %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3b8)
  store %struct.Memory* %call_41b3b8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 41b3bf	 Bytes: 3
  %loadMem_41b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3bf = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3bf)
  store %struct.Memory* %call_41b3bf, %struct.Memory** %MEMORY

  ; Code: jg .L_41b43b	 RIP: 41b3c2	 Bytes: 6
  %loadMem_41b3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3c2 = call %struct.Memory* @routine_jg_.L_41b43b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3c2, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_41b3c2, %struct.Memory** %MEMORY

  %loadBr_41b3c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b3c2 = icmp eq i8 %loadBr_41b3c2, 1
  br i1 %cmpBr_41b3c2, label %block_.L_41b43b, label %block_41b3c8

block_41b3c8:
  ; Code: cmpl $0x0, 0x866788	 RIP: 41b3c8	 Bytes: 8
  %loadMem_41b3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3c8 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3c8)
  store %struct.Memory* %call_41b3c8, %struct.Memory** %MEMORY

  ; Code: jne .L_41b43b	 RIP: 41b3d0	 Bytes: 6
  %loadMem_41b3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3d0 = call %struct.Memory* @routine_jne_.L_41b43b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3d0, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_41b3d0, %struct.Memory** %MEMORY

  %loadBr_41b3d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b3d0 = icmp eq i8 %loadBr_41b3d0, 1
  br i1 %cmpBr_41b3d0, label %block_.L_41b43b, label %block_41b3d6

block_41b3d6:
  ; Code: leaq -0x30c0(%rbp), %rdi	 RIP: 41b3d6	 Bytes: 7
  %loadMem_41b3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3d6 = call %struct.Memory* @routine_leaq_MINUS0x30c0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3d6)
  store %struct.Memory* %call_41b3d6, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %esi	 RIP: 41b3dd	 Bytes: 5
  %loadMem_41b3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3dd = call %struct.Memory* @routine_movl__0xfff0bdc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3dd)
  store %struct.Memory* %call_41b3dd, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %edx	 RIP: 41b3e2	 Bytes: 5
  %loadMem_41b3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3e2 = call %struct.Memory* @routine_movl__0xf4240___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3e2)
  store %struct.Memory* %call_41b3e2, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %eax	 RIP: 41b3e7	 Bytes: 3
  %loadMem_41b3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3e7 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3e7)
  store %struct.Memory* %call_41b3e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b3ea	 Bytes: 3
  %loadMem_41b3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3ea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3ea)
  store %struct.Memory* %call_41b3ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 41b3ed	 Bytes: 3
  %loadMem_41b3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3ed = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3ed)
  store %struct.Memory* %call_41b3ed, %struct.Memory** %MEMORY

  ; Code: movl 0x633b50, %ecx	 RIP: 41b3f0	 Bytes: 7
  %loadMem_41b3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3f0 = call %struct.Memory* @routine_movl_0x633b50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3f0)
  store %struct.Memory* %call_41b3f0, %struct.Memory** %MEMORY

  ; Code: callq .search_root	 RIP: 41b3f7	 Bytes: 5
  %loadMem1_41b3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b3f7 = call %struct.Memory* @routine_callq_.search_root(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b3f7, i64 -8199, i64 5, i64 5)
  store %struct.Memory* %call1_41b3f7, %struct.Memory** %MEMORY

  %loadMem2_41b3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b3f7 = load i64, i64* %3
  %call2_41b3f7 = call %struct.Memory* @sub_4193f0.search_root(%struct.State* %0, i64  %loadPC_41b3f7, %struct.Memory* %loadMem2_41b3f7)
  store %struct.Memory* %call2_41b3f7, %struct.Memory** %MEMORY

  ; Code: movq -0x30c0(%rbp), %rdi	 RIP: 41b3fc	 Bytes: 7
  %loadMem_41b3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b3fc = call %struct.Memory* @routine_movq_MINUS0x30c0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b3fc)
  store %struct.Memory* %call_41b3fc, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x30(%rbp)	 RIP: 41b403	 Bytes: 4
  %loadMem_41b403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b403 = call %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b403)
  store %struct.Memory* %call_41b403, %struct.Memory** %MEMORY

  ; Code: movq -0x30b8(%rbp), %rdi	 RIP: 41b407	 Bytes: 7
  %loadMem_41b407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b407 = call %struct.Memory* @routine_movq_MINUS0x30b8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b407)
  store %struct.Memory* %call_41b407, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x28(%rbp)	 RIP: 41b40e	 Bytes: 4
  %loadMem_41b40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b40e = call %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b40e)
  store %struct.Memory* %call_41b40e, %struct.Memory** %MEMORY

  ; Code: movq -0x30b0(%rbp), %rdi	 RIP: 41b412	 Bytes: 7
  %loadMem_41b412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b412 = call %struct.Memory* @routine_movq_MINUS0x30b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b412)
  store %struct.Memory* %call_41b412, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 41b419	 Bytes: 4
  %loadMem_41b419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b419 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b419)
  store %struct.Memory* %call_41b419, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866788	 RIP: 41b41d	 Bytes: 8
  %loadMem_41b41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b41d = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b41d)
  store %struct.Memory* %call_41b41d, %struct.Memory** %MEMORY

  ; Code: jne .L_41b436	 RIP: 41b425	 Bytes: 6
  %loadMem_41b425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b425 = call %struct.Memory* @routine_jne_.L_41b436(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b425, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41b425, %struct.Memory** %MEMORY

  %loadBr_41b425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b425 = icmp eq i8 %loadBr_41b425, 1
  br i1 %cmpBr_41b425, label %block_.L_41b436, label %block_41b42b

block_41b42b:
  ; Code: movl $0x0, 0x8644f4	 RIP: 41b42b	 Bytes: 11
  %loadMem_41b42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b42b = call %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b42b)
  store %struct.Memory* %call_41b42b, %struct.Memory** %MEMORY

  ; Code: .L_41b436:	 RIP: 41b436	 Bytes: 0
  br label %block_.L_41b436
block_.L_41b436:

  ; Code: jmpq .L_41b4e5	 RIP: 41b436	 Bytes: 5
  %loadMem_41b436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b436 = call %struct.Memory* @routine_jmpq_.L_41b4e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b436, i64 175, i64 5)
  store %struct.Memory* %call_41b436, %struct.Memory** %MEMORY

  br label %block_.L_41b4e5

  ; Code: .L_41b43b:	 RIP: 41b43b	 Bytes: 0
block_.L_41b43b:

  ; Code: movl 0x86450c, %eax	 RIP: 41b43b	 Bytes: 7
  %loadMem_41b43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b43b = call %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b43b)
  store %struct.Memory* %call_41b43b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x68(%rbp), %eax	 RIP: 41b442	 Bytes: 3
  %loadMem_41b442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b442 = call %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b442)
  store %struct.Memory* %call_41b442, %struct.Memory** %MEMORY

  ; Code: jl .L_41b4e0	 RIP: 41b445	 Bytes: 6
  %loadMem_41b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b445 = call %struct.Memory* @routine_jl_.L_41b4e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b445, i8* %BRANCH_TAKEN, i64 155, i64 6, i64 6)
  store %struct.Memory* %call_41b445, %struct.Memory** %MEMORY

  %loadBr_41b445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b445 = icmp eq i8 %loadBr_41b445, 1
  br i1 %cmpBr_41b445, label %block_.L_41b4e0, label %block_41b44b

block_41b44b:
  ; Code: cmpl $0x0, 0x866788	 RIP: 41b44b	 Bytes: 8
  %loadMem_41b44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b44b = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b44b)
  store %struct.Memory* %call_41b44b, %struct.Memory** %MEMORY

  ; Code: jne .L_41b4e0	 RIP: 41b453	 Bytes: 6
  %loadMem_41b453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b453 = call %struct.Memory* @routine_jne_.L_41b4e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b453, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_41b453, %struct.Memory** %MEMORY

  %loadBr_41b453 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b453 = icmp eq i8 %loadBr_41b453, 1
  br i1 %cmpBr_41b453, label %block_.L_41b4e0, label %block_41b459

block_41b459:
  ; Code: leaq -0x30d8(%rbp), %rdi	 RIP: 41b459	 Bytes: 7
  %loadMem_41b459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b459 = call %struct.Memory* @routine_leaq_MINUS0x30d8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b459)
  store %struct.Memory* %call_41b459, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %esi	 RIP: 41b460	 Bytes: 5
  %loadMem_41b460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b460 = call %struct.Memory* @routine_movl__0xfff0bdc0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b460)
  store %struct.Memory* %call_41b460, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %edx	 RIP: 41b465	 Bytes: 5
  %loadMem_41b465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b465 = call %struct.Memory* @routine_movl__0xf4240___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b465)
  store %struct.Memory* %call_41b465, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 41b46a	 Bytes: 4
  %loadMem_41b46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b46a = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b46a)
  store %struct.Memory* %call_41b46a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 41b46e	 Bytes: 4
  %loadMem_41b46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b46e = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b46e)
  store %struct.Memory* %call_41b46e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 41b472	 Bytes: 4
  %loadMem_41b472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b472 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b472)
  store %struct.Memory* %call_41b472, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41b476	 Bytes: 4
  %loadMem_41b476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b476 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b476)
  store %struct.Memory* %call_41b476, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41b47a	 Bytes: 4
  %loadMem_41b47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b47a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b47a)
  store %struct.Memory* %call_41b47a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41b47e	 Bytes: 4
  %loadMem_41b47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b47e = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b47e)
  store %struct.Memory* %call_41b47e, %struct.Memory** %MEMORY

  ; Code: movl 0x86450c, %ecx	 RIP: 41b482	 Bytes: 7
  %loadMem_41b482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b482 = call %struct.Memory* @routine_movl_0x86450c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b482)
  store %struct.Memory* %call_41b482, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 41b489	 Bytes: 3
  %loadMem_41b489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b489 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b489)
  store %struct.Memory* %call_41b489, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %ecx	 RIP: 41b48c	 Bytes: 3
  %loadMem_41b48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b48c = call %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b48c)
  store %struct.Memory* %call_41b48c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41b48f	 Bytes: 3
  %loadMem_41b48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b48f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b48f)
  store %struct.Memory* %call_41b48f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x70(%rbp)	 RIP: 41b492	 Bytes: 3
  %loadMem_41b492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b492 = call %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b492)
  store %struct.Memory* %call_41b492, %struct.Memory** %MEMORY

  ; Code: movl 0x633b50, %ecx	 RIP: 41b495	 Bytes: 7
  %loadMem_41b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b495 = call %struct.Memory* @routine_movl_0x633b50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b495)
  store %struct.Memory* %call_41b495, %struct.Memory** %MEMORY

  ; Code: callq .search_root	 RIP: 41b49c	 Bytes: 5
  %loadMem1_41b49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b49c = call %struct.Memory* @routine_callq_.search_root(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b49c, i64 -8364, i64 5, i64 5)
  store %struct.Memory* %call1_41b49c, %struct.Memory** %MEMORY

  %loadMem2_41b49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b49c = load i64, i64* %3
  %call2_41b49c = call %struct.Memory* @sub_4193f0.search_root(%struct.State* %0, i64  %loadPC_41b49c, %struct.Memory* %loadMem2_41b49c)
  store %struct.Memory* %call2_41b49c, %struct.Memory** %MEMORY

  ; Code: movq -0x30d8(%rbp), %rax	 RIP: 41b4a1	 Bytes: 7
  %loadMem_41b4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4a1 = call %struct.Memory* @routine_movq_MINUS0x30d8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4a1)
  store %struct.Memory* %call_41b4a1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 41b4a8	 Bytes: 4
  %loadMem_41b4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4a8 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4a8)
  store %struct.Memory* %call_41b4a8, %struct.Memory** %MEMORY

  ; Code: movq -0x30d0(%rbp), %rax	 RIP: 41b4ac	 Bytes: 7
  %loadMem_41b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4ac = call %struct.Memory* @routine_movq_MINUS0x30d0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4ac)
  store %struct.Memory* %call_41b4ac, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 41b4b3	 Bytes: 4
  %loadMem_41b4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4b3 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4b3)
  store %struct.Memory* %call_41b4b3, %struct.Memory** %MEMORY

  ; Code: movq -0x30c8(%rbp), %rax	 RIP: 41b4b7	 Bytes: 7
  %loadMem_41b4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4b7 = call %struct.Memory* @routine_movq_MINUS0x30c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4b7)
  store %struct.Memory* %call_41b4b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41b4be	 Bytes: 4
  %loadMem_41b4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4be = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4be)
  store %struct.Memory* %call_41b4be, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866788	 RIP: 41b4c2	 Bytes: 8
  %loadMem_41b4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4c2 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4c2)
  store %struct.Memory* %call_41b4c2, %struct.Memory** %MEMORY

  ; Code: jne .L_41b4db	 RIP: 41b4ca	 Bytes: 6
  %loadMem_41b4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4ca = call %struct.Memory* @routine_jne_.L_41b4db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4ca, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41b4ca, %struct.Memory** %MEMORY

  %loadBr_41b4ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4ca = icmp eq i8 %loadBr_41b4ca, 1
  br i1 %cmpBr_41b4ca, label %block_.L_41b4db, label %block_41b4d0

block_41b4d0:
  ; Code: movl $0x0, 0x8644f4	 RIP: 41b4d0	 Bytes: 11
  %loadMem_41b4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4d0 = call %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4d0)
  store %struct.Memory* %call_41b4d0, %struct.Memory** %MEMORY

  ; Code: .L_41b4db:	 RIP: 41b4db	 Bytes: 0
  br label %block_.L_41b4db
block_.L_41b4db:

  ; Code: jmpq .L_41b4e0	 RIP: 41b4db	 Bytes: 5
  %loadMem_41b4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4db = call %struct.Memory* @routine_jmpq_.L_41b4e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4db, i64 5, i64 5)
  store %struct.Memory* %call_41b4db, %struct.Memory** %MEMORY

  br label %block_.L_41b4e0

  ; Code: .L_41b4e0:	 RIP: 41b4e0	 Bytes: 0
block_.L_41b4e0:

  ; Code: jmpq .L_41b4e5	 RIP: 41b4e0	 Bytes: 5
  %loadMem_41b4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4e0 = call %struct.Memory* @routine_jmpq_.L_41b4e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4e0, i64 5, i64 5)
  store %struct.Memory* %call_41b4e0, %struct.Memory** %MEMORY

  br label %block_.L_41b4e5

  ; Code: .L_41b4e5:	 RIP: 41b4e5	 Bytes: 0
block_.L_41b4e5:

  ; Code: callq .interrupt	 RIP: 41b4e5	 Bytes: 5
  %loadMem1_41b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b4e5 = call %struct.Memory* @routine_callq_.interrupt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b4e5, i64 36603, i64 5, i64 5)
  store %struct.Memory* %call1_41b4e5, %struct.Memory** %MEMORY

  %loadMem2_41b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b4e5 = load i64, i64* %3
  %call2_41b4e5 = call %struct.Memory* @sub_4243e0.interrupt(%struct.State* %0, i64  %loadPC_41b4e5, %struct.Memory* %loadMem2_41b4e5)
  store %struct.Memory* %call2_41b4e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41b4ea	 Bytes: 3
  %loadMem_41b4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4ea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4ea)
  store %struct.Memory* %call_41b4ea, %struct.Memory** %MEMORY

  ; Code: je .L_41b55b	 RIP: 41b4ed	 Bytes: 6
  %loadMem_41b4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4ed = call %struct.Memory* @routine_je_.L_41b55b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4ed, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_41b4ed, %struct.Memory** %MEMORY

  %loadBr_41b4ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4ed = icmp eq i8 %loadBr_41b4ed, 1
  br i1 %cmpBr_41b4ed, label %block_.L_41b55b, label %block_41b4f3

block_41b4f3:
  ; Code: cmpl $0x1, 0x633b50	 RIP: 41b4f3	 Bytes: 8
  %loadMem_41b4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4f3 = call %struct.Memory* @routine_cmpl__0x1__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4f3)
  store %struct.Memory* %call_41b4f3, %struct.Memory** %MEMORY

  ; Code: jle .L_41b55b	 RIP: 41b4fb	 Bytes: 6
  %loadMem_41b4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b4fb = call %struct.Memory* @routine_jle_.L_41b55b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b4fb, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_41b4fb, %struct.Memory** %MEMORY

  %loadBr_41b4fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b4fb = icmp eq i8 %loadBr_41b4fb, 1
  br i1 %cmpBr_41b4fb, label %block_.L_41b55b, label %block_41b501

block_41b501:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41b501	 Bytes: 8
  %loadMem_41b501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b501 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b501)
  store %struct.Memory* %call_41b501, %struct.Memory** %MEMORY

  ; Code: je .L_41b53e	 RIP: 41b509	 Bytes: 6
  %loadMem_41b509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b509 = call %struct.Memory* @routine_je_.L_41b53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b509, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_41b509, %struct.Memory** %MEMORY

  %loadBr_41b509 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b509 = icmp eq i8 %loadBr_41b509, 1
  br i1 %cmpBr_41b509, label %block_.L_41b53e, label %block_41b50f

block_41b50f:
  ; Code: movq 0x62db08, %rax	 RIP: 41b50f	 Bytes: 8
  %loadMem_41b50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b50f = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b50f)
  store %struct.Memory* %call_41b50f, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rcx	 RIP: 41b517	 Bytes: 7
  %loadMem_41b517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b517 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b517)
  store %struct.Memory* %call_41b517, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41b51e	 Bytes: 3
  %loadMem_41b51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b51e = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b51e)
  store %struct.Memory* %call_41b51e, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 41b521	 Bytes: 8
  %loadMem_41b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b521 = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b521)
  store %struct.Memory* %call_41b521, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41b529	 Bytes: 4
  %loadMem_41b529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b529 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b529)
  store %struct.Memory* %call_41b529, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 41b52d	 Bytes: 8
  %loadMem_41b52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b52d = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b52d)
  store %struct.Memory* %call_41b52d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41b535	 Bytes: 4
  %loadMem_41b535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b535 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b535)
  store %struct.Memory* %call_41b535, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41be00	 RIP: 41b539	 Bytes: 5
  %loadMem_41b539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b539 = call %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b539, i64 2247, i64 5)
  store %struct.Memory* %call_41b539, %struct.Memory** %MEMORY

  br label %block_.L_41be00

  ; Code: .L_41b53e:	 RIP: 41b53e	 Bytes: 0
block_.L_41b53e:

  ; Code: cmpl $0x0, 0x886a60	 RIP: 41b53e	 Bytes: 8
  %loadMem_41b53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b53e = call %struct.Memory* @routine_cmpl__0x0__0x886a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b53e)
  store %struct.Memory* %call_41b53e, %struct.Memory** %MEMORY

  ; Code: jne .L_41b551	 RIP: 41b546	 Bytes: 6
  %loadMem_41b546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b546 = call %struct.Memory* @routine_jne_.L_41b551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b546, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41b546, %struct.Memory** %MEMORY

  %loadBr_41b546 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b546 = icmp eq i8 %loadBr_41b546, 1
  br i1 %cmpBr_41b546, label %block_.L_41b551, label %block_41b54c

block_41b54c:
  ; Code: jmpq .L_41b6cd	 RIP: 41b54c	 Bytes: 5
  %loadMem_41b54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b54c = call %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b54c, i64 385, i64 5)
  store %struct.Memory* %call_41b54c, %struct.Memory** %MEMORY

  br label %block_.L_41b6cd

  ; Code: .L_41b551:	 RIP: 41b551	 Bytes: 0
block_.L_41b551:

  ; Code: jmpq .L_41b556	 RIP: 41b551	 Bytes: 5
  %loadMem_41b551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b551 = call %struct.Memory* @routine_jmpq_.L_41b556(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b551, i64 5, i64 5)
  store %struct.Memory* %call_41b551, %struct.Memory** %MEMORY

  br label %block_.L_41b556

  ; Code: .L_41b556:	 RIP: 41b556	 Bytes: 0
block_.L_41b556:

  ; Code: jmpq .L_41b55b	 RIP: 41b556	 Bytes: 5
  %loadMem_41b556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b556 = call %struct.Memory* @routine_jmpq_.L_41b55b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b556, i64 5, i64 5)
  store %struct.Memory* %call_41b556, %struct.Memory** %MEMORY

  br label %block_.L_41b55b

  ; Code: .L_41b55b:	 RIP: 41b55b	 Bytes: 0
block_.L_41b55b:

  ; Code: cmpl $0x0, 0x8661dc	 RIP: 41b55b	 Bytes: 8
  %loadMem_41b55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b55b = call %struct.Memory* @routine_cmpl__0x0__0x8661dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b55b)
  store %struct.Memory* %call_41b55b, %struct.Memory** %MEMORY

  ; Code: jne .L_41b650	 RIP: 41b563	 Bytes: 6
  %loadMem_41b563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b563 = call %struct.Memory* @routine_jne_.L_41b650(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b563, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_41b563, %struct.Memory** %MEMORY

  %loadBr_41b563 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b563 = icmp eq i8 %loadBr_41b563, 1
  br i1 %cmpBr_41b563, label %block_.L_41b650, label %block_41b569

block_41b569:
  ; Code: cmpl $0x0, 0x8644f4	 RIP: 41b569	 Bytes: 8
  %loadMem_41b569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b569 = call %struct.Memory* @routine_cmpl__0x0__0x8644f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b569)
  store %struct.Memory* %call_41b569, %struct.Memory** %MEMORY

  ; Code: jne .L_41b650	 RIP: 41b571	 Bytes: 6
  %loadMem_41b571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b571 = call %struct.Memory* @routine_jne_.L_41b650(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b571, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_41b571, %struct.Memory** %MEMORY

  %loadBr_41b571 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b571 = icmp eq i8 %loadBr_41b571, 1
  br i1 %cmpBr_41b571, label %block_.L_41b650, label %block_41b577

block_41b577:
  ; Code: cmpl $0xfff0bdc0, 0x86450c	 RIP: 41b577	 Bytes: 11
  %loadMem_41b577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b577 = call %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b577)
  store %struct.Memory* %call_41b577, %struct.Memory** %MEMORY

  ; Code: jne .L_41b5b7	 RIP: 41b582	 Bytes: 6
  %loadMem_41b582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b582 = call %struct.Memory* @routine_jne_.L_41b5b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b582, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_41b582, %struct.Memory** %MEMORY

  %loadBr_41b582 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b582 = icmp eq i8 %loadBr_41b582, 1
  br i1 %cmpBr_41b582, label %block_.L_41b5b7, label %block_41b588

block_41b588:
  ; Code: movq 0x62db08, %rax	 RIP: 41b588	 Bytes: 8
  %loadMem_41b588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b588 = call %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b588)
  store %struct.Memory* %call_41b588, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rcx	 RIP: 41b590	 Bytes: 7
  %loadMem_41b590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b590 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b590)
  store %struct.Memory* %call_41b590, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41b597	 Bytes: 3
  %loadMem_41b597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b597 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b597)
  store %struct.Memory* %call_41b597, %struct.Memory** %MEMORY

  ; Code: movq 0x62db10, %rax	 RIP: 41b59a	 Bytes: 8
  %loadMem_41b59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b59a = call %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b59a)
  store %struct.Memory* %call_41b59a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41b5a2	 Bytes: 4
  %loadMem_41b5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5a2 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5a2)
  store %struct.Memory* %call_41b5a2, %struct.Memory** %MEMORY

  ; Code: movq 0x62db18, %rax	 RIP: 41b5a6	 Bytes: 8
  %loadMem_41b5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5a6 = call %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5a6)
  store %struct.Memory* %call_41b5a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41b5ae	 Bytes: 4
  %loadMem_41b5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5ae = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5ae)
  store %struct.Memory* %call_41b5ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41be00	 RIP: 41b5b2	 Bytes: 5
  %loadMem_41b5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5b2 = call %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5b2, i64 2126, i64 5)
  store %struct.Memory* %call_41b5b2, %struct.Memory** %MEMORY

  br label %block_.L_41be00

  ; Code: .L_41b5b7:	 RIP: 41b5b7	 Bytes: 0
block_.L_41b5b7:

  ; Code: movq $0x8822b0, %rdi	 RIP: 41b5b7	 Bytes: 10
  %loadMem_41b5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5b7 = call %struct.Memory* @routine_movq__0x8822b0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5b7)
  store %struct.Memory* %call_41b5b7, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 41b5c1	 Bytes: 4
  %loadMem_41b5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5c1 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5c1)
  store %struct.Memory* %call_41b5c1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 41b5c5	 Bytes: 4
  %loadMem_41b5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5c5 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5c5)
  store %struct.Memory* %call_41b5c5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 41b5c9	 Bytes: 4
  %loadMem_41b5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5c9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5c9)
  store %struct.Memory* %call_41b5c9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41b5cd	 Bytes: 4
  %loadMem_41b5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5cd = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5cd)
  store %struct.Memory* %call_41b5cd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41b5d1	 Bytes: 4
  %loadMem_41b5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5d1)
  store %struct.Memory* %call_41b5d1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41b5d5	 Bytes: 4
  %loadMem_41b5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5d5 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5d5)
  store %struct.Memory* %call_41b5d5, %struct.Memory** %MEMORY

  ; Code: movl 0x86450c, %ecx	 RIP: 41b5d9	 Bytes: 7
  %loadMem_41b5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5d9 = call %struct.Memory* @routine_movl_0x86450c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5d9)
  store %struct.Memory* %call_41b5d9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 41b5e0	 Bytes: 3
  %loadMem_41b5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5e0 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5e0)
  store %struct.Memory* %call_41b5e0, %struct.Memory** %MEMORY

  ; Code: callq .stringize_pv	 RIP: 41b5e3	 Bytes: 5
  %loadMem1_41b5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b5e3 = call %struct.Memory* @routine_callq_.stringize_pv(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b5e3, i64 31949, i64 5, i64 5)
  store %struct.Memory* %call1_41b5e3, %struct.Memory** %MEMORY

  %loadMem2_41b5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b5e3 = load i64, i64* %3
  %call2_41b5e3 = call %struct.Memory* @sub_4232b0.stringize_pv(%struct.State* %0, i64  %loadPC_41b5e3, %struct.Memory* %loadMem2_41b5e3)
  store %struct.Memory* %call2_41b5e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x866788	 RIP: 41b5e8	 Bytes: 8
  %loadMem_41b5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5e8 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5e8)
  store %struct.Memory* %call_41b5e8, %struct.Memory** %MEMORY

  ; Code: jne .L_41b606	 RIP: 41b5f0	 Bytes: 6
  %loadMem_41b5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5f0 = call %struct.Memory* @routine_jne_.L_41b606(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5f0, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41b5f0, %struct.Memory** %MEMORY

  %loadBr_41b5f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b5f0 = icmp eq i8 %loadBr_41b5f0, 1
  br i1 %cmpBr_41b5f0, label %block_.L_41b606, label %block_41b5f6

block_41b5f6:
  ; Code: movl 0x633b50, %eax	 RIP: 41b5f6	 Bytes: 7
  %loadMem_41b5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5f6 = call %struct.Memory* @routine_movl_0x633b50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5f6)
  store %struct.Memory* %call_41b5f6, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 41b5fd	 Bytes: 2
  %loadMem_41b5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5fd = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5fd)
  store %struct.Memory* %call_41b5fd, %struct.Memory** %MEMORY

  ; Code: movb %cl, 0x86678c	 RIP: 41b5ff	 Bytes: 7
  %loadMem_41b5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b5ff = call %struct.Memory* @routine_movb__cl__0x86678c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b5ff)
  store %struct.Memory* %call_41b5ff, %struct.Memory** %MEMORY

  ; Code: .L_41b606:	 RIP: 41b606	 Bytes: 0
  br label %block_.L_41b606
block_.L_41b606:

  ; Code: cmpl $0x2, 0x633b50	 RIP: 41b606	 Bytes: 8
  %loadMem_41b606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b606 = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b606)
  store %struct.Memory* %call_41b606, %struct.Memory** %MEMORY

  ; Code: jl .L_41b620	 RIP: 41b60e	 Bytes: 6
  %loadMem_41b60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b60e = call %struct.Memory* @routine_jl_.L_41b620(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b60e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41b60e, %struct.Memory** %MEMORY

  %loadBr_41b60e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b60e = icmp eq i8 %loadBr_41b60e, 1
  br i1 %cmpBr_41b60e, label %block_.L_41b620, label %block_41b614

block_41b614:
  ; Code: movl 0x86450c, %edi	 RIP: 41b614	 Bytes: 7
  %loadMem_41b614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b614 = call %struct.Memory* @routine_movl_0x86450c___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b614)
  store %struct.Memory* %call_41b614, %struct.Memory** %MEMORY

  ; Code: callq .post_thinking	 RIP: 41b61b	 Bytes: 5
  %loadMem1_41b61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b61b = call %struct.Memory* @routine_callq_.post_thinking(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b61b, i64 32245, i64 5, i64 5)
  store %struct.Memory* %call1_41b61b, %struct.Memory** %MEMORY

  %loadMem2_41b61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b61b = load i64, i64* %3
  %call2_41b61b = call %struct.Memory* @sub_423410.post_thinking(%struct.State* %0, i64  %loadPC_41b61b, %struct.Memory* %loadMem2_41b61b)
  store %struct.Memory* %call2_41b61b, %struct.Memory** %MEMORY

  ; Code: .L_41b620:	 RIP: 41b620	 Bytes: 0
  br label %block_.L_41b620
block_.L_41b620:

  ; Code: cmpl $0xdbba0, -0x5c(%rbp)	 RIP: 41b620	 Bytes: 7
  %loadMem_41b620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b620 = call %struct.Memory* @routine_cmpl__0xdbba0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b620)
  store %struct.Memory* %call_41b620, %struct.Memory** %MEMORY

  ; Code: jle .L_41b64b	 RIP: 41b627	 Bytes: 6
  %loadMem_41b627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b627 = call %struct.Memory* @routine_jle_.L_41b64b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b627, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_41b627, %struct.Memory** %MEMORY

  %loadBr_41b627 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b627 = icmp eq i8 %loadBr_41b627, 1
  br i1 %cmpBr_41b627, label %block_.L_41b64b, label %block_41b62d

block_41b62d:
  ; Code: movl $0xf4240, %eax	 RIP: 41b62d	 Bytes: 5
  %loadMem_41b62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b62d = call %struct.Memory* @routine_movl__0xf4240___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b62d)
  store %struct.Memory* %call_41b62d, %struct.Memory** %MEMORY

  ; Code: subl 0x86450c, %eax	 RIP: 41b632	 Bytes: 7
  %loadMem_41b632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b632 = call %struct.Memory* @routine_subl_0x86450c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b632)
  store %struct.Memory* %call_41b632, %struct.Memory** %MEMORY

  ; Code: cmpl 0x633b50, %eax	 RIP: 41b639	 Bytes: 7
  %loadMem_41b639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b639 = call %struct.Memory* @routine_cmpl_0x633b50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b639)
  store %struct.Memory* %call_41b639, %struct.Memory** %MEMORY

  ; Code: jge .L_41b64b	 RIP: 41b640	 Bytes: 6
  %loadMem_41b640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b640 = call %struct.Memory* @routine_jge_.L_41b64b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b640, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41b640, %struct.Memory** %MEMORY

  %loadBr_41b640 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b640 = icmp eq i8 %loadBr_41b640, 1
  br i1 %cmpBr_41b640, label %block_.L_41b64b, label %block_41b646

block_41b646:
  ; Code: jmpq .L_41b6cd	 RIP: 41b646	 Bytes: 5
  %loadMem_41b646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b646 = call %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b646, i64 135, i64 5)
  store %struct.Memory* %call_41b646, %struct.Memory** %MEMORY

  br label %block_.L_41b6cd

  ; Code: .L_41b64b:	 RIP: 41b64b	 Bytes: 0
block_.L_41b64b:

  ; Code: jmpq .L_41b650	 RIP: 41b64b	 Bytes: 5
  %loadMem_41b64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b64b = call %struct.Memory* @routine_jmpq_.L_41b650(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b64b, i64 5, i64 5)
  store %struct.Memory* %call_41b64b, %struct.Memory** %MEMORY

  br label %block_.L_41b650

  ; Code: .L_41b650:	 RIP: 41b650	 Bytes: 0
block_.L_41b650:

  ; Code: cmpl $0x0, 0x866788	 RIP: 41b650	 Bytes: 8
  %loadMem_41b650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b650 = call %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b650)
  store %struct.Memory* %call_41b650, %struct.Memory** %MEMORY

  ; Code: je .L_41b663	 RIP: 41b658	 Bytes: 6
  %loadMem_41b658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b658 = call %struct.Memory* @routine_je_.L_41b663(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b658, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41b658, %struct.Memory** %MEMORY

  %loadBr_41b658 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b658 = icmp eq i8 %loadBr_41b658, 1
  br i1 %cmpBr_41b658, label %block_.L_41b663, label %block_41b65e

block_41b65e:
  ; Code: jmpq .L_41b6cd	 RIP: 41b65e	 Bytes: 5
  %loadMem_41b65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b65e = call %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b65e, i64 111, i64 5)
  store %struct.Memory* %call_41b65e, %struct.Memory** %MEMORY

  br label %block_.L_41b6cd

  ; Code: .L_41b663:	 RIP: 41b663	 Bytes: 0
block_.L_41b663:

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 41b663	 Bytes: 7
  %loadMem_41b663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b663 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b663)
  store %struct.Memory* %call_41b663, %struct.Memory** %MEMORY

  ; Code: .L_41b66a:	 RIP: 41b66a	 Bytes: 0
  br label %block_.L_41b66a
block_.L_41b66a:

  ; Code: cmpl $0x12c, -0x50(%rbp)	 RIP: 41b66a	 Bytes: 7
  %loadMem_41b66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b66a = call %struct.Memory* @routine_cmpl__0x12c__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b66a)
  store %struct.Memory* %call_41b66a, %struct.Memory** %MEMORY

  ; Code: jge .L_41b6b2	 RIP: 41b671	 Bytes: 6
  %loadMem_41b671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b671 = call %struct.Memory* @routine_jge_.L_41b6b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b671, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_41b671, %struct.Memory** %MEMORY

  %loadBr_41b671 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b671 = icmp eq i8 %loadBr_41b671, 1
  br i1 %cmpBr_41b671, label %block_.L_41b6b2, label %block_41b677

block_41b677:
  ; Code: movslq -0x50(%rbp), %rax	 RIP: 41b677	 Bytes: 4
  %loadMem_41b677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b677 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b677)
  store %struct.Memory* %call_41b677, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e530(,%rax,4)	 RIP: 41b67b	 Bytes: 11
  %loadMem_41b67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b67b = call %struct.Memory* @routine_movl__0x0__0x62e530___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b67b)
  store %struct.Memory* %call_41b67b, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 41b686	 Bytes: 4
  %loadMem_41b686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b686 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b686)
  store %struct.Memory* %call_41b686, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x638c60(,%rax,4)	 RIP: 41b68a	 Bytes: 11
  %loadMem_41b68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b68a = call %struct.Memory* @routine_movl__0x0__0x638c60___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b68a)
  store %struct.Memory* %call_41b68a, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rax	 RIP: 41b695	 Bytes: 4
  %loadMem_41b695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b695 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b695)
  store %struct.Memory* %call_41b695, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x881e00(,%rax,4)	 RIP: 41b699	 Bytes: 11
  %loadMem_41b699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b699 = call %struct.Memory* @routine_movl__0x0__0x881e00___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b699)
  store %struct.Memory* %call_41b699, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 41b6a4	 Bytes: 3
  %loadMem_41b6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6a4 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6a4)
  store %struct.Memory* %call_41b6a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b6a7	 Bytes: 3
  %loadMem_41b6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6a7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6a7)
  store %struct.Memory* %call_41b6a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 41b6aa	 Bytes: 3
  %loadMem_41b6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6aa = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6aa)
  store %struct.Memory* %call_41b6aa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b66a	 RIP: 41b6ad	 Bytes: 5
  %loadMem_41b6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6ad = call %struct.Memory* @routine_jmpq_.L_41b66a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6ad, i64 -67, i64 5)
  store %struct.Memory* %call_41b6ad, %struct.Memory** %MEMORY

  br label %block_.L_41b66a

  ; Code: .L_41b6b2:	 RIP: 41b6b2	 Bytes: 0
block_.L_41b6b2:

  ; Code: jmpq .L_41b6b7	 RIP: 41b6b2	 Bytes: 5
  %loadMem_41b6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6b2 = call %struct.Memory* @routine_jmpq_.L_41b6b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6b2, i64 5, i64 5)
  store %struct.Memory* %call_41b6b2, %struct.Memory** %MEMORY

  br label %block_.L_41b6b7

  ; Code: .L_41b6b7:	 RIP: 41b6b7	 Bytes: 0
block_.L_41b6b7:

  ; Code: movl 0x633b50, %eax	 RIP: 41b6b7	 Bytes: 7
  %loadMem_41b6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6b7 = call %struct.Memory* @routine_movl_0x633b50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6b7)
  store %struct.Memory* %call_41b6b7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b6be	 Bytes: 3
  %loadMem_41b6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6be)
  store %struct.Memory* %call_41b6be, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b50	 RIP: 41b6c1	 Bytes: 7
  %loadMem_41b6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6c1 = call %struct.Memory* @routine_movl__eax__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6c1)
  store %struct.Memory* %call_41b6c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b294	 RIP: 41b6c8	 Bytes: 5
  %loadMem_41b6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6c8 = call %struct.Memory* @routine_jmpq_.L_41b294(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6c8, i64 -1076, i64 5)
  store %struct.Memory* %call_41b6c8, %struct.Memory** %MEMORY

  br label %block_.L_41b294

  ; Code: .L_41b6cd:	 RIP: 41b6cd	 Bytes: 0
block_.L_41b6cd:

  ; Code: jmpq .L_41b6d2	 RIP: 41b6cd	 Bytes: 5
  %loadMem_41b6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6cd = call %struct.Memory* @routine_jmpq_.L_41b6d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6cd, i64 5, i64 5)
  store %struct.Memory* %call_41b6cd, %struct.Memory** %MEMORY

  br label %block_.L_41b6d2

  ; Code: .L_41b6d2:	 RIP: 41b6d2	 Bytes: 0
block_.L_41b6d2:

  ; Code: cmpl $0x0, 0x62e4f8	 RIP: 41b6d2	 Bytes: 8
  %loadMem_41b6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6d2 = call %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6d2)
  store %struct.Memory* %call_41b6d2, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8c1	 RIP: 41b6da	 Bytes: 6
  %loadMem_41b6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6da = call %struct.Memory* @routine_jne_.L_41b8c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6da, i8* %BRANCH_TAKEN, i64 487, i64 6, i64 6)
  store %struct.Memory* %call_41b6da, %struct.Memory** %MEMORY

  %loadBr_41b6da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b6da = icmp eq i8 %loadBr_41b6da, 1
  br i1 %cmpBr_41b6da, label %block_.L_41b8c1, label %block_41b6e0

block_41b6e0:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 41b6e0	 Bytes: 4
  %loadMem_41b6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6e0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6e0)
  store %struct.Memory* %call_41b6e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 41b6e4	 Bytes: 4
  %loadMem_41b6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6e4 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6e4)
  store %struct.Memory* %call_41b6e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41b6e8	 Bytes: 4
  %loadMem_41b6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6e8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6e8)
  store %struct.Memory* %call_41b6e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 41b6ec	 Bytes: 4
  %loadMem_41b6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6ec = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6ec)
  store %struct.Memory* %call_41b6ec, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41b6f0	 Bytes: 4
  %loadMem_41b6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6f0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6f0)
  store %struct.Memory* %call_41b6f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 41b6f4	 Bytes: 4
  %loadMem_41b6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6f4 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6f4)
  store %struct.Memory* %call_41b6f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x85f154	 RIP: 41b6f8	 Bytes: 8
  %loadMem_41b6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b6f8 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b6f8)
  store %struct.Memory* %call_41b6f8, %struct.Memory** %MEMORY

  ; Code: je .L_41b714	 RIP: 41b700	 Bytes: 6
  %loadMem_41b700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b700 = call %struct.Memory* @routine_je_.L_41b714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b700, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41b700, %struct.Memory** %MEMORY

  %loadBr_41b700 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b700 = icmp eq i8 %loadBr_41b700, 1
  br i1 %cmpBr_41b700, label %block_.L_41b714, label %block_41b706

block_41b706:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 41b706	 Bytes: 8
  %loadMem_41b706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b706 = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b706)
  store %struct.Memory* %call_41b706, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8bc	 RIP: 41b70e	 Bytes: 6
  %loadMem_41b70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b70e = call %struct.Memory* @routine_jne_.L_41b8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b70e, i8* %BRANCH_TAKEN, i64 430, i64 6, i64 6)
  store %struct.Memory* %call_41b70e, %struct.Memory** %MEMORY

  %loadBr_41b70e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b70e = icmp eq i8 %loadBr_41b70e, 1
  br i1 %cmpBr_41b70e, label %block_.L_41b8bc, label %block_.L_41b714

  ; Code: .L_41b714:	 RIP: 41b714	 Bytes: 0
block_.L_41b714:

  ; Code: cmpl $0x0, 0x866530	 RIP: 41b714	 Bytes: 8
  %loadMem_41b714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b714 = call %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b714)
  store %struct.Memory* %call_41b714, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8bc	 RIP: 41b71c	 Bytes: 6
  %loadMem_41b71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b71c = call %struct.Memory* @routine_jne_.L_41b8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b71c, i8* %BRANCH_TAKEN, i64 416, i64 6, i64 6)
  store %struct.Memory* %call_41b71c, %struct.Memory** %MEMORY

  %loadBr_41b71c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b71c = icmp eq i8 %loadBr_41b71c, 1
  br i1 %cmpBr_41b71c, label %block_.L_41b8bc, label %block_41b722

block_41b722:
  ; Code: cmpl $0x0, 0x62e51c	 RIP: 41b722	 Bytes: 8
  %loadMem_41b722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b722 = call %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b722)
  store %struct.Memory* %call_41b722, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8bc	 RIP: 41b72a	 Bytes: 6
  %loadMem_41b72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b72a = call %struct.Memory* @routine_jne_.L_41b8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b72a, i8* %BRANCH_TAKEN, i64 402, i64 6, i64 6)
  store %struct.Memory* %call_41b72a, %struct.Memory** %MEMORY

  %loadBr_41b72a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b72a = icmp eq i8 %loadBr_41b72a, 1
  br i1 %cmpBr_41b72a, label %block_.L_41b8bc, label %block_41b730

block_41b730:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41b730	 Bytes: 8
  %loadMem_41b730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b730 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b730)
  store %struct.Memory* %call_41b730, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8bc	 RIP: 41b738	 Bytes: 6
  %loadMem_41b738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b738 = call %struct.Memory* @routine_jne_.L_41b8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b738, i8* %BRANCH_TAKEN, i64 388, i64 6, i64 6)
  store %struct.Memory* %call_41b738, %struct.Memory** %MEMORY

  %loadBr_41b738 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b738 = icmp eq i8 %loadBr_41b738, 1
  br i1 %cmpBr_41b738, label %block_.L_41b8bc, label %block_41b73e

block_41b73e:
  ; Code: leaq -0x30f0(%rbp), %rdi	 RIP: 41b73e	 Bytes: 7
  %loadMem_41b73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b73e = call %struct.Memory* @routine_leaq_MINUS0x30f0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b73e)
  store %struct.Memory* %call_41b73e, %struct.Memory** %MEMORY

  ; Code: leaq -0x18(%rbp), %rax	 RIP: 41b745	 Bytes: 4
  %loadMem_41b745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b745 = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b745)
  store %struct.Memory* %call_41b745, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62ea10	 RIP: 41b749	 Bytes: 11
  %loadMem_41b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b749 = call %struct.Memory* @routine_movl__0x0__0x62ea10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b749)
  store %struct.Memory* %call_41b749, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 41b754	 Bytes: 3
  %loadMem_41b754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b754 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b754)
  store %struct.Memory* %call_41b754, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsp)	 RIP: 41b757	 Bytes: 4
  %loadMem_41b757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b757 = call %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b757)
  store %struct.Memory* %call_41b757, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 41b75b	 Bytes: 4
  %loadMem_41b75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b75b = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b75b)
  store %struct.Memory* %call_41b75b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rsp)	 RIP: 41b75f	 Bytes: 5
  %loadMem_41b75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b75f = call %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b75f)
  store %struct.Memory* %call_41b75f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41b764	 Bytes: 4
  %loadMem_41b764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b764 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b764)
  store %struct.Memory* %call_41b764, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsp)	 RIP: 41b768	 Bytes: 5
  %loadMem_41b768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b768 = call %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b768)
  store %struct.Memory* %call_41b768, %struct.Memory** %MEMORY

  ; Code: callq .proofnumbercheck	 RIP: 41b76d	 Bytes: 5
  %loadMem1_41b76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b76d = call %struct.Memory* @routine_callq_.proofnumbercheck(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b76d, i64 -23933, i64 5, i64 5)
  store %struct.Memory* %call1_41b76d, %struct.Memory** %MEMORY

  %loadMem2_41b76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b76d = load i64, i64* %3
  %call2_41b76d = call %struct.Memory* @sub_4159f0.proofnumbercheck(%struct.State* %0, i64  %loadPC_41b76d, %struct.Memory* %loadMem2_41b76d)
  store %struct.Memory* %call2_41b76d, %struct.Memory** %MEMORY

  ; Code: movq -0x30f0(%rbp), %rax	 RIP: 41b772	 Bytes: 7
  %loadMem_41b772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b772 = call %struct.Memory* @routine_movq_MINUS0x30f0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b772)
  store %struct.Memory* %call_41b772, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 41b779	 Bytes: 4
  %loadMem_41b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b779 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b779)
  store %struct.Memory* %call_41b779, %struct.Memory** %MEMORY

  ; Code: movq -0x30e8(%rbp), %rax	 RIP: 41b77d	 Bytes: 7
  %loadMem_41b77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b77d = call %struct.Memory* @routine_movq_MINUS0x30e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b77d)
  store %struct.Memory* %call_41b77d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41b784	 Bytes: 4
  %loadMem_41b784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b784 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b784)
  store %struct.Memory* %call_41b784, %struct.Memory** %MEMORY

  ; Code: movq -0x30e0(%rbp), %rax	 RIP: 41b788	 Bytes: 7
  %loadMem_41b788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b788 = call %struct.Memory* @routine_movq_MINUS0x30e0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b788)
  store %struct.Memory* %call_41b788, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41b78f	 Bytes: 4
  %loadMem_41b78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b78f = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b78f)
  store %struct.Memory* %call_41b78f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, -0x3080(%rbp)	 RIP: 41b793	 Bytes: 7
  %loadMem_41b793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b793 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b793)
  store %struct.Memory* %call_41b793, %struct.Memory** %MEMORY

  ; Code: jge .L_41b8b7	 RIP: 41b79a	 Bytes: 6
  %loadMem_41b79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b79a = call %struct.Memory* @routine_jge_.L_41b8b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b79a, i8* %BRANCH_TAKEN, i64 285, i64 6, i64 6)
  store %struct.Memory* %call_41b79a, %struct.Memory** %MEMORY

  %loadBr_41b79a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b79a = icmp eq i8 %loadBr_41b79a, 1
  br i1 %cmpBr_41b79a, label %block_.L_41b8b7, label %block_41b7a0

block_41b7a0:
  ; Code: cmpl $0x0, 0x62ea10	 RIP: 41b7a0	 Bytes: 8
  %loadMem_41b7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7a0 = call %struct.Memory* @routine_cmpl__0x0__0x62ea10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7a0)
  store %struct.Memory* %call_41b7a0, %struct.Memory** %MEMORY

  ; Code: je .L_41b8b7	 RIP: 41b7a8	 Bytes: 6
  %loadMem_41b7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7a8 = call %struct.Memory* @routine_je_.L_41b8b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7a8, i8* %BRANCH_TAKEN, i64 271, i64 6, i64 6)
  store %struct.Memory* %call_41b7a8, %struct.Memory** %MEMORY

  %loadBr_41b7a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b7a8 = icmp eq i8 %loadBr_41b7a8, 1
  br i1 %cmpBr_41b7a8, label %block_.L_41b8b7, label %block_41b7ae

block_41b7ae:
  ; Code: movl -0x3080(%rbp), %eax	 RIP: 41b7ae	 Bytes: 6
  %loadMem_41b7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7ae = call %struct.Memory* @routine_movl_MINUS0x3080__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7ae)
  store %struct.Memory* %call_41b7ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b7b4	 Bytes: 3
  %loadMem_41b7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7b4)
  store %struct.Memory* %call_41b7b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3080(%rbp)	 RIP: 41b7b7	 Bytes: 6
  %loadMem_41b7b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7b7 = call %struct.Memory* @routine_movl__eax__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7b7)
  store %struct.Memory* %call_41b7b7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 41b7bd	 Bytes: 7
  %loadMem_41b7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7bd = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7bd)
  store %struct.Memory* %call_41b7bd, %struct.Memory** %MEMORY

  ; Code: .L_41b7c4:	 RIP: 41b7c4	 Bytes: 0
  br label %block_.L_41b7c4
block_.L_41b7c4:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41b7c4	 Bytes: 3
  %loadMem_41b7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7c4 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7c4)
  store %struct.Memory* %call_41b7c4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3084(%rbp), %eax	 RIP: 41b7c7	 Bytes: 6
  %loadMem_41b7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7c7 = call %struct.Memory* @routine_cmpl_MINUS0x3084__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7c7)
  store %struct.Memory* %call_41b7c7, %struct.Memory** %MEMORY

  ; Code: jge .L_41b853	 RIP: 41b7cd	 Bytes: 6
  %loadMem_41b7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7cd = call %struct.Memory* @routine_jge_.L_41b853(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7cd, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_41b7cd, %struct.Memory** %MEMORY

  %loadBr_41b7cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b7cd = icmp eq i8 %loadBr_41b7cd, 1
  br i1 %cmpBr_41b7cd, label %block_.L_41b853, label %block_41b7d3

block_41b7d3:
  ; Code: leaq -0x3070(%rbp), %rax	 RIP: 41b7d3	 Bytes: 7
  %loadMem_41b7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7d3 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7d3)
  store %struct.Memory* %call_41b7d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41b7da	 Bytes: 4
  %loadMem_41b7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7da = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7da)
  store %struct.Memory* %call_41b7da, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41b7de	 Bytes: 4
  %loadMem_41b7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7de = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7de)
  store %struct.Memory* %call_41b7de, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b7e2	 Bytes: 3
  %loadMem_41b7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7e2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7e2)
  store %struct.Memory* %call_41b7e2, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 41b7e5	 Bytes: 2
  %loadMem_41b7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7e5 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7e5)
  store %struct.Memory* %call_41b7e5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %edx	 RIP: 41b7e7	 Bytes: 3
  %loadMem_41b7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7e7 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7e7)
  store %struct.Memory* %call_41b7e7, %struct.Memory** %MEMORY

  ; Code: jne .L_41b840	 RIP: 41b7ea	 Bytes: 6
  %loadMem_41b7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7ea = call %struct.Memory* @routine_jne_.L_41b840(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7ea, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_41b7ea, %struct.Memory** %MEMORY

  %loadBr_41b7ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b7ea = icmp eq i8 %loadBr_41b7ea, 1
  br i1 %cmpBr_41b7ea, label %block_.L_41b840, label %block_41b7f0

block_41b7f0:
  ; Code: leaq -0x3070(%rbp), %rax	 RIP: 41b7f0	 Bytes: 7
  %loadMem_41b7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7f0 = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7f0)
  store %struct.Memory* %call_41b7f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41b7f7	 Bytes: 4
  %loadMem_41b7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7f7 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7f7)
  store %struct.Memory* %call_41b7f7, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41b7fb	 Bytes: 4
  %loadMem_41b7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7fb = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7fb)
  store %struct.Memory* %call_41b7fb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b7ff	 Bytes: 3
  %loadMem_41b7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b7ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b7ff)
  store %struct.Memory* %call_41b7ff, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 41b802	 Bytes: 3
  %loadMem_41b802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b802 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b802)
  store %struct.Memory* %call_41b802, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %edx	 RIP: 41b805	 Bytes: 3
  %loadMem_41b805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b805 = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b805)
  store %struct.Memory* %call_41b805, %struct.Memory** %MEMORY

  ; Code: jne .L_41b840	 RIP: 41b808	 Bytes: 6
  %loadMem_41b808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b808 = call %struct.Memory* @routine_jne_.L_41b840(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b808, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_41b808, %struct.Memory** %MEMORY

  %loadBr_41b808 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b808 = icmp eq i8 %loadBr_41b808, 1
  br i1 %cmpBr_41b808, label %block_.L_41b840, label %block_41b80e

block_41b80e:
  ; Code: leaq -0x3070(%rbp), %rax	 RIP: 41b80e	 Bytes: 7
  %loadMem_41b80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b80e = call %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b80e)
  store %struct.Memory* %call_41b80e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41b815	 Bytes: 4
  %loadMem_41b815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b815 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b815)
  store %struct.Memory* %call_41b815, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41b819	 Bytes: 4
  %loadMem_41b819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b819 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b819)
  store %struct.Memory* %call_41b819, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41b81d	 Bytes: 3
  %loadMem_41b81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b81d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b81d)
  store %struct.Memory* %call_41b81d, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 41b820	 Bytes: 3
  %loadMem_41b820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b820 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b820)
  store %struct.Memory* %call_41b820, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3c(%rbp), %edx	 RIP: 41b823	 Bytes: 3
  %loadMem_41b823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b823 = call %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b823)
  store %struct.Memory* %call_41b823, %struct.Memory** %MEMORY

  ; Code: jne .L_41b840	 RIP: 41b826	 Bytes: 6
  %loadMem_41b826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b826 = call %struct.Memory* @routine_jne_.L_41b840(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b826, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_41b826, %struct.Memory** %MEMORY

  %loadBr_41b826 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b826 = icmp eq i8 %loadBr_41b826, 1
  br i1 %cmpBr_41b826, label %block_.L_41b840, label %block_41b82c

block_41b82c:
  ; Code: movslq -0x4c(%rbp), %rax	 RIP: 41b82c	 Bytes: 4
  %loadMem_41b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b82c = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b82c)
  store %struct.Memory* %call_41b82c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x886bf0(,%rax,4)	 RIP: 41b830	 Bytes: 11
  %loadMem_41b830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b830 = call %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b830)
  store %struct.Memory* %call_41b830, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b853	 RIP: 41b83b	 Bytes: 5
  %loadMem_41b83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b83b = call %struct.Memory* @routine_jmpq_.L_41b853(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b83b, i64 24, i64 5)
  store %struct.Memory* %call_41b83b, %struct.Memory** %MEMORY

  br label %block_.L_41b853

  ; Code: .L_41b840:	 RIP: 41b840	 Bytes: 0
block_.L_41b840:

  ; Code: jmpq .L_41b845	 RIP: 41b840	 Bytes: 5
  %loadMem_41b840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b840 = call %struct.Memory* @routine_jmpq_.L_41b845(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b840, i64 5, i64 5)
  store %struct.Memory* %call_41b840, %struct.Memory** %MEMORY

  br label %block_.L_41b845

  ; Code: .L_41b845:	 RIP: 41b845	 Bytes: 0
block_.L_41b845:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41b845	 Bytes: 3
  %loadMem_41b845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b845 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b845)
  store %struct.Memory* %call_41b845, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b848	 Bytes: 3
  %loadMem_41b848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b848 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b848)
  store %struct.Memory* %call_41b848, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41b84b	 Bytes: 3
  %loadMem_41b84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b84b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b84b)
  store %struct.Memory* %call_41b84b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b7c4	 RIP: 41b84e	 Bytes: 5
  %loadMem_41b84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b84e = call %struct.Memory* @routine_jmpq_.L_41b7c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b84e, i64 -138, i64 5)
  store %struct.Memory* %call_41b84e, %struct.Memory** %MEMORY

  br label %block_.L_41b7c4

  ; Code: .L_41b853:	 RIP: 41b853	 Bytes: 0
block_.L_41b853:

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 41b853	 Bytes: 7
  %loadMem_41b853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b853 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b853)
  store %struct.Memory* %call_41b853, %struct.Memory** %MEMORY

  ; Code: .L_41b85a:	 RIP: 41b85a	 Bytes: 0
  br label %block_.L_41b85a
block_.L_41b85a:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 41b85a	 Bytes: 3
  %loadMem_41b85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b85a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b85a)
  store %struct.Memory* %call_41b85a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3084(%rbp), %eax	 RIP: 41b85d	 Bytes: 6
  %loadMem_41b85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b85d = call %struct.Memory* @routine_cmpl_MINUS0x3084__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b85d)
  store %struct.Memory* %call_41b85d, %struct.Memory** %MEMORY

  ; Code: jge .L_41b897	 RIP: 41b863	 Bytes: 6
  %loadMem_41b863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b863 = call %struct.Memory* @routine_jge_.L_41b897(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b863, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41b863, %struct.Memory** %MEMORY

  %loadBr_41b863 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b863 = icmp eq i8 %loadBr_41b863, 1
  br i1 %cmpBr_41b863, label %block_.L_41b897, label %block_41b869

block_41b869:
  ; Code: movslq -0x50(%rbp), %rax	 RIP: 41b869	 Bytes: 4
  %loadMem_41b869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b869 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b869)
  store %struct.Memory* %call_41b869, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x886bf0(,%rax,4)	 RIP: 41b86d	 Bytes: 8
  %loadMem_41b86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b86d = call %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b86d)
  store %struct.Memory* %call_41b86d, %struct.Memory** %MEMORY

  ; Code: je .L_41b884	 RIP: 41b875	 Bytes: 6
  %loadMem_41b875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b875 = call %struct.Memory* @routine_je_.L_41b884(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b875, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41b875, %struct.Memory** %MEMORY

  %loadBr_41b875 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b875 = icmp eq i8 %loadBr_41b875, 1
  br i1 %cmpBr_41b875, label %block_.L_41b884, label %block_41b87b

block_41b87b:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 41b87b	 Bytes: 3
  %loadMem_41b87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b87b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b87b)
  store %struct.Memory* %call_41b87b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b87e	 Bytes: 3
  %loadMem_41b87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b87e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b87e)
  store %struct.Memory* %call_41b87e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 41b881	 Bytes: 3
  %loadMem_41b881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b881 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b881)
  store %struct.Memory* %call_41b881, %struct.Memory** %MEMORY

  ; Code: .L_41b884:	 RIP: 41b884	 Bytes: 0
  br label %block_.L_41b884
block_.L_41b884:

  ; Code: jmpq .L_41b889	 RIP: 41b884	 Bytes: 5
  %loadMem_41b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b884 = call %struct.Memory* @routine_jmpq_.L_41b889(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b884, i64 5, i64 5)
  store %struct.Memory* %call_41b884, %struct.Memory** %MEMORY

  br label %block_.L_41b889

  ; Code: .L_41b889:	 RIP: 41b889	 Bytes: 0
block_.L_41b889:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 41b889	 Bytes: 3
  %loadMem_41b889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b889 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b889)
  store %struct.Memory* %call_41b889, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41b88c	 Bytes: 3
  %loadMem_41b88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b88c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b88c)
  store %struct.Memory* %call_41b88c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 41b88f	 Bytes: 3
  %loadMem_41b88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b88f = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b88f)
  store %struct.Memory* %call_41b88f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41b85a	 RIP: 41b892	 Bytes: 5
  %loadMem_41b892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b892 = call %struct.Memory* @routine_jmpq_.L_41b85a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b892, i64 -56, i64 5)
  store %struct.Memory* %call_41b892, %struct.Memory** %MEMORY

  br label %block_.L_41b85a

  ; Code: .L_41b897:	 RIP: 41b897	 Bytes: 0
block_.L_41b897:

  ; Code: movl -0x54(%rbp), %eax	 RIP: 41b897	 Bytes: 3
  %loadMem_41b897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b897 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b897)
  store %struct.Memory* %call_41b897, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62e9e0, %eax	 RIP: 41b89a	 Bytes: 7
  %loadMem_41b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b89a = call %struct.Memory* @routine_cmpl_0x62e9e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b89a)
  store %struct.Memory* %call_41b89a, %struct.Memory** %MEMORY

  ; Code: jne .L_41b8b2	 RIP: 41b8a1	 Bytes: 6
  %loadMem_41b8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8a1 = call %struct.Memory* @routine_jne_.L_41b8b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8a1, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41b8a1, %struct.Memory** %MEMORY

  %loadBr_41b8a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b8a1 = icmp eq i8 %loadBr_41b8a1, 1
  br i1 %cmpBr_41b8a1, label %block_.L_41b8b2, label %block_41b8a7

block_41b8a7:
  ; Code: movl $0x1, 0x62e51c	 RIP: 41b8a7	 Bytes: 11
  %loadMem_41b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8a7 = call %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8a7)
  store %struct.Memory* %call_41b8a7, %struct.Memory** %MEMORY

  ; Code: .L_41b8b2:	 RIP: 41b8b2	 Bytes: 0
  br label %block_.L_41b8b2
block_.L_41b8b2:

  ; Code: jmpq .L_41a989	 RIP: 41b8b2	 Bytes: 5
  %loadMem_41b8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8b2 = call %struct.Memory* @routine_jmpq_.L_41a989(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8b2, i64 -3881, i64 5)
  store %struct.Memory* %call_41b8b2, %struct.Memory** %MEMORY

  br label %block_.L_41a989

  ; Code: .L_41b8b7:	 RIP: 41b8b7	 Bytes: 0
block_.L_41b8b7:

  ; Code: jmpq .L_41b8bc	 RIP: 41b8b7	 Bytes: 5
  %loadMem_41b8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8b7 = call %struct.Memory* @routine_jmpq_.L_41b8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8b7, i64 5, i64 5)
  store %struct.Memory* %call_41b8b7, %struct.Memory** %MEMORY

  br label %block_.L_41b8bc

  ; Code: .L_41b8bc:	 RIP: 41b8bc	 Bytes: 0
block_.L_41b8bc:

  ; Code: jmpq .L_41b8c1	 RIP: 41b8bc	 Bytes: 5
  %loadMem_41b8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8bc = call %struct.Memory* @routine_jmpq_.L_41b8c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8bc, i64 5, i64 5)
  store %struct.Memory* %call_41b8bc, %struct.Memory** %MEMORY

  br label %block_.L_41b8c1

  ; Code: .L_41b8c1:	 RIP: 41b8c1	 Bytes: 0
block_.L_41b8c1:

  ; Code: cmpl $0x0, 0x62e51c	 RIP: 41b8c1	 Bytes: 8
  %loadMem_41b8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8c1 = call %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8c1)
  store %struct.Memory* %call_41b8c1, %struct.Memory** %MEMORY

  ; Code: je .L_41b8e7	 RIP: 41b8c9	 Bytes: 6
  %loadMem_41b8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8c9 = call %struct.Memory* @routine_je_.L_41b8e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8c9, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_41b8c9, %struct.Memory** %MEMORY

  %loadBr_41b8c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b8c9 = icmp eq i8 %loadBr_41b8c9, 1
  br i1 %cmpBr_41b8c9, label %block_.L_41b8e7, label %block_41b8cf

block_41b8cf:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 41b8cf	 Bytes: 4
  %loadMem_41b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8cf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8cf)
  store %struct.Memory* %call_41b8cf, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 41b8d3	 Bytes: 4
  %loadMem_41b8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8d3 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8d3)
  store %struct.Memory* %call_41b8d3, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 41b8d7	 Bytes: 4
  %loadMem_41b8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8d7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8d7)
  store %struct.Memory* %call_41b8d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41b8db	 Bytes: 4
  %loadMem_41b8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8db = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8db)
  store %struct.Memory* %call_41b8db, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 41b8df	 Bytes: 4
  %loadMem_41b8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8df = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8df)
  store %struct.Memory* %call_41b8df, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 41b8e3	 Bytes: 4
  %loadMem_41b8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8e3 = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8e3)
  store %struct.Memory* %call_41b8e3, %struct.Memory** %MEMORY

  ; Code: .L_41b8e7:	 RIP: 41b8e7	 Bytes: 0
  br label %block_.L_41b8e7
block_.L_41b8e7:

  ; Code: cmpl $0x0, -0x3080(%rbp)	 RIP: 41b8e7	 Bytes: 7
  %loadMem_41b8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8e7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8e7)
  store %struct.Memory* %call_41b8e7, %struct.Memory** %MEMORY

  ; Code: je .L_41b95a	 RIP: 41b8ee	 Bytes: 6
  %loadMem_41b8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8ee = call %struct.Memory* @routine_je_.L_41b95a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8ee, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_41b8ee, %struct.Memory** %MEMORY

  %loadBr_41b8ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b8ee = icmp eq i8 %loadBr_41b8ee, 1
  br i1 %cmpBr_41b8ee, label %block_.L_41b95a, label %block_41b8f4

block_41b8f4:
  ; Code: cmpl $0x0, 0x8a2a04	 RIP: 41b8f4	 Bytes: 8
  %loadMem_41b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8f4 = call %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8f4)
  store %struct.Memory* %call_41b8f4, %struct.Memory** %MEMORY

  ; Code: je .L_41b95a	 RIP: 41b8fc	 Bytes: 6
  %loadMem_41b8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b8fc = call %struct.Memory* @routine_je_.L_41b95a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b8fc, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_41b8fc, %struct.Memory** %MEMORY

  %loadBr_41b8fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b8fc = icmp eq i8 %loadBr_41b8fc, 1
  br i1 %cmpBr_41b8fc, label %block_.L_41b95a, label %block_41b902

block_41b902:
  ; Code: leaq -0x18(%rbp), %rax	 RIP: 41b902	 Bytes: 4
  %loadMem_41b902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b902 = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b902)
  store %struct.Memory* %call_41b902, %struct.Memory** %MEMORY

  ; Code: leaq -0x308c(%rbp), %rdi	 RIP: 41b906	 Bytes: 7
  %loadMem_41b906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b906 = call %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b906)
  store %struct.Memory* %call_41b906, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 41b90d	 Bytes: 3
  %loadMem_41b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b90d = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b90d)
  store %struct.Memory* %call_41b90d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsp)	 RIP: 41b910	 Bytes: 4
  %loadMem_41b910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b910 = call %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b910)
  store %struct.Memory* %call_41b910, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 41b914	 Bytes: 4
  %loadMem_41b914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b914 = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b914)
  store %struct.Memory* %call_41b914, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rsp)	 RIP: 41b918	 Bytes: 5
  %loadMem_41b918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b918 = call %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b918)
  store %struct.Memory* %call_41b918, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 41b91d	 Bytes: 4
  %loadMem_41b91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b91d = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b91d)
  store %struct.Memory* %call_41b91d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rsp)	 RIP: 41b921	 Bytes: 5
  %loadMem_41b921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b921 = call %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b921)
  store %struct.Memory* %call_41b921, %struct.Memory** %MEMORY

  ; Code: callq .comp_to_san	 RIP: 41b926	 Bytes: 5
  %loadMem1_41b926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b926 = call %struct.Memory* @routine_callq_.comp_to_san(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b926, i64 24650, i64 5, i64 5)
  store %struct.Memory* %call1_41b926, %struct.Memory** %MEMORY

  %loadMem2_41b926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b926 = load i64, i64* %3
  %call2_41b926 = call %struct.Memory* @sub_421970.comp_to_san(%struct.State* %0, i64  %loadPC_41b926, %struct.Memory* %loadMem2_41b926)
  store %struct.Memory* %call2_41b926, %struct.Memory** %MEMORY

  ; Code: movq $0x4290cd, %rdi	 RIP: 41b92b	 Bytes: 10
  %loadMem_41b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b92b = call %struct.Memory* @routine_movq__0x4290cd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b92b)
  store %struct.Memory* %call_41b92b, %struct.Memory** %MEMORY

  ; Code: leaq -0x308c(%rbp), %rdx	 RIP: 41b935	 Bytes: 7
  %loadMem_41b935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b935 = call %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b935)
  store %struct.Memory* %call_41b935, %struct.Memory** %MEMORY

  ; Code: movl -0x3080(%rbp), %esi	 RIP: 41b93c	 Bytes: 6
  %loadMem_41b93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b93c = call %struct.Memory* @routine_movl_MINUS0x3080__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b93c)
  store %struct.Memory* %call_41b93c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41b942	 Bytes: 2
  %loadMem_41b942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b942 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b942)
  store %struct.Memory* %call_41b942, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41b944	 Bytes: 5
  %loadMem1_41b944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b944 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b944, i64 -109716, i64 5, i64 5)
  store %struct.Memory* %call1_41b944, %struct.Memory** %MEMORY

  %loadMem2_41b944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b944 = load i64, i64* %3
  %call2_41b944 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41b944, %struct.Memory* %loadMem2_41b944)
  store %struct.Memory* %call2_41b944, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x866530	 RIP: 41b949	 Bytes: 11
  %loadMem_41b949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b949 = call %struct.Memory* @routine_movl__0x0__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b949)
  store %struct.Memory* %call_41b949, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3120(%rbp)	 RIP: 41b954	 Bytes: 6
  %loadMem_41b954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b954 = call %struct.Memory* @routine_movl__eax__MINUS0x3120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b954)
  store %struct.Memory* %call_41b954, %struct.Memory** %MEMORY

  ; Code: .L_41b95a:	 RIP: 41b95a	 Bytes: 0
  br label %block_.L_41b95a
block_.L_41b95a:

  ; Code: callq .rtime	 RIP: 41b95a	 Bytes: 5
  %loadMem1_41b95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b95a = call %struct.Memory* @routine_callq_.rtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b95a, i64 32262, i64 5, i64 5)
  store %struct.Memory* %call1_41b95a, %struct.Memory** %MEMORY

  %loadMem2_41b95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b95a = load i64, i64* %3
  %call2_41b95a = call %struct.Memory* @sub_423760.rtime(%struct.State* %0, i64  %loadPC_41b95a, %struct.Memory* %loadMem2_41b95a)
  store %struct.Memory* %call2_41b95a, %struct.Memory** %MEMORY

  ; Code: movq 0x8662e8, %rsi	 RIP: 41b95f	 Bytes: 8
  %loadMem_41b95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b95f = call %struct.Memory* @routine_movq_0x8662e8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b95f)
  store %struct.Memory* %call_41b95f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41b967	 Bytes: 3
  %loadMem_41b967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b967 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b967)
  store %struct.Memory* %call_41b967, %struct.Memory** %MEMORY

  ; Code: callq .rdifftime	 RIP: 41b96a	 Bytes: 5
  %loadMem1_41b96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41b96a = call %struct.Memory* @routine_callq_.rdifftime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41b96a, i64 32262, i64 5, i64 5)
  store %struct.Memory* %call1_41b96a, %struct.Memory** %MEMORY

  %loadMem2_41b96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41b96a = load i64, i64* %3
  %call2_41b96a = call %struct.Memory* @sub_423770.rdifftime(%struct.State* %0, i64  %loadPC_41b96a, %struct.Memory* %loadMem2_41b96a)
  store %struct.Memory* %call2_41b96a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 41b96f	 Bytes: 3
  %loadMem_41b96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b96f = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b96f)
  store %struct.Memory* %call_41b96f, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %eax	 RIP: 41b972	 Bytes: 3
  %loadMem_41b972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b972 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b972)
  store %struct.Memory* %call_41b972, %struct.Memory** %MEMORY

  ; Code: movl 0x8a05b4, %ecx	 RIP: 41b975	 Bytes: 7
  %loadMem_41b975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b975 = call %struct.Memory* @routine_movl_0x8a05b4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b975)
  store %struct.Memory* %call_41b975, %struct.Memory** %MEMORY

  ; Code: subl %eax, %ecx	 RIP: 41b97c	 Bytes: 2
  %loadMem_41b97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b97c = call %struct.Memory* @routine_subl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b97c)
  store %struct.Memory* %call_41b97c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8a05b4	 RIP: 41b97e	 Bytes: 7
  %loadMem_41b97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b97e = call %struct.Memory* @routine_movl__ecx__0x8a05b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b97e)
  store %struct.Memory* %call_41b97e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661d8	 RIP: 41b985	 Bytes: 8
  %loadMem_41b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b985 = call %struct.Memory* @routine_cmpl__0x0__0x8661d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b985)
  store %struct.Memory* %call_41b985, %struct.Memory** %MEMORY

  ; Code: je .L_41b9c0	 RIP: 41b98d	 Bytes: 6
  %loadMem_41b98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b98d = call %struct.Memory* @routine_je_.L_41b9c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b98d, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_41b98d, %struct.Memory** %MEMORY

  %loadBr_41b98d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b98d = icmp eq i8 %loadBr_41b98d, 1
  br i1 %cmpBr_41b98d, label %block_.L_41b9c0, label %block_41b993

block_41b993:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41b993	 Bytes: 8
  %loadMem_41b993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b993 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b993)
  store %struct.Memory* %call_41b993, %struct.Memory** %MEMORY

  ; Code: jne .L_41b9c0	 RIP: 41b99b	 Bytes: 6
  %loadMem_41b99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b99b = call %struct.Memory* @routine_jne_.L_41b9c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b99b, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41b99b, %struct.Memory** %MEMORY

  %loadBr_41b99b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b99b = icmp eq i8 %loadBr_41b99b, 1
  br i1 %cmpBr_41b99b, label %block_.L_41b9c0, label %block_41b9a1

block_41b9a1:
  ; Code: movl 0x633b44, %eax	 RIP: 41b9a1	 Bytes: 7
  %loadMem_41b9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9a1 = call %struct.Memory* @routine_movl_0x633b44___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9a1)
  store %struct.Memory* %call_41b9a1, %struct.Memory** %MEMORY

  ; Code: subl -0x58(%rbp), %eax	 RIP: 41b9a8	 Bytes: 3
  %loadMem_41b9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9a8 = call %struct.Memory* @routine_subl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9a8)
  store %struct.Memory* %call_41b9a8, %struct.Memory** %MEMORY

  ; Code: addl 0x8a0a78, %eax	 RIP: 41b9ab	 Bytes: 7
  %loadMem_41b9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9ab = call %struct.Memory* @routine_addl_0x8a0a78___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9ab)
  store %struct.Memory* %call_41b9ab, %struct.Memory** %MEMORY

  ; Code: addl 0x86bd88, %eax	 RIP: 41b9b2	 Bytes: 7
  %loadMem_41b9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9b2 = call %struct.Memory* @routine_addl_0x86bd88___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9b2)
  store %struct.Memory* %call_41b9b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x86bd88	 RIP: 41b9b9	 Bytes: 7
  %loadMem_41b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9b9 = call %struct.Memory* @routine_movl__eax__0x86bd88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9b9)
  store %struct.Memory* %call_41b9b9, %struct.Memory** %MEMORY

  ; Code: .L_41b9c0:	 RIP: 41b9c0	 Bytes: 0
  br label %block_.L_41b9c0
block_.L_41b9c0:

  ; Code: cmpl $0xf423e, -0x5c(%rbp)	 RIP: 41b9c0	 Bytes: 7
  %loadMem_41b9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9c0 = call %struct.Memory* @routine_cmpl__0xf423e__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9c0)
  store %struct.Memory* %call_41b9c0, %struct.Memory** %MEMORY

  ; Code: jne .L_41ba09	 RIP: 41b9c7	 Bytes: 6
  %loadMem_41b9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9c7 = call %struct.Memory* @routine_jne_.L_41ba09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9c7, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_41b9c7, %struct.Memory** %MEMORY

  %loadBr_41b9c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b9c7 = icmp eq i8 %loadBr_41b9c7, 1
  br i1 %cmpBr_41b9c7, label %block_.L_41ba09, label %block_41b9cd

block_41b9cd:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41b9cd	 Bytes: 8
  %loadMem_41b9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9cd = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9cd)
  store %struct.Memory* %call_41b9cd, %struct.Memory** %MEMORY

  ; Code: jne .L_41ba09	 RIP: 41b9d5	 Bytes: 6
  %loadMem_41b9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9d5 = call %struct.Memory* @routine_jne_.L_41ba09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9d5, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41b9d5, %struct.Memory** %MEMORY

  %loadBr_41b9d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b9d5 = icmp eq i8 %loadBr_41b9d5, 1
  br i1 %cmpBr_41b9d5, label %block_.L_41ba09, label %block_41b9db

block_41b9db:
  ; Code: cmpl $0x1, 0x8661bc	 RIP: 41b9db	 Bytes: 8
  %loadMem_41b9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9db = call %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9db)
  store %struct.Memory* %call_41b9db, %struct.Memory** %MEMORY

  ; Code: jne .L_41b9f9	 RIP: 41b9e3	 Bytes: 6
  %loadMem_41b9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9e3 = call %struct.Memory* @routine_jne_.L_41b9f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9e3, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41b9e3, %struct.Memory** %MEMORY

  %loadBr_41b9e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41b9e3 = icmp eq i8 %loadBr_41b9e3, 1
  br i1 %cmpBr_41b9e3, label %block_.L_41b9f9, label %block_41b9e9

block_41b9e9:
  ; Code: movl $0x3, 0x866530	 RIP: 41b9e9	 Bytes: 11
  %loadMem_41b9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9e9 = call %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9e9)
  store %struct.Memory* %call_41b9e9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ba04	 RIP: 41b9f4	 Bytes: 5
  %loadMem_41b9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9f4 = call %struct.Memory* @routine_jmpq_.L_41ba04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9f4, i64 16, i64 5)
  store %struct.Memory* %call_41b9f4, %struct.Memory** %MEMORY

  br label %block_.L_41ba04

  ; Code: .L_41b9f9:	 RIP: 41b9f9	 Bytes: 0
block_.L_41b9f9:

  ; Code: movl $0x2, 0x866530	 RIP: 41b9f9	 Bytes: 11
  %loadMem_41b9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41b9f9 = call %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41b9f9)
  store %struct.Memory* %call_41b9f9, %struct.Memory** %MEMORY

  ; Code: .L_41ba04:	 RIP: 41ba04	 Bytes: 0
  br label %block_.L_41ba04
block_.L_41ba04:

  ; Code: jmpq .L_41ba57	 RIP: 41ba04	 Bytes: 5
  %loadMem_41ba04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba04 = call %struct.Memory* @routine_jmpq_.L_41ba57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba04, i64 83, i64 5)
  store %struct.Memory* %call_41ba04, %struct.Memory** %MEMORY

  br label %block_.L_41ba57

  ; Code: .L_41ba09:	 RIP: 41ba09	 Bytes: 0
block_.L_41ba09:

  ; Code: cmpl $0xfff0bdc2, -0x5c(%rbp)	 RIP: 41ba09	 Bytes: 7
  %loadMem_41ba09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba09 = call %struct.Memory* @routine_cmpl__0xfff0bdc2__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba09)
  store %struct.Memory* %call_41ba09, %struct.Memory** %MEMORY

  ; Code: jne .L_41ba52	 RIP: 41ba10	 Bytes: 6
  %loadMem_41ba10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba10 = call %struct.Memory* @routine_jne_.L_41ba52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba10, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_41ba10, %struct.Memory** %MEMORY

  %loadBr_41ba10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba10 = icmp eq i8 %loadBr_41ba10, 1
  br i1 %cmpBr_41ba10, label %block_.L_41ba52, label %block_41ba16

block_41ba16:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41ba16	 Bytes: 8
  %loadMem_41ba16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba16 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba16)
  store %struct.Memory* %call_41ba16, %struct.Memory** %MEMORY

  ; Code: jne .L_41ba52	 RIP: 41ba1e	 Bytes: 6
  %loadMem_41ba1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba1e = call %struct.Memory* @routine_jne_.L_41ba52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba1e, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41ba1e, %struct.Memory** %MEMORY

  %loadBr_41ba1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba1e = icmp eq i8 %loadBr_41ba1e, 1
  br i1 %cmpBr_41ba1e, label %block_.L_41ba52, label %block_41ba24

block_41ba24:
  ; Code: cmpl $0x1, 0x8661bc	 RIP: 41ba24	 Bytes: 8
  %loadMem_41ba24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba24 = call %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba24)
  store %struct.Memory* %call_41ba24, %struct.Memory** %MEMORY

  ; Code: jne .L_41ba42	 RIP: 41ba2c	 Bytes: 6
  %loadMem_41ba2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba2c = call %struct.Memory* @routine_jne_.L_41ba42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba2c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41ba2c, %struct.Memory** %MEMORY

  %loadBr_41ba2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba2c = icmp eq i8 %loadBr_41ba2c, 1
  br i1 %cmpBr_41ba2c, label %block_.L_41ba42, label %block_41ba32

block_41ba32:
  ; Code: movl $0x2, 0x866530	 RIP: 41ba32	 Bytes: 11
  %loadMem_41ba32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba32 = call %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba32)
  store %struct.Memory* %call_41ba32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ba4d	 RIP: 41ba3d	 Bytes: 5
  %loadMem_41ba3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba3d = call %struct.Memory* @routine_jmpq_.L_41ba4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba3d, i64 16, i64 5)
  store %struct.Memory* %call_41ba3d, %struct.Memory** %MEMORY

  br label %block_.L_41ba4d

  ; Code: .L_41ba42:	 RIP: 41ba42	 Bytes: 0
block_.L_41ba42:

  ; Code: movl $0x3, 0x866530	 RIP: 41ba42	 Bytes: 11
  %loadMem_41ba42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba42 = call %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba42)
  store %struct.Memory* %call_41ba42, %struct.Memory** %MEMORY

  ; Code: .L_41ba4d:	 RIP: 41ba4d	 Bytes: 0
  br label %block_.L_41ba4d
block_.L_41ba4d:

  ; Code: jmpq .L_41ba52	 RIP: 41ba4d	 Bytes: 5
  %loadMem_41ba4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba4d = call %struct.Memory* @routine_jmpq_.L_41ba52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba4d, i64 5, i64 5)
  store %struct.Memory* %call_41ba4d, %struct.Memory** %MEMORY

  br label %block_.L_41ba52

  ; Code: .L_41ba52:	 RIP: 41ba52	 Bytes: 0
block_.L_41ba52:

  ; Code: jmpq .L_41ba57	 RIP: 41ba52	 Bytes: 5
  %loadMem_41ba52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba52 = call %struct.Memory* @routine_jmpq_.L_41ba57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba52, i64 5, i64 5)
  store %struct.Memory* %call_41ba52, %struct.Memory** %MEMORY

  br label %block_.L_41ba57

  ; Code: .L_41ba57:	 RIP: 41ba57	 Bytes: 0
block_.L_41ba57:

  ; Code: cmpl $0x0, 0x86679c	 RIP: 41ba57	 Bytes: 8
  %loadMem_41ba57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba57 = call %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba57)
  store %struct.Memory* %call_41ba57, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41ba5f	 Bytes: 6
  %loadMem_41ba5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba5f = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba5f, i8* %BRANCH_TAKEN, i64 270, i64 6, i64 6)
  store %struct.Memory* %call_41ba5f, %struct.Memory** %MEMORY

  %loadBr_41ba5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba5f = icmp eq i8 %loadBr_41ba5f, 1
  br i1 %cmpBr_41ba5f, label %block_.L_41bb6d, label %block_41ba65

block_41ba65:
  ; Code: cmpl $0x0, 0x8a2a04	 RIP: 41ba65	 Bytes: 8
  %loadMem_41ba65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba65 = call %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba65)
  store %struct.Memory* %call_41ba65, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41ba6d	 Bytes: 6
  %loadMem_41ba6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba6d = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba6d, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_41ba6d, %struct.Memory** %MEMORY

  %loadBr_41ba6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba6d = icmp eq i8 %loadBr_41ba6d, 1
  br i1 %cmpBr_41ba6d, label %block_.L_41bb6d, label %block_41ba73

block_41ba73:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41ba73	 Bytes: 8
  %loadMem_41ba73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba73 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba73)
  store %struct.Memory* %call_41ba73, %struct.Memory** %MEMORY

  ; Code: jne .L_41bb6d	 RIP: 41ba7b	 Bytes: 6
  %loadMem_41ba7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba7b = call %struct.Memory* @routine_jne_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba7b, i8* %BRANCH_TAKEN, i64 242, i64 6, i64 6)
  store %struct.Memory* %call_41ba7b, %struct.Memory** %MEMORY

  %loadBr_41ba7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba7b = icmp eq i8 %loadBr_41ba7b, 1
  br i1 %cmpBr_41ba7b, label %block_.L_41bb6d, label %block_41ba81

block_41ba81:
  ; Code: cmpl $0x3, 0x866530	 RIP: 41ba81	 Bytes: 8
  %loadMem_41ba81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba81 = call %struct.Memory* @routine_cmpl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba81)
  store %struct.Memory* %call_41ba81, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41ba89	 Bytes: 6
  %loadMem_41ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba89 = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba89, i8* %BRANCH_TAKEN, i64 228, i64 6, i64 6)
  store %struct.Memory* %call_41ba89, %struct.Memory** %MEMORY

  %loadBr_41ba89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba89 = icmp eq i8 %loadBr_41ba89, 1
  br i1 %cmpBr_41ba89, label %block_.L_41bb6d, label %block_41ba8f

block_41ba8f:
  ; Code: cmpl $0x2, 0x866530	 RIP: 41ba8f	 Bytes: 8
  %loadMem_41ba8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba8f = call %struct.Memory* @routine_cmpl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba8f)
  store %struct.Memory* %call_41ba8f, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41ba97	 Bytes: 6
  %loadMem_41ba97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba97 = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba97, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_41ba97, %struct.Memory** %MEMORY

  %loadBr_41ba97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ba97 = icmp eq i8 %loadBr_41ba97, 1
  br i1 %cmpBr_41ba97, label %block_.L_41bb6d, label %block_41ba9d

block_41ba9d:
  ; Code: cmpl $0x4, 0x866530	 RIP: 41ba9d	 Bytes: 8
  %loadMem_41ba9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ba9d = call %struct.Memory* @routine_cmpl__0x4__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ba9d)
  store %struct.Memory* %call_41ba9d, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41baa5	 Bytes: 6
  %loadMem_41baa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41baa5 = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41baa5, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_41baa5, %struct.Memory** %MEMORY

  %loadBr_41baa5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41baa5 = icmp eq i8 %loadBr_41baa5, 1
  br i1 %cmpBr_41baa5, label %block_.L_41bb6d, label %block_41baab

block_41baab:
  ; Code: cmpl $0x5, 0x866530	 RIP: 41baab	 Bytes: 8
  %loadMem_41baab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41baab = call %struct.Memory* @routine_cmpl__0x5__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41baab)
  store %struct.Memory* %call_41baab, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41bab3	 Bytes: 6
  %loadMem_41bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bab3 = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bab3, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_41bab3, %struct.Memory** %MEMORY

  %loadBr_41bab3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bab3 = icmp eq i8 %loadBr_41bab3, 1
  br i1 %cmpBr_41bab3, label %block_.L_41bb6d, label %block_41bab9

block_41bab9:
  ; Code: cmpl $0x1, 0x866530	 RIP: 41bab9	 Bytes: 8
  %loadMem_41bab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bab9 = call %struct.Memory* @routine_cmpl__0x1__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bab9)
  store %struct.Memory* %call_41bab9, %struct.Memory** %MEMORY

  ; Code: je .L_41bb6d	 RIP: 41bac1	 Bytes: 6
  %loadMem_41bac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bac1 = call %struct.Memory* @routine_je_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bac1, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_41bac1, %struct.Memory** %MEMORY

  %loadBr_41bac1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bac1 = icmp eq i8 %loadBr_41bac1, 1
  br i1 %cmpBr_41bac1, label %block_.L_41bb6d, label %block_41bac7

block_41bac7:
  ; Code: cmpl $0x0, 0x62e4f8	 RIP: 41bac7	 Bytes: 8
  %loadMem_41bac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bac7 = call %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bac7)
  store %struct.Memory* %call_41bac7, %struct.Memory** %MEMORY

  ; Code: jne .L_41bb6d	 RIP: 41bacf	 Bytes: 6
  %loadMem_41bacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bacf = call %struct.Memory* @routine_jne_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bacf, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_41bacf, %struct.Memory** %MEMORY

  %loadBr_41bacf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bacf = icmp eq i8 %loadBr_41bacf, 1
  br i1 %cmpBr_41bacf, label %block_.L_41bb6d, label %block_41bad5

block_41bad5:
  ; Code: cmpl $0xf40b0, -0x5c(%rbp)	 RIP: 41bad5	 Bytes: 7
  %loadMem_41bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bad5 = call %struct.Memory* @routine_cmpl__0xf40b0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bad5)
  store %struct.Memory* %call_41bad5, %struct.Memory** %MEMORY

  ; Code: jle .L_41bb68	 RIP: 41badc	 Bytes: 6
  %loadMem_41badc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41badc = call %struct.Memory* @routine_jle_.L_41bb68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41badc, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_41badc, %struct.Memory** %MEMORY

  %loadBr_41badc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41badc = icmp eq i8 %loadBr_41badc, 1
  br i1 %cmpBr_41badc, label %block_.L_41bb68, label %block_41bae2

block_41bae2:
  ; Code: cmpl $0x1, 0x85f154	 RIP: 41bae2	 Bytes: 8
  %loadMem_41bae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bae2 = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bae2)
  store %struct.Memory* %call_41bae2, %struct.Memory** %MEMORY

  ; Code: je .L_41bb2c	 RIP: 41baea	 Bytes: 6
  %loadMem_41baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41baea = call %struct.Memory* @routine_je_.L_41bb2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41baea, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_41baea, %struct.Memory** %MEMORY

  %loadBr_41baea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41baea = icmp eq i8 %loadBr_41baea, 1
  br i1 %cmpBr_41baea, label %block_.L_41bb2c, label %block_41baf0

block_41baf0:
  ; Code: movq $0x4290fe, %rdi	 RIP: 41baf0	 Bytes: 10
  %loadMem_41baf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41baf0 = call %struct.Memory* @routine_movq__0x4290fe___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41baf0)
  store %struct.Memory* %call_41baf0, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 41bafa	 Bytes: 5
  %loadMem_41bafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bafa = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bafa)
  store %struct.Memory* %call_41bafa, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %ecx	 RIP: 41baff	 Bytes: 5
  %loadMem_41baff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41baff = call %struct.Memory* @routine_movl__0xf4240___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41baff)
  store %struct.Memory* %call_41baff, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 41bb04	 Bytes: 3
  %loadMem_41bb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb04 = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb04)
  store %struct.Memory* %call_41bb04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3124(%rbp)	 RIP: 41bb07	 Bytes: 6
  %loadMem_41bb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb07 = call %struct.Memory* @routine_movl__eax__MINUS0x3124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb07)
  store %struct.Memory* %call_41bb07, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41bb0d	 Bytes: 2
  %loadMem_41bb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb0d = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb0d)
  store %struct.Memory* %call_41bb0d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41bb0f	 Bytes: 1
  %loadMem_41bb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb0f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb0f)
  store %struct.Memory* %call_41bb0f, %struct.Memory** %MEMORY

  ; Code: movl -0x3124(%rbp), %ecx	 RIP: 41bb10	 Bytes: 6
  %loadMem_41bb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb10 = call %struct.Memory* @routine_movl_MINUS0x3124__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb10)
  store %struct.Memory* %call_41bb10, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41bb16	 Bytes: 2
  %loadMem_41bb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb16 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb16)
  store %struct.Memory* %call_41bb16, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41bb18	 Bytes: 2
  %loadMem_41bb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb18 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb18)
  store %struct.Memory* %call_41bb18, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bb1a	 Bytes: 2
  %loadMem_41bb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb1a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb1a)
  store %struct.Memory* %call_41bb1a, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bb1c	 Bytes: 5
  %loadMem1_41bb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bb1c = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bb1c, i64 -110188, i64 5, i64 5)
  store %struct.Memory* %call1_41bb1c, %struct.Memory** %MEMORY

  %loadMem2_41bb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bb1c = load i64, i64* %3
  %call2_41bb1c = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bb1c, %struct.Memory* %loadMem2_41bb1c)
  store %struct.Memory* %call2_41bb1c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3128(%rbp)	 RIP: 41bb21	 Bytes: 6
  %loadMem_41bb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb21 = call %struct.Memory* @routine_movl__eax__MINUS0x3128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb21)
  store %struct.Memory* %call_41bb21, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41bb63	 RIP: 41bb27	 Bytes: 5
  %loadMem_41bb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb27 = call %struct.Memory* @routine_jmpq_.L_41bb63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb27, i64 60, i64 5)
  store %struct.Memory* %call_41bb27, %struct.Memory** %MEMORY

  br label %block_.L_41bb63

  ; Code: .L_41bb2c:	 RIP: 41bb2c	 Bytes: 0
block_.L_41bb2c:

  ; Code: movq $0x429119, %rdi	 RIP: 41bb2c	 Bytes: 10
  %loadMem_41bb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb2c = call %struct.Memory* @routine_movq__0x429119___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb2c)
  store %struct.Memory* %call_41bb2c, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 41bb36	 Bytes: 5
  %loadMem_41bb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb36 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb36)
  store %struct.Memory* %call_41bb36, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %ecx	 RIP: 41bb3b	 Bytes: 5
  %loadMem_41bb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb3b = call %struct.Memory* @routine_movl__0xf4240___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb3b)
  store %struct.Memory* %call_41bb3b, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 41bb40	 Bytes: 3
  %loadMem_41bb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb40 = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb40)
  store %struct.Memory* %call_41bb40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x312c(%rbp)	 RIP: 41bb43	 Bytes: 6
  %loadMem_41bb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb43 = call %struct.Memory* @routine_movl__eax__MINUS0x312c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb43)
  store %struct.Memory* %call_41bb43, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41bb49	 Bytes: 2
  %loadMem_41bb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb49 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb49)
  store %struct.Memory* %call_41bb49, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41bb4b	 Bytes: 1
  %loadMem_41bb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb4b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb4b)
  store %struct.Memory* %call_41bb4b, %struct.Memory** %MEMORY

  ; Code: movl -0x312c(%rbp), %ecx	 RIP: 41bb4c	 Bytes: 6
  %loadMem_41bb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb4c = call %struct.Memory* @routine_movl_MINUS0x312c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb4c)
  store %struct.Memory* %call_41bb4c, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41bb52	 Bytes: 2
  %loadMem_41bb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb52 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb52)
  store %struct.Memory* %call_41bb52, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41bb54	 Bytes: 2
  %loadMem_41bb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb54 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb54)
  store %struct.Memory* %call_41bb54, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bb56	 Bytes: 2
  %loadMem_41bb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb56 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb56)
  store %struct.Memory* %call_41bb56, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bb58	 Bytes: 5
  %loadMem1_41bb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bb58 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bb58, i64 -110248, i64 5, i64 5)
  store %struct.Memory* %call1_41bb58, %struct.Memory** %MEMORY

  %loadMem2_41bb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bb58 = load i64, i64* %3
  %call2_41bb58 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bb58, %struct.Memory* %loadMem2_41bb58)
  store %struct.Memory* %call2_41bb58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3130(%rbp)	 RIP: 41bb5d	 Bytes: 6
  %loadMem_41bb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb5d = call %struct.Memory* @routine_movl__eax__MINUS0x3130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb5d)
  store %struct.Memory* %call_41bb5d, %struct.Memory** %MEMORY

  ; Code: .L_41bb63:	 RIP: 41bb63	 Bytes: 0
  br label %block_.L_41bb63
block_.L_41bb63:

  ; Code: jmpq .L_41bb68	 RIP: 41bb63	 Bytes: 5
  %loadMem_41bb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb63 = call %struct.Memory* @routine_jmpq_.L_41bb68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb63, i64 5, i64 5)
  store %struct.Memory* %call_41bb63, %struct.Memory** %MEMORY

  br label %block_.L_41bb68

  ; Code: .L_41bb68:	 RIP: 41bb68	 Bytes: 0
block_.L_41bb68:

  ; Code: jmpq .L_41bb6d	 RIP: 41bb68	 Bytes: 5
  %loadMem_41bb68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb68 = call %struct.Memory* @routine_jmpq_.L_41bb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb68, i64 5, i64 5)
  store %struct.Memory* %call_41bb68, %struct.Memory** %MEMORY

  br label %block_.L_41bb6d

  ; Code: .L_41bb6d:	 RIP: 41bb6d	 Bytes: 0
block_.L_41bb6d:

  ; Code: cmpl $0x2, 0x866530	 RIP: 41bb6d	 Bytes: 8
  %loadMem_41bb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb6d = call %struct.Memory* @routine_cmpl__0x2__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb6d)
  store %struct.Memory* %call_41bb6d, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bb75	 Bytes: 6
  %loadMem_41bb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb75 = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb75, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_41bb75, %struct.Memory** %MEMORY

  %loadBr_41bb75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bb75 = icmp eq i8 %loadBr_41bb75, 1
  br i1 %cmpBr_41bb75, label %block_.L_41bc11, label %block_41bb7b

block_41bb7b:
  ; Code: cmpl $0x3, 0x866530	 RIP: 41bb7b	 Bytes: 8
  %loadMem_41bb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb7b = call %struct.Memory* @routine_cmpl__0x3__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb7b)
  store %struct.Memory* %call_41bb7b, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bb83	 Bytes: 6
  %loadMem_41bb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb83 = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb83, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_41bb83, %struct.Memory** %MEMORY

  %loadBr_41bb83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bb83 = icmp eq i8 %loadBr_41bb83, 1
  br i1 %cmpBr_41bb83, label %block_.L_41bc11, label %block_41bb89

block_41bb89:
  ; Code: cmpl $0x1, 0x866530	 RIP: 41bb89	 Bytes: 8
  %loadMem_41bb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb89 = call %struct.Memory* @routine_cmpl__0x1__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb89)
  store %struct.Memory* %call_41bb89, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bb91	 Bytes: 6
  %loadMem_41bb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb91 = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb91, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_41bb91, %struct.Memory** %MEMORY

  %loadBr_41bb91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bb91 = icmp eq i8 %loadBr_41bb91, 1
  br i1 %cmpBr_41bb91, label %block_.L_41bc11, label %block_41bb97

block_41bb97:
  ; Code: cmpl $0x4, 0x866530	 RIP: 41bb97	 Bytes: 8
  %loadMem_41bb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb97 = call %struct.Memory* @routine_cmpl__0x4__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb97)
  store %struct.Memory* %call_41bb97, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bb9f	 Bytes: 6
  %loadMem_41bb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bb9f = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bb9f, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_41bb9f, %struct.Memory** %MEMORY

  %loadBr_41bb9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bb9f = icmp eq i8 %loadBr_41bb9f, 1
  br i1 %cmpBr_41bb9f, label %block_.L_41bc11, label %block_41bba5

block_41bba5:
  ; Code: cmpl $0x5, 0x866530	 RIP: 41bba5	 Bytes: 8
  %loadMem_41bba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bba5 = call %struct.Memory* @routine_cmpl__0x5__0x866530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bba5)
  store %struct.Memory* %call_41bba5, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bbad	 Bytes: 6
  %loadMem_41bbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbad = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbad, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_41bbad, %struct.Memory** %MEMORY

  %loadBr_41bbad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbad = icmp eq i8 %loadBr_41bbad, 1
  br i1 %cmpBr_41bbad, label %block_.L_41bc11, label %block_41bbb3

block_41bbb3:
  ; Code: movsbl 0x86678c, %eax	 RIP: 41bbb3	 Bytes: 8
  %loadMem_41bbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbb3 = call %struct.Memory* @routine_movsbl_0x86678c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbb3)
  store %struct.Memory* %call_41bbb3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 41bbbb	 Bytes: 3
  %loadMem_41bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbbb = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbbb)
  store %struct.Memory* %call_41bbbb, %struct.Memory** %MEMORY

  ; Code: jl .L_41bc11	 RIP: 41bbbe	 Bytes: 6
  %loadMem_41bbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbbe = call %struct.Memory* @routine_jl_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbbe, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_41bbbe, %struct.Memory** %MEMORY

  %loadBr_41bbbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbbe = icmp eq i8 %loadBr_41bbbe, 1
  br i1 %cmpBr_41bbbe, label %block_.L_41bc11, label %block_41bbc4

block_41bbc4:
  ; Code: movl 0x62ea24, %eax	 RIP: 41bbc4	 Bytes: 7
  %loadMem_41bbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbc4 = call %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbc4)
  store %struct.Memory* %call_41bbc4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db0c, %eax	 RIP: 41bbcb	 Bytes: 7
  %loadMem_41bbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbcb = call %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbcb)
  store %struct.Memory* %call_41bbcb, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc11	 RIP: 41bbd2	 Bytes: 6
  %loadMem_41bbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbd2 = call %struct.Memory* @routine_jne_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbd2, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41bbd2, %struct.Memory** %MEMORY

  %loadBr_41bbd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbd2 = icmp eq i8 %loadBr_41bbd2, 1
  br i1 %cmpBr_41bbd2, label %block_.L_41bc11, label %block_41bbd8

block_41bbd8:
  ; Code: cmpl $0x0, 0x886bbc	 RIP: 41bbd8	 Bytes: 8
  %loadMem_41bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbd8 = call %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbd8)
  store %struct.Memory* %call_41bbd8, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc11	 RIP: 41bbe0	 Bytes: 6
  %loadMem_41bbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbe0 = call %struct.Memory* @routine_jne_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbe0, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_41bbe0, %struct.Memory** %MEMORY

  %loadBr_41bbe0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbe0 = icmp eq i8 %loadBr_41bbe0, 1
  br i1 %cmpBr_41bbe0, label %block_.L_41bc11, label %block_41bbe6

block_41bbe6:
  ; Code: cmpl $0x1, 0x85f154	 RIP: 41bbe6	 Bytes: 8
  %loadMem_41bbe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbe6 = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbe6)
  store %struct.Memory* %call_41bbe6, %struct.Memory** %MEMORY

  ; Code: je .L_41bc11	 RIP: 41bbee	 Bytes: 6
  %loadMem_41bbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbee = call %struct.Memory* @routine_je_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbee, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_41bbee, %struct.Memory** %MEMORY

  %loadBr_41bbee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbee = icmp eq i8 %loadBr_41bbee, 1
  br i1 %cmpBr_41bbee, label %block_.L_41bc11, label %block_41bbf4

block_41bbf4:
  ; Code: cmpl $0xffffffff, 0x8825f8	 RIP: 41bbf4	 Bytes: 8
  %loadMem_41bbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbf4 = call %struct.Memory* @routine_cmpl__0xffffffff__0x8825f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbf4)
  store %struct.Memory* %call_41bbf4, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc0c	 RIP: 41bbfc	 Bytes: 6
  %loadMem_41bbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bbfc = call %struct.Memory* @routine_jne_.L_41bc0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bbfc, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_41bbfc, %struct.Memory** %MEMORY

  %loadBr_41bbfc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bbfc = icmp eq i8 %loadBr_41bbfc, 1
  br i1 %cmpBr_41bbfc, label %block_.L_41bc0c, label %block_41bc02

block_41bc02:
  ; Code: xorl %eax, %eax	 RIP: 41bc02	 Bytes: 2
  %loadMem_41bc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc02 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc02)
  store %struct.Memory* %call_41bc02, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 41bc04	 Bytes: 2
  %loadMem_41bc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc04 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc04)
  store %struct.Memory* %call_41bc04, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 41bc06	 Bytes: 6
  %loadMem_41bc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc06 = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc06)
  store %struct.Memory* %call_41bc06, %struct.Memory** %MEMORY

  ; Code: .L_41bc0c:	 RIP: 41bc0c	 Bytes: 0
  br label %block_.L_41bc0c
block_.L_41bc0c:

  ; Code: jmpq .L_41bc11	 RIP: 41bc0c	 Bytes: 5
  %loadMem_41bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc0c = call %struct.Memory* @routine_jmpq_.L_41bc11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc0c, i64 5, i64 5)
  store %struct.Memory* %call_41bc0c, %struct.Memory** %MEMORY

  br label %block_.L_41bc11

  ; Code: .L_41bc11:	 RIP: 41bc11	 Bytes: 0
block_.L_41bc11:

  ; Code: cmpl $0x1, 0x85f154	 RIP: 41bc11	 Bytes: 8
  %loadMem_41bc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc11 = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc11)
  store %struct.Memory* %call_41bc11, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc6f	 RIP: 41bc19	 Bytes: 6
  %loadMem_41bc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc19 = call %struct.Memory* @routine_jne_.L_41bc6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc19, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_41bc19, %struct.Memory** %MEMORY

  %loadBr_41bc19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc19 = icmp eq i8 %loadBr_41bc19, 1
  br i1 %cmpBr_41bc19, label %block_.L_41bc6f, label %block_41bc1f

block_41bc1f:
  ; Code: cmpl $0xfff0be24, -0x5c(%rbp)	 RIP: 41bc1f	 Bytes: 7
  %loadMem_41bc1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc1f = call %struct.Memory* @routine_cmpl__0xfff0be24__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc1f)
  store %struct.Memory* %call_41bc1f, %struct.Memory** %MEMORY

  ; Code: jle .L_41bc6f	 RIP: 41bc26	 Bytes: 6
  %loadMem_41bc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc26 = call %struct.Memory* @routine_jle_.L_41bc6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc26, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_41bc26, %struct.Memory** %MEMORY

  %loadBr_41bc26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc26 = icmp eq i8 %loadBr_41bc26, 1
  br i1 %cmpBr_41bc26, label %block_.L_41bc6f, label %block_41bc2c

block_41bc2c:
  ; Code: cmpl $0x0, 0x62e9e4	 RIP: 41bc2c	 Bytes: 8
  %loadMem_41bc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc2c = call %struct.Memory* @routine_cmpl__0x0__0x62e9e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc2c)
  store %struct.Memory* %call_41bc2c, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc6a	 RIP: 41bc34	 Bytes: 6
  %loadMem_41bc34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc34 = call %struct.Memory* @routine_jne_.L_41bc6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc34, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41bc34, %struct.Memory** %MEMORY

  %loadBr_41bc34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc34 = icmp eq i8 %loadBr_41bc34, 1
  br i1 %cmpBr_41bc34, label %block_.L_41bc6a, label %block_41bc3a

block_41bc3a:
  ; Code: cmpl $0x0, 0x86bd84	 RIP: 41bc3a	 Bytes: 8
  %loadMem_41bc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc3a = call %struct.Memory* @routine_cmpl__0x0__0x86bd84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc3a)
  store %struct.Memory* %call_41bc3a, %struct.Memory** %MEMORY

  ; Code: jne .L_41bc6a	 RIP: 41bc42	 Bytes: 6
  %loadMem_41bc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc42 = call %struct.Memory* @routine_jne_.L_41bc6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc42, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_41bc42, %struct.Memory** %MEMORY

  %loadBr_41bc42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc42 = icmp eq i8 %loadBr_41bc42, 1
  br i1 %cmpBr_41bc42, label %block_.L_41bc6a, label %block_41bc48

block_41bc48:
  ; Code: movq $0x42914d, %rdi	 RIP: 41bc48	 Bytes: 10
  %loadMem_41bc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc48 = call %struct.Memory* @routine_movq__0x42914d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc48)
  store %struct.Memory* %call_41bc48, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x62e9e4	 RIP: 41bc52	 Bytes: 11
  %loadMem_41bc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc52 = call %struct.Memory* @routine_movl__0x1__0x62e9e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc52)
  store %struct.Memory* %call_41bc52, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bc5d	 Bytes: 2
  %loadMem_41bc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc5d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc5d)
  store %struct.Memory* %call_41bc5d, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bc5f	 Bytes: 5
  %loadMem1_41bc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bc5f = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bc5f, i64 -110511, i64 5, i64 5)
  store %struct.Memory* %call1_41bc5f, %struct.Memory** %MEMORY

  %loadMem2_41bc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bc5f = load i64, i64* %3
  %call2_41bc5f = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bc5f, %struct.Memory* %loadMem2_41bc5f)
  store %struct.Memory* %call2_41bc5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3134(%rbp)	 RIP: 41bc64	 Bytes: 6
  %loadMem_41bc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc64 = call %struct.Memory* @routine_movl__eax__MINUS0x3134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc64)
  store %struct.Memory* %call_41bc64, %struct.Memory** %MEMORY

  ; Code: .L_41bc6a:	 RIP: 41bc6a	 Bytes: 0
  br label %block_.L_41bc6a
block_.L_41bc6a:

  ; Code: jmpq .L_41bde2	 RIP: 41bc6a	 Bytes: 5
  %loadMem_41bc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc6a = call %struct.Memory* @routine_jmpq_.L_41bde2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc6a, i64 376, i64 5)
  store %struct.Memory* %call_41bc6a, %struct.Memory** %MEMORY

  br label %block_.L_41bde2

  ; Code: .L_41bc6f:	 RIP: 41bc6f	 Bytes: 0
block_.L_41bc6f:

  ; Code: cmpl $0xfff0be24, -0x5c(%rbp)	 RIP: 41bc6f	 Bytes: 7
  %loadMem_41bc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc6f = call %struct.Memory* @routine_cmpl__0xfff0be24__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc6f)
  store %struct.Memory* %call_41bc6f, %struct.Memory** %MEMORY

  ; Code: jge .L_41bd6c	 RIP: 41bc76	 Bytes: 6
  %loadMem_41bc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc76 = call %struct.Memory* @routine_jge_.L_41bd6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc76, i8* %BRANCH_TAKEN, i64 246, i64 6, i64 6)
  store %struct.Memory* %call_41bc76, %struct.Memory** %MEMORY

  %loadBr_41bc76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc76 = icmp eq i8 %loadBr_41bc76, 1
  br i1 %cmpBr_41bc76, label %block_.L_41bd6c, label %block_41bc7c

block_41bc7c:
  ; Code: cmpl $0x1, 0x85f154	 RIP: 41bc7c	 Bytes: 8
  %loadMem_41bc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc7c = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc7c)
  store %struct.Memory* %call_41bc7c, %struct.Memory** %MEMORY

  ; Code: jne .L_41bd6c	 RIP: 41bc84	 Bytes: 6
  %loadMem_41bc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc84 = call %struct.Memory* @routine_jne_.L_41bd6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc84, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_41bc84, %struct.Memory** %MEMORY

  %loadBr_41bc84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc84 = icmp eq i8 %loadBr_41bc84, 1
  br i1 %cmpBr_41bc84, label %block_.L_41bd6c, label %block_41bc8a

block_41bc8a:
  ; Code: movl 0x62ea24, %eax	 RIP: 41bc8a	 Bytes: 7
  %loadMem_41bc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc8a = call %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc8a)
  store %struct.Memory* %call_41bc8a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db0c, %eax	 RIP: 41bc91	 Bytes: 7
  %loadMem_41bc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc91 = call %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc91)
  store %struct.Memory* %call_41bc91, %struct.Memory** %MEMORY

  ; Code: jne .L_41bd6c	 RIP: 41bc98	 Bytes: 6
  %loadMem_41bc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc98 = call %struct.Memory* @routine_jne_.L_41bd6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc98, i8* %BRANCH_TAKEN, i64 212, i64 6, i64 6)
  store %struct.Memory* %call_41bc98, %struct.Memory** %MEMORY

  %loadBr_41bc98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bc98 = icmp eq i8 %loadBr_41bc98, 1
  br i1 %cmpBr_41bc98, label %block_.L_41bd6c, label %block_41bc9e

block_41bc9e:
  ; Code: cmpl $0x0, 0x86bd84	 RIP: 41bc9e	 Bytes: 8
  %loadMem_41bc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bc9e = call %struct.Memory* @routine_cmpl__0x0__0x86bd84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bc9e)
  store %struct.Memory* %call_41bc9e, %struct.Memory** %MEMORY

  ; Code: je .L_41bcbc	 RIP: 41bca6	 Bytes: 6
  %loadMem_41bca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bca6 = call %struct.Memory* @routine_je_.L_41bcbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bca6, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41bca6, %struct.Memory** %MEMORY

  %loadBr_41bca6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bca6 = icmp eq i8 %loadBr_41bca6, 1
  br i1 %cmpBr_41bca6, label %block_.L_41bcbc, label %block_41bcac

block_41bcac:
  ; Code: movl $0x1, 0x86bd90	 RIP: 41bcac	 Bytes: 11
  %loadMem_41bcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcac = call %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcac)
  store %struct.Memory* %call_41bcac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41bcfd	 RIP: 41bcb7	 Bytes: 5
  %loadMem_41bcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcb7 = call %struct.Memory* @routine_jmpq_.L_41bcfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcb7, i64 70, i64 5)
  store %struct.Memory* %call_41bcb7, %struct.Memory** %MEMORY

  br label %block_.L_41bcfd

  ; Code: .L_41bcbc:	 RIP: 41bcbc	 Bytes: 0
block_.L_41bcbc:

  ; Code: movq $0x85f1f0, %rdi	 RIP: 41bcbc	 Bytes: 10
  %loadMem_41bcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcbc = call %struct.Memory* @routine_movq__0x85f1f0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcbc)
  store %struct.Memory* %call_41bcbc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x86bd84	 RIP: 41bcc6	 Bytes: 11
  %loadMem_41bcc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcc6 = call %struct.Memory* @routine_movl__0x1__0x86bd84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcc6)
  store %struct.Memory* %call_41bcc6, %struct.Memory** %MEMORY

  ; Code: callq .ProcessHoldings	 RIP: 41bcd1	 Bytes: 5
  %loadMem1_41bcd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bcd1 = call %struct.Memory* @routine_callq_.ProcessHoldings(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bcd1, i64 -106737, i64 5, i64 5)
  store %struct.Memory* %call1_41bcd1, %struct.Memory** %MEMORY

  %loadMem2_41bcd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bcd1 = load i64, i64* %3
  %call2_41bcd1 = call %struct.Memory* @sub_401be0.ProcessHoldings(%struct.State* %0, i64  %loadPC_41bcd1, %struct.Memory* %loadMem2_41bcd1)
  store %struct.Memory* %call2_41bcd1, %struct.Memory** %MEMORY

  ; Code: movq $0x429172, %rdi	 RIP: 41bcd6	 Bytes: 10
  %loadMem_41bcd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcd6 = call %struct.Memory* @routine_movq__0x429172___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcd6)
  store %struct.Memory* %call_41bcd6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62e9e4	 RIP: 41bce0	 Bytes: 11
  %loadMem_41bce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bce0 = call %struct.Memory* @routine_movl__0x0__0x62e9e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bce0)
  store %struct.Memory* %call_41bce0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bceb	 Bytes: 2
  %loadMem_41bceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bceb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bceb)
  store %struct.Memory* %call_41bceb, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bced	 Bytes: 5
  %loadMem1_41bced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bced = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bced, i64 -110653, i64 5, i64 5)
  store %struct.Memory* %call1_41bced, %struct.Memory** %MEMORY

  %loadMem2_41bced = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bced = load i64, i64* %3
  %call2_41bced = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bced, %struct.Memory* %loadMem2_41bced)
  store %struct.Memory* %call2_41bced, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3138(%rbp)	 RIP: 41bcf2	 Bytes: 6
  %loadMem_41bcf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcf2 = call %struct.Memory* @routine_movl__eax__MINUS0x3138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcf2)
  store %struct.Memory* %call_41bcf2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41a989	 RIP: 41bcf8	 Bytes: 5
  %loadMem_41bcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcf8 = call %struct.Memory* @routine_jmpq_.L_41a989(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcf8, i64 -4975, i64 5)
  store %struct.Memory* %call_41bcf8, %struct.Memory** %MEMORY

  br label %block_.L_41a989

  ; Code: .L_41bcfd:	 RIP: 41bcfd	 Bytes: 0
block_.L_41bcfd:

  ; Code: cmpl $0xfff0bdc0, -0x5c(%rbp)	 RIP: 41bcfd	 Bytes: 7
  %loadMem_41bcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bcfd = call %struct.Memory* @routine_cmpl__0xfff0bdc0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bcfd)
  store %struct.Memory* %call_41bcfd, %struct.Memory** %MEMORY

  ; Code: jle .L_41bd67	 RIP: 41bd04	 Bytes: 6
  %loadMem_41bd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd04 = call %struct.Memory* @routine_jle_.L_41bd67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd04, i8* %BRANCH_TAKEN, i64 99, i64 6, i64 6)
  store %struct.Memory* %call_41bd04, %struct.Memory** %MEMORY

  %loadBr_41bd04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd04 = icmp eq i8 %loadBr_41bd04, 1
  br i1 %cmpBr_41bd04, label %block_.L_41bd67, label %block_41bd0a

block_41bd0a:
  ; Code: cmpl $0x0, 0x86bd78	 RIP: 41bd0a	 Bytes: 8
  %loadMem_41bd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd0a = call %struct.Memory* @routine_cmpl__0x0__0x86bd78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd0a)
  store %struct.Memory* %call_41bd0a, %struct.Memory** %MEMORY

  ; Code: je .L_41bd4b	 RIP: 41bd12	 Bytes: 6
  %loadMem_41bd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd12 = call %struct.Memory* @routine_je_.L_41bd4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd12, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_41bd12, %struct.Memory** %MEMORY

  %loadBr_41bd12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd12 = icmp eq i8 %loadBr_41bd12, 1
  br i1 %cmpBr_41bd12, label %block_.L_41bd4b, label %block_41bd18

block_41bd18:
  ; Code: movq $0x42918b, %rdi	 RIP: 41bd18	 Bytes: 10
  %loadMem_41bd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd18 = call %struct.Memory* @routine_movq__0x42918b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd18)
  store %struct.Memory* %call_41bd18, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bd22	 Bytes: 2
  %loadMem_41bd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd22 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd22)
  store %struct.Memory* %call_41bd22, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bd24	 Bytes: 5
  %loadMem1_41bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bd24 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bd24, i64 -110708, i64 5, i64 5)
  store %struct.Memory* %call1_41bd24, %struct.Memory** %MEMORY

  %loadMem2_41bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bd24 = load i64, i64* %3
  %call2_41bd24 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bd24, %struct.Memory* %loadMem2_41bd24)
  store %struct.Memory* %call2_41bd24, %struct.Memory** %MEMORY

  ; Code: movq $0x4291bc, %rdi	 RIP: 41bd29	 Bytes: 10
  %loadMem_41bd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd29 = call %struct.Memory* @routine_movq__0x4291bc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd29)
  store %struct.Memory* %call_41bd29, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x313c(%rbp)	 RIP: 41bd33	 Bytes: 6
  %loadMem_41bd33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd33 = call %struct.Memory* @routine_movl__eax__MINUS0x313c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd33)
  store %struct.Memory* %call_41bd33, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bd39	 Bytes: 2
  %loadMem_41bd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd39 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd39)
  store %struct.Memory* %call_41bd39, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bd3b	 Bytes: 5
  %loadMem1_41bd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bd3b = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bd3b, i64 -110731, i64 5, i64 5)
  store %struct.Memory* %call1_41bd3b, %struct.Memory** %MEMORY

  %loadMem2_41bd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bd3b = load i64, i64* %3
  %call2_41bd3b = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bd3b, %struct.Memory* %loadMem2_41bd3b)
  store %struct.Memory* %call2_41bd3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3140(%rbp)	 RIP: 41bd40	 Bytes: 6
  %loadMem_41bd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd40 = call %struct.Memory* @routine_movl__eax__MINUS0x3140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd40)
  store %struct.Memory* %call_41bd40, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41bd62	 RIP: 41bd46	 Bytes: 5
  %loadMem_41bd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd46 = call %struct.Memory* @routine_jmpq_.L_41bd62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd46, i64 28, i64 5)
  store %struct.Memory* %call_41bd46, %struct.Memory** %MEMORY

  br label %block_.L_41bd62

  ; Code: .L_41bd4b:	 RIP: 41bd4b	 Bytes: 0
block_.L_41bd4b:

  ; Code: movq $0x4291cc, %rdi	 RIP: 41bd4b	 Bytes: 10
  %loadMem_41bd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd4b = call %struct.Memory* @routine_movq__0x4291cc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd4b)
  store %struct.Memory* %call_41bd4b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bd55	 Bytes: 2
  %loadMem_41bd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd55 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd55)
  store %struct.Memory* %call_41bd55, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bd57	 Bytes: 5
  %loadMem1_41bd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bd57 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bd57, i64 -110759, i64 5, i64 5)
  store %struct.Memory* %call1_41bd57, %struct.Memory** %MEMORY

  %loadMem2_41bd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bd57 = load i64, i64* %3
  %call2_41bd57 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bd57, %struct.Memory* %loadMem2_41bd57)
  store %struct.Memory* %call2_41bd57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3144(%rbp)	 RIP: 41bd5c	 Bytes: 6
  %loadMem_41bd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd5c = call %struct.Memory* @routine_movl__eax__MINUS0x3144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd5c)
  store %struct.Memory* %call_41bd5c, %struct.Memory** %MEMORY

  ; Code: .L_41bd62:	 RIP: 41bd62	 Bytes: 0
  br label %block_.L_41bd62
block_.L_41bd62:

  ; Code: jmpq .L_41bd67	 RIP: 41bd62	 Bytes: 5
  %loadMem_41bd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd62 = call %struct.Memory* @routine_jmpq_.L_41bd67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd62, i64 5, i64 5)
  store %struct.Memory* %call_41bd62, %struct.Memory** %MEMORY

  br label %block_.L_41bd67

  ; Code: .L_41bd67:	 RIP: 41bd67	 Bytes: 0
block_.L_41bd67:

  ; Code: jmpq .L_41bddd	 RIP: 41bd67	 Bytes: 5
  %loadMem_41bd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd67 = call %struct.Memory* @routine_jmpq_.L_41bddd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd67, i64 118, i64 5)
  store %struct.Memory* %call_41bd67, %struct.Memory** %MEMORY

  br label %block_.L_41bddd

  ; Code: .L_41bd6c:	 RIP: 41bd6c	 Bytes: 0
block_.L_41bd6c:

  ; Code: cmpl $0xffff15a0, -0x5c(%rbp)	 RIP: 41bd6c	 Bytes: 7
  %loadMem_41bd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd6c = call %struct.Memory* @routine_cmpl__0xffff15a0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd6c)
  store %struct.Memory* %call_41bd6c, %struct.Memory** %MEMORY

  ; Code: jle .L_41bdd8	 RIP: 41bd73	 Bytes: 6
  %loadMem_41bd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd73 = call %struct.Memory* @routine_jle_.L_41bdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd73, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_41bd73, %struct.Memory** %MEMORY

  %loadBr_41bd73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd73 = icmp eq i8 %loadBr_41bd73, 1
  br i1 %cmpBr_41bd73, label %block_.L_41bdd8, label %block_41bd79

block_41bd79:
  ; Code: cmpl $0xffff63c0, -0x5c(%rbp)	 RIP: 41bd79	 Bytes: 7
  %loadMem_41bd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd79 = call %struct.Memory* @routine_cmpl__0xffff63c0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd79)
  store %struct.Memory* %call_41bd79, %struct.Memory** %MEMORY

  ; Code: jge .L_41bdd8	 RIP: 41bd80	 Bytes: 6
  %loadMem_41bd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd80 = call %struct.Memory* @routine_jge_.L_41bdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd80, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_41bd80, %struct.Memory** %MEMORY

  %loadBr_41bd80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd80 = icmp eq i8 %loadBr_41bd80, 1
  br i1 %cmpBr_41bd80, label %block_.L_41bdd8, label %block_41bd86

block_41bd86:
  ; Code: cmpl $0x1, 0x85f154	 RIP: 41bd86	 Bytes: 8
  %loadMem_41bd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd86 = call %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd86)
  store %struct.Memory* %call_41bd86, %struct.Memory** %MEMORY

  ; Code: jne .L_41bdd8	 RIP: 41bd8e	 Bytes: 6
  %loadMem_41bd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd8e = call %struct.Memory* @routine_jne_.L_41bdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd8e, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_41bd8e, %struct.Memory** %MEMORY

  %loadBr_41bd8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd8e = icmp eq i8 %loadBr_41bd8e, 1
  br i1 %cmpBr_41bd8e, label %block_.L_41bdd8, label %block_41bd94

block_41bd94:
  ; Code: cmpl $0x0, 0x86bd78	 RIP: 41bd94	 Bytes: 8
  %loadMem_41bd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd94 = call %struct.Memory* @routine_cmpl__0x0__0x86bd78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd94)
  store %struct.Memory* %call_41bd94, %struct.Memory** %MEMORY

  ; Code: jne .L_41bdd8	 RIP: 41bd9c	 Bytes: 6
  %loadMem_41bd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bd9c = call %struct.Memory* @routine_jne_.L_41bdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bd9c, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_41bd9c, %struct.Memory** %MEMORY

  %loadBr_41bd9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bd9c = icmp eq i8 %loadBr_41bd9c, 1
  br i1 %cmpBr_41bd9c, label %block_.L_41bdd8, label %block_41bda2

block_41bda2:
  ; Code: movl 0x62ea24, %eax	 RIP: 41bda2	 Bytes: 7
  %loadMem_41bda2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bda2 = call %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bda2)
  store %struct.Memory* %call_41bda2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62db0c, %eax	 RIP: 41bda9	 Bytes: 7
  %loadMem_41bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bda9 = call %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bda9)
  store %struct.Memory* %call_41bda9, %struct.Memory** %MEMORY

  ; Code: jne .L_41bdd8	 RIP: 41bdb0	 Bytes: 6
  %loadMem_41bdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdb0 = call %struct.Memory* @routine_jne_.L_41bdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdb0, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_41bdb0, %struct.Memory** %MEMORY

  %loadBr_41bdb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41bdb0 = icmp eq i8 %loadBr_41bdb0, 1
  br i1 %cmpBr_41bdb0, label %block_.L_41bdd8, label %block_41bdb6

block_41bdb6:
  ; Code: movq $0x42921d, %rdi	 RIP: 41bdb6	 Bytes: 10
  %loadMem_41bdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdb6 = call %struct.Memory* @routine_movq__0x42921d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdb6)
  store %struct.Memory* %call_41bdb6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x86bd90	 RIP: 41bdc0	 Bytes: 11
  %loadMem_41bdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdc0 = call %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdc0)
  store %struct.Memory* %call_41bdc0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41bdcb	 Bytes: 2
  %loadMem_41bdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdcb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdcb)
  store %struct.Memory* %call_41bdcb, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 41bdcd	 Bytes: 5
  %loadMem1_41bdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41bdcd = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41bdcd, i64 -110877, i64 5, i64 5)
  store %struct.Memory* %call1_41bdcd, %struct.Memory** %MEMORY

  %loadMem2_41bdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41bdcd = load i64, i64* %3
  %call2_41bdcd = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_41bdcd, %struct.Memory* %loadMem2_41bdcd)
  store %struct.Memory* %call2_41bdcd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3148(%rbp)	 RIP: 41bdd2	 Bytes: 6
  %loadMem_41bdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdd2 = call %struct.Memory* @routine_movl__eax__MINUS0x3148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdd2)
  store %struct.Memory* %call_41bdd2, %struct.Memory** %MEMORY

  ; Code: .L_41bdd8:	 RIP: 41bdd8	 Bytes: 0
  br label %block_.L_41bdd8
block_.L_41bdd8:

  ; Code: jmpq .L_41bddd	 RIP: 41bdd8	 Bytes: 5
  %loadMem_41bdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdd8 = call %struct.Memory* @routine_jmpq_.L_41bddd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdd8, i64 5, i64 5)
  store %struct.Memory* %call_41bdd8, %struct.Memory** %MEMORY

  br label %block_.L_41bddd

  ; Code: .L_41bddd:	 RIP: 41bddd	 Bytes: 0
block_.L_41bddd:

  ; Code: jmpq .L_41bde2	 RIP: 41bddd	 Bytes: 5
  %loadMem_41bddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bddd = call %struct.Memory* @routine_jmpq_.L_41bde2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bddd, i64 5, i64 5)
  store %struct.Memory* %call_41bddd, %struct.Memory** %MEMORY

  br label %block_.L_41bde2

  ; Code: .L_41bde2:	 RIP: 41bde2	 Bytes: 0
block_.L_41bde2:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 41bde2	 Bytes: 4
  %loadMem_41bde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bde2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bde2)
  store %struct.Memory* %call_41bde2, %struct.Memory** %MEMORY

  ; Code: movq -0x3100(%rbp), %rcx	 RIP: 41bde6	 Bytes: 7
  %loadMem_41bde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bde6 = call %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bde6)
  store %struct.Memory* %call_41bde6, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 41bded	 Bytes: 3
  %loadMem_41bded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bded = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bded)
  store %struct.Memory* %call_41bded, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41bdf0	 Bytes: 4
  %loadMem_41bdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdf0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdf0)
  store %struct.Memory* %call_41bdf0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 41bdf4	 Bytes: 4
  %loadMem_41bdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdf4 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdf4)
  store %struct.Memory* %call_41bdf4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41bdf8	 Bytes: 4
  %loadMem_41bdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdf8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdf8)
  store %struct.Memory* %call_41bdf8, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 41bdfc	 Bytes: 4
  %loadMem_41bdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41bdfc = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41bdfc)
  store %struct.Memory* %call_41bdfc, %struct.Memory** %MEMORY

  ; Code: .L_41be00:	 RIP: 41be00	 Bytes: 0
  br label %block_.L_41be00
block_.L_41be00:

  ; Code: movq -0x30f8(%rbp), %rax	 RIP: 41be00	 Bytes: 7
  %loadMem_41be00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41be00 = call %struct.Memory* @routine_movq_MINUS0x30f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41be00)
  store %struct.Memory* %call_41be00, %struct.Memory** %MEMORY

  ; Code: addq $0x3160, %rsp	 RIP: 41be07	 Bytes: 7
  %loadMem_41be07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41be07 = call %struct.Memory* @routine_addq__0x3160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41be07)
  store %struct.Memory* %call_41be07, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41be0e	 Bytes: 1
  %loadMem_41be0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41be0e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41be0e)
  store %struct.Memory* %call_41be0e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41be0f	 Bytes: 1
  %loadMem_41be0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41be0f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41be0f)
  store %struct.Memory* %call_41be0f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41be0f
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

define %struct.Memory* @routine_subq__0x3160___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 12640)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x86bd84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd84_type* @G_0x86bd84 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x30f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12536
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x3100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12544
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x0__0x864500(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x864500_type* @G_0x864500 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x63ae44(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae44_type* @G_0x63ae44 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x880b10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x880b10_type* @G_0x880b10 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62e4f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4f0_type* @G_0x62e4f0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62ea14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea14_type* @G_0x62ea14 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8667a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8667a4_type* @G_0x8667a4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x864508(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x864508_type* @G_0x864508 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x86bd6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd6c_type* @G_0x86bd6c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8870a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8870a4_type* @G_0x8870a4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x886a68(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a68_type* @G_0x886a68 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8a0a70(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a0a70_type* @G_0x8a0a70 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8662e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8662e0_type* @G_0x8662e0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62e9fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9fc_type* @G_0x62e9fc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x866538(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866538_type* @G_0x866538 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x881df0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x881df0_type* @G_0x881df0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62e9f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9f8_type* @G_0x62e9f8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x866780(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866780_type* @G_0x866780 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62e9f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9f4_type* @G_0x62e9f4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x864504(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x864504_type* @G_0x864504 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8870a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8870a0_type* @G_0x8870a0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x8a0a74(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a0a74_type* @G_0x8a0a74 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x62ea1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea1c_type* @G_0x62ea1c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x62e4f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4f8_type* @G_0x62e4f8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xc8__0x62ea18(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea18_type* @G_0x62ea18 to i64), i64 200)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0__0x86678c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86678c_type* @G_0x86678c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xffffffff__0x8825f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8825f8_type* @G_0x8825f8 to i64), i64 -1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_callq_.interrupt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_41ab0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0x62e514(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e514_type* @G_0x62e514 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jne_.L_41aae0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bbc_type* @G_0x886bbc to i64), i64 0)
  ret %struct.Memory* %8
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41be00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.rtime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x8662e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8662e8_type* @G_0x8662e8 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 4)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41ab45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41ab50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.gen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x3084__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.in_check(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x307c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x85f150___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
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

define %struct.Memory* @routine_jge_.L_41ac07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.make(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x307c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.check_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41abe1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64))
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


define %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__MINUS0x3078__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12408
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_callq_.unmake(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x3074__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12404
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41ab7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41ace9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 0)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_movl__0x0__MINUS0x3084__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12420
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_jge_.L_41ace4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_41acbe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_41ac5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41ace9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_41ad65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41ad65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__0x62e9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41ad60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x64__0x8a0a78___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8a0a78_type* @G_0x8a0a78 to i64), i64 100)
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

define %struct.Memory* @routine_addl_0x86bd88___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x86bd88_type* @G_0x86bd88 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x86bd88(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd88_type* @G_0x86bd88 to i64), i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x3078__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 24)
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


define %struct.Memory* @routine_movq_MINUS0x3100__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_41ad65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.check_phase(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x46bd08__rip____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x46bd08__rip__type* @G_0x46bd08__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %6, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #22
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %6, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %6, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i32, i32* %EAX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__eax__MINUS0x3104__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_41adb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41ad83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x3104__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12548
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


define %struct.Memory* @routine_movl__eax__MINUS0x3108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_41add3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41ad9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_subl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x310c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_41adef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41ae06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x429086___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x429086_type* @G__0x429086 to i64))
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


define %struct.Memory* @routine_movl__eax__MINUS0x3110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12560
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x429096___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x429096_type* @G__0x429096 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x3114__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x4290a9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4290a9_type* @G__0x4290a9 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x3118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12568
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jne_.L_41ae85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x886b80(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886b80_type* @G_0x886b80 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41ae72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x886a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a60_type* @G_0x886a60 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41ae61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.allocate_time(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x28__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 40)
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

define %struct.Memory* @routine_jle_.L_41ae52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x28__0x633b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64), i64 40)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41ae5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x633b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41ae6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_41ae80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x886b80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886b80_type* @G_0x886b80 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_jmpq_.L_41ae90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0xf423f__0x633b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64), i64 999999)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41aedd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0xd50b__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd50b__rip__type* @G_0xd50b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_movss_0xd4f7__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd4f7__rip__type* @G_0xd4f7__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
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

define %struct.Memory* @routine_cvtsi2ssl_0x633b44___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fmul float %13, %14
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

define %struct.Memory* @routine_mulss__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_cvtsi2ssl_MINUS0x3080__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 12416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq__0x4290b9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4290b9_type* @G__0x4290b9 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x633b44___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x311c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12572
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_41af2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.clear_tt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.reset_ecache(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x886bf0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x886bf0_type* @G__0x886bf0 to i64))
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

define %struct.Memory* @routine_movl__0x4b0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1200)
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




define %struct.Memory* @routine_jne_.L_41afba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41af64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x3__0x63ae48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x63ae48_type* @G_0x63ae48 to i64), i64 3)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jg_.L_41af80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41afba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0xd430__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd430__rip__type* @G_0xd430__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0xd420__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd420__rip__type* @G_0xd420__rip_ to i64)
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

define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvttsd2si__xmm2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__eax__0x85f168(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f168_type* @G_0x85f168 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.proofnumberscan(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41affc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41aff7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea30_type* @G_0x62ea30 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41b04d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62ea24_type* @G_0x62ea24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62db0c_type* @G_0x62db0c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41b04d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x62ea20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62ea20_type* @G_0x62ea20 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x62ea28___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62ea28_type* @G_0x62ea28 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x62ea30___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x62ea30_type* @G_0x62ea30 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e4f8_type* @G_0x62e4f8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41b069(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41b0b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_41b0b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_41b6d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x12c__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 300)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41b143(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x12c__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 300)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41b130(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x63ae50_type* @G__0x63ae50 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7200)
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




define %struct.Memory* @routine_movq_0x62db08___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x62db10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_41b0cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b135(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b0bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x86bda0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x86bda0_type* @G__0x86bda0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x14400___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 82944)
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jge_.L_41b255(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x882600___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x882600_type* @G__0x882600 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x639220___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x639220_type* @G__0x639220 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x884b20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x884b20_type* @G__0x884b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__0x62e530___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 6481200
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x0__0x638c60___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 6524000
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x0__0x881e00___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8920576
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 24)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x62db08___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x62db10___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi__0x10__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x62db08___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x62db08_type* @G_0x62db08 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x62db10___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x62db10_type* @G_0x62db10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x62db18___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x62db18_type* @G_0x62db18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


























define %struct.Memory* @routine_jmpq_.L_41b165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x884320___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x884320_type* @G__0x884320 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x800___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2048)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x633b50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0x880b18___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x880b18_type* @G_0x880b18 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_41b6cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x8662e8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x8662e8_type* @G_0x8662e8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.rdifftime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0xd0f3__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0xd0f3__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtsi2sdl_0x633b44___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
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

define %struct.Memory* @routine_jbe_.L_41b303(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_41b303(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x30a8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x64___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 100)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x23___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 35)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8644f4_type* @G_0x8644f4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 2)
  ret %struct.Memory* %8
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovel__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x633b50___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.search_root(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30a8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x30a0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x3098__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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




define %struct.Memory* @routine_je_.L_41b38d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x86450c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jg_.L_41b3ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8644f4_type* @G_0x8644f4 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41b3b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jg_.L_41b43b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866788_type* @G_0x866788 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41b43b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x30c0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xfff0bdc0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4293967296)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xf4240___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 1000000)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq_MINUS0x30c0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x30b8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x30b0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41b436(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41b4e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 104
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_41b4e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41b4e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x30d8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x86450c___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
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


define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq_MINUS0x30d8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x30d0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0x30c8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jne_.L_41b4db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41b4e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_41b55b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_41b55b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41b53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_41b551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41b556(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b55b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__0x8661dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661dc_type* @G_0x8661dc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41b650(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x8644f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8644f4_type* @G_0x8644f4 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64), i64 -1000000)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41b5b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movq__0x8822b0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x8822b0_type* @G__0x8822b0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_callq_.stringize_pv(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41b606(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__0x86678c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86678c_type* @G_0x86678c to i64), i64 %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_jl_.L_41b620(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x86450c___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.post_thinking(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xdbba0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 900000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41b64b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xf4240___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1000000)
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

define %struct.Memory* @routine_subl_0x86450c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x86450c_type* @G_0x86450c to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl_0x633b50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41b64b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41b650(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_41b663(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_41b6b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x62e530___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6481200
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x0__0x638c60___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6524000
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x0__0x881e00___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8920576
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_41b66a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b6b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41b294(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_41b8c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_41b714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41b8bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e51c_type* @G_0x62e51c to i64), i64 0)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_leaq_MINUS0x30f0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__0x62ea10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea10_type* @G_0x62ea10 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq___rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.proofnumbercheck(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30f0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x30e8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x30e0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0xa__MINUS0x3080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41b8b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62ea10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62ea10_type* @G_0x62ea10 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41b8b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3080__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x3080__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12416
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_MINUS0x3084__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12420
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_41b853(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 72
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_41b840(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 60
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8940528
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jmpq_.L_41b853(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b845(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41b7c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_41b897(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8940528
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_je_.L_41b884(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41b889(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41b85a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl_0x62e9e0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x62e9e0_type* @G_0x62e9e0 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41b8b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e51c_type* @G_0x62e51c to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41a989(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b8bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41b8c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_41b8e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_41b95a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a2a04_type* @G_0x8a2a04 to i64), i64 0)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12428
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_callq_.comp_to_san(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4290cd___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4290cd_type* @G__0x4290cd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12428
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3080__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__0x0__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__eax__MINUS0x3120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12576
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x8a05b4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x8a05b4_type* @G_0x8a05b4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__0x8a05b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8a05b4_type* @G_0x8a05b4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x0__0x8661d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661d8_type* @G_0x8661d8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41b9c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41b9c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x633b44___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x633b44_type* @G_0x633b44 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_0x8a0a78___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x8a0a78_type* @G_0x8a0a78 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl_0x86bd88___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x86bd88_type* @G_0x86bd88 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x86bd88(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd88_type* @G_0x86bd88 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0xf423e__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 999998)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ba09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41b9f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41ba04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x2__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_41ba57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0xfff0bdc2__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -999998)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ba52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_41ba42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41ba4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_41ba52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86679c_type* @G_0x86679c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41bb6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_41bb6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 3)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x2__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 2)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x4__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 4)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x5__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 5)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x1__0x866530(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x866530_type* @G_0x866530 to i64), i64 1)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_cmpl__0xf40b0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 999600)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41bb68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41bb2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4290fe___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4290fe_type* @G__0x4290fe to i64))
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


define %struct.Memory* @routine_movl__0xf4240___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1000000)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x3124__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12580
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


define %struct.Memory* @routine_movl_MINUS0x3124__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12580
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








define %struct.Memory* @routine_movl__eax__MINUS0x3128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12584
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41bb63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x429119___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x429119_type* @G__0x429119 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x312c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12588
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x312c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax__MINUS0x3130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41bb68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41bb6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_41bc11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_0x86678c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x86678c_type* @G_0x86678c to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jl_.L_41bc11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41bc11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0xffffffff__0x8825f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8825f8_type* @G_0x8825f8 to i64), i64 -1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41bc0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41bc11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41bc6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xfff0be24__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -999900)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41bc6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x62e9e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e4_type* @G_0x62e9e4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41bc6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x86bd84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd84_type* @G_0x86bd84 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movq__0x42914d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42914d_type* @G__0x42914d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1__0x62e9e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e4_type* @G_0x62e9e4 to i64), i64 1)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_movl__eax__MINUS0x3134__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41bde2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jge_.L_41bd6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41bd6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_41bcbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41bcfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x85f1f0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x85f1f0_type* @G__0x85f1f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1__0x86bd84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd84_type* @G_0x86bd84 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_callq_.ProcessHoldings(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x429172___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x429172_type* @G__0x429172 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x62e9e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x62e9e4_type* @G_0x62e9e4 to i64), i64 0)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_movl__eax__MINUS0x3138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0xfff0bdc0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41bd67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x86bd78(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x86bd78_type* @G_0x86bd78 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_41bd4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x42918b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42918b_type* @G__0x42918b to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x4291bc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4291bc_type* @G__0x4291bc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x313c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x3140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41bd62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4291cc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4291cc_type* @G__0x4291cc to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x3144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41bd67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41bddd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0xffff15a0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -60000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41bdd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xffff63c0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -40000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41bdd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41bdd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__0x42921d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x42921d_type* @G__0x42921d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x3148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movq_MINUS0x30f8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 12536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_addq__0x3160___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 12640)
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

