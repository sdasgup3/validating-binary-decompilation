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

declare %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42dd50.UnifiedOneForthPix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x722cb0_type = type <{ [8 x i8] }>
@G_0x722cb0= global %G_0x722cb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7247b0_type = type <{ [4 x i8] }>
@G_0x7247b0= global %G_0x7247b0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7247b4_type = type <{ [4 x i8] }>
@G_0x7247b4= global %G_0x7247b4_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @dpb_combine_field(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dpb_combine_field:	 RIP: 452270	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 452270	 Bytes: 1
  %loadMem_452270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452270 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452270)
  store %struct.Memory* %call_452270, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 452271	 Bytes: 3
  %loadMem_452271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452271 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452271)
  store %struct.Memory* %call_452271, %struct.Memory** %MEMORY

  ; Code: subq $0x180, %rsp	 RIP: 452274	 Bytes: 7
  %loadMem_452274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452274 = call %struct.Memory* @routine_subq__0x180___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452274)
  store %struct.Memory* %call_452274, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 45227b	 Bytes: 2
  %loadMem_45227b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45227b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45227b)
  store %struct.Memory* %call_45227b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 45227d	 Bytes: 4
  %loadMem_45227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45227d = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45227d)
  store %struct.Memory* %call_45227d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 452281	 Bytes: 4
  %loadMem_452281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452281 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452281)
  store %struct.Memory* %call_452281, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdi), %rdi	 RIP: 452285	 Bytes: 4
  %loadMem_452285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452285 = call %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452285)
  store %struct.Memory* %call_452285, %struct.Memory** %MEMORY

  ; Code: movl 0x18f8(%rdi), %esi	 RIP: 452289	 Bytes: 6
  %loadMem_452289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452289 = call %struct.Memory* @routine_movl_0x18f8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452289)
  store %struct.Memory* %call_452289, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 45228f	 Bytes: 4
  %loadMem_45228f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45228f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45228f)
  store %struct.Memory* %call_45228f, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdi), %rdi	 RIP: 452293	 Bytes: 4
  %loadMem_452293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452293 = call %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452293)
  store %struct.Memory* %call_452293, %struct.Memory** %MEMORY

  ; Code: movl 0x18fc(%rdi), %ecx	 RIP: 452297	 Bytes: 6
  %loadMem_452297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452297 = call %struct.Memory* @routine_movl_0x18fc__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452297)
  store %struct.Memory* %call_452297, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 45229d	 Bytes: 3
  %loadMem_45229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45229d = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45229d)
  store %struct.Memory* %call_45229d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4522a0	 Bytes: 4
  %loadMem_4522a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522a0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522a0)
  store %struct.Memory* %call_4522a0, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdi), %rdi	 RIP: 4522a4	 Bytes: 4
  %loadMem_4522a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522a4 = call %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522a4)
  store %struct.Memory* %call_4522a4, %struct.Memory** %MEMORY

  ; Code: movl 0x1900(%rdi), %edx	 RIP: 4522a8	 Bytes: 6
  %loadMem_4522a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522a8 = call %struct.Memory* @routine_movl_0x1900__rdi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522a8)
  store %struct.Memory* %call_4522a8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4522ae	 Bytes: 4
  %loadMem_4522ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522ae = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522ae)
  store %struct.Memory* %call_4522ae, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdi), %rdi	 RIP: 4522b2	 Bytes: 4
  %loadMem_4522b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522b2 = call %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522b2)
  store %struct.Memory* %call_4522b2, %struct.Memory** %MEMORY

  ; Code: movl 0x1904(%rdi), %r8d	 RIP: 4522b6	 Bytes: 7
  %loadMem_4522b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522b6 = call %struct.Memory* @routine_movl_0x1904__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522b6)
  store %struct.Memory* %call_4522b6, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 4522bd	 Bytes: 4
  %loadMem_4522bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522bd = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522bd)
  store %struct.Memory* %call_4522bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4522c1	 Bytes: 2
  %loadMem_4522c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522c1 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522c1)
  store %struct.Memory* %call_4522c1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 4522c3	 Bytes: 3
  %loadMem_4522c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522c3 = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522c3)
  store %struct.Memory* %call_4522c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4522c6	 Bytes: 2
  %loadMem_4522c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522c6 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522c6)
  store %struct.Memory* %call_4522c6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4522c8	 Bytes: 3
  %loadMem_4522c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522c8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522c8)
  store %struct.Memory* %call_4522c8, %struct.Memory** %MEMORY

  ; Code: callq .alloc_storable_picture	 RIP: 4522cb	 Bytes: 5
  %loadMem1_4522cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4522cb = call %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4522cb, i64 -25963, i64 5, i64 5)
  store %struct.Memory* %call1_4522cb, %struct.Memory** %MEMORY

  %loadMem2_4522cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4522cb = load i64, i64* %3
  %call2_4522cb = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64  %loadPC_4522cb, %struct.Memory* %loadMem2_4522cb)
  store %struct.Memory* %call2_4522cb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %r9	 RIP: 4522d0	 Bytes: 4
  %loadMem_4522d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522d0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522d0)
  store %struct.Memory* %call_4522d0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x28(%r9)	 RIP: 4522d4	 Bytes: 4
  %loadMem_4522d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522d4 = call %struct.Memory* @routine_movq__rax__0x28__r9_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522d4)
  store %struct.Memory* %call_4522d4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4522d8	 Bytes: 7
  %loadMem_4522d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522d8 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522d8)
  store %struct.Memory* %call_4522d8, %struct.Memory** %MEMORY

  ; Code: .L_4522df:	 RIP: 4522df	 Bytes: 0
  br label %block_.L_4522df
block_.L_4522df:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4522df	 Bytes: 3
  %loadMem_4522df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522df = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522df)
  store %struct.Memory* %call_4522df, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4522e2	 Bytes: 4
  %loadMem_4522e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522e2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522e2)
  store %struct.Memory* %call_4522e2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 4522e6	 Bytes: 4
  %loadMem_4522e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522e6 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522e6)
  store %struct.Memory* %call_4522e6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18fc(%rcx), %eax	 RIP: 4522ea	 Bytes: 6
  %loadMem_4522ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522ea = call %struct.Memory* @routine_cmpl_0x18fc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522ea)
  store %struct.Memory* %call_4522ea, %struct.Memory** %MEMORY

  ; Code: jge .L_4523b9	 RIP: 4522f0	 Bytes: 6
  %loadMem_4522f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522f0 = call %struct.Memory* @routine_jge_.L_4523b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522f0, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_4522f0, %struct.Memory** %MEMORY

  %loadBr_4522f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4522f0 = icmp eq i8 %loadBr_4522f0, 1
  br i1 %cmpBr_4522f0, label %block_.L_4523b9, label %block_4522f6

block_4522f6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4522f6	 Bytes: 4
  %loadMem_4522f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522f6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522f6)
  store %struct.Memory* %call_4522f6, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4522fa	 Bytes: 4
  %loadMem_4522fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522fa = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522fa)
  store %struct.Memory* %call_4522fa, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 4522fe	 Bytes: 7
  %loadMem_4522fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4522fe = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4522fe)
  store %struct.Memory* %call_4522fe, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 452305	 Bytes: 3
  %loadMem_452305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452305 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452305)
  store %struct.Memory* %call_452305, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 452308	 Bytes: 3
  %loadMem_452308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452308 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452308)
  store %struct.Memory* %call_452308, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 45230b	 Bytes: 3
  %loadMem_45230b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45230b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45230b)
  store %struct.Memory* %call_45230b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45230e	 Bytes: 4
  %loadMem_45230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45230e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45230e)
  store %struct.Memory* %call_45230e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452312	 Bytes: 4
  %loadMem_452312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452312 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452312)
  store %struct.Memory* %call_452312, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 452316	 Bytes: 4
  %loadMem_452316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452316 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452316)
  store %struct.Memory* %call_452316, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rdx), %rdx	 RIP: 45231a	 Bytes: 7
  %loadMem_45231a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45231a = call %struct.Memory* @routine_movq_0x1918__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45231a)
  store %struct.Memory* %call_45231a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 452321	 Bytes: 4
  %loadMem_452321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452321 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452321)
  store %struct.Memory* %call_452321, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 452325	 Bytes: 4
  %loadMem_452325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452325 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452325)
  store %struct.Memory* %call_452325, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452329	 Bytes: 4
  %loadMem_452329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452329 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452329)
  store %struct.Memory* %call_452329, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 45232d	 Bytes: 4
  %loadMem_45232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45232d = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45232d)
  store %struct.Memory* %call_45232d, %struct.Memory** %MEMORY

  ; Code: movslq 0x18f8(%rsi), %rsi	 RIP: 452331	 Bytes: 7
  %loadMem_452331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452331 = call %struct.Memory* @routine_movslq_0x18f8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452331)
  store %struct.Memory* %call_452331, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 452338	 Bytes: 4
  %loadMem_452338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452338 = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452338)
  store %struct.Memory* %call_452338, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45233c	 Bytes: 3
  %loadMem_45233c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45233c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45233c)
  store %struct.Memory* %call_45233c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 45233f	 Bytes: 4
  %loadMem_45233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45233f = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45233f)
  store %struct.Memory* %call_45233f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 452343	 Bytes: 3
  %loadMem_452343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452343 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452343)
  store %struct.Memory* %call_452343, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 452346	 Bytes: 4
  %loadMem_452346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452346 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452346)
  store %struct.Memory* %call_452346, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 45234a	 Bytes: 5
  %loadMem1_45234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45234a = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45234a, i64 -332314, i64 5, i64 5)
  store %struct.Memory* %call1_45234a, %struct.Memory** %MEMORY

  %loadMem2_45234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45234a = load i64, i64* %3
  %call2_45234a = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_45234a, %struct.Memory* %loadMem2_45234a)
  store %struct.Memory* %call2_45234a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 45234f	 Bytes: 4
  %loadMem_45234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45234f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45234f)
  store %struct.Memory* %call_45234f, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 452353	 Bytes: 4
  %loadMem_452353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452353 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452353)
  store %struct.Memory* %call_452353, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 452357	 Bytes: 7
  %loadMem_452357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452357 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452357)
  store %struct.Memory* %call_452357, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 45235e	 Bytes: 3
  %loadMem_45235e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45235e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45235e)
  store %struct.Memory* %call_45235e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 452361	 Bytes: 3
  %loadMem_452361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452361 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452361)
  store %struct.Memory* %call_452361, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 452364	 Bytes: 3
  %loadMem_452364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452364 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452364)
  store %struct.Memory* %call_452364, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 452367	 Bytes: 3
  %loadMem_452367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452367 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452367)
  store %struct.Memory* %call_452367, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45236a	 Bytes: 4
  %loadMem_45236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45236a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45236a)
  store %struct.Memory* %call_45236a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45236e	 Bytes: 4
  %loadMem_45236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45236e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45236e)
  store %struct.Memory* %call_45236e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rdx), %rdx	 RIP: 452372	 Bytes: 4
  %loadMem_452372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452372 = call %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452372)
  store %struct.Memory* %call_452372, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rdx), %rdx	 RIP: 452376	 Bytes: 7
  %loadMem_452376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452376 = call %struct.Memory* @routine_movq_0x1918__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452376)
  store %struct.Memory* %call_452376, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 45237d	 Bytes: 4
  %loadMem_45237d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45237d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45237d)
  store %struct.Memory* %call_45237d, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 452381	 Bytes: 4
  %loadMem_452381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452381 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452381)
  store %struct.Memory* %call_452381, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452385	 Bytes: 4
  %loadMem_452385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452385 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452385)
  store %struct.Memory* %call_452385, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452389	 Bytes: 4
  %loadMem_452389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452389 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452389)
  store %struct.Memory* %call_452389, %struct.Memory** %MEMORY

  ; Code: movslq 0x18f8(%rsi), %rsi	 RIP: 45238d	 Bytes: 7
  %loadMem_45238d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45238d = call %struct.Memory* @routine_movslq_0x18f8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45238d)
  store %struct.Memory* %call_45238d, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 452394	 Bytes: 4
  %loadMem_452394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452394 = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452394)
  store %struct.Memory* %call_452394, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 452398	 Bytes: 3
  %loadMem_452398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452398 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452398)
  store %struct.Memory* %call_452398, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x30(%rbp)	 RIP: 45239b	 Bytes: 4
  %loadMem_45239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45239b = call %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45239b)
  store %struct.Memory* %call_45239b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 45239f	 Bytes: 3
  %loadMem_45239f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45239f = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45239f)
  store %struct.Memory* %call_45239f, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdx	 RIP: 4523a2	 Bytes: 4
  %loadMem_4523a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523a2 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523a2)
  store %struct.Memory* %call_4523a2, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 4523a6	 Bytes: 5
  %loadMem1_4523a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4523a6 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4523a6, i64 -332406, i64 5, i64 5)
  store %struct.Memory* %call1_4523a6, %struct.Memory** %MEMORY

  %loadMem2_4523a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4523a6 = load i64, i64* %3
  %call2_4523a6 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_4523a6, %struct.Memory* %loadMem2_4523a6)
  store %struct.Memory* %call2_4523a6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4523ab	 Bytes: 3
  %loadMem_4523ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523ab = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523ab)
  store %struct.Memory* %call_4523ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4523ae	 Bytes: 3
  %loadMem_4523ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523ae = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523ae)
  store %struct.Memory* %call_4523ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4523b1	 Bytes: 3
  %loadMem_4523b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523b1 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523b1)
  store %struct.Memory* %call_4523b1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4522df	 RIP: 4523b4	 Bytes: 5
  %loadMem_4523b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523b4 = call %struct.Memory* @routine_jmpq_.L_4522df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523b4, i64 -213, i64 5)
  store %struct.Memory* %call_4523b4, %struct.Memory** %MEMORY

  br label %block_.L_4522df

  ; Code: .L_4523b9:	 RIP: 4523b9	 Bytes: 0
block_.L_4523b9:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4523b9	 Bytes: 7
  %loadMem_4523b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523b9 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523b9)
  store %struct.Memory* %call_4523b9, %struct.Memory** %MEMORY

  ; Code: .L_4523c0:	 RIP: 4523c0	 Bytes: 0
  br label %block_.L_4523c0
block_.L_4523c0:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4523c0	 Bytes: 3
  %loadMem_4523c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523c0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523c0)
  store %struct.Memory* %call_4523c0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4523c3	 Bytes: 4
  %loadMem_4523c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523c3)
  store %struct.Memory* %call_4523c3, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 4523c7	 Bytes: 4
  %loadMem_4523c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523c7 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523c7)
  store %struct.Memory* %call_4523c7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1904(%rcx), %eax	 RIP: 4523cb	 Bytes: 6
  %loadMem_4523cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523cb = call %struct.Memory* @routine_cmpl_0x1904__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523cb)
  store %struct.Memory* %call_4523cb, %struct.Memory** %MEMORY

  ; Code: jge .L_45256b	 RIP: 4523d1	 Bytes: 6
  %loadMem_4523d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523d1 = call %struct.Memory* @routine_jge_.L_45256b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523d1, i8* %BRANCH_TAKEN, i64 410, i64 6, i64 6)
  store %struct.Memory* %call_4523d1, %struct.Memory** %MEMORY

  %loadBr_4523d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4523d1 = icmp eq i8 %loadBr_4523d1, 1
  br i1 %cmpBr_4523d1, label %block_.L_45256b, label %block_4523d7

block_4523d7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4523d7	 Bytes: 4
  %loadMem_4523d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523d7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523d7)
  store %struct.Memory* %call_4523d7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4523db	 Bytes: 4
  %loadMem_4523db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523db = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523db)
  store %struct.Memory* %call_4523db, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 4523df	 Bytes: 7
  %loadMem_4523df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523df = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523df)
  store %struct.Memory* %call_4523df, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4523e6	 Bytes: 3
  %loadMem_4523e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523e6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523e6)
  store %struct.Memory* %call_4523e6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4523e9	 Bytes: 3
  %loadMem_4523e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523e9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523e9)
  store %struct.Memory* %call_4523e9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 4523ec	 Bytes: 3
  %loadMem_4523ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523ec = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523ec)
  store %struct.Memory* %call_4523ec, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4523ef	 Bytes: 3
  %loadMem_4523ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523ef = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523ef)
  store %struct.Memory* %call_4523ef, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4523f2	 Bytes: 4
  %loadMem_4523f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523f2 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523f2)
  store %struct.Memory* %call_4523f2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4523f6	 Bytes: 4
  %loadMem_4523f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523f6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523f6)
  store %struct.Memory* %call_4523f6, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 4523fa	 Bytes: 4
  %loadMem_4523fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523fa = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523fa)
  store %struct.Memory* %call_4523fa, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 4523fe	 Bytes: 7
  %loadMem_4523fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4523fe = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4523fe)
  store %struct.Memory* %call_4523fe, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 452405	 Bytes: 3
  %loadMem_452405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452405 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452405)
  store %struct.Memory* %call_452405, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 452408	 Bytes: 4
  %loadMem_452408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452408 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452408)
  store %struct.Memory* %call_452408, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 45240c	 Bytes: 4
  %loadMem_45240c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45240c = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45240c)
  store %struct.Memory* %call_45240c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452410	 Bytes: 4
  %loadMem_452410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452410 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452410)
  store %struct.Memory* %call_452410, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 452414	 Bytes: 4
  %loadMem_452414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452414 = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452414)
  store %struct.Memory* %call_452414, %struct.Memory** %MEMORY

  ; Code: movslq 0x1900(%rsi), %rsi	 RIP: 452418	 Bytes: 7
  %loadMem_452418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452418 = call %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452418)
  store %struct.Memory* %call_452418, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 45241f	 Bytes: 4
  %loadMem_45241f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45241f = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45241f)
  store %struct.Memory* %call_45241f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 452423	 Bytes: 3
  %loadMem_452423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452423 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452423)
  store %struct.Memory* %call_452423, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 452426	 Bytes: 4
  %loadMem_452426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452426 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452426)
  store %struct.Memory* %call_452426, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 45242a	 Bytes: 3
  %loadMem_45242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45242a = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45242a)
  store %struct.Memory* %call_45242a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 45242d	 Bytes: 4
  %loadMem_45242d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45242d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45242d)
  store %struct.Memory* %call_45242d, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 452431	 Bytes: 5
  %loadMem1_452431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_452431 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_452431, i64 -332545, i64 5, i64 5)
  store %struct.Memory* %call1_452431, %struct.Memory** %MEMORY

  %loadMem2_452431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452431 = load i64, i64* %3
  %call2_452431 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_452431, %struct.Memory* %loadMem2_452431)
  store %struct.Memory* %call2_452431, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452436	 Bytes: 4
  %loadMem_452436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452436 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452436)
  store %struct.Memory* %call_452436, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45243a	 Bytes: 4
  %loadMem_45243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45243a = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45243a)
  store %struct.Memory* %call_45243a, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 45243e	 Bytes: 7
  %loadMem_45243e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45243e = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45243e)
  store %struct.Memory* %call_45243e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 452445	 Bytes: 3
  %loadMem_452445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452445 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452445)
  store %struct.Memory* %call_452445, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 452448	 Bytes: 3
  %loadMem_452448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452448 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452448)
  store %struct.Memory* %call_452448, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 45244b	 Bytes: 3
  %loadMem_45244b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45244b = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45244b)
  store %struct.Memory* %call_45244b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45244e	 Bytes: 3
  %loadMem_45244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45244e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45244e)
  store %struct.Memory* %call_45244e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 452451	 Bytes: 3
  %loadMem_452451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452451 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452451)
  store %struct.Memory* %call_452451, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 452454	 Bytes: 4
  %loadMem_452454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452454 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452454)
  store %struct.Memory* %call_452454, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452458	 Bytes: 4
  %loadMem_452458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452458 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452458)
  store %struct.Memory* %call_452458, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rdx), %rdx	 RIP: 45245c	 Bytes: 4
  %loadMem_45245c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45245c = call %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45245c)
  store %struct.Memory* %call_45245c, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 452460	 Bytes: 7
  %loadMem_452460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452460 = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452460)
  store %struct.Memory* %call_452460, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 452467	 Bytes: 3
  %loadMem_452467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452467 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452467)
  store %struct.Memory* %call_452467, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 45246a	 Bytes: 4
  %loadMem_45246a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45246a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45246a)
  store %struct.Memory* %call_45246a, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 45246e	 Bytes: 4
  %loadMem_45246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45246e = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45246e)
  store %struct.Memory* %call_45246e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452472	 Bytes: 4
  %loadMem_452472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452472 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452472)
  store %struct.Memory* %call_452472, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452476	 Bytes: 4
  %loadMem_452476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452476 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452476)
  store %struct.Memory* %call_452476, %struct.Memory** %MEMORY

  ; Code: movslq 0x1900(%rsi), %rsi	 RIP: 45247a	 Bytes: 7
  %loadMem_45247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45247a = call %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45247a)
  store %struct.Memory* %call_45247a, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 452481	 Bytes: 4
  %loadMem_452481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452481 = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452481)
  store %struct.Memory* %call_452481, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 452485	 Bytes: 3
  %loadMem_452485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452485 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452485)
  store %struct.Memory* %call_452485, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x40(%rbp)	 RIP: 452488	 Bytes: 4
  %loadMem_452488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452488 = call %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452488)
  store %struct.Memory* %call_452488, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 45248c	 Bytes: 3
  %loadMem_45248c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45248c = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45248c)
  store %struct.Memory* %call_45248c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 45248f	 Bytes: 4
  %loadMem_45248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45248f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45248f)
  store %struct.Memory* %call_45248f, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 452493	 Bytes: 5
  %loadMem1_452493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_452493 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_452493, i64 -332643, i64 5, i64 5)
  store %struct.Memory* %call1_452493, %struct.Memory** %MEMORY

  %loadMem2_452493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452493 = load i64, i64* %3
  %call2_452493 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_452493, %struct.Memory* %loadMem2_452493)
  store %struct.Memory* %call2_452493, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452498	 Bytes: 4
  %loadMem_452498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452498 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452498)
  store %struct.Memory* %call_452498, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45249c	 Bytes: 4
  %loadMem_45249c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45249c = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45249c)
  store %struct.Memory* %call_45249c, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 4524a0	 Bytes: 7
  %loadMem_4524a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524a0 = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524a0)
  store %struct.Memory* %call_4524a0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4524a7	 Bytes: 4
  %loadMem_4524a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524a7 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524a7)
  store %struct.Memory* %call_4524a7, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4524ab	 Bytes: 3
  %loadMem_4524ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524ab = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524ab)
  store %struct.Memory* %call_4524ab, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 4524ae	 Bytes: 3
  %loadMem_4524ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524ae = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524ae)
  store %struct.Memory* %call_4524ae, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4524b1	 Bytes: 3
  %loadMem_4524b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524b1 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524b1)
  store %struct.Memory* %call_4524b1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4524b4	 Bytes: 4
  %loadMem_4524b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524b4 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524b4)
  store %struct.Memory* %call_4524b4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4524b8	 Bytes: 4
  %loadMem_4524b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524b8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524b8)
  store %struct.Memory* %call_4524b8, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 4524bc	 Bytes: 4
  %loadMem_4524bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524bc = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524bc)
  store %struct.Memory* %call_4524bc, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 4524c0	 Bytes: 7
  %loadMem_4524c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524c0 = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524c0)
  store %struct.Memory* %call_4524c0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 4524c7	 Bytes: 4
  %loadMem_4524c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524c7 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524c7)
  store %struct.Memory* %call_4524c7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4524cb	 Bytes: 4
  %loadMem_4524cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524cb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524cb)
  store %struct.Memory* %call_4524cb, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4524cf	 Bytes: 4
  %loadMem_4524cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524cf = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524cf)
  store %struct.Memory* %call_4524cf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4524d3	 Bytes: 4
  %loadMem_4524d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524d3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524d3)
  store %struct.Memory* %call_4524d3, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 4524d7	 Bytes: 4
  %loadMem_4524d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524d7 = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524d7)
  store %struct.Memory* %call_4524d7, %struct.Memory** %MEMORY

  ; Code: movslq 0x1900(%rsi), %rsi	 RIP: 4524db	 Bytes: 7
  %loadMem_4524db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524db = call %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524db)
  store %struct.Memory* %call_4524db, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 4524e2	 Bytes: 4
  %loadMem_4524e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524e2 = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524e2)
  store %struct.Memory* %call_4524e2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4524e6	 Bytes: 3
  %loadMem_4524e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524e6 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524e6)
  store %struct.Memory* %call_4524e6, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 4524e9	 Bytes: 4
  %loadMem_4524e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524e9 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524e9)
  store %struct.Memory* %call_4524e9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 4524ed	 Bytes: 3
  %loadMem_4524ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524ed = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524ed)
  store %struct.Memory* %call_4524ed, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 4524f0	 Bytes: 4
  %loadMem_4524f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524f0 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524f0)
  store %struct.Memory* %call_4524f0, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 4524f4	 Bytes: 5
  %loadMem1_4524f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4524f4 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4524f4, i64 -332740, i64 5, i64 5)
  store %struct.Memory* %call1_4524f4, %struct.Memory** %MEMORY

  %loadMem2_4524f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4524f4 = load i64, i64* %3
  %call2_4524f4 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_4524f4, %struct.Memory* %loadMem2_4524f4)
  store %struct.Memory* %call2_4524f4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4524f9	 Bytes: 4
  %loadMem_4524f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524f9)
  store %struct.Memory* %call_4524f9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4524fd	 Bytes: 4
  %loadMem_4524fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4524fd = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4524fd)
  store %struct.Memory* %call_4524fd, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 452501	 Bytes: 7
  %loadMem_452501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452501 = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452501)
  store %struct.Memory* %call_452501, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 452508	 Bytes: 4
  %loadMem_452508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452508 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452508)
  store %struct.Memory* %call_452508, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 45250c	 Bytes: 3
  %loadMem_45250c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45250c = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45250c)
  store %struct.Memory* %call_45250c, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 45250f	 Bytes: 3
  %loadMem_45250f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45250f = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45250f)
  store %struct.Memory* %call_45250f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 452512	 Bytes: 3
  %loadMem_452512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452512 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452512)
  store %struct.Memory* %call_452512, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 452515	 Bytes: 3
  %loadMem_452515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452515 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452515)
  store %struct.Memory* %call_452515, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 452518	 Bytes: 4
  %loadMem_452518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452518 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452518)
  store %struct.Memory* %call_452518, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45251c	 Bytes: 4
  %loadMem_45251c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45251c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45251c)
  store %struct.Memory* %call_45251c, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rdx), %rdx	 RIP: 452520	 Bytes: 4
  %loadMem_452520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452520 = call %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452520)
  store %struct.Memory* %call_452520, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 452524	 Bytes: 7
  %loadMem_452524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452524 = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452524)
  store %struct.Memory* %call_452524, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 45252b	 Bytes: 4
  %loadMem_45252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45252b = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45252b)
  store %struct.Memory* %call_45252b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 45252f	 Bytes: 4
  %loadMem_45252f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45252f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45252f)
  store %struct.Memory* %call_45252f, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 452533	 Bytes: 4
  %loadMem_452533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452533 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452533)
  store %struct.Memory* %call_452533, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452537	 Bytes: 4
  %loadMem_452537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452537 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452537)
  store %struct.Memory* %call_452537, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 45253b	 Bytes: 4
  %loadMem_45253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45253b = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45253b)
  store %struct.Memory* %call_45253b, %struct.Memory** %MEMORY

  ; Code: movslq 0x1900(%rsi), %rsi	 RIP: 45253f	 Bytes: 7
  %loadMem_45253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45253f = call %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45253f)
  store %struct.Memory* %call_45253f, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rsi	 RIP: 452546	 Bytes: 4
  %loadMem_452546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452546 = call %struct.Memory* @routine_shlq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452546)
  store %struct.Memory* %call_452546, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45254a	 Bytes: 3
  %loadMem_45254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45254a = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45254a)
  store %struct.Memory* %call_45254a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x50(%rbp)	 RIP: 45254d	 Bytes: 4
  %loadMem_45254d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45254d = call %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45254d)
  store %struct.Memory* %call_45254d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 452551	 Bytes: 3
  %loadMem_452551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452551 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452551)
  store %struct.Memory* %call_452551, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 452554	 Bytes: 4
  %loadMem_452554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452554 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452554)
  store %struct.Memory* %call_452554, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 452558	 Bytes: 5
  %loadMem1_452558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_452558 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_452558, i64 -332840, i64 5, i64 5)
  store %struct.Memory* %call1_452558, %struct.Memory** %MEMORY

  %loadMem2_452558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452558 = load i64, i64* %3
  %call2_452558 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_452558, %struct.Memory* %loadMem2_452558)
  store %struct.Memory* %call2_452558, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 45255d	 Bytes: 3
  %loadMem_45255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45255d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45255d)
  store %struct.Memory* %call_45255d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 452560	 Bytes: 3
  %loadMem_452560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452560 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452560)
  store %struct.Memory* %call_452560, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 452563	 Bytes: 3
  %loadMem_452563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452563 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452563)
  store %struct.Memory* %call_452563, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4523c0	 RIP: 452566	 Bytes: 5
  %loadMem_452566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452566 = call %struct.Memory* @routine_jmpq_.L_4523c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452566, i64 -422, i64 5)
  store %struct.Memory* %call_452566, %struct.Memory** %MEMORY

  br label %block_.L_4523c0

  ; Code: .L_45256b:	 RIP: 45256b	 Bytes: 0
