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

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x4c37e0_type = type <{ [8 x i8] }>
@G_0x4c37e0= global %G_0x4c37e0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x4c37e8_type = type <{ [8 x i8] }>
@G_0x4c37e8= global %G_0x4c37e8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x4c37f0_type = type <{ [8 x i8] }>
@G_0x4c37f0= global %G_0x4c37f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x4c37f8_type = type <{ [8 x i8] }>
@G_0x4c37f8= global %G_0x4c37f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x723694_type = type <{ [1 x i8] }>
@G_0x723694= global %G_0x723694_type <{ [1 x i8] c"\00" }>
%G__0x6cb9c0_type = type <{ [8 x i8] }>
@G__0x6cb9c0= global %G__0x6cb9c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @EdgeLoop(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .EdgeLoop:	 RIP: 43a2b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43a2b0	 Bytes: 1
  %loadMem_43a2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2b0)
  store %struct.Memory* %call_43a2b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43a2b1	 Bytes: 3
  %loadMem_43a2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2b1)
  store %struct.Memory* %call_43a2b1, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 43a2b4	 Bytes: 2
  %loadMem_43a2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2b4 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2b4)
  store %struct.Memory* %call_43a2b4, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 43a2b6	 Bytes: 1
  %loadMem_43a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2b6 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2b6)
  store %struct.Memory* %call_43a2b6, %struct.Memory** %MEMORY

  ; Code: subq $0x1f0, %rsp	 RIP: 43a2b7	 Bytes: 7
  %loadMem_43a2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2b7 = call %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2b7)
  store %struct.Memory* %call_43a2b7, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rbp), %eax	 RIP: 43a2be	 Bytes: 3
  %loadMem_43a2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2be = call %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2be)
  store %struct.Memory* %call_43a2be, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rbp), %r10d	 RIP: 43a2c1	 Bytes: 4
  %loadMem_43a2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2c1 = call %struct.Memory* @routine_movl_0x28__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2c1)
  store %struct.Memory* %call_43a2c1, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rbp), %r11d	 RIP: 43a2c5	 Bytes: 4
  %loadMem_43a2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2c5 = call %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2c5)
  store %struct.Memory* %call_43a2c5, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rbp), %ebx	 RIP: 43a2c9	 Bytes: 3
  %loadMem_43a2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2c9 = call %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2c9)
  store %struct.Memory* %call_43a2c9, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rbp), %r14d	 RIP: 43a2cc	 Bytes: 4
  %loadMem_43a2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2cc = call %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2cc)
  store %struct.Memory* %call_43a2cc, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x18(%rbp)	 RIP: 43a2d0	 Bytes: 4
  %loadMem_43a2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2d0 = call %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2d0)
  store %struct.Memory* %call_43a2d0, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x20(%rbp)	 RIP: 43a2d4	 Bytes: 4
  %loadMem_43a2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2d4 = call %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2d4)
  store %struct.Memory* %call_43a2d4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x28(%rbp)	 RIP: 43a2d8	 Bytes: 4
  %loadMem_43a2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2d8 = call %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2d8)
  store %struct.Memory* %call_43a2d8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 43a2dc	 Bytes: 3
  %loadMem_43a2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2dc = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2dc)
  store %struct.Memory* %call_43a2dc, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x30(%rbp)	 RIP: 43a2df	 Bytes: 4
  %loadMem_43a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2df = call %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2df)
  store %struct.Memory* %call_43a2df, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x34(%rbp)	 RIP: 43a2e3	 Bytes: 4
  %loadMem_43a2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2e3 = call %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2e3)
  store %struct.Memory* %call_43a2e3, %struct.Memory** %MEMORY

  ; Code: movl %r14d, -0x38(%rbp)	 RIP: 43a2e7	 Bytes: 4
  %loadMem_43a2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2e7 = call %struct.Memory* @routine_movl__r14d__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2e7)
  store %struct.Memory* %call_43a2e7, %struct.Memory** %MEMORY

  ; Code: movl %ebx, -0x3c(%rbp)	 RIP: 43a2eb	 Bytes: 3
  %loadMem_43a2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2eb = call %struct.Memory* @routine_movl__ebx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2eb)
  store %struct.Memory* %call_43a2eb, %struct.Memory** %MEMORY

  ; Code: movl %r11d, -0x40(%rbp)	 RIP: 43a2ee	 Bytes: 4
  %loadMem_43a2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2ee = call %struct.Memory* @routine_movl__r11d__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2ee)
  store %struct.Memory* %call_43a2ee, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x44(%rbp)	 RIP: 43a2f2	 Bytes: 4
  %loadMem_43a2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2f2 = call %struct.Memory* @routine_movl__r10d__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2f2)
  store %struct.Memory* %call_43a2f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43a2f6	 Bytes: 3
  %loadMem_43a2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2f6 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2f6)
  store %struct.Memory* %call_43a2f6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 43a2f9	 Bytes: 7
  %loadMem_43a2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2f9 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2f9)
  store %struct.Memory* %call_43a2f9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 43a300	 Bytes: 7
  %loadMem_43a300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a300 = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a300)
  store %struct.Memory* %call_43a300, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x78(%rbp)	 RIP: 43a307	 Bytes: 7
  %loadMem_43a307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a307 = call %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a307)
  store %struct.Memory* %call_43a307, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8c(%rbp)	 RIP: 43a30e	 Bytes: 10
  %loadMem_43a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a30e = call %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a30e)
  store %struct.Memory* %call_43a30e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x9c(%rbp)	 RIP: 43a318	 Bytes: 10
  %loadMem_43a318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a318 = call %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a318)
  store %struct.Memory* %call_43a318, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xa0(%rbp)	 RIP: 43a322	 Bytes: 10
  %loadMem_43a322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a322 = call %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a322)
  store %struct.Memory* %call_43a322, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0xa8(%rbp)	 RIP: 43a32c	 Bytes: 11
  %loadMem_43a32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a32c = call %struct.Memory* @routine_movq__0x0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a32c)
  store %struct.Memory* %call_43a32c, %struct.Memory** %MEMORY

  ; Code: movq 0x4c37e0, %rdx	 RIP: 43a337	 Bytes: 8
  %loadMem_43a337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a337 = call %struct.Memory* @routine_movq_0x4c37e0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a337)
  store %struct.Memory* %call_43a337, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x150(%rbp)	 RIP: 43a33f	 Bytes: 7
  %loadMem_43a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a33f = call %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a33f)
  store %struct.Memory* %call_43a33f, %struct.Memory** %MEMORY

  ; Code: movq 0x4c37e8, %rdx	 RIP: 43a346	 Bytes: 8
  %loadMem_43a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a346 = call %struct.Memory* @routine_movq_0x4c37e8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a346)
  store %struct.Memory* %call_43a346, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x148(%rbp)	 RIP: 43a34e	 Bytes: 7
  %loadMem_43a34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a34e = call %struct.Memory* @routine_movq__rdx__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a34e)
  store %struct.Memory* %call_43a34e, %struct.Memory** %MEMORY

  ; Code: movq 0x4c37f0, %rdx	 RIP: 43a355	 Bytes: 8
  %loadMem_43a355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a355 = call %struct.Memory* @routine_movq_0x4c37f0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a355)
  store %struct.Memory* %call_43a355, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x140(%rbp)	 RIP: 43a35d	 Bytes: 7
  %loadMem_43a35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a35d = call %struct.Memory* @routine_movq__rdx__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a35d)
  store %struct.Memory* %call_43a35d, %struct.Memory** %MEMORY

  ; Code: movq 0x4c37f8, %rdx	 RIP: 43a364	 Bytes: 8
  %loadMem_43a364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a364 = call %struct.Memory* @routine_movq_0x4c37f8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a364)
  store %struct.Memory* %call_43a364, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x138(%rbp)	 RIP: 43a36c	 Bytes: 7
  %loadMem_43a36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a36c = call %struct.Memory* @routine_movq__rdx__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a36c)
  store %struct.Memory* %call_43a36c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43a373	 Bytes: 4
  %loadMem_43a373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a373 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a373)
  store %struct.Memory* %call_43a373, %struct.Memory** %MEMORY

  ; Code: jne .L_43a39e	 RIP: 43a377	 Bytes: 6
  %loadMem_43a377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a377 = call %struct.Memory* @routine_jne_.L_43a39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a377, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_43a377, %struct.Memory** %MEMORY

  %loadBr_43a377 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a377 = icmp eq i8 %loadBr_43a377, 1
  br i1 %cmpBr_43a377, label %block_.L_43a39e, label %block_43a37d

block_43a37d:
  ; Code: movl $0x1, %eax	 RIP: 43a37d	 Bytes: 5
  %loadMem_43a37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a37d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a37d)
  store %struct.Memory* %call_43a37d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43a382	 Bytes: 4
  %loadMem_43a382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a382 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a382)
  store %struct.Memory* %call_43a382, %struct.Memory** %MEMORY

  ; Code: movl 0x11bd4(%rcx), %edx	 RIP: 43a386	 Bytes: 6
  %loadMem_43a386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a386 = call %struct.Memory* @routine_movl_0x11bd4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a386)
  store %struct.Memory* %call_43a386, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %edx	 RIP: 43a38c	 Bytes: 3
  %loadMem_43a38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a38c = call %struct.Memory* @routine_subl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a38c)
  store %struct.Memory* %call_43a38c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 43a38f	 Bytes: 2
  %loadMem_43a38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a38f = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a38f)
  store %struct.Memory* %call_43a38f, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43a391	 Bytes: 2
  %loadMem_43a391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a391 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a391)
  store %struct.Memory* %call_43a391, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 43a393	 Bytes: 6
  %loadMem_43a393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a393 = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a393)
  store %struct.Memory* %call_43a393, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a3ba	 RIP: 43a399	 Bytes: 5
  %loadMem_43a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a399 = call %struct.Memory* @routine_jmpq_.L_43a3ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a399, i64 33, i64 5)
  store %struct.Memory* %call_43a399, %struct.Memory** %MEMORY

  br label %block_.L_43a3ba

  ; Code: .L_43a39e:	 RIP: 43a39e	 Bytes: 0
block_.L_43a39e:

  ; Code: movl $0x1, %eax	 RIP: 43a39e	 Bytes: 5
  %loadMem_43a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a39e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a39e)
  store %struct.Memory* %call_43a39e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43a3a3	 Bytes: 4
  %loadMem_43a3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3a3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3a3)
  store %struct.Memory* %call_43a3a3, %struct.Memory** %MEMORY

  ; Code: movl 0x11bd8(%rcx), %edx	 RIP: 43a3a7	 Bytes: 6
  %loadMem_43a3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3a7 = call %struct.Memory* @routine_movl_0x11bd8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3a7)
  store %struct.Memory* %call_43a3a7, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %edx	 RIP: 43a3ad	 Bytes: 3
  %loadMem_43a3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3ad = call %struct.Memory* @routine_subl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3ad)
  store %struct.Memory* %call_43a3ad, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 43a3b0	 Bytes: 2
  %loadMem_43a3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3b0 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3b0)
  store %struct.Memory* %call_43a3b0, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43a3b2	 Bytes: 2
  %loadMem_43a3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3b2 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3b2)
  store %struct.Memory* %call_43a3b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 43a3b4	 Bytes: 6
  %loadMem_43a3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3b4 = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3b4)
  store %struct.Memory* %call_43a3b4, %struct.Memory** %MEMORY

  ; Code: .L_43a3ba:	 RIP: 43a3ba	 Bytes: 0
  br label %block_.L_43a3ba
block_.L_43a3ba:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43a3ba	 Bytes: 4
  %loadMem_43a3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3ba = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3ba)
  store %struct.Memory* %call_43a3ba, %struct.Memory** %MEMORY

  ; Code: je .L_43a3ef	 RIP: 43a3be	 Bytes: 6
  %loadMem_43a3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3be = call %struct.Memory* @routine_je_.L_43a3ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3be, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_43a3be, %struct.Memory** %MEMORY

  %loadBr_43a3be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a3be = icmp eq i8 %loadBr_43a3be, 1
  br i1 %cmpBr_43a3be, label %block_.L_43a3ef, label %block_43a3c4

block_43a3c4:
  ; Code: leaq -0x150(%rbp), %rax	 RIP: 43a3c4	 Bytes: 7
  %loadMem_43a3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3c4 = call %struct.Memory* @routine_leaq_MINUS0x150__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3c4)
  store %struct.Memory* %call_43a3c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 43a3cb	 Bytes: 4
  %loadMem_43a3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3cb = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3cb)
  store %struct.Memory* %call_43a3cb, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 43a3cf	 Bytes: 4
  %loadMem_43a3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3cf = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3cf)
  store %struct.Memory* %call_43a3cf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43a3d3	 Bytes: 3
  %loadMem_43a3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3d3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3d3)
  store %struct.Memory* %call_43a3d3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43a3d6	 Bytes: 4
  %loadMem_43a3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3d6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3d6)
  store %struct.Memory* %call_43a3d6, %struct.Memory** %MEMORY

  ; Code: movslq 0x11bfc(%rcx), %rcx	 RIP: 43a3da	 Bytes: 7
  %loadMem_43a3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3da = call %struct.Memory* @routine_movslq_0x11bfc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3da)
  store %struct.Memory* %call_43a3da, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 43a3e1	 Bytes: 3
  %loadMem_43a3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3e1 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3e1)
  store %struct.Memory* %call_43a3e1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x154(%rbp)	 RIP: 43a3e4	 Bytes: 6
  %loadMem_43a3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3e4 = call %struct.Memory* @routine_movl__edx__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3e4)
  store %struct.Memory* %call_43a3e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a3ff	 RIP: 43a3ea	 Bytes: 5
  %loadMem_43a3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3ea = call %struct.Memory* @routine_jmpq_.L_43a3ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3ea, i64 21, i64 5)
  store %struct.Memory* %call_43a3ea, %struct.Memory** %MEMORY

  br label %block_.L_43a3ff

  ; Code: .L_43a3ef:	 RIP: 43a3ef	 Bytes: 0
block_.L_43a3ef:

  ; Code: movl $0x10, %eax	 RIP: 43a3ef	 Bytes: 5
  %loadMem_43a3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3ef = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3ef)
  store %struct.Memory* %call_43a3ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x154(%rbp)	 RIP: 43a3f4	 Bytes: 6
  %loadMem_43a3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3f4 = call %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3f4)
  store %struct.Memory* %call_43a3f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a3ff	 RIP: 43a3fa	 Bytes: 5
  %loadMem_43a3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3fa = call %struct.Memory* @routine_jmpq_.L_43a3ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3fa, i64 5, i64 5)
  store %struct.Memory* %call_43a3fa, %struct.Memory** %MEMORY

  br label %block_.L_43a3ff

  ; Code: .L_43a3ff:	 RIP: 43a3ff	 Bytes: 0
block_.L_43a3ff:

  ; Code: movl -0x154(%rbp), %eax	 RIP: 43a3ff	 Bytes: 6
  %loadMem_43a3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a3ff = call %struct.Memory* @routine_movl_MINUS0x154__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a3ff)
  store %struct.Memory* %call_43a3ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 43a405	 Bytes: 6
  %loadMem_43a405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a405 = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a405)
  store %struct.Memory* %call_43a405, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43a40b	 Bytes: 7
  %loadMem_43a40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a40b = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a40b)
  store %struct.Memory* %call_43a40b, %struct.Memory** %MEMORY

  ; Code: .L_43a412:	 RIP: 43a412	 Bytes: 0
  br label %block_.L_43a412
block_.L_43a412:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43a412	 Bytes: 3
  %loadMem_43a412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a412 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a412)
  store %struct.Memory* %call_43a412, %struct.Memory** %MEMORY

  ; Code: cmpl -0xb8(%rbp), %eax	 RIP: 43a415	 Bytes: 6
  %loadMem_43a415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a415 = call %struct.Memory* @routine_cmpl_MINUS0xb8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a415)
  store %struct.Memory* %call_43a415, %struct.Memory** %MEMORY

  ; Code: jge .L_43b343	 RIP: 43a41b	 Bytes: 6
  %loadMem_43a41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a41b = call %struct.Memory* @routine_jge_.L_43b343(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a41b, i8* %BRANCH_TAKEN, i64 3880, i64 6, i64 6)
  store %struct.Memory* %call_43a41b, %struct.Memory** %MEMORY

  %loadBr_43a41b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a41b = icmp eq i8 %loadBr_43a41b, 1
  br i1 %cmpBr_43a41b, label %block_.L_43b343, label %block_43a421

block_43a421:
  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 43a421	 Bytes: 4
  %loadMem_43a421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a421 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a421)
  store %struct.Memory* %call_43a421, %struct.Memory** %MEMORY

  ; Code: je .L_43a439	 RIP: 43a425	 Bytes: 6
  %loadMem_43a425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a425 = call %struct.Memory* @routine_je_.L_43a439(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a425, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43a425, %struct.Memory** %MEMORY

  %loadBr_43a425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a425 = icmp eq i8 %loadBr_43a425, 1
  br i1 %cmpBr_43a425, label %block_.L_43a439, label %block_43a42b

block_43a42b:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43a42b	 Bytes: 3
  %loadMem_43a42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a42b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a42b)
  store %struct.Memory* %call_43a42b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x158(%rbp)	 RIP: 43a42e	 Bytes: 6
  %loadMem_43a42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a42e = call %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a42e)
  store %struct.Memory* %call_43a42e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a445	 RIP: 43a434	 Bytes: 5
  %loadMem_43a434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a434 = call %struct.Memory* @routine_jmpq_.L_43a445(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a434, i64 17, i64 5)
  store %struct.Memory* %call_43a434, %struct.Memory** %MEMORY

  br label %block_.L_43a445

  ; Code: .L_43a439:	 RIP: 43a439	 Bytes: 0
block_.L_43a439:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 43a439	 Bytes: 3
  %loadMem_43a439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a439 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a439)
  store %struct.Memory* %call_43a439, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43a43c	 Bytes: 3
  %loadMem_43a43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a43c = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a43c)
  store %struct.Memory* %call_43a43c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x158(%rbp)	 RIP: 43a43f	 Bytes: 6
  %loadMem_43a43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a43f = call %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a43f)
  store %struct.Memory* %call_43a43f, %struct.Memory** %MEMORY

  ; Code: .L_43a445:	 RIP: 43a445	 Bytes: 0
  br label %block_.L_43a445
block_.L_43a445:

  ; Code: movl -0x158(%rbp), %eax	 RIP: 43a445	 Bytes: 6
  %loadMem_43a445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a445 = call %struct.Memory* @routine_movl_MINUS0x158__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a445)
  store %struct.Memory* %call_43a445, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 43a44b	 Bytes: 6
  %loadMem_43a44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a44b = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a44b)
  store %struct.Memory* %call_43a44b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 43a451	 Bytes: 4
  %loadMem_43a451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a451 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a451)
  store %struct.Memory* %call_43a451, %struct.Memory** %MEMORY

  ; Code: je .L_43a497	 RIP: 43a455	 Bytes: 6
  %loadMem_43a455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a455 = call %struct.Memory* @routine_je_.L_43a497(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a455, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_43a455, %struct.Memory** %MEMORY

  %loadBr_43a455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a455 = icmp eq i8 %loadBr_43a455, 1
  br i1 %cmpBr_43a455, label %block_.L_43a497, label %block_43a45b

block_43a45b:
  ; Code: cmpl $0x4, -0x3c(%rbp)	 RIP: 43a45b	 Bytes: 4
  %loadMem_43a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a45b = call %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a45b)
  store %struct.Memory* %call_43a45b, %struct.Memory** %MEMORY

  ; Code: jge .L_43a476	 RIP: 43a45f	 Bytes: 6
  %loadMem_43a45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a45f = call %struct.Memory* @routine_jge_.L_43a476(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a45f, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43a45f, %struct.Memory** %MEMORY

  %loadBr_43a45f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a45f = icmp eq i8 %loadBr_43a45f, 1
  br i1 %cmpBr_43a45f, label %block_.L_43a476, label %block_43a465

block_43a465:
  ; Code: movl -0x3c(%rbp), %eax	 RIP: 43a465	 Bytes: 3
  %loadMem_43a465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a465 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a465)
  store %struct.Memory* %call_43a465, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43a468	 Bytes: 3
  %loadMem_43a468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a468 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a468)
  store %struct.Memory* %call_43a468, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x15c(%rbp)	 RIP: 43a46b	 Bytes: 6
  %loadMem_43a46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a46b = call %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a46b)
  store %struct.Memory* %call_43a46b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a486	 RIP: 43a471	 Bytes: 5
  %loadMem_43a471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a471 = call %struct.Memory* @routine_jmpq_.L_43a486(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a471, i64 21, i64 5)
  store %struct.Memory* %call_43a471, %struct.Memory** %MEMORY

  br label %block_.L_43a486

  ; Code: .L_43a476:	 RIP: 43a476	 Bytes: 0
block_.L_43a476:

  ; Code: movl $0x1, %eax	 RIP: 43a476	 Bytes: 5
  %loadMem_43a476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a476 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a476)
  store %struct.Memory* %call_43a476, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x15c(%rbp)	 RIP: 43a47b	 Bytes: 6
  %loadMem_43a47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a47b = call %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a47b)
  store %struct.Memory* %call_43a47b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a486	 RIP: 43a481	 Bytes: 5
  %loadMem_43a481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a481 = call %struct.Memory* @routine_jmpq_.L_43a486(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a481, i64 5, i64 5)
  store %struct.Memory* %call_43a481, %struct.Memory** %MEMORY

  br label %block_.L_43a486

  ; Code: .L_43a486:	 RIP: 43a486	 Bytes: 0
block_.L_43a486:

  ; Code: movl -0x15c(%rbp), %eax	 RIP: 43a486	 Bytes: 6
  %loadMem_43a486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a486 = call %struct.Memory* @routine_movl_MINUS0x15c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a486)
  store %struct.Memory* %call_43a486, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x160(%rbp)	 RIP: 43a48c	 Bytes: 6
  %loadMem_43a48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a48c = call %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a48c)
  store %struct.Memory* %call_43a48c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a4a0	 RIP: 43a492	 Bytes: 5
  %loadMem_43a492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a492 = call %struct.Memory* @routine_jmpq_.L_43a4a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a492, i64 14, i64 5)
  store %struct.Memory* %call_43a492, %struct.Memory** %MEMORY

  br label %block_.L_43a4a0

  ; Code: .L_43a497:	 RIP: 43a497	 Bytes: 0
block_.L_43a497:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43a497	 Bytes: 3
  %loadMem_43a497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a497 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a497)
  store %struct.Memory* %call_43a497, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x160(%rbp)	 RIP: 43a49a	 Bytes: 6
  %loadMem_43a49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a49a = call %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a49a)
  store %struct.Memory* %call_43a49a, %struct.Memory** %MEMORY

  ; Code: .L_43a4a0:	 RIP: 43a4a0	 Bytes: 0
  br label %block_.L_43a4a0