block_.L_45256b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 45256b	 Bytes: 4
  %loadMem_45256b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45256b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45256b)
  store %struct.Memory* %call_45256b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rdi	 RIP: 45256f	 Bytes: 4
  %loadMem_45256f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45256f = call %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45256f)
  store %struct.Memory* %call_45256f, %struct.Memory** %MEMORY

  ; Code: callq .UnifiedOneForthPix	 RIP: 452573	 Bytes: 5
  %loadMem1_452573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_452573 = call %struct.Memory* @routine_callq_.UnifiedOneForthPix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_452573, i64 -149539, i64 5, i64 5)
  store %struct.Memory* %call1_452573, %struct.Memory** %MEMORY

  %loadMem2_452573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452573 = load i64, i64* %3
  %call2_452573 = call %struct.Memory* @sub_42dd50.UnifiedOneForthPix(%struct.State* %0, i64  %loadPC_452573, %struct.Memory* %loadMem2_452573)
  store %struct.Memory* %call2_452573, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452578	 Bytes: 4
  %loadMem_452578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452578 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452578)
  store %struct.Memory* %call_452578, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 45257c	 Bytes: 4
  %loadMem_45257c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45257c = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45257c)
  store %struct.Memory* %call_45257c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 452580	 Bytes: 3
  %loadMem_452580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452580 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452580)
  store %struct.Memory* %call_452580, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452583	 Bytes: 4
  %loadMem_452583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452583 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452583)
  store %struct.Memory* %call_452583, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 452587	 Bytes: 4
  %loadMem_452587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452587 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452587)
  store %struct.Memory* %call_452587, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 45258b	 Bytes: 3
  %loadMem_45258b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45258b = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45258b)
  store %struct.Memory* %call_45258b, %struct.Memory** %MEMORY

  ; Code: jge .L_4525a7	 RIP: 45258e	 Bytes: 6
  %loadMem_45258e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45258e = call %struct.Memory* @routine_jge_.L_4525a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45258e, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_45258e, %struct.Memory** %MEMORY

  %loadBr_45258e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45258e = icmp eq i8 %loadBr_45258e, 1
  br i1 %cmpBr_45258e, label %block_.L_4525a7, label %block_452594

block_452594:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452594	 Bytes: 4
  %loadMem_452594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452594 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452594)
  store %struct.Memory* %call_452594, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 452598	 Bytes: 4
  %loadMem_452598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452598 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452598)
  store %struct.Memory* %call_452598, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 45259c	 Bytes: 3
  %loadMem_45259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45259c = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45259c)
  store %struct.Memory* %call_45259c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 45259f	 Bytes: 3
  %loadMem_45259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45259f = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45259f)
  store %struct.Memory* %call_45259f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4525b5	 RIP: 4525a2	 Bytes: 5
  %loadMem_4525a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525a2 = call %struct.Memory* @routine_jmpq_.L_4525b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525a2, i64 19, i64 5)
  store %struct.Memory* %call_4525a2, %struct.Memory** %MEMORY

  br label %block_.L_4525b5

  ; Code: .L_4525a7:	 RIP: 4525a7	 Bytes: 0
block_.L_4525a7:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4525a7	 Bytes: 4
  %loadMem_4525a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525a7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525a7)
  store %struct.Memory* %call_4525a7, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 4525ab	 Bytes: 4
  %loadMem_4525ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525ab = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525ab)
  store %struct.Memory* %call_4525ab, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4525af	 Bytes: 3
  %loadMem_4525af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525af = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525af)
  store %struct.Memory* %call_4525af, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 4525b2	 Bytes: 3
  %loadMem_4525b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525b2 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525b2)
  store %struct.Memory* %call_4525b2, %struct.Memory** %MEMORY

  ; Code: .L_4525b5:	 RIP: 4525b5	 Bytes: 0
  br label %block_.L_4525b5
block_.L_4525b5:

  ; Code: movl -0x54(%rbp), %eax	 RIP: 4525b5	 Bytes: 3
  %loadMem_4525b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525b5 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525b5)
  store %struct.Memory* %call_4525b5, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4525b8	 Bytes: 2
  %loadMem_4525b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525b8 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525b8)
  store %struct.Memory* %call_4525b8, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4525ba	 Bytes: 2
  %loadMem_4525ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525ba = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525ba)
  store %struct.Memory* %call_4525ba, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525bc	 Bytes: 4
  %loadMem_4525bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525bc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525bc)
  store %struct.Memory* %call_4525bc, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4525c0	 Bytes: 4
  %loadMem_4525c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525c0 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525c0)
  store %struct.Memory* %call_4525c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rsi)	 RIP: 4525c4	 Bytes: 3
  %loadMem_4525c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525c4 = call %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525c4)
  store %struct.Memory* %call_4525c4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525c7	 Bytes: 4
  %loadMem_4525c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525c7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525c7)
  store %struct.Memory* %call_4525c7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4525cb	 Bytes: 4
  %loadMem_4525cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525cb = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525cb)
  store %struct.Memory* %call_4525cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rsi)	 RIP: 4525cf	 Bytes: 3
  %loadMem_4525cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525cf = call %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525cf)
  store %struct.Memory* %call_4525cf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525d2	 Bytes: 4
  %loadMem_4525d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525d2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525d2)
  store %struct.Memory* %call_4525d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x24(%rsi)	 RIP: 4525d6	 Bytes: 3
  %loadMem_4525d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525d6 = call %struct.Memory* @routine_movl__eax__0x24__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525d6)
  store %struct.Memory* %call_4525d6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525d9	 Bytes: 4
  %loadMem_4525d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525d9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525d9)
  store %struct.Memory* %call_4525d9, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 4525dd	 Bytes: 4
  %loadMem_4525dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525dd = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525dd)
  store %struct.Memory* %call_4525dd, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rsi), %eax	 RIP: 4525e1	 Bytes: 3
  %loadMem_4525e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525e1 = call %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525e1)
  store %struct.Memory* %call_4525e1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525e4	 Bytes: 4
  %loadMem_4525e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525e4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525e4)
  store %struct.Memory* %call_4525e4, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4525e8	 Bytes: 4
  %loadMem_4525e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525e8 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525e8)
  store %struct.Memory* %call_4525e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 4525ec	 Bytes: 3
  %loadMem_4525ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525ec = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525ec)
  store %struct.Memory* %call_4525ec, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525ef	 Bytes: 4
  %loadMem_4525ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525ef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525ef)
  store %struct.Memory* %call_4525ef, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4525f3	 Bytes: 4
  %loadMem_4525f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525f3 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525f3)
  store %struct.Memory* %call_4525f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rsi)	 RIP: 4525f7	 Bytes: 3
  %loadMem_4525f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525f7 = call %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525f7)
  store %struct.Memory* %call_4525f7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4525fa	 Bytes: 4
  %loadMem_4525fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525fa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525fa)
  store %struct.Memory* %call_4525fa, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 4525fe	 Bytes: 4
  %loadMem_4525fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4525fe = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4525fe)
  store %struct.Memory* %call_4525fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 452602	 Bytes: 3
  %loadMem_452602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452602 = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452602)
  store %struct.Memory* %call_452602, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452605	 Bytes: 4
  %loadMem_452605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452605 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452605)
  store %struct.Memory* %call_452605, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 452609	 Bytes: 4
  %loadMem_452609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452609 = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452609)
  store %struct.Memory* %call_452609, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rsi)	 RIP: 45260d	 Bytes: 3
  %loadMem_45260d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45260d = call %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45260d)
  store %struct.Memory* %call_45260d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452610	 Bytes: 4
  %loadMem_452610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452610 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452610)
  store %struct.Memory* %call_452610, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452614	 Bytes: 4
  %loadMem_452614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452614 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452614)
  store %struct.Memory* %call_452614, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rsi)	 RIP: 452618	 Bytes: 3
  %loadMem_452618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452618 = call %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452618)
  store %struct.Memory* %call_452618, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45261b	 Bytes: 4
  %loadMem_45261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45261b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45261b)
  store %struct.Memory* %call_45261b, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 45261f	 Bytes: 4
  %loadMem_45261f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45261f = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45261f)
  store %struct.Memory* %call_45261f, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rsi), %eax	 RIP: 452623	 Bytes: 3
  %loadMem_452623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452623 = call %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452623)
  store %struct.Memory* %call_452623, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452626	 Bytes: 4
  %loadMem_452626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452626 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452626)
  store %struct.Memory* %call_452626, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 45262a	 Bytes: 4
  %loadMem_45262a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45262a = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45262a)
  store %struct.Memory* %call_45262a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rsi)	 RIP: 45262e	 Bytes: 3
  %loadMem_45262e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45262e = call %struct.Memory* @routine_movl__eax__0xc__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45262e)
  store %struct.Memory* %call_45262e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452631	 Bytes: 4
  %loadMem_452631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452631 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452631)
  store %struct.Memory* %call_452631, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452635	 Bytes: 4
  %loadMem_452635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452635 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452635)
  store %struct.Memory* %call_452635, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rsi), %eax	 RIP: 452639	 Bytes: 3
  %loadMem_452639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452639 = call %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452639)
  store %struct.Memory* %call_452639, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45263c	 Bytes: 4
  %loadMem_45263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45263c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45263c)
  store %struct.Memory* %call_45263c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 452640	 Bytes: 4
  %loadMem_452640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452640 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452640)
  store %struct.Memory* %call_452640, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rsi)	 RIP: 452644	 Bytes: 3
  %loadMem_452644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452644 = call %struct.Memory* @routine_movl__eax__0xc__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452644)
  store %struct.Memory* %call_452644, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452647	 Bytes: 4
  %loadMem_452647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452647 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452647)
  store %struct.Memory* %call_452647, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 45264b	 Bytes: 4
  %loadMem_45264b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45264b = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45264b)
  store %struct.Memory* %call_45264b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rsi)	 RIP: 45264f	 Bytes: 7
  %loadMem_45264f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45264f = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45264f)
  store %struct.Memory* %call_45264f, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x55(%rbp)	 RIP: 452656	 Bytes: 3
  %loadMem_452656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452656 = call %struct.Memory* @routine_movb__dl__MINUS0x55__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452656)
  store %struct.Memory* %call_452656, %struct.Memory** %MEMORY

  ; Code: je .L_452674	 RIP: 452659	 Bytes: 6
  %loadMem_452659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452659 = call %struct.Memory* @routine_je_.L_452674(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452659, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_452659, %struct.Memory** %MEMORY

  %loadBr_452659 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452659 = icmp eq i8 %loadBr_452659, 1
  br i1 %cmpBr_452659, label %block_.L_452674, label %block_45265f

block_45265f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 45265f	 Bytes: 4
  %loadMem_45265f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45265f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45265f)
  store %struct.Memory* %call_45265f, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 452663	 Bytes: 4
  %loadMem_452663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452663 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452663)
  store %struct.Memory* %call_452663, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 452667	 Bytes: 7
  %loadMem_452667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452667 = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452667)
  store %struct.Memory* %call_452667, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 45266e	 Bytes: 3
  %loadMem_45266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45266e = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45266e)
  store %struct.Memory* %call_45266e, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x55(%rbp)	 RIP: 452671	 Bytes: 3
  %loadMem_452671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452671 = call %struct.Memory* @routine_movb__cl__MINUS0x55__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452671)
  store %struct.Memory* %call_452671, %struct.Memory** %MEMORY

  ; Code: .L_452674:	 RIP: 452674	 Bytes: 0
  br label %block_.L_452674
block_.L_452674:

  ; Code: movb -0x55(%rbp), %al	 RIP: 452674	 Bytes: 3
  %loadMem_452674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452674 = call %struct.Memory* @routine_movb_MINUS0x55__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452674)
  store %struct.Memory* %call_452674, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 452677	 Bytes: 2
  %loadMem_452677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452677 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452677)
  store %struct.Memory* %call_452677, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 452679	 Bytes: 2
  %loadMem_452679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452679 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452679)
  store %struct.Memory* %call_452679, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 45267b	 Bytes: 2
  %loadMem_45267b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45267b = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45267b)
  store %struct.Memory* %call_45267b, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 45267d	 Bytes: 3
  %loadMem_45267d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45267d = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45267d)
  store %struct.Memory* %call_45267d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452680	 Bytes: 4
  %loadMem_452680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452680 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452680)
  store %struct.Memory* %call_452680, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 452684	 Bytes: 4
  %loadMem_452684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452684 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452684)
  store %struct.Memory* %call_452684, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18ec(%rsi)	 RIP: 452688	 Bytes: 6
  %loadMem_452688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452688 = call %struct.Memory* @routine_movl__ecx__0x18ec__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452688)
  store %struct.Memory* %call_452688, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45268e	 Bytes: 4
  %loadMem_45268e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45268e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45268e)
  store %struct.Memory* %call_45268e, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rsi), %rsi	 RIP: 452692	 Bytes: 4
  %loadMem_452692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452692 = call %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452692)
  store %struct.Memory* %call_452692, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rsi)	 RIP: 452696	 Bytes: 7
  %loadMem_452696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452696 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452696)
  store %struct.Memory* %call_452696, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x56(%rbp)	 RIP: 45269d	 Bytes: 3
  %loadMem_45269d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45269d = call %struct.Memory* @routine_movb__dl__MINUS0x56__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45269d)
  store %struct.Memory* %call_45269d, %struct.Memory** %MEMORY

  ; Code: je .L_4526bb	 RIP: 4526a0	 Bytes: 6
  %loadMem_4526a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526a0 = call %struct.Memory* @routine_je_.L_4526bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526a0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4526a0, %struct.Memory** %MEMORY

  %loadBr_4526a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4526a0 = icmp eq i8 %loadBr_4526a0, 1
  br i1 %cmpBr_4526a0, label %block_.L_4526bb, label %block_4526a6

block_4526a6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4526a6	 Bytes: 4
  %loadMem_4526a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526a6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526a6)
  store %struct.Memory* %call_4526a6, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 4526aa	 Bytes: 4
  %loadMem_4526aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526aa = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526aa)
  store %struct.Memory* %call_4526aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 4526ae	 Bytes: 7
  %loadMem_4526ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526ae = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526ae)
  store %struct.Memory* %call_4526ae, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 4526b5	 Bytes: 3
  %loadMem_4526b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526b5 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526b5)
  store %struct.Memory* %call_4526b5, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x56(%rbp)	 RIP: 4526b8	 Bytes: 3
  %loadMem_4526b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526b8 = call %struct.Memory* @routine_movb__cl__MINUS0x56__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526b8)
  store %struct.Memory* %call_4526b8, %struct.Memory** %MEMORY

  ; Code: .L_4526bb:	 RIP: 4526bb	 Bytes: 0
  br label %block_.L_4526bb
block_.L_4526bb:

  ; Code: movb -0x56(%rbp), %al	 RIP: 4526bb	 Bytes: 3
  %loadMem_4526bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526bb = call %struct.Memory* @routine_movb_MINUS0x56__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526bb)
  store %struct.Memory* %call_4526bb, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4526be	 Bytes: 2
  %loadMem_4526be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526be = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526be)
  store %struct.Memory* %call_4526be, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 4526c0	 Bytes: 3
  %loadMem_4526c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526c0 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526c0)
  store %struct.Memory* %call_4526c0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4526c3	 Bytes: 4
  %loadMem_4526c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526c3)
  store %struct.Memory* %call_4526c3, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 4526c7	 Bytes: 4
  %loadMem_4526c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526c7 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526c7)
  store %struct.Memory* %call_4526c7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e8(%rdx)	 RIP: 4526cb	 Bytes: 6
  %loadMem_4526cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526cb = call %struct.Memory* @routine_movl__ecx__0x18e8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526cb)
  store %struct.Memory* %call_4526cb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4526d1	 Bytes: 4
  %loadMem_4526d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526d1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526d1)
  store %struct.Memory* %call_4526d1, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 4526d5	 Bytes: 4
  %loadMem_4526d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526d5 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526d5)
  store %struct.Memory* %call_4526d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rdx)	 RIP: 4526d9	 Bytes: 7
  %loadMem_4526d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526d9 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526d9)
  store %struct.Memory* %call_4526d9, %struct.Memory** %MEMORY

  ; Code: je .L_4526fb	 RIP: 4526e0	 Bytes: 6
  %loadMem_4526e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526e0 = call %struct.Memory* @routine_je_.L_4526fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526e0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4526e0, %struct.Memory** %MEMORY

  %loadBr_4526e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4526e0 = icmp eq i8 %loadBr_4526e0, 1
  br i1 %cmpBr_4526e0, label %block_.L_4526fb, label %block_4526e6

block_4526e6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4526e6	 Bytes: 4
  %loadMem_4526e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526e6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526e6)
  store %struct.Memory* %call_4526e6, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 4526ea	 Bytes: 3
  %loadMem_4526ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526ea = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526ea)
  store %struct.Memory* %call_4526ea, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4526ed	 Bytes: 4
  %loadMem_4526ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526ed = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526ed)
  store %struct.Memory* %call_4526ed, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4526f1	 Bytes: 4
  %loadMem_4526f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526f1 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526f1)
  store %struct.Memory* %call_4526f1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e4(%rax)	 RIP: 4526f5	 Bytes: 6
  %loadMem_4526f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526f5 = call %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526f5)
  store %struct.Memory* %call_4526f5, %struct.Memory** %MEMORY

  ; Code: .L_4526fb:	 RIP: 4526fb	 Bytes: 0
  br label %block_.L_4526fb
block_.L_4526fb:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4526fb	 Bytes: 4
  %loadMem_4526fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526fb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526fb)
  store %struct.Memory* %call_4526fb, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 4526ff	 Bytes: 4
  %loadMem_4526ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4526ff = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4526ff)
  store %struct.Memory* %call_4526ff, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452703	 Bytes: 4
  %loadMem_452703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452703 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452703)
  store %struct.Memory* %call_452703, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452707	 Bytes: 4
  %loadMem_452707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452707 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452707)
  store %struct.Memory* %call_452707, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1980(%rcx)	 RIP: 45270b	 Bytes: 7
  %loadMem_45270b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45270b = call %struct.Memory* @routine_movq__rax__0x1980__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45270b)
  store %struct.Memory* %call_45270b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452712	 Bytes: 4
  %loadMem_452712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452712 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452712)
  store %struct.Memory* %call_452712, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 452716	 Bytes: 4
  %loadMem_452716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452716 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452716)
  store %struct.Memory* %call_452716, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 45271a	 Bytes: 4
  %loadMem_45271a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45271a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45271a)
  store %struct.Memory* %call_45271a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 45271e	 Bytes: 4
  %loadMem_45271e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45271e = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45271e)
  store %struct.Memory* %call_45271e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1988(%rcx)	 RIP: 452722	 Bytes: 7
  %loadMem_452722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452722 = call %struct.Memory* @routine_movq__rax__0x1988__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452722)
  store %struct.Memory* %call_452722, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452729	 Bytes: 4
  %loadMem_452729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452729 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452729)
  store %struct.Memory* %call_452729, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45272d	 Bytes: 4
  %loadMem_45272d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45272d = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45272d)
  store %struct.Memory* %call_45272d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x190c(%rax)	 RIP: 452731	 Bytes: 10
  %loadMem_452731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452731 = call %struct.Memory* @routine_movl__0x0__0x190c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452731)
  store %struct.Memory* %call_452731, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 45273b	 Bytes: 4
  %loadMem_45273b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45273b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45273b)
  store %struct.Memory* %call_45273b, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 45273f	 Bytes: 4
  %loadMem_45273f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45273f = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45273f)
  store %struct.Memory* %call_45273f, %struct.Memory** %MEMORY

  ; Code: movl 0x1998(%rax), %edx	 RIP: 452743	 Bytes: 6
  %loadMem_452743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452743 = call %struct.Memory* @routine_movl_0x1998__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452743)
  store %struct.Memory* %call_452743, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452749	 Bytes: 4
  %loadMem_452749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452749 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452749)
  store %struct.Memory* %call_452749, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45274d	 Bytes: 4
  %loadMem_45274d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45274d = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45274d)
  store %struct.Memory* %call_45274d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1998(%rax)	 RIP: 452751	 Bytes: 6
  %loadMem_452751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452751 = call %struct.Memory* @routine_movl__edx__0x1998__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452751)
  store %struct.Memory* %call_452751, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452757	 Bytes: 4
  %loadMem_452757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452757 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452757)
  store %struct.Memory* %call_452757, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 45275b	 Bytes: 4
  %loadMem_45275b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45275b = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45275b)
  store %struct.Memory* %call_45275b, %struct.Memory** %MEMORY

  ; Code: movl 0x19a0(%rax), %edx	 RIP: 45275f	 Bytes: 6
  %loadMem_45275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45275f = call %struct.Memory* @routine_movl_0x19a0__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45275f)
  store %struct.Memory* %call_45275f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452765	 Bytes: 4
  %loadMem_452765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452765 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452765)
  store %struct.Memory* %call_452765, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 452769	 Bytes: 4
  %loadMem_452769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452769 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452769)
  store %struct.Memory* %call_452769, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x19a0(%rax)	 RIP: 45276d	 Bytes: 6
  %loadMem_45276d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45276d = call %struct.Memory* @routine_movl__edx__0x19a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45276d)
  store %struct.Memory* %call_45276d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452773	 Bytes: 4
  %loadMem_452773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452773 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452773)
  store %struct.Memory* %call_452773, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 452777	 Bytes: 4
  %loadMem_452777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452777 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452777)
  store %struct.Memory* %call_452777, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x19a0(%rax)	 RIP: 45277b	 Bytes: 7
  %loadMem_45277b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45277b = call %struct.Memory* @routine_cmpl__0x0__0x19a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45277b)
  store %struct.Memory* %call_45277b, %struct.Memory** %MEMORY

  ; Code: je .L_4527f8	 RIP: 452782	 Bytes: 6
  %loadMem_452782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452782 = call %struct.Memory* @routine_je_.L_4527f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452782, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_452782, %struct.Memory** %MEMORY

  %loadBr_452782 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452782 = icmp eq i8 %loadBr_452782, 1
  br i1 %cmpBr_452782, label %block_.L_4527f8, label %block_452788

block_452788:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452788	 Bytes: 4
  %loadMem_452788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452788 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452788)
  store %struct.Memory* %call_452788, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 45278c	 Bytes: 4
  %loadMem_45278c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45278c = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45278c)
  store %struct.Memory* %call_45278c, %struct.Memory** %MEMORY

  ; Code: movl 0x19ac(%rax), %ecx	 RIP: 452790	 Bytes: 6
  %loadMem_452790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452790 = call %struct.Memory* @routine_movl_0x19ac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452790)
  store %struct.Memory* %call_452790, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 452796	 Bytes: 4
  %loadMem_452796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452796 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452796)
  store %struct.Memory* %call_452796, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45279a	 Bytes: 4
  %loadMem_45279a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45279a = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45279a)
  store %struct.Memory* %call_45279a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x19ac(%rax)	 RIP: 45279e	 Bytes: 6
  %loadMem_45279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45279e = call %struct.Memory* @routine_movl__ecx__0x19ac__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45279e)
  store %struct.Memory* %call_45279e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527a4	 Bytes: 4
  %loadMem_4527a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527a4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527a4)
  store %struct.Memory* %call_4527a4, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 4527a8	 Bytes: 4
  %loadMem_4527a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527a8 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527a8)
  store %struct.Memory* %call_4527a8, %struct.Memory** %MEMORY

  ; Code: movl 0x19b0(%rax), %ecx	 RIP: 4527ac	 Bytes: 6
  %loadMem_4527ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527ac = call %struct.Memory* @routine_movl_0x19b0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527ac)
  store %struct.Memory* %call_4527ac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527b2	 Bytes: 4
  %loadMem_4527b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527b2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527b2)
  store %struct.Memory* %call_4527b2, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4527b6	 Bytes: 4
  %loadMem_4527b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527b6 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527b6)
  store %struct.Memory* %call_4527b6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x19b0(%rax)	 RIP: 4527ba	 Bytes: 6
  %loadMem_4527ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527ba = call %struct.Memory* @routine_movl__ecx__0x19b0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527ba)
  store %struct.Memory* %call_4527ba, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527c0	 Bytes: 4
  %loadMem_4527c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527c0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527c0)
  store %struct.Memory* %call_4527c0, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 4527c4	 Bytes: 4
  %loadMem_4527c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527c4 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527c4)
  store %struct.Memory* %call_4527c4, %struct.Memory** %MEMORY

  ; Code: movl 0x19a4(%rax), %ecx	 RIP: 4527c8	 Bytes: 6
  %loadMem_4527c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527c8 = call %struct.Memory* @routine_movl_0x19a4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527c8)
  store %struct.Memory* %call_4527c8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527ce	 Bytes: 4
  %loadMem_4527ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527ce = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527ce)
  store %struct.Memory* %call_4527ce, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4527d2	 Bytes: 4
  %loadMem_4527d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527d2 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527d2)
  store %struct.Memory* %call_4527d2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x19a4(%rax)	 RIP: 4527d6	 Bytes: 6
  %loadMem_4527d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527d6 = call %struct.Memory* @routine_movl__ecx__0x19a4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527d6)
  store %struct.Memory* %call_4527d6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527dc	 Bytes: 4
  %loadMem_4527dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527dc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527dc)
  store %struct.Memory* %call_4527dc, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 4527e0	 Bytes: 4
  %loadMem_4527e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527e0 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527e0)
  store %struct.Memory* %call_4527e0, %struct.Memory** %MEMORY

  ; Code: movl 0x19a8(%rax), %ecx	 RIP: 4527e4	 Bytes: 6
  %loadMem_4527e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527e4 = call %struct.Memory* @routine_movl_0x19a8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527e4)
  store %struct.Memory* %call_4527e4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527ea	 Bytes: 4
  %loadMem_4527ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527ea)
  store %struct.Memory* %call_4527ea, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4527ee	 Bytes: 4
  %loadMem_4527ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527ee = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527ee)
  store %struct.Memory* %call_4527ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x19a8(%rax)	 RIP: 4527f2	 Bytes: 6
  %loadMem_4527f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527f2 = call %struct.Memory* @routine_movl__ecx__0x19a8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527f2)
  store %struct.Memory* %call_4527f2, %struct.Memory** %MEMORY

  ; Code: .L_4527f8:	 RIP: 4527f8	 Bytes: 0
  br label %block_.L_4527f8
block_.L_4527f8:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4527f8	 Bytes: 4
  %loadMem_4527f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527f8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527f8)
  store %struct.Memory* %call_4527f8, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4527fc	 Bytes: 4
  %loadMem_4527fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4527fc = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4527fc)
  store %struct.Memory* %call_4527fc, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452800	 Bytes: 4
  %loadMem_452800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452800 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452800)
  store %struct.Memory* %call_452800, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 452804	 Bytes: 4
  %loadMem_452804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452804 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452804)
  store %struct.Memory* %call_452804, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1990(%rcx)	 RIP: 452808	 Bytes: 7
  %loadMem_452808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452808 = call %struct.Memory* @routine_movq__rax__0x1990__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452808)
  store %struct.Memory* %call_452808, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 45280f	 Bytes: 4
  %loadMem_45280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45280f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45280f)
  store %struct.Memory* %call_45280f, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452813	 Bytes: 4
  %loadMem_452813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452813 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452813)
  store %struct.Memory* %call_452813, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1990(%rcx)	 RIP: 452817	 Bytes: 7
  %loadMem_452817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452817 = call %struct.Memory* @routine_movq__rax__0x1990__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452817)
  store %struct.Memory* %call_452817, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 45281e	 Bytes: 7
  %loadMem_45281e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45281e = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45281e)
  store %struct.Memory* %call_45281e, %struct.Memory** %MEMORY

  ; Code: .L_452825:	 RIP: 452825	 Bytes: 0
  br label %block_.L_452825
block_.L_452825:

  ; Code: movl $0x2, %eax	 RIP: 452825	 Bytes: 5
  %loadMem_452825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452825 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452825)
  store %struct.Memory* %call_452825, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 45282a	 Bytes: 3
  %loadMem_45282a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45282a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45282a)
  store %struct.Memory* %call_45282a, %struct.Memory** %MEMORY

  ; Code: movl 0x7247b4, %edx	 RIP: 45282d	 Bytes: 7
  %loadMem_45282d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45282d = call %struct.Memory* @routine_movl_0x7247b4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45282d)
  store %struct.Memory* %call_45282d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 452834	 Bytes: 3
  %loadMem_452834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452834 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452834)
  store %struct.Memory* %call_452834, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 452837	 Bytes: 3
  %loadMem_452837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452837 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452837)
  store %struct.Memory* %call_452837, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 45283a	 Bytes: 2
  %loadMem_45283a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45283a = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45283a)
  store %struct.Memory* %call_45283a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45283c	 Bytes: 1
  %loadMem_45283c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45283c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45283c)
  store %struct.Memory* %call_45283c, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 45283d	 Bytes: 3
  %loadMem_45283d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45283d = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45283d)
  store %struct.Memory* %call_45283d, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452840	 Bytes: 2
  %loadMem_452840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452840 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452840)
  store %struct.Memory* %call_452840, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 452842	 Bytes: 2
  %loadMem_452842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452842 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452842)
  store %struct.Memory* %call_452842, %struct.Memory** %MEMORY

  ; Code: jge .L_45292e	 RIP: 452844	 Bytes: 6
  %loadMem_452844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452844 = call %struct.Memory* @routine_jge_.L_45292e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452844, i8* %BRANCH_TAKEN, i64 234, i64 6, i64 6)
  store %struct.Memory* %call_452844, %struct.Memory** %MEMORY

  %loadBr_452844 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452844 = icmp eq i8 %loadBr_452844, 1
  br i1 %cmpBr_452844, label %block_.L_45292e, label %block_45284a

block_45284a:
  ; Code: movl $0x2, %eax	 RIP: 45284a	 Bytes: 5
  %loadMem_45284a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45284a = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45284a)
  store %struct.Memory* %call_45284a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45284f	 Bytes: 2
  %loadMem_45284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45284f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45284f)
  store %struct.Memory* %call_45284f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452851	 Bytes: 4
  %loadMem_452851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452851 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452851)
  store %struct.Memory* %call_452851, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 452855	 Bytes: 4
  %loadMem_452855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452855 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452855)
  store %struct.Memory* %call_452855, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 452859	 Bytes: 3
  %loadMem_452859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452859 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452859)
  store %struct.Memory* %call_452859, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 45285c	 Bytes: 3
  %loadMem_45285c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45285c = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45285c)
  store %struct.Memory* %call_45285c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 45285f	 Bytes: 3
  %loadMem_45285f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45285f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45285f)
  store %struct.Memory* %call_45285f, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rdx,%rsi,8), %rax	 RIP: 452862	 Bytes: 8
  %loadMem_452862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452862 = call %struct.Memory* @routine_movq_0x120__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452862)
  store %struct.Memory* %call_452862, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 45286a	 Bytes: 2
  %loadMem_45286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45286a = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45286a)
  store %struct.Memory* %call_45286a, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 45286c	 Bytes: 3
  %loadMem_45286c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45286c = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45286c)
  store %struct.Memory* %call_45286c, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 45286f	 Bytes: 4
  %loadMem_45286f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45286f = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45286f)
  store %struct.Memory* %call_45286f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452873	 Bytes: 4
  %loadMem_452873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452873 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452873)
  store %struct.Memory* %call_452873, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452877	 Bytes: 4
  %loadMem_452877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452877 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452877)
  store %struct.Memory* %call_452877, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 45287b	 Bytes: 3
  %loadMem_45287b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45287b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45287b)
  store %struct.Memory* %call_45287b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edi	 RIP: 45287e	 Bytes: 3
  %loadMem_45287e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45287e = call %struct.Memory* @routine_shll__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45287e)
  store %struct.Memory* %call_45287e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452881	 Bytes: 3
  %loadMem_452881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452881 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452881)
  store %struct.Memory* %call_452881, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rsi,%r8,8), %rsi	 RIP: 452884	 Bytes: 8
  %loadMem_452884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452884 = call %struct.Memory* @routine_movq_0x120__rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452884)
  store %struct.Memory* %call_452884, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 45288c	 Bytes: 4
  %loadMem_45288c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45288c = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45288c)
  store %struct.Memory* %call_45288c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rax	 RIP: 452890	 Bytes: 3
  %loadMem_452890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452890 = call %struct.Memory* @routine_movq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452890)
  store %struct.Memory* %call_452890, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 452893	 Bytes: 2
  %loadMem_452893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452893 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452893)
  store %struct.Memory* %call_452893, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 452895	 Bytes: 3
  %loadMem_452895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452895 = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452895)
  store %struct.Memory* %call_452895, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 452898	 Bytes: 4
  %loadMem_452898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452898 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452898)
  store %struct.Memory* %call_452898, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 45289c	 Bytes: 4
  %loadMem_45289c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45289c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45289c)
  store %struct.Memory* %call_45289c, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 4528a0	 Bytes: 3
  %loadMem_4528a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528a0 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528a0)
  store %struct.Memory* %call_4528a0, %struct.Memory** %MEMORY

  ; Code: jge .L_4528db	 RIP: 4528a3	 Bytes: 6
  %loadMem_4528a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528a3 = call %struct.Memory* @routine_jge_.L_4528db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528a3, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4528a3, %struct.Memory** %MEMORY

  %loadBr_4528a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4528a3 = icmp eq i8 %loadBr_4528a3, 1
  br i1 %cmpBr_4528a3, label %block_.L_4528db, label %block_4528a9

block_4528a9:
  ; Code: movl $0x2, %eax	 RIP: 4528a9	 Bytes: 5
  %loadMem_4528a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528a9 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528a9)
  store %struct.Memory* %call_4528a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4528ae	 Bytes: 2
  %loadMem_4528ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528ae = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528ae)
  store %struct.Memory* %call_4528ae, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4528b0	 Bytes: 4
  %loadMem_4528b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528b0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528b0)
  store %struct.Memory* %call_4528b0, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 4528b4	 Bytes: 4
  %loadMem_4528b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528b4 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528b4)
  store %struct.Memory* %call_4528b4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4528b8	 Bytes: 3
  %loadMem_4528b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528b8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528b8)
  store %struct.Memory* %call_4528b8, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4528bb	 Bytes: 3
  %loadMem_4528bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528bb = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528bb)
  store %struct.Memory* %call_4528bb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4528be	 Bytes: 3
  %loadMem_4528be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528be = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528be)
  store %struct.Memory* %call_4528be, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rdx,%rsi,8), %rax	 RIP: 4528c1	 Bytes: 8
  %loadMem_4528c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528c1 = call %struct.Memory* @routine_movq_0x120__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528c1)
  store %struct.Memory* %call_4528c1, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 4528c9	 Bytes: 2
  %loadMem_4528c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528c9 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528c9)
  store %struct.Memory* %call_4528c9, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 4528cb	 Bytes: 3
  %loadMem_4528cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528cb = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528cb)
  store %struct.Memory* %call_4528cb, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 4528ce	 Bytes: 4
  %loadMem_4528ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528ce = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528ce)
  store %struct.Memory* %call_4528ce, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 4528d2	 Bytes: 4
  %loadMem_4528d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528d2 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528d2)
  store %struct.Memory* %call_4528d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452908	 RIP: 4528d6	 Bytes: 5
  %loadMem_4528d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528d6 = call %struct.Memory* @routine_jmpq_.L_452908(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528d6, i64 50, i64 5)
  store %struct.Memory* %call_4528d6, %struct.Memory** %MEMORY

  br label %block_.L_452908

  ; Code: .L_4528db:	 RIP: 4528db	 Bytes: 0
block_.L_4528db:

  ; Code: movl $0x2, %eax	 RIP: 4528db	 Bytes: 5
  %loadMem_4528db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528db = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528db)
  store %struct.Memory* %call_4528db, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4528e0	 Bytes: 2
  %loadMem_4528e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528e0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528e0)
  store %struct.Memory* %call_4528e0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4528e2	 Bytes: 4
  %loadMem_4528e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528e2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528e2)
  store %struct.Memory* %call_4528e2, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rdx), %rdx	 RIP: 4528e6	 Bytes: 4
  %loadMem_4528e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528e6 = call %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528e6)
  store %struct.Memory* %call_4528e6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4528ea	 Bytes: 3
  %loadMem_4528ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528ea = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528ea)
  store %struct.Memory* %call_4528ea, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4528ed	 Bytes: 3
  %loadMem_4528ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528ed = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528ed)
  store %struct.Memory* %call_4528ed, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4528f0	 Bytes: 3
  %loadMem_4528f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528f0 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528f0)
  store %struct.Memory* %call_4528f0, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rdx,%rsi,8), %rax	 RIP: 4528f3	 Bytes: 8
  %loadMem_4528f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528f3 = call %struct.Memory* @routine_movq_0x120__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528f3)
  store %struct.Memory* %call_4528f3, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 4528fb	 Bytes: 2
  %loadMem_4528fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528fb = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528fb)
  store %struct.Memory* %call_4528fb, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 4528fd	 Bytes: 3
  %loadMem_4528fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4528fd = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4528fd)
  store %struct.Memory* %call_4528fd, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 452900	 Bytes: 4
  %loadMem_452900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452900 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452900)
  store %struct.Memory* %call_452900, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 452904	 Bytes: 4
  %loadMem_452904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452904 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452904)
  store %struct.Memory* %call_452904, %struct.Memory** %MEMORY

  ; Code: .L_452908:	 RIP: 452908	 Bytes: 0
  br label %block_.L_452908
block_.L_452908:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 452908	 Bytes: 4
  %loadMem_452908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452908 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452908)
  store %struct.Memory* %call_452908, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 45290c	 Bytes: 4
  %loadMem_45290c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45290c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45290c)
  store %struct.Memory* %call_45290c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452910	 Bytes: 4
  %loadMem_452910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452910 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452910)
  store %struct.Memory* %call_452910, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 452914	 Bytes: 4
  %loadMem_452914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452914 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452914)
  store %struct.Memory* %call_452914, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x120(%rcx,%rdx,8)	 RIP: 452918	 Bytes: 8
  %loadMem_452918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452918 = call %struct.Memory* @routine_movq__rax__0x120__rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452918)
  store %struct.Memory* %call_452918, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 452920	 Bytes: 3
  %loadMem_452920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452920 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452920)
  store %struct.Memory* %call_452920, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 452923	 Bytes: 3
  %loadMem_452923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452923 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452923)
  store %struct.Memory* %call_452923, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 452926	 Bytes: 3
  %loadMem_452926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452926 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452926)
  store %struct.Memory* %call_452926, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452825	 RIP: 452929	 Bytes: 5
  %loadMem_452929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452929 = call %struct.Memory* @routine_jmpq_.L_452825(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452929, i64 -260, i64 5)
  store %struct.Memory* %call_452929, %struct.Memory** %MEMORY

  br label %block_.L_452825

  ; Code: .L_45292e:	 RIP: 45292e	 Bytes: 0
block_.L_45292e:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 45292e	 Bytes: 7
  %loadMem_45292e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45292e = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45292e)
  store %struct.Memory* %call_45292e, %struct.Memory** %MEMORY

  ; Code: .L_452935:	 RIP: 452935	 Bytes: 0
  br label %block_.L_452935
block_.L_452935:

  ; Code: movl $0x2, %eax	 RIP: 452935	 Bytes: 5
  %loadMem_452935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452935 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452935)
  store %struct.Memory* %call_452935, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 45293a	 Bytes: 3
  %loadMem_45293a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45293a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45293a)
  store %struct.Memory* %call_45293a, %struct.Memory** %MEMORY

  ; Code: movl 0x7247b0, %edx	 RIP: 45293d	 Bytes: 7
  %loadMem_45293d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45293d = call %struct.Memory* @routine_movl_0x7247b0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45293d)
  store %struct.Memory* %call_45293d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 452944	 Bytes: 3
  %loadMem_452944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452944 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452944)
  store %struct.Memory* %call_452944, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 452947	 Bytes: 3
  %loadMem_452947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452947 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452947)
  store %struct.Memory* %call_452947, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 45294a	 Bytes: 2
  %loadMem_45294a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45294a = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45294a)
  store %struct.Memory* %call_45294a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45294c	 Bytes: 1
  %loadMem_45294c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45294c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45294c)
  store %struct.Memory* %call_45294c, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %esi	 RIP: 45294d	 Bytes: 3
  %loadMem_45294d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45294d = call %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45294d)
  store %struct.Memory* %call_45294d, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452950	 Bytes: 2
  %loadMem_452950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452950 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452950)
  store %struct.Memory* %call_452950, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 452952	 Bytes: 2
  %loadMem_452952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452952 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452952)
  store %struct.Memory* %call_452952, %struct.Memory** %MEMORY

  ; Code: jge .L_452a38	 RIP: 452954	 Bytes: 6
  %loadMem_452954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452954 = call %struct.Memory* @routine_jge_.L_452a38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452954, i8* %BRANCH_TAKEN, i64 228, i64 6, i64 6)
  store %struct.Memory* %call_452954, %struct.Memory** %MEMORY

  %loadBr_452954 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452954 = icmp eq i8 %loadBr_452954, 1
  br i1 %cmpBr_452954, label %block_.L_452a38, label %block_45295a

block_45295a:
  ; Code: movl $0x2, %eax	 RIP: 45295a	 Bytes: 5
  %loadMem_45295a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45295a = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45295a)
  store %struct.Memory* %call_45295a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45295f	 Bytes: 2
  %loadMem_45295f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45295f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45295f)
  store %struct.Memory* %call_45295f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452961	 Bytes: 4
  %loadMem_452961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452961 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452961)
  store %struct.Memory* %call_452961, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 452965	 Bytes: 4
  %loadMem_452965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452965 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452965)
  store %struct.Memory* %call_452965, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 452969	 Bytes: 3
  %loadMem_452969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452969 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452969)
  store %struct.Memory* %call_452969, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 45296c	 Bytes: 3
  %loadMem_45296c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45296c = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45296c)
  store %struct.Memory* %call_45296c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 45296f	 Bytes: 3
  %loadMem_45296f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45296f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45296f)
  store %struct.Memory* %call_45296f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdx,%rsi,8), %rax	 RIP: 452972	 Bytes: 5
  %loadMem_452972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452972 = call %struct.Memory* @routine_movq_0x18__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452972)
  store %struct.Memory* %call_452972, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 452977	 Bytes: 2
  %loadMem_452977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452977 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452977)
  store %struct.Memory* %call_452977, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 452979	 Bytes: 3
  %loadMem_452979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452979 = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452979)
  store %struct.Memory* %call_452979, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 45297c	 Bytes: 4
  %loadMem_45297c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45297c = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45297c)
  store %struct.Memory* %call_45297c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452980	 Bytes: 4
  %loadMem_452980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452980 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452980)
  store %struct.Memory* %call_452980, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452984	 Bytes: 4
  %loadMem_452984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452984 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452984)
  store %struct.Memory* %call_452984, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 452988	 Bytes: 3
  %loadMem_452988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452988 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452988)
  store %struct.Memory* %call_452988, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edi	 RIP: 45298b	 Bytes: 3
  %loadMem_45298b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45298b = call %struct.Memory* @routine_shll__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45298b)
  store %struct.Memory* %call_45298b, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 45298e	 Bytes: 3
  %loadMem_45298e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45298e = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45298e)
  store %struct.Memory* %call_45298e, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rsi,%r8,8), %rsi	 RIP: 452991	 Bytes: 5
  %loadMem_452991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452991 = call %struct.Memory* @routine_movq_0x18__rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452991)
  store %struct.Memory* %call_452991, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 452996	 Bytes: 4
  %loadMem_452996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452996 = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452996)
  store %struct.Memory* %call_452996, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rax	 RIP: 45299a	 Bytes: 3
  %loadMem_45299a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45299a = call %struct.Memory* @routine_movq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45299a)
  store %struct.Memory* %call_45299a, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 45299d	 Bytes: 2
  %loadMem_45299d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45299d = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45299d)
  store %struct.Memory* %call_45299d, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 45299f	 Bytes: 3
  %loadMem_45299f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45299f = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45299f)
  store %struct.Memory* %call_45299f, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 4529a2	 Bytes: 4
  %loadMem_4529a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529a2 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529a2)
  store %struct.Memory* %call_4529a2, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 4529a6	 Bytes: 4
  %loadMem_4529a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529a6 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529a6)
  store %struct.Memory* %call_4529a6, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 4529aa	 Bytes: 3
  %loadMem_4529aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529aa = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529aa)
  store %struct.Memory* %call_4529aa, %struct.Memory** %MEMORY

  ; Code: jge .L_4529e5	 RIP: 4529ad	 Bytes: 6
  %loadMem_4529ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529ad = call %struct.Memory* @routine_jge_.L_4529e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529ad, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4529ad, %struct.Memory** %MEMORY

  %loadBr_4529ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4529ad = icmp eq i8 %loadBr_4529ad, 1
  br i1 %cmpBr_4529ad, label %block_.L_4529e5, label %block_4529b3

block_4529b3:
  ; Code: movl $0x2, %eax	 RIP: 4529b3	 Bytes: 5
  %loadMem_4529b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529b3 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529b3)
  store %struct.Memory* %call_4529b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4529b8	 Bytes: 2
  %loadMem_4529b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529b8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529b8)
  store %struct.Memory* %call_4529b8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4529ba	 Bytes: 4
  %loadMem_4529ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529ba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529ba)
  store %struct.Memory* %call_4529ba, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 4529be	 Bytes: 4
  %loadMem_4529be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529be = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529be)
  store %struct.Memory* %call_4529be, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4529c2	 Bytes: 3
  %loadMem_4529c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529c2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529c2)
  store %struct.Memory* %call_4529c2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4529c5	 Bytes: 3
  %loadMem_4529c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529c5 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529c5)
  store %struct.Memory* %call_4529c5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4529c8	 Bytes: 3
  %loadMem_4529c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529c8 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529c8)
  store %struct.Memory* %call_4529c8, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdx,%rsi,8), %rax	 RIP: 4529cb	 Bytes: 5
  %loadMem_4529cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529cb = call %struct.Memory* @routine_movq_0x18__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529cb)
  store %struct.Memory* %call_4529cb, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 4529d0	 Bytes: 2
  %loadMem_4529d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529d0 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529d0)
  store %struct.Memory* %call_4529d0, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 4529d2	 Bytes: 3
  %loadMem_4529d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529d2 = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529d2)
  store %struct.Memory* %call_4529d2, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 4529d5	 Bytes: 4
  %loadMem_4529d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529d5 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529d5)
  store %struct.Memory* %call_4529d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 4529d9	 Bytes: 7
  %loadMem_4529d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529d9 = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529d9)
  store %struct.Memory* %call_4529d9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452a12	 RIP: 4529e0	 Bytes: 5
  %loadMem_4529e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529e0 = call %struct.Memory* @routine_jmpq_.L_452a12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529e0, i64 50, i64 5)
  store %struct.Memory* %call_4529e0, %struct.Memory** %MEMORY

  br label %block_.L_452a12

  ; Code: .L_4529e5:	 RIP: 4529e5	 Bytes: 0