block_.L_43a4a0:

  ; Code: movl -0x160(%rbp), %eax	 RIP: 43a4a0	 Bytes: 6
  %loadMem_43a4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4a0 = call %struct.Memory* @routine_movl_MINUS0x160__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4a0)
  store %struct.Memory* %call_43a4a0, %struct.Memory** %MEMORY

  ; Code: leaq -0x128(%rbp), %r8	 RIP: 43a4a6	 Bytes: 7
  %loadMem_43a4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4a6 = call %struct.Memory* @routine_leaq_MINUS0x128__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4a6)
  store %struct.Memory* %call_43a4a6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 43a4ad	 Bytes: 5
  %loadMem_43a4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4ad = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4ad)
  store %struct.Memory* %call_43a4ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe4(%rbp)	 RIP: 43a4b2	 Bytes: 6
  %loadMem_43a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4b2 = call %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4b2)
  store %struct.Memory* %call_43a4b2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 43a4b8	 Bytes: 3
  %loadMem_43a4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4b8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4b8)
  store %struct.Memory* %call_43a4b8, %struct.Memory** %MEMORY

  ; Code: movl -0xdc(%rbp), %esi	 RIP: 43a4bb	 Bytes: 6
  %loadMem_43a4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4bb = call %struct.Memory* @routine_movl_MINUS0xdc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4bb)
  store %struct.Memory* %call_43a4bb, %struct.Memory** %MEMORY

  ; Code: movl -0xe4(%rbp), %edx	 RIP: 43a4c1	 Bytes: 6
  %loadMem_43a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4c1 = call %struct.Memory* @routine_movl_MINUS0xe4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4c1)
  store %struct.Memory* %call_43a4c1, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %ecx	 RIP: 43a4c7	 Bytes: 3
  %loadMem_43a4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4c7 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4c7)
  store %struct.Memory* %call_43a4c7, %struct.Memory** %MEMORY

  ; Code: callq .getNeighbour	 RIP: 43a4ca	 Bytes: 5
  %loadMem1_43a4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a4ca = call %struct.Memory* @routine_callq_.getNeighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a4ca, i64 68838, i64 5, i64 5)
  store %struct.Memory* %call1_43a4ca, %struct.Memory** %MEMORY

  %loadMem2_43a4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a4ca = load i64, i64* %3
  %call2_43a4ca = call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* %0, i64  %loadPC_43a4ca, %struct.Memory* %loadMem2_43a4ca)
  store %struct.Memory* %call2_43a4ca, %struct.Memory** %MEMORY

  ; Code: leaq -0x110(%rbp), %r8	 RIP: 43a4cf	 Bytes: 7
  %loadMem_43a4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4cf = call %struct.Memory* @routine_leaq_MINUS0x110__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4cf)
  store %struct.Memory* %call_43a4cf, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 43a4d6	 Bytes: 5
  %loadMem_43a4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4d6 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4d6)
  store %struct.Memory* %call_43a4d6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 43a4db	 Bytes: 3
  %loadMem_43a4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4db = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4db)
  store %struct.Memory* %call_43a4db, %struct.Memory** %MEMORY

  ; Code: movl -0xdc(%rbp), %ecx	 RIP: 43a4de	 Bytes: 6
  %loadMem_43a4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4de = call %struct.Memory* @routine_movl_MINUS0xdc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4de)
  store %struct.Memory* %call_43a4de, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 43a4e4	 Bytes: 2
  %loadMem_43a4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4e4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4e4)
  store %struct.Memory* %call_43a4e4, %struct.Memory** %MEMORY

  ; Code: subl -0x38(%rbp), %edx	 RIP: 43a4e6	 Bytes: 3
  %loadMem_43a4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4e6 = call %struct.Memory* @routine_subl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4e6)
  store %struct.Memory* %call_43a4e6, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43a4e9	 Bytes: 2
  %loadMem_43a4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4e9 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4e9)
  store %struct.Memory* %call_43a4e9, %struct.Memory** %MEMORY

  ; Code: movl -0xe4(%rbp), %edx	 RIP: 43a4eb	 Bytes: 6
  %loadMem_43a4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4eb = call %struct.Memory* @routine_movl_MINUS0xe4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4eb)
  store %struct.Memory* %call_43a4eb, %struct.Memory** %MEMORY

  ; Code: subl -0x38(%rbp), %edx	 RIP: 43a4f1	 Bytes: 3
  %loadMem_43a4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4f1 = call %struct.Memory* @routine_subl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4f1)
  store %struct.Memory* %call_43a4f1, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %eax	 RIP: 43a4f4	 Bytes: 3
  %loadMem_43a4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4f4 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4f4)
  store %struct.Memory* %call_43a4f4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 43a4f7	 Bytes: 2
  %loadMem_43a4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4f7 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4f7)
  store %struct.Memory* %call_43a4f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 43a4f9	 Bytes: 2
  %loadMem_43a4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a4f9 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a4f9)
  store %struct.Memory* %call_43a4f9, %struct.Memory** %MEMORY

  ; Code: callq .getNeighbour	 RIP: 43a4fb	 Bytes: 5
  %loadMem1_43a4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a4fb = call %struct.Memory* @routine_callq_.getNeighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a4fb, i64 68789, i64 5, i64 5)
  store %struct.Memory* %call1_43a4fb, %struct.Memory** %MEMORY

  %loadMem2_43a4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a4fb = load i64, i64* %3
  %call2_43a4fb = call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* %0, i64  %loadPC_43a4fb, %struct.Memory* %loadMem2_43a4fb)
  store %struct.Memory* %call2_43a4fb, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %r9b	 RIP: 43a500	 Bytes: 3
  %loadMem_43a500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a500 = call %struct.Memory* @routine_movb__0x1___r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a500)
  store %struct.Memory* %call_43a500, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %eax	 RIP: 43a503	 Bytes: 6
  %loadMem_43a503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a503 = call %struct.Memory* @routine_movl_MINUS0x108__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a503)
  store %struct.Memory* %call_43a503, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 43a509	 Bytes: 6
  %loadMem_43a509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a509 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a509)
  store %struct.Memory* %call_43a509, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %eax	 RIP: 43a50f	 Bytes: 6
  %loadMem_43a50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a50f = call %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a50f)
  store %struct.Memory* %call_43a50f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe0(%rbp)	 RIP: 43a515	 Bytes: 6
  %loadMem_43a515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a515 = call %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a515)
  store %struct.Memory* %call_43a515, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r8	 RIP: 43a51b	 Bytes: 4
  %loadMem_43a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a51b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a51b)
  store %struct.Memory* %call_43a51b, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%r8), %r8	 RIP: 43a51f	 Bytes: 7
  %loadMem_43a51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a51f = call %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a51f)
  store %struct.Memory* %call_43a51f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r10	 RIP: 43a526	 Bytes: 4
  %loadMem_43a526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a526 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a526)
  store %struct.Memory* %call_43a526, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %r10, %r10	 RIP: 43a52a	 Bytes: 7
  %loadMem_43a52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a52a = call %struct.Memory* @routine_imulq__0x278___r10___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a52a)
  store %struct.Memory* %call_43a52a, %struct.Memory** %MEMORY

  ; Code: addq %r10, %r8	 RIP: 43a531	 Bytes: 3
  %loadMem_43a531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a531 = call %struct.Memory* @routine_addq__r10___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a531)
  store %struct.Memory* %call_43a531, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xf0(%rbp)	 RIP: 43a534	 Bytes: 7
  %loadMem_43a534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a534 = call %struct.Memory* @routine_movq__r8__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a534)
  store %struct.Memory* %call_43a534, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r8	 RIP: 43a53b	 Bytes: 4
  %loadMem_43a53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a53b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a53b)
  store %struct.Memory* %call_43a53b, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%r8), %r8	 RIP: 43a53f	 Bytes: 7
  %loadMem_43a53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a53f = call %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a53f)
  store %struct.Memory* %call_43a53f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10c(%rbp), %r10	 RIP: 43a546	 Bytes: 7
  %loadMem_43a546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a546 = call %struct.Memory* @routine_movslq_MINUS0x10c__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a546)
  store %struct.Memory* %call_43a546, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %r10, %r10	 RIP: 43a54d	 Bytes: 7
  %loadMem_43a54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a54d = call %struct.Memory* @routine_imulq__0x278___r10___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a54d)
  store %struct.Memory* %call_43a54d, %struct.Memory** %MEMORY

  ; Code: addq %r10, %r8	 RIP: 43a554	 Bytes: 3
  %loadMem_43a554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a554 = call %struct.Memory* @routine_addq__r10___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a554)
  store %struct.Memory* %call_43a554, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xf8(%rbp)	 RIP: 43a557	 Bytes: 7
  %loadMem_43a557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a557 = call %struct.Memory* @routine_movq__r8__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a557)
  store %struct.Memory* %call_43a557, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %r8	 RIP: 43a55e	 Bytes: 7
  %loadMem_43a55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a55e = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a55e)
  store %struct.Memory* %call_43a55e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%r8)	 RIP: 43a565	 Bytes: 8
  %loadMem_43a565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a565 = call %struct.Memory* @routine_cmpl__0x0__0x214__r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a565)
  store %struct.Memory* %call_43a565, %struct.Memory** %MEMORY

  ; Code: movb %r9b, -0x161(%rbp)	 RIP: 43a56d	 Bytes: 7
  %loadMem_43a56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a56d = call %struct.Memory* @routine_movb__r9b__MINUS0x161__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a56d)
  store %struct.Memory* %call_43a56d, %struct.Memory** %MEMORY

  ; Code: jne .L_43a591	 RIP: 43a574	 Bytes: 6
  %loadMem_43a574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a574 = call %struct.Memory* @routine_jne_.L_43a591(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a574, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_43a574, %struct.Memory** %MEMORY

  %loadBr_43a574 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a574 = icmp eq i8 %loadBr_43a574, 1
  br i1 %cmpBr_43a574, label %block_.L_43a591, label %block_43a57a

block_43a57a:
  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a57a	 Bytes: 7
  %loadMem_43a57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a57a = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a57a)
  store %struct.Memory* %call_43a57a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43a581	 Bytes: 7
  %loadMem_43a581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a581 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a581)
  store %struct.Memory* %call_43a581, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 43a588	 Bytes: 3
  %loadMem_43a588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a588 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a588)
  store %struct.Memory* %call_43a588, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x161(%rbp)	 RIP: 43a58b	 Bytes: 6
  %loadMem_43a58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a58b = call %struct.Memory* @routine_movb__cl__MINUS0x161__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a58b)
  store %struct.Memory* %call_43a58b, %struct.Memory** %MEMORY

  ; Code: .L_43a591:	 RIP: 43a591	 Bytes: 0
  br label %block_.L_43a591
block_.L_43a591:

  ; Code: movb -0x161(%rbp), %al	 RIP: 43a591	 Bytes: 6
  %loadMem_43a591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a591 = call %struct.Memory* @routine_movb_MINUS0x161__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a591)
  store %struct.Memory* %call_43a591, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 43a597	 Bytes: 2
  %loadMem_43a597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a597 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a597)
  store %struct.Memory* %call_43a597, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 43a599	 Bytes: 3
  %loadMem_43a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a599 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a599)
  store %struct.Memory* %call_43a599, %struct.Memory** %MEMORY

  ; Code: movb %cl, %al	 RIP: 43a59c	 Bytes: 2
  %loadMem_43a59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a59c = call %struct.Memory* @routine_movb__cl___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a59c)
  store %struct.Memory* %call_43a59c, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x723694	 RIP: 43a59e	 Bytes: 7
  %loadMem_43a59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a59e = call %struct.Memory* @routine_movb__al__0x723694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a59e)
  store %struct.Memory* %call_43a59e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43a5a5	 Bytes: 4
  %loadMem_43a5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5a5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5a5)
  store %struct.Memory* %call_43a5a5, %struct.Memory** %MEMORY

  ; Code: je .L_43a630	 RIP: 43a5a9	 Bytes: 6
  %loadMem_43a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5a9 = call %struct.Memory* @routine_je_.L_43a630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5a9, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_43a5a9, %struct.Memory** %MEMORY

  %loadBr_43a5a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a5a9 = icmp eq i8 %loadBr_43a5a9, 1
  br i1 %cmpBr_43a5a9, label %block_.L_43a630, label %block_43a5af

block_43a5af:
  ; Code: cmpl $0x8, -0xb8(%rbp)	 RIP: 43a5af	 Bytes: 7
  %loadMem_43a5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5af = call %struct.Memory* @routine_cmpl__0x8__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5af)
  store %struct.Memory* %call_43a5af, %struct.Memory** %MEMORY

  ; Code: jne .L_43a630	 RIP: 43a5b6	 Bytes: 6
  %loadMem_43a5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5b6 = call %struct.Memory* @routine_jne_.L_43a630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5b6, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_43a5b6, %struct.Memory** %MEMORY

  %loadBr_43a5b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a5b6 = icmp eq i8 %loadBr_43a5b6, 1
  br i1 %cmpBr_43a5b6, label %block_.L_43a630, label %block_43a5bc

block_43a5bc:
  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a5bc	 Bytes: 7
  %loadMem_43a5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5bc = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5bc)
  store %struct.Memory* %call_43a5bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43a5c3	 Bytes: 7
  %loadMem_43a5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5c3 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5c3)
  store %struct.Memory* %call_43a5c3, %struct.Memory** %MEMORY

  ; Code: je .L_43a5f5	 RIP: 43a5ca	 Bytes: 6
  %loadMem_43a5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5ca = call %struct.Memory* @routine_je_.L_43a5f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5ca, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_43a5ca, %struct.Memory** %MEMORY

  %loadBr_43a5ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a5ca = icmp eq i8 %loadBr_43a5ca, 1
  br i1 %cmpBr_43a5ca, label %block_.L_43a5f5, label %block_43a5d0

block_43a5d0:
  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a5d0	 Bytes: 7
  %loadMem_43a5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5d0 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5d0)
  store %struct.Memory* %call_43a5d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43a5d7	 Bytes: 7
  %loadMem_43a5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5d7 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5d7)
  store %struct.Memory* %call_43a5d7, %struct.Memory** %MEMORY

  ; Code: jne .L_43a5f5	 RIP: 43a5de	 Bytes: 6
  %loadMem_43a5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5de = call %struct.Memory* @routine_jne_.L_43a5f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5de, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43a5de, %struct.Memory** %MEMORY

  %loadBr_43a5de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a5de = icmp eq i8 %loadBr_43a5de, 1
  br i1 %cmpBr_43a5de, label %block_.L_43a5f5, label %block_43a5e4

block_43a5e4:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43a5e4	 Bytes: 3
  %loadMem_43a5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5e4 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5e4)
  store %struct.Memory* %call_43a5e4, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43a5e7	 Bytes: 3
  %loadMem_43a5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5e7 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5e7)
  store %struct.Memory* %call_43a5e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x168(%rbp)	 RIP: 43a5ea	 Bytes: 6
  %loadMem_43a5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5ea = call %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5ea)
  store %struct.Memory* %call_43a5ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a61f	 RIP: 43a5f0	 Bytes: 5
  %loadMem_43a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5f0 = call %struct.Memory* @routine_jmpq_.L_43a61f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5f0, i64 47, i64 5)
  store %struct.Memory* %call_43a5f0, %struct.Memory** %MEMORY

  br label %block_.L_43a61f

  ; Code: .L_43a5f5:	 RIP: 43a5f5	 Bytes: 0
block_.L_43a5f5:

  ; Code: movl $0x2, %eax	 RIP: 43a5f5	 Bytes: 5
  %loadMem_43a5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5f5 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5f5)
  store %struct.Memory* %call_43a5f5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 43a5fa	 Bytes: 3
  %loadMem_43a5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5fa = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5fa)
  store %struct.Memory* %call_43a5fa, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43a5fd	 Bytes: 3
  %loadMem_43a5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a5fd = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a5fd)
  store %struct.Memory* %call_43a5fd, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %ecx	 RIP: 43a600	 Bytes: 3
  %loadMem_43a600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a600 = call %struct.Memory* @routine_shll__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a600)
  store %struct.Memory* %call_43a600, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 43a603	 Bytes: 3
  %loadMem_43a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a603 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a603)
  store %struct.Memory* %call_43a603, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x16c(%rbp)	 RIP: 43a606	 Bytes: 6
  %loadMem_43a606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a606 = call %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a606)
  store %struct.Memory* %call_43a606, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 43a60c	 Bytes: 2
  %loadMem_43a60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a60c = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a60c)
  store %struct.Memory* %call_43a60c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43a60e	 Bytes: 1
  %loadMem_43a60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a60e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a60e)
  store %struct.Memory* %call_43a60e, %struct.Memory** %MEMORY

  ; Code: movl -0x16c(%rbp), %esi	 RIP: 43a60f	 Bytes: 6
  %loadMem_43a60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a60f = call %struct.Memory* @routine_movl_MINUS0x16c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a60f)
  store %struct.Memory* %call_43a60f, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 43a615	 Bytes: 2
  %loadMem_43a615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a615 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a615)
  store %struct.Memory* %call_43a615, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43a617	 Bytes: 2
  %loadMem_43a617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a617 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a617)
  store %struct.Memory* %call_43a617, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x168(%rbp)	 RIP: 43a619	 Bytes: 6
  %loadMem_43a619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a619 = call %struct.Memory* @routine_movl__ecx__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a619)
  store %struct.Memory* %call_43a619, %struct.Memory** %MEMORY

  ; Code: .L_43a61f:	 RIP: 43a61f	 Bytes: 0
  br label %block_.L_43a61f
block_.L_43a61f:

  ; Code: movl -0x168(%rbp), %eax	 RIP: 43a61f	 Bytes: 6
  %loadMem_43a61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a61f = call %struct.Memory* @routine_movl_MINUS0x168__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a61f)
  store %struct.Memory* %call_43a61f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x170(%rbp)	 RIP: 43a625	 Bytes: 6
  %loadMem_43a625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a625 = call %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a625)
  store %struct.Memory* %call_43a625, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a639	 RIP: 43a62b	 Bytes: 5
  %loadMem_43a62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a62b = call %struct.Memory* @routine_jmpq_.L_43a639(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a62b, i64 14, i64 5)
  store %struct.Memory* %call_43a62b, %struct.Memory** %MEMORY

  br label %block_.L_43a639

  ; Code: .L_43a630:	 RIP: 43a630	 Bytes: 0
block_.L_43a630:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43a630	 Bytes: 3
  %loadMem_43a630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a630 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a630)
  store %struct.Memory* %call_43a630, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x170(%rbp)	 RIP: 43a633	 Bytes: 6
  %loadMem_43a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a633 = call %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a633)
  store %struct.Memory* %call_43a633, %struct.Memory** %MEMORY

  ; Code: .L_43a639:	 RIP: 43a639	 Bytes: 0
  br label %block_.L_43a639
block_.L_43a639:

  ; Code: movl -0x170(%rbp), %eax	 RIP: 43a639	 Bytes: 6
  %loadMem_43a639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a639 = call %struct.Memory* @routine_movl_MINUS0x170__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a639)
  store %struct.Memory* %call_43a639, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 43a63f	 Bytes: 6
  %loadMem_43a63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a63f = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a63f)
  store %struct.Memory* %call_43a63f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x110(%rbp)	 RIP: 43a645	 Bytes: 7
  %loadMem_43a645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a645 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a645)
  store %struct.Memory* %call_43a645, %struct.Memory** %MEMORY

  ; Code: jne .L_43a666	 RIP: 43a64c	 Bytes: 6
  %loadMem_43a64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a64c = call %struct.Memory* @routine_jne_.L_43a666(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a64c, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_43a64c, %struct.Memory** %MEMORY

  %loadBr_43a64c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a64c = icmp eq i8 %loadBr_43a64c, 1
  br i1 %cmpBr_43a64c, label %block_.L_43a666, label %block_43a652

block_43a652:
  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a652	 Bytes: 7
  %loadMem_43a652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a652 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a652)
  store %struct.Memory* %call_43a652, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x264(%rax)	 RIP: 43a659	 Bytes: 7
  %loadMem_43a659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a659 = call %struct.Memory* @routine_cmpl__0x0__0x264__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a659)
  store %struct.Memory* %call_43a659, %struct.Memory** %MEMORY

  ; Code: jne .L_43b330	 RIP: 43a660	 Bytes: 6
  %loadMem_43a660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a660 = call %struct.Memory* @routine_jne_.L_43b330(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a660, i8* %BRANCH_TAKEN, i64 3280, i64 6, i64 6)
  store %struct.Memory* %call_43a660, %struct.Memory** %MEMORY

  %loadBr_43a660 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a660 = icmp eq i8 %loadBr_43a660, 1
  br i1 %cmpBr_43a660, label %block_.L_43b330, label %block_.L_43a666

  ; Code: .L_43a666:	 RIP: 43a666	 Bytes: 0
block_.L_43a666:

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 43a666	 Bytes: 4
  %loadMem_43a666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a666 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a666)
  store %struct.Memory* %call_43a666, %struct.Memory** %MEMORY

  ; Code: je .L_43a6c0	 RIP: 43a66a	 Bytes: 6
  %loadMem_43a66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a66a = call %struct.Memory* @routine_je_.L_43a6c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a66a, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_43a66a, %struct.Memory** %MEMORY

  %loadBr_43a66a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a66a = icmp eq i8 %loadBr_43a66a, 1
  br i1 %cmpBr_43a66a, label %block_.L_43a6c0, label %block_43a670

block_43a670:
  ; Code: movzbl 0x723694, %eax	 RIP: 43a670	 Bytes: 8
  %loadMem_43a670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a670 = call %struct.Memory* @routine_movzbl_0x723694___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a670)
  store %struct.Memory* %call_43a670, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43a678	 Bytes: 3
  %loadMem_43a678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a678 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a678)
  store %struct.Memory* %call_43a678, %struct.Memory** %MEMORY

  ; Code: je .L_43a6a6	 RIP: 43a67b	 Bytes: 6
  %loadMem_43a67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a67b = call %struct.Memory* @routine_je_.L_43a6a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a67b, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_43a67b, %struct.Memory** %MEMORY

  %loadBr_43a67b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a67b = icmp eq i8 %loadBr_43a67b, 1
  br i1 %cmpBr_43a67b, label %block_.L_43a6a6, label %block_43a681

block_43a681:
  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a681	 Bytes: 7
  %loadMem_43a681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a681 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a681)
  store %struct.Memory* %call_43a681, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43a688	 Bytes: 7
  %loadMem_43a688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a688 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a688)
  store %struct.Memory* %call_43a688, %struct.Memory** %MEMORY

  ; Code: jne .L_43a6a6	 RIP: 43a68f	 Bytes: 6
  %loadMem_43a68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a68f = call %struct.Memory* @routine_jne_.L_43a6a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a68f, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43a68f, %struct.Memory** %MEMORY

  %loadBr_43a68f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a68f = icmp eq i8 %loadBr_43a68f, 1
  br i1 %cmpBr_43a68f, label %block_.L_43a6a6, label %block_43a695

block_43a695:
  ; Code: movl -0x40(%rbp), %eax	 RIP: 43a695	 Bytes: 3
  %loadMem_43a695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a695 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a695)
  store %struct.Memory* %call_43a695, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43a698	 Bytes: 3
  %loadMem_43a698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a698 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a698)
  store %struct.Memory* %call_43a698, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x174(%rbp)	 RIP: 43a69b	 Bytes: 6
  %loadMem_43a69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a69b = call %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a69b)
  store %struct.Memory* %call_43a69b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a6af	 RIP: 43a6a1	 Bytes: 5
  %loadMem_43a6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6a1 = call %struct.Memory* @routine_jmpq_.L_43a6af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6a1, i64 14, i64 5)
  store %struct.Memory* %call_43a6a1, %struct.Memory** %MEMORY

  br label %block_.L_43a6af

  ; Code: .L_43a6a6:	 RIP: 43a6a6	 Bytes: 0
block_.L_43a6a6:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 43a6a6	 Bytes: 3
  %loadMem_43a6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6a6 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6a6)
  store %struct.Memory* %call_43a6a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x174(%rbp)	 RIP: 43a6a9	 Bytes: 6
  %loadMem_43a6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6a9 = call %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6a9)
  store %struct.Memory* %call_43a6a9, %struct.Memory** %MEMORY

  ; Code: .L_43a6af:	 RIP: 43a6af	 Bytes: 0
  br label %block_.L_43a6af
block_.L_43a6af:

  ; Code: movl -0x174(%rbp), %eax	 RIP: 43a6af	 Bytes: 6
  %loadMem_43a6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6af = call %struct.Memory* @routine_movl_MINUS0x174__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6af)
  store %struct.Memory* %call_43a6af, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x178(%rbp)	 RIP: 43a6b5	 Bytes: 6
  %loadMem_43a6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6b5 = call %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6b5)
  store %struct.Memory* %call_43a6b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a6d0	 RIP: 43a6bb	 Bytes: 5
  %loadMem_43a6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6bb = call %struct.Memory* @routine_jmpq_.L_43a6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6bb, i64 21, i64 5)
  store %struct.Memory* %call_43a6bb, %struct.Memory** %MEMORY

  br label %block_.L_43a6d0

  ; Code: .L_43a6c0:	 RIP: 43a6c0	 Bytes: 0
block_.L_43a6c0:

  ; Code: movl $0x1, %eax	 RIP: 43a6c0	 Bytes: 5
  %loadMem_43a6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6c0 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6c0)
  store %struct.Memory* %call_43a6c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x178(%rbp)	 RIP: 43a6c5	 Bytes: 6
  %loadMem_43a6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6c5 = call %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6c5)
  store %struct.Memory* %call_43a6c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a6d0	 RIP: 43a6cb	 Bytes: 5
  %loadMem_43a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6cb = call %struct.Memory* @routine_jmpq_.L_43a6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6cb, i64 5, i64 5)
  store %struct.Memory* %call_43a6cb, %struct.Memory** %MEMORY

  br label %block_.L_43a6d0

  ; Code: .L_43a6d0:	 RIP: 43a6d0	 Bytes: 0
block_.L_43a6d0:

  ; Code: movl -0x178(%rbp), %eax	 RIP: 43a6d0	 Bytes: 6
  %loadMem_43a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6d0 = call %struct.Memory* @routine_movl_MINUS0x178__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6d0)
  store %struct.Memory* %call_43a6d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 43a6d6	 Bytes: 3
  %loadMem_43a6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6d6 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6d6)
  store %struct.Memory* %call_43a6d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 43a6d9	 Bytes: 4
  %loadMem_43a6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6d9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6d9)
  store %struct.Memory* %call_43a6d9, %struct.Memory** %MEMORY

  ; Code: je .L_43a733	 RIP: 43a6dd	 Bytes: 6
  %loadMem_43a6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6dd = call %struct.Memory* @routine_je_.L_43a733(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6dd, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_43a6dd, %struct.Memory** %MEMORY

  %loadBr_43a6dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a6dd = icmp eq i8 %loadBr_43a6dd, 1
  br i1 %cmpBr_43a6dd, label %block_.L_43a733, label %block_43a6e3

block_43a6e3:
  ; Code: movzbl 0x723694, %eax	 RIP: 43a6e3	 Bytes: 8
  %loadMem_43a6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6e3 = call %struct.Memory* @routine_movzbl_0x723694___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6e3)
  store %struct.Memory* %call_43a6e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43a6eb	 Bytes: 3
  %loadMem_43a6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6eb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6eb)
  store %struct.Memory* %call_43a6eb, %struct.Memory** %MEMORY

  ; Code: je .L_43a719	 RIP: 43a6ee	 Bytes: 6
  %loadMem_43a6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6ee = call %struct.Memory* @routine_je_.L_43a719(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6ee, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_43a6ee, %struct.Memory** %MEMORY

  %loadBr_43a6ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a6ee = icmp eq i8 %loadBr_43a6ee, 1
  br i1 %cmpBr_43a6ee, label %block_.L_43a719, label %block_43a6f4

block_43a6f4:
  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a6f4	 Bytes: 7
  %loadMem_43a6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6f4 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6f4)
  store %struct.Memory* %call_43a6f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43a6fb	 Bytes: 7
  %loadMem_43a6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a6fb = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a6fb)
  store %struct.Memory* %call_43a6fb, %struct.Memory** %MEMORY

  ; Code: jne .L_43a719	 RIP: 43a702	 Bytes: 6
  %loadMem_43a702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a702 = call %struct.Memory* @routine_jne_.L_43a719(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a702, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43a702, %struct.Memory** %MEMORY

  %loadBr_43a702 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a702 = icmp eq i8 %loadBr_43a702, 1
  br i1 %cmpBr_43a702, label %block_.L_43a719, label %block_43a708

block_43a708:
  ; Code: movl -0x40(%rbp), %eax	 RIP: 43a708	 Bytes: 3
  %loadMem_43a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a708 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a708)
  store %struct.Memory* %call_43a708, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43a70b	 Bytes: 3
  %loadMem_43a70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a70b = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a70b)
  store %struct.Memory* %call_43a70b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x17c(%rbp)	 RIP: 43a70e	 Bytes: 6
  %loadMem_43a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a70e = call %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a70e)
  store %struct.Memory* %call_43a70e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a722	 RIP: 43a714	 Bytes: 5
  %loadMem_43a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a714 = call %struct.Memory* @routine_jmpq_.L_43a722(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a714, i64 14, i64 5)
  store %struct.Memory* %call_43a714, %struct.Memory** %MEMORY

  br label %block_.L_43a722

  ; Code: .L_43a719:	 RIP: 43a719	 Bytes: 0
block_.L_43a719:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 43a719	 Bytes: 3
  %loadMem_43a719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a719 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a719)
  store %struct.Memory* %call_43a719, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x17c(%rbp)	 RIP: 43a71c	 Bytes: 6
  %loadMem_43a71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a71c = call %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a71c)
  store %struct.Memory* %call_43a71c, %struct.Memory** %MEMORY

  ; Code: .L_43a722:	 RIP: 43a722	 Bytes: 0
  br label %block_.L_43a722
block_.L_43a722:

  ; Code: movl -0x17c(%rbp), %eax	 RIP: 43a722	 Bytes: 6
  %loadMem_43a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a722 = call %struct.Memory* @routine_movl_MINUS0x17c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a722)
  store %struct.Memory* %call_43a722, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x180(%rbp)	 RIP: 43a728	 Bytes: 6
  %loadMem_43a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a728 = call %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a728)
  store %struct.Memory* %call_43a728, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a743	 RIP: 43a72e	 Bytes: 5
  %loadMem_43a72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a72e = call %struct.Memory* @routine_jmpq_.L_43a743(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a72e, i64 21, i64 5)
  store %struct.Memory* %call_43a72e, %struct.Memory** %MEMORY

  br label %block_.L_43a743

  ; Code: .L_43a733:	 RIP: 43a733	 Bytes: 0
block_.L_43a733:

  ; Code: movl $0x1, %eax	 RIP: 43a733	 Bytes: 5
  %loadMem_43a733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a733 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a733)
  store %struct.Memory* %call_43a733, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x180(%rbp)	 RIP: 43a738	 Bytes: 6
  %loadMem_43a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a738 = call %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a738)
  store %struct.Memory* %call_43a738, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a743	 RIP: 43a73e	 Bytes: 5
  %loadMem_43a73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a73e = call %struct.Memory* @routine_jmpq_.L_43a743(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a73e, i64 5, i64 5)
  store %struct.Memory* %call_43a73e, %struct.Memory** %MEMORY

  br label %block_.L_43a743

  ; Code: .L_43a743:	 RIP: 43a743	 Bytes: 0
block_.L_43a743:

  ; Code: movl -0x180(%rbp), %eax	 RIP: 43a743	 Bytes: 6
  %loadMem_43a743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a743 = call %struct.Memory* @routine_movl_MINUS0x180__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a743)
  store %struct.Memory* %call_43a743, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 43a749	 Bytes: 3
  %loadMem_43a749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a749 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a749)
  store %struct.Memory* %call_43a749, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43a74c	 Bytes: 4
  %loadMem_43a74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a74c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a74c)
  store %struct.Memory* %call_43a74c, %struct.Memory** %MEMORY

  ; Code: movslq -0x114(%rbp), %rdx	 RIP: 43a750	 Bytes: 7
  %loadMem_43a750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a750 = call %struct.Memory* @routine_movslq_MINUS0x114__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a750)
  store %struct.Memory* %call_43a750, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 43a757	 Bytes: 4
  %loadMem_43a757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a757 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a757)
  store %struct.Memory* %call_43a757, %struct.Memory** %MEMORY

  ; Code: movslq -0x118(%rbp), %rdx	 RIP: 43a75b	 Bytes: 7
  %loadMem_43a75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a75b = call %struct.Memory* @routine_movslq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a75b)
  store %struct.Memory* %call_43a75b, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rdx	 RIP: 43a762	 Bytes: 4
  %loadMem_43a762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a762 = call %struct.Memory* @routine_shlq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a762)
  store %struct.Memory* %call_43a762, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43a766	 Bytes: 3
  %loadMem_43a766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a766 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a766)
  store %struct.Memory* %call_43a766, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xd0(%rbp)	 RIP: 43a769	 Bytes: 7
  %loadMem_43a769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a769 = call %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a769)
  store %struct.Memory* %call_43a769, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 43a770	 Bytes: 4
  %loadMem_43a770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a770 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a770)
  store %struct.Memory* %call_43a770, %struct.Memory** %MEMORY

  ; Code: movslq -0xfc(%rbp), %rdx	 RIP: 43a774	 Bytes: 7
  %loadMem_43a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a774 = call %struct.Memory* @routine_movslq_MINUS0xfc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a774)
  store %struct.Memory* %call_43a774, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 43a77b	 Bytes: 4
  %loadMem_43a77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a77b = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a77b)
  store %struct.Memory* %call_43a77b, %struct.Memory** %MEMORY

  ; Code: movslq -0x100(%rbp), %rdx	 RIP: 43a77f	 Bytes: 7
  %loadMem_43a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a77f = call %struct.Memory* @routine_movslq_MINUS0x100__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a77f)
  store %struct.Memory* %call_43a77f, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rdx	 RIP: 43a786	 Bytes: 4
  %loadMem_43a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a786 = call %struct.Memory* @routine_shlq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a786)
  store %struct.Memory* %call_43a786, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43a78a	 Bytes: 3
  %loadMem_43a78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a78a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a78a)
  store %struct.Memory* %call_43a78a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xc8(%rbp)	 RIP: 43a78d	 Bytes: 7
  %loadMem_43a78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a78d = call %struct.Memory* @routine_movq__rcx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a78d)
  store %struct.Memory* %call_43a78d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43a794	 Bytes: 4
  %loadMem_43a794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a794 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a794)
  store %struct.Memory* %call_43a794, %struct.Memory** %MEMORY

  ; Code: je .L_43a8f7	 RIP: 43a798	 Bytes: 6
  %loadMem_43a798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a798 = call %struct.Memory* @routine_je_.L_43a8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a798, i8* %BRANCH_TAKEN, i64 351, i64 6, i64 6)
  store %struct.Memory* %call_43a798, %struct.Memory** %MEMORY

  %loadBr_43a798 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a798 = icmp eq i8 %loadBr_43a798, 1
  br i1 %cmpBr_43a798, label %block_.L_43a8f7, label %block_43a79e

block_43a79e:
  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a79e	 Bytes: 7
  %loadMem_43a79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a79e = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a79e)
  store %struct.Memory* %call_43a79e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a7a5	 Bytes: 3
  %loadMem_43a7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7a5 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7a5)
  store %struct.Memory* %call_43a7a5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43a7a8	 Bytes: 4
  %loadMem_43a7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7a8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7a8)
  store %struct.Memory* %call_43a7a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43a7ac	 Bytes: 4
  %loadMem_43a7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7ac = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7ac)
  store %struct.Memory* %call_43a7ac, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rax,%rdx,4), %ecx	 RIP: 43a7b0	 Bytes: 7
  %loadMem_43a7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7b0 = call %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7b0)
  store %struct.Memory* %call_43a7b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43a7b7	 Bytes: 3
  %loadMem_43a7b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7b7 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7b7)
  store %struct.Memory* %call_43a7b7, %struct.Memory** %MEMORY

  ; Code: jge .L_43a7cd	 RIP: 43a7ba	 Bytes: 6
  %loadMem_43a7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7ba = call %struct.Memory* @routine_jge_.L_43a7cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7ba, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43a7ba, %struct.Memory** %MEMORY

  %loadBr_43a7ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a7ba = icmp eq i8 %loadBr_43a7ba, 1
  br i1 %cmpBr_43a7ba, label %block_.L_43a7cd, label %block_43a7c0

block_43a7c0:
  ; Code: xorl %eax, %eax	 RIP: 43a7c0	 Bytes: 2
  %loadMem_43a7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7c0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7c0)
  store %struct.Memory* %call_43a7c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x184(%rbp)	 RIP: 43a7c2	 Bytes: 6
  %loadMem_43a7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7c2 = call %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7c2)
  store %struct.Memory* %call_43a7c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a82a	 RIP: 43a7c8	 Bytes: 5
  %loadMem_43a7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7c8 = call %struct.Memory* @routine_jmpq_.L_43a82a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7c8, i64 98, i64 5)
  store %struct.Memory* %call_43a7c8, %struct.Memory** %MEMORY

  br label %block_.L_43a82a

  ; Code: .L_43a7cd:	 RIP: 43a7cd	 Bytes: 0
block_.L_43a7cd:

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a7cd	 Bytes: 7
  %loadMem_43a7cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7cd = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7cd)
  store %struct.Memory* %call_43a7cd, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a7d4	 Bytes: 3
  %loadMem_43a7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7d4 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7d4)
  store %struct.Memory* %call_43a7d4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43a7d7	 Bytes: 4
  %loadMem_43a7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7d7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7d7)
  store %struct.Memory* %call_43a7d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43a7db	 Bytes: 4
  %loadMem_43a7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7db = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7db)
  store %struct.Memory* %call_43a7db, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rax,%rdx,4), %ecx	 RIP: 43a7df	 Bytes: 7
  %loadMem_43a7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7df = call %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7df)
  store %struct.Memory* %call_43a7df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x33, %ecx	 RIP: 43a7e6	 Bytes: 3
  %loadMem_43a7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7e6 = call %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7e6)
  store %struct.Memory* %call_43a7e6, %struct.Memory** %MEMORY

  ; Code: jle .L_43a7ff	 RIP: 43a7e9	 Bytes: 6
  %loadMem_43a7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7e9 = call %struct.Memory* @routine_jle_.L_43a7ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7e9, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43a7e9, %struct.Memory** %MEMORY

  %loadBr_43a7e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a7e9 = icmp eq i8 %loadBr_43a7e9, 1
  br i1 %cmpBr_43a7e9, label %block_.L_43a7ff, label %block_43a7ef

block_43a7ef:
  ; Code: movl $0x33, %eax	 RIP: 43a7ef	 Bytes: 5
  %loadMem_43a7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7ef = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7ef)
  store %struct.Memory* %call_43a7ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x188(%rbp)	 RIP: 43a7f4	 Bytes: 6
  %loadMem_43a7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7f4 = call %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7f4)
  store %struct.Memory* %call_43a7f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a81e	 RIP: 43a7fa	 Bytes: 5
  %loadMem_43a7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7fa = call %struct.Memory* @routine_jmpq_.L_43a81e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7fa, i64 36, i64 5)
  store %struct.Memory* %call_43a7fa, %struct.Memory** %MEMORY

  br label %block_.L_43a81e

  ; Code: .L_43a7ff:	 RIP: 43a7ff	 Bytes: 0
block_.L_43a7ff:

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a7ff	 Bytes: 7
  %loadMem_43a7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a7ff = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a7ff)
  store %struct.Memory* %call_43a7ff, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a806	 Bytes: 3
  %loadMem_43a806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a806 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a806)
  store %struct.Memory* %call_43a806, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43a809	 Bytes: 4
  %loadMem_43a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a809 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a809)
  store %struct.Memory* %call_43a809, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43a80d	 Bytes: 4
  %loadMem_43a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a80d = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a80d)
  store %struct.Memory* %call_43a80d, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rax,%rdx,4), %ecx	 RIP: 43a811	 Bytes: 7
  %loadMem_43a811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a811 = call %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a811)
  store %struct.Memory* %call_43a811, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x188(%rbp)	 RIP: 43a818	 Bytes: 6
  %loadMem_43a818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a818 = call %struct.Memory* @routine_movl__ecx__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a818)
  store %struct.Memory* %call_43a818, %struct.Memory** %MEMORY

  ; Code: .L_43a81e:	 RIP: 43a81e	 Bytes: 0
  br label %block_.L_43a81e
block_.L_43a81e:

  ; Code: movl -0x188(%rbp), %eax	 RIP: 43a81e	 Bytes: 6
  %loadMem_43a81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a81e = call %struct.Memory* @routine_movl_MINUS0x188__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a81e)
  store %struct.Memory* %call_43a81e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x184(%rbp)	 RIP: 43a824	 Bytes: 6
  %loadMem_43a824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a824 = call %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a824)
  store %struct.Memory* %call_43a824, %struct.Memory** %MEMORY

  ; Code: .L_43a82a:	 RIP: 43a82a	 Bytes: 0
  br label %block_.L_43a82a
block_.L_43a82a:

  ; Code: movl -0x184(%rbp), %eax	 RIP: 43a82a	 Bytes: 6
  %loadMem_43a82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a82a = call %struct.Memory* @routine_movl_MINUS0x184__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a82a)
  store %struct.Memory* %call_43a82a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 43a830	 Bytes: 3
  %loadMem_43a830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a830 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a830)
  store %struct.Memory* %call_43a830, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2320(,%rcx,1), %eax	 RIP: 43a833	 Bytes: 8
  %loadMem_43a833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a833 = call %struct.Memory* @routine_movzbl_0x4b2320___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a833)
  store %struct.Memory* %call_43a833, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rcx	 RIP: 43a83b	 Bytes: 7
  %loadMem_43a83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a83b = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a83b)
  store %struct.Memory* %call_43a83b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 43a842	 Bytes: 3
  %loadMem_43a842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a842 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a842)
  store %struct.Memory* %call_43a842, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43a845	 Bytes: 4
  %loadMem_43a845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a845 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a845)
  store %struct.Memory* %call_43a845, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rsi	 RIP: 43a849	 Bytes: 4
  %loadMem_43a849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a849 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a849)
  store %struct.Memory* %call_43a849, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rcx,%rsi,4), %edx	 RIP: 43a84d	 Bytes: 7
  %loadMem_43a84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a84d = call %struct.Memory* @routine_addl_0x11c0c__rcx__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a84d)
  store %struct.Memory* %call_43a84d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43a854	 Bytes: 3
  %loadMem_43a854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a854 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a854)
  store %struct.Memory* %call_43a854, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18c(%rbp)	 RIP: 43a857	 Bytes: 6
  %loadMem_43a857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a857 = call %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a857)
  store %struct.Memory* %call_43a857, %struct.Memory** %MEMORY

  ; Code: jge .L_43a870	 RIP: 43a85d	 Bytes: 6
  %loadMem_43a85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a85d = call %struct.Memory* @routine_jge_.L_43a870(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a85d, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43a85d, %struct.Memory** %MEMORY

  %loadBr_43a85d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a85d = icmp eq i8 %loadBr_43a85d, 1
  br i1 %cmpBr_43a85d, label %block_.L_43a870, label %block_43a863

block_43a863:
  ; Code: xorl %eax, %eax	 RIP: 43a863	 Bytes: 2
  %loadMem_43a863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a863 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a863)
  store %struct.Memory* %call_43a863, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x190(%rbp)	 RIP: 43a865	 Bytes: 6
  %loadMem_43a865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a865 = call %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a865)
  store %struct.Memory* %call_43a865, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a8cd	 RIP: 43a86b	 Bytes: 5
  %loadMem_43a86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a86b = call %struct.Memory* @routine_jmpq_.L_43a8cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a86b, i64 98, i64 5)
  store %struct.Memory* %call_43a86b, %struct.Memory** %MEMORY

  br label %block_.L_43a8cd

  ; Code: .L_43a870:	 RIP: 43a870	 Bytes: 0
block_.L_43a870:

  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a870	 Bytes: 7
  %loadMem_43a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a870 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a870)
  store %struct.Memory* %call_43a870, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a877	 Bytes: 3
  %loadMem_43a877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a877 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a877)
  store %struct.Memory* %call_43a877, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43a87a	 Bytes: 4
  %loadMem_43a87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a87a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a87a)
  store %struct.Memory* %call_43a87a, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43a87e	 Bytes: 4
  %loadMem_43a87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a87e = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a87e)
  store %struct.Memory* %call_43a87e, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rax,%rdx,4), %ecx	 RIP: 43a882	 Bytes: 7
  %loadMem_43a882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a882 = call %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a882)
  store %struct.Memory* %call_43a882, %struct.Memory** %MEMORY

  ; Code: cmpl $0x33, %ecx	 RIP: 43a889	 Bytes: 3
  %loadMem_43a889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a889 = call %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a889)
  store %struct.Memory* %call_43a889, %struct.Memory** %MEMORY

  ; Code: jle .L_43a8a2	 RIP: 43a88c	 Bytes: 6
  %loadMem_43a88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a88c = call %struct.Memory* @routine_jle_.L_43a8a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a88c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43a88c, %struct.Memory** %MEMORY

  %loadBr_43a88c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a88c = icmp eq i8 %loadBr_43a88c, 1
  br i1 %cmpBr_43a88c, label %block_.L_43a8a2, label %block_43a892

block_43a892:
  ; Code: movl $0x33, %eax	 RIP: 43a892	 Bytes: 5
  %loadMem_43a892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a892 = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a892)
  store %struct.Memory* %call_43a892, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x194(%rbp)	 RIP: 43a897	 Bytes: 6
  %loadMem_43a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a897 = call %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a897)
  store %struct.Memory* %call_43a897, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a8c1	 RIP: 43a89d	 Bytes: 5
  %loadMem_43a89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a89d = call %struct.Memory* @routine_jmpq_.L_43a8c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a89d, i64 36, i64 5)
  store %struct.Memory* %call_43a89d, %struct.Memory** %MEMORY

  br label %block_.L_43a8c1

  ; Code: .L_43a8a2:	 RIP: 43a8a2	 Bytes: 0
block_.L_43a8a2:

  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a8a2	 Bytes: 7
  %loadMem_43a8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8a2 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8a2)
  store %struct.Memory* %call_43a8a2, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a8a9	 Bytes: 3
  %loadMem_43a8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8a9 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8a9)
  store %struct.Memory* %call_43a8a9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43a8ac	 Bytes: 4
  %loadMem_43a8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8ac = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8ac)
  store %struct.Memory* %call_43a8ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43a8b0	 Bytes: 4
  %loadMem_43a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8b0 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8b0)
  store %struct.Memory* %call_43a8b0, %struct.Memory** %MEMORY

  ; Code: addl 0x11c0c(%rax,%rdx,4), %ecx	 RIP: 43a8b4	 Bytes: 7
  %loadMem_43a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8b4 = call %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8b4)
  store %struct.Memory* %call_43a8b4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x194(%rbp)	 RIP: 43a8bb	 Bytes: 6
  %loadMem_43a8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8bb = call %struct.Memory* @routine_movl__ecx__MINUS0x194__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8bb)
  store %struct.Memory* %call_43a8bb, %struct.Memory** %MEMORY

  ; Code: .L_43a8c1:	 RIP: 43a8c1	 Bytes: 0
  br label %block_.L_43a8c1
block_.L_43a8c1:

  ; Code: movl -0x194(%rbp), %eax	 RIP: 43a8c1	 Bytes: 6
  %loadMem_43a8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8c1 = call %struct.Memory* @routine_movl_MINUS0x194__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8c1)
  store %struct.Memory* %call_43a8c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x190(%rbp)	 RIP: 43a8c7	 Bytes: 6
  %loadMem_43a8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8c7 = call %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8c7)
  store %struct.Memory* %call_43a8c7, %struct.Memory** %MEMORY

  ; Code: .L_43a8cd:	 RIP: 43a8cd	 Bytes: 0
  br label %block_.L_43a8cd
block_.L_43a8cd:

  ; Code: movl -0x190(%rbp), %eax	 RIP: 43a8cd	 Bytes: 6
  %loadMem_43a8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8cd = call %struct.Memory* @routine_movl_MINUS0x190__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8cd)
  store %struct.Memory* %call_43a8cd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 43a8d3	 Bytes: 3
  %loadMem_43a8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8d3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8d3)
  store %struct.Memory* %call_43a8d3, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2320(,%rcx,1), %eax	 RIP: 43a8d6	 Bytes: 8
  %loadMem_43a8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8d6 = call %struct.Memory* @routine_movzbl_0x4b2320___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8d6)
  store %struct.Memory* %call_43a8d6, %struct.Memory** %MEMORY

  ; Code: movl -0x18c(%rbp), %edx	 RIP: 43a8de	 Bytes: 6
  %loadMem_43a8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8de = call %struct.Memory* @routine_movl_MINUS0x18c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8de)
  store %struct.Memory* %call_43a8de, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edx	 RIP: 43a8e4	 Bytes: 2
  %loadMem_43a8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8e4 = call %struct.Memory* @routine_addl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8e4)
  store %struct.Memory* %call_43a8e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 43a8e6	 Bytes: 3
  %loadMem_43a8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8e6 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8e6)
  store %struct.Memory* %call_43a8e6, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %edx	 RIP: 43a8e9	 Bytes: 3
  %loadMem_43a8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8e9 = call %struct.Memory* @routine_sarl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8e9)
  store %struct.Memory* %call_43a8e9, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x198(%rbp)	 RIP: 43a8ec	 Bytes: 6
  %loadMem_43a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8ec = call %struct.Memory* @routine_movl__edx__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8ec)
  store %struct.Memory* %call_43a8ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a917	 RIP: 43a8f2	 Bytes: 5
  %loadMem_43a8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8f2 = call %struct.Memory* @routine_jmpq_.L_43a917(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8f2, i64 37, i64 5)
  store %struct.Memory* %call_43a8f2, %struct.Memory** %MEMORY

  br label %block_.L_43a917

  ; Code: .L_43a8f7:	 RIP: 43a8f7	 Bytes: 0
block_.L_43a8f7:

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 43a8f7	 Bytes: 7
  %loadMem_43a8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8f7 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8f7)
  store %struct.Memory* %call_43a8f7, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43a8fe	 Bytes: 3
  %loadMem_43a8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a8fe = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a8fe)
  store %struct.Memory* %call_43a8fe, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rax	 RIP: 43a901	 Bytes: 7
  %loadMem_43a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a901 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a901)
  store %struct.Memory* %call_43a901, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rax), %ecx	 RIP: 43a908	 Bytes: 3
  %loadMem_43a908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a908 = call %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a908)
  store %struct.Memory* %call_43a908, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43a90b	 Bytes: 3
  %loadMem_43a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a90b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a90b)
  store %struct.Memory* %call_43a90b, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43a90e	 Bytes: 3
  %loadMem_43a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a90e = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a90e)
  store %struct.Memory* %call_43a90e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x198(%rbp)	 RIP: 43a911	 Bytes: 6
  %loadMem_43a911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a911 = call %struct.Memory* @routine_movl__ecx__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a911)
  store %struct.Memory* %call_43a911, %struct.Memory** %MEMORY

  ; Code: .L_43a917:	 RIP: 43a917	 Bytes: 0
  br label %block_.L_43a917
block_.L_43a917:

  ; Code: movl -0x198(%rbp), %eax	 RIP: 43a917	 Bytes: 6
  %loadMem_43a917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a917 = call %struct.Memory* @routine_movl_MINUS0x198__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a917)
  store %struct.Memory* %call_43a917, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 43a91d	 Bytes: 6
  %loadMem_43a91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a91d = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a91d)
  store %struct.Memory* %call_43a91d, %struct.Memory** %MEMORY

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a923	 Bytes: 6
  %loadMem_43a923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a923 = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a923)
  store %struct.Memory* %call_43a923, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %eax	 RIP: 43a929	 Bytes: 3
  %loadMem_43a929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a929 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a929)
  store %struct.Memory* %call_43a929, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43a92c	 Bytes: 3
  %loadMem_43a92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a92c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a92c)
  store %struct.Memory* %call_43a92c, %struct.Memory** %MEMORY

  ; Code: jge .L_43a942	 RIP: 43a92f	 Bytes: 6
  %loadMem_43a92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a92f = call %struct.Memory* @routine_jge_.L_43a942(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a92f, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43a92f, %struct.Memory** %MEMORY

  %loadBr_43a92f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a92f = icmp eq i8 %loadBr_43a92f, 1
  br i1 %cmpBr_43a92f, label %block_.L_43a942, label %block_43a935

block_43a935:
  ; Code: xorl %eax, %eax	 RIP: 43a935	 Bytes: 2
  %loadMem_43a935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a935 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a935)
  store %struct.Memory* %call_43a935, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c(%rbp)	 RIP: 43a937	 Bytes: 6
  %loadMem_43a937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a937 = call %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a937)
  store %struct.Memory* %call_43a937, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a97f	 RIP: 43a93d	 Bytes: 5
  %loadMem_43a93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a93d = call %struct.Memory* @routine_jmpq_.L_43a97f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a93d, i64 66, i64 5)
  store %struct.Memory* %call_43a93d, %struct.Memory** %MEMORY

  br label %block_.L_43a97f

  ; Code: .L_43a942:	 RIP: 43a942	 Bytes: 0
block_.L_43a942:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a942	 Bytes: 6
  %loadMem_43a942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a942 = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a942)
  store %struct.Memory* %call_43a942, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %eax	 RIP: 43a948	 Bytes: 3
  %loadMem_43a948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a948 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a948)
  store %struct.Memory* %call_43a948, %struct.Memory** %MEMORY

  ; Code: cmpl $0x33, %eax	 RIP: 43a94b	 Bytes: 3
  %loadMem_43a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a94b = call %struct.Memory* @routine_cmpl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a94b)
  store %struct.Memory* %call_43a94b, %struct.Memory** %MEMORY

  ; Code: jle .L_43a964	 RIP: 43a94e	 Bytes: 6
  %loadMem_43a94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a94e = call %struct.Memory* @routine_jle_.L_43a964(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a94e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43a94e, %struct.Memory** %MEMORY

  %loadBr_43a94e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a94e = icmp eq i8 %loadBr_43a94e, 1
  br i1 %cmpBr_43a94e, label %block_.L_43a964, label %block_43a954

block_43a954:
  ; Code: movl $0x33, %eax	 RIP: 43a954	 Bytes: 5
  %loadMem_43a954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a954 = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a954)
  store %struct.Memory* %call_43a954, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a0(%rbp)	 RIP: 43a959	 Bytes: 6
  %loadMem_43a959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a959 = call %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a959)
  store %struct.Memory* %call_43a959, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a973	 RIP: 43a95f	 Bytes: 5
  %loadMem_43a95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a95f = call %struct.Memory* @routine_jmpq_.L_43a973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a95f, i64 20, i64 5)
  store %struct.Memory* %call_43a95f, %struct.Memory** %MEMORY

  br label %block_.L_43a973

  ; Code: .L_43a964:	 RIP: 43a964	 Bytes: 0