block_.L_4529e5:

  ; Code: movl $0x2, %eax	 RIP: 4529e5	 Bytes: 5
  %loadMem_4529e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529e5 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529e5)
  store %struct.Memory* %call_4529e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4529ea	 Bytes: 2
  %loadMem_4529ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529ea = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529ea)
  store %struct.Memory* %call_4529ea, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4529ec	 Bytes: 4
  %loadMem_4529ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529ec = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529ec)
  store %struct.Memory* %call_4529ec, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rdx), %rdx	 RIP: 4529f0	 Bytes: 4
  %loadMem_4529f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529f0 = call %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529f0)
  store %struct.Memory* %call_4529f0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4529f4	 Bytes: 3
  %loadMem_4529f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529f4 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529f4)
  store %struct.Memory* %call_4529f4, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4529f7	 Bytes: 3
  %loadMem_4529f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529f7 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529f7)
  store %struct.Memory* %call_4529f7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4529fa	 Bytes: 3
  %loadMem_4529fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529fa = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529fa)
  store %struct.Memory* %call_4529fa, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rdx,%rsi,8), %rax	 RIP: 4529fd	 Bytes: 5
  %loadMem_4529fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4529fd = call %struct.Memory* @routine_movq_0x18__rdx__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4529fd)
  store %struct.Memory* %call_4529fd, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 452a02	 Bytes: 2
  %loadMem_452a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a02 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a02)
  store %struct.Memory* %call_452a02, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 452a04	 Bytes: 3
  %loadMem_452a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a04 = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a04)
  store %struct.Memory* %call_452a04, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 452a07	 Bytes: 4
  %loadMem_452a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a07 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a07)
  store %struct.Memory* %call_452a07, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 452a0b	 Bytes: 7
  %loadMem_452a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a0b = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a0b)
  store %struct.Memory* %call_452a0b, %struct.Memory** %MEMORY

  ; Code: .L_452a12:	 RIP: 452a12	 Bytes: 0
  br label %block_.L_452a12
block_.L_452a12:

  ; Code: movq -0x88(%rbp), %rax	 RIP: 452a12	 Bytes: 7
  %loadMem_452a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a12 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a12)
  store %struct.Memory* %call_452a12, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452a19	 Bytes: 4
  %loadMem_452a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a19 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a19)
  store %struct.Memory* %call_452a19, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452a1d	 Bytes: 4
  %loadMem_452a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a1d = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a1d)
  store %struct.Memory* %call_452a1d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 452a21	 Bytes: 4
  %loadMem_452a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a21 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a21)
  store %struct.Memory* %call_452a21, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x18(%rcx,%rdx,8)	 RIP: 452a25	 Bytes: 5
  %loadMem_452a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a25 = call %struct.Memory* @routine_movq__rax__0x18__rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a25)
  store %struct.Memory* %call_452a25, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 452a2a	 Bytes: 3
  %loadMem_452a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a2a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a2a)
  store %struct.Memory* %call_452a2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 452a2d	 Bytes: 3
  %loadMem_452a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a2d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a2d)
  store %struct.Memory* %call_452a2d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 452a30	 Bytes: 3
  %loadMem_452a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a30 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a30)
  store %struct.Memory* %call_452a30, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452935	 RIP: 452a33	 Bytes: 5
  %loadMem_452a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a33 = call %struct.Memory* @routine_jmpq_.L_452935(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a33, i64 -254, i64 5)
  store %struct.Memory* %call_452a33, %struct.Memory** %MEMORY

  br label %block_.L_452935

  ; Code: .L_452a38:	 RIP: 452a38	 Bytes: 0
block_.L_452a38:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 452a38	 Bytes: 7
  %loadMem_452a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a38 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a38)
  store %struct.Memory* %call_452a38, %struct.Memory** %MEMORY

  ; Code: .L_452a3f:	 RIP: 452a3f	 Bytes: 0
  br label %block_.L_452a3f
block_.L_452a3f:

  ; Code: movl $0x4, %eax	 RIP: 452a3f	 Bytes: 5
  %loadMem_452a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a3f = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a3f)
  store %struct.Memory* %call_452a3f, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 452a44	 Bytes: 3
  %loadMem_452a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a44 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a44)
  store %struct.Memory* %call_452a44, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452a47	 Bytes: 4
  %loadMem_452a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a47 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a47)
  store %struct.Memory* %call_452a47, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 452a4b	 Bytes: 4
  %loadMem_452a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a4b = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a4b)
  store %struct.Memory* %call_452a4b, %struct.Memory** %MEMORY

  ; Code: movl 0x18f8(%rdx), %esi	 RIP: 452a4f	 Bytes: 6
  %loadMem_452a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a4f = call %struct.Memory* @routine_movl_0x18f8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a4f)
  store %struct.Memory* %call_452a4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 452a55	 Bytes: 6
  %loadMem_452a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a55 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a55)
  store %struct.Memory* %call_452a55, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 452a5b	 Bytes: 2
  %loadMem_452a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a5b = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a5b)
  store %struct.Memory* %call_452a5b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452a5d	 Bytes: 1
  %loadMem_452a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a5d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a5d)
  store %struct.Memory* %call_452a5d, %struct.Memory** %MEMORY

  ; Code: movl -0x8c(%rbp), %esi	 RIP: 452a5e	 Bytes: 6
  %loadMem_452a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a5e = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a5e)
  store %struct.Memory* %call_452a5e, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452a64	 Bytes: 2
  %loadMem_452a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a64 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a64)
  store %struct.Memory* %call_452a64, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 452a66	 Bytes: 2
  %loadMem_452a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a66 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a66)
  store %struct.Memory* %call_452a66, %struct.Memory** %MEMORY

  ; Code: jge .L_4534b9	 RIP: 452a68	 Bytes: 6
  %loadMem_452a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a68 = call %struct.Memory* @routine_jge_.L_4534b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a68, i8* %BRANCH_TAKEN, i64 2641, i64 6, i64 6)
  store %struct.Memory* %call_452a68, %struct.Memory** %MEMORY

  %loadBr_452a68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452a68 = icmp eq i8 %loadBr_452a68, 1
  br i1 %cmpBr_452a68, label %block_.L_4534b9, label %block_452a6e

block_452a6e:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 452a6e	 Bytes: 7
  %loadMem_452a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a6e = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a6e)
  store %struct.Memory* %call_452a6e, %struct.Memory** %MEMORY

  ; Code: .L_452a75:	 RIP: 452a75	 Bytes: 0
  br label %block_.L_452a75
block_.L_452a75:

  ; Code: movl $0x4, %eax	 RIP: 452a75	 Bytes: 5
  %loadMem_452a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a75 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a75)
  store %struct.Memory* %call_452a75, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 452a7a	 Bytes: 3
  %loadMem_452a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a7a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a7a)
  store %struct.Memory* %call_452a7a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452a7d	 Bytes: 4
  %loadMem_452a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a7d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a7d)
  store %struct.Memory* %call_452a7d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 452a81	 Bytes: 4
  %loadMem_452a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a81 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a81)
  store %struct.Memory* %call_452a81, %struct.Memory** %MEMORY

  ; Code: movl 0x18fc(%rdx), %esi	 RIP: 452a85	 Bytes: 6
  %loadMem_452a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a85 = call %struct.Memory* @routine_movl_0x18fc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a85)
  store %struct.Memory* %call_452a85, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 452a8b	 Bytes: 6
  %loadMem_452a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a8b = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a8b)
  store %struct.Memory* %call_452a8b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 452a91	 Bytes: 2
  %loadMem_452a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a91 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a91)
  store %struct.Memory* %call_452a91, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452a93	 Bytes: 1
  %loadMem_452a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a93 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a93)
  store %struct.Memory* %call_452a93, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %esi	 RIP: 452a94	 Bytes: 6
  %loadMem_452a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a94 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a94)
  store %struct.Memory* %call_452a94, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452a9a	 Bytes: 2
  %loadMem_452a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a9a = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a9a)
  store %struct.Memory* %call_452a9a, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 452a9c	 Bytes: 2
  %loadMem_452a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a9c = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a9c)
  store %struct.Memory* %call_452a9c, %struct.Memory** %MEMORY

  ; Code: jge .L_4534a6	 RIP: 452a9e	 Bytes: 6
  %loadMem_452a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452a9e = call %struct.Memory* @routine_jge_.L_4534a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452a9e, i8* %BRANCH_TAKEN, i64 2568, i64 6, i64 6)
  store %struct.Memory* %call_452a9e, %struct.Memory** %MEMORY

  %loadBr_452a9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452a9e = icmp eq i8 %loadBr_452a9e, 1
  br i1 %cmpBr_452a9e, label %block_.L_4534a6, label %block_452aa4

block_452aa4:
  ; Code: movl $0x4, %eax	 RIP: 452aa4	 Bytes: 5
  %loadMem_452aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452aa4 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452aa4)
  store %struct.Memory* %call_452aa4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452aa9	 Bytes: 4
  %loadMem_452aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452aa9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452aa9)
  store %struct.Memory* %call_452aa9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452aad	 Bytes: 4
  %loadMem_452aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452aad = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452aad)
  store %struct.Memory* %call_452aad, %struct.Memory** %MEMORY

  ; Code: movq 0x1978(%rcx), %rcx	 RIP: 452ab1	 Bytes: 7
  %loadMem_452ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ab1 = call %struct.Memory* @routine_movq_0x1978__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ab1)
  store %struct.Memory* %call_452ab1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 452ab8	 Bytes: 4
  %loadMem_452ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ab8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ab8)
  store %struct.Memory* %call_452ab8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 452abc	 Bytes: 4
  %loadMem_452abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452abc = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452abc)
  store %struct.Memory* %call_452abc, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 452ac0	 Bytes: 3
  %loadMem_452ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ac0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ac0)
  store %struct.Memory* %call_452ac0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 452ac3	 Bytes: 6
  %loadMem_452ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ac3 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ac3)
  store %struct.Memory* %call_452ac3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 452ac9	 Bytes: 2
  %loadMem_452ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ac9 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ac9)
  store %struct.Memory* %call_452ac9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452acb	 Bytes: 1
  %loadMem_452acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452acb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452acb)
  store %struct.Memory* %call_452acb, %struct.Memory** %MEMORY

  ; Code: movl -0x94(%rbp), %esi	 RIP: 452acc	 Bytes: 6
  %loadMem_452acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452acc = call %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452acc)
  store %struct.Memory* %call_452acc, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452ad2	 Bytes: 2
  %loadMem_452ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ad2 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ad2)
  store %struct.Memory* %call_452ad2, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452ad4	 Bytes: 3
  %loadMem_452ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ad4 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ad4)
  store %struct.Memory* %call_452ad4, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452ad7	 Bytes: 3
  %loadMem_452ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ad7 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ad7)
  store %struct.Memory* %call_452ad7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 452ada	 Bytes: 6
  %loadMem_452ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ada = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ada)
  store %struct.Memory* %call_452ada, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452ae0	 Bytes: 2
  %loadMem_452ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ae0 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ae0)
  store %struct.Memory* %call_452ae0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452ae2	 Bytes: 1
  %loadMem_452ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ae2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ae2)
  store %struct.Memory* %call_452ae2, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452ae3	 Bytes: 2
  %loadMem_452ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ae3 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ae3)
  store %struct.Memory* %call_452ae3, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %edi	 RIP: 452ae5	 Bytes: 6
  %loadMem_452ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ae5 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ae5)
  store %struct.Memory* %call_452ae5, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452aeb	 Bytes: 2
  %loadMem_452aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452aeb = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452aeb)
  store %struct.Memory* %call_452aeb, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 452aed	 Bytes: 3
  %loadMem_452aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452aed = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452aed)
  store %struct.Memory* %call_452aed, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452af0	 Bytes: 3
  %loadMem_452af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452af0 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452af0)
  store %struct.Memory* %call_452af0, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%r8,1)	 RIP: 452af3	 Bytes: 5
  %loadMem_452af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452af3 = call %struct.Memory* @routine_movb__0x1____rcx__r8_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452af3)
  store %struct.Memory* %call_452af3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452af8	 Bytes: 4
  %loadMem_452af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452af8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452af8)
  store %struct.Memory* %call_452af8, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452afc	 Bytes: 4
  %loadMem_452afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452afc = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452afc)
  store %struct.Memory* %call_452afc, %struct.Memory** %MEMORY

  ; Code: movq 0x1978(%rcx), %rcx	 RIP: 452b00	 Bytes: 7
  %loadMem_452b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b00 = call %struct.Memory* @routine_movq_0x1978__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b00)
  store %struct.Memory* %call_452b00, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452b07	 Bytes: 4
  %loadMem_452b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b07 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b07)
  store %struct.Memory* %call_452b07, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452b0b	 Bytes: 4
  %loadMem_452b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b0b = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b0b)
  store %struct.Memory* %call_452b0b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452b0f	 Bytes: 3
  %loadMem_452b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b0f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b0f)
  store %struct.Memory* %call_452b0f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452b12	 Bytes: 2
  %loadMem_452b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b12 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b12)
  store %struct.Memory* %call_452b12, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452b14	 Bytes: 1
  %loadMem_452b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b14 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b14)
  store %struct.Memory* %call_452b14, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452b15	 Bytes: 2
  %loadMem_452b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b15 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b15)
  store %struct.Memory* %call_452b15, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452b17	 Bytes: 3
  %loadMem_452b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b17 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b17)
  store %struct.Memory* %call_452b17, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452b1a	 Bytes: 3
  %loadMem_452b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b1a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b1a)
  store %struct.Memory* %call_452b1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 452b1d	 Bytes: 6
  %loadMem_452b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b1d = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b1d)
  store %struct.Memory* %call_452b1d, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452b23	 Bytes: 2
  %loadMem_452b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b23 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b23)
  store %struct.Memory* %call_452b23, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452b25	 Bytes: 1
  %loadMem_452b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b25 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b25)
  store %struct.Memory* %call_452b25, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452b26	 Bytes: 2
  %loadMem_452b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b26 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b26)
  store %struct.Memory* %call_452b26, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edi	 RIP: 452b28	 Bytes: 6
  %loadMem_452b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b28 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b28)
  store %struct.Memory* %call_452b28, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452b2e	 Bytes: 2
  %loadMem_452b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b2e = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b2e)
  store %struct.Memory* %call_452b2e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452b30	 Bytes: 3
  %loadMem_452b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b30 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b30)
  store %struct.Memory* %call_452b30, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rcx,%r8,1)	 RIP: 452b33	 Bytes: 5
  %loadMem_452b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b33 = call %struct.Memory* @routine_movb__0x1____rcx__r8_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b33)
  store %struct.Memory* %call_452b33, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452b38	 Bytes: 4
  %loadMem_452b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b38 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b38)
  store %struct.Memory* %call_452b38, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452b3c	 Bytes: 4
  %loadMem_452b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b3c = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b3c)
  store %struct.Memory* %call_452b3c, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452b40	 Bytes: 7
  %loadMem_452b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b40 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b40)
  store %struct.Memory* %call_452b40, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452b47	 Bytes: 3
  %loadMem_452b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b47 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b47)
  store %struct.Memory* %call_452b47, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452b4a	 Bytes: 4
  %loadMem_452b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b4a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b4a)
  store %struct.Memory* %call_452b4a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452b4e	 Bytes: 4
  %loadMem_452b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b4e = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b4e)
  store %struct.Memory* %call_452b4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452b52	 Bytes: 4
  %loadMem_452b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b52 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b52)
  store %struct.Memory* %call_452b52, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452b56	 Bytes: 4
  %loadMem_452b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b56 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b56)
  store %struct.Memory* %call_452b56, %struct.Memory** %MEMORY

  ; Code: movw (%rcx), %r9w	 RIP: 452b5a	 Bytes: 4
  %loadMem_452b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b5a = call %struct.Memory* @routine_movw___rcx____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b5a)
  store %struct.Memory* %call_452b5a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452b5e	 Bytes: 4
  %loadMem_452b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b5e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b5e)
  store %struct.Memory* %call_452b5e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452b62	 Bytes: 4
  %loadMem_452b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b62 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b62)
  store %struct.Memory* %call_452b62, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452b66	 Bytes: 7
  %loadMem_452b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b66 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b66)
  store %struct.Memory* %call_452b66, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452b6d	 Bytes: 3
  %loadMem_452b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b6d = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b6d)
  store %struct.Memory* %call_452b6d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452b70	 Bytes: 4
  %loadMem_452b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b70 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b70)
  store %struct.Memory* %call_452b70, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452b74	 Bytes: 4
  %loadMem_452b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b74 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b74)
  store %struct.Memory* %call_452b74, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452b78	 Bytes: 3
  %loadMem_452b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b78 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b78)
  store %struct.Memory* %call_452b78, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452b7b	 Bytes: 2
  %loadMem_452b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b7b = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b7b)
  store %struct.Memory* %call_452b7b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452b7d	 Bytes: 1
  %loadMem_452b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b7d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b7d)
  store %struct.Memory* %call_452b7d, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452b7e	 Bytes: 2
  %loadMem_452b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b7e = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b7e)
  store %struct.Memory* %call_452b7e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452b80	 Bytes: 3
  %loadMem_452b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b80 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b80)
  store %struct.Memory* %call_452b80, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452b83	 Bytes: 3
  %loadMem_452b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b83 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b83)
  store %struct.Memory* %call_452b83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 452b86	 Bytes: 6
  %loadMem_452b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b86 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b86)
  store %struct.Memory* %call_452b86, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452b8c	 Bytes: 2
  %loadMem_452b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b8c = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b8c)
  store %struct.Memory* %call_452b8c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452b8e	 Bytes: 1
  %loadMem_452b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b8e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b8e)
  store %struct.Memory* %call_452b8e, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452b8f	 Bytes: 2
  %loadMem_452b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b8f = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b8f)
  store %struct.Memory* %call_452b8f, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %edi	 RIP: 452b91	 Bytes: 6
  %loadMem_452b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b91 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b91)
  store %struct.Memory* %call_452b91, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452b97	 Bytes: 2
  %loadMem_452b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b97 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b97)
  store %struct.Memory* %call_452b97, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452b99	 Bytes: 3
  %loadMem_452b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b99 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b99)
  store %struct.Memory* %call_452b99, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452b9c	 Bytes: 4
  %loadMem_452b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452b9c = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452b9c)
  store %struct.Memory* %call_452b9c, %struct.Memory** %MEMORY

  ; Code: movw %r9w, (%rcx)	 RIP: 452ba0	 Bytes: 4
  %loadMem_452ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ba0 = call %struct.Memory* @routine_movw__r9w____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ba0)
  store %struct.Memory* %call_452ba0, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452ba4	 Bytes: 4
  %loadMem_452ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ba4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ba4)
  store %struct.Memory* %call_452ba4, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452ba8	 Bytes: 4
  %loadMem_452ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ba8 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ba8)
  store %struct.Memory* %call_452ba8, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452bac	 Bytes: 7
  %loadMem_452bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bac = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bac)
  store %struct.Memory* %call_452bac, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452bb3	 Bytes: 3
  %loadMem_452bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bb3 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bb3)
  store %struct.Memory* %call_452bb3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452bb6	 Bytes: 4
  %loadMem_452bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bb6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bb6)
  store %struct.Memory* %call_452bb6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452bba	 Bytes: 4
  %loadMem_452bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bba = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bba)
  store %struct.Memory* %call_452bba, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452bbe	 Bytes: 4
  %loadMem_452bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bbe = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bbe)
  store %struct.Memory* %call_452bbe, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452bc2	 Bytes: 4
  %loadMem_452bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bc2 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bc2)
  store %struct.Memory* %call_452bc2, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rcx), %r9w	 RIP: 452bc6	 Bytes: 5
  %loadMem_452bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bc6 = call %struct.Memory* @routine_movw_0x2__rcx____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bc6)
  store %struct.Memory* %call_452bc6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452bcb	 Bytes: 4
  %loadMem_452bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bcb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bcb)
  store %struct.Memory* %call_452bcb, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452bcf	 Bytes: 4
  %loadMem_452bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bcf = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bcf)
  store %struct.Memory* %call_452bcf, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452bd3	 Bytes: 7
  %loadMem_452bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bd3 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bd3)
  store %struct.Memory* %call_452bd3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452bda	 Bytes: 3
  %loadMem_452bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bda = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bda)
  store %struct.Memory* %call_452bda, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452bdd	 Bytes: 4
  %loadMem_452bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bdd = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bdd)
  store %struct.Memory* %call_452bdd, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452be1	 Bytes: 4
  %loadMem_452be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452be1 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452be1)
  store %struct.Memory* %call_452be1, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452be5	 Bytes: 3
  %loadMem_452be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452be5 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452be5)
  store %struct.Memory* %call_452be5, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452be8	 Bytes: 2
  %loadMem_452be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452be8 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452be8)
  store %struct.Memory* %call_452be8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452bea	 Bytes: 1
  %loadMem_452bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bea = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bea)
  store %struct.Memory* %call_452bea, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452beb	 Bytes: 2
  %loadMem_452beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452beb = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452beb)
  store %struct.Memory* %call_452beb, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452bed	 Bytes: 3
  %loadMem_452bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bed = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bed)
  store %struct.Memory* %call_452bed, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452bf0	 Bytes: 3
  %loadMem_452bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bf0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bf0)
  store %struct.Memory* %call_452bf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 452bf3	 Bytes: 6
  %loadMem_452bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bf3 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bf3)
  store %struct.Memory* %call_452bf3, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452bf9	 Bytes: 2
  %loadMem_452bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bf9 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bf9)
  store %struct.Memory* %call_452bf9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452bfb	 Bytes: 1
  %loadMem_452bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bfb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bfb)
  store %struct.Memory* %call_452bfb, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452bfc	 Bytes: 2
  %loadMem_452bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bfc = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bfc)
  store %struct.Memory* %call_452bfc, %struct.Memory** %MEMORY

  ; Code: movl -0xa4(%rbp), %edi	 RIP: 452bfe	 Bytes: 6
  %loadMem_452bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452bfe = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452bfe)
  store %struct.Memory* %call_452bfe, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452c04	 Bytes: 2
  %loadMem_452c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c04 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c04)
  store %struct.Memory* %call_452c04, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452c06	 Bytes: 3
  %loadMem_452c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c06 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c06)
  store %struct.Memory* %call_452c06, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c09	 Bytes: 4
  %loadMem_452c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c09 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c09)
  store %struct.Memory* %call_452c09, %struct.Memory** %MEMORY

  ; Code: movw %r9w, 0x2(%rcx)	 RIP: 452c0d	 Bytes: 5
  %loadMem_452c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c0d = call %struct.Memory* @routine_movw__r9w__0x2__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c0d)
  store %struct.Memory* %call_452c0d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452c12	 Bytes: 4
  %loadMem_452c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c12 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c12)
  store %struct.Memory* %call_452c12, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452c16	 Bytes: 4
  %loadMem_452c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c16 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c16)
  store %struct.Memory* %call_452c16, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452c1a	 Bytes: 7
  %loadMem_452c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c1a = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c1a)
  store %struct.Memory* %call_452c1a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452c21	 Bytes: 4
  %loadMem_452c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c21 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c21)
  store %struct.Memory* %call_452c21, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452c25	 Bytes: 4
  %loadMem_452c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c25 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c25)
  store %struct.Memory* %call_452c25, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c29	 Bytes: 4
  %loadMem_452c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c29 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c29)
  store %struct.Memory* %call_452c29, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452c2d	 Bytes: 4
  %loadMem_452c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c2d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c2d)
  store %struct.Memory* %call_452c2d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c31	 Bytes: 4
  %loadMem_452c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c31 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c31)
  store %struct.Memory* %call_452c31, %struct.Memory** %MEMORY

  ; Code: movw (%rcx), %r9w	 RIP: 452c35	 Bytes: 4
  %loadMem_452c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c35 = call %struct.Memory* @routine_movw___rcx____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c35)
  store %struct.Memory* %call_452c35, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452c39	 Bytes: 4
  %loadMem_452c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c39 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c39)
  store %struct.Memory* %call_452c39, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452c3d	 Bytes: 4
  %loadMem_452c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c3d = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c3d)
  store %struct.Memory* %call_452c3d, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452c41	 Bytes: 7
  %loadMem_452c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c41 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c41)
  store %struct.Memory* %call_452c41, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452c48	 Bytes: 4
  %loadMem_452c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c48 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c48)
  store %struct.Memory* %call_452c48, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452c4c	 Bytes: 4
  %loadMem_452c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c4c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c4c)
  store %struct.Memory* %call_452c4c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c50	 Bytes: 4
  %loadMem_452c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c50 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c50)
  store %struct.Memory* %call_452c50, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452c54	 Bytes: 3
  %loadMem_452c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c54 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c54)
  store %struct.Memory* %call_452c54, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452c57	 Bytes: 2
  %loadMem_452c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c57 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c57)
  store %struct.Memory* %call_452c57, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452c59	 Bytes: 1
  %loadMem_452c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c59 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c59)
  store %struct.Memory* %call_452c59, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452c5a	 Bytes: 2
  %loadMem_452c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c5a = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c5a)
  store %struct.Memory* %call_452c5a, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452c5c	 Bytes: 3
  %loadMem_452c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c5c = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c5c)
  store %struct.Memory* %call_452c5c, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452c5f	 Bytes: 3
  %loadMem_452c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c5f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c5f)
  store %struct.Memory* %call_452c5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 452c62	 Bytes: 6
  %loadMem_452c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c62 = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c62)
  store %struct.Memory* %call_452c62, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452c68	 Bytes: 2
  %loadMem_452c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c68 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c68)
  store %struct.Memory* %call_452c68, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452c6a	 Bytes: 1
  %loadMem_452c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c6a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c6a)
  store %struct.Memory* %call_452c6a, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452c6b	 Bytes: 2
  %loadMem_452c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c6b = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c6b)
  store %struct.Memory* %call_452c6b, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %edi	 RIP: 452c6d	 Bytes: 6
  %loadMem_452c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c6d = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c6d)
  store %struct.Memory* %call_452c6d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452c73	 Bytes: 2
  %loadMem_452c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c73 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c73)
  store %struct.Memory* %call_452c73, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452c75	 Bytes: 3
  %loadMem_452c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c75 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c75)
  store %struct.Memory* %call_452c75, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c78	 Bytes: 4
  %loadMem_452c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c78 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c78)
  store %struct.Memory* %call_452c78, %struct.Memory** %MEMORY

  ; Code: movw %r9w, (%rcx)	 RIP: 452c7c	 Bytes: 4
  %loadMem_452c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c7c = call %struct.Memory* @routine_movw__r9w____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c7c)
  store %struct.Memory* %call_452c7c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452c80	 Bytes: 4
  %loadMem_452c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c80 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c80)
  store %struct.Memory* %call_452c80, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452c84	 Bytes: 4
  %loadMem_452c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c84 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c84)
  store %struct.Memory* %call_452c84, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452c88	 Bytes: 7
  %loadMem_452c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c88 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c88)
  store %struct.Memory* %call_452c88, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452c8f	 Bytes: 4
  %loadMem_452c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c8f = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c8f)
  store %struct.Memory* %call_452c8f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452c93	 Bytes: 4
  %loadMem_452c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c93 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c93)
  store %struct.Memory* %call_452c93, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c97	 Bytes: 4
  %loadMem_452c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c97 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c97)
  store %struct.Memory* %call_452c97, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452c9b	 Bytes: 4
  %loadMem_452c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c9b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c9b)
  store %struct.Memory* %call_452c9b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452c9f	 Bytes: 4
  %loadMem_452c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452c9f = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452c9f)
  store %struct.Memory* %call_452c9f, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rcx), %r9w	 RIP: 452ca3	 Bytes: 5
  %loadMem_452ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ca3 = call %struct.Memory* @routine_movw_0x2__rcx____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ca3)
  store %struct.Memory* %call_452ca3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452ca8	 Bytes: 4
  %loadMem_452ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ca8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ca8)
  store %struct.Memory* %call_452ca8, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452cac	 Bytes: 4
  %loadMem_452cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cac = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cac)
  store %struct.Memory* %call_452cac, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rcx), %rcx	 RIP: 452cb0	 Bytes: 7
  %loadMem_452cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cb0 = call %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cb0)
  store %struct.Memory* %call_452cb0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452cb7	 Bytes: 4
  %loadMem_452cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cb7 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cb7)
  store %struct.Memory* %call_452cb7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452cbb	 Bytes: 4
  %loadMem_452cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cbb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cbb)
  store %struct.Memory* %call_452cbb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452cbf	 Bytes: 4
  %loadMem_452cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cbf = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cbf)
  store %struct.Memory* %call_452cbf, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452cc3	 Bytes: 3
  %loadMem_452cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cc3 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cc3)
  store %struct.Memory* %call_452cc3, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452cc6	 Bytes: 2
  %loadMem_452cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cc6 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cc6)
  store %struct.Memory* %call_452cc6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452cc8	 Bytes: 1
  %loadMem_452cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cc8 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cc8)
  store %struct.Memory* %call_452cc8, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452cc9	 Bytes: 2
  %loadMem_452cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cc9 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cc9)
  store %struct.Memory* %call_452cc9, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452ccb	 Bytes: 3
  %loadMem_452ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ccb = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ccb)
  store %struct.Memory* %call_452ccb, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452cce	 Bytes: 3
  %loadMem_452cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cce = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cce)
  store %struct.Memory* %call_452cce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 452cd1	 Bytes: 6
  %loadMem_452cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cd1 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cd1)
  store %struct.Memory* %call_452cd1, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452cd7	 Bytes: 2
  %loadMem_452cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cd7 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cd7)
  store %struct.Memory* %call_452cd7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452cd9	 Bytes: 1
  %loadMem_452cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cd9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cd9)
  store %struct.Memory* %call_452cd9, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452cda	 Bytes: 2
  %loadMem_452cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cda = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cda)
  store %struct.Memory* %call_452cda, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %edi	 RIP: 452cdc	 Bytes: 6
  %loadMem_452cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cdc = call %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cdc)
  store %struct.Memory* %call_452cdc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452ce2	 Bytes: 2
  %loadMem_452ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ce2 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ce2)
  store %struct.Memory* %call_452ce2, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452ce4	 Bytes: 3
  %loadMem_452ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ce4 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ce4)
  store %struct.Memory* %call_452ce4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452ce7	 Bytes: 4
  %loadMem_452ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ce7 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ce7)
  store %struct.Memory* %call_452ce7, %struct.Memory** %MEMORY

  ; Code: movw %r9w, 0x2(%rcx)	 RIP: 452ceb	 Bytes: 5
  %loadMem_452ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ceb = call %struct.Memory* @routine_movw__r9w__0x2__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ceb)
  store %struct.Memory* %call_452ceb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452cf0	 Bytes: 4
  %loadMem_452cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cf0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cf0)
  store %struct.Memory* %call_452cf0, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452cf4	 Bytes: 4
  %loadMem_452cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cf4 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cf4)
  store %struct.Memory* %call_452cf4, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 452cf8	 Bytes: 7
  %loadMem_452cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cf8 = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cf8)
  store %struct.Memory* %call_452cf8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452cff	 Bytes: 3
  %loadMem_452cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452cff = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452cff)
  store %struct.Memory* %call_452cff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452d02	 Bytes: 4
  %loadMem_452d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d02 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d02)
  store %struct.Memory* %call_452d02, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452d06	 Bytes: 4
  %loadMem_452d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d06 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d06)
  store %struct.Memory* %call_452d06, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452d0a	 Bytes: 4
  %loadMem_452d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d0a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d0a)
  store %struct.Memory* %call_452d0a, %struct.Memory** %MEMORY

  ; Code: movw (%rcx,%r8,2), %r9w	 RIP: 452d0e	 Bytes: 5
  %loadMem_452d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d0e = call %struct.Memory* @routine_movw___rcx__r8_2____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d0e)
  store %struct.Memory* %call_452d0e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452d13	 Bytes: 4
  %loadMem_452d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d13 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d13)
  store %struct.Memory* %call_452d13, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452d17	 Bytes: 4
  %loadMem_452d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d17 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d17)
  store %struct.Memory* %call_452d17, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 452d1b	 Bytes: 7
  %loadMem_452d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d1b = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d1b)
  store %struct.Memory* %call_452d1b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452d22	 Bytes: 3
  %loadMem_452d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d22 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d22)
  store %struct.Memory* %call_452d22, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452d25	 Bytes: 4
  %loadMem_452d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d25 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d25)
  store %struct.Memory* %call_452d25, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452d29	 Bytes: 4
  %loadMem_452d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d29 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d29)
  store %struct.Memory* %call_452d29, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452d2d	 Bytes: 3
  %loadMem_452d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d2d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d2d)
  store %struct.Memory* %call_452d2d, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452d30	 Bytes: 2
  %loadMem_452d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d30 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d30)
  store %struct.Memory* %call_452d30, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452d32	 Bytes: 1
  %loadMem_452d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d32 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d32)
  store %struct.Memory* %call_452d32, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452d33	 Bytes: 2
  %loadMem_452d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d33 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d33)
  store %struct.Memory* %call_452d33, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452d35	 Bytes: 3
  %loadMem_452d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d35 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d35)
  store %struct.Memory* %call_452d35, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452d38	 Bytes: 3
  %loadMem_452d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d38 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d38)
  store %struct.Memory* %call_452d38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 452d3b	 Bytes: 6
  %loadMem_452d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d3b = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d3b)
  store %struct.Memory* %call_452d3b, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452d41	 Bytes: 2
  %loadMem_452d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d41 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d41)
  store %struct.Memory* %call_452d41, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452d43	 Bytes: 1
  %loadMem_452d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d43 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d43)
  store %struct.Memory* %call_452d43, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452d44	 Bytes: 2
  %loadMem_452d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d44 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d44)
  store %struct.Memory* %call_452d44, %struct.Memory** %MEMORY

  ; Code: movl -0xb0(%rbp), %edi	 RIP: 452d46	 Bytes: 6
  %loadMem_452d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d46 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d46)
  store %struct.Memory* %call_452d46, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452d4c	 Bytes: 2
  %loadMem_452d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d4c = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d4c)
  store %struct.Memory* %call_452d4c, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452d4e	 Bytes: 3
  %loadMem_452d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d4e = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d4e)
  store %struct.Memory* %call_452d4e, %struct.Memory** %MEMORY

  ; Code: movw %r9w, (%rcx,%r8,2)	 RIP: 452d51	 Bytes: 5
  %loadMem_452d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d51 = call %struct.Memory* @routine_movw__r9w____rcx__r8_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d51)
  store %struct.Memory* %call_452d51, %struct.Memory** %MEMORY

  ; Code: movswl %r9w, %edx	 RIP: 452d56	 Bytes: 4
  %loadMem_452d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d56 = call %struct.Memory* @routine_movswl__r9w___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d56)
  store %struct.Memory* %call_452d56, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 452d5a	 Bytes: 3
  %loadMem_452d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d5a = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d5a)
  store %struct.Memory* %call_452d5a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452d5d	 Bytes: 4
  %loadMem_452d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d5d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d5d)
  store %struct.Memory* %call_452d5d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452d61	 Bytes: 4
  %loadMem_452d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d61 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d61)
  store %struct.Memory* %call_452d61, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 452d65	 Bytes: 7
  %loadMem_452d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d65 = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d65)
  store %struct.Memory* %call_452d65, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452d6c	 Bytes: 4
  %loadMem_452d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d6c = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d6c)
  store %struct.Memory* %call_452d6c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452d70	 Bytes: 4
  %loadMem_452d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d70 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d70)
  store %struct.Memory* %call_452d70, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452d74	 Bytes: 4
  %loadMem_452d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d74 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d74)
  store %struct.Memory* %call_452d74, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 452d78	 Bytes: 4
  %loadMem_452d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d78 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d78)
  store %struct.Memory* %call_452d78, %struct.Memory** %MEMORY

  ; Code: movw (%rcx,%r8,2), %r9w	 RIP: 452d7c	 Bytes: 5
  %loadMem_452d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d7c = call %struct.Memory* @routine_movw___rcx__r8_2____r9w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d7c)
  store %struct.Memory* %call_452d7c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452d81	 Bytes: 4
  %loadMem_452d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d81 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d81)
  store %struct.Memory* %call_452d81, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 452d85	 Bytes: 4
  %loadMem_452d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d85 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d85)
  store %struct.Memory* %call_452d85, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 452d89	 Bytes: 7
  %loadMem_452d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d89 = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d89)
  store %struct.Memory* %call_452d89, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452d90	 Bytes: 4
  %loadMem_452d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d90 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d90)
  store %struct.Memory* %call_452d90, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 452d94	 Bytes: 4
  %loadMem_452d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d94 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d94)
  store %struct.Memory* %call_452d94, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r8,8), %rcx	 RIP: 452d98	 Bytes: 4
  %loadMem_452d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d98 = call %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d98)
  store %struct.Memory* %call_452d98, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 452d9c	 Bytes: 3
  %loadMem_452d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d9c = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d9c)
  store %struct.Memory* %call_452d9c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 452d9f	 Bytes: 2
  %loadMem_452d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452d9f = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452d9f)
  store %struct.Memory* %call_452d9f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452da1	 Bytes: 1
  %loadMem_452da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452da1 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452da1)
  store %struct.Memory* %call_452da1, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452da2	 Bytes: 2
  %loadMem_452da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452da2 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452da2)
  store %struct.Memory* %call_452da2, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452da4	 Bytes: 3
  %loadMem_452da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452da4 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452da4)
  store %struct.Memory* %call_452da4, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452da7	 Bytes: 3
  %loadMem_452da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452da7 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452da7)
  store %struct.Memory* %call_452da7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 452daa	 Bytes: 6
  %loadMem_452daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452daa = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452daa)
  store %struct.Memory* %call_452daa, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452db0	 Bytes: 2
  %loadMem_452db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452db0 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452db0)
  store %struct.Memory* %call_452db0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452db2	 Bytes: 1
  %loadMem_452db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452db2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452db2)
  store %struct.Memory* %call_452db2, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 452db3	 Bytes: 2
  %loadMem_452db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452db3 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452db3)
  store %struct.Memory* %call_452db3, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %edi	 RIP: 452db5	 Bytes: 6
  %loadMem_452db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452db5 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452db5)
  store %struct.Memory* %call_452db5, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452dbb	 Bytes: 2
  %loadMem_452dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dbb = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dbb)
  store %struct.Memory* %call_452dbb, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 452dbd	 Bytes: 3
  %loadMem_452dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dbd = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dbd)
  store %struct.Memory* %call_452dbd, %struct.Memory** %MEMORY

  ; Code: movw %r9w, (%rcx,%r8,2)	 RIP: 452dc0	 Bytes: 5
  %loadMem_452dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dc0 = call %struct.Memory* @routine_movw__r9w____rcx__r8_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dc0)
  store %struct.Memory* %call_452dc0, %struct.Memory** %MEMORY

  ; Code: movswl %r9w, %edx	 RIP: 452dc5	 Bytes: 4
  %loadMem_452dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dc5 = call %struct.Memory* @routine_movswl__r9w___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dc5)
  store %struct.Memory* %call_452dc5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 452dc9	 Bytes: 3
  %loadMem_452dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dc9 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dc9)
  store %struct.Memory* %call_452dc9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 452dcc	 Bytes: 4
  %loadMem_452dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dcc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dcc)
  store %struct.Memory* %call_452dcc, %struct.Memory** %MEMORY

  ; Code: jl .L_452df3	 RIP: 452dd0	 Bytes: 6
  %loadMem_452dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dd0 = call %struct.Memory* @routine_jl_.L_452df3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dd0, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_452dd0, %struct.Memory** %MEMORY

  %loadBr_452dd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452dd0 = icmp eq i8 %loadBr_452dd0, 1
  br i1 %cmpBr_452dd0, label %block_.L_452df3, label %block_452dd6