block_.L_43a964:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a964	 Bytes: 6
  %loadMem_43a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a964 = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a964)
  store %struct.Memory* %call_43a964, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %eax	 RIP: 43a96a	 Bytes: 3
  %loadMem_43a96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a96a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a96a)
  store %struct.Memory* %call_43a96a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a0(%rbp)	 RIP: 43a96d	 Bytes: 6
  %loadMem_43a96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a96d = call %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a96d)
  store %struct.Memory* %call_43a96d, %struct.Memory** %MEMORY

  ; Code: .L_43a973:	 RIP: 43a973	 Bytes: 0
  br label %block_.L_43a973
block_.L_43a973:

  ; Code: movl -0x1a0(%rbp), %eax	 RIP: 43a973	 Bytes: 6
  %loadMem_43a973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a973 = call %struct.Memory* @routine_movl_MINUS0x1a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a973)
  store %struct.Memory* %call_43a973, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x19c(%rbp)	 RIP: 43a979	 Bytes: 6
  %loadMem_43a979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a979 = call %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a979)
  store %struct.Memory* %call_43a979, %struct.Memory** %MEMORY

  ; Code: .L_43a97f:	 RIP: 43a97f	 Bytes: 0
  br label %block_.L_43a97f
block_.L_43a97f:

  ; Code: movl -0x19c(%rbp), %eax	 RIP: 43a97f	 Bytes: 6
  %loadMem_43a97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a97f = call %struct.Memory* @routine_movl_MINUS0x19c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a97f)
  store %struct.Memory* %call_43a97f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 43a985	 Bytes: 6
  %loadMem_43a985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a985 = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a985)
  store %struct.Memory* %call_43a985, %struct.Memory** %MEMORY

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a98b	 Bytes: 6
  %loadMem_43a98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a98b = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a98b)
  store %struct.Memory* %call_43a98b, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 43a991	 Bytes: 3
  %loadMem_43a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a991 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a991)
  store %struct.Memory* %call_43a991, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43a994	 Bytes: 3
  %loadMem_43a994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a994 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a994)
  store %struct.Memory* %call_43a994, %struct.Memory** %MEMORY

  ; Code: jge .L_43a9aa	 RIP: 43a997	 Bytes: 6
  %loadMem_43a997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a997 = call %struct.Memory* @routine_jge_.L_43a9aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a997, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43a997, %struct.Memory** %MEMORY

  %loadBr_43a997 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a997 = icmp eq i8 %loadBr_43a997, 1
  br i1 %cmpBr_43a997, label %block_.L_43a9aa, label %block_43a99d

block_43a99d:
  ; Code: xorl %eax, %eax	 RIP: 43a99d	 Bytes: 2
  %loadMem_43a99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a99d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a99d)
  store %struct.Memory* %call_43a99d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a4(%rbp)	 RIP: 43a99f	 Bytes: 6
  %loadMem_43a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a99f = call %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a99f)
  store %struct.Memory* %call_43a99f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a9e7	 RIP: 43a9a5	 Bytes: 5
  %loadMem_43a9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9a5 = call %struct.Memory* @routine_jmpq_.L_43a9e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9a5, i64 66, i64 5)
  store %struct.Memory* %call_43a9a5, %struct.Memory** %MEMORY

  br label %block_.L_43a9e7

  ; Code: .L_43a9aa:	 RIP: 43a9aa	 Bytes: 0
block_.L_43a9aa:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a9aa	 Bytes: 6
  %loadMem_43a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9aa = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9aa)
  store %struct.Memory* %call_43a9aa, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 43a9b0	 Bytes: 3
  %loadMem_43a9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9b0 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9b0)
  store %struct.Memory* %call_43a9b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x33, %eax	 RIP: 43a9b3	 Bytes: 3
  %loadMem_43a9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9b3 = call %struct.Memory* @routine_cmpl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9b3)
  store %struct.Memory* %call_43a9b3, %struct.Memory** %MEMORY

  ; Code: jle .L_43a9cc	 RIP: 43a9b6	 Bytes: 6
  %loadMem_43a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9b6 = call %struct.Memory* @routine_jle_.L_43a9cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9b6, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43a9b6, %struct.Memory** %MEMORY

  %loadBr_43a9b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a9b6 = icmp eq i8 %loadBr_43a9b6, 1
  br i1 %cmpBr_43a9b6, label %block_.L_43a9cc, label %block_43a9bc

block_43a9bc:
  ; Code: movl $0x33, %eax	 RIP: 43a9bc	 Bytes: 5
  %loadMem_43a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9bc = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9bc)
  store %struct.Memory* %call_43a9bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a8(%rbp)	 RIP: 43a9c1	 Bytes: 6
  %loadMem_43a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9c1 = call %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9c1)
  store %struct.Memory* %call_43a9c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a9db	 RIP: 43a9c7	 Bytes: 5
  %loadMem_43a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9c7 = call %struct.Memory* @routine_jmpq_.L_43a9db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9c7, i64 20, i64 5)
  store %struct.Memory* %call_43a9c7, %struct.Memory** %MEMORY

  br label %block_.L_43a9db

  ; Code: .L_43a9cc:	 RIP: 43a9cc	 Bytes: 0
block_.L_43a9cc:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43a9cc	 Bytes: 6
  %loadMem_43a9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9cc = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9cc)
  store %struct.Memory* %call_43a9cc, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 43a9d2	 Bytes: 3
  %loadMem_43a9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9d2 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9d2)
  store %struct.Memory* %call_43a9d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a8(%rbp)	 RIP: 43a9d5	 Bytes: 6
  %loadMem_43a9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9d5 = call %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9d5)
  store %struct.Memory* %call_43a9d5, %struct.Memory** %MEMORY

  ; Code: .L_43a9db:	 RIP: 43a9db	 Bytes: 0
  br label %block_.L_43a9db
block_.L_43a9db:

  ; Code: movl -0x1a8(%rbp), %eax	 RIP: 43a9db	 Bytes: 6
  %loadMem_43a9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9db = call %struct.Memory* @routine_movl_MINUS0x1a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9db)
  store %struct.Memory* %call_43a9db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1a4(%rbp)	 RIP: 43a9e1	 Bytes: 6
  %loadMem_43a9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9e1 = call %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9e1)
  store %struct.Memory* %call_43a9e1, %struct.Memory** %MEMORY

  ; Code: .L_43a9e7:	 RIP: 43a9e7	 Bytes: 0
  br label %block_.L_43a9e7
block_.L_43a9e7:

  ; Code: movl -0x1a4(%rbp), %eax	 RIP: 43a9e7	 Bytes: 6
  %loadMem_43a9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9e7 = call %struct.Memory* @routine_movl_MINUS0x1a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9e7)
  store %struct.Memory* %call_43a9e7, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43a9ed	 Bytes: 2
  %loadMem_43a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9ed = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9ed)
  store %struct.Memory* %call_43a9ed, %struct.Memory** %MEMORY

  ; Code: movq $0x6cb9c0, %rdx	 RIP: 43a9ef	 Bytes: 10
  %loadMem_43a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9ef = call %struct.Memory* @routine_movq__0x6cb9c0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9ef)
  store %struct.Memory* %call_43a9ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 43a9f9	 Bytes: 6
  %loadMem_43a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9f9 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9f9)
  store %struct.Memory* %call_43a9f9, %struct.Memory** %MEMORY

  ; Code: movslq -0xb0(%rbp), %rsi	 RIP: 43a9ff	 Bytes: 7
  %loadMem_43a9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a9ff = call %struct.Memory* @routine_movslq_MINUS0xb0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a9ff)
  store %struct.Memory* %call_43a9ff, %struct.Memory** %MEMORY

  ; Code: movzbl 0x6cb940(,%rsi,1), %eax	 RIP: 43aa06	 Bytes: 8
  %loadMem_43aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa06 = call %struct.Memory* @routine_movzbl_0x6cb940___rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa06)
  store %struct.Memory* %call_43aa06, %struct.Memory** %MEMORY

  ; Code: imull -0x12c(%rbp), %eax	 RIP: 43aa0e	 Bytes: 7
  %loadMem_43aa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa0e = call %struct.Memory* @routine_imull_MINUS0x12c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa0e)
  store %struct.Memory* %call_43aa0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 43aa15	 Bytes: 6
  %loadMem_43aa15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa15 = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa15)
  store %struct.Memory* %call_43aa15, %struct.Memory** %MEMORY

  ; Code: movslq -0xb4(%rbp), %rsi	 RIP: 43aa1b	 Bytes: 7
  %loadMem_43aa1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa1b = call %struct.Memory* @routine_movslq_MINUS0xb4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa1b)
  store %struct.Memory* %call_43aa1b, %struct.Memory** %MEMORY

  ; Code: movzbl 0x6cb980(,%rsi,1), %eax	 RIP: 43aa22	 Bytes: 8
  %loadMem_43aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa22 = call %struct.Memory* @routine_movzbl_0x6cb980___rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa22)
  store %struct.Memory* %call_43aa22, %struct.Memory** %MEMORY

  ; Code: imull -0x12c(%rbp), %eax	 RIP: 43aa2a	 Bytes: 7
  %loadMem_43aa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa2a = call %struct.Memory* @routine_imull_MINUS0x12c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa2a)
  store %struct.Memory* %call_43aa2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 43aa31	 Bytes: 6
  %loadMem_43aa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa31 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa31)
  store %struct.Memory* %call_43aa31, %struct.Memory** %MEMORY

  ; Code: movslq -0xb0(%rbp), %rsi	 RIP: 43aa37	 Bytes: 7
  %loadMem_43aa37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa37 = call %struct.Memory* @routine_movslq_MINUS0xb0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa37)
  store %struct.Memory* %call_43aa37, %struct.Memory** %MEMORY

  ; Code: imulq $0x5, %rsi, %rsi	 RIP: 43aa3e	 Bytes: 4
  %loadMem_43aa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa3e = call %struct.Memory* @routine_imulq__0x5___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa3e)
  store %struct.Memory* %call_43aa3e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 43aa42	 Bytes: 3
  %loadMem_43aa42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa42 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa42)
  store %struct.Memory* %call_43aa42, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xa8(%rbp)	 RIP: 43aa45	 Bytes: 7
  %loadMem_43aa45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa45 = call %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa45)
  store %struct.Memory* %call_43aa45, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43aa4c	 Bytes: 7
  %loadMem_43aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa4c = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa4c)
  store %struct.Memory* %call_43aa4c, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx), %eax	 RIP: 43aa53	 Bytes: 3
  %loadMem_43aa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa53 = call %struct.Memory* @routine_movzwl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa53)
  store %struct.Memory* %call_43aa53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 43aa56	 Bytes: 3
  %loadMem_43aa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa56 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa56)
  store %struct.Memory* %call_43aa56, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43aa59	 Bytes: 7
  %loadMem_43aa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa59 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa59)
  store %struct.Memory* %call_43aa59, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx), %eax	 RIP: 43aa60	 Bytes: 3
  %loadMem_43aa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa60 = call %struct.Memory* @routine_movzwl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa60)
  store %struct.Memory* %call_43aa60, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 43aa63	 Bytes: 6
  %loadMem_43aa63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa63 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa63)
  store %struct.Memory* %call_43aa63, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43aa69	 Bytes: 7
  %loadMem_43aa69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa69 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa69)
  store %struct.Memory* %call_43aa69, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 43aa70	 Bytes: 2
  %loadMem_43aa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa70 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa70)
  store %struct.Memory* %call_43aa70, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %eax	 RIP: 43aa72	 Bytes: 3
  %loadMem_43aa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa72 = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa72)
  store %struct.Memory* %call_43aa72, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43aa75	 Bytes: 3
  %loadMem_43aa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa75 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa75)
  store %struct.Memory* %call_43aa75, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aa78	 Bytes: 4
  %loadMem_43aa78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa78 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa78)
  store %struct.Memory* %call_43aa78, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 43aa7c	 Bytes: 3
  %loadMem_43aa7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa7c = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa7c)
  store %struct.Memory* %call_43aa7c, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43aa7f	 Bytes: 7
  %loadMem_43aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa7f = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa7f)
  store %struct.Memory* %call_43aa7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rsi	 RIP: 43aa86	 Bytes: 4
  %loadMem_43aa86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa86 = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa86)
  store %struct.Memory* %call_43aa86, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aa8a	 Bytes: 4
  %loadMem_43aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa8a = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa8a)
  store %struct.Memory* %call_43aa8a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 43aa8e	 Bytes: 6
  %loadMem_43aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa8e = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa8e)
  store %struct.Memory* %call_43aa8e, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43aa94	 Bytes: 7
  %loadMem_43aa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa94 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa94)
  store %struct.Memory* %call_43aa94, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 43aa9b	 Bytes: 2
  %loadMem_43aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa9b = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa9b)
  store %struct.Memory* %call_43aa9b, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %eax	 RIP: 43aa9d	 Bytes: 3
  %loadMem_43aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aa9d = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aa9d)
  store %struct.Memory* %call_43aa9d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43aaa0	 Bytes: 3
  %loadMem_43aaa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaa0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaa0)
  store %struct.Memory* %call_43aaa0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43aaa3	 Bytes: 3
  %loadMem_43aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaa3 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaa3)
  store %struct.Memory* %call_43aaa3, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aaa6	 Bytes: 4
  %loadMem_43aaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaa6 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaa6)
  store %struct.Memory* %call_43aaa6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 43aaaa	 Bytes: 3
  %loadMem_43aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaaa = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaaa)
  store %struct.Memory* %call_43aaaa, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43aaad	 Bytes: 7
  %loadMem_43aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaad = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaad)
  store %struct.Memory* %call_43aaad, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 43aab4	 Bytes: 3
  %loadMem_43aab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aab4 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aab4)
  store %struct.Memory* %call_43aab4, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43aab7	 Bytes: 3
  %loadMem_43aab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aab7 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aab7)
  store %struct.Memory* %call_43aab7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43aaba	 Bytes: 3
  %loadMem_43aaba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaba = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaba)
  store %struct.Memory* %call_43aaba, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aabd	 Bytes: 4
  %loadMem_43aabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aabd = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aabd)
  store %struct.Memory* %call_43aabd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 43aac1	 Bytes: 6
  %loadMem_43aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aac1 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aac1)
  store %struct.Memory* %call_43aac1, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43aac7	 Bytes: 7
  %loadMem_43aac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aac7 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aac7)
  store %struct.Memory* %call_43aac7, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 43aace	 Bytes: 3
  %loadMem_43aace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aace = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aace)
  store %struct.Memory* %call_43aace, %struct.Memory** %MEMORY

  ; Code: imull $0x3, %ecx, %eax	 RIP: 43aad1	 Bytes: 3
  %loadMem_43aad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aad1 = call %struct.Memory* @routine_imull__0x3___ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aad1)
  store %struct.Memory* %call_43aad1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43aad4	 Bytes: 3
  %loadMem_43aad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aad4 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aad4)
  store %struct.Memory* %call_43aad4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aad7	 Bytes: 4
  %loadMem_43aad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aad7 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aad7)
  store %struct.Memory* %call_43aad7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 43aadb	 Bytes: 6
  %loadMem_43aadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aadb = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aadb)
  store %struct.Memory* %call_43aadb, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43aae1	 Bytes: 7
  %loadMem_43aae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aae1 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aae1)
  store %struct.Memory* %call_43aae1, %struct.Memory** %MEMORY

  ; Code: imull $0x3, -0x60(%rbp), %eax	 RIP: 43aae8	 Bytes: 4
  %loadMem_43aae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aae8 = call %struct.Memory* @routine_imull__0x3__MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aae8)
  store %struct.Memory* %call_43aae8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43aaec	 Bytes: 3
  %loadMem_43aaec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaec = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaec)
  store %struct.Memory* %call_43aaec, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %eax	 RIP: 43aaef	 Bytes: 4
  %loadMem_43aaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaef = call %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaef)
  store %struct.Memory* %call_43aaef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 43aaf3	 Bytes: 6
  %loadMem_43aaf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaf3 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaf3)
  store %struct.Memory* %call_43aaf3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 43aaf9	 Bytes: 4
  %loadMem_43aaf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aaf9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aaf9)
  store %struct.Memory* %call_43aaf9, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rsi	 RIP: 43aafd	 Bytes: 7
  %loadMem_43aafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aafd = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aafd)
  store %struct.Memory* %call_43aafd, %struct.Memory** %MEMORY

  ; Code: movzbl (%rdx,%rsi,1), %eax	 RIP: 43ab04	 Bytes: 4
  %loadMem_43ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab04 = call %struct.Memory* @routine_movzbl___rdx__rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab04)
  store %struct.Memory* %call_43ab04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 43ab08	 Bytes: 3
  %loadMem_43ab08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab08 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab08)
  store %struct.Memory* %call_43ab08, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43ab0b	 Bytes: 3
  %loadMem_43ab0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab0b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab0b)
  store %struct.Memory* %call_43ab0b, %struct.Memory** %MEMORY

  ; Code: je .L_43b32b	 RIP: 43ab0e	 Bytes: 6
  %loadMem_43ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab0e = call %struct.Memory* @routine_je_.L_43b32b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab0e, i8* %BRANCH_TAKEN, i64 2077, i64 6, i64 6)
  store %struct.Memory* %call_43ab0e, %struct.Memory** %MEMORY

  %loadBr_43ab0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ab0e = icmp eq i8 %loadBr_43ab0e, 1
  br i1 %cmpBr_43ab0e, label %block_.L_43b32b, label %block_43ab14

block_43ab14:
  ; Code: movl -0x84(%rbp), %eax	 RIP: 43ab14	 Bytes: 6
  %loadMem_43ab14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab14 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab14)
  store %struct.Memory* %call_43ab14, %struct.Memory** %MEMORY

  ; Code: subl -0x80(%rbp), %eax	 RIP: 43ab1a	 Bytes: 3
  %loadMem_43ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab1a = call %struct.Memory* @routine_subl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab1a)
  store %struct.Memory* %call_43ab1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 43ab1d	 Bytes: 3
  %loadMem_43ab1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab1d = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab1d)
  store %struct.Memory* %call_43ab1d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43ab20	 Bytes: 2
  %loadMem_43ab20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab20 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab20)
  store %struct.Memory* %call_43ab20, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43ab22	 Bytes: 5
  %loadMem1_43ab22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43ab22 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43ab22, i64 -236322, i64 5, i64 5)
  store %struct.Memory* %call1_43ab22, %struct.Memory** %MEMORY

  %loadMem2_43ab22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ab22 = load i64, i64* %3
  %call2_43ab22 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43ab22, %struct.Memory* %loadMem2_43ab22)
  store %struct.Memory* %call2_43ab22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 43ab27	 Bytes: 3
  %loadMem_43ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab27 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab27)
  store %struct.Memory* %call_43ab27, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 43ab2a	 Bytes: 3
  %loadMem_43ab2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab2a = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab2a)
  store %struct.Memory* %call_43ab2a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x9c(%rbp), %eax	 RIP: 43ab2d	 Bytes: 6
  %loadMem_43ab2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab2d = call %struct.Memory* @routine_cmpl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab2d)
  store %struct.Memory* %call_43ab2d, %struct.Memory** %MEMORY

  ; Code: jge .L_43b326	 RIP: 43ab33	 Bytes: 6
  %loadMem_43ab33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab33 = call %struct.Memory* @routine_jge_.L_43b326(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab33, i8* %BRANCH_TAKEN, i64 2035, i64 6, i64 6)
  store %struct.Memory* %call_43ab33, %struct.Memory** %MEMORY

  %loadBr_43ab33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ab33 = icmp eq i8 %loadBr_43ab33, 1
  br i1 %cmpBr_43ab33, label %block_.L_43b326, label %block_43ab39

block_43ab39:
  ; Code: movq -0xa8(%rbp), %rax	 RIP: 43ab39	 Bytes: 7
  %loadMem_43ab39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab39 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab39)
  store %struct.Memory* %call_43ab39, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rcx	 RIP: 43ab40	 Bytes: 4
  %loadMem_43ab40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab40 = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab40)
  store %struct.Memory* %call_43ab40, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax,%rcx,1), %edx	 RIP: 43ab44	 Bytes: 4
  %loadMem_43ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab44 = call %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab44)
  store %struct.Memory* %call_43ab44, %struct.Memory** %MEMORY

  ; Code: imull -0x12c(%rbp), %edx	 RIP: 43ab48	 Bytes: 7
  %loadMem_43ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab48 = call %struct.Memory* @routine_imull_MINUS0x12c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab48)
  store %struct.Memory* %call_43ab48, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x64(%rbp)	 RIP: 43ab4f	 Bytes: 3
  %loadMem_43ab4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab4f = call %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab4f)
  store %struct.Memory* %call_43ab4f, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %edx	 RIP: 43ab52	 Bytes: 6
  %loadMem_43ab52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab52 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab52)
  store %struct.Memory* %call_43ab52, %struct.Memory** %MEMORY

  ; Code: subl -0x88(%rbp), %edx	 RIP: 43ab58	 Bytes: 6
  %loadMem_43ab58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab58 = call %struct.Memory* @routine_subl_MINUS0x88__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab58)
  store %struct.Memory* %call_43ab58, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 43ab5e	 Bytes: 2
  %loadMem_43ab5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab5e = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab5e)
  store %struct.Memory* %call_43ab5e, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43ab60	 Bytes: 5
  %loadMem1_43ab60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43ab60 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43ab60, i64 -236384, i64 5, i64 5)
  store %struct.Memory* %call1_43ab60, %struct.Memory** %MEMORY

  %loadMem2_43ab60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ab60 = load i64, i64* %3
  %call2_43ab60 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43ab60, %struct.Memory* %loadMem2_43ab60)
  store %struct.Memory* %call2_43ab60, %struct.Memory** %MEMORY

  ; Code: subl -0xa0(%rbp), %eax	 RIP: 43ab65	 Bytes: 6
  %loadMem_43ab65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab65 = call %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab65)
  store %struct.Memory* %call_43ab65, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %edx	 RIP: 43ab6b	 Bytes: 3
  %loadMem_43ab6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab6b = call %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab6b)
  store %struct.Memory* %call_43ab6b, %struct.Memory** %MEMORY

  ; Code: subl -0x7c(%rbp), %edx	 RIP: 43ab6e	 Bytes: 3
  %loadMem_43ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab6e = call %struct.Memory* @routine_subl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab6e)
  store %struct.Memory* %call_43ab6e, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 43ab71	 Bytes: 2
  %loadMem_43ab71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab71 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab71)
  store %struct.Memory* %call_43ab71, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ac(%rbp)	 RIP: 43ab73	 Bytes: 6
  %loadMem_43ab73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab73 = call %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab73)
  store %struct.Memory* %call_43ab73, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43ab79	 Bytes: 5
  %loadMem1_43ab79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43ab79 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43ab79, i64 -236409, i64 5, i64 5)
  store %struct.Memory* %call1_43ab79, %struct.Memory** %MEMORY

  %loadMem2_43ab79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ab79 = load i64, i64* %3
  %call2_43ab79 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43ab79, %struct.Memory* %loadMem2_43ab79)
  store %struct.Memory* %call2_43ab79, %struct.Memory** %MEMORY

  ; Code: subl -0xa0(%rbp), %eax	 RIP: 43ab7e	 Bytes: 6
  %loadMem_43ab7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab7e = call %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab7e)
  store %struct.Memory* %call_43ab7e, %struct.Memory** %MEMORY

  ; Code: movl -0x1ac(%rbp), %edx	 RIP: 43ab84	 Bytes: 6
  %loadMem_43ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab84 = call %struct.Memory* @routine_movl_MINUS0x1ac__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab84)
  store %struct.Memory* %call_43ab84, %struct.Memory** %MEMORY

  ; Code: andl %eax, %edx	 RIP: 43ab8a	 Bytes: 2
  %loadMem_43ab8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab8a = call %struct.Memory* @routine_andl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab8a)
  store %struct.Memory* %call_43ab8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43ab8c	 Bytes: 3
  %loadMem_43ab8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab8c = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab8c)
  store %struct.Memory* %call_43ab8c, %struct.Memory** %MEMORY

  ; Code: jge .L_43b321	 RIP: 43ab8f	 Bytes: 6
  %loadMem_43ab8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab8f = call %struct.Memory* @routine_jge_.L_43b321(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab8f, i8* %BRANCH_TAKEN, i64 1938, i64 6, i64 6)
  store %struct.Memory* %call_43ab8f, %struct.Memory** %MEMORY

  %loadBr_43ab8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ab8f = icmp eq i8 %loadBr_43ab8f, 1
  br i1 %cmpBr_43ab8f, label %block_.L_43b321, label %block_43ab95

block_43ab95:
  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43ab95	 Bytes: 4
  %loadMem_43ab95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab95 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab95)
  store %struct.Memory* %call_43ab95, %struct.Memory** %MEMORY

  ; Code: jne .L_43abe9	 RIP: 43ab99	 Bytes: 6
  %loadMem_43ab99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab99 = call %struct.Memory* @routine_jne_.L_43abe9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab99, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_43ab99, %struct.Memory** %MEMORY

  %loadBr_43ab99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ab99 = icmp eq i8 %loadBr_43ab99, 1
  br i1 %cmpBr_43ab99, label %block_.L_43abe9, label %block_43ab9f

block_43ab9f:
  ; Code: movl -0x84(%rbp), %eax	 RIP: 43ab9f	 Bytes: 6
  %loadMem_43ab9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ab9f = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ab9f)
  store %struct.Memory* %call_43ab9f, %struct.Memory** %MEMORY

  ; Code: subl -0x8c(%rbp), %eax	 RIP: 43aba5	 Bytes: 6
  %loadMem_43aba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aba5 = call %struct.Memory* @routine_subl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aba5)
  store %struct.Memory* %call_43aba5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43abab	 Bytes: 2
  %loadMem_43abab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abab = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abab)
  store %struct.Memory* %call_43abab, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43abad	 Bytes: 5
  %loadMem1_43abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43abad = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43abad, i64 -236461, i64 5, i64 5)
  store %struct.Memory* %call1_43abad, %struct.Memory** %MEMORY

  %loadMem2_43abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43abad = load i64, i64* %3
  %call2_43abad = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43abad, %struct.Memory* %loadMem2_43abad)
  store %struct.Memory* %call2_43abad, %struct.Memory** %MEMORY

  ; Code: subl -0xa0(%rbp), %eax	 RIP: 43abb2	 Bytes: 6
  %loadMem_43abb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abb2 = call %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abb2)
  store %struct.Memory* %call_43abb2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43abb8	 Bytes: 3
  %loadMem_43abb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abb8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abb8)
  store %struct.Memory* %call_43abb8, %struct.Memory** %MEMORY

  ; Code: setl %cl	 RIP: 43abbb	 Bytes: 3
  %loadMem_43abbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abbb = call %struct.Memory* @routine_setl__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abbb)
  store %struct.Memory* %call_43abbb, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %cl	 RIP: 43abbe	 Bytes: 3
  %loadMem_43abbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abbe = call %struct.Memory* @routine_andb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abbe)
  store %struct.Memory* %call_43abbe, %struct.Memory** %MEMORY

  ; Code: movzbl %cl, %eax	 RIP: 43abc1	 Bytes: 3
  %loadMem_43abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abc1 = call %struct.Memory* @routine_movzbl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abc1)
  store %struct.Memory* %call_43abc1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43abc4	 Bytes: 3
  %loadMem_43abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abc4 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abc4)
  store %struct.Memory* %call_43abc4, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43abc7	 Bytes: 3
  %loadMem_43abc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abc7 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abc7)
  store %struct.Memory* %call_43abc7, %struct.Memory** %MEMORY

  ; Code: subl -0x78(%rbp), %eax	 RIP: 43abca	 Bytes: 3
  %loadMem_43abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abca = call %struct.Memory* @routine_subl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abca)
  store %struct.Memory* %call_43abca, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43abcd	 Bytes: 2
  %loadMem_43abcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abcd = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abcd)
  store %struct.Memory* %call_43abcd, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43abcf	 Bytes: 5
  %loadMem1_43abcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43abcf = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43abcf, i64 -236495, i64 5, i64 5)
  store %struct.Memory* %call1_43abcf, %struct.Memory** %MEMORY

  %loadMem2_43abcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43abcf = load i64, i64* %3
  %call2_43abcf = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43abcf, %struct.Memory* %loadMem2_43abcf)
  store %struct.Memory* %call2_43abcf, %struct.Memory** %MEMORY

  ; Code: subl -0xa0(%rbp), %eax	 RIP: 43abd4	 Bytes: 6
  %loadMem_43abd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abd4 = call %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abd4)
  store %struct.Memory* %call_43abd4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43abda	 Bytes: 3
  %loadMem_43abda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abda = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abda)
  store %struct.Memory* %call_43abda, %struct.Memory** %MEMORY

  ; Code: setl %cl	 RIP: 43abdd	 Bytes: 3
  %loadMem_43abdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abdd = call %struct.Memory* @routine_setl__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abdd)
  store %struct.Memory* %call_43abdd, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %cl	 RIP: 43abe0	 Bytes: 3
  %loadMem_43abe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abe0 = call %struct.Memory* @routine_andb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abe0)
  store %struct.Memory* %call_43abe0, %struct.Memory** %MEMORY

  ; Code: movzbl %cl, %eax	 RIP: 43abe3	 Bytes: 3
  %loadMem_43abe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abe3 = call %struct.Memory* @routine_movzbl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abe3)
  store %struct.Memory* %call_43abe3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43abe6	 Bytes: 3
  %loadMem_43abe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abe6 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abe6)
  store %struct.Memory* %call_43abe6, %struct.Memory** %MEMORY

  ; Code: .L_43abe9:	 RIP: 43abe9	 Bytes: 0
  br label %block_.L_43abe9
block_.L_43abe9:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43abe9	 Bytes: 3
  %loadMem_43abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abe9 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abe9)
  store %struct.Memory* %call_43abe9, %struct.Memory** %MEMORY

  ; Code: addl -0x84(%rbp), %eax	 RIP: 43abec	 Bytes: 6
  %loadMem_43abec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abec = call %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abec)
  store %struct.Memory* %call_43abec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 43abf2	 Bytes: 6
  %loadMem_43abf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abf2 = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abf2)
  store %struct.Memory* %call_43abf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x58(%rbp)	 RIP: 43abf8	 Bytes: 4
  %loadMem_43abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abf8 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abf8)
  store %struct.Memory* %call_43abf8, %struct.Memory** %MEMORY

  ; Code: jne .L_43aebe	 RIP: 43abfc	 Bytes: 6
  %loadMem_43abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43abfc = call %struct.Memory* @routine_jne_.L_43aebe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43abfc, i8* %BRANCH_TAKEN, i64 706, i64 6, i64 6)
  store %struct.Memory* %call_43abfc, %struct.Memory** %MEMORY

  %loadBr_43abfc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43abfc = icmp eq i8 %loadBr_43abfc, 1
  br i1 %cmpBr_43abfc, label %block_.L_43aebe, label %block_43ac02

block_43ac02:
  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43ac02	 Bytes: 4
  %loadMem_43ac02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac02 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac02)
  store %struct.Memory* %call_43ac02, %struct.Memory** %MEMORY

  ; Code: je .L_43ac58	 RIP: 43ac06	 Bytes: 6
  %loadMem_43ac06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac06 = call %struct.Memory* @routine_je_.L_43ac58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac06, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_43ac06, %struct.Memory** %MEMORY

  %loadBr_43ac06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ac06 = icmp eq i8 %loadBr_43ac06, 1
  br i1 %cmpBr_43ac06, label %block_.L_43ac58, label %block_43ac0c

block_43ac0c:
  ; Code: movl -0x88(%rbp), %eax	 RIP: 43ac0c	 Bytes: 6
  %loadMem_43ac0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac0c = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac0c)
  store %struct.Memory* %call_43ac0c, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ac12	 Bytes: 3
  %loadMem_43ac12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac12 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac12)
  store %struct.Memory* %call_43ac12, %struct.Memory** %MEMORY

  ; Code: addl -0x84(%rbp), %eax	 RIP: 43ac15	 Bytes: 6
  %loadMem_43ac15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac15 = call %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac15)
  store %struct.Memory* %call_43ac15, %struct.Memory** %MEMORY

  ; Code: addl -0x7c(%rbp), %eax	 RIP: 43ac1b	 Bytes: 3
  %loadMem_43ac1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac1b = call %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac1b)
  store %struct.Memory* %call_43ac1b, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43ac1e	 Bytes: 3
  %loadMem_43ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac1e = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac1e)
  store %struct.Memory* %call_43ac1e, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43ac21	 Bytes: 3
  %loadMem_43ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac21 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac21)
  store %struct.Memory* %call_43ac21, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ac24	 Bytes: 3
  %loadMem_43ac24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac24 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac24)
  store %struct.Memory* %call_43ac24, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43ac27	 Bytes: 7
  %loadMem_43ac27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac27 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac27)
  store %struct.Memory* %call_43ac27, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43ac2e	 Bytes: 3
  %loadMem_43ac2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac2e = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac2e)
  store %struct.Memory* %call_43ac2e, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43ac31	 Bytes: 3
  %loadMem_43ac31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac31 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac31)
  store %struct.Memory* %call_43ac31, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ac34	 Bytes: 3
  %loadMem_43ac34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac34 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac34)
  store %struct.Memory* %call_43ac34, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 43ac37	 Bytes: 3
  %loadMem_43ac37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac37 = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac37)
  store %struct.Memory* %call_43ac37, %struct.Memory** %MEMORY

  ; Code: addl -0x88(%rbp), %eax	 RIP: 43ac3a	 Bytes: 6
  %loadMem_43ac3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac3a = call %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac3a)
  store %struct.Memory* %call_43ac3a, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43ac40	 Bytes: 3
  %loadMem_43ac40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac40 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac40)
  store %struct.Memory* %call_43ac40, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43ac43	 Bytes: 3
  %loadMem_43ac43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac43 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac43)
  store %struct.Memory* %call_43ac43, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ac46	 Bytes: 3
  %loadMem_43ac46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac46 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac46)
  store %struct.Memory* %call_43ac46, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43ac49	 Bytes: 7
  %loadMem_43ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac49 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac49)
  store %struct.Memory* %call_43ac49, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43ac50	 Bytes: 3
  %loadMem_43ac50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac50 = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac50)
  store %struct.Memory* %call_43ac50, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43aeb9	 RIP: 43ac53	 Bytes: 5
  %loadMem_43ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac53 = call %struct.Memory* @routine_jmpq_.L_43aeb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac53, i64 614, i64 5)
  store %struct.Memory* %call_43ac53, %struct.Memory** %MEMORY

  br label %block_.L_43aeb9

  ; Code: .L_43ac58:	 RIP: 43ac58	 Bytes: 0
block_.L_43ac58:

  ; Code: movl -0x74(%rbp), %eax	 RIP: 43ac58	 Bytes: 3
  %loadMem_43ac58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac58 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac58)
  store %struct.Memory* %call_43ac58, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %ecx	 RIP: 43ac5b	 Bytes: 6
  %loadMem_43ac5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac5b = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac5b)
  store %struct.Memory* %call_43ac5b, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 43ac61	 Bytes: 3
  %loadMem_43ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac61 = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac61)
  store %struct.Memory* %call_43ac61, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 43ac64	 Bytes: 3
  %loadMem_43ac64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac64 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac64)
  store %struct.Memory* %call_43ac64, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43ac67	 Bytes: 2
  %loadMem_43ac67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac67 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac67)
  store %struct.Memory* %call_43ac67, %struct.Memory** %MEMORY

  ; Code: setl %dl	 RIP: 43ac69	 Bytes: 3
  %loadMem_43ac69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac69 = call %struct.Memory* @routine_setl__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac69)
  store %struct.Memory* %call_43ac69, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %dl	 RIP: 43ac6c	 Bytes: 3
  %loadMem_43ac6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac6c = call %struct.Memory* @routine_andb__0x1___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac6c)
  store %struct.Memory* %call_43ac6c, %struct.Memory** %MEMORY

  ; Code: movzbl %dl, %eax	 RIP: 43ac6f	 Bytes: 3
  %loadMem_43ac6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac6f = call %struct.Memory* @routine_movzbl__dl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac6f)
  store %struct.Memory* %call_43ac6f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 43ac72	 Bytes: 6
  %loadMem_43ac72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac72 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac72)
  store %struct.Memory* %call_43ac72, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %eax	 RIP: 43ac78	 Bytes: 6
  %loadMem_43ac78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac78 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac78)
  store %struct.Memory* %call_43ac78, %struct.Memory** %MEMORY

  ; Code: andl -0x54(%rbp), %eax	 RIP: 43ac7e	 Bytes: 3
  %loadMem_43ac7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac7e = call %struct.Memory* @routine_andl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac7e)
  store %struct.Memory* %call_43ac7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43ac81	 Bytes: 3
  %loadMem_43ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac81 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac81)
  store %struct.Memory* %call_43ac81, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %eax	 RIP: 43ac84	 Bytes: 6
  %loadMem_43ac84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac84 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac84)
  store %struct.Memory* %call_43ac84, %struct.Memory** %MEMORY

  ; Code: andl -0x50(%rbp), %eax	 RIP: 43ac8a	 Bytes: 3
  %loadMem_43ac8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac8a = call %struct.Memory* @routine_andl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac8a)
  store %struct.Memory* %call_43ac8a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43ac8d	 Bytes: 3
  %loadMem_43ac8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac8d = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac8d)
  store %struct.Memory* %call_43ac8d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x54(%rbp)	 RIP: 43ac90	 Bytes: 4
  %loadMem_43ac90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac90 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac90)
  store %struct.Memory* %call_43ac90, %struct.Memory** %MEMORY

  ; Code: je .L_43acc5	 RIP: 43ac94	 Bytes: 6
  %loadMem_43ac94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac94 = call %struct.Memory* @routine_je_.L_43acc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac94, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_43ac94, %struct.Memory** %MEMORY

  %loadBr_43ac94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ac94 = icmp eq i8 %loadBr_43ac94, 1
  br i1 %cmpBr_43ac94, label %block_.L_43acc5, label %block_43ac9a

block_43ac9a:
  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43ac9a	 Bytes: 3
  %loadMem_43ac9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac9a = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac9a)
  store %struct.Memory* %call_43ac9a, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %ecx	 RIP: 43ac9d	 Bytes: 6
  %loadMem_43ac9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ac9d = call %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ac9d)
  store %struct.Memory* %call_43ac9d, %struct.Memory** %MEMORY

  ; Code: addl -0x90(%rbp), %ecx	 RIP: 43aca3	 Bytes: 6
  %loadMem_43aca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aca3 = call %struct.Memory* @routine_addl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aca3)
  store %struct.Memory* %call_43aca3, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43aca9	 Bytes: 3
  %loadMem_43aca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aca9 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aca9)
  store %struct.Memory* %call_43aca9, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43acac	 Bytes: 2
  %loadMem_43acac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acac = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acac)
  store %struct.Memory* %call_43acac, %struct.Memory** %MEMORY

  ; Code: addl -0x8c(%rbp), %eax	 RIP: 43acae	 Bytes: 6
  %loadMem_43acae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acae = call %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acae)
  store %struct.Memory* %call_43acae, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43acb4	 Bytes: 3
  %loadMem_43acb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acb4 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acb4)
  store %struct.Memory* %call_43acb4, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43acb7	 Bytes: 3
  %loadMem_43acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acb7 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acb7)
  store %struct.Memory* %call_43acb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b0(%rbp)	 RIP: 43acba	 Bytes: 6
  %loadMem_43acba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acba = call %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acba)
  store %struct.Memory* %call_43acba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ace3	 RIP: 43acc0	 Bytes: 5
  %loadMem_43acc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acc0 = call %struct.Memory* @routine_jmpq_.L_43ace3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acc0, i64 35, i64 5)
  store %struct.Memory* %call_43acc0, %struct.Memory** %MEMORY

  br label %block_.L_43ace3

  ; Code: .L_43acc5:	 RIP: 43acc5	 Bytes: 0
block_.L_43acc5:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 43acc5	 Bytes: 6
  %loadMem_43acc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acc5 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acc5)
  store %struct.Memory* %call_43acc5, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43accb	 Bytes: 3
  %loadMem_43accb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43accb = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43accb)
  store %struct.Memory* %call_43accb, %struct.Memory** %MEMORY

  ; Code: addl -0x84(%rbp), %eax	 RIP: 43acce	 Bytes: 6
  %loadMem_43acce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acce = call %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acce)
  store %struct.Memory* %call_43acce, %struct.Memory** %MEMORY

  ; Code: addl -0x7c(%rbp), %eax	 RIP: 43acd4	 Bytes: 3
  %loadMem_43acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acd4 = call %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acd4)
  store %struct.Memory* %call_43acd4, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43acd7	 Bytes: 3
  %loadMem_43acd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acd7 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acd7)
  store %struct.Memory* %call_43acd7, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43acda	 Bytes: 3
  %loadMem_43acda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acda = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acda)
  store %struct.Memory* %call_43acda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b0(%rbp)	 RIP: 43acdd	 Bytes: 6
  %loadMem_43acdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acdd = call %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acdd)
  store %struct.Memory* %call_43acdd, %struct.Memory** %MEMORY

  ; Code: .L_43ace3:	 RIP: 43ace3	 Bytes: 0
  br label %block_.L_43ace3
block_.L_43ace3:

  ; Code: movl -0x1b0(%rbp), %eax	 RIP: 43ace3	 Bytes: 6
  %loadMem_43ace3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ace3 = call %struct.Memory* @routine_movl_MINUS0x1b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ace3)
  store %struct.Memory* %call_43ace3, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ace9	 Bytes: 3
  %loadMem_43ace9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ace9 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ace9)
  store %struct.Memory* %call_43ace9, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43acec	 Bytes: 7
  %loadMem_43acec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acec = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acec)
  store %struct.Memory* %call_43acec, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43acf3	 Bytes: 3
  %loadMem_43acf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acf3 = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acf3)
  store %struct.Memory* %call_43acf3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43acf6	 Bytes: 4
  %loadMem_43acf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acf6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acf6)
  store %struct.Memory* %call_43acf6, %struct.Memory** %MEMORY

  ; Code: je .L_43ad28	 RIP: 43acfa	 Bytes: 6
  %loadMem_43acfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43acfa = call %struct.Memory* @routine_je_.L_43ad28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43acfa, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_43acfa, %struct.Memory** %MEMORY

  %loadBr_43acfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43acfa = icmp eq i8 %loadBr_43acfa, 1
  br i1 %cmpBr_43acfa, label %block_.L_43ad28, label %block_43ad00

block_43ad00:
  ; Code: movl -0x88(%rbp), %eax	 RIP: 43ad00	 Bytes: 6
  %loadMem_43ad00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad00 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad00)
  store %struct.Memory* %call_43ad00, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 43ad06	 Bytes: 3
  %loadMem_43ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad06 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad06)
  store %struct.Memory* %call_43ad06, %struct.Memory** %MEMORY

  ; Code: addl -0x90(%rbp), %ecx	 RIP: 43ad09	 Bytes: 6
  %loadMem_43ad09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad09 = call %struct.Memory* @routine_addl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad09)
  store %struct.Memory* %call_43ad09, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43ad0f	 Bytes: 3
  %loadMem_43ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad0f = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad0f)
  store %struct.Memory* %call_43ad0f, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43ad12	 Bytes: 2
  %loadMem_43ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad12 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad12)
  store %struct.Memory* %call_43ad12, %struct.Memory** %MEMORY

  ; Code: addl -0x78(%rbp), %eax	 RIP: 43ad14	 Bytes: 3
  %loadMem_43ad14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad14 = call %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad14)
  store %struct.Memory* %call_43ad14, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43ad17	 Bytes: 3
  %loadMem_43ad17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad17 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad17)
  store %struct.Memory* %call_43ad17, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43ad1a	 Bytes: 3
  %loadMem_43ad1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad1a = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad1a)
  store %struct.Memory* %call_43ad1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 43ad1d	 Bytes: 6
  %loadMem_43ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad1d = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad1d)
  store %struct.Memory* %call_43ad1d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ad43	 RIP: 43ad23	 Bytes: 5
  %loadMem_43ad23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad23 = call %struct.Memory* @routine_jmpq_.L_43ad43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad23, i64 32, i64 5)
  store %struct.Memory* %call_43ad23, %struct.Memory** %MEMORY

  br label %block_.L_43ad43

  ; Code: .L_43ad28:	 RIP: 43ad28	 Bytes: 0
block_.L_43ad28:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43ad28	 Bytes: 3
  %loadMem_43ad28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad28 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad28)
  store %struct.Memory* %call_43ad28, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ad2b	 Bytes: 3
  %loadMem_43ad2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad2b = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad2b)
  store %struct.Memory* %call_43ad2b, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 43ad2e	 Bytes: 3
  %loadMem_43ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad2e = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad2e)
  store %struct.Memory* %call_43ad2e, %struct.Memory** %MEMORY

  ; Code: addl -0x88(%rbp), %eax	 RIP: 43ad31	 Bytes: 6
  %loadMem_43ad31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad31 = call %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad31)
  store %struct.Memory* %call_43ad31, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43ad37	 Bytes: 3
  %loadMem_43ad37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad37 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad37)
  store %struct.Memory* %call_43ad37, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43ad3a	 Bytes: 3
  %loadMem_43ad3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad3a = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad3a)
  store %struct.Memory* %call_43ad3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b4(%rbp)	 RIP: 43ad3d	 Bytes: 6
  %loadMem_43ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad3d = call %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad3d)
  store %struct.Memory* %call_43ad3d, %struct.Memory** %MEMORY

  ; Code: .L_43ad43:	 RIP: 43ad43	 Bytes: 0
  br label %block_.L_43ad43
block_.L_43ad43:

  ; Code: movl -0x1b4(%rbp), %eax	 RIP: 43ad43	 Bytes: 6
  %loadMem_43ad43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad43 = call %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad43)
  store %struct.Memory* %call_43ad43, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ad49	 Bytes: 3
  %loadMem_43ad49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad49 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad49)
  store %struct.Memory* %call_43ad49, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43ad4c	 Bytes: 7
  %loadMem_43ad4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad4c = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad4c)
  store %struct.Memory* %call_43ad4c, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43ad53	 Bytes: 3
  %loadMem_43ad53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad53 = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad53)
  store %struct.Memory* %call_43ad53, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x54(%rbp)	 RIP: 43ad56	 Bytes: 4
  %loadMem_43ad56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad56 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad56)
  store %struct.Memory* %call_43ad56, %struct.Memory** %MEMORY

  ; Code: je .L_43ad86	 RIP: 43ad5a	 Bytes: 6
  %loadMem_43ad5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad5a = call %struct.Memory* @routine_je_.L_43ad86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad5a, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_43ad5a, %struct.Memory** %MEMORY

  %loadBr_43ad5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ad5a = icmp eq i8 %loadBr_43ad5a, 1
  br i1 %cmpBr_43ad5a, label %block_.L_43ad86, label %block_43ad60

block_43ad60:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 43ad60	 Bytes: 6
  %loadMem_43ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad60 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad60)
  store %struct.Memory* %call_43ad60, %struct.Memory** %MEMORY

  ; Code: addl -0x84(%rbp), %eax	 RIP: 43ad66	 Bytes: 6
  %loadMem_43ad66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad66 = call %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad66)
  store %struct.Memory* %call_43ad66, %struct.Memory** %MEMORY

  ; Code: addl -0x88(%rbp), %eax	 RIP: 43ad6c	 Bytes: 6
  %loadMem_43ad6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad6c = call %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad6c)
  store %struct.Memory* %call_43ad6c, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 43ad72	 Bytes: 3
  %loadMem_43ad72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad72 = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad72)
  store %struct.Memory* %call_43ad72, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43ad75	 Bytes: 3
  %loadMem_43ad75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad75 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad75)
  store %struct.Memory* %call_43ad75, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43ad78	 Bytes: 3
  %loadMem_43ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad78 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad78)
  store %struct.Memory* %call_43ad78, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 43ad7b	 Bytes: 6
  %loadMem_43ad7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad7b = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad7b)
  store %struct.Memory* %call_43ad7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ad92	 RIP: 43ad81	 Bytes: 5
  %loadMem_43ad81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad81 = call %struct.Memory* @routine_jmpq_.L_43ad92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad81, i64 17, i64 5)
  store %struct.Memory* %call_43ad81, %struct.Memory** %MEMORY

  br label %block_.L_43ad92

  ; Code: .L_43ad86:	 RIP: 43ad86	 Bytes: 0
block_.L_43ad86:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 43ad86	 Bytes: 6
  %loadMem_43ad86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad86 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad86)
  store %struct.Memory* %call_43ad86, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1b8(%rbp)	 RIP: 43ad8c	 Bytes: 6
  %loadMem_43ad8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad8c = call %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad8c)
  store %struct.Memory* %call_43ad8c, %struct.Memory** %MEMORY

  ; Code: .L_43ad92:	 RIP: 43ad92	 Bytes: 0
  br label %block_.L_43ad92
block_.L_43ad92:

  ; Code: movl -0x1b8(%rbp), %eax	 RIP: 43ad92	 Bytes: 6
  %loadMem_43ad92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad92 = call %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad92)
  store %struct.Memory* %call_43ad92, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ad98	 Bytes: 3
  %loadMem_43ad98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad98 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad98)
  store %struct.Memory* %call_43ad98, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43ad9b	 Bytes: 7
  %loadMem_43ad9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ad9b = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ad9b)
  store %struct.Memory* %call_43ad9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rsi	 RIP: 43ada2	 Bytes: 4
  %loadMem_43ada2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ada2 = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ada2)
  store %struct.Memory* %call_43ada2, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 43ada6	 Bytes: 4
  %loadMem_43ada6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ada6 = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ada6)
  store %struct.Memory* %call_43ada6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43adaa	 Bytes: 4
  %loadMem_43adaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adaa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adaa)
  store %struct.Memory* %call_43adaa, %struct.Memory** %MEMORY

  ; Code: je .L_43add4	 RIP: 43adae	 Bytes: 6
  %loadMem_43adae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adae = call %struct.Memory* @routine_je_.L_43add4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adae, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_43adae, %struct.Memory** %MEMORY

  %loadBr_43adae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43adae = icmp eq i8 %loadBr_43adae, 1
  br i1 %cmpBr_43adae, label %block_.L_43add4, label %block_43adb4

block_43adb4:
  ; Code: movl -0x78(%rbp), %eax	 RIP: 43adb4	 Bytes: 3
  %loadMem_43adb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adb4 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adb4)
  store %struct.Memory* %call_43adb4, %struct.Memory** %MEMORY

  ; Code: addl -0x7c(%rbp), %eax	 RIP: 43adb7	 Bytes: 3
  %loadMem_43adb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adb7 = call %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adb7)
  store %struct.Memory* %call_43adb7, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 43adba	 Bytes: 3
  %loadMem_43adba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adba = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adba)
  store %struct.Memory* %call_43adba, %struct.Memory** %MEMORY

  ; Code: addl -0x84(%rbp), %eax	 RIP: 43adbd	 Bytes: 6
  %loadMem_43adbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adbd = call %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adbd)
  store %struct.Memory* %call_43adbd, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 43adc3	 Bytes: 3
  %loadMem_43adc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adc3 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adc3)
  store %struct.Memory* %call_43adc3, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43adc6	 Bytes: 3
  %loadMem_43adc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adc6 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adc6)
  store %struct.Memory* %call_43adc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bc(%rbp)	 RIP: 43adc9	 Bytes: 6
  %loadMem_43adc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adc9 = call %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adc9)
  store %struct.Memory* %call_43adc9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43addd	 RIP: 43adcf	 Bytes: 5
  %loadMem_43adcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adcf = call %struct.Memory* @routine_jmpq_.L_43addd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adcf, i64 14, i64 5)
  store %struct.Memory* %call_43adcf, %struct.Memory** %MEMORY

  br label %block_.L_43addd

  ; Code: .L_43add4:	 RIP: 43add4	 Bytes: 0