block_452dd6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452dd6	 Bytes: 4
  %loadMem_452dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dd6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dd6)
  store %struct.Memory* %call_452dd6, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 452dda	 Bytes: 4
  %loadMem_452dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dda = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dda)
  store %struct.Memory* %call_452dda, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 452dde	 Bytes: 4
  %loadMem_452dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dde = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dde)
  store %struct.Memory* %call_452dde, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax,%rcx,8), %rax	 RIP: 452de2	 Bytes: 5
  %loadMem_452de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452de2 = call %struct.Memory* @routine_movq_0x18__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452de2)
  store %struct.Memory* %call_452de2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc0(%rbp)	 RIP: 452de7	 Bytes: 7
  %loadMem_452de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452de7 = call %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452de7)
  store %struct.Memory* %call_452de7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452e03	 RIP: 452dee	 Bytes: 5
  %loadMem_452dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dee = call %struct.Memory* @routine_jmpq_.L_452e03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dee, i64 21, i64 5)
  store %struct.Memory* %call_452dee, %struct.Memory** %MEMORY

  br label %block_.L_452e03

  ; Code: .L_452df3:	 RIP: 452df3	 Bytes: 0
block_.L_452df3:

  ; Code: xorl %eax, %eax	 RIP: 452df3	 Bytes: 2
  %loadMem_452df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452df3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452df3)
  store %struct.Memory* %call_452df3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 452df5	 Bytes: 2
  %loadMem_452df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452df5 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452df5)
  store %struct.Memory* %call_452df5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xc0(%rbp)	 RIP: 452df7	 Bytes: 7
  %loadMem_452df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452df7 = call %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452df7)
  store %struct.Memory* %call_452df7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452e03	 RIP: 452dfe	 Bytes: 5
  %loadMem_452dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452dfe = call %struct.Memory* @routine_jmpq_.L_452e03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452dfe, i64 5, i64 5)
  store %struct.Memory* %call_452dfe, %struct.Memory** %MEMORY

  br label %block_.L_452e03

  ; Code: .L_452e03:	 RIP: 452e03	 Bytes: 0
block_.L_452e03:

  ; Code: movq -0xc0(%rbp), %rax	 RIP: 452e03	 Bytes: 7
  %loadMem_452e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e03 = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e03)
  store %struct.Memory* %call_452e03, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452e0a	 Bytes: 4
  %loadMem_452e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e0a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e0a)
  store %struct.Memory* %call_452e0a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452e0e	 Bytes: 4
  %loadMem_452e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e0e = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e0e)
  store %struct.Memory* %call_452e0e, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rcx), %rcx	 RIP: 452e12	 Bytes: 7
  %loadMem_452e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e12 = call %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e12)
  store %struct.Memory* %call_452e12, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 452e19	 Bytes: 3
  %loadMem_452e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e19 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e19)
  store %struct.Memory* %call_452e19, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 452e1c	 Bytes: 4
  %loadMem_452e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e1c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e1c)
  store %struct.Memory* %call_452e1c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 452e20	 Bytes: 4
  %loadMem_452e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e20 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e20)
  store %struct.Memory* %call_452e20, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 452e24	 Bytes: 4
  %loadMem_452e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e24 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e24)
  store %struct.Memory* %call_452e24, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 452e28	 Bytes: 4
  %loadMem_452e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e28 = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e28)
  store %struct.Memory* %call_452e28, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 452e2c	 Bytes: 4
  %loadMem_452e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e2c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e2c)
  store %struct.Memory* %call_452e2c, %struct.Memory** %MEMORY

  ; Code: jl .L_452e56	 RIP: 452e30	 Bytes: 6
  %loadMem_452e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e30 = call %struct.Memory* @routine_jl_.L_452e56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e30, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_452e30, %struct.Memory** %MEMORY

  %loadBr_452e30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452e30 = icmp eq i8 %loadBr_452e30, 1
  br i1 %cmpBr_452e30, label %block_.L_452e56, label %block_452e36

block_452e36:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452e36	 Bytes: 4
  %loadMem_452e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e36 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e36)
  store %struct.Memory* %call_452e36, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 452e3a	 Bytes: 4
  %loadMem_452e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e3a = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e3a)
  store %struct.Memory* %call_452e3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 452e3e	 Bytes: 4
  %loadMem_452e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e3e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e3e)
  store %struct.Memory* %call_452e3e, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax,%rcx,8), %rax	 RIP: 452e42	 Bytes: 8
  %loadMem_452e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e42 = call %struct.Memory* @routine_movq_0x120__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e42)
  store %struct.Memory* %call_452e42, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc8(%rbp)	 RIP: 452e4a	 Bytes: 7
  %loadMem_452e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e4a = call %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e4a)
  store %struct.Memory* %call_452e4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452e66	 RIP: 452e51	 Bytes: 5
  %loadMem_452e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e51 = call %struct.Memory* @routine_jmpq_.L_452e66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e51, i64 21, i64 5)
  store %struct.Memory* %call_452e51, %struct.Memory** %MEMORY

  br label %block_.L_452e66

  ; Code: .L_452e56:	 RIP: 452e56	 Bytes: 0
block_.L_452e56:

  ; Code: xorl %eax, %eax	 RIP: 452e56	 Bytes: 2
  %loadMem_452e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e56 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e56)
  store %struct.Memory* %call_452e56, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 452e58	 Bytes: 2
  %loadMem_452e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e58 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e58)
  store %struct.Memory* %call_452e58, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xc8(%rbp)	 RIP: 452e5a	 Bytes: 7
  %loadMem_452e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e5a = call %struct.Memory* @routine_movq__rcx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e5a)
  store %struct.Memory* %call_452e5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452e66	 RIP: 452e61	 Bytes: 5
  %loadMem_452e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e61 = call %struct.Memory* @routine_jmpq_.L_452e66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e61, i64 5, i64 5)
  store %struct.Memory* %call_452e61, %struct.Memory** %MEMORY

  br label %block_.L_452e66

  ; Code: .L_452e66:	 RIP: 452e66	 Bytes: 0
block_.L_452e66:

  ; Code: movq -0xc8(%rbp), %rax	 RIP: 452e66	 Bytes: 7
  %loadMem_452e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e66 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e66)
  store %struct.Memory* %call_452e66, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 452e6d	 Bytes: 4
  %loadMem_452e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e6d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e6d)
  store %struct.Memory* %call_452e6d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 452e71	 Bytes: 4
  %loadMem_452e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e71 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e71)
  store %struct.Memory* %call_452e71, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rcx), %rcx	 RIP: 452e75	 Bytes: 7
  %loadMem_452e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e75 = call %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e75)
  store %struct.Memory* %call_452e75, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 452e7c	 Bytes: 4
  %loadMem_452e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e7c = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e7c)
  store %struct.Memory* %call_452e7c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 452e80	 Bytes: 4
  %loadMem_452e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e80 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e80)
  store %struct.Memory* %call_452e80, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 452e84	 Bytes: 4
  %loadMem_452e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e84 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e84)
  store %struct.Memory* %call_452e84, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 452e88	 Bytes: 4
  %loadMem_452e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e88 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e88)
  store %struct.Memory* %call_452e88, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 452e8c	 Bytes: 4
  %loadMem_452e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e8c = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e8c)
  store %struct.Memory* %call_452e8c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 452e90	 Bytes: 4
  %loadMem_452e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e90 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e90)
  store %struct.Memory* %call_452e90, %struct.Memory** %MEMORY

  ; Code: jl .L_452eba	 RIP: 452e94	 Bytes: 6
  %loadMem_452e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e94 = call %struct.Memory* @routine_jl_.L_452eba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e94, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_452e94, %struct.Memory** %MEMORY

  %loadBr_452e94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452e94 = icmp eq i8 %loadBr_452e94, 1
  br i1 %cmpBr_452e94, label %block_.L_452eba, label %block_452e9a

block_452e9a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452e9a	 Bytes: 4
  %loadMem_452e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e9a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e9a)
  store %struct.Memory* %call_452e9a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 452e9e	 Bytes: 4
  %loadMem_452e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452e9e = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452e9e)
  store %struct.Memory* %call_452e9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 452ea2	 Bytes: 4
  %loadMem_452ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ea2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ea2)
  store %struct.Memory* %call_452ea2, %struct.Memory** %MEMORY

  ; Code: movq 0x648(%rax,%rcx,8), %rax	 RIP: 452ea6	 Bytes: 8
  %loadMem_452ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ea6 = call %struct.Memory* @routine_movq_0x648__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ea6)
  store %struct.Memory* %call_452ea6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 452eae	 Bytes: 7
  %loadMem_452eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eae = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eae)
  store %struct.Memory* %call_452eae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452eca	 RIP: 452eb5	 Bytes: 5
  %loadMem_452eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eb5 = call %struct.Memory* @routine_jmpq_.L_452eca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eb5, i64 21, i64 5)
  store %struct.Memory* %call_452eb5, %struct.Memory** %MEMORY

  br label %block_.L_452eca

  ; Code: .L_452eba:	 RIP: 452eba	 Bytes: 0
block_.L_452eba:

  ; Code: xorl %eax, %eax	 RIP: 452eba	 Bytes: 2
  %loadMem_452eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eba = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eba)
  store %struct.Memory* %call_452eba, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 452ebc	 Bytes: 2
  %loadMem_452ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ebc = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ebc)
  store %struct.Memory* %call_452ebc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xd0(%rbp)	 RIP: 452ebe	 Bytes: 7
  %loadMem_452ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ebe = call %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ebe)
  store %struct.Memory* %call_452ebe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452eca	 RIP: 452ec5	 Bytes: 5
  %loadMem_452ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ec5 = call %struct.Memory* @routine_jmpq_.L_452eca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ec5, i64 5, i64 5)
  store %struct.Memory* %call_452ec5, %struct.Memory** %MEMORY

  br label %block_.L_452eca

  ; Code: .L_452eca:	 RIP: 452eca	 Bytes: 0