block_.L_43add4:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43add4	 Bytes: 3
  %loadMem_43add4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43add4 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43add4)
  store %struct.Memory* %call_43add4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bc(%rbp)	 RIP: 43add7	 Bytes: 6
  %loadMem_43add7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43add7 = call %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43add7)
  store %struct.Memory* %call_43add7, %struct.Memory** %MEMORY

  ; Code: .L_43addd:	 RIP: 43addd	 Bytes: 0
  br label %block_.L_43addd
block_.L_43addd:

  ; Code: movl -0x1bc(%rbp), %eax	 RIP: 43addd	 Bytes: 6
  %loadMem_43addd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43addd = call %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43addd)
  store %struct.Memory* %call_43addd, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43ade3	 Bytes: 2
  %loadMem_43ade3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ade3 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ade3)
  store %struct.Memory* %call_43ade3, %struct.Memory** %MEMORY

  ; Code: movw %ax, %dx	 RIP: 43ade5	 Bytes: 3
  %loadMem_43ade5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ade5 = call %struct.Memory* @routine_movw__ax___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ade5)
  store %struct.Memory* %call_43ade5, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rsi	 RIP: 43ade8	 Bytes: 7
  %loadMem_43ade8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ade8 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ade8)
  store %struct.Memory* %call_43ade8, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 43adef	 Bytes: 3
  %loadMem_43adef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adef = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adef)
  store %struct.Memory* %call_43adef, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 43adf2	 Bytes: 3
  %loadMem_43adf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adf2 = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adf2)
  store %struct.Memory* %call_43adf2, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rsi,%rdi,2)	 RIP: 43adf5	 Bytes: 4
  %loadMem_43adf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adf5 = call %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adf5)
  store %struct.Memory* %call_43adf5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x54(%rbp)	 RIP: 43adf9	 Bytes: 4
  %loadMem_43adf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adf9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adf9)
  store %struct.Memory* %call_43adf9, %struct.Memory** %MEMORY

  ; Code: je .L_43ae35	 RIP: 43adfd	 Bytes: 6
  %loadMem_43adfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43adfd = call %struct.Memory* @routine_je_.L_43ae35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43adfd, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_43adfd, %struct.Memory** %MEMORY

  %loadBr_43adfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43adfd = icmp eq i8 %loadBr_43adfd, 1
  br i1 %cmpBr_43adfd, label %block_.L_43ae35, label %block_43ae03

block_43ae03:
  ; Code: movl -0x98(%rbp), %eax	 RIP: 43ae03	 Bytes: 6
  %loadMem_43ae03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae03 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae03)
  store %struct.Memory* %call_43ae03, %struct.Memory** %MEMORY

  ; Code: addl -0x8c(%rbp), %eax	 RIP: 43ae09	 Bytes: 6
  %loadMem_43ae09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae09 = call %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae09)
  store %struct.Memory* %call_43ae09, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ae0f	 Bytes: 3
  %loadMem_43ae0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae0f = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae0f)
  store %struct.Memory* %call_43ae0f, %struct.Memory** %MEMORY

  ; Code: addl -0x8c(%rbp), %eax	 RIP: 43ae12	 Bytes: 6
  %loadMem_43ae12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae12 = call %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae12)
  store %struct.Memory* %call_43ae12, %struct.Memory** %MEMORY

  ; Code: addl -0x88(%rbp), %eax	 RIP: 43ae18	 Bytes: 6
  %loadMem_43ae18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae18 = call %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae18)
  store %struct.Memory* %call_43ae18, %struct.Memory** %MEMORY

  ; Code: addl -0x90(%rbp), %eax	 RIP: 43ae1e	 Bytes: 6
  %loadMem_43ae1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae1e = call %struct.Memory* @routine_addl_MINUS0x90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae1e)
  store %struct.Memory* %call_43ae1e, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43ae24	 Bytes: 3
  %loadMem_43ae24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae24 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae24)
  store %struct.Memory* %call_43ae24, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43ae27	 Bytes: 3
  %loadMem_43ae27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae27 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae27)
  store %struct.Memory* %call_43ae27, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c0(%rbp)	 RIP: 43ae2a	 Bytes: 6
  %loadMem_43ae2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae2a = call %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae2a)
  store %struct.Memory* %call_43ae2a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ae41	 RIP: 43ae30	 Bytes: 5
  %loadMem_43ae30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae30 = call %struct.Memory* @routine_jmpq_.L_43ae41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae30, i64 17, i64 5)
  store %struct.Memory* %call_43ae30, %struct.Memory** %MEMORY

  br label %block_.L_43ae41

  ; Code: .L_43ae35:	 RIP: 43ae35	 Bytes: 0
block_.L_43ae35:

  ; Code: movl -0x8c(%rbp), %eax	 RIP: 43ae35	 Bytes: 6
  %loadMem_43ae35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae35 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae35)
  store %struct.Memory* %call_43ae35, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c0(%rbp)	 RIP: 43ae3b	 Bytes: 6
  %loadMem_43ae3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae3b = call %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae3b)
  store %struct.Memory* %call_43ae3b, %struct.Memory** %MEMORY

  ; Code: .L_43ae41:	 RIP: 43ae41	 Bytes: 0
  br label %block_.L_43ae41
block_.L_43ae41:

  ; Code: movl -0x1c0(%rbp), %eax	 RIP: 43ae41	 Bytes: 6
  %loadMem_43ae41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae41 = call %struct.Memory* @routine_movl_MINUS0x1c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae41)
  store %struct.Memory* %call_43ae41, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43ae47	 Bytes: 3
  %loadMem_43ae47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae47 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae47)
  store %struct.Memory* %call_43ae47, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43ae4a	 Bytes: 7
  %loadMem_43ae4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae4a = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae4a)
  store %struct.Memory* %call_43ae4a, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 43ae51	 Bytes: 3
  %loadMem_43ae51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae51 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae51)
  store %struct.Memory* %call_43ae51, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ae54	 Bytes: 3
  %loadMem_43ae54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae54 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae54)
  store %struct.Memory* %call_43ae54, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 43ae57	 Bytes: 3
  %loadMem_43ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae57 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae57)
  store %struct.Memory* %call_43ae57, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 43ae5a	 Bytes: 4
  %loadMem_43ae5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae5a = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae5a)
  store %struct.Memory* %call_43ae5a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43ae5e	 Bytes: 4
  %loadMem_43ae5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae5e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae5e)
  store %struct.Memory* %call_43ae5e, %struct.Memory** %MEMORY

  ; Code: je .L_43ae91	 RIP: 43ae62	 Bytes: 6
  %loadMem_43ae62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae62 = call %struct.Memory* @routine_je_.L_43ae91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae62, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43ae62, %struct.Memory** %MEMORY

  %loadBr_43ae62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ae62 = icmp eq i8 %loadBr_43ae62, 1
  br i1 %cmpBr_43ae62, label %block_.L_43ae91, label %block_43ae68

block_43ae68:
  ; Code: movl -0x94(%rbp), %eax	 RIP: 43ae68	 Bytes: 6
  %loadMem_43ae68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae68 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae68)
  store %struct.Memory* %call_43ae68, %struct.Memory** %MEMORY

  ; Code: addl -0x78(%rbp), %eax	 RIP: 43ae6e	 Bytes: 3
  %loadMem_43ae6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae6e = call %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae6e)
  store %struct.Memory* %call_43ae6e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 43ae71	 Bytes: 3
  %loadMem_43ae71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae71 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae71)
  store %struct.Memory* %call_43ae71, %struct.Memory** %MEMORY

  ; Code: addl -0x78(%rbp), %eax	 RIP: 43ae74	 Bytes: 3
  %loadMem_43ae74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae74 = call %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae74)
  store %struct.Memory* %call_43ae74, %struct.Memory** %MEMORY

  ; Code: addl -0x7c(%rbp), %eax	 RIP: 43ae77	 Bytes: 3
  %loadMem_43ae77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae77 = call %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae77)
  store %struct.Memory* %call_43ae77, %struct.Memory** %MEMORY

  ; Code: addl -0x90(%rbp), %eax	 RIP: 43ae7a	 Bytes: 6
  %loadMem_43ae7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae7a = call %struct.Memory* @routine_addl_MINUS0x90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae7a)
  store %struct.Memory* %call_43ae7a, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43ae80	 Bytes: 3
  %loadMem_43ae80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae80 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae80)
  store %struct.Memory* %call_43ae80, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43ae83	 Bytes: 3
  %loadMem_43ae83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae83 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae83)
  store %struct.Memory* %call_43ae83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c4(%rbp)	 RIP: 43ae86	 Bytes: 6
  %loadMem_43ae86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae86 = call %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae86)
  store %struct.Memory* %call_43ae86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ae9a	 RIP: 43ae8c	 Bytes: 5
  %loadMem_43ae8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae8c = call %struct.Memory* @routine_jmpq_.L_43ae9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae8c, i64 14, i64 5)
  store %struct.Memory* %call_43ae8c, %struct.Memory** %MEMORY

  br label %block_.L_43ae9a

  ; Code: .L_43ae91:	 RIP: 43ae91	 Bytes: 0
block_.L_43ae91:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 43ae91	 Bytes: 3
  %loadMem_43ae91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae91 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae91)
  store %struct.Memory* %call_43ae91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c4(%rbp)	 RIP: 43ae94	 Bytes: 6
  %loadMem_43ae94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae94 = call %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae94)
  store %struct.Memory* %call_43ae94, %struct.Memory** %MEMORY

  ; Code: .L_43ae9a:	 RIP: 43ae9a	 Bytes: 0
  br label %block_.L_43ae9a
block_.L_43ae9a:

  ; Code: movl -0x1c4(%rbp), %eax	 RIP: 43ae9a	 Bytes: 6
  %loadMem_43ae9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ae9a = call %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ae9a)
  store %struct.Memory* %call_43ae9a, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43aea0	 Bytes: 2
  %loadMem_43aea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aea0 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aea0)
  store %struct.Memory* %call_43aea0, %struct.Memory** %MEMORY

  ; Code: movw %ax, %dx	 RIP: 43aea2	 Bytes: 3
  %loadMem_43aea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aea2 = call %struct.Memory* @routine_movw__ax___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aea2)
  store %struct.Memory* %call_43aea2, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rsi	 RIP: 43aea5	 Bytes: 7
  %loadMem_43aea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aea5 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aea5)
  store %struct.Memory* %call_43aea5, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 43aeac	 Bytes: 3
  %loadMem_43aeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeac = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeac)
  store %struct.Memory* %call_43aeac, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43aeaf	 Bytes: 3
  %loadMem_43aeaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeaf = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeaf)
  store %struct.Memory* %call_43aeaf, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 43aeb2	 Bytes: 3
  %loadMem_43aeb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeb2 = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeb2)
  store %struct.Memory* %call_43aeb2, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rsi,%rdi,2)	 RIP: 43aeb5	 Bytes: 4
  %loadMem_43aeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeb5 = call %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeb5)
  store %struct.Memory* %call_43aeb5, %struct.Memory** %MEMORY

  ; Code: .L_43aeb9:	 RIP: 43aeb9	 Bytes: 0
  br label %block_.L_43aeb9
block_.L_43aeb9:

  ; Code: jmpq .L_43b31c	 RIP: 43aeb9	 Bytes: 5
  %loadMem_43aeb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeb9 = call %struct.Memory* @routine_jmpq_.L_43b31c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeb9, i64 1123, i64 5)
  store %struct.Memory* %call_43aeb9, %struct.Memory** %MEMORY

  br label %block_.L_43b31c

  ; Code: .L_43aebe:	 RIP: 43aebe	 Bytes: 0
block_.L_43aebe:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43aebe	 Bytes: 4
  %loadMem_43aebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aebe = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aebe)
  store %struct.Memory* %call_43aebe, %struct.Memory** %MEMORY

  ; Code: je .L_43aed9	 RIP: 43aec2	 Bytes: 6
  %loadMem_43aec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aec2 = call %struct.Memory* @routine_je_.L_43aed9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aec2, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43aec2, %struct.Memory** %MEMORY

  %loadBr_43aec2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43aec2 = icmp eq i8 %loadBr_43aec2, 1
  br i1 %cmpBr_43aec2, label %block_.L_43aed9, label %block_43aec8

block_43aec8:
  ; Code: movl -0x64(%rbp), %eax	 RIP: 43aec8	 Bytes: 3
  %loadMem_43aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aec8 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aec8)
  store %struct.Memory* %call_43aec8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43aecb	 Bytes: 3
  %loadMem_43aecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aecb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aecb)
  store %struct.Memory* %call_43aecb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c8(%rbp)	 RIP: 43aece	 Bytes: 6
  %loadMem_43aece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aece = call %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aece)
  store %struct.Memory* %call_43aece, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43aee8	 RIP: 43aed4	 Bytes: 5
  %loadMem_43aed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aed4 = call %struct.Memory* @routine_jmpq_.L_43aee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aed4, i64 20, i64 5)
  store %struct.Memory* %call_43aed4, %struct.Memory** %MEMORY

  br label %block_.L_43aee8

  ; Code: .L_43aed9:	 RIP: 43aed9	 Bytes: 0
block_.L_43aed9:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 43aed9	 Bytes: 3
  %loadMem_43aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aed9 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aed9)
  store %struct.Memory* %call_43aed9, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp), %eax	 RIP: 43aedc	 Bytes: 3
  %loadMem_43aedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aedc = call %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aedc)
  store %struct.Memory* %call_43aedc, %struct.Memory** %MEMORY

  ; Code: addl -0x54(%rbp), %eax	 RIP: 43aedf	 Bytes: 3
  %loadMem_43aedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aedf = call %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aedf)
  store %struct.Memory* %call_43aedf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c8(%rbp)	 RIP: 43aee2	 Bytes: 6
  %loadMem_43aee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aee2 = call %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aee2)
  store %struct.Memory* %call_43aee2, %struct.Memory** %MEMORY

  ; Code: .L_43aee8:	 RIP: 43aee8	 Bytes: 0
  br label %block_.L_43aee8
block_.L_43aee8:

  ; Code: movl -0x1c8(%rbp), %eax	 RIP: 43aee8	 Bytes: 6
  %loadMem_43aee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aee8 = call %struct.Memory* @routine_movl_MINUS0x1c8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aee8)
  store %struct.Memory* %call_43aee8, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43aeee	 Bytes: 2
  %loadMem_43aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aeee = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aeee)
  store %struct.Memory* %call_43aeee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 43aef0	 Bytes: 3
  %loadMem_43aef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aef0 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aef0)
  store %struct.Memory* %call_43aef0, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 43aef3	 Bytes: 3
  %loadMem_43aef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aef3 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aef3)
  store %struct.Memory* %call_43aef3, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43aef6	 Bytes: 3
  %loadMem_43aef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aef6 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aef6)
  store %struct.Memory* %call_43aef6, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 43aef9	 Bytes: 3
  %loadMem_43aef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aef9 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aef9)
  store %struct.Memory* %call_43aef9, %struct.Memory** %MEMORY

  ; Code: subl -0x88(%rbp), %edx	 RIP: 43aefc	 Bytes: 6
  %loadMem_43aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aefc = call %struct.Memory* @routine_subl_MINUS0x88__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aefc)
  store %struct.Memory* %call_43aefc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %eax	 RIP: 43af02	 Bytes: 2
  %loadMem_43af02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af02 = call %struct.Memory* @routine_addl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af02)
  store %struct.Memory* %call_43af02, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43af04	 Bytes: 3
  %loadMem_43af04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af04 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af04)
  store %struct.Memory* %call_43af04, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43af07	 Bytes: 3
  %loadMem_43af07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af07 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af07)
  store %struct.Memory* %call_43af07, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %ecx	 RIP: 43af0a	 Bytes: 3
  %loadMem_43af0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af0a = call %struct.Memory* @routine_subl_MINUS0x68__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af0a)
  store %struct.Memory* %call_43af0a, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43af0d	 Bytes: 2
  %loadMem_43af0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af0d = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af0d)
  store %struct.Memory* %call_43af0d, %struct.Memory** %MEMORY

  ; Code: jge .L_43af25	 RIP: 43af0f	 Bytes: 6
  %loadMem_43af0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af0f = call %struct.Memory* @routine_jge_.L_43af25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af0f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43af0f, %struct.Memory** %MEMORY

  %loadBr_43af0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43af0f = icmp eq i8 %loadBr_43af0f, 1
  br i1 %cmpBr_43af0f, label %block_.L_43af25, label %block_43af15

block_43af15:
  ; Code: xorl %eax, %eax	 RIP: 43af15	 Bytes: 2
  %loadMem_43af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af15 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af15)
  store %struct.Memory* %call_43af15, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %eax	 RIP: 43af17	 Bytes: 3
  %loadMem_43af17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af17 = call %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af17)
  store %struct.Memory* %call_43af17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1cc(%rbp)	 RIP: 43af1a	 Bytes: 6
  %loadMem_43af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af1a = call %struct.Memory* @routine_movl__eax__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af1a)
  store %struct.Memory* %call_43af1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43af7c	 RIP: 43af20	 Bytes: 5
  %loadMem_43af20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af20 = call %struct.Memory* @routine_jmpq_.L_43af7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af20, i64 92, i64 5)
  store %struct.Memory* %call_43af20, %struct.Memory** %MEMORY

  br label %block_.L_43af7c

  ; Code: .L_43af25:	 RIP: 43af25	 Bytes: 0
block_.L_43af25:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 43af25	 Bytes: 3
  %loadMem_43af25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af25 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af25)
  store %struct.Memory* %call_43af25, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43af28	 Bytes: 3
  %loadMem_43af28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af28 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af28)
  store %struct.Memory* %call_43af28, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 43af2b	 Bytes: 3
  %loadMem_43af2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af2b = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af2b)
  store %struct.Memory* %call_43af2b, %struct.Memory** %MEMORY

  ; Code: subl -0x88(%rbp), %ecx	 RIP: 43af2e	 Bytes: 6
  %loadMem_43af2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af2e = call %struct.Memory* @routine_subl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af2e)
  store %struct.Memory* %call_43af2e, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43af34	 Bytes: 2
  %loadMem_43af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af34 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af34)
  store %struct.Memory* %call_43af34, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43af36	 Bytes: 3
  %loadMem_43af36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af36 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af36)
  store %struct.Memory* %call_43af36, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43af39	 Bytes: 3
  %loadMem_43af39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af39 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af39)
  store %struct.Memory* %call_43af39, %struct.Memory** %MEMORY

  ; Code: cmpl -0x68(%rbp), %eax	 RIP: 43af3c	 Bytes: 3
  %loadMem_43af3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af3c = call %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af3c)
  store %struct.Memory* %call_43af3c, %struct.Memory** %MEMORY

  ; Code: jle .L_43af53	 RIP: 43af3f	 Bytes: 6
  %loadMem_43af3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af3f = call %struct.Memory* @routine_jle_.L_43af53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af3f, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43af3f, %struct.Memory** %MEMORY

  %loadBr_43af3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43af3f = icmp eq i8 %loadBr_43af3f, 1
  br i1 %cmpBr_43af3f, label %block_.L_43af53, label %block_43af45

block_43af45:
  ; Code: movl -0x68(%rbp), %eax	 RIP: 43af45	 Bytes: 3
  %loadMem_43af45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af45 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af45)
  store %struct.Memory* %call_43af45, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d0(%rbp)	 RIP: 43af48	 Bytes: 6
  %loadMem_43af48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af48 = call %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af48)
  store %struct.Memory* %call_43af48, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43af70	 RIP: 43af4e	 Bytes: 5
  %loadMem_43af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af4e = call %struct.Memory* @routine_jmpq_.L_43af70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af4e, i64 34, i64 5)
  store %struct.Memory* %call_43af4e, %struct.Memory** %MEMORY

  br label %block_.L_43af70

  ; Code: .L_43af53:	 RIP: 43af53	 Bytes: 0
block_.L_43af53:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 43af53	 Bytes: 3
  %loadMem_43af53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af53 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af53)
  store %struct.Memory* %call_43af53, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43af56	 Bytes: 3
  %loadMem_43af56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af56 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af56)
  store %struct.Memory* %call_43af56, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 43af59	 Bytes: 3
  %loadMem_43af59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af59 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af59)
  store %struct.Memory* %call_43af59, %struct.Memory** %MEMORY

  ; Code: subl -0x88(%rbp), %ecx	 RIP: 43af5c	 Bytes: 6
  %loadMem_43af5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af5c = call %struct.Memory* @routine_subl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af5c)
  store %struct.Memory* %call_43af5c, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43af62	 Bytes: 2
  %loadMem_43af62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af62 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af62)
  store %struct.Memory* %call_43af62, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43af64	 Bytes: 3
  %loadMem_43af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af64 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af64)
  store %struct.Memory* %call_43af64, %struct.Memory** %MEMORY

  ; Code: sarl $0x3, %eax	 RIP: 43af67	 Bytes: 3
  %loadMem_43af67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af67 = call %struct.Memory* @routine_sarl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af67)
  store %struct.Memory* %call_43af67, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d0(%rbp)	 RIP: 43af6a	 Bytes: 6
  %loadMem_43af6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af6a = call %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af6a)
  store %struct.Memory* %call_43af6a, %struct.Memory** %MEMORY

  ; Code: .L_43af70:	 RIP: 43af70	 Bytes: 0
  br label %block_.L_43af70
block_.L_43af70:

  ; Code: movl -0x1d0(%rbp), %eax	 RIP: 43af70	 Bytes: 6
  %loadMem_43af70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af70 = call %struct.Memory* @routine_movl_MINUS0x1d0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af70)
  store %struct.Memory* %call_43af70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1cc(%rbp)	 RIP: 43af76	 Bytes: 6
  %loadMem_43af76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af76 = call %struct.Memory* @routine_movl__eax__MINUS0x1cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af76)
  store %struct.Memory* %call_43af76, %struct.Memory** %MEMORY

  ; Code: .L_43af7c:	 RIP: 43af7c	 Bytes: 0
  br label %block_.L_43af7c
block_.L_43af7c:

  ; Code: movl -0x1cc(%rbp), %eax	 RIP: 43af7c	 Bytes: 6
  %loadMem_43af7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af7c = call %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af7c)
  store %struct.Memory* %call_43af7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 43af82	 Bytes: 3
  %loadMem_43af82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af82 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af82)
  store %struct.Memory* %call_43af82, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43af85	 Bytes: 4
  %loadMem_43af85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af85 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af85)
  store %struct.Memory* %call_43af85, %struct.Memory** %MEMORY

  ; Code: jne .L_43b081	 RIP: 43af89	 Bytes: 6
  %loadMem_43af89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af89 = call %struct.Memory* @routine_jne_.L_43b081(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af89, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_43af89, %struct.Memory** %MEMORY

  %loadBr_43af89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43af89 = icmp eq i8 %loadBr_43af89, 1
  br i1 %cmpBr_43af89, label %block_.L_43b081, label %block_43af8f

block_43af8f:
  ; Code: movl -0x80(%rbp), %eax	 RIP: 43af8f	 Bytes: 3
  %loadMem_43af8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af8f = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af8f)
  store %struct.Memory* %call_43af8f, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43af92	 Bytes: 3
  %loadMem_43af92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af92 = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af92)
  store %struct.Memory* %call_43af92, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43af95	 Bytes: 3
  %loadMem_43af95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af95 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af95)
  store %struct.Memory* %call_43af95, %struct.Memory** %MEMORY

  ; Code: jge .L_43afab	 RIP: 43af98	 Bytes: 6
  %loadMem_43af98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af98 = call %struct.Memory* @routine_jge_.L_43afab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af98, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43af98, %struct.Memory** %MEMORY

  %loadBr_43af98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43af98 = icmp eq i8 %loadBr_43af98, 1
  br i1 %cmpBr_43af98, label %block_.L_43afab, label %block_43af9e

block_43af9e:
  ; Code: xorl %eax, %eax	 RIP: 43af9e	 Bytes: 2
  %loadMem_43af9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43af9e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43af9e)
  store %struct.Memory* %call_43af9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d4(%rbp)	 RIP: 43afa0	 Bytes: 6
  %loadMem_43afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afa0 = call %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afa0)
  store %struct.Memory* %call_43afa0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43afee	 RIP: 43afa6	 Bytes: 5
  %loadMem_43afa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afa6 = call %struct.Memory* @routine_jmpq_.L_43afee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afa6, i64 72, i64 5)
  store %struct.Memory* %call_43afa6, %struct.Memory** %MEMORY

  br label %block_.L_43afee

  ; Code: .L_43afab:	 RIP: 43afab	 Bytes: 0
block_.L_43afab:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43afab	 Bytes: 3
  %loadMem_43afab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afab = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afab)
  store %struct.Memory* %call_43afab, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43afae	 Bytes: 3
  %loadMem_43afae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afae = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afae)
  store %struct.Memory* %call_43afae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43afb1	 Bytes: 4
  %loadMem_43afb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afb1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afb1)
  store %struct.Memory* %call_43afb1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rcx), %eax	 RIP: 43afb5	 Bytes: 6
  %loadMem_43afb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afb5 = call %struct.Memory* @routine_cmpl_0x11bec__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afb5)
  store %struct.Memory* %call_43afb5, %struct.Memory** %MEMORY

  ; Code: jle .L_43afd6	 RIP: 43afbb	 Bytes: 6
  %loadMem_43afbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afbb = call %struct.Memory* @routine_jle_.L_43afd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afbb, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43afbb, %struct.Memory** %MEMORY

  %loadBr_43afbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43afbb = icmp eq i8 %loadBr_43afbb, 1
  br i1 %cmpBr_43afbb, label %block_.L_43afd6, label %block_43afc1

block_43afc1:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43afc1	 Bytes: 4
  %loadMem_43afc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afc1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afc1)
  store %struct.Memory* %call_43afc1, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 43afc5	 Bytes: 6
  %loadMem_43afc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afc5 = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afc5)
  store %struct.Memory* %call_43afc5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1d8(%rbp)	 RIP: 43afcb	 Bytes: 6
  %loadMem_43afcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afcb = call %struct.Memory* @routine_movl__ecx__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afcb)
  store %struct.Memory* %call_43afcb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43afe2	 RIP: 43afd1	 Bytes: 5
  %loadMem_43afd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afd1 = call %struct.Memory* @routine_jmpq_.L_43afe2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afd1, i64 17, i64 5)
  store %struct.Memory* %call_43afd1, %struct.Memory** %MEMORY

  br label %block_.L_43afe2

  ; Code: .L_43afd6:	 RIP: 43afd6	 Bytes: 0
block_.L_43afd6:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43afd6	 Bytes: 3
  %loadMem_43afd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afd6 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afd6)
  store %struct.Memory* %call_43afd6, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43afd9	 Bytes: 3
  %loadMem_43afd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afd9 = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afd9)
  store %struct.Memory* %call_43afd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d8(%rbp)	 RIP: 43afdc	 Bytes: 6
  %loadMem_43afdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afdc = call %struct.Memory* @routine_movl__eax__MINUS0x1d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afdc)
  store %struct.Memory* %call_43afdc, %struct.Memory** %MEMORY

  ; Code: .L_43afe2:	 RIP: 43afe2	 Bytes: 0
  br label %block_.L_43afe2
block_.L_43afe2:

  ; Code: movl -0x1d8(%rbp), %eax	 RIP: 43afe2	 Bytes: 6
  %loadMem_43afe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afe2 = call %struct.Memory* @routine_movl_MINUS0x1d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afe2)
  store %struct.Memory* %call_43afe2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d4(%rbp)	 RIP: 43afe8	 Bytes: 6
  %loadMem_43afe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afe8 = call %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afe8)
  store %struct.Memory* %call_43afe8, %struct.Memory** %MEMORY

  ; Code: .L_43afee:	 RIP: 43afee	 Bytes: 0
  br label %block_.L_43afee
block_.L_43afee:

  ; Code: movl -0x1d4(%rbp), %eax	 RIP: 43afee	 Bytes: 6
  %loadMem_43afee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43afee = call %struct.Memory* @routine_movl_MINUS0x1d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43afee)
  store %struct.Memory* %call_43afee, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43aff4	 Bytes: 3
  %loadMem_43aff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aff4 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aff4)
  store %struct.Memory* %call_43aff4, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43aff7	 Bytes: 7
  %loadMem_43aff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43aff7 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43aff7)
  store %struct.Memory* %call_43aff7, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43affe	 Bytes: 3
  %loadMem_43affe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43affe = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43affe)
  store %struct.Memory* %call_43affe, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b001	 Bytes: 6
  %loadMem_43b001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b001 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b001)
  store %struct.Memory* %call_43b001, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b007	 Bytes: 3
  %loadMem_43b007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b007 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b007)
  store %struct.Memory* %call_43b007, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43b00a	 Bytes: 3
  %loadMem_43b00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b00a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b00a)
  store %struct.Memory* %call_43b00a, %struct.Memory** %MEMORY

  ; Code: jge .L_43b020	 RIP: 43b00d	 Bytes: 6
  %loadMem_43b00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b00d = call %struct.Memory* @routine_jge_.L_43b020(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b00d, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43b00d, %struct.Memory** %MEMORY

  %loadBr_43b00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b00d = icmp eq i8 %loadBr_43b00d, 1
  br i1 %cmpBr_43b00d, label %block_.L_43b020, label %block_43b013

block_43b013:
  ; Code: xorl %eax, %eax	 RIP: 43b013	 Bytes: 2
  %loadMem_43b013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b013 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b013)
  store %struct.Memory* %call_43b013, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1dc(%rbp)	 RIP: 43b015	 Bytes: 6
  %loadMem_43b015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b015 = call %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b015)
  store %struct.Memory* %call_43b015, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b069	 RIP: 43b01b	 Bytes: 5
  %loadMem_43b01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b01b = call %struct.Memory* @routine_jmpq_.L_43b069(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b01b, i64 78, i64 5)
  store %struct.Memory* %call_43b01b, %struct.Memory** %MEMORY

  br label %block_.L_43b069

  ; Code: .L_43b020:	 RIP: 43b020	 Bytes: 0
block_.L_43b020:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b020	 Bytes: 6
  %loadMem_43b020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b020 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b020)
  store %struct.Memory* %call_43b020, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b026	 Bytes: 3
  %loadMem_43b026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b026 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b026)
  store %struct.Memory* %call_43b026, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43b029	 Bytes: 4
  %loadMem_43b029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b029 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b029)
  store %struct.Memory* %call_43b029, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rcx), %eax	 RIP: 43b02d	 Bytes: 6
  %loadMem_43b02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b02d = call %struct.Memory* @routine_cmpl_0x11bec__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b02d)
  store %struct.Memory* %call_43b02d, %struct.Memory** %MEMORY

  ; Code: jle .L_43b04e	 RIP: 43b033	 Bytes: 6
  %loadMem_43b033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b033 = call %struct.Memory* @routine_jle_.L_43b04e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b033, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43b033, %struct.Memory** %MEMORY

  %loadBr_43b033 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b033 = icmp eq i8 %loadBr_43b033, 1
  br i1 %cmpBr_43b033, label %block_.L_43b04e, label %block_43b039

block_43b039:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43b039	 Bytes: 4
  %loadMem_43b039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b039 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b039)
  store %struct.Memory* %call_43b039, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 43b03d	 Bytes: 6
  %loadMem_43b03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b03d = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b03d)
  store %struct.Memory* %call_43b03d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1e0(%rbp)	 RIP: 43b043	 Bytes: 6
  %loadMem_43b043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b043 = call %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b043)
  store %struct.Memory* %call_43b043, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b05d	 RIP: 43b049	 Bytes: 5
  %loadMem_43b049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b049 = call %struct.Memory* @routine_jmpq_.L_43b05d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b049, i64 20, i64 5)
  store %struct.Memory* %call_43b049, %struct.Memory** %MEMORY

  br label %block_.L_43b05d

  ; Code: .L_43b04e:	 RIP: 43b04e	 Bytes: 0
block_.L_43b04e:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b04e	 Bytes: 6
  %loadMem_43b04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b04e = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b04e)
  store %struct.Memory* %call_43b04e, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b054	 Bytes: 3
  %loadMem_43b054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b054 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b054)
  store %struct.Memory* %call_43b054, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e0(%rbp)	 RIP: 43b057	 Bytes: 6
  %loadMem_43b057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b057 = call %struct.Memory* @routine_movl__eax__MINUS0x1e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b057)
  store %struct.Memory* %call_43b057, %struct.Memory** %MEMORY

  ; Code: .L_43b05d:	 RIP: 43b05d	 Bytes: 0
  br label %block_.L_43b05d
block_.L_43b05d:

  ; Code: movl -0x1e0(%rbp), %eax	 RIP: 43b05d	 Bytes: 6
  %loadMem_43b05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b05d = call %struct.Memory* @routine_movl_MINUS0x1e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b05d)
  store %struct.Memory* %call_43b05d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1dc(%rbp)	 RIP: 43b063	 Bytes: 6
  %loadMem_43b063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b063 = call %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b063)
  store %struct.Memory* %call_43b063, %struct.Memory** %MEMORY

  ; Code: .L_43b069:	 RIP: 43b069	 Bytes: 0
  br label %block_.L_43b069
block_.L_43b069:

  ; Code: movl -0x1dc(%rbp), %eax	 RIP: 43b069	 Bytes: 6
  %loadMem_43b069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b069 = call %struct.Memory* @routine_movl_MINUS0x1dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b069)
  store %struct.Memory* %call_43b069, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43b06f	 Bytes: 3
  %loadMem_43b06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b06f = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b06f)
  store %struct.Memory* %call_43b06f, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43b072	 Bytes: 7
  %loadMem_43b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b072 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b072)
  store %struct.Memory* %call_43b072, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43b079	 Bytes: 3
  %loadMem_43b079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b079 = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b079)
  store %struct.Memory* %call_43b079, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b16e	 RIP: 43b07c	 Bytes: 5
  %loadMem_43b07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b07c = call %struct.Memory* @routine_jmpq_.L_43b16e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b07c, i64 242, i64 5)
  store %struct.Memory* %call_43b07c, %struct.Memory** %MEMORY

  br label %block_.L_43b16e

  ; Code: .L_43b081:	 RIP: 43b081	 Bytes: 0
block_.L_43b081:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43b081	 Bytes: 3
  %loadMem_43b081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b081 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b081)
  store %struct.Memory* %call_43b081, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43b084	 Bytes: 3
  %loadMem_43b084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b084 = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b084)
  store %struct.Memory* %call_43b084, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43b087	 Bytes: 3
  %loadMem_43b087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b087 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b087)
  store %struct.Memory* %call_43b087, %struct.Memory** %MEMORY

  ; Code: jge .L_43b09d	 RIP: 43b08a	 Bytes: 6
  %loadMem_43b08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b08a = call %struct.Memory* @routine_jge_.L_43b09d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b08a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43b08a, %struct.Memory** %MEMORY

  %loadBr_43b08a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b08a = icmp eq i8 %loadBr_43b08a, 1
  br i1 %cmpBr_43b08a, label %block_.L_43b09d, label %block_43b090

block_43b090:
  ; Code: xorl %eax, %eax	 RIP: 43b090	 Bytes: 2
  %loadMem_43b090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b090 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b090)
  store %struct.Memory* %call_43b090, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 43b092	 Bytes: 6
  %loadMem_43b092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b092 = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b092)
  store %struct.Memory* %call_43b092, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b0e0	 RIP: 43b098	 Bytes: 5
  %loadMem_43b098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b098 = call %struct.Memory* @routine_jmpq_.L_43b0e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b098, i64 72, i64 5)
  store %struct.Memory* %call_43b098, %struct.Memory** %MEMORY

  br label %block_.L_43b0e0

  ; Code: .L_43b09d:	 RIP: 43b09d	 Bytes: 0
block_.L_43b09d:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43b09d	 Bytes: 3
  %loadMem_43b09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b09d = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b09d)
  store %struct.Memory* %call_43b09d, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43b0a0	 Bytes: 3
  %loadMem_43b0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0a0 = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0a0)
  store %struct.Memory* %call_43b0a0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43b0a3	 Bytes: 4
  %loadMem_43b0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0a3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0a3)
  store %struct.Memory* %call_43b0a3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bf0(%rcx), %eax	 RIP: 43b0a7	 Bytes: 6
  %loadMem_43b0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0a7 = call %struct.Memory* @routine_cmpl_0x11bf0__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0a7)
  store %struct.Memory* %call_43b0a7, %struct.Memory** %MEMORY

  ; Code: jle .L_43b0c8	 RIP: 43b0ad	 Bytes: 6
  %loadMem_43b0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0ad = call %struct.Memory* @routine_jle_.L_43b0c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0ad, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43b0ad, %struct.Memory** %MEMORY

  %loadBr_43b0ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b0ad = icmp eq i8 %loadBr_43b0ad, 1
  br i1 %cmpBr_43b0ad, label %block_.L_43b0c8, label %block_43b0b3

block_43b0b3:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43b0b3	 Bytes: 4
  %loadMem_43b0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0b3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0b3)
  store %struct.Memory* %call_43b0b3, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 43b0b7	 Bytes: 6
  %loadMem_43b0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0b7 = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0b7)
  store %struct.Memory* %call_43b0b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1e8(%rbp)	 RIP: 43b0bd	 Bytes: 6
  %loadMem_43b0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0bd = call %struct.Memory* @routine_movl__ecx__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0bd)
  store %struct.Memory* %call_43b0bd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b0d4	 RIP: 43b0c3	 Bytes: 5
  %loadMem_43b0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0c3 = call %struct.Memory* @routine_jmpq_.L_43b0d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0c3, i64 17, i64 5)
  store %struct.Memory* %call_43b0c3, %struct.Memory** %MEMORY

  br label %block_.L_43b0d4

  ; Code: .L_43b0c8:	 RIP: 43b0c8	 Bytes: 0
block_.L_43b0c8:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 43b0c8	 Bytes: 3
  %loadMem_43b0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0c8 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0c8)
  store %struct.Memory* %call_43b0c8, %struct.Memory** %MEMORY

  ; Code: addl -0x70(%rbp), %eax	 RIP: 43b0cb	 Bytes: 3
  %loadMem_43b0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0cb = call %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0cb)
  store %struct.Memory* %call_43b0cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e8(%rbp)	 RIP: 43b0ce	 Bytes: 6
  %loadMem_43b0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0ce = call %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0ce)
  store %struct.Memory* %call_43b0ce, %struct.Memory** %MEMORY

  ; Code: .L_43b0d4:	 RIP: 43b0d4	 Bytes: 0
  br label %block_.L_43b0d4
block_.L_43b0d4:

  ; Code: movl -0x1e8(%rbp), %eax	 RIP: 43b0d4	 Bytes: 6
  %loadMem_43b0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0d4 = call %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0d4)
  store %struct.Memory* %call_43b0d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 43b0da	 Bytes: 6
  %loadMem_43b0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0da = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0da)
  store %struct.Memory* %call_43b0da, %struct.Memory** %MEMORY

  ; Code: .L_43b0e0:	 RIP: 43b0e0	 Bytes: 0
  br label %block_.L_43b0e0
block_.L_43b0e0:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 43b0e0	 Bytes: 6
  %loadMem_43b0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0e0 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0e0)
  store %struct.Memory* %call_43b0e0, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43b0e6	 Bytes: 3
  %loadMem_43b0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0e6 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0e6)
  store %struct.Memory* %call_43b0e6, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43b0e9	 Bytes: 7
  %loadMem_43b0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0e9 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0e9)
  store %struct.Memory* %call_43b0e9, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43b0f0	 Bytes: 3
  %loadMem_43b0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0f0 = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0f0)
  store %struct.Memory* %call_43b0f0, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b0f3	 Bytes: 6
  %loadMem_43b0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0f3 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0f3)
  store %struct.Memory* %call_43b0f3, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b0f9	 Bytes: 3
  %loadMem_43b0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0f9 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0f9)
  store %struct.Memory* %call_43b0f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43b0fc	 Bytes: 3
  %loadMem_43b0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0fc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0fc)
  store %struct.Memory* %call_43b0fc, %struct.Memory** %MEMORY

  ; Code: jge .L_43b112	 RIP: 43b0ff	 Bytes: 6
  %loadMem_43b0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b0ff = call %struct.Memory* @routine_jge_.L_43b112(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b0ff, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43b0ff, %struct.Memory** %MEMORY

  %loadBr_43b0ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b0ff = icmp eq i8 %loadBr_43b0ff, 1
  br i1 %cmpBr_43b0ff, label %block_.L_43b112, label %block_43b105

block_43b105:
  ; Code: xorl %eax, %eax	 RIP: 43b105	 Bytes: 2
  %loadMem_43b105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b105 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b105)
  store %struct.Memory* %call_43b105, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 43b107	 Bytes: 6
  %loadMem_43b107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b107 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b107)
  store %struct.Memory* %call_43b107, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b15b	 RIP: 43b10d	 Bytes: 5
  %loadMem_43b10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b10d = call %struct.Memory* @routine_jmpq_.L_43b15b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b10d, i64 78, i64 5)
  store %struct.Memory* %call_43b10d, %struct.Memory** %MEMORY

  br label %block_.L_43b15b

  ; Code: .L_43b112:	 RIP: 43b112	 Bytes: 0
block_.L_43b112:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b112	 Bytes: 6
  %loadMem_43b112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b112 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b112)
  store %struct.Memory* %call_43b112, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b118	 Bytes: 3
  %loadMem_43b118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b118 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b118)
  store %struct.Memory* %call_43b118, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43b11b	 Bytes: 4
  %loadMem_43b11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b11b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b11b)
  store %struct.Memory* %call_43b11b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bf0(%rcx), %eax	 RIP: 43b11f	 Bytes: 6
  %loadMem_43b11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b11f = call %struct.Memory* @routine_cmpl_0x11bf0__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b11f)
  store %struct.Memory* %call_43b11f, %struct.Memory** %MEMORY

  ; Code: jle .L_43b140	 RIP: 43b125	 Bytes: 6
  %loadMem_43b125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b125 = call %struct.Memory* @routine_jle_.L_43b140(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b125, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43b125, %struct.Memory** %MEMORY

  %loadBr_43b125 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b125 = icmp eq i8 %loadBr_43b125, 1
  br i1 %cmpBr_43b125, label %block_.L_43b140, label %block_43b12b

block_43b12b:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43b12b	 Bytes: 4
  %loadMem_43b12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b12b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b12b)
  store %struct.Memory* %call_43b12b, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 43b12f	 Bytes: 6
  %loadMem_43b12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b12f = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b12f)
  store %struct.Memory* %call_43b12f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1f0(%rbp)	 RIP: 43b135	 Bytes: 6
  %loadMem_43b135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b135 = call %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b135)
  store %struct.Memory* %call_43b135, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b14f	 RIP: 43b13b	 Bytes: 5
  %loadMem_43b13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b13b = call %struct.Memory* @routine_jmpq_.L_43b14f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b13b, i64 20, i64 5)
  store %struct.Memory* %call_43b13b, %struct.Memory** %MEMORY

  br label %block_.L_43b14f

  ; Code: .L_43b140:	 RIP: 43b140	 Bytes: 0
block_.L_43b140:

  ; Code: movl -0x84(%rbp), %eax	 RIP: 43b140	 Bytes: 6
  %loadMem_43b140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b140 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b140)
  store %struct.Memory* %call_43b140, %struct.Memory** %MEMORY

  ; Code: subl -0x70(%rbp), %eax	 RIP: 43b146	 Bytes: 3
  %loadMem_43b146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b146 = call %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b146)
  store %struct.Memory* %call_43b146, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f0(%rbp)	 RIP: 43b149	 Bytes: 6
  %loadMem_43b149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b149 = call %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b149)
  store %struct.Memory* %call_43b149, %struct.Memory** %MEMORY

  ; Code: .L_43b14f:	 RIP: 43b14f	 Bytes: 0
  br label %block_.L_43b14f
block_.L_43b14f:

  ; Code: movl -0x1f0(%rbp), %eax	 RIP: 43b14f	 Bytes: 6
  %loadMem_43b14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b14f = call %struct.Memory* @routine_movl_MINUS0x1f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b14f)
  store %struct.Memory* %call_43b14f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 43b155	 Bytes: 6
  %loadMem_43b155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b155 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b155)
  store %struct.Memory* %call_43b155, %struct.Memory** %MEMORY

  ; Code: .L_43b15b:	 RIP: 43b15b	 Bytes: 0
  br label %block_.L_43b15b
block_.L_43b15b:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 43b15b	 Bytes: 6
  %loadMem_43b15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b15b = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b15b)
  store %struct.Memory* %call_43b15b, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 43b161	 Bytes: 3
  %loadMem_43b161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b161 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b161)
  store %struct.Memory* %call_43b161, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rdx	 RIP: 43b164	 Bytes: 7
  %loadMem_43b164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b164 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b164)
  store %struct.Memory* %call_43b164, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx)	 RIP: 43b16b	 Bytes: 3
  %loadMem_43b16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b16b = call %struct.Memory* @routine_movw__cx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b16b)
  store %struct.Memory* %call_43b16b, %struct.Memory** %MEMORY

  ; Code: .L_43b16e:	 RIP: 43b16e	 Bytes: 0
  br label %block_.L_43b16e
block_.L_43b16e:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 43b16e	 Bytes: 4
  %loadMem_43b16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b16e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b16e)
  store %struct.Memory* %call_43b16e, %struct.Memory** %MEMORY

  ; Code: jne .L_43b317	 RIP: 43b172	 Bytes: 6
  %loadMem_43b172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b172 = call %struct.Memory* @routine_jne_.L_43b317(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b172, i8* %BRANCH_TAKEN, i64 421, i64 6, i64 6)
  store %struct.Memory* %call_43b172, %struct.Memory** %MEMORY

  %loadBr_43b172 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b172 = icmp eq i8 %loadBr_43b172, 1
  br i1 %cmpBr_43b172, label %block_.L_43b317, label %block_43b178

block_43b178:
  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43b178	 Bytes: 4
  %loadMem_43b178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b178 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b178)
  store %struct.Memory* %call_43b178, %struct.Memory** %MEMORY

  ; Code: je .L_43b23e	 RIP: 43b17c	 Bytes: 6
  %loadMem_43b17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b17c = call %struct.Memory* @routine_je_.L_43b23e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b17c, i8* %BRANCH_TAKEN, i64 194, i64 6, i64 6)
  store %struct.Memory* %call_43b17c, %struct.Memory** %MEMORY

  %loadBr_43b17c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b17c = icmp eq i8 %loadBr_43b17c, 1
  br i1 %cmpBr_43b17c, label %block_.L_43b23e, label %block_43b182

block_43b182:
  ; Code: xorl %eax, %eax	 RIP: 43b182	 Bytes: 2
  %loadMem_43b182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b182 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b182)
  store %struct.Memory* %call_43b182, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %ecx	 RIP: 43b184	 Bytes: 3
  %loadMem_43b184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b184 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b184)
  store %struct.Memory* %call_43b184, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %edx	 RIP: 43b187	 Bytes: 6
  %loadMem_43b187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b187 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b187)
  store %struct.Memory* %call_43b187, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 43b18d	 Bytes: 3
  %loadMem_43b18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b18d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b18d)
  store %struct.Memory* %call_43b18d, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %edx	 RIP: 43b190	 Bytes: 3
  %loadMem_43b190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b190 = call %struct.Memory* @routine_sarl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b190)
  store %struct.Memory* %call_43b190, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43b193	 Bytes: 2
  %loadMem_43b193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b193 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b193)
  store %struct.Memory* %call_43b193, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 43b195	 Bytes: 3
  %loadMem_43b195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b195 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b195)
  store %struct.Memory* %call_43b195, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 43b198	 Bytes: 3
  %loadMem_43b198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b198 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b198)
  store %struct.Memory* %call_43b198, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43b19b	 Bytes: 2
  %loadMem_43b19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b19b = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b19b)
  store %struct.Memory* %call_43b19b, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b19d	 Bytes: 3
  %loadMem_43b19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b19d = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b19d)
  store %struct.Memory* %call_43b19d, %struct.Memory** %MEMORY

  ; Code: subl -0x64(%rbp), %eax	 RIP: 43b1a0	 Bytes: 3
  %loadMem_43b1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1a0 = call %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1a0)
  store %struct.Memory* %call_43b1a0, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43b1a3	 Bytes: 2
  %loadMem_43b1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1a3 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1a3)
  store %struct.Memory* %call_43b1a3, %struct.Memory** %MEMORY

  ; Code: jge .L_43b1bb	 RIP: 43b1a5	 Bytes: 6
  %loadMem_43b1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1a5 = call %struct.Memory* @routine_jge_.L_43b1bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1a5, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43b1a5, %struct.Memory** %MEMORY

  %loadBr_43b1a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b1a5 = icmp eq i8 %loadBr_43b1a5, 1
  br i1 %cmpBr_43b1a5, label %block_.L_43b1bb, label %block_43b1ab

block_43b1ab:
  ; Code: xorl %eax, %eax	 RIP: 43b1ab	 Bytes: 2
  %loadMem_43b1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1ab = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1ab)
  store %struct.Memory* %call_43b1ab, %struct.Memory** %MEMORY

  ; Code: subl -0x64(%rbp), %eax	 RIP: 43b1ad	 Bytes: 3
  %loadMem_43b1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1ad = call %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1ad)
  store %struct.Memory* %call_43b1ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f4(%rbp)	 RIP: 43b1b0	 Bytes: 6
  %loadMem_43b1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1b0 = call %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1b0)
  store %struct.Memory* %call_43b1b0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b21c	 RIP: 43b1b6	 Bytes: 5
  %loadMem_43b1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1b6 = call %struct.Memory* @routine_jmpq_.L_43b21c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1b6, i64 102, i64 5)
  store %struct.Memory* %call_43b1b6, %struct.Memory** %MEMORY

  br label %block_.L_43b21c

  ; Code: .L_43b1bb:	 RIP: 43b1bb	 Bytes: 0
block_.L_43b1bb:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 43b1bb	 Bytes: 3
  %loadMem_43b1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1bb = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1bb)
  store %struct.Memory* %call_43b1bb, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 43b1be	 Bytes: 6
  %loadMem_43b1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1be = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1be)
  store %struct.Memory* %call_43b1be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43b1c4	 Bytes: 3
  %loadMem_43b1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1c4 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1c4)
  store %struct.Memory* %call_43b1c4, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b1c7	 Bytes: 3
  %loadMem_43b1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1c7 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1c7)
  store %struct.Memory* %call_43b1c7, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43b1ca	 Bytes: 2
  %loadMem_43b1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1ca = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1ca)
  store %struct.Memory* %call_43b1ca, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 43b1cc	 Bytes: 3
  %loadMem_43b1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1cc = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1cc)
  store %struct.Memory* %call_43b1cc, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43b1cf	 Bytes: 3
  %loadMem_43b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1cf = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1cf)
  store %struct.Memory* %call_43b1cf, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 43b1d2	 Bytes: 2
  %loadMem_43b1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1d2 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1d2)
  store %struct.Memory* %call_43b1d2, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 43b1d4	 Bytes: 3
  %loadMem_43b1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1d4 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1d4)
  store %struct.Memory* %call_43b1d4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 43b1d7	 Bytes: 3
  %loadMem_43b1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1d7 = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1d7)
  store %struct.Memory* %call_43b1d7, %struct.Memory** %MEMORY

  ; Code: jle .L_43b1ee	 RIP: 43b1da	 Bytes: 6
  %loadMem_43b1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1da = call %struct.Memory* @routine_jle_.L_43b1ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1da, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43b1da, %struct.Memory** %MEMORY

  %loadBr_43b1da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b1da = icmp eq i8 %loadBr_43b1da, 1
  br i1 %cmpBr_43b1da, label %block_.L_43b1ee, label %block_43b1e0