block_.L_452eca:

  ; Code: movq -0xd0(%rbp), %rax	 RIP: 452eca	 Bytes: 7
  %loadMem_452eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eca = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eca)
  store %struct.Memory* %call_452eca, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 452ed1	 Bytes: 5
  %loadMem_452ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ed1 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ed1)
  store %struct.Memory* %call_452ed1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452ed6	 Bytes: 4
  %loadMem_452ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ed6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ed6)
  store %struct.Memory* %call_452ed6, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 452eda	 Bytes: 4
  %loadMem_452eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eda = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eda)
  store %struct.Memory* %call_452eda, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rdx), %rdx	 RIP: 452ede	 Bytes: 7
  %loadMem_452ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ede = call %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ede)
  store %struct.Memory* %call_452ede, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 452ee5	 Bytes: 3
  %loadMem_452ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ee5 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ee5)
  store %struct.Memory* %call_452ee5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 452ee8	 Bytes: 4
  %loadMem_452ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ee8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ee8)
  store %struct.Memory* %call_452ee8, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 452eec	 Bytes: 4
  %loadMem_452eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452eec = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452eec)
  store %struct.Memory* %call_452eec, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452ef0	 Bytes: 3
  %loadMem_452ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ef0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ef0)
  store %struct.Memory* %call_452ef0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 452ef3	 Bytes: 7
  %loadMem_452ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ef3 = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ef3)
  store %struct.Memory* %call_452ef3, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452efa	 Bytes: 2
  %loadMem_452efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452efa = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452efa)
  store %struct.Memory* %call_452efa, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xe0(%rbp)	 RIP: 452efc	 Bytes: 7
  %loadMem_452efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452efc = call %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452efc)
  store %struct.Memory* %call_452efc, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452f03	 Bytes: 1
  %loadMem_452f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f03 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f03)
  store %struct.Memory* %call_452f03, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 452f04	 Bytes: 2
  %loadMem_452f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f04 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f04)
  store %struct.Memory* %call_452f04, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452f06	 Bytes: 3
  %loadMem_452f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f06 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f06)
  store %struct.Memory* %call_452f06, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452f09	 Bytes: 3
  %loadMem_452f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f09 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f09)
  store %struct.Memory* %call_452f09, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe4(%rbp)	 RIP: 452f0c	 Bytes: 6
  %loadMem_452f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f0c = call %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f0c)
  store %struct.Memory* %call_452f0c, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452f12	 Bytes: 2
  %loadMem_452f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f12 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f12)
  store %struct.Memory* %call_452f12, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452f14	 Bytes: 1
  %loadMem_452f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f14 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f14)
  store %struct.Memory* %call_452f14, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 452f15	 Bytes: 2
  %loadMem_452f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f15 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f15)
  store %struct.Memory* %call_452f15, %struct.Memory** %MEMORY

  ; Code: movl -0xe4(%rbp), %ecx	 RIP: 452f17	 Bytes: 6
  %loadMem_452f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f17 = call %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f17)
  store %struct.Memory* %call_452f17, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 452f1d	 Bytes: 2
  %loadMem_452f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f1d = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f1d)
  store %struct.Memory* %call_452f1d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 452f1f	 Bytes: 3
  %loadMem_452f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f1f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f1f)
  store %struct.Memory* %call_452f1f, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %r8	 RIP: 452f22	 Bytes: 7
  %loadMem_452f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f22 = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f22)
  store %struct.Memory* %call_452f22, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %r9	 RIP: 452f29	 Bytes: 7
  %loadMem_452f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f29 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f29)
  store %struct.Memory* %call_452f29, %struct.Memory** %MEMORY

  ; Code: movq %r9, (%r8,%rsi,8)	 RIP: 452f30	 Bytes: 4
  %loadMem_452f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f30 = call %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f30)
  store %struct.Memory* %call_452f30, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 452f34	 Bytes: 4
  %loadMem_452f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f34 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f34)
  store %struct.Memory* %call_452f34, %struct.Memory** %MEMORY

  ; Code: jl .L_452f5e	 RIP: 452f38	 Bytes: 6
  %loadMem_452f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f38 = call %struct.Memory* @routine_jl_.L_452f5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f38, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_452f38, %struct.Memory** %MEMORY

  %loadBr_452f38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452f38 = icmp eq i8 %loadBr_452f38, 1
  br i1 %cmpBr_452f38, label %block_.L_452f5e, label %block_452f3e

block_452f3e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 452f3e	 Bytes: 4
  %loadMem_452f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f3e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f3e)
  store %struct.Memory* %call_452f3e, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 452f42	 Bytes: 4
  %loadMem_452f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f42 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f42)
  store %struct.Memory* %call_452f42, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 452f46	 Bytes: 4
  %loadMem_452f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f46 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f46)
  store %struct.Memory* %call_452f46, %struct.Memory** %MEMORY

  ; Code: movq 0x750(%rax,%rcx,8), %rax	 RIP: 452f4a	 Bytes: 8
  %loadMem_452f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f4a = call %struct.Memory* @routine_movq_0x750__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f4a)
  store %struct.Memory* %call_452f4a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf0(%rbp)	 RIP: 452f52	 Bytes: 7
  %loadMem_452f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f52 = call %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f52)
  store %struct.Memory* %call_452f52, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452f6e	 RIP: 452f59	 Bytes: 5
  %loadMem_452f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f59 = call %struct.Memory* @routine_jmpq_.L_452f6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f59, i64 21, i64 5)
  store %struct.Memory* %call_452f59, %struct.Memory** %MEMORY

  br label %block_.L_452f6e

  ; Code: .L_452f5e:	 RIP: 452f5e	 Bytes: 0
block_.L_452f5e:

  ; Code: xorl %eax, %eax	 RIP: 452f5e	 Bytes: 2
  %loadMem_452f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f5e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f5e)
  store %struct.Memory* %call_452f5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 452f60	 Bytes: 2
  %loadMem_452f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f60 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f60)
  store %struct.Memory* %call_452f60, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xf0(%rbp)	 RIP: 452f62	 Bytes: 7
  %loadMem_452f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f62 = call %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f62)
  store %struct.Memory* %call_452f62, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452f6e	 RIP: 452f69	 Bytes: 5
  %loadMem_452f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f69 = call %struct.Memory* @routine_jmpq_.L_452f6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f69, i64 5, i64 5)
  store %struct.Memory* %call_452f69, %struct.Memory** %MEMORY

  br label %block_.L_452f6e

  ; Code: .L_452f6e:	 RIP: 452f6e	 Bytes: 0
block_.L_452f6e:

  ; Code: movq -0xf0(%rbp), %rax	 RIP: 452f6e	 Bytes: 7
  %loadMem_452f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f6e = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f6e)
  store %struct.Memory* %call_452f6e, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 452f75	 Bytes: 5
  %loadMem_452f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f75 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f75)
  store %struct.Memory* %call_452f75, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 452f7a	 Bytes: 4
  %loadMem_452f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f7a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f7a)
  store %struct.Memory* %call_452f7a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 452f7e	 Bytes: 4
  %loadMem_452f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f7e = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f7e)
  store %struct.Memory* %call_452f7e, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rdx), %rdx	 RIP: 452f82	 Bytes: 7
  %loadMem_452f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f82 = call %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f82)
  store %struct.Memory* %call_452f82, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 452f89	 Bytes: 4
  %loadMem_452f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f89 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f89)
  store %struct.Memory* %call_452f89, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 452f8d	 Bytes: 4
  %loadMem_452f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f8d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f8d)
  store %struct.Memory* %call_452f8d, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 452f91	 Bytes: 4
  %loadMem_452f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f91 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f91)
  store %struct.Memory* %call_452f91, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452f95	 Bytes: 3
  %loadMem_452f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f95 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f95)
  store %struct.Memory* %call_452f95, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf8(%rbp)	 RIP: 452f98	 Bytes: 7
  %loadMem_452f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f98 = call %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f98)
  store %struct.Memory* %call_452f98, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452f9f	 Bytes: 2
  %loadMem_452f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452f9f = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452f9f)
  store %struct.Memory* %call_452f9f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x100(%rbp)	 RIP: 452fa1	 Bytes: 7
  %loadMem_452fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fa1 = call %struct.Memory* @routine_movq__rdx__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fa1)
  store %struct.Memory* %call_452fa1, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452fa8	 Bytes: 1
  %loadMem_452fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fa8 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fa8)
  store %struct.Memory* %call_452fa8, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 452fa9	 Bytes: 2
  %loadMem_452fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fa9 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fa9)
  store %struct.Memory* %call_452fa9, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 452fab	 Bytes: 3
  %loadMem_452fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fab = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fab)
  store %struct.Memory* %call_452fab, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 452fae	 Bytes: 3
  %loadMem_452fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fae = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fae)
  store %struct.Memory* %call_452fae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x104(%rbp)	 RIP: 452fb1	 Bytes: 6
  %loadMem_452fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fb1 = call %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fb1)
  store %struct.Memory* %call_452fb1, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 452fb7	 Bytes: 2
  %loadMem_452fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fb7 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fb7)
  store %struct.Memory* %call_452fb7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 452fb9	 Bytes: 1
  %loadMem_452fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fb9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fb9)
  store %struct.Memory* %call_452fb9, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 452fba	 Bytes: 2
  %loadMem_452fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fba = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fba)
  store %struct.Memory* %call_452fba, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %edi	 RIP: 452fbc	 Bytes: 6
  %loadMem_452fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fbc = call %struct.Memory* @routine_movl_MINUS0x104__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fbc)
  store %struct.Memory* %call_452fbc, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 452fc2	 Bytes: 2
  %loadMem_452fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fc2 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fc2)
  store %struct.Memory* %call_452fc2, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rsi	 RIP: 452fc4	 Bytes: 3
  %loadMem_452fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fc4 = call %struct.Memory* @routine_movslq__edi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fc4)
  store %struct.Memory* %call_452fc4, %struct.Memory** %MEMORY

  ; Code: movq -0x100(%rbp), %r8	 RIP: 452fc7	 Bytes: 7
  %loadMem_452fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fc7 = call %struct.Memory* @routine_movq_MINUS0x100__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fc7)
  store %struct.Memory* %call_452fc7, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %r9	 RIP: 452fce	 Bytes: 7
  %loadMem_452fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fce = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fce)
  store %struct.Memory* %call_452fce, %struct.Memory** %MEMORY

  ; Code: movq %r9, (%r8,%rsi,8)	 RIP: 452fd5	 Bytes: 4
  %loadMem_452fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fd5 = call %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fd5)
  store %struct.Memory* %call_452fd5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452fd9	 Bytes: 4
  %loadMem_452fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fd9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fd9)
  store %struct.Memory* %call_452fd9, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 452fdd	 Bytes: 4
  %loadMem_452fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fdd = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fdd)
  store %struct.Memory* %call_452fdd, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 452fe1	 Bytes: 7
  %loadMem_452fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fe1 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fe1)
  store %struct.Memory* %call_452fe1, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 452fe8	 Bytes: 3
  %loadMem_452fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fe8 = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fe8)
  store %struct.Memory* %call_452fe8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 452feb	 Bytes: 4
  %loadMem_452feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452feb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452feb)
  store %struct.Memory* %call_452feb, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 452fef	 Bytes: 4
  %loadMem_452fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fef = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fef)
  store %struct.Memory* %call_452fef, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 452ff3	 Bytes: 4
  %loadMem_452ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ff3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ff3)
  store %struct.Memory* %call_452ff3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 452ff7	 Bytes: 4
  %loadMem_452ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ff7 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ff7)
  store %struct.Memory* %call_452ff7, %struct.Memory** %MEMORY

  ; Code: movw (%rsi), %r10w	 RIP: 452ffb	 Bytes: 4
  %loadMem_452ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452ffb = call %struct.Memory* @routine_movw___rsi____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452ffb)
  store %struct.Memory* %call_452ffb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 452fff	 Bytes: 4
  %loadMem_452fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_452fff = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_452fff)
  store %struct.Memory* %call_452fff, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 453003	 Bytes: 4
  %loadMem_453003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453003 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453003)
  store %struct.Memory* %call_453003, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 453007	 Bytes: 7
  %loadMem_453007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453007 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453007)
  store %struct.Memory* %call_453007, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 45300e	 Bytes: 3
  %loadMem_45300e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45300e = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45300e)
  store %struct.Memory* %call_45300e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 453011	 Bytes: 4
  %loadMem_453011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453011 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453011)
  store %struct.Memory* %call_453011, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453015	 Bytes: 4
  %loadMem_453015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453015 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453015)
  store %struct.Memory* %call_453015, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 453019	 Bytes: 3
  %loadMem_453019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453019 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453019)
  store %struct.Memory* %call_453019, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 45301c	 Bytes: 2
  %loadMem_45301c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45301c = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45301c)
  store %struct.Memory* %call_45301c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45301e	 Bytes: 1
  %loadMem_45301e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45301e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45301e)
  store %struct.Memory* %call_45301e, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45301f	 Bytes: 2
  %loadMem_45301f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45301f = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45301f)
  store %struct.Memory* %call_45301f, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453021	 Bytes: 3
  %loadMem_453021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453021 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453021)
  store %struct.Memory* %call_453021, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453024	 Bytes: 3
  %loadMem_453024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453024 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453024)
  store %struct.Memory* %call_453024, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x108(%rbp)	 RIP: 453027	 Bytes: 6
  %loadMem_453027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453027 = call %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453027)
  store %struct.Memory* %call_453027, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 45302d	 Bytes: 2
  %loadMem_45302d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45302d = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45302d)
  store %struct.Memory* %call_45302d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45302f	 Bytes: 1
  %loadMem_45302f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45302f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45302f)
  store %struct.Memory* %call_45302f, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453030	 Bytes: 2
  %loadMem_453030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453030 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453030)
  store %struct.Memory* %call_453030, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %edi	 RIP: 453032	 Bytes: 6
  %loadMem_453032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453032 = call %struct.Memory* @routine_movl_MINUS0x108__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453032)
  store %struct.Memory* %call_453032, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 453038	 Bytes: 2
  %loadMem_453038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453038 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453038)
  store %struct.Memory* %call_453038, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 45303a	 Bytes: 3
  %loadMem_45303a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45303a = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45303a)
  store %struct.Memory* %call_45303a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r9	 RIP: 45303d	 Bytes: 3
  %loadMem_45303d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45303d = call %struct.Memory* @routine_movslq__edi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45303d)
  store %struct.Memory* %call_45303d, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453040	 Bytes: 4
  %loadMem_453040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453040 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453040)
  store %struct.Memory* %call_453040, %struct.Memory** %MEMORY

  ; Code: movw %r10w, (%rsi)	 RIP: 453044	 Bytes: 4
  %loadMem_453044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453044 = call %struct.Memory* @routine_movw__r10w____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453044)
  store %struct.Memory* %call_453044, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 453048	 Bytes: 4
  %loadMem_453048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453048 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453048)
  store %struct.Memory* %call_453048, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 45304c	 Bytes: 4
  %loadMem_45304c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45304c = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45304c)
  store %struct.Memory* %call_45304c, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 453050	 Bytes: 7
  %loadMem_453050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453050 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453050)
  store %struct.Memory* %call_453050, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 453057	 Bytes: 3
  %loadMem_453057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453057 = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453057)
  store %struct.Memory* %call_453057, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 45305a	 Bytes: 4
  %loadMem_45305a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45305a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45305a)
  store %struct.Memory* %call_45305a, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 45305e	 Bytes: 4
  %loadMem_45305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45305e = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45305e)
  store %struct.Memory* %call_45305e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 453062	 Bytes: 4
  %loadMem_453062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453062 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453062)
  store %struct.Memory* %call_453062, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453066	 Bytes: 4
  %loadMem_453066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453066 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453066)
  store %struct.Memory* %call_453066, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rsi), %r10w	 RIP: 45306a	 Bytes: 5
  %loadMem_45306a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45306a = call %struct.Memory* @routine_movw_0x2__rsi____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45306a)
  store %struct.Memory* %call_45306a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45306f	 Bytes: 4
  %loadMem_45306f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45306f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45306f)
  store %struct.Memory* %call_45306f, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 453073	 Bytes: 4
  %loadMem_453073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453073 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453073)
  store %struct.Memory* %call_453073, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 453077	 Bytes: 7
  %loadMem_453077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453077 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453077)
  store %struct.Memory* %call_453077, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 45307e	 Bytes: 3
  %loadMem_45307e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45307e = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45307e)
  store %struct.Memory* %call_45307e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 453081	 Bytes: 4
  %loadMem_453081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453081 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453081)
  store %struct.Memory* %call_453081, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453085	 Bytes: 4
  %loadMem_453085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453085 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453085)
  store %struct.Memory* %call_453085, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 453089	 Bytes: 3
  %loadMem_453089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453089 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453089)
  store %struct.Memory* %call_453089, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 45308c	 Bytes: 2
  %loadMem_45308c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45308c = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45308c)
  store %struct.Memory* %call_45308c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45308e	 Bytes: 1
  %loadMem_45308e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45308e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45308e)
  store %struct.Memory* %call_45308e, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45308f	 Bytes: 2
  %loadMem_45308f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45308f = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45308f)
  store %struct.Memory* %call_45308f, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453091	 Bytes: 3
  %loadMem_453091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453091 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453091)
  store %struct.Memory* %call_453091, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453094	 Bytes: 3
  %loadMem_453094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453094 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453094)
  store %struct.Memory* %call_453094, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c(%rbp)	 RIP: 453097	 Bytes: 6
  %loadMem_453097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453097 = call %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453097)
  store %struct.Memory* %call_453097, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 45309d	 Bytes: 2
  %loadMem_45309d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45309d = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45309d)
  store %struct.Memory* %call_45309d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45309f	 Bytes: 1
  %loadMem_45309f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45309f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45309f)
  store %struct.Memory* %call_45309f, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4530a0	 Bytes: 2
  %loadMem_4530a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530a0 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530a0)
  store %struct.Memory* %call_4530a0, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %edi	 RIP: 4530a2	 Bytes: 6
  %loadMem_4530a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530a2 = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530a2)
  store %struct.Memory* %call_4530a2, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 4530a8	 Bytes: 2
  %loadMem_4530a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530a8 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530a8)
  store %struct.Memory* %call_4530a8, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 4530aa	 Bytes: 3
  %loadMem_4530aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530aa = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530aa)
  store %struct.Memory* %call_4530aa, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r9	 RIP: 4530ad	 Bytes: 3
  %loadMem_4530ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530ad = call %struct.Memory* @routine_movslq__edi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530ad)
  store %struct.Memory* %call_4530ad, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4530b0	 Bytes: 4
  %loadMem_4530b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530b0 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530b0)
  store %struct.Memory* %call_4530b0, %struct.Memory** %MEMORY

  ; Code: movw %r10w, 0x2(%rsi)	 RIP: 4530b4	 Bytes: 5
  %loadMem_4530b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530b4 = call %struct.Memory* @routine_movw__r10w__0x2__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530b4)
  store %struct.Memory* %call_4530b4, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4530b9	 Bytes: 4
  %loadMem_4530b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530b9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530b9)
  store %struct.Memory* %call_4530b9, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 4530bd	 Bytes: 4
  %loadMem_4530bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530bd = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530bd)
  store %struct.Memory* %call_4530bd, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 4530c1	 Bytes: 7
  %loadMem_4530c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530c1 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530c1)
  store %struct.Memory* %call_4530c1, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 4530c8	 Bytes: 4
  %loadMem_4530c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530c8 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530c8)
  store %struct.Memory* %call_4530c8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 4530cc	 Bytes: 4
  %loadMem_4530cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530cc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530cc)
  store %struct.Memory* %call_4530cc, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4530d0	 Bytes: 4
  %loadMem_4530d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530d0 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530d0)
  store %struct.Memory* %call_4530d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 4530d4	 Bytes: 4
  %loadMem_4530d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530d4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530d4)
  store %struct.Memory* %call_4530d4, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4530d8	 Bytes: 4
  %loadMem_4530d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530d8 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530d8)
  store %struct.Memory* %call_4530d8, %struct.Memory** %MEMORY

  ; Code: movw (%rsi), %r10w	 RIP: 4530dc	 Bytes: 4
  %loadMem_4530dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530dc = call %struct.Memory* @routine_movw___rsi____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530dc)
  store %struct.Memory* %call_4530dc, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4530e0	 Bytes: 4
  %loadMem_4530e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530e0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530e0)
  store %struct.Memory* %call_4530e0, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4530e4	 Bytes: 4
  %loadMem_4530e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530e4 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530e4)
  store %struct.Memory* %call_4530e4, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 4530e8	 Bytes: 7
  %loadMem_4530e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530e8 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530e8)
  store %struct.Memory* %call_4530e8, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 4530ef	 Bytes: 4
  %loadMem_4530ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530ef = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530ef)
  store %struct.Memory* %call_4530ef, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 4530f3	 Bytes: 4
  %loadMem_4530f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530f3 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530f3)
  store %struct.Memory* %call_4530f3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4530f7	 Bytes: 4
  %loadMem_4530f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530f7 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530f7)
  store %struct.Memory* %call_4530f7, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 4530fb	 Bytes: 3
  %loadMem_4530fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530fb = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530fb)
  store %struct.Memory* %call_4530fb, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4530fe	 Bytes: 2
  %loadMem_4530fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4530fe = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4530fe)
  store %struct.Memory* %call_4530fe, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453100	 Bytes: 1
  %loadMem_453100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453100 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453100)
  store %struct.Memory* %call_453100, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453101	 Bytes: 2
  %loadMem_453101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453101 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453101)
  store %struct.Memory* %call_453101, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453103	 Bytes: 3
  %loadMem_453103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453103 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453103)
  store %struct.Memory* %call_453103, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453106	 Bytes: 3
  %loadMem_453106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453106 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453106)
  store %struct.Memory* %call_453106, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x110(%rbp)	 RIP: 453109	 Bytes: 6
  %loadMem_453109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453109 = call %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453109)
  store %struct.Memory* %call_453109, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 45310f	 Bytes: 2
  %loadMem_45310f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45310f = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45310f)
  store %struct.Memory* %call_45310f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453111	 Bytes: 1
  %loadMem_453111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453111 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453111)
  store %struct.Memory* %call_453111, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453112	 Bytes: 2
  %loadMem_453112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453112 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453112)
  store %struct.Memory* %call_453112, %struct.Memory** %MEMORY

  ; Code: movl -0x110(%rbp), %edi	 RIP: 453114	 Bytes: 6
  %loadMem_453114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453114 = call %struct.Memory* @routine_movl_MINUS0x110__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453114)
  store %struct.Memory* %call_453114, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 45311a	 Bytes: 2
  %loadMem_45311a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45311a = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45311a)
  store %struct.Memory* %call_45311a, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 45311c	 Bytes: 3
  %loadMem_45311c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45311c = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45311c)
  store %struct.Memory* %call_45311c, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r9	 RIP: 45311f	 Bytes: 3
  %loadMem_45311f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45311f = call %struct.Memory* @routine_movslq__edi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45311f)
  store %struct.Memory* %call_45311f, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453122	 Bytes: 4
  %loadMem_453122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453122 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453122)
  store %struct.Memory* %call_453122, %struct.Memory** %MEMORY

  ; Code: movw %r10w, (%rsi)	 RIP: 453126	 Bytes: 4
  %loadMem_453126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453126 = call %struct.Memory* @routine_movw__r10w____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453126)
  store %struct.Memory* %call_453126, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45312a	 Bytes: 4
  %loadMem_45312a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45312a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45312a)
  store %struct.Memory* %call_45312a, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 45312e	 Bytes: 4
  %loadMem_45312e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45312e = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45312e)
  store %struct.Memory* %call_45312e, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 453132	 Bytes: 7
  %loadMem_453132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453132 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453132)
  store %struct.Memory* %call_453132, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 453139	 Bytes: 4
  %loadMem_453139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453139 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453139)
  store %struct.Memory* %call_453139, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 45313d	 Bytes: 4
  %loadMem_45313d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45313d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45313d)
  store %struct.Memory* %call_45313d, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453141	 Bytes: 4
  %loadMem_453141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453141 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453141)
  store %struct.Memory* %call_453141, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 453145	 Bytes: 4
  %loadMem_453145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453145 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453145)
  store %struct.Memory* %call_453145, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453149	 Bytes: 4
  %loadMem_453149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453149 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453149)
  store %struct.Memory* %call_453149, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rsi), %r10w	 RIP: 45314d	 Bytes: 5
  %loadMem_45314d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45314d = call %struct.Memory* @routine_movw_0x2__rsi____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45314d)
  store %struct.Memory* %call_45314d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 453152	 Bytes: 4
  %loadMem_453152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453152 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453152)
  store %struct.Memory* %call_453152, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 453156	 Bytes: 4
  %loadMem_453156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453156 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453156)
  store %struct.Memory* %call_453156, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 45315a	 Bytes: 7
  %loadMem_45315a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45315a = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45315a)
  store %struct.Memory* %call_45315a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 453161	 Bytes: 4
  %loadMem_453161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453161 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453161)
  store %struct.Memory* %call_453161, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 453165	 Bytes: 4
  %loadMem_453165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453165 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453165)
  store %struct.Memory* %call_453165, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453169	 Bytes: 4
  %loadMem_453169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453169 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453169)
  store %struct.Memory* %call_453169, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 45316d	 Bytes: 3
  %loadMem_45316d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45316d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45316d)
  store %struct.Memory* %call_45316d, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 453170	 Bytes: 2
  %loadMem_453170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453170 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453170)
  store %struct.Memory* %call_453170, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453172	 Bytes: 1
  %loadMem_453172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453172 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453172)
  store %struct.Memory* %call_453172, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453173	 Bytes: 2
  %loadMem_453173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453173 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453173)
  store %struct.Memory* %call_453173, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453175	 Bytes: 3
  %loadMem_453175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453175 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453175)
  store %struct.Memory* %call_453175, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453178	 Bytes: 3
  %loadMem_453178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453178 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453178)
  store %struct.Memory* %call_453178, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x114(%rbp)	 RIP: 45317b	 Bytes: 6
  %loadMem_45317b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45317b = call %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45317b)
  store %struct.Memory* %call_45317b, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 453181	 Bytes: 2
  %loadMem_453181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453181 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453181)
  store %struct.Memory* %call_453181, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453183	 Bytes: 1
  %loadMem_453183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453183 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453183)
  store %struct.Memory* %call_453183, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453184	 Bytes: 2
  %loadMem_453184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453184 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453184)
  store %struct.Memory* %call_453184, %struct.Memory** %MEMORY

  ; Code: movl -0x114(%rbp), %edi	 RIP: 453186	 Bytes: 6
  %loadMem_453186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453186 = call %struct.Memory* @routine_movl_MINUS0x114__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453186)
  store %struct.Memory* %call_453186, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 45318c	 Bytes: 2
  %loadMem_45318c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45318c = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45318c)
  store %struct.Memory* %call_45318c, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 45318e	 Bytes: 3
  %loadMem_45318e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45318e = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45318e)
  store %struct.Memory* %call_45318e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r9	 RIP: 453191	 Bytes: 3
  %loadMem_453191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453191 = call %struct.Memory* @routine_movslq__edi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453191)
  store %struct.Memory* %call_453191, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453194	 Bytes: 4
  %loadMem_453194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453194 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453194)
  store %struct.Memory* %call_453194, %struct.Memory** %MEMORY

  ; Code: movw %r10w, 0x2(%rsi)	 RIP: 453198	 Bytes: 5
  %loadMem_453198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453198 = call %struct.Memory* @routine_movw__r10w__0x2__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453198)
  store %struct.Memory* %call_453198, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45319d	 Bytes: 4
  %loadMem_45319d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45319d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45319d)
  store %struct.Memory* %call_45319d, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 4531a1	 Bytes: 4
  %loadMem_4531a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531a1 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531a1)
  store %struct.Memory* %call_4531a1, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 4531a5	 Bytes: 7
  %loadMem_4531a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531a5 = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531a5)
  store %struct.Memory* %call_4531a5, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 4531ac	 Bytes: 3
  %loadMem_4531ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531ac = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531ac)
  store %struct.Memory* %call_4531ac, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 4531af	 Bytes: 4
  %loadMem_4531af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531af = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531af)
  store %struct.Memory* %call_4531af, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4531b3	 Bytes: 4
  %loadMem_4531b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531b3 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531b3)
  store %struct.Memory* %call_4531b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 4531b7	 Bytes: 4
  %loadMem_4531b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531b7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531b7)
  store %struct.Memory* %call_4531b7, %struct.Memory** %MEMORY

  ; Code: movw (%rsi,%r9,2), %r10w	 RIP: 4531bb	 Bytes: 5
  %loadMem_4531bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531bb = call %struct.Memory* @routine_movw___rsi__r9_2____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531bb)
  store %struct.Memory* %call_4531bb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 4531c0	 Bytes: 4
  %loadMem_4531c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531c0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531c0)
  store %struct.Memory* %call_4531c0, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 4531c4	 Bytes: 4
  %loadMem_4531c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531c4 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531c4)
  store %struct.Memory* %call_4531c4, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 4531c8	 Bytes: 7
  %loadMem_4531c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531c8 = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531c8)
  store %struct.Memory* %call_4531c8, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 4531cf	 Bytes: 3
  %loadMem_4531cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531cf = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531cf)
  store %struct.Memory* %call_4531cf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 4531d2	 Bytes: 4
  %loadMem_4531d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531d2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531d2)
  store %struct.Memory* %call_4531d2, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 4531d6	 Bytes: 4
  %loadMem_4531d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531d6 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531d6)
  store %struct.Memory* %call_4531d6, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 4531da	 Bytes: 3
  %loadMem_4531da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531da = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531da)
  store %struct.Memory* %call_4531da, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4531dd	 Bytes: 2
  %loadMem_4531dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531dd = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531dd)
  store %struct.Memory* %call_4531dd, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4531df	 Bytes: 1
  %loadMem_4531df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531df = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531df)
  store %struct.Memory* %call_4531df, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4531e0	 Bytes: 2
  %loadMem_4531e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531e0 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531e0)
  store %struct.Memory* %call_4531e0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 4531e2	 Bytes: 3
  %loadMem_4531e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531e2 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531e2)
  store %struct.Memory* %call_4531e2, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 4531e5	 Bytes: 3
  %loadMem_4531e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531e5 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531e5)
  store %struct.Memory* %call_4531e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x118(%rbp)	 RIP: 4531e8	 Bytes: 6
  %loadMem_4531e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531e8 = call %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531e8)
  store %struct.Memory* %call_4531e8, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 4531ee	 Bytes: 2
  %loadMem_4531ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531ee = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531ee)
  store %struct.Memory* %call_4531ee, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4531f0	 Bytes: 1
  %loadMem_4531f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531f0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531f0)
  store %struct.Memory* %call_4531f0, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4531f1	 Bytes: 2
  %loadMem_4531f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531f1 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531f1)
  store %struct.Memory* %call_4531f1, %struct.Memory** %MEMORY

  ; Code: movl -0x118(%rbp), %edi	 RIP: 4531f3	 Bytes: 6
  %loadMem_4531f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531f3 = call %struct.Memory* @routine_movl_MINUS0x118__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531f3)
  store %struct.Memory* %call_4531f3, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 4531f9	 Bytes: 2
  %loadMem_4531f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531f9 = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531f9)
  store %struct.Memory* %call_4531f9, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edi	 RIP: 4531fb	 Bytes: 3
  %loadMem_4531fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531fb = call %struct.Memory* @routine_addl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531fb)
  store %struct.Memory* %call_4531fb, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r9	 RIP: 4531fe	 Bytes: 3
  %loadMem_4531fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4531fe = call %struct.Memory* @routine_movslq__edi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4531fe)
  store %struct.Memory* %call_4531fe, %struct.Memory** %MEMORY

  ; Code: movw %r10w, (%rsi,%r9,2)	 RIP: 453201	 Bytes: 5
  %loadMem_453201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453201 = call %struct.Memory* @routine_movw__r10w____rsi__r9_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453201)
  store %struct.Memory* %call_453201, %struct.Memory** %MEMORY

  ; Code: movswl %r10w, %edx	 RIP: 453206	 Bytes: 4
  %loadMem_453206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453206 = call %struct.Memory* @routine_movswl__r10w___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453206)
  store %struct.Memory* %call_453206, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 45320a	 Bytes: 3
  %loadMem_45320a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45320a = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45320a)
  store %struct.Memory* %call_45320a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 45320d	 Bytes: 4
  %loadMem_45320d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45320d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45320d)
  store %struct.Memory* %call_45320d, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rsi), %rsi	 RIP: 453211	 Bytes: 4
  %loadMem_453211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453211 = call %struct.Memory* @routine_movq_0x38__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453211)
  store %struct.Memory* %call_453211, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 453215	 Bytes: 7
  %loadMem_453215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453215 = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453215)
  store %struct.Memory* %call_453215, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 45321c	 Bytes: 4
  %loadMem_45321c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45321c = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45321c)
  store %struct.Memory* %call_45321c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 453220	 Bytes: 4
  %loadMem_453220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453220 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453220)
  store %struct.Memory* %call_453220, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453224	 Bytes: 4
  %loadMem_453224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453224 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453224)
  store %struct.Memory* %call_453224, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r9	 RIP: 453228	 Bytes: 4
  %loadMem_453228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453228 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453228)
  store %struct.Memory* %call_453228, %struct.Memory** %MEMORY

  ; Code: movw (%rsi,%r9,2), %r10w	 RIP: 45322c	 Bytes: 5
  %loadMem_45322c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45322c = call %struct.Memory* @routine_movw___rsi__r9_2____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45322c)
  store %struct.Memory* %call_45322c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 453231	 Bytes: 4
  %loadMem_453231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453231 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453231)
  store %struct.Memory* %call_453231, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rsi), %rsi	 RIP: 453235	 Bytes: 4
  %loadMem_453235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453235 = call %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453235)
  store %struct.Memory* %call_453235, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 453239	 Bytes: 7
  %loadMem_453239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453239 = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453239)
  store %struct.Memory* %call_453239, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 453240	 Bytes: 4
  %loadMem_453240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453240 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453240)
  store %struct.Memory* %call_453240, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 453244	 Bytes: 4
  %loadMem_453244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453244 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453244)
  store %struct.Memory* %call_453244, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r9,8), %rsi	 RIP: 453248	 Bytes: 4
  %loadMem_453248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453248 = call %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453248)
  store %struct.Memory* %call_453248, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 45324c	 Bytes: 3
  %loadMem_45324c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45324c = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45324c)
  store %struct.Memory* %call_45324c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 45324f	 Bytes: 2
  %loadMem_45324f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45324f = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45324f)
  store %struct.Memory* %call_45324f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453251	 Bytes: 1
  %loadMem_453251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453251 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453251)
  store %struct.Memory* %call_453251, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453252	 Bytes: 2
  %loadMem_453252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453252 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453252)
  store %struct.Memory* %call_453252, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453254	 Bytes: 3
  %loadMem_453254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453254 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453254)
  store %struct.Memory* %call_453254, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453257	 Bytes: 3
  %loadMem_453257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453257 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453257)
  store %struct.Memory* %call_453257, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 45325a	 Bytes: 6
  %loadMem_45325a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45325a = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45325a)
  store %struct.Memory* %call_45325a, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 453260	 Bytes: 2
  %loadMem_453260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453260 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453260)
  store %struct.Memory* %call_453260, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453262	 Bytes: 1
  %loadMem_453262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453262 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453262)
  store %struct.Memory* %call_453262, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453263	 Bytes: 2
  %loadMem_453263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453263 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453263)
  store %struct.Memory* %call_453263, %struct.Memory** %MEMORY

  ; Code: movl -0x11c(%rbp), %ecx	 RIP: 453265	 Bytes: 6
  %loadMem_453265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453265 = call %struct.Memory* @routine_movl_MINUS0x11c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453265)
  store %struct.Memory* %call_453265, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 45326b	 Bytes: 2
  %loadMem_45326b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45326b = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45326b)
  store %struct.Memory* %call_45326b, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 45326d	 Bytes: 3
  %loadMem_45326d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45326d = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45326d)
  store %struct.Memory* %call_45326d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r9	 RIP: 453270	 Bytes: 3
  %loadMem_453270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453270 = call %struct.Memory* @routine_movslq__ecx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453270)
  store %struct.Memory* %call_453270, %struct.Memory** %MEMORY

  ; Code: movw %r10w, (%rsi,%r9,2)	 RIP: 453273	 Bytes: 5
  %loadMem_453273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453273 = call %struct.Memory* @routine_movw__r10w____rsi__r9_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453273)
  store %struct.Memory* %call_453273, %struct.Memory** %MEMORY

  ; Code: movswl %r10w, %ecx	 RIP: 453278	 Bytes: 4
  %loadMem_453278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453278 = call %struct.Memory* @routine_movswl__r10w___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453278)
  store %struct.Memory* %call_453278, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 45327c	 Bytes: 3
  %loadMem_45327c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45327c = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45327c)
  store %struct.Memory* %call_45327c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 45327f	 Bytes: 4
  %loadMem_45327f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45327f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45327f)
  store %struct.Memory* %call_45327f, %struct.Memory** %MEMORY

  ; Code: jl .L_4532a6	 RIP: 453283	 Bytes: 6
  %loadMem_453283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453283 = call %struct.Memory* @routine_jl_.L_4532a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453283, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_453283, %struct.Memory** %MEMORY

  %loadBr_453283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453283 = icmp eq i8 %loadBr_453283, 1
  br i1 %cmpBr_453283, label %block_.L_4532a6, label %block_453289

block_453289:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 453289	 Bytes: 4
  %loadMem_453289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453289 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453289)
  store %struct.Memory* %call_453289, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 45328d	 Bytes: 4
  %loadMem_45328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45328d = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45328d)
  store %struct.Memory* %call_45328d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 453291	 Bytes: 4
  %loadMem_453291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453291 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453291)
  store %struct.Memory* %call_453291, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax,%rcx,8), %rax	 RIP: 453295	 Bytes: 5
  %loadMem_453295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453295 = call %struct.Memory* @routine_movq_0x18__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453295)
  store %struct.Memory* %call_453295, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x128(%rbp)	 RIP: 45329a	 Bytes: 7
  %loadMem_45329a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45329a = call %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45329a)
  store %struct.Memory* %call_45329a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4532b6	 RIP: 4532a1	 Bytes: 5
  %loadMem_4532a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532a1 = call %struct.Memory* @routine_jmpq_.L_4532b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532a1, i64 21, i64 5)
  store %struct.Memory* %call_4532a1, %struct.Memory** %MEMORY

  br label %block_.L_4532b6

  ; Code: .L_4532a6:	 RIP: 4532a6	 Bytes: 0
block_.L_4532a6:

  ; Code: xorl %eax, %eax	 RIP: 4532a6	 Bytes: 2
  %loadMem_4532a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532a6 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532a6)
  store %struct.Memory* %call_4532a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4532a8	 Bytes: 2
  %loadMem_4532a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532a8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532a8)
  store %struct.Memory* %call_4532a8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x128(%rbp)	 RIP: 4532aa	 Bytes: 7
  %loadMem_4532aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532aa = call %struct.Memory* @routine_movq__rcx__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532aa)
  store %struct.Memory* %call_4532aa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4532b6	 RIP: 4532b1	 Bytes: 5
  %loadMem_4532b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532b1 = call %struct.Memory* @routine_jmpq_.L_4532b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532b1, i64 5, i64 5)
  store %struct.Memory* %call_4532b1, %struct.Memory** %MEMORY

  br label %block_.L_4532b6

  ; Code: .L_4532b6:	 RIP: 4532b6	 Bytes: 0
block_.L_4532b6:

  ; Code: movq -0x128(%rbp), %rax	 RIP: 4532b6	 Bytes: 7
  %loadMem_4532b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532b6 = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532b6)
  store %struct.Memory* %call_4532b6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4532bd	 Bytes: 4
  %loadMem_4532bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532bd = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532bd)
  store %struct.Memory* %call_4532bd, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 4532c1	 Bytes: 4
  %loadMem_4532c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532c1 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532c1)
  store %struct.Memory* %call_4532c1, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rcx), %rcx	 RIP: 4532c5	 Bytes: 7
  %loadMem_4532c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532c5 = call %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532c5)
  store %struct.Memory* %call_4532c5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4532cc	 Bytes: 3
  %loadMem_4532cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532cc = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532cc)
  store %struct.Memory* %call_4532cc, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4532cf	 Bytes: 4
  %loadMem_4532cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532cf = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532cf)
  store %struct.Memory* %call_4532cf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4532d3	 Bytes: 4
  %loadMem_4532d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532d3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532d3)
  store %struct.Memory* %call_4532d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4532d7	 Bytes: 4
  %loadMem_4532d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532d7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532d7)
  store %struct.Memory* %call_4532d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 4532db	 Bytes: 4
  %loadMem_4532db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532db = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532db)
  store %struct.Memory* %call_4532db, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 4532df	 Bytes: 4
  %loadMem_4532df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532df = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532df)
  store %struct.Memory* %call_4532df, %struct.Memory** %MEMORY

  ; Code: jl .L_453309	 RIP: 4532e3	 Bytes: 6
  %loadMem_4532e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532e3 = call %struct.Memory* @routine_jl_.L_453309(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532e3, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4532e3, %struct.Memory** %MEMORY

  %loadBr_4532e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4532e3 = icmp eq i8 %loadBr_4532e3, 1
  br i1 %cmpBr_4532e3, label %block_.L_453309, label %block_4532e9

block_4532e9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4532e9	 Bytes: 4
  %loadMem_4532e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532e9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532e9)
  store %struct.Memory* %call_4532e9, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 4532ed	 Bytes: 4
  %loadMem_4532ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532ed = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532ed)
  store %struct.Memory* %call_4532ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4532f1	 Bytes: 4
  %loadMem_4532f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532f1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532f1)
  store %struct.Memory* %call_4532f1, %struct.Memory** %MEMORY

  ; Code: movq 0x120(%rax,%rcx,8), %rax	 RIP: 4532f5	 Bytes: 8
  %loadMem_4532f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532f5 = call %struct.Memory* @routine_movq_0x120__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532f5)
  store %struct.Memory* %call_4532f5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x130(%rbp)	 RIP: 4532fd	 Bytes: 7
  %loadMem_4532fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4532fd = call %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4532fd)
  store %struct.Memory* %call_4532fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_453319	 RIP: 453304	 Bytes: 5
  %loadMem_453304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453304 = call %struct.Memory* @routine_jmpq_.L_453319(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453304, i64 21, i64 5)
  store %struct.Memory* %call_453304, %struct.Memory** %MEMORY

  br label %block_.L_453319

  ; Code: .L_453309:	 RIP: 453309	 Bytes: 0
block_.L_453309:

  ; Code: xorl %eax, %eax	 RIP: 453309	 Bytes: 2
  %loadMem_453309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453309 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453309)
  store %struct.Memory* %call_453309, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45330b	 Bytes: 2
  %loadMem_45330b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45330b = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45330b)
  store %struct.Memory* %call_45330b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x130(%rbp)	 RIP: 45330d	 Bytes: 7
  %loadMem_45330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45330d = call %struct.Memory* @routine_movq__rcx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45330d)
  store %struct.Memory* %call_45330d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_453319	 RIP: 453314	 Bytes: 5
  %loadMem_453314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453314 = call %struct.Memory* @routine_jmpq_.L_453319(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453314, i64 5, i64 5)
  store %struct.Memory* %call_453314, %struct.Memory** %MEMORY

  br label %block_.L_453319

  ; Code: .L_453319:	 RIP: 453319	 Bytes: 0
block_.L_453319:

  ; Code: movq -0x130(%rbp), %rax	 RIP: 453319	 Bytes: 7
  %loadMem_453319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453319 = call %struct.Memory* @routine_movq_MINUS0x130__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453319)
  store %struct.Memory* %call_453319, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 453320	 Bytes: 4
  %loadMem_453320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453320 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453320)
  store %struct.Memory* %call_453320, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 453324	 Bytes: 4
  %loadMem_453324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453324 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453324)
  store %struct.Memory* %call_453324, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rcx), %rcx	 RIP: 453328	 Bytes: 7
  %loadMem_453328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453328 = call %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453328)
  store %struct.Memory* %call_453328, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 45332f	 Bytes: 4
  %loadMem_45332f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45332f = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45332f)
  store %struct.Memory* %call_45332f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 453333	 Bytes: 4
  %loadMem_453333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453333 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453333)
  store %struct.Memory* %call_453333, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 453337	 Bytes: 4
  %loadMem_453337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453337 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453337)
  store %struct.Memory* %call_453337, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45333b	 Bytes: 4
  %loadMem_45333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45333b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45333b)
  store %struct.Memory* %call_45333b, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 45333f	 Bytes: 4
  %loadMem_45333f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45333f = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45333f)
  store %struct.Memory* %call_45333f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 453343	 Bytes: 4
  %loadMem_453343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453343 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453343)
  store %struct.Memory* %call_453343, %struct.Memory** %MEMORY

  ; Code: jl .L_45336d	 RIP: 453347	 Bytes: 6
  %loadMem_453347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453347 = call %struct.Memory* @routine_jl_.L_45336d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453347, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_453347, %struct.Memory** %MEMORY

  %loadBr_453347 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453347 = icmp eq i8 %loadBr_453347, 1
  br i1 %cmpBr_453347, label %block_.L_45336d, label %block_45334d

block_45334d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 45334d	 Bytes: 4
  %loadMem_45334d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45334d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45334d)
  store %struct.Memory* %call_45334d, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 453351	 Bytes: 4
  %loadMem_453351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453351 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453351)
  store %struct.Memory* %call_453351, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 453355	 Bytes: 4
  %loadMem_453355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453355 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453355)
  store %struct.Memory* %call_453355, %struct.Memory** %MEMORY

  ; Code: movq 0x648(%rax,%rcx,8), %rax	 RIP: 453359	 Bytes: 8
  %loadMem_453359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453359 = call %struct.Memory* @routine_movq_0x648__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453359)
  store %struct.Memory* %call_453359, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x138(%rbp)	 RIP: 453361	 Bytes: 7
  %loadMem_453361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453361 = call %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453361)
  store %struct.Memory* %call_453361, %struct.Memory** %MEMORY

  ; Code: jmpq .L_453380	 RIP: 453368	 Bytes: 5
  %loadMem_453368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453368 = call %struct.Memory* @routine_jmpq_.L_453380(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453368, i64 24, i64 5)
  store %struct.Memory* %call_453368, %struct.Memory** %MEMORY

  br label %block_.L_453380

  ; Code: .L_45336d:	 RIP: 45336d	 Bytes: 0
block_.L_45336d:

  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 45336d	 Bytes: 7
  %loadMem_45336d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45336d = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45336d)
  store %struct.Memory* %call_45336d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x138(%rbp)	 RIP: 453374	 Bytes: 7
  %loadMem_453374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453374 = call %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453374)
  store %struct.Memory* %call_453374, %struct.Memory** %MEMORY

  ; Code: jmpq .L_453380	 RIP: 45337b	 Bytes: 5
  %loadMem_45337b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45337b = call %struct.Memory* @routine_jmpq_.L_453380(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45337b, i64 5, i64 5)
  store %struct.Memory* %call_45337b, %struct.Memory** %MEMORY

  br label %block_.L_453380

  ; Code: .L_453380:	 RIP: 453380	 Bytes: 0
block_.L_453380:

  ; Code: movq -0x138(%rbp), %rax	 RIP: 453380	 Bytes: 7
  %loadMem_453380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453380 = call %struct.Memory* @routine_movq_MINUS0x138__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453380)
  store %struct.Memory* %call_453380, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 453387	 Bytes: 5
  %loadMem_453387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453387 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453387)
  store %struct.Memory* %call_453387, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45338c	 Bytes: 4
  %loadMem_45338c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45338c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45338c)
  store %struct.Memory* %call_45338c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 453390	 Bytes: 4
  %loadMem_453390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453390 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453390)
  store %struct.Memory* %call_453390, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rdx), %rdx	 RIP: 453394	 Bytes: 7
  %loadMem_453394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453394 = call %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453394)
  store %struct.Memory* %call_453394, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 45339b	 Bytes: 3
  %loadMem_45339b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45339b = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45339b)
  store %struct.Memory* %call_45339b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 45339e	 Bytes: 4
  %loadMem_45339e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45339e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45339e)
  store %struct.Memory* %call_45339e, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4533a2	 Bytes: 4
  %loadMem_4533a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533a2 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533a2)
  store %struct.Memory* %call_4533a2, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 4533a6	 Bytes: 3
  %loadMem_4533a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533a6 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533a6)
  store %struct.Memory* %call_4533a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x140(%rbp)	 RIP: 4533a9	 Bytes: 7
  %loadMem_4533a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533a9 = call %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533a9)
  store %struct.Memory* %call_4533a9, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 4533b0	 Bytes: 2
  %loadMem_4533b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533b0 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533b0)
  store %struct.Memory* %call_4533b0, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x148(%rbp)	 RIP: 4533b2	 Bytes: 7
  %loadMem_4533b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533b2 = call %struct.Memory* @routine_movq__rdx__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533b2)
  store %struct.Memory* %call_4533b2, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4533b9	 Bytes: 1
  %loadMem_4533b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533b9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533b9)
  store %struct.Memory* %call_4533b9, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4533ba	 Bytes: 2
  %loadMem_4533ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533ba = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533ba)
  store %struct.Memory* %call_4533ba, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 4533bc	 Bytes: 3
  %loadMem_4533bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533bc = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533bc)
  store %struct.Memory* %call_4533bc, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 4533bf	 Bytes: 3
  %loadMem_4533bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533bf = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533bf)
  store %struct.Memory* %call_4533bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14c(%rbp)	 RIP: 4533c2	 Bytes: 6
  %loadMem_4533c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533c2 = call %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533c2)
  store %struct.Memory* %call_4533c2, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 4533c8	 Bytes: 2
  %loadMem_4533c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533c8 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533c8)
  store %struct.Memory* %call_4533c8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4533ca	 Bytes: 1
  %loadMem_4533ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533ca = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533ca)
  store %struct.Memory* %call_4533ca, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4533cb	 Bytes: 2
  %loadMem_4533cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533cb = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533cb)
  store %struct.Memory* %call_4533cb, %struct.Memory** %MEMORY

  ; Code: movl -0x14c(%rbp), %ecx	 RIP: 4533cd	 Bytes: 6
  %loadMem_4533cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533cd = call %struct.Memory* @routine_movl_MINUS0x14c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533cd)
  store %struct.Memory* %call_4533cd, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 4533d3	 Bytes: 2
  %loadMem_4533d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533d3 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533d3)
  store %struct.Memory* %call_4533d3, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 4533d5	 Bytes: 3
  %loadMem_4533d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533d5 = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533d5)
  store %struct.Memory* %call_4533d5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4533d8	 Bytes: 3
  %loadMem_4533d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533d8 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533d8)
  store %struct.Memory* %call_4533d8, %struct.Memory** %MEMORY

  ; Code: movq -0x148(%rbp), %r8	 RIP: 4533db	 Bytes: 7
  %loadMem_4533db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533db = call %struct.Memory* @routine_movq_MINUS0x148__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533db)
  store %struct.Memory* %call_4533db, %struct.Memory** %MEMORY

  ; Code: movq -0x140(%rbp), %r9	 RIP: 4533e2	 Bytes: 7
  %loadMem_4533e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533e2 = call %struct.Memory* @routine_movq_MINUS0x140__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533e2)
  store %struct.Memory* %call_4533e2, %struct.Memory** %MEMORY

  ; Code: movq %r9, (%r8,%rsi,8)	 RIP: 4533e9	 Bytes: 4
  %loadMem_4533e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533e9 = call %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533e9)
  store %struct.Memory* %call_4533e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 4533ed	 Bytes: 4
  %loadMem_4533ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533ed = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533ed)
  store %struct.Memory* %call_4533ed, %struct.Memory** %MEMORY

  ; Code: jl .L_453417	 RIP: 4533f1	 Bytes: 6
  %loadMem_4533f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533f1 = call %struct.Memory* @routine_jl_.L_453417(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533f1, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4533f1, %struct.Memory** %MEMORY

  %loadBr_4533f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4533f1 = icmp eq i8 %loadBr_4533f1, 1
  br i1 %cmpBr_4533f1, label %block_.L_453417, label %block_4533f7

block_4533f7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4533f7	 Bytes: 4
  %loadMem_4533f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533f7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533f7)
  store %struct.Memory* %call_4533f7, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 4533fb	 Bytes: 4
  %loadMem_4533fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533fb = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533fb)
  store %struct.Memory* %call_4533fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4533ff	 Bytes: 4
  %loadMem_4533ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4533ff = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4533ff)
  store %struct.Memory* %call_4533ff, %struct.Memory** %MEMORY

  ; Code: movq 0x750(%rax,%rcx,8), %rax	 RIP: 453403	 Bytes: 8
  %loadMem_453403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453403 = call %struct.Memory* @routine_movq_0x750__rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453403)
  store %struct.Memory* %call_453403, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x158(%rbp)	 RIP: 45340b	 Bytes: 7
  %loadMem_45340b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45340b = call %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45340b)
  store %struct.Memory* %call_45340b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45342a	 RIP: 453412	 Bytes: 5
  %loadMem_453412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453412 = call %struct.Memory* @routine_jmpq_.L_45342a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453412, i64 24, i64 5)
  store %struct.Memory* %call_453412, %struct.Memory** %MEMORY

  br label %block_.L_45342a

  ; Code: .L_453417:	 RIP: 453417	 Bytes: 0