block_43b1e0:
  ; Code: movl -0x64(%rbp), %eax	 RIP: 43b1e0	 Bytes: 3
  %loadMem_43b1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1e0 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1e0)
  store %struct.Memory* %call_43b1e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f8(%rbp)	 RIP: 43b1e3	 Bytes: 6
  %loadMem_43b1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1e3 = call %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1e3)
  store %struct.Memory* %call_43b1e3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b210	 RIP: 43b1e9	 Bytes: 5
  %loadMem_43b1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1e9 = call %struct.Memory* @routine_jmpq_.L_43b210(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1e9, i64 39, i64 5)
  store %struct.Memory* %call_43b1e9, %struct.Memory** %MEMORY

  br label %block_.L_43b210

  ; Code: .L_43b1ee:	 RIP: 43b1ee	 Bytes: 0
block_.L_43b1ee:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 43b1ee	 Bytes: 3
  %loadMem_43b1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1ee = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1ee)
  store %struct.Memory* %call_43b1ee, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 43b1f1	 Bytes: 6
  %loadMem_43b1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1f1 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1f1)
  store %struct.Memory* %call_43b1f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43b1f7	 Bytes: 3
  %loadMem_43b1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1f7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1f7)
  store %struct.Memory* %call_43b1f7, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b1fa	 Bytes: 3
  %loadMem_43b1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1fa = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1fa)
  store %struct.Memory* %call_43b1fa, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43b1fd	 Bytes: 2
  %loadMem_43b1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1fd = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1fd)
  store %struct.Memory* %call_43b1fd, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 43b1ff	 Bytes: 3
  %loadMem_43b1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b1ff = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b1ff)
  store %struct.Memory* %call_43b1ff, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43b202	 Bytes: 3
  %loadMem_43b202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b202 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b202)
  store %struct.Memory* %call_43b202, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 43b205	 Bytes: 2
  %loadMem_43b205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b205 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b205)
  store %struct.Memory* %call_43b205, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 43b207	 Bytes: 3
  %loadMem_43b207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b207 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b207)
  store %struct.Memory* %call_43b207, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f8(%rbp)	 RIP: 43b20a	 Bytes: 6
  %loadMem_43b20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b20a = call %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b20a)
  store %struct.Memory* %call_43b20a, %struct.Memory** %MEMORY

  ; Code: .L_43b210:	 RIP: 43b210	 Bytes: 0
  br label %block_.L_43b210
block_.L_43b210:

  ; Code: movl -0x1f8(%rbp), %eax	 RIP: 43b210	 Bytes: 6
  %loadMem_43b210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b210 = call %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b210)
  store %struct.Memory* %call_43b210, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f4(%rbp)	 RIP: 43b216	 Bytes: 6
  %loadMem_43b216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b216 = call %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b216)
  store %struct.Memory* %call_43b216, %struct.Memory** %MEMORY

  ; Code: .L_43b21c:	 RIP: 43b21c	 Bytes: 0
  br label %block_.L_43b21c
block_.L_43b21c:

  ; Code: movl -0x1f4(%rbp), %eax	 RIP: 43b21c	 Bytes: 6
  %loadMem_43b21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b21c = call %struct.Memory* @routine_movl_MINUS0x1f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b21c)
  store %struct.Memory* %call_43b21c, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43b222	 Bytes: 2
  %loadMem_43b222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b222 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b222)
  store %struct.Memory* %call_43b222, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rdx	 RIP: 43b224	 Bytes: 7
  %loadMem_43b224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b224 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b224)
  store %struct.Memory* %call_43b224, %struct.Memory** %MEMORY

  ; Code: subl -0x5c(%rbp), %ecx	 RIP: 43b22b	 Bytes: 3
  %loadMem_43b22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b22b = call %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b22b)
  store %struct.Memory* %call_43b22b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 43b22e	 Bytes: 3
  %loadMem_43b22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b22e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b22e)
  store %struct.Memory* %call_43b22e, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %ecx	 RIP: 43b231	 Bytes: 4
  %loadMem_43b231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b231 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b231)
  store %struct.Memory* %call_43b231, %struct.Memory** %MEMORY

  ; Code: addl %eax, %ecx	 RIP: 43b235	 Bytes: 2
  %loadMem_43b235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b235 = call %struct.Memory* @routine_addl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b235)
  store %struct.Memory* %call_43b235, %struct.Memory** %MEMORY

  ; Code: movw %cx, %di	 RIP: 43b237	 Bytes: 3
  %loadMem_43b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b237 = call %struct.Memory* @routine_movw__cx___di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b237)
  store %struct.Memory* %call_43b237, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rdx,%rsi,2)	 RIP: 43b23a	 Bytes: 4
  %loadMem_43b23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b23a = call %struct.Memory* @routine_movw__di____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b23a)
  store %struct.Memory* %call_43b23a, %struct.Memory** %MEMORY

  ; Code: .L_43b23e:	 RIP: 43b23e	 Bytes: 0
  br label %block_.L_43b23e
block_.L_43b23e:

  ; Code: cmpl $0x0, -0x54(%rbp)	 RIP: 43b23e	 Bytes: 4
  %loadMem_43b23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b23e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b23e)
  store %struct.Memory* %call_43b23e, %struct.Memory** %MEMORY

  ; Code: je .L_43b312	 RIP: 43b242	 Bytes: 6
  %loadMem_43b242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b242 = call %struct.Memory* @routine_je_.L_43b312(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b242, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_43b242, %struct.Memory** %MEMORY

  %loadBr_43b242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b242 = icmp eq i8 %loadBr_43b242, 1
  br i1 %cmpBr_43b242, label %block_.L_43b312, label %block_43b248

block_43b248:
  ; Code: xorl %eax, %eax	 RIP: 43b248	 Bytes: 2
  %loadMem_43b248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b248 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b248)
  store %struct.Memory* %call_43b248, %struct.Memory** %MEMORY

  ; Code: movl -0x8c(%rbp), %ecx	 RIP: 43b24a	 Bytes: 6
  %loadMem_43b24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b24a = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b24a)
  store %struct.Memory* %call_43b24a, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %edx	 RIP: 43b250	 Bytes: 6
  %loadMem_43b250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b250 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b250)
  store %struct.Memory* %call_43b250, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 43b256	 Bytes: 3
  %loadMem_43b256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b256 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b256)
  store %struct.Memory* %call_43b256, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %edx	 RIP: 43b259	 Bytes: 3
  %loadMem_43b259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b259 = call %struct.Memory* @routine_sarl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b259)
  store %struct.Memory* %call_43b259, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43b25c	 Bytes: 2
  %loadMem_43b25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b25c = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b25c)
  store %struct.Memory* %call_43b25c, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %edx	 RIP: 43b25e	 Bytes: 6
  %loadMem_43b25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b25e = call %struct.Memory* @routine_movl_MINUS0x88__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b25e)
  store %struct.Memory* %call_43b25e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 43b264	 Bytes: 3
  %loadMem_43b264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b264 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b264)
  store %struct.Memory* %call_43b264, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43b267	 Bytes: 2
  %loadMem_43b267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b267 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b267)
  store %struct.Memory* %call_43b267, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b269	 Bytes: 3
  %loadMem_43b269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b269 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b269)
  store %struct.Memory* %call_43b269, %struct.Memory** %MEMORY

  ; Code: subl -0x64(%rbp), %eax	 RIP: 43b26c	 Bytes: 3
  %loadMem_43b26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b26c = call %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b26c)
  store %struct.Memory* %call_43b26c, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 43b26f	 Bytes: 2
  %loadMem_43b26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b26f = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b26f)
  store %struct.Memory* %call_43b26f, %struct.Memory** %MEMORY

  ; Code: jge .L_43b287	 RIP: 43b271	 Bytes: 6
  %loadMem_43b271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b271 = call %struct.Memory* @routine_jge_.L_43b287(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b271, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43b271, %struct.Memory** %MEMORY

  %loadBr_43b271 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b271 = icmp eq i8 %loadBr_43b271, 1
  br i1 %cmpBr_43b271, label %block_.L_43b287, label %block_43b277

block_43b277:
  ; Code: xorl %eax, %eax	 RIP: 43b277	 Bytes: 2
  %loadMem_43b277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b277 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b277)
  store %struct.Memory* %call_43b277, %struct.Memory** %MEMORY

  ; Code: subl -0x64(%rbp), %eax	 RIP: 43b279	 Bytes: 3
  %loadMem_43b279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b279 = call %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b279)
  store %struct.Memory* %call_43b279, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 43b27c	 Bytes: 6
  %loadMem_43b27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b27c = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b27c)
  store %struct.Memory* %call_43b27c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b2f4	 RIP: 43b282	 Bytes: 5
  %loadMem_43b282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b282 = call %struct.Memory* @routine_jmpq_.L_43b2f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b282, i64 114, i64 5)
  store %struct.Memory* %call_43b282, %struct.Memory** %MEMORY

  br label %block_.L_43b2f4

  ; Code: .L_43b287:	 RIP: 43b287	 Bytes: 0
block_.L_43b287:

  ; Code: movl -0x8c(%rbp), %eax	 RIP: 43b287	 Bytes: 6
  %loadMem_43b287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b287 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b287)
  store %struct.Memory* %call_43b287, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 43b28d	 Bytes: 6
  %loadMem_43b28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b28d = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b28d)
  store %struct.Memory* %call_43b28d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43b293	 Bytes: 3
  %loadMem_43b293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b293 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b293)
  store %struct.Memory* %call_43b293, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b296	 Bytes: 3
  %loadMem_43b296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b296 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b296)
  store %struct.Memory* %call_43b296, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43b299	 Bytes: 2
  %loadMem_43b299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b299 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b299)
  store %struct.Memory* %call_43b299, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %ecx	 RIP: 43b29b	 Bytes: 6
  %loadMem_43b29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b29b = call %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b29b)
  store %struct.Memory* %call_43b29b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43b2a1	 Bytes: 3
  %loadMem_43b2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2a1 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2a1)
  store %struct.Memory* %call_43b2a1, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 43b2a4	 Bytes: 2
  %loadMem_43b2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2a4 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2a4)
  store %struct.Memory* %call_43b2a4, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 43b2a6	 Bytes: 3
  %loadMem_43b2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2a6 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2a6)
  store %struct.Memory* %call_43b2a6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 43b2a9	 Bytes: 3
  %loadMem_43b2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2a9 = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2a9)
  store %struct.Memory* %call_43b2a9, %struct.Memory** %MEMORY

  ; Code: jle .L_43b2c0	 RIP: 43b2ac	 Bytes: 6
  %loadMem_43b2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2ac = call %struct.Memory* @routine_jle_.L_43b2c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2ac, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43b2ac, %struct.Memory** %MEMORY

  %loadBr_43b2ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43b2ac = icmp eq i8 %loadBr_43b2ac, 1
  br i1 %cmpBr_43b2ac, label %block_.L_43b2c0, label %block_43b2b2

block_43b2b2:
  ; Code: movl -0x64(%rbp), %eax	 RIP: 43b2b2	 Bytes: 3
  %loadMem_43b2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2b2 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2b2)
  store %struct.Memory* %call_43b2b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 43b2b5	 Bytes: 6
  %loadMem_43b2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2b5 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2b5)
  store %struct.Memory* %call_43b2b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43b2e8	 RIP: 43b2bb	 Bytes: 5
  %loadMem_43b2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2bb = call %struct.Memory* @routine_jmpq_.L_43b2e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2bb, i64 45, i64 5)
  store %struct.Memory* %call_43b2bb, %struct.Memory** %MEMORY

  br label %block_.L_43b2e8

  ; Code: .L_43b2c0:	 RIP: 43b2c0	 Bytes: 0
block_.L_43b2c0:

  ; Code: movl -0x8c(%rbp), %eax	 RIP: 43b2c0	 Bytes: 6
  %loadMem_43b2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2c0 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2c0)
  store %struct.Memory* %call_43b2c0, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 43b2c6	 Bytes: 6
  %loadMem_43b2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2c6 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2c6)
  store %struct.Memory* %call_43b2c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43b2cc	 Bytes: 3
  %loadMem_43b2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2cc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2cc)
  store %struct.Memory* %call_43b2cc, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 43b2cf	 Bytes: 3
  %loadMem_43b2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2cf = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2cf)
  store %struct.Memory* %call_43b2cf, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43b2d2	 Bytes: 2
  %loadMem_43b2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2d2 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2d2)
  store %struct.Memory* %call_43b2d2, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %ecx	 RIP: 43b2d4	 Bytes: 6
  %loadMem_43b2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2d4 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2d4)
  store %struct.Memory* %call_43b2d4, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 43b2da	 Bytes: 3
  %loadMem_43b2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2da = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2da)
  store %struct.Memory* %call_43b2da, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 43b2dd	 Bytes: 2
  %loadMem_43b2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2dd = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2dd)
  store %struct.Memory* %call_43b2dd, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 43b2df	 Bytes: 3
  %loadMem_43b2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2df = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2df)
  store %struct.Memory* %call_43b2df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 43b2e2	 Bytes: 6
  %loadMem_43b2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2e2 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2e2)
  store %struct.Memory* %call_43b2e2, %struct.Memory** %MEMORY

  ; Code: .L_43b2e8:	 RIP: 43b2e8	 Bytes: 0
  br label %block_.L_43b2e8
block_.L_43b2e8:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 43b2e8	 Bytes: 6
  %loadMem_43b2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2e8 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2e8)
  store %struct.Memory* %call_43b2e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 43b2ee	 Bytes: 6
  %loadMem_43b2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2ee = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2ee)
  store %struct.Memory* %call_43b2ee, %struct.Memory** %MEMORY

  ; Code: .L_43b2f4:	 RIP: 43b2f4	 Bytes: 0
  br label %block_.L_43b2f4
block_.L_43b2f4:

  ; Code: movl -0x1fc(%rbp), %eax	 RIP: 43b2f4	 Bytes: 6
  %loadMem_43b2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2f4 = call %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2f4)
  store %struct.Memory* %call_43b2f4, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rcx	 RIP: 43b2fa	 Bytes: 7
  %loadMem_43b2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b2fa = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b2fa)
  store %struct.Memory* %call_43b2fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rdx	 RIP: 43b301	 Bytes: 4
  %loadMem_43b301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b301 = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b301)
  store %struct.Memory* %call_43b301, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 43b305	 Bytes: 4
  %loadMem_43b305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b305 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b305)
  store %struct.Memory* %call_43b305, %struct.Memory** %MEMORY

  ; Code: addl %eax, %esi	 RIP: 43b309	 Bytes: 2
  %loadMem_43b309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b309 = call %struct.Memory* @routine_addl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b309)
  store %struct.Memory* %call_43b309, %struct.Memory** %MEMORY

  ; Code: movw %si, %di	 RIP: 43b30b	 Bytes: 3
  %loadMem_43b30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b30b = call %struct.Memory* @routine_movw__si___di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b30b)
  store %struct.Memory* %call_43b30b, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rcx,%rdx,2)	 RIP: 43b30e	 Bytes: 4
  %loadMem_43b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b30e = call %struct.Memory* @routine_movw__di____rcx__rdx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b30e)
  store %struct.Memory* %call_43b30e, %struct.Memory** %MEMORY

  ; Code: .L_43b312:	 RIP: 43b312	 Bytes: 0
  br label %block_.L_43b312
block_.L_43b312:

  ; Code: jmpq .L_43b317	 RIP: 43b312	 Bytes: 5
  %loadMem_43b312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b312 = call %struct.Memory* @routine_jmpq_.L_43b317(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b312, i64 5, i64 5)
  store %struct.Memory* %call_43b312, %struct.Memory** %MEMORY

  br label %block_.L_43b317

  ; Code: .L_43b317:	 RIP: 43b317	 Bytes: 0
block_.L_43b317:

  ; Code: jmpq .L_43b31c	 RIP: 43b317	 Bytes: 5
  %loadMem_43b317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b317 = call %struct.Memory* @routine_jmpq_.L_43b31c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b317, i64 5, i64 5)
  store %struct.Memory* %call_43b317, %struct.Memory** %MEMORY

  br label %block_.L_43b31c

  ; Code: .L_43b31c:	 RIP: 43b31c	 Bytes: 0
block_.L_43b31c:

  ; Code: jmpq .L_43b321	 RIP: 43b31c	 Bytes: 5
  %loadMem_43b31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b31c = call %struct.Memory* @routine_jmpq_.L_43b321(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b31c, i64 5, i64 5)
  store %struct.Memory* %call_43b31c, %struct.Memory** %MEMORY

  br label %block_.L_43b321

  ; Code: .L_43b321:	 RIP: 43b321	 Bytes: 0
block_.L_43b321:

  ; Code: jmpq .L_43b326	 RIP: 43b321	 Bytes: 5
  %loadMem_43b321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b321 = call %struct.Memory* @routine_jmpq_.L_43b326(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b321, i64 5, i64 5)
  store %struct.Memory* %call_43b321, %struct.Memory** %MEMORY

  br label %block_.L_43b326

  ; Code: .L_43b326:	 RIP: 43b326	 Bytes: 0
block_.L_43b326:

  ; Code: jmpq .L_43b32b	 RIP: 43b326	 Bytes: 5
  %loadMem_43b326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b326 = call %struct.Memory* @routine_jmpq_.L_43b32b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b326, i64 5, i64 5)
  store %struct.Memory* %call_43b326, %struct.Memory** %MEMORY

  br label %block_.L_43b32b

  ; Code: .L_43b32b:	 RIP: 43b32b	 Bytes: 0
block_.L_43b32b:

  ; Code: jmpq .L_43b330	 RIP: 43b32b	 Bytes: 5
  %loadMem_43b32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b32b = call %struct.Memory* @routine_jmpq_.L_43b330(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b32b, i64 5, i64 5)
  store %struct.Memory* %call_43b32b, %struct.Memory** %MEMORY

  br label %block_.L_43b330

  ; Code: .L_43b330:	 RIP: 43b330	 Bytes: 0
block_.L_43b330:

  ; Code: jmpq .L_43b335	 RIP: 43b330	 Bytes: 5
  %loadMem_43b330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b330 = call %struct.Memory* @routine_jmpq_.L_43b335(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b330, i64 5, i64 5)
  store %struct.Memory* %call_43b330, %struct.Memory** %MEMORY

  br label %block_.L_43b335

  ; Code: .L_43b335:	 RIP: 43b335	 Bytes: 0
block_.L_43b335:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43b335	 Bytes: 3
  %loadMem_43b335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b335 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b335)
  store %struct.Memory* %call_43b335, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43b338	 Bytes: 3
  %loadMem_43b338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b338 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b338)
  store %struct.Memory* %call_43b338, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43b33b	 Bytes: 3
  %loadMem_43b33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b33b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b33b)
  store %struct.Memory* %call_43b33b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a412	 RIP: 43b33e	 Bytes: 5
  %loadMem_43b33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b33e = call %struct.Memory* @routine_jmpq_.L_43a412(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b33e, i64 -3884, i64 5)
  store %struct.Memory* %call_43b33e, %struct.Memory** %MEMORY

  br label %block_.L_43a412

  ; Code: .L_43b343:	 RIP: 43b343	 Bytes: 0
block_.L_43b343:

  ; Code: addq $0x1f0, %rsp	 RIP: 43b343	 Bytes: 7
  %loadMem_43b343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b343 = call %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b343)
  store %struct.Memory* %call_43b343, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 43b34a	 Bytes: 1
  %loadMem_43b34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b34a = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b34a)
  store %struct.Memory* %call_43b34a, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 43b34b	 Bytes: 2
  %loadMem_43b34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b34b = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b34b)
  store %struct.Memory* %call_43b34b, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43b34d	 Bytes: 1
  %loadMem_43b34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b34d = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b34d)
  store %struct.Memory* %call_43b34d, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43b34e	 Bytes: 1
  %loadMem_43b34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43b34e = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43b34e)
  store %struct.Memory* %call_43b34e, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43b34e
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


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x1f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 496)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x28__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
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


define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r14d__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ebx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r11d__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r10d__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x4c37e0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x4c37e0_type* @G_0x4c37e0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x4c37e8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x4c37e8_type* @G_0x4c37e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x4c37f0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x4c37f0_type* @G_0x4c37f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x4c37f8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x4c37f8_type* @G_0x4c37f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdx__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_43a39e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x11bd4__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_subl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_43a3ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_0x11bd8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_je_.L_43a3ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x150__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movslq_0x11bfc__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__edx__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a3ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 16)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x154__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl_MINUS0xb8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_43b343(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43a439(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 344
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a445(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x158__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_je_.L_43a497(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43a476(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 348
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a486(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x15c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 348
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a4a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x160__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x128__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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


define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xdc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xe4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.getNeighbour(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x110__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0xdc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_subl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1___r9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R9B, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x108__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x104__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
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

define %struct.Memory* @routine_imulq__0x278___r10___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %9, i64 632)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r10___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movslq_MINUS0x10c__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__r8__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xf0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x214__r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_movb__r9b__MINUS0x161__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 353
  %15 = load i8, i8* %R9B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_43a591(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 532
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

define %struct.Memory* @routine_setne__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__cl__MINUS0x161__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 353
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_movb_MINUS0x161__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 353
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_andb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__al__0x723694(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x723694_type* @G_0x723694 to i64), i64 %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_je_.L_43a630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 184
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43a630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_43a5f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43a5f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a61f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %10 [
    i5 0, label %43
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 32
  %9 = ashr i64 %8, 33
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 31
  %12 = add  i64 %11, -1
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = ashr i64 %14, %12
  %16 = icmp ne i8 0, 0
  %17 = zext i1 %16 to i8
  %18 = lshr i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %21 = phi i64 [ %18, %10 ], [ %9, %7 ]
  %22 = phi i8 [ %17, %10 ], [ 0, %7 ]
  %23 = phi i64 [ %15, %10 ], [ %3, %7 ]
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = trunc i64 %21 to i32
  %27 = and i64 %21, 4294967295
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %25, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %30 = and i32 %26, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %29, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %37 = icmp eq i32 %26, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shll__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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


define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0x16c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x168__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a639(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x170__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43a666(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x264__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43b330(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_43a6c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0x723694___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x723694_type* @G_0x723694 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_je_.L_43a6a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43a6a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a6af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x174__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 376
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a6d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x178__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_je_.L_43a733(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_43a719(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43a719(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a722(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x17c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 380
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 384
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a743(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x180__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
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


define %struct.Memory* @routine_movslq_MINUS0x114__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
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


define %struct.Memory* @routine_movslq_MINUS0x118__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
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


define %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movslq_MINUS0xfc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x100__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rcx__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_43a8f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl_0x11c0c__rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 72716
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_jge_.L_43a7cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a82a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 51)
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

define %struct.Memory* @routine_jle_.L_43a7ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x33___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 51)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a81e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x188__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x184__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0x4b2320___rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4924192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x11c0c__rcx__rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 72716
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43a870(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a8cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jle_.L_43a8a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 404
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a8c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__ecx__MINUS0x194__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 404
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x194__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x190__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x18c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_sarl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a917(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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




define %struct.Memory* @routine_movl__ecx__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x198__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43a942(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a97f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x33___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 51)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_43a964(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 416
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x1a0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x19c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43a9aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a9e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jle_.L_43a9cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 424
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43a9db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x1a8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1a4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 420
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x6cb9c0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6cb9c0_type* @G__0x6cb9c0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movslq_MINUS0xb0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0x6cb940___rsi_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 7125312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_imull_MINUS0x12c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 300
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movslq_MINUS0xb4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0x6cb980___rsi_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 7125376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_imulq__0x5___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5)
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


define %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_subl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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




define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_imull__0x3___ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 3)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imull__0x3__MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 3)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rdx__rsi_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %17)
  ret %struct.Memory* %20
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




define %struct.Memory* @routine_je_.L_43b32b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_subl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.abs_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x9c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 156
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43b326(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_imull_MINUS0x12c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 300
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x88__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subl_MINUS0x7c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 124
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 428
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x1ac__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 428
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_andl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43b321(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_43abe9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl_MINUS0x8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 140
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setl__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_andb__0x1___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movzbl__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 132
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43aebe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_43ac58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 124
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_sarl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax___cx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %CX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %CX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__cx____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i16, i16* %CX
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_43aeb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x9c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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


define %struct.Memory* @routine_setl__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_andb__0x1___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %DL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movzbl__dl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %DL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = and i32 %8, %6
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

define %struct.Memory* @routine_andl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_andl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43acc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x90__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_shll__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 140
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_sarl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 432
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43ace3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl_MINUS0x1b0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43ad28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_43ad43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_43ad86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43ad92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %CX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_je_.L_43add4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 444
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43addd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x1bc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movw__ax___dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_je_.L_43ae35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_MINUS0x90__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43ae41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x1c0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_je_.L_43ae91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_43ae9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_43b31c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_43aed9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43aee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x1c8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_addl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_subl_MINUS0x68__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43af25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x1cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43af7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_subl_MINUS0x88__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jle_.L_43af53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 464
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43af70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_movl_MINUS0x1d0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1cc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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




define %struct.Memory* @routine_jne_.L_43b081(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43afab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43afee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_cmpl_0x11bec__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72684
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_43afd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 472
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43afe2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x1d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 468
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_subl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43b020(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 476
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b069(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jle_.L_43b04e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 480
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b05d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 480
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1e0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1dc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 476
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_43b16e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_43b09d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b0e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_cmpl_0x11bf0__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72688
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_43b0c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b0d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jge_.L_43b112(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b15b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jle_.L_43b140(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b14f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x1f0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_43b317(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_43b23e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x90__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 100
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43b1bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b21c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_subl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jle_.L_43b1ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b210(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movw__cx___di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %CX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw__di____rdx__rsi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_je_.L_43b312(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_MINUS0x88__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jge_.L_43b287(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b2f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_jle_.L_43b2c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43b2e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movw__si___di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %SI
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw__di____rcx__rdx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_43b317(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_43b321(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43b326(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43b32b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43b330(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43b335(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43a412(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x1f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 496)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
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