block_.L_453417:

  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 453417	 Bytes: 7
  %loadMem_453417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453417 = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453417)
  store %struct.Memory* %call_453417, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x158(%rbp)	 RIP: 45341e	 Bytes: 7
  %loadMem_45341e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45341e = call %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45341e)
  store %struct.Memory* %call_45341e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45342a	 RIP: 453425	 Bytes: 5
  %loadMem_453425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453425 = call %struct.Memory* @routine_jmpq_.L_45342a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453425, i64 5, i64 5)
  store %struct.Memory* %call_453425, %struct.Memory** %MEMORY

  br label %block_.L_45342a

  ; Code: .L_45342a:	 RIP: 45342a	 Bytes: 0
block_.L_45342a:

  ; Code: movq -0x158(%rbp), %rax	 RIP: 45342a	 Bytes: 7
  %loadMem_45342a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45342a = call %struct.Memory* @routine_movq_MINUS0x158__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45342a)
  store %struct.Memory* %call_45342a, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 453431	 Bytes: 5
  %loadMem_453431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453431 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453431)
  store %struct.Memory* %call_453431, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 453436	 Bytes: 4
  %loadMem_453436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453436 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453436)
  store %struct.Memory* %call_453436, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 45343a	 Bytes: 4
  %loadMem_45343a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45343a = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45343a)
  store %struct.Memory* %call_45343a, %struct.Memory** %MEMORY

  ; Code: movq 0x1960(%rdx), %rdx	 RIP: 45343e	 Bytes: 7
  %loadMem_45343e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45343e = call %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45343e)
  store %struct.Memory* %call_45343e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 453445	 Bytes: 4
  %loadMem_453445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453445 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453445)
  store %struct.Memory* %call_453445, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 453449	 Bytes: 4
  %loadMem_453449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453449 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453449)
  store %struct.Memory* %call_453449, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 45344d	 Bytes: 4
  %loadMem_45344d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45344d = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45344d)
  store %struct.Memory* %call_45344d, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 453451	 Bytes: 3
  %loadMem_453451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453451 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453451)
  store %struct.Memory* %call_453451, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x160(%rbp)	 RIP: 453454	 Bytes: 7
  %loadMem_453454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453454 = call %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453454)
  store %struct.Memory* %call_453454, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 45345b	 Bytes: 2
  %loadMem_45345b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45345b = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45345b)
  store %struct.Memory* %call_45345b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x168(%rbp)	 RIP: 45345d	 Bytes: 7
  %loadMem_45345d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45345d = call %struct.Memory* @routine_movq__rdx__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45345d)
  store %struct.Memory* %call_45345d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453464	 Bytes: 1
  %loadMem_453464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453464 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453464)
  store %struct.Memory* %call_453464, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453465	 Bytes: 2
  %loadMem_453465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453465 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453465)
  store %struct.Memory* %call_453465, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 453467	 Bytes: 3
  %loadMem_453467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453467 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453467)
  store %struct.Memory* %call_453467, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 45346a	 Bytes: 3
  %loadMem_45346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45346a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45346a)
  store %struct.Memory* %call_45346a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x16c(%rbp)	 RIP: 45346d	 Bytes: 6
  %loadMem_45346d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45346d = call %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45346d)
  store %struct.Memory* %call_45346d, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 453473	 Bytes: 2
  %loadMem_453473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453473 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453473)
  store %struct.Memory* %call_453473, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453475	 Bytes: 1
  %loadMem_453475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453475 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453475)
  store %struct.Memory* %call_453475, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 453476	 Bytes: 2
  %loadMem_453476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453476 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453476)
  store %struct.Memory* %call_453476, %struct.Memory** %MEMORY

  ; Code: movl -0x16c(%rbp), %ecx	 RIP: 453478	 Bytes: 6
  %loadMem_453478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453478 = call %struct.Memory* @routine_movl_MINUS0x16c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453478)
  store %struct.Memory* %call_453478, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 45347e	 Bytes: 2
  %loadMem_45347e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45347e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45347e)
  store %struct.Memory* %call_45347e, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 453480	 Bytes: 3
  %loadMem_453480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453480 = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453480)
  store %struct.Memory* %call_453480, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 453483	 Bytes: 3
  %loadMem_453483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453483 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453483)
  store %struct.Memory* %call_453483, %struct.Memory** %MEMORY

  ; Code: movq -0x168(%rbp), %r8	 RIP: 453486	 Bytes: 7
  %loadMem_453486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453486 = call %struct.Memory* @routine_movq_MINUS0x168__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453486)
  store %struct.Memory* %call_453486, %struct.Memory** %MEMORY

  ; Code: movq -0x160(%rbp), %r9	 RIP: 45348d	 Bytes: 7
  %loadMem_45348d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45348d = call %struct.Memory* @routine_movq_MINUS0x160__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45348d)
  store %struct.Memory* %call_45348d, %struct.Memory** %MEMORY

  ; Code: movq %r9, (%r8,%rsi,8)	 RIP: 453494	 Bytes: 4
  %loadMem_453494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453494 = call %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453494)
  store %struct.Memory* %call_453494, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 453498	 Bytes: 3
  %loadMem_453498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453498 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453498)
  store %struct.Memory* %call_453498, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45349b	 Bytes: 3
  %loadMem_45349b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45349b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45349b)
  store %struct.Memory* %call_45349b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45349e	 Bytes: 3
  %loadMem_45349e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45349e = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45349e)
  store %struct.Memory* %call_45349e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452a75	 RIP: 4534a1	 Bytes: 5
  %loadMem_4534a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534a1 = call %struct.Memory* @routine_jmpq_.L_452a75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534a1, i64 -2604, i64 5)
  store %struct.Memory* %call_4534a1, %struct.Memory** %MEMORY

  br label %block_.L_452a75

  ; Code: .L_4534a6:	 RIP: 4534a6	 Bytes: 0
block_.L_4534a6:

  ; Code: jmpq .L_4534ab	 RIP: 4534a6	 Bytes: 5
  %loadMem_4534a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534a6 = call %struct.Memory* @routine_jmpq_.L_4534ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534a6, i64 5, i64 5)
  store %struct.Memory* %call_4534a6, %struct.Memory** %MEMORY

  br label %block_.L_4534ab

  ; Code: .L_4534ab:	 RIP: 4534ab	 Bytes: 0
block_.L_4534ab:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4534ab	 Bytes: 3
  %loadMem_4534ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534ab = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534ab)
  store %struct.Memory* %call_4534ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4534ae	 Bytes: 3
  %loadMem_4534ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534ae = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534ae)
  store %struct.Memory* %call_4534ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4534b1	 Bytes: 3
  %loadMem_4534b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534b1 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534b1)
  store %struct.Memory* %call_4534b1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_452a3f	 RIP: 4534b4	 Bytes: 5
  %loadMem_4534b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534b4 = call %struct.Memory* @routine_jmpq_.L_452a3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534b4, i64 -2677, i64 5)
  store %struct.Memory* %call_4534b4, %struct.Memory** %MEMORY

  br label %block_.L_452a3f

  ; Code: .L_4534b9:	 RIP: 4534b9	 Bytes: 0
block_.L_4534b9:

  ; Code: movq 0x722cb0, %rax	 RIP: 4534b9	 Bytes: 8
  %loadMem_4534b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534b9 = call %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534b9)
  store %struct.Memory* %call_4534b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x47c(%rax)	 RIP: 4534c1	 Bytes: 7
  %loadMem_4534c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534c1 = call %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534c1)
  store %struct.Memory* %call_4534c1, %struct.Memory** %MEMORY

  ; Code: je .L_4534e3	 RIP: 4534c8	 Bytes: 6
  %loadMem_4534c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534c8 = call %struct.Memory* @routine_je_.L_4534e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534c8, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4534c8, %struct.Memory** %MEMORY

  %loadBr_4534c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4534c8 = icmp eq i8 %loadBr_4534c8, 1
  br i1 %cmpBr_4534c8, label %block_.L_4534e3, label %block_4534ce

block_4534ce:
  ; Code: movq 0x722cb0, %rax	 RIP: 4534ce	 Bytes: 8
  %loadMem_4534ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534ce = call %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534ce)
  store %struct.Memory* %call_4534ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x484(%rax)	 RIP: 4534d6	 Bytes: 7
  %loadMem_4534d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534d6 = call %struct.Memory* @routine_cmpl__0x0__0x484__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534d6)
  store %struct.Memory* %call_4534d6, %struct.Memory** %MEMORY

  ; Code: je .L_4535b3	 RIP: 4534dd	 Bytes: 6
  %loadMem_4534dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534dd = call %struct.Memory* @routine_je_.L_4535b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534dd, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_4534dd, %struct.Memory** %MEMORY

  %loadBr_4534dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4534dd = icmp eq i8 %loadBr_4534dd, 1
  br i1 %cmpBr_4534dd, label %block_.L_4535b3, label %block_.L_4534e3

  ; Code: .L_4534e3:	 RIP: 4534e3	 Bytes: 0
block_.L_4534e3:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4534e3	 Bytes: 7
  %loadMem_4534e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534e3 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534e3)
  store %struct.Memory* %call_4534e3, %struct.Memory** %MEMORY

  ; Code: .L_4534ea:	 RIP: 4534ea	 Bytes: 0
  br label %block_.L_4534ea
block_.L_4534ea:

  ; Code: movl $0x4, %eax	 RIP: 4534ea	 Bytes: 5
  %loadMem_4534ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534ea = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534ea)
  store %struct.Memory* %call_4534ea, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4534ef	 Bytes: 3
  %loadMem_4534ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534ef = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534ef)
  store %struct.Memory* %call_4534ef, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4534f2	 Bytes: 4
  %loadMem_4534f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534f2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534f2)
  store %struct.Memory* %call_4534f2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 4534f6	 Bytes: 4
  %loadMem_4534f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534f6 = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534f6)
  store %struct.Memory* %call_4534f6, %struct.Memory** %MEMORY

  ; Code: movl 0x18f8(%rdx), %esi	 RIP: 4534fa	 Bytes: 6
  %loadMem_4534fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4534fa = call %struct.Memory* @routine_movl_0x18f8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4534fa)
  store %struct.Memory* %call_4534fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x170(%rbp)	 RIP: 453500	 Bytes: 6
  %loadMem_453500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453500 = call %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453500)
  store %struct.Memory* %call_453500, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 453506	 Bytes: 2
  %loadMem_453506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453506 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453506)
  store %struct.Memory* %call_453506, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 453508	 Bytes: 1
  %loadMem_453508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453508 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453508)
  store %struct.Memory* %call_453508, %struct.Memory** %MEMORY

  ; Code: movl -0x170(%rbp), %esi	 RIP: 453509	 Bytes: 6
  %loadMem_453509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453509 = call %struct.Memory* @routine_movl_MINUS0x170__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453509)
  store %struct.Memory* %call_453509, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 45350f	 Bytes: 2
  %loadMem_45350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45350f = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45350f)
  store %struct.Memory* %call_45350f, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 453511	 Bytes: 2
  %loadMem_453511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453511 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453511)
  store %struct.Memory* %call_453511, %struct.Memory** %MEMORY

  ; Code: jge .L_4535ae	 RIP: 453513	 Bytes: 6
  %loadMem_453513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453513 = call %struct.Memory* @routine_jge_.L_4535ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453513, i8* %BRANCH_TAKEN, i64 155, i64 6, i64 6)
  store %struct.Memory* %call_453513, %struct.Memory** %MEMORY

  %loadBr_453513 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453513 = icmp eq i8 %loadBr_453513, 1
  br i1 %cmpBr_453513, label %block_.L_4535ae, label %block_453519

block_453519:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 453519	 Bytes: 7
  %loadMem_453519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453519 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453519)
  store %struct.Memory* %call_453519, %struct.Memory** %MEMORY

  ; Code: .L_453520:	 RIP: 453520	 Bytes: 0
  br label %block_.L_453520
block_.L_453520:

  ; Code: movl $0x4, %eax	 RIP: 453520	 Bytes: 5
  %loadMem_453520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453520 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453520)
  store %struct.Memory* %call_453520, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 453525	 Bytes: 3
  %loadMem_453525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453525 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453525)
  store %struct.Memory* %call_453525, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 453528	 Bytes: 4
  %loadMem_453528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453528 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453528)
  store %struct.Memory* %call_453528, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rdx), %rdx	 RIP: 45352c	 Bytes: 4
  %loadMem_45352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45352c = call %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45352c)
  store %struct.Memory* %call_45352c, %struct.Memory** %MEMORY

  ; Code: movl 0x18fc(%rdx), %esi	 RIP: 453530	 Bytes: 6
  %loadMem_453530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453530 = call %struct.Memory* @routine_movl_0x18fc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453530)
  store %struct.Memory* %call_453530, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x174(%rbp)	 RIP: 453536	 Bytes: 6
  %loadMem_453536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453536 = call %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453536)
  store %struct.Memory* %call_453536, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 45353c	 Bytes: 2
  %loadMem_45353c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45353c = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45353c)
  store %struct.Memory* %call_45353c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45353e	 Bytes: 1
  %loadMem_45353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45353e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45353e)
  store %struct.Memory* %call_45353e, %struct.Memory** %MEMORY

  ; Code: movl -0x174(%rbp), %esi	 RIP: 45353f	 Bytes: 6
  %loadMem_45353f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45353f = call %struct.Memory* @routine_movl_MINUS0x174__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45353f)
  store %struct.Memory* %call_45353f, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 453545	 Bytes: 2
  %loadMem_453545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453545 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453545)
  store %struct.Memory* %call_453545, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 453547	 Bytes: 2
  %loadMem_453547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453547 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453547)
  store %struct.Memory* %call_453547, %struct.Memory** %MEMORY

  ; Code: jge .L_45359b	 RIP: 453549	 Bytes: 6
  %loadMem_453549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453549 = call %struct.Memory* @routine_jge_.L_45359b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453549, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_453549, %struct.Memory** %MEMORY

  %loadBr_453549 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453549 = icmp eq i8 %loadBr_453549, 1
  br i1 %cmpBr_453549, label %block_.L_45359b, label %block_45354f

block_45354f:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 45354f	 Bytes: 4
  %loadMem_45354f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45354f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45354f)
  store %struct.Memory* %call_45354f, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 453553	 Bytes: 4
  %loadMem_453553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453553 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453553)
  store %struct.Memory* %call_453553, %struct.Memory** %MEMORY

  ; Code: movq 0x1978(%rax), %rax	 RIP: 453557	 Bytes: 7
  %loadMem_453557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453557 = call %struct.Memory* @routine_movq_0x1978__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453557)
  store %struct.Memory* %call_453557, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 45355e	 Bytes: 4
  %loadMem_45355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45355e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45355e)
  store %struct.Memory* %call_45355e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 453562	 Bytes: 4
  %loadMem_453562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453562 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453562)
  store %struct.Memory* %call_453562, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 453566	 Bytes: 4
  %loadMem_453566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453566 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453566)
  store %struct.Memory* %call_453566, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 45356a	 Bytes: 4
  %loadMem_45356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45356a = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45356a)
  store %struct.Memory* %call_45356a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 45356e	 Bytes: 4
  %loadMem_45356e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45356e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45356e)
  store %struct.Memory* %call_45356e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 453572	 Bytes: 4
  %loadMem_453572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453572 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453572)
  store %struct.Memory* %call_453572, %struct.Memory** %MEMORY

  ; Code: movq 0x1978(%rax), %rax	 RIP: 453576	 Bytes: 7
  %loadMem_453576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453576 = call %struct.Memory* @routine_movq_0x1978__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453576)
  store %struct.Memory* %call_453576, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 45357d	 Bytes: 4
  %loadMem_45357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45357d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45357d)
  store %struct.Memory* %call_45357d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 453581	 Bytes: 4
  %loadMem_453581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453581 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453581)
  store %struct.Memory* %call_453581, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 453585	 Bytes: 4
  %loadMem_453585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453585 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453585)
  store %struct.Memory* %call_453585, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 453589	 Bytes: 4
  %loadMem_453589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453589 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453589)
  store %struct.Memory* %call_453589, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45358d	 Bytes: 3
  %loadMem_45358d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45358d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45358d)
  store %struct.Memory* %call_45358d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 453590	 Bytes: 3
  %loadMem_453590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453590 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453590)
  store %struct.Memory* %call_453590, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 453593	 Bytes: 3
  %loadMem_453593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453593 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453593)
  store %struct.Memory* %call_453593, %struct.Memory** %MEMORY

  ; Code: jmpq .L_453520	 RIP: 453596	 Bytes: 5
  %loadMem_453596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_453596 = call %struct.Memory* @routine_jmpq_.L_453520(%struct.State* %0, i64  0, %struct.Memory* %loadMem_453596, i64 -118, i64 5)
  store %struct.Memory* %call_453596, %struct.Memory** %MEMORY

  br label %block_.L_453520

  ; Code: .L_45359b:	 RIP: 45359b	 Bytes: 0
block_.L_45359b:

  ; Code: jmpq .L_4535a0	 RIP: 45359b	 Bytes: 5
  %loadMem_45359b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45359b = call %struct.Memory* @routine_jmpq_.L_4535a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45359b, i64 5, i64 5)
  store %struct.Memory* %call_45359b, %struct.Memory** %MEMORY

  br label %block_.L_4535a0

  ; Code: .L_4535a0:	 RIP: 4535a0	 Bytes: 0
block_.L_4535a0:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4535a0	 Bytes: 3
  %loadMem_4535a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535a0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535a0)
  store %struct.Memory* %call_4535a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4535a3	 Bytes: 3
  %loadMem_4535a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535a3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535a3)
  store %struct.Memory* %call_4535a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4535a6	 Bytes: 3
  %loadMem_4535a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535a6 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535a6)
  store %struct.Memory* %call_4535a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4534ea	 RIP: 4535a9	 Bytes: 5
  %loadMem_4535a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535a9 = call %struct.Memory* @routine_jmpq_.L_4534ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535a9, i64 -191, i64 5)
  store %struct.Memory* %call_4535a9, %struct.Memory** %MEMORY

  br label %block_.L_4534ea

  ; Code: .L_4535ae:	 RIP: 4535ae	 Bytes: 0
block_.L_4535ae:

  ; Code: jmpq .L_4535b3	 RIP: 4535ae	 Bytes: 5
  %loadMem_4535ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535ae = call %struct.Memory* @routine_jmpq_.L_4535b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535ae, i64 5, i64 5)
  store %struct.Memory* %call_4535ae, %struct.Memory** %MEMORY

  br label %block_.L_4535b3

  ; Code: .L_4535b3:	 RIP: 4535b3	 Bytes: 0
block_.L_4535b3:

  ; Code: addq $0x180, %rsp	 RIP: 4535b3	 Bytes: 7
  %loadMem_4535b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535b3 = call %struct.Memory* @routine_addq__0x180___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535b3)
  store %struct.Memory* %call_4535b3, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4535ba	 Bytes: 1
  %loadMem_4535ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535ba = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535ba)
  store %struct.Memory* %call_4535ba, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4535bb	 Bytes: 1
  %loadMem_4535bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4535bb = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4535bb)
  store %struct.Memory* %call_4535bb, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4535bb
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

define %struct.Memory* @routine_subq__0x180___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 384)
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


define %struct.Memory* @routine_movq_0x30__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x18f8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x18fc__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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






define %struct.Memory* @routine_movl_0x1900__rdi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 6400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x1904__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 6404
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_shll__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x28__r9_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 40
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


define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 12
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


define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
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

define %struct.Memory* @routine_cmpl_0x18fc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6396
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

define %struct.Memory* @routine_jge_.L_4523b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x1918__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0x30__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_0x18f8__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_shlq__0x1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movq_0x38__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_jmpq_.L_4522df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl_0x1904__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6404
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_45256b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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














define %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movslq_0x1900__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












































define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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
















define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_4523c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.UnifiedOneForthPix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4525a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4525b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_0x28__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__0x10__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__0x24__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x4__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




































define %struct.Memory* @routine_movl__eax__0xc__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_cmpl__0x0__0x18ec__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6380
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movb__dl__MINUS0x55__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 85
  %15 = load i8, i8* %DL
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

define %struct.Memory* @routine_je_.L_452674(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6380
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


define %struct.Memory* @routine_movb__cl__MINUS0x55__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 85
  %15 = load i8, i8* %CL
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

define %struct.Memory* @routine_movb_MINUS0x55__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 85
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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






define %struct.Memory* @routine_movl__ecx__0x18ec__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6380
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x18e8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__dl__MINUS0x56__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 86
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4526bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__cl__MINUS0x56__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 86
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x56__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 86
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__ecx__0x18e8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6376
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x18e8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4526fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6372
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__0x1980__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6528
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__0x1988__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6536
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__0x0__0x190c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_0x1998__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__0x1998__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6552
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x19a0__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__0x19a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6560
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x19a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4527f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x19ac__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x19ac__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6572
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x19b0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x19b0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6576
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x19a4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x19a4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6564
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x19a8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x19a8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6568
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rax__0x1990__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6544
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl_0x7247b4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_jge_.L_45292e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x120__rdx__rsi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 288
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 8
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CQO_RAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = ashr i64 %5, 63
  store i64 %6, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cqto(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CQO_RAXEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sext i64 %2 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = zext i64 %7 to i128
  %11 = shl  i128 %10, 64
  %12 = zext i64 %5 to i128
  %13 = or i128 %11, %12
  %14 = zext i64 %2 to i128
  %15 = or i128 %9, %14
  %16 = sdiv i128 %13, %15
  %17 = trunc i128 %16 to i64
  %18 = and i128 %16, 18446744073709551615
  %19 = sext i64 %17 to i128
  %20 = and i128 %19, -18446744073709551616
  %21 = or i128 %20, %18
  %22 = icmp eq i128 %16, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %3
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %25, %struct.Memory* %0) #21
  br label %36

; <label>:27:                                     ; preds = %3
  %28 = srem i128 %13, %15
  %29 = trunc i128 %28 to i64
  store i64 %17, i64* %4, align 8
  store i64 %29, i64* %6, align 8
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

; <label>:36:                                     ; preds = %27, %23
  %37 = phi %struct.Memory* [ %26, %23 ], [ %0, %27 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_idivq__rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shlq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__edi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x120__rsi__r8_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %12, 288
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movq__rsi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jge_.L_4528db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_452908(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__0x120__rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 288
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_452825(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_0x7247b0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_452a38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq_0x18__rdx__rsi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}


















define %struct.Memory* @routine_movq_0x18__rsi__r8_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %12, 24
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %16)
  ret %struct.Memory* %19
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










define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4529e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_452a12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


























define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rax__0x18__rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_452935(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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








define %struct.Memory* @routine_movl_0x18f8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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




define %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_4534b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x18fc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_4534a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x1978__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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






define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_shll__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x98__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 4)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1____rcx__r8_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw___rcx____r9w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R9W, i64 %12)
  ret %struct.Memory* %15
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








define %struct.Memory* @routine_movl_MINUS0xa0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__r9w____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i16, i16* %R9W
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movw_0x2__rcx____r9w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R9W, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movw__r9w__0x2__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i16, i16* %R9W
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




































define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0xa8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl_MINUS0xac__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movw___rcx__r8_2____r9w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R9W, i64 %18)
  ret %struct.Memory* %21
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








define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movw__r9w____rcx__r8_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %R9W
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl__r9w___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %R9W
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_452df3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x18__rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 24
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_jmpq_.L_452e03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_452e56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x120__rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 288
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_452e66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jl_.L_452eba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x648__rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 1608
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_452eca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movq_0x1960__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0xe0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xd8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r9____r8__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %R9
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jl_.L_452f5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x750__rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 1872
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_jmpq_.L_452f6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


















define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl_MINUS0x104__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__edi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x100__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xf8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__r9_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movw___rsi____r10w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R10W, i64 %12)
  ret %struct.Memory* %15
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








define %struct.Memory* @routine_movl_MINUS0x108__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq__edi___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movw__r10w____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i16, i16* %R10W
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movw_0x2__rsi____r10w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R10W, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl_MINUS0x10c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movw__r10w__0x2__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 2
  %14 = load i16, i16* %R10W
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_movl_MINUS0x110__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl_MINUS0x114__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movw___rsi__r9_2____r10w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R10W, i64 %18)
  ret %struct.Memory* %21
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








define %struct.Memory* @routine_movl_MINUS0x118__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movw__r10w____rsi__r9_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %R10W
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movswl__r10w___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %R10W
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl_MINUS0x11c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movswl__r10w___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %R10W
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jl_.L_4532a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4532b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x128__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jl_.L_453309(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_453319(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x130__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jl_.L_45336d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_453380(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -1)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x138__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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










define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x14c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x148__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x140__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jl_.L_453417(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45342a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq_MINUS0x158__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq__rdx__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl_MINUS0x16c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x168__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x160__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_452a75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4534ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_452a3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722cb0_type* @G_0x722cb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4534e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x484__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4535b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x170__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_4535ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x174__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_45359b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x1978__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_jmpq_.L_453520(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4535a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4534ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4535b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x180___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 384)
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

