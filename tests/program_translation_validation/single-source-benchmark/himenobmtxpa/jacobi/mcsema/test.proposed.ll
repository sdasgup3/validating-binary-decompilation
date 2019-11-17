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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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


; Data Access Globals
%G_0x603058_type = type <{ [4 x i8] }>
@G_0x603058= global %G_0x603058_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @jacobi(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .jacobi:	 RIP: 400d00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400d00	 Bytes: 1
  %loadMem_400d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d00)
  store %struct.Memory* %call_400d00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400d01	 Bytes: 3
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 400d04	 Bytes: 4
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d04 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d04)
  store %struct.Memory* %call_400d04, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r10	 RIP: 400d08	 Bytes: 4
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d08 = call %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d08)
  store %struct.Memory* %call_400d08, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 400d0c	 Bytes: 3
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0c = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0c)
  store %struct.Memory* %call_400d0c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 400d0f	 Bytes: 4
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0f = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0f)
  store %struct.Memory* %call_400d0f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 400d13	 Bytes: 4
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d13 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d13)
  store %struct.Memory* %call_400d13, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 400d17	 Bytes: 4
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d17 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d17)
  store %struct.Memory* %call_400d17, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 400d1b	 Bytes: 4
  %loadMem_400d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1b = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1b)
  store %struct.Memory* %call_400d1b, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x30(%rbp)	 RIP: 400d1f	 Bytes: 4
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1f = call %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1f)
  store %struct.Memory* %call_400d1f, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x38(%rbp)	 RIP: 400d23	 Bytes: 4
  %loadMem_400d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d23 = call %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d23)
  store %struct.Memory* %call_400d23, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 400d27	 Bytes: 4
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d27 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d27)
  store %struct.Memory* %call_400d27, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d2b	 Bytes: 4
  %loadMem_400d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2b)
  store %struct.Memory* %call_400d2b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 400d2f	 Bytes: 3
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2f = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2f)
  store %struct.Memory* %call_400d2f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d32	 Bytes: 3
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d32 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d32)
  store %struct.Memory* %call_400d32, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x54(%rbp)	 RIP: 400d35	 Bytes: 3
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_movl__edi__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d38	 Bytes: 4
  %loadMem_400d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d38 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d38)
  store %struct.Memory* %call_400d38, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edi	 RIP: 400d3c	 Bytes: 3
  %loadMem_400d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3c = call %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3c)
  store %struct.Memory* %call_400d3c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d3f	 Bytes: 3
  %loadMem_400d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3f = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3f)
  store %struct.Memory* %call_400d3f, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x58(%rbp)	 RIP: 400d42	 Bytes: 3
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d42 = call %struct.Memory* @routine_movl__edi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d42)
  store %struct.Memory* %call_400d42, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d45	 Bytes: 4
  %loadMem_400d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d45 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d45)
  store %struct.Memory* %call_400d45, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edi	 RIP: 400d49	 Bytes: 3
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d49 = call %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d49)
  store %struct.Memory* %call_400d49, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d4c	 Bytes: 3
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4c = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4c)
  store %struct.Memory* %call_400d4c, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x5c(%rbp)	 RIP: 400d4f	 Bytes: 3
  %loadMem_400d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4f = call %struct.Memory* @routine_movl__edi__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4f)
  store %struct.Memory* %call_400d4f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 400d52	 Bytes: 7
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d52 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d52)
  store %struct.Memory* %call_400d52, %struct.Memory** %MEMORY

  ; Code: .L_400d59:	 RIP: 400d59	 Bytes: 0
  br label %block_.L_400d59
block_.L_400d59:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 400d59	 Bytes: 3
  %loadMem_400d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d59 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d59)
  store %struct.Memory* %call_400d59, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 400d5c	 Bytes: 3
  %loadMem_400d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5c)
  store %struct.Memory* %call_400d5c, %struct.Memory** %MEMORY

  ; Code: jge .L_401999	 RIP: 400d5f	 Bytes: 6
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5f = call %struct.Memory* @routine_jge_.L_401999(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5f, i8* %BRANCH_TAKEN, i64 3130, i64 6, i64 6)
  store %struct.Memory* %call_400d5f, %struct.Memory** %MEMORY

  %loadBr_400d5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d5f = icmp eq i8 %loadBr_400d5f, 1
  br i1 %cmpBr_400d5f, label %block_.L_401999, label %block_400d65

block_400d65:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400d65	 Bytes: 3
  %loadMem_400d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d65 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d65)
  store %struct.Memory* %call_400d65, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x60(%rbp)	 RIP: 400d68	 Bytes: 5
  %loadMem_400d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d68 = call %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d68)
  store %struct.Memory* %call_400d68, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 400d6d	 Bytes: 7
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6d = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6d)
  store %struct.Memory* %call_400d6d, %struct.Memory** %MEMORY

  ; Code: .L_400d74:	 RIP: 400d74	 Bytes: 0
  br label %block_.L_400d74
block_.L_400d74:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 400d74	 Bytes: 3
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d74 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d74)
  store %struct.Memory* %call_400d74, %struct.Memory** %MEMORY

  ; Code: cmpl -0x54(%rbp), %eax	 RIP: 400d77	 Bytes: 3
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d77 = call %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d77)
  store %struct.Memory* %call_400d77, %struct.Memory** %MEMORY

  ; Code: jge .L_401881	 RIP: 400d7a	 Bytes: 6
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7a = call %struct.Memory* @routine_jge_.L_401881(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7a, i8* %BRANCH_TAKEN, i64 2823, i64 6, i64 6)
  store %struct.Memory* %call_400d7a, %struct.Memory** %MEMORY

  %loadBr_400d7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d7a = icmp eq i8 %loadBr_400d7a, 1
  br i1 %cmpBr_400d7a, label %block_.L_401881, label %block_400d80

block_400d80:
  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 400d80	 Bytes: 7
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d80 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d80)
  store %struct.Memory* %call_400d80, %struct.Memory** %MEMORY

  ; Code: .L_400d87:	 RIP: 400d87	 Bytes: 0
  br label %block_.L_400d87
block_.L_400d87:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 400d87	 Bytes: 3
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d87 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d87)
  store %struct.Memory* %call_400d87, %struct.Memory** %MEMORY

  ; Code: cmpl -0x58(%rbp), %eax	 RIP: 400d8a	 Bytes: 3
  %loadMem_400d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8a = call %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8a)
  store %struct.Memory* %call_400d8a, %struct.Memory** %MEMORY

  ; Code: jge .L_40186e	 RIP: 400d8d	 Bytes: 6
  %loadMem_400d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8d = call %struct.Memory* @routine_jge_.L_40186e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8d, i8* %BRANCH_TAKEN, i64 2785, i64 6, i64 6)
  store %struct.Memory* %call_400d8d, %struct.Memory** %MEMORY

  %loadBr_400d8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d8d = icmp eq i8 %loadBr_400d8d, 1
  br i1 %cmpBr_400d8d, label %block_.L_40186e, label %block_400d93

block_400d93:
  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 400d93	 Bytes: 7
  %loadMem_400d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d93 = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d93)
  store %struct.Memory* %call_400d93, %struct.Memory** %MEMORY

  ; Code: .L_400d9a:	 RIP: 400d9a	 Bytes: 0
  br label %block_.L_400d9a
block_.L_400d9a:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 400d9a	 Bytes: 3
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9a)
  store %struct.Memory* %call_400d9a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 400d9d	 Bytes: 3
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9d = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9d)
  store %struct.Memory* %call_400d9d, %struct.Memory** %MEMORY

  ; Code: jge .L_40185b	 RIP: 400da0	 Bytes: 6
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da0 = call %struct.Memory* @routine_jge_.L_40185b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da0, i8* %BRANCH_TAKEN, i64 2747, i64 6, i64 6)
  store %struct.Memory* %call_400da0, %struct.Memory** %MEMORY

  %loadBr_400da0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400da0 = icmp eq i8 %loadBr_400da0, 1
  br i1 %cmpBr_400da0, label %block_.L_40185b, label %block_400da6

block_400da6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400da6	 Bytes: 4
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da6)
  store %struct.Memory* %call_400da6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400daa	 Bytes: 3
  %loadMem_400daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400daa = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400daa)
  store %struct.Memory* %call_400daa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dad	 Bytes: 4
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dad)
  store %struct.Memory* %call_400dad, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400db1	 Bytes: 4
  %loadMem_400db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db1 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db1)
  store %struct.Memory* %call_400db1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400db5	 Bytes: 4
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db5)
  store %struct.Memory* %call_400db5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400db9	 Bytes: 4
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db9 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db9)
  store %struct.Memory* %call_400db9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dbd	 Bytes: 4
  %loadMem_400dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbd)
  store %struct.Memory* %call_400dbd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400dc1	 Bytes: 4
  %loadMem_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc1 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc1)
  store %struct.Memory* %call_400dc1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400dc5	 Bytes: 3
  %loadMem_400dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc5)
  store %struct.Memory* %call_400dc5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dc8	 Bytes: 4
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc8)
  store %struct.Memory* %call_400dc8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400dcc	 Bytes: 4
  %loadMem_400dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcc = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcc)
  store %struct.Memory* %call_400dcc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dd0	 Bytes: 4
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd0)
  store %struct.Memory* %call_400dd0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400dd4	 Bytes: 4
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd4)
  store %struct.Memory* %call_400dd4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400dd8	 Bytes: 2
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd8)
  store %struct.Memory* %call_400dd8, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400dda	 Bytes: 3
  %loadMem_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dda = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dda)
  store %struct.Memory* %call_400dda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ddd	 Bytes: 4
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddd)
  store %struct.Memory* %call_400ddd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400de1	 Bytes: 4
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de1)
  store %struct.Memory* %call_400de1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400de5	 Bytes: 2
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de5)
  store %struct.Memory* %call_400de5, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400de7	 Bytes: 3
  %loadMem_400de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de7 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de7)
  store %struct.Memory* %call_400de7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400dea	 Bytes: 3
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dea = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dea)
  store %struct.Memory* %call_400dea, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 400ded	 Bytes: 5
  %loadMem_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ded = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ded)
  store %struct.Memory* %call_400ded, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400df2	 Bytes: 4
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df2)
  store %struct.Memory* %call_400df2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400df6	 Bytes: 3
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df6)
  store %struct.Memory* %call_400df6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400df9	 Bytes: 4
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df9)
  store %struct.Memory* %call_400df9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400dfd	 Bytes: 4
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfd = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfd)
  store %struct.Memory* %call_400dfd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e01	 Bytes: 4
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e05	 Bytes: 4
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e05 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e05)
  store %struct.Memory* %call_400e05, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e09	 Bytes: 4
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e09 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e09)
  store %struct.Memory* %call_400e09, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e0d	 Bytes: 4
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0d = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0d)
  store %struct.Memory* %call_400e0d, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400e11	 Bytes: 3
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e11 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e11)
  store %struct.Memory* %call_400e11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400e14	 Bytes: 3
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e14 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e14)
  store %struct.Memory* %call_400e14, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e17	 Bytes: 4
  %loadMem_400e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e17 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e17)
  store %struct.Memory* %call_400e17, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e1b	 Bytes: 4
  %loadMem_400e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1b = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1b)
  store %struct.Memory* %call_400e1b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e1f	 Bytes: 4
  %loadMem_400e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1f)
  store %struct.Memory* %call_400e1f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e23	 Bytes: 4
  %loadMem_400e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e23 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e23)
  store %struct.Memory* %call_400e23, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e27	 Bytes: 2
  %loadMem_400e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e27 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e27)
  store %struct.Memory* %call_400e27, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400e29	 Bytes: 3
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e29 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e29)
  store %struct.Memory* %call_400e29, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e2c	 Bytes: 4
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2c)
  store %struct.Memory* %call_400e2c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e30	 Bytes: 4
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e30 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e30)
  store %struct.Memory* %call_400e30, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e34	 Bytes: 2
  %loadMem_400e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e34 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e34)
  store %struct.Memory* %call_400e34, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400e36	 Bytes: 3
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e36 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e36)
  store %struct.Memory* %call_400e36, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e39	 Bytes: 3
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e39 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e39)
  store %struct.Memory* %call_400e39, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 400e3c	 Bytes: 5
  %loadMem_400e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3c)
  store %struct.Memory* %call_400e3c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400e41	 Bytes: 4
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e41 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e41)
  store %struct.Memory* %call_400e41, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e45	 Bytes: 3
  %loadMem_400e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e45 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e45)
  store %struct.Memory* %call_400e45, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e48	 Bytes: 4
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e48 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e48)
  store %struct.Memory* %call_400e48, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400e4c	 Bytes: 3
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4c = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4c)
  store %struct.Memory* %call_400e4c, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 400e4f	 Bytes: 3
  %loadMem_400e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4f = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4f)
  store %struct.Memory* %call_400e4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e52	 Bytes: 4
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e52 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e52)
  store %struct.Memory* %call_400e52, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e56	 Bytes: 4
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e56 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e56)
  store %struct.Memory* %call_400e56, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e5a	 Bytes: 4
  %loadMem_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5a)
  store %struct.Memory* %call_400e5a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e5e	 Bytes: 4
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5e)
  store %struct.Memory* %call_400e5e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400e62	 Bytes: 3
  %loadMem_400e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e62 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e62)
  store %struct.Memory* %call_400e62, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e65	 Bytes: 4
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e65 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e65)
  store %struct.Memory* %call_400e65, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e69	 Bytes: 4
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e69 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e69)
  store %struct.Memory* %call_400e69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e6d	 Bytes: 4
  %loadMem_400e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6d)
  store %struct.Memory* %call_400e6d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e71	 Bytes: 4
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e71 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e71)
  store %struct.Memory* %call_400e71, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e75	 Bytes: 2
  %loadMem_400e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e75 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e75)
  store %struct.Memory* %call_400e75, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400e77	 Bytes: 3
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e77 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e77)
  store %struct.Memory* %call_400e77, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e7a	 Bytes: 4
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7a)
  store %struct.Memory* %call_400e7a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e7e	 Bytes: 4
  %loadMem_400e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7e)
  store %struct.Memory* %call_400e7e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e82	 Bytes: 2
  %loadMem_400e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e82 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e82)
  store %struct.Memory* %call_400e82, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400e84	 Bytes: 3
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e84 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e84)
  store %struct.Memory* %call_400e84, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e87	 Bytes: 3
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e87 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e87)
  store %struct.Memory* %call_400e87, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400e8a	 Bytes: 5
  %loadMem_400e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8a)
  store %struct.Memory* %call_400e8a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400e8f	 Bytes: 4
  %loadMem_400e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8f)
  store %struct.Memory* %call_400e8f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e93	 Bytes: 3
  %loadMem_400e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e93 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e93)
  store %struct.Memory* %call_400e93, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e96	 Bytes: 4
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e96 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e96)
  store %struct.Memory* %call_400e96, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400e9a	 Bytes: 4
  %loadMem_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9a)
  store %struct.Memory* %call_400e9a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e9e	 Bytes: 4
  %loadMem_400e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9e)
  store %struct.Memory* %call_400e9e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400ea2	 Bytes: 4
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea2 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea2)
  store %struct.Memory* %call_400ea2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ea6	 Bytes: 4
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea6)
  store %struct.Memory* %call_400ea6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400eaa	 Bytes: 4
  %loadMem_400eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eaa = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eaa)
  store %struct.Memory* %call_400eaa, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400eae	 Bytes: 3
  %loadMem_400eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eae = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eae)
  store %struct.Memory* %call_400eae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400eb1	 Bytes: 4
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb1)
  store %struct.Memory* %call_400eb1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400eb5	 Bytes: 4
  %loadMem_400eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb5 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb5)
  store %struct.Memory* %call_400eb5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400eb9	 Bytes: 4
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb9)
  store %struct.Memory* %call_400eb9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ebd	 Bytes: 4
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebd)
  store %struct.Memory* %call_400ebd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ec1	 Bytes: 2
  %loadMem_400ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec1)
  store %struct.Memory* %call_400ec1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400ec3	 Bytes: 3
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec3 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec3)
  store %struct.Memory* %call_400ec3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400ec6	 Bytes: 3
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec6)
  store %struct.Memory* %call_400ec6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ec9	 Bytes: 4
  %loadMem_400ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec9)
  store %struct.Memory* %call_400ec9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ecd	 Bytes: 4
  %loadMem_400ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecd)
  store %struct.Memory* %call_400ecd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ed1	 Bytes: 2
  %loadMem_400ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed1)
  store %struct.Memory* %call_400ed1, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400ed3	 Bytes: 3
  %loadMem_400ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed3 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed3)
  store %struct.Memory* %call_400ed3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ed6	 Bytes: 3
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed6)
  store %struct.Memory* %call_400ed6, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400ed9	 Bytes: 5
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed9 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed9)
  store %struct.Memory* %call_400ed9, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400ede	 Bytes: 4
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ede = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ede)
  store %struct.Memory* %call_400ede, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400ee2	 Bytes: 4
  %loadMem_400ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee2)
  store %struct.Memory* %call_400ee2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400ee6	 Bytes: 3
  %loadMem_400ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee6)
  store %struct.Memory* %call_400ee6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ee9	 Bytes: 4
  %loadMem_400ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee9)
  store %struct.Memory* %call_400ee9, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400eed	 Bytes: 3
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eed = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eed)
  store %struct.Memory* %call_400eed, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 400ef0	 Bytes: 3
  %loadMem_400ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef0 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef0)
  store %struct.Memory* %call_400ef0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ef3	 Bytes: 4
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef3)
  store %struct.Memory* %call_400ef3, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400ef7	 Bytes: 4
  %loadMem_400ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef7 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef7)
  store %struct.Memory* %call_400ef7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400efb	 Bytes: 4
  %loadMem_400efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efb)
  store %struct.Memory* %call_400efb, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400eff	 Bytes: 4
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eff = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eff)
  store %struct.Memory* %call_400eff, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400f03	 Bytes: 3
  %loadMem_400f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f03 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f03)
  store %struct.Memory* %call_400f03, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400f06	 Bytes: 4
  %loadMem_400f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f06 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f06)
  store %struct.Memory* %call_400f06, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f0a	 Bytes: 4
  %loadMem_400f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0a = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0a)
  store %struct.Memory* %call_400f0a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400f0e	 Bytes: 4
  %loadMem_400f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0e)
  store %struct.Memory* %call_400f0e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f12	 Bytes: 4
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f12 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f12)
  store %struct.Memory* %call_400f12, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f16	 Bytes: 2
  %loadMem_400f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f16 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f16)
  store %struct.Memory* %call_400f16, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400f18	 Bytes: 3
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f18 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f18)
  store %struct.Memory* %call_400f18, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400f1b	 Bytes: 4
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f1f	 Bytes: 4
  %loadMem_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1f)
  store %struct.Memory* %call_400f1f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f23	 Bytes: 2
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f23 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f23)
  store %struct.Memory* %call_400f23, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400f25	 Bytes: 3
  %loadMem_400f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f25 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f25)
  store %struct.Memory* %call_400f25, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f28	 Bytes: 3
  %loadMem_400f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f28 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f28)
  store %struct.Memory* %call_400f28, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400f2b	 Bytes: 5
  %loadMem_400f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2b = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2b)
  store %struct.Memory* %call_400f2b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400f30	 Bytes: 4
  %loadMem_400f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f30 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f30)
  store %struct.Memory* %call_400f30, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f34	 Bytes: 3
  %loadMem_400f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f34 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f34)
  store %struct.Memory* %call_400f34, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f37	 Bytes: 4
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f37 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f37)
  store %struct.Memory* %call_400f37, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f3b	 Bytes: 4
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3b)
  store %struct.Memory* %call_400f3b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f3f	 Bytes: 4
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3f)
  store %struct.Memory* %call_400f3f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f43	 Bytes: 4
  %loadMem_400f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f43 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f43)
  store %struct.Memory* %call_400f43, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f47	 Bytes: 4
  %loadMem_400f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f47 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f47)
  store %struct.Memory* %call_400f47, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400f4b	 Bytes: 4
  %loadMem_400f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4b)
  store %struct.Memory* %call_400f4b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400f4f	 Bytes: 3
  %loadMem_400f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4f)
  store %struct.Memory* %call_400f4f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f52	 Bytes: 4
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f52 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f52)
  store %struct.Memory* %call_400f52, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f56	 Bytes: 4
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f56 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f56)
  store %struct.Memory* %call_400f56, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f5a	 Bytes: 4
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5a)
  store %struct.Memory* %call_400f5a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f5e	 Bytes: 4
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5e)
  store %struct.Memory* %call_400f5e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f62	 Bytes: 2
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f62 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f62)
  store %struct.Memory* %call_400f62, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400f64	 Bytes: 3
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f64 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f64)
  store %struct.Memory* %call_400f64, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f67	 Bytes: 4
  %loadMem_400f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f67 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f67)
  store %struct.Memory* %call_400f67, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f6b	 Bytes: 4
  %loadMem_400f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6b)
  store %struct.Memory* %call_400f6b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f6f	 Bytes: 2
  %loadMem_400f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6f)
  store %struct.Memory* %call_400f6f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 400f71	 Bytes: 3
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f71 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f71)
  store %struct.Memory* %call_400f71, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400f74	 Bytes: 3
  %loadMem_400f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f74 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f74)
  store %struct.Memory* %call_400f74, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f77	 Bytes: 2
  %loadMem_400f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f77 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f77)
  store %struct.Memory* %call_400f77, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f79	 Bytes: 3
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f79 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f79)
  store %struct.Memory* %call_400f79, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400f7c	 Bytes: 5
  %loadMem_400f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7c)
  store %struct.Memory* %call_400f7c, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400f81	 Bytes: 4
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f81 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f81)
  store %struct.Memory* %call_400f81, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400f85	 Bytes: 4
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f85 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f85)
  store %struct.Memory* %call_400f85, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f89	 Bytes: 3
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f89 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f89)
  store %struct.Memory* %call_400f89, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f8c	 Bytes: 4
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8c)
  store %struct.Memory* %call_400f8c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f90	 Bytes: 4
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f90 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f90)
  store %struct.Memory* %call_400f90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f94	 Bytes: 4
  %loadMem_400f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f94 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f94)
  store %struct.Memory* %call_400f94, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f98	 Bytes: 4
  %loadMem_400f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f98 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f98)
  store %struct.Memory* %call_400f98, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f9c	 Bytes: 4
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9c)
  store %struct.Memory* %call_400f9c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400fa0	 Bytes: 4
  %loadMem_400fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa0 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa0)
  store %struct.Memory* %call_400fa0, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400fa4	 Bytes: 3
  %loadMem_400fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa4 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa4)
  store %struct.Memory* %call_400fa4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400fa7	 Bytes: 4
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa7)
  store %struct.Memory* %call_400fa7, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400fab	 Bytes: 4
  %loadMem_400fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fab = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fab)
  store %struct.Memory* %call_400fab, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400faf	 Bytes: 4
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faf)
  store %struct.Memory* %call_400faf, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fb3	 Bytes: 4
  %loadMem_400fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb3 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb3)
  store %struct.Memory* %call_400fb3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fb7	 Bytes: 2
  %loadMem_400fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb7)
  store %struct.Memory* %call_400fb7, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400fb9	 Bytes: 3
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb9 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb9)
  store %struct.Memory* %call_400fb9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400fbc	 Bytes: 4
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fc0	 Bytes: 4
  %loadMem_400fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc0 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc0)
  store %struct.Memory* %call_400fc0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fc4	 Bytes: 2
  %loadMem_400fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc4 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc4)
  store %struct.Memory* %call_400fc4, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400fc6	 Bytes: 3
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc6 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc6)
  store %struct.Memory* %call_400fc6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400fc9	 Bytes: 3
  %loadMem_400fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc9)
  store %struct.Memory* %call_400fc9, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400fcc	 Bytes: 5
  %loadMem_400fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcc = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcc)
  store %struct.Memory* %call_400fcc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400fd1	 Bytes: 4
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd1)
  store %struct.Memory* %call_400fd1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400fd5	 Bytes: 3
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd5)
  store %struct.Memory* %call_400fd5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fd8	 Bytes: 4
  %loadMem_400fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd8)
  store %struct.Memory* %call_400fd8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400fdc	 Bytes: 4
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdc = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdc)
  store %struct.Memory* %call_400fdc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fe0	 Bytes: 4
  %loadMem_400fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe0)
  store %struct.Memory* %call_400fe0, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400fe4	 Bytes: 4
  %loadMem_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe4 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe4)
  store %struct.Memory* %call_400fe4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fe8	 Bytes: 4
  %loadMem_400fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe8)
  store %struct.Memory* %call_400fe8, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400fec	 Bytes: 4
  %loadMem_400fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fec = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fec)
  store %struct.Memory* %call_400fec, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400ff0	 Bytes: 3
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400ff3	 Bytes: 3
  %loadMem_400ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff3 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff3)
  store %struct.Memory* %call_400ff3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ff6	 Bytes: 4
  %loadMem_400ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff6)
  store %struct.Memory* %call_400ff6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400ffa	 Bytes: 4
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffa = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffa)
  store %struct.Memory* %call_400ffa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ffe	 Bytes: 4
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffe = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffe)
  store %struct.Memory* %call_400ffe, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401002	 Bytes: 4
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401006	 Bytes: 2
  %loadMem_401006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401006 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401006)
  store %struct.Memory* %call_401006, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401008	 Bytes: 3
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401008 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401008)
  store %struct.Memory* %call_401008, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40100b	 Bytes: 3
  %loadMem_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100b = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100b)
  store %struct.Memory* %call_40100b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40100e	 Bytes: 4
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100e)
  store %struct.Memory* %call_40100e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401012	 Bytes: 4
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401012 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401012)
  store %struct.Memory* %call_401012, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401016	 Bytes: 2
  %loadMem_401016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401016 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401016)
  store %struct.Memory* %call_401016, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401018	 Bytes: 3
  %loadMem_401018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401018 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401018)
  store %struct.Memory* %call_401018, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40101b	 Bytes: 3
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101b)
  store %struct.Memory* %call_40101b, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 40101e	 Bytes: 5
  %loadMem_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101e)
  store %struct.Memory* %call_40101e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401023	 Bytes: 4
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401023 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401023)
  store %struct.Memory* %call_401023, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401027	 Bytes: 3
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401027 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401027)
  store %struct.Memory* %call_401027, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40102a	 Bytes: 4
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40102e	 Bytes: 4
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102e = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102e)
  store %struct.Memory* %call_40102e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401032	 Bytes: 4
  %loadMem_401032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401032 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401032)
  store %struct.Memory* %call_401032, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401036	 Bytes: 4
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401036 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401036)
  store %struct.Memory* %call_401036, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40103a	 Bytes: 4
  %loadMem_40103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103a)
  store %struct.Memory* %call_40103a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40103e	 Bytes: 4
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103e)
  store %struct.Memory* %call_40103e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401042	 Bytes: 3
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401042 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401042)
  store %struct.Memory* %call_401042, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401045	 Bytes: 3
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401045 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401045)
  store %struct.Memory* %call_401045, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401048	 Bytes: 4
  %loadMem_401048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401048 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401048)
  store %struct.Memory* %call_401048, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40104c	 Bytes: 4
  %loadMem_40104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104c)
  store %struct.Memory* %call_40104c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401050	 Bytes: 4
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401050 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401050)
  store %struct.Memory* %call_401050, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401054	 Bytes: 4
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401054 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401054)
  store %struct.Memory* %call_401054, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401058	 Bytes: 2
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40105a	 Bytes: 3
  %loadMem_40105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105a)
  store %struct.Memory* %call_40105a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40105d	 Bytes: 3
  %loadMem_40105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105d)
  store %struct.Memory* %call_40105d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401060	 Bytes: 4
  %loadMem_401060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401060 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401060)
  store %struct.Memory* %call_401060, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401064	 Bytes: 4
  %loadMem_401064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401064 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401064)
  store %struct.Memory* %call_401064, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401068	 Bytes: 2
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401068 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401068)
  store %struct.Memory* %call_401068, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40106a	 Bytes: 3
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106a = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106a)
  store %struct.Memory* %call_40106a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40106d	 Bytes: 3
  %loadMem_40106d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106d)
  store %struct.Memory* %call_40106d, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401070	 Bytes: 5
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401070 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401070)
  store %struct.Memory* %call_401070, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401075	 Bytes: 4
  %loadMem_401075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401075 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401075)
  store %struct.Memory* %call_401075, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401079	 Bytes: 3
  %loadMem_401079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401079 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401079)
  store %struct.Memory* %call_401079, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40107c	 Bytes: 4
  %loadMem_40107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107c)
  store %struct.Memory* %call_40107c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401080	 Bytes: 4
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401080 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401080)
  store %struct.Memory* %call_401080, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401084	 Bytes: 4
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401084 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401084)
  store %struct.Memory* %call_401084, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401088	 Bytes: 4
  %loadMem_401088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401088 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401088)
  store %struct.Memory* %call_401088, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40108c	 Bytes: 4
  %loadMem_40108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108c)
  store %struct.Memory* %call_40108c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401090	 Bytes: 4
  %loadMem_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401090 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401090)
  store %struct.Memory* %call_401090, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401094	 Bytes: 3
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401094 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401094)
  store %struct.Memory* %call_401094, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401097	 Bytes: 3
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401097 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401097)
  store %struct.Memory* %call_401097, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40109a	 Bytes: 4
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40109e	 Bytes: 4
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109e)
  store %struct.Memory* %call_40109e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010a2	 Bytes: 4
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010a6	 Bytes: 4
  %loadMem_4010a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a6 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a6)
  store %struct.Memory* %call_4010a6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010aa	 Bytes: 2
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010aa = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010aa)
  store %struct.Memory* %call_4010aa, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4010ac	 Bytes: 3
  %loadMem_4010ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ac = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ac)
  store %struct.Memory* %call_4010ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4010af	 Bytes: 3
  %loadMem_4010af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010af = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010af)
  store %struct.Memory* %call_4010af, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010b2	 Bytes: 4
  %loadMem_4010b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b2)
  store %struct.Memory* %call_4010b2, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010b6	 Bytes: 4
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b6 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b6)
  store %struct.Memory* %call_4010b6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010ba	 Bytes: 2
  %loadMem_4010ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ba = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ba)
  store %struct.Memory* %call_4010ba, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4010bc	 Bytes: 3
  %loadMem_4010bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bc = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bc)
  store %struct.Memory* %call_4010bc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4010bf	 Bytes: 3
  %loadMem_4010bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bf)
  store %struct.Memory* %call_4010bf, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4010c2	 Bytes: 5
  %loadMem_4010c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c2 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c2)
  store %struct.Memory* %call_4010c2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4010c7	 Bytes: 4
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c7)
  store %struct.Memory* %call_4010c7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4010cb	 Bytes: 3
  %loadMem_4010cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cb)
  store %struct.Memory* %call_4010cb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010ce	 Bytes: 4
  %loadMem_4010ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ce = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ce)
  store %struct.Memory* %call_4010ce, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4010d2	 Bytes: 4
  %loadMem_4010d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d2 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d2)
  store %struct.Memory* %call_4010d2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010d6	 Bytes: 4
  %loadMem_4010d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d6)
  store %struct.Memory* %call_4010d6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4010da	 Bytes: 4
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010da = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010da)
  store %struct.Memory* %call_4010da, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010de	 Bytes: 4
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010de = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010de)
  store %struct.Memory* %call_4010de, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4010e2	 Bytes: 4
  %loadMem_4010e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e2 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e2)
  store %struct.Memory* %call_4010e2, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4010e6	 Bytes: 3
  %loadMem_4010e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e6 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e6)
  store %struct.Memory* %call_4010e6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4010e9	 Bytes: 3
  %loadMem_4010e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e9 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e9)
  store %struct.Memory* %call_4010e9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010ec	 Bytes: 4
  %loadMem_4010ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ec = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ec)
  store %struct.Memory* %call_4010ec, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4010f0	 Bytes: 4
  %loadMem_4010f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f0)
  store %struct.Memory* %call_4010f0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010f4	 Bytes: 4
  %loadMem_4010f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f4)
  store %struct.Memory* %call_4010f4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010f8	 Bytes: 4
  %loadMem_4010f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f8)
  store %struct.Memory* %call_4010f8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010fc	 Bytes: 2
  %loadMem_4010fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fc)
  store %struct.Memory* %call_4010fc, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4010fe	 Bytes: 3
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fe = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fe)
  store %struct.Memory* %call_4010fe, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401101	 Bytes: 3
  %loadMem_401101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401101 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401101)
  store %struct.Memory* %call_401101, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401104	 Bytes: 4
  %loadMem_401104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401104 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401104)
  store %struct.Memory* %call_401104, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401108	 Bytes: 4
  %loadMem_401108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401108 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401108)
  store %struct.Memory* %call_401108, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40110c	 Bytes: 2
  %loadMem_40110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110c)
  store %struct.Memory* %call_40110c, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40110e	 Bytes: 3
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110e = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110e)
  store %struct.Memory* %call_40110e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401111	 Bytes: 3
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401111 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401111)
  store %struct.Memory* %call_401111, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 401114	 Bytes: 5
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401114 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401114)
  store %struct.Memory* %call_401114, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 401119	 Bytes: 4
  %loadMem_401119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401119 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401119)
  store %struct.Memory* %call_401119, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40111d	 Bytes: 4
  %loadMem_40111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111d = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111d)
  store %struct.Memory* %call_40111d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401121	 Bytes: 4
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401125	 Bytes: 3
  %loadMem_401125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401125 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401125)
  store %struct.Memory* %call_401125, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401128	 Bytes: 4
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401128 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401128)
  store %struct.Memory* %call_401128, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 40112c	 Bytes: 3
  %loadMem_40112c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112c = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112c)
  store %struct.Memory* %call_40112c, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 40112f	 Bytes: 3
  %loadMem_40112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112f = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112f)
  store %struct.Memory* %call_40112f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401132	 Bytes: 4
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401136	 Bytes: 4
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401136 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401136)
  store %struct.Memory* %call_401136, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40113a	 Bytes: 4
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113a)
  store %struct.Memory* %call_40113a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40113e	 Bytes: 4
  %loadMem_40113e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113e)
  store %struct.Memory* %call_40113e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401142	 Bytes: 3
  %loadMem_401142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401142 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401142)
  store %struct.Memory* %call_401142, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401145	 Bytes: 4
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401145 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401145)
  store %struct.Memory* %call_401145, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401149	 Bytes: 4
  %loadMem_401149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401149 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401149)
  store %struct.Memory* %call_401149, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40114d	 Bytes: 4
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114d)
  store %struct.Memory* %call_40114d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401151	 Bytes: 4
  %loadMem_401151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401151 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401151)
  store %struct.Memory* %call_401151, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401155	 Bytes: 2
  %loadMem_401155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401155 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401155)
  store %struct.Memory* %call_401155, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401157	 Bytes: 3
  %loadMem_401157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401157 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401157)
  store %struct.Memory* %call_401157, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40115a	 Bytes: 4
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115a)
  store %struct.Memory* %call_40115a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40115e	 Bytes: 4
  %loadMem_40115e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115e)
  store %struct.Memory* %call_40115e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401162	 Bytes: 2
  %loadMem_401162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401162 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401162)
  store %struct.Memory* %call_401162, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401164	 Bytes: 3
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401164 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401164)
  store %struct.Memory* %call_401164, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401167	 Bytes: 3
  %loadMem_401167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401167 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401167)
  store %struct.Memory* %call_401167, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40116a	 Bytes: 5
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116a)
  store %struct.Memory* %call_40116a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40116f	 Bytes: 4
  %loadMem_40116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116f)
  store %struct.Memory* %call_40116f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401173	 Bytes: 3
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401173 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401173)
  store %struct.Memory* %call_401173, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401176	 Bytes: 4
  %loadMem_401176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401176 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401176)
  store %struct.Memory* %call_401176, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40117a	 Bytes: 4
  %loadMem_40117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117a)
  store %struct.Memory* %call_40117a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40117e	 Bytes: 4
  %loadMem_40117e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117e)
  store %struct.Memory* %call_40117e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401182	 Bytes: 4
  %loadMem_401182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401182 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401182)
  store %struct.Memory* %call_401182, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401186	 Bytes: 4
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401186 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401186)
  store %struct.Memory* %call_401186, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40118a	 Bytes: 4
  %loadMem_40118a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118a)
  store %struct.Memory* %call_40118a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40118e	 Bytes: 3
  %loadMem_40118e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118e)
  store %struct.Memory* %call_40118e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401191	 Bytes: 4
  %loadMem_401191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401191 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401191)
  store %struct.Memory* %call_401191, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401195	 Bytes: 4
  %loadMem_401195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401195 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401195)
  store %struct.Memory* %call_401195, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401199	 Bytes: 4
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401199 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401199)
  store %struct.Memory* %call_401199, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40119d	 Bytes: 4
  %loadMem_40119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119d)
  store %struct.Memory* %call_40119d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011a1	 Bytes: 2
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a1)
  store %struct.Memory* %call_4011a1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4011a3	 Bytes: 3
  %loadMem_4011a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a3 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a3)
  store %struct.Memory* %call_4011a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4011a6	 Bytes: 3
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a6)
  store %struct.Memory* %call_4011a6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011a9	 Bytes: 4
  %loadMem_4011a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a9)
  store %struct.Memory* %call_4011a9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011ad	 Bytes: 4
  %loadMem_4011ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ad = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ad)
  store %struct.Memory* %call_4011ad, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011b1	 Bytes: 2
  %loadMem_4011b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b1)
  store %struct.Memory* %call_4011b1, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4011b3	 Bytes: 3
  %loadMem_4011b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b3)
  store %struct.Memory* %call_4011b3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4011b6	 Bytes: 3
  %loadMem_4011b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b6)
  store %struct.Memory* %call_4011b6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011b9	 Bytes: 2
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b9)
  store %struct.Memory* %call_4011b9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4011bb	 Bytes: 3
  %loadMem_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bb)
  store %struct.Memory* %call_4011bb, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 4011be	 Bytes: 5
  %loadMem_4011be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011be = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011be)
  store %struct.Memory* %call_4011be, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4011c3	 Bytes: 4
  %loadMem_4011c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c3)
  store %struct.Memory* %call_4011c3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4011c7	 Bytes: 3
  %loadMem_4011c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c7)
  store %struct.Memory* %call_4011c7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ca	 Bytes: 4
  %loadMem_4011ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ca = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ca)
  store %struct.Memory* %call_4011ca, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4011ce	 Bytes: 4
  %loadMem_4011ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ce = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ce)
  store %struct.Memory* %call_4011ce, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011d2	 Bytes: 4
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d2)
  store %struct.Memory* %call_4011d2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4011d6	 Bytes: 4
  %loadMem_4011d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d6 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d6)
  store %struct.Memory* %call_4011d6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011da	 Bytes: 4
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011da = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011da)
  store %struct.Memory* %call_4011da, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4011de	 Bytes: 4
  %loadMem_4011de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011de = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011de)
  store %struct.Memory* %call_4011de, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4011e2	 Bytes: 3
  %loadMem_4011e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e2 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e2)
  store %struct.Memory* %call_4011e2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011e5	 Bytes: 4
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e5)
  store %struct.Memory* %call_4011e5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4011e9	 Bytes: 4
  %loadMem_4011e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e9 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e9)
  store %struct.Memory* %call_4011e9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ed	 Bytes: 4
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ed = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ed)
  store %struct.Memory* %call_4011ed, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011f1	 Bytes: 4
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f1)
  store %struct.Memory* %call_4011f1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011f5	 Bytes: 2
  %loadMem_4011f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f5)
  store %struct.Memory* %call_4011f5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4011f7	 Bytes: 3
  %loadMem_4011f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f7)
  store %struct.Memory* %call_4011f7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4011fa	 Bytes: 3
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fa = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fa)
  store %struct.Memory* %call_4011fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011fd	 Bytes: 4
  %loadMem_4011fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fd)
  store %struct.Memory* %call_4011fd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401201	 Bytes: 4
  %loadMem_401201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401201 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401201)
  store %struct.Memory* %call_401201, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401205	 Bytes: 2
  %loadMem_401205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401205 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401205)
  store %struct.Memory* %call_401205, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401207	 Bytes: 3
  %loadMem_401207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401207 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401207)
  store %struct.Memory* %call_401207, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40120a	 Bytes: 3
  %loadMem_40120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120a = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120a)
  store %struct.Memory* %call_40120a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40120d	 Bytes: 2
  %loadMem_40120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120d)
  store %struct.Memory* %call_40120d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40120f	 Bytes: 3
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120f)
  store %struct.Memory* %call_40120f, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401212	 Bytes: 5
  %loadMem_401212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401212 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401212)
  store %struct.Memory* %call_401212, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401217	 Bytes: 4
  %loadMem_401217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401217 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401217)
  store %struct.Memory* %call_401217, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40121b	 Bytes: 3
  %loadMem_40121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121b)
  store %struct.Memory* %call_40121b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40121e	 Bytes: 4
  %loadMem_40121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121e)
  store %struct.Memory* %call_40121e, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401222	 Bytes: 4
  %loadMem_401222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401222 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401222)
  store %struct.Memory* %call_401222, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401226	 Bytes: 4
  %loadMem_401226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401226 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401226)
  store %struct.Memory* %call_401226, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40122a	 Bytes: 4
  %loadMem_40122a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122a = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122a)
  store %struct.Memory* %call_40122a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40122e	 Bytes: 4
  %loadMem_40122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122e)
  store %struct.Memory* %call_40122e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401232	 Bytes: 4
  %loadMem_401232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401232 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401232)
  store %struct.Memory* %call_401232, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401236	 Bytes: 3
  %loadMem_401236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401236 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401236)
  store %struct.Memory* %call_401236, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401239	 Bytes: 4
  %loadMem_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401239 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401239)
  store %struct.Memory* %call_401239, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40123d	 Bytes: 4
  %loadMem_40123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123d = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123d)
  store %struct.Memory* %call_40123d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401241	 Bytes: 4
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401241 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401241)
  store %struct.Memory* %call_401241, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401245	 Bytes: 4
  %loadMem_401245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401245 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401245)
  store %struct.Memory* %call_401245, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401249	 Bytes: 2
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40124b	 Bytes: 3
  %loadMem_40124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124b)
  store %struct.Memory* %call_40124b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40124e	 Bytes: 3
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124e = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124e)
  store %struct.Memory* %call_40124e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401251	 Bytes: 4
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401251 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401251)
  store %struct.Memory* %call_401251, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401255	 Bytes: 4
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401255 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401255)
  store %struct.Memory* %call_401255, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401259	 Bytes: 2
  %loadMem_401259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401259 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401259)
  store %struct.Memory* %call_401259, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40125b	 Bytes: 3
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125b)
  store %struct.Memory* %call_40125b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40125e	 Bytes: 3
  %loadMem_40125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125e)
  store %struct.Memory* %call_40125e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401261	 Bytes: 2
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401261 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401261)
  store %struct.Memory* %call_401261, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401263	 Bytes: 3
  %loadMem_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401263 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401263)
  store %struct.Memory* %call_401263, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401266	 Bytes: 5
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401266 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401266)
  store %struct.Memory* %call_401266, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40126b	 Bytes: 4
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126b)
  store %struct.Memory* %call_40126b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40126f	 Bytes: 3
  %loadMem_40126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126f)
  store %struct.Memory* %call_40126f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401272	 Bytes: 4
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401276	 Bytes: 4
  %loadMem_401276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401276 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401276)
  store %struct.Memory* %call_401276, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40127a	 Bytes: 4
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40127e	 Bytes: 4
  %loadMem_40127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127e = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127e)
  store %struct.Memory* %call_40127e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401282	 Bytes: 4
  %loadMem_401282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401282 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401282)
  store %struct.Memory* %call_401282, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401286	 Bytes: 4
  %loadMem_401286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401286 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401286)
  store %struct.Memory* %call_401286, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40128a	 Bytes: 3
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40128d	 Bytes: 4
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128d)
  store %struct.Memory* %call_40128d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401291	 Bytes: 4
  %loadMem_401291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401291 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401291)
  store %struct.Memory* %call_401291, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401295	 Bytes: 4
  %loadMem_401295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401295 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401295)
  store %struct.Memory* %call_401295, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401299	 Bytes: 4
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401299 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401299)
  store %struct.Memory* %call_401299, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40129d	 Bytes: 2
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129d)
  store %struct.Memory* %call_40129d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40129f	 Bytes: 3
  %loadMem_40129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129f)
  store %struct.Memory* %call_40129f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4012a2	 Bytes: 3
  %loadMem_4012a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a2 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a2)
  store %struct.Memory* %call_4012a2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4012a5	 Bytes: 4
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a5)
  store %struct.Memory* %call_4012a5, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012a9	 Bytes: 4
  %loadMem_4012a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a9 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a9)
  store %struct.Memory* %call_4012a9, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012ad	 Bytes: 2
  %loadMem_4012ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ad = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ad)
  store %struct.Memory* %call_4012ad, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4012af	 Bytes: 3
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012af = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012af)
  store %struct.Memory* %call_4012af, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4012b2	 Bytes: 3
  %loadMem_4012b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b2 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b2)
  store %struct.Memory* %call_4012b2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012b5	 Bytes: 2
  %loadMem_4012b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b5)
  store %struct.Memory* %call_4012b5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4012b7	 Bytes: 3
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b7)
  store %struct.Memory* %call_4012b7, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 4012ba	 Bytes: 5
  %loadMem_4012ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ba = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ba)
  store %struct.Memory* %call_4012ba, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 4012bf	 Bytes: 4
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4012c3	 Bytes: 4
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4012c7	 Bytes: 4
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c7)
  store %struct.Memory* %call_4012c7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4012cb	 Bytes: 3
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012ce	 Bytes: 4
  %loadMem_4012ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ce = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ce)
  store %struct.Memory* %call_4012ce, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4012d2	 Bytes: 3
  %loadMem_4012d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d2 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d2)
  store %struct.Memory* %call_4012d2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4012d5	 Bytes: 3
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d5 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d5)
  store %struct.Memory* %call_4012d5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012d8	 Bytes: 4
  %loadMem_4012d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d8)
  store %struct.Memory* %call_4012d8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4012dc	 Bytes: 4
  %loadMem_4012dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012dc = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012dc)
  store %struct.Memory* %call_4012dc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012e0	 Bytes: 4
  %loadMem_4012e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e0)
  store %struct.Memory* %call_4012e0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4012e4	 Bytes: 4
  %loadMem_4012e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e4)
  store %struct.Memory* %call_4012e4, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4012e8	 Bytes: 3
  %loadMem_4012e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e8 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e8)
  store %struct.Memory* %call_4012e8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012eb	 Bytes: 4
  %loadMem_4012eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012eb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012eb)
  store %struct.Memory* %call_4012eb, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4012ef	 Bytes: 4
  %loadMem_4012ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ef = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ef)
  store %struct.Memory* %call_4012ef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012f3	 Bytes: 4
  %loadMem_4012f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f3)
  store %struct.Memory* %call_4012f3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012f7	 Bytes: 4
  %loadMem_4012f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f7)
  store %struct.Memory* %call_4012f7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012fb	 Bytes: 2
  %loadMem_4012fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fb)
  store %struct.Memory* %call_4012fb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4012fd	 Bytes: 3
  %loadMem_4012fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fd = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fd)
  store %struct.Memory* %call_4012fd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401300	 Bytes: 4
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401300 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401300)
  store %struct.Memory* %call_401300, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401304	 Bytes: 4
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401304 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401304)
  store %struct.Memory* %call_401304, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401308	 Bytes: 2
  %loadMem_401308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401308 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401308)
  store %struct.Memory* %call_401308, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40130a	 Bytes: 3
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130a = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130a)
  store %struct.Memory* %call_40130a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40130d	 Bytes: 3
  %loadMem_40130d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130d)
  store %struct.Memory* %call_40130d, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401310	 Bytes: 5
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401310 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401310)
  store %struct.Memory* %call_401310, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401315	 Bytes: 4
  %loadMem_401315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401315 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401315)
  store %struct.Memory* %call_401315, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401319	 Bytes: 3
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401319 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401319)
  store %struct.Memory* %call_401319, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40131c	 Bytes: 4
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401320	 Bytes: 4
  %loadMem_401320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401320 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401320)
  store %struct.Memory* %call_401320, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401324	 Bytes: 4
  %loadMem_401324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401324 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401324)
  store %struct.Memory* %call_401324, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401328	 Bytes: 4
  %loadMem_401328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401328 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401328)
  store %struct.Memory* %call_401328, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40132c	 Bytes: 4
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132c)
  store %struct.Memory* %call_40132c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401330	 Bytes: 4
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401330 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401330)
  store %struct.Memory* %call_401330, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401334	 Bytes: 3
  %loadMem_401334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401334 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401334)
  store %struct.Memory* %call_401334, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401337	 Bytes: 3
  %loadMem_401337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401337 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401337)
  store %struct.Memory* %call_401337, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40133a	 Bytes: 4
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133a)
  store %struct.Memory* %call_40133a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40133e	 Bytes: 4
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133e)
  store %struct.Memory* %call_40133e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401342	 Bytes: 4
  %loadMem_401342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401342 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401342)
  store %struct.Memory* %call_401342, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401346	 Bytes: 4
  %loadMem_401346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401346 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401346)
  store %struct.Memory* %call_401346, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40134a	 Bytes: 2
  %loadMem_40134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134a)
  store %struct.Memory* %call_40134a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40134c	 Bytes: 3
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40134f	 Bytes: 4
  %loadMem_40134f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134f)
  store %struct.Memory* %call_40134f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401353	 Bytes: 4
  %loadMem_401353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401353 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401353)
  store %struct.Memory* %call_401353, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401357	 Bytes: 2
  %loadMem_401357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401357 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401357)
  store %struct.Memory* %call_401357, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401359	 Bytes: 3
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401359 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401359)
  store %struct.Memory* %call_401359, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40135c	 Bytes: 3
  %loadMem_40135c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135c = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135c)
  store %struct.Memory* %call_40135c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40135f	 Bytes: 2
  %loadMem_40135f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135f)
  store %struct.Memory* %call_40135f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401361	 Bytes: 3
  %loadMem_401361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401361 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401361)
  store %struct.Memory* %call_401361, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 401364	 Bytes: 5
  %loadMem_401364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401364 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401364)
  store %struct.Memory* %call_401364, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401369	 Bytes: 4
  %loadMem_401369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401369 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401369)
  store %struct.Memory* %call_401369, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40136d	 Bytes: 3
  %loadMem_40136d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136d)
  store %struct.Memory* %call_40136d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401370	 Bytes: 4
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401370 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401370)
  store %struct.Memory* %call_401370, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401374	 Bytes: 4
  %loadMem_401374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401374 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401374)
  store %struct.Memory* %call_401374, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401378	 Bytes: 4
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401378 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401378)
  store %struct.Memory* %call_401378, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40137c	 Bytes: 4
  %loadMem_40137c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137c = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137c)
  store %struct.Memory* %call_40137c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401380	 Bytes: 4
  %loadMem_401380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401380 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401380)
  store %struct.Memory* %call_401380, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401384	 Bytes: 4
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401384 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401384)
  store %struct.Memory* %call_401384, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401388	 Bytes: 3
  %loadMem_401388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401388 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401388)
  store %struct.Memory* %call_401388, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40138b	 Bytes: 3
  %loadMem_40138b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138b)
  store %struct.Memory* %call_40138b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40138e	 Bytes: 4
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138e)
  store %struct.Memory* %call_40138e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401392	 Bytes: 4
  %loadMem_401392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401392 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401392)
  store %struct.Memory* %call_401392, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401396	 Bytes: 4
  %loadMem_401396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401396 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401396)
  store %struct.Memory* %call_401396, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40139a	 Bytes: 4
  %loadMem_40139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139a = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139a)
  store %struct.Memory* %call_40139a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40139e	 Bytes: 2
  %loadMem_40139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139e)
  store %struct.Memory* %call_40139e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4013a0	 Bytes: 3
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a0)
  store %struct.Memory* %call_4013a0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013a3	 Bytes: 4
  %loadMem_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a3)
  store %struct.Memory* %call_4013a3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013a7	 Bytes: 4
  %loadMem_4013a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a7)
  store %struct.Memory* %call_4013a7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013ab	 Bytes: 2
  %loadMem_4013ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ab = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ab)
  store %struct.Memory* %call_4013ab, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4013ad	 Bytes: 3
  %loadMem_4013ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ad = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ad)
  store %struct.Memory* %call_4013ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4013b0	 Bytes: 3
  %loadMem_4013b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b0 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b0)
  store %struct.Memory* %call_4013b0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013b3	 Bytes: 2
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b3 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b3)
  store %struct.Memory* %call_4013b3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4013b5	 Bytes: 3
  %loadMem_4013b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b5)
  store %struct.Memory* %call_4013b5, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4013b8	 Bytes: 5
  %loadMem_4013b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b8 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b8)
  store %struct.Memory* %call_4013b8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4013bd	 Bytes: 4
  %loadMem_4013bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bd)
  store %struct.Memory* %call_4013bd, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4013c1	 Bytes: 3
  %loadMem_4013c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c1)
  store %struct.Memory* %call_4013c1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013c4	 Bytes: 4
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c4)
  store %struct.Memory* %call_4013c4, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4013c8	 Bytes: 4
  %loadMem_4013c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c8 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c8)
  store %struct.Memory* %call_4013c8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013cc	 Bytes: 4
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cc)
  store %struct.Memory* %call_4013cc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4013d0	 Bytes: 4
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d0 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d0)
  store %struct.Memory* %call_4013d0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013d4	 Bytes: 4
  %loadMem_4013d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d4)
  store %struct.Memory* %call_4013d4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4013d8	 Bytes: 4
  %loadMem_4013d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d8 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d8)
  store %struct.Memory* %call_4013d8, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4013dc	 Bytes: 3
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4013df	 Bytes: 3
  %loadMem_4013df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013df = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013df)
  store %struct.Memory* %call_4013df, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013e2	 Bytes: 4
  %loadMem_4013e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e2)
  store %struct.Memory* %call_4013e2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4013e6	 Bytes: 4
  %loadMem_4013e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e6 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e6)
  store %struct.Memory* %call_4013e6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013ea	 Bytes: 4
  %loadMem_4013ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ea = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ea)
  store %struct.Memory* %call_4013ea, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013ee	 Bytes: 4
  %loadMem_4013ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ee = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ee)
  store %struct.Memory* %call_4013ee, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013f2	 Bytes: 2
  %loadMem_4013f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f2)
  store %struct.Memory* %call_4013f2, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4013f4	 Bytes: 3
  %loadMem_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f4 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f4)
  store %struct.Memory* %call_4013f4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013f7	 Bytes: 4
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f7)
  store %struct.Memory* %call_4013f7, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013fb	 Bytes: 4
  %loadMem_4013fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fb = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fb)
  store %struct.Memory* %call_4013fb, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013ff	 Bytes: 2
  %loadMem_4013ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ff = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ff)
  store %struct.Memory* %call_4013ff, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401401	 Bytes: 3
  %loadMem_401401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401401 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401401)
  store %struct.Memory* %call_401401, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401404	 Bytes: 3
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401404 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401404)
  store %struct.Memory* %call_401404, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401407	 Bytes: 2
  %loadMem_401407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401407 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401407)
  store %struct.Memory* %call_401407, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401409	 Bytes: 3
  %loadMem_401409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401409 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401409)
  store %struct.Memory* %call_401409, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 40140c	 Bytes: 5
  %loadMem_40140c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140c = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140c)
  store %struct.Memory* %call_40140c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401411	 Bytes: 4
  %loadMem_401411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401411 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401411)
  store %struct.Memory* %call_401411, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401415	 Bytes: 3
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401415 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401415)
  store %struct.Memory* %call_401415, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401418	 Bytes: 4
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40141c	 Bytes: 4
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141c = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141c)
  store %struct.Memory* %call_40141c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401420	 Bytes: 4
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401420 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401420)
  store %struct.Memory* %call_401420, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401424	 Bytes: 4
  %loadMem_401424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401424 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401424)
  store %struct.Memory* %call_401424, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401428	 Bytes: 4
  %loadMem_401428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401428 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401428)
  store %struct.Memory* %call_401428, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40142c	 Bytes: 4
  %loadMem_40142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142c = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142c)
  store %struct.Memory* %call_40142c, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401430	 Bytes: 3
  %loadMem_401430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401430 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401430)
  store %struct.Memory* %call_401430, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401433	 Bytes: 3
  %loadMem_401433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401433 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401433)
  store %struct.Memory* %call_401433, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401436	 Bytes: 4
  %loadMem_401436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401436 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401436)
  store %struct.Memory* %call_401436, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40143a	 Bytes: 4
  %loadMem_40143a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143a = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143a)
  store %struct.Memory* %call_40143a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40143e	 Bytes: 4
  %loadMem_40143e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143e)
  store %struct.Memory* %call_40143e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401442	 Bytes: 4
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401442 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401442)
  store %struct.Memory* %call_401442, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401446	 Bytes: 2
  %loadMem_401446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401446 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401446)
  store %struct.Memory* %call_401446, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401448	 Bytes: 3
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401448 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401448)
  store %struct.Memory* %call_401448, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40144b	 Bytes: 4
  %loadMem_40144b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144b)
  store %struct.Memory* %call_40144b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40144f	 Bytes: 4
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144f)
  store %struct.Memory* %call_40144f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401453	 Bytes: 2
  %loadMem_401453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401453 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401453)
  store %struct.Memory* %call_401453, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401455	 Bytes: 3
  %loadMem_401455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401455 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401455)
  store %struct.Memory* %call_401455, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401458	 Bytes: 3
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401458 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401458)
  store %struct.Memory* %call_401458, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40145b	 Bytes: 2
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145b)
  store %struct.Memory* %call_40145b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40145d	 Bytes: 3
  %loadMem_40145d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145d)
  store %struct.Memory* %call_40145d, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 401460	 Bytes: 5
  %loadMem_401460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401460 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401460)
  store %struct.Memory* %call_401460, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 401465	 Bytes: 4
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401465 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401465)
  store %struct.Memory* %call_401465, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401469	 Bytes: 4
  %loadMem_401469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401469 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401469)
  store %struct.Memory* %call_401469, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40146d	 Bytes: 4
  %loadMem_40146d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146d)
  store %struct.Memory* %call_40146d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401471	 Bytes: 3
  %loadMem_401471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401471 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401471)
  store %struct.Memory* %call_401471, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401474	 Bytes: 4
  %loadMem_401474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401474 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401474)
  store %struct.Memory* %call_401474, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401478	 Bytes: 4
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401478 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401478)
  store %struct.Memory* %call_401478, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40147c	 Bytes: 4
  %loadMem_40147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147c)
  store %struct.Memory* %call_40147c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401480	 Bytes: 4
  %loadMem_401480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401480 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401480)
  store %struct.Memory* %call_401480, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401484	 Bytes: 4
  %loadMem_401484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401484 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401484)
  store %struct.Memory* %call_401484, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401488	 Bytes: 4
  %loadMem_401488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401488 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401488)
  store %struct.Memory* %call_401488, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40148c	 Bytes: 3
  %loadMem_40148c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148c = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148c)
  store %struct.Memory* %call_40148c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40148f	 Bytes: 4
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148f)
  store %struct.Memory* %call_40148f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401493	 Bytes: 4
  %loadMem_401493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401493 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401493)
  store %struct.Memory* %call_401493, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401497	 Bytes: 4
  %loadMem_401497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401497 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401497)
  store %struct.Memory* %call_401497, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40149b	 Bytes: 4
  %loadMem_40149b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149b)
  store %struct.Memory* %call_40149b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40149f	 Bytes: 2
  %loadMem_40149f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149f)
  store %struct.Memory* %call_40149f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4014a1	 Bytes: 3
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a1 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a1)
  store %struct.Memory* %call_4014a1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4014a4	 Bytes: 4
  %loadMem_4014a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a4)
  store %struct.Memory* %call_4014a4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014a8	 Bytes: 4
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a8)
  store %struct.Memory* %call_4014a8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014ac	 Bytes: 2
  %loadMem_4014ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ac = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ac)
  store %struct.Memory* %call_4014ac, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4014ae	 Bytes: 3
  %loadMem_4014ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ae = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ae)
  store %struct.Memory* %call_4014ae, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4014b1	 Bytes: 3
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b1)
  store %struct.Memory* %call_4014b1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4014b4	 Bytes: 5
  %loadMem_4014b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b4 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b4)
  store %struct.Memory* %call_4014b4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4014b9	 Bytes: 4
  %loadMem_4014b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b9)
  store %struct.Memory* %call_4014b9, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4014bd	 Bytes: 3
  %loadMem_4014bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bd = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bd)
  store %struct.Memory* %call_4014bd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014c0	 Bytes: 4
  %loadMem_4014c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c0)
  store %struct.Memory* %call_4014c0, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4014c4	 Bytes: 4
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c4 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c4)
  store %struct.Memory* %call_4014c4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014c8	 Bytes: 4
  %loadMem_4014c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c8)
  store %struct.Memory* %call_4014c8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4014cc	 Bytes: 4
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014d0	 Bytes: 4
  %loadMem_4014d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d0)
  store %struct.Memory* %call_4014d0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4014d4	 Bytes: 4
  %loadMem_4014d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d4)
  store %struct.Memory* %call_4014d4, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4014d8	 Bytes: 3
  %loadMem_4014d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d8 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d8)
  store %struct.Memory* %call_4014d8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4014db	 Bytes: 3
  %loadMem_4014db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014db = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014db)
  store %struct.Memory* %call_4014db, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014de	 Bytes: 4
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014de = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014de)
  store %struct.Memory* %call_4014de, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4014e2	 Bytes: 4
  %loadMem_4014e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e2 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e2)
  store %struct.Memory* %call_4014e2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014e6	 Bytes: 4
  %loadMem_4014e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e6)
  store %struct.Memory* %call_4014e6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014ea	 Bytes: 4
  %loadMem_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ea = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ea)
  store %struct.Memory* %call_4014ea, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014ee	 Bytes: 2
  %loadMem_4014ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ee = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ee)
  store %struct.Memory* %call_4014ee, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4014f0	 Bytes: 3
  %loadMem_4014f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f0)
  store %struct.Memory* %call_4014f0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014f3	 Bytes: 4
  %loadMem_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f3)
  store %struct.Memory* %call_4014f3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014f7	 Bytes: 4
  %loadMem_4014f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f7)
  store %struct.Memory* %call_4014f7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014fb	 Bytes: 2
  %loadMem_4014fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fb)
  store %struct.Memory* %call_4014fb, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4014fd	 Bytes: 3
  %loadMem_4014fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fd = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fd)
  store %struct.Memory* %call_4014fd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401500	 Bytes: 3
  %loadMem_401500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401500 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401500)
  store %struct.Memory* %call_401500, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401503	 Bytes: 5
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401508	 Bytes: 4
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401508 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401508)
  store %struct.Memory* %call_401508, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40150c	 Bytes: 4
  %loadMem_40150c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150c)
  store %struct.Memory* %call_40150c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401510	 Bytes: 3
  %loadMem_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401510 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401510)
  store %struct.Memory* %call_401510, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401513	 Bytes: 4
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401513 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401513)
  store %struct.Memory* %call_401513, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 401517	 Bytes: 3
  %loadMem_401517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401517 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401517)
  store %struct.Memory* %call_401517, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 40151a	 Bytes: 3
  %loadMem_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151a = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151a)
  store %struct.Memory* %call_40151a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40151d	 Bytes: 4
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151d)
  store %struct.Memory* %call_40151d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401521	 Bytes: 4
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401521 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401521)
  store %struct.Memory* %call_401521, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401525	 Bytes: 4
  %loadMem_401525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401525 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401525)
  store %struct.Memory* %call_401525, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401529	 Bytes: 4
  %loadMem_401529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401529 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401529)
  store %struct.Memory* %call_401529, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40152d	 Bytes: 3
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152d)
  store %struct.Memory* %call_40152d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401530	 Bytes: 4
  %loadMem_401530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401530 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401530)
  store %struct.Memory* %call_401530, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401534	 Bytes: 4
  %loadMem_401534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401534 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401534)
  store %struct.Memory* %call_401534, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401538	 Bytes: 4
  %loadMem_401538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401538 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401538)
  store %struct.Memory* %call_401538, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40153c	 Bytes: 4
  %loadMem_40153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153c)
  store %struct.Memory* %call_40153c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401540	 Bytes: 2
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401542	 Bytes: 3
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401542 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401542)
  store %struct.Memory* %call_401542, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401545	 Bytes: 4
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401545 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401545)
  store %struct.Memory* %call_401545, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401549	 Bytes: 4
  %loadMem_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401549 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401549)
  store %struct.Memory* %call_401549, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40154d	 Bytes: 2
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154d)
  store %struct.Memory* %call_40154d, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40154f	 Bytes: 3
  %loadMem_40154f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154f = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154f)
  store %struct.Memory* %call_40154f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401552	 Bytes: 3
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401552 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401552)
  store %struct.Memory* %call_401552, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401555	 Bytes: 5
  %loadMem_401555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401555 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401555)
  store %struct.Memory* %call_401555, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40155a	 Bytes: 4
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155a)
  store %struct.Memory* %call_40155a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40155e	 Bytes: 3
  %loadMem_40155e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155e)
  store %struct.Memory* %call_40155e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401561	 Bytes: 4
  %loadMem_401561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401561 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401561)
  store %struct.Memory* %call_401561, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401565	 Bytes: 4
  %loadMem_401565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401565 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401565)
  store %struct.Memory* %call_401565, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401569	 Bytes: 4
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40156d	 Bytes: 4
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156d = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156d)
  store %struct.Memory* %call_40156d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401571	 Bytes: 4
  %loadMem_401571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401571 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401571)
  store %struct.Memory* %call_401571, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401575	 Bytes: 4
  %loadMem_401575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401575 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401575)
  store %struct.Memory* %call_401575, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401579	 Bytes: 3
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40157c	 Bytes: 4
  %loadMem_40157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157c)
  store %struct.Memory* %call_40157c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401580	 Bytes: 4
  %loadMem_401580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401580 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401580)
  store %struct.Memory* %call_401580, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401584	 Bytes: 4
  %loadMem_401584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401584 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401584)
  store %struct.Memory* %call_401584, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401588	 Bytes: 4
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401588 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401588)
  store %struct.Memory* %call_401588, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40158c	 Bytes: 2
  %loadMem_40158c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158c)
  store %struct.Memory* %call_40158c, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40158e	 Bytes: 3
  %loadMem_40158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158e)
  store %struct.Memory* %call_40158e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401591	 Bytes: 3
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401591 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401591)
  store %struct.Memory* %call_401591, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401594	 Bytes: 4
  %loadMem_401594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401594 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401594)
  store %struct.Memory* %call_401594, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401598	 Bytes: 4
  %loadMem_401598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401598 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401598)
  store %struct.Memory* %call_401598, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40159c	 Bytes: 2
  %loadMem_40159c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159c)
  store %struct.Memory* %call_40159c, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40159e	 Bytes: 3
  %loadMem_40159e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159e = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159e)
  store %struct.Memory* %call_40159e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4015a1	 Bytes: 3
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4015a4	 Bytes: 5
  %loadMem_4015a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a4 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a4)
  store %struct.Memory* %call_4015a4, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4015a9	 Bytes: 4
  %loadMem_4015a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a9 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a9)
  store %struct.Memory* %call_4015a9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4015ad	 Bytes: 4
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ad = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ad)
  store %struct.Memory* %call_4015ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4015b1	 Bytes: 3
  %loadMem_4015b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b1)
  store %struct.Memory* %call_4015b1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015b4	 Bytes: 4
  %loadMem_4015b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b4)
  store %struct.Memory* %call_4015b4, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4015b8	 Bytes: 3
  %loadMem_4015b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b8 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b8)
  store %struct.Memory* %call_4015b8, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4015bb	 Bytes: 3
  %loadMem_4015bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bb = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bb)
  store %struct.Memory* %call_4015bb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015be	 Bytes: 4
  %loadMem_4015be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015be = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015be)
  store %struct.Memory* %call_4015be, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4015c2	 Bytes: 4
  %loadMem_4015c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c2 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c2)
  store %struct.Memory* %call_4015c2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015c6	 Bytes: 4
  %loadMem_4015c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c6)
  store %struct.Memory* %call_4015c6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4015ca	 Bytes: 4
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ca = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ca)
  store %struct.Memory* %call_4015ca, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4015ce	 Bytes: 3
  %loadMem_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ce = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ce)
  store %struct.Memory* %call_4015ce, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015d1	 Bytes: 4
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4015d5	 Bytes: 4
  %loadMem_4015d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d5 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d5)
  store %struct.Memory* %call_4015d5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015d9	 Bytes: 4
  %loadMem_4015d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d9)
  store %struct.Memory* %call_4015d9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015dd	 Bytes: 4
  %loadMem_4015dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015dd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015dd)
  store %struct.Memory* %call_4015dd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015e1	 Bytes: 2
  %loadMem_4015e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e1)
  store %struct.Memory* %call_4015e1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4015e3	 Bytes: 3
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e3 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e3)
  store %struct.Memory* %call_4015e3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015e6	 Bytes: 4
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015ea	 Bytes: 4
  %loadMem_4015ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ea = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ea)
  store %struct.Memory* %call_4015ea, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015ee	 Bytes: 2
  %loadMem_4015ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ee = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ee)
  store %struct.Memory* %call_4015ee, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4015f0	 Bytes: 3
  %loadMem_4015f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f0 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f0)
  store %struct.Memory* %call_4015f0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4015f3	 Bytes: 3
  %loadMem_4015f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f3)
  store %struct.Memory* %call_4015f3, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4015f6	 Bytes: 5
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f6)
  store %struct.Memory* %call_4015f6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4015fb	 Bytes: 4
  %loadMem_4015fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fb)
  store %struct.Memory* %call_4015fb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4015ff	 Bytes: 3
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401602	 Bytes: 4
  %loadMem_401602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401602 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401602)
  store %struct.Memory* %call_401602, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401606	 Bytes: 4
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40160a	 Bytes: 4
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160a)
  store %struct.Memory* %call_40160a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40160e	 Bytes: 4
  %loadMem_40160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160e = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160e)
  store %struct.Memory* %call_40160e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401612	 Bytes: 4
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401612 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401612)
  store %struct.Memory* %call_401612, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401616	 Bytes: 4
  %loadMem_401616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401616 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401616)
  store %struct.Memory* %call_401616, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40161a	 Bytes: 3
  %loadMem_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161a)
  store %struct.Memory* %call_40161a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40161d	 Bytes: 4
  %loadMem_40161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161d)
  store %struct.Memory* %call_40161d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401621	 Bytes: 4
  %loadMem_401621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401621 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401621)
  store %struct.Memory* %call_401621, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401625	 Bytes: 4
  %loadMem_401625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401625 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401625)
  store %struct.Memory* %call_401625, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401629	 Bytes: 4
  %loadMem_401629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401629 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401629)
  store %struct.Memory* %call_401629, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40162d	 Bytes: 2
  %loadMem_40162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162d)
  store %struct.Memory* %call_40162d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40162f	 Bytes: 3
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401632	 Bytes: 4
  %loadMem_401632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401632 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401632)
  store %struct.Memory* %call_401632, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401636	 Bytes: 4
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40163a	 Bytes: 2
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163a)
  store %struct.Memory* %call_40163a, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40163c	 Bytes: 3
  %loadMem_40163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163c)
  store %struct.Memory* %call_40163c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40163f	 Bytes: 3
  %loadMem_40163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163f = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163f)
  store %struct.Memory* %call_40163f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401642	 Bytes: 2
  %loadMem_401642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401642 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401642)
  store %struct.Memory* %call_401642, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401644	 Bytes: 3
  %loadMem_401644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401644 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401644)
  store %struct.Memory* %call_401644, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401647	 Bytes: 5
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40164c	 Bytes: 4
  %loadMem_40164c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164c = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164c)
  store %struct.Memory* %call_40164c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401650	 Bytes: 4
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401654	 Bytes: 3
  %loadMem_401654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401654 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401654)
  store %struct.Memory* %call_401654, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401657	 Bytes: 4
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40165b	 Bytes: 4
  %loadMem_40165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165b)
  store %struct.Memory* %call_40165b, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40165f	 Bytes: 4
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165f)
  store %struct.Memory* %call_40165f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401663	 Bytes: 4
  %loadMem_401663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401663 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401663)
  store %struct.Memory* %call_401663, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401667	 Bytes: 4
  %loadMem_401667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401667 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401667)
  store %struct.Memory* %call_401667, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40166b	 Bytes: 4
  %loadMem_40166b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166b)
  store %struct.Memory* %call_40166b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40166f	 Bytes: 3
  %loadMem_40166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166f)
  store %struct.Memory* %call_40166f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401672	 Bytes: 4
  %loadMem_401672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401672 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401672)
  store %struct.Memory* %call_401672, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401676	 Bytes: 4
  %loadMem_401676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401676 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401676)
  store %struct.Memory* %call_401676, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40167a	 Bytes: 4
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167a)
  store %struct.Memory* %call_40167a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40167e	 Bytes: 4
  %loadMem_40167e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167e)
  store %struct.Memory* %call_40167e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401682	 Bytes: 2
  %loadMem_401682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401682 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401682)
  store %struct.Memory* %call_401682, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401684	 Bytes: 3
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401687	 Bytes: 4
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40168b	 Bytes: 4
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40168f	 Bytes: 2
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168f)
  store %struct.Memory* %call_40168f, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401691	 Bytes: 3
  %loadMem_401691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401691 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401691)
  store %struct.Memory* %call_401691, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401694	 Bytes: 3
  %loadMem_401694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401694 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401694)
  store %struct.Memory* %call_401694, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm0	 RIP: 401697	 Bytes: 5
  %loadMem_401697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401697 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401697)
  store %struct.Memory* %call_401697, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x64(%rbp)	 RIP: 40169c	 Bytes: 5
  %loadMem_40169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169c = call %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169c)
  store %struct.Memory* %call_40169c, %struct.Memory** %MEMORY

  ; Code: movss -0x64(%rbp), %xmm0	 RIP: 4016a1	 Bytes: 5
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a1 = call %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a1)
  store %struct.Memory* %call_4016a1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4016a6	 Bytes: 4
  %loadMem_4016a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a6)
  store %struct.Memory* %call_4016a6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4016aa	 Bytes: 3
  %loadMem_4016aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016aa = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016aa)
  store %struct.Memory* %call_4016aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016ad	 Bytes: 4
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ad)
  store %struct.Memory* %call_4016ad, %struct.Memory** %MEMORY

  ; Code: imull $0x3, 0xc(%rcx), %edx	 RIP: 4016b1	 Bytes: 4
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016b5	 Bytes: 4
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b5)
  store %struct.Memory* %call_4016b5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4016b9	 Bytes: 4
  %loadMem_4016b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b9 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b9)
  store %struct.Memory* %call_4016b9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016bd	 Bytes: 4
  %loadMem_4016bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bd)
  store %struct.Memory* %call_4016bd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4016c1	 Bytes: 4
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c1 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c1)
  store %struct.Memory* %call_4016c1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4016c5	 Bytes: 3
  %loadMem_4016c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c5)
  store %struct.Memory* %call_4016c5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016c8	 Bytes: 4
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4016cc	 Bytes: 4
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cc = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cc)
  store %struct.Memory* %call_4016cc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016d0	 Bytes: 4
  %loadMem_4016d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d0)
  store %struct.Memory* %call_4016d0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016d4	 Bytes: 4
  %loadMem_4016d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d4)
  store %struct.Memory* %call_4016d4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016d8	 Bytes: 2
  %loadMem_4016d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d8)
  store %struct.Memory* %call_4016d8, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4016da	 Bytes: 3
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016dd	 Bytes: 4
  %loadMem_4016dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016dd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016dd)
  store %struct.Memory* %call_4016dd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016e1	 Bytes: 4
  %loadMem_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e1)
  store %struct.Memory* %call_4016e1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016e5	 Bytes: 2
  %loadMem_4016e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e5)
  store %struct.Memory* %call_4016e5, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4016e7	 Bytes: 3
  %loadMem_4016e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e7 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e7)
  store %struct.Memory* %call_4016e7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4016ea	 Bytes: 3
  %loadMem_4016ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ea = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ea)
  store %struct.Memory* %call_4016ea, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 4016ed	 Bytes: 5
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4016f2	 Bytes: 4
  %loadMem_4016f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f2)
  store %struct.Memory* %call_4016f2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4016f6	 Bytes: 3
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f6)
  store %struct.Memory* %call_4016f6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016f9	 Bytes: 4
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f9)
  store %struct.Memory* %call_4016f9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4016fd	 Bytes: 4
  %loadMem_4016fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fd = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fd)
  store %struct.Memory* %call_4016fd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401701	 Bytes: 4
  %loadMem_401701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401701 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401701)
  store %struct.Memory* %call_401701, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401705	 Bytes: 4
  %loadMem_401705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401705 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401705)
  store %struct.Memory* %call_401705, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401709	 Bytes: 4
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401709 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401709)
  store %struct.Memory* %call_401709, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40170d	 Bytes: 4
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170d = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170d)
  store %struct.Memory* %call_40170d, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401711	 Bytes: 3
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401711 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401711)
  store %struct.Memory* %call_401711, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401714	 Bytes: 4
  %loadMem_401714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401714 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401714)
  store %struct.Memory* %call_401714, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401718	 Bytes: 4
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401718 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401718)
  store %struct.Memory* %call_401718, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40171c	 Bytes: 4
  %loadMem_40171c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171c)
  store %struct.Memory* %call_40171c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401720	 Bytes: 4
  %loadMem_401720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401720 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401720)
  store %struct.Memory* %call_401720, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401724	 Bytes: 2
  %loadMem_401724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401724 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401724)
  store %struct.Memory* %call_401724, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401726	 Bytes: 3
  %loadMem_401726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401726 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401726)
  store %struct.Memory* %call_401726, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401729	 Bytes: 4
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40172d	 Bytes: 4
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172d)
  store %struct.Memory* %call_40172d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401731	 Bytes: 2
  %loadMem_401731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401731 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401731)
  store %struct.Memory* %call_401731, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401733	 Bytes: 3
  %loadMem_401733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401733 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401733)
  store %struct.Memory* %call_401733, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401736	 Bytes: 3
  %loadMem_401736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401736 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401736)
  store %struct.Memory* %call_401736, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm0	 RIP: 401739	 Bytes: 5
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40173e	 Bytes: 4
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173e)
  store %struct.Memory* %call_40173e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401742	 Bytes: 3
  %loadMem_401742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401742 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401742)
  store %struct.Memory* %call_401742, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401745	 Bytes: 4
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401749	 Bytes: 4
  %loadMem_401749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401749 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401749)
  store %struct.Memory* %call_401749, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40174d	 Bytes: 4
  %loadMem_40174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174d)
  store %struct.Memory* %call_40174d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401751	 Bytes: 4
  %loadMem_401751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401751 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401751)
  store %struct.Memory* %call_401751, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401755	 Bytes: 4
  %loadMem_401755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401755 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401755)
  store %struct.Memory* %call_401755, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401759	 Bytes: 4
  %loadMem_401759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401759 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401759)
  store %struct.Memory* %call_401759, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40175d	 Bytes: 3
  %loadMem_40175d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175d)
  store %struct.Memory* %call_40175d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401760	 Bytes: 4
  %loadMem_401760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401760 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401760)
  store %struct.Memory* %call_401760, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401764	 Bytes: 4
  %loadMem_401764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401764 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401764)
  store %struct.Memory* %call_401764, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401768	 Bytes: 4
  %loadMem_401768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401768 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401768)
  store %struct.Memory* %call_401768, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40176c	 Bytes: 4
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176c)
  store %struct.Memory* %call_40176c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401770	 Bytes: 2
  %loadMem_401770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401770 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401770)
  store %struct.Memory* %call_401770, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401772	 Bytes: 3
  %loadMem_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401772 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401772)
  store %struct.Memory* %call_401772, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401775	 Bytes: 4
  %loadMem_401775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401775 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401775)
  store %struct.Memory* %call_401775, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401779	 Bytes: 4
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40177d	 Bytes: 2
  %loadMem_40177d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177d)
  store %struct.Memory* %call_40177d, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40177f	 Bytes: 3
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177f = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177f)
  store %struct.Memory* %call_40177f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401782	 Bytes: 3
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401782 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401782)
  store %struct.Memory* %call_401782, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 401785	 Bytes: 5
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401785 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401785)
  store %struct.Memory* %call_401785, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x68(%rbp)	 RIP: 40178a	 Bytes: 5
  %loadMem_40178a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178a = call %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178a)
  store %struct.Memory* %call_40178a, %struct.Memory** %MEMORY

  ; Code: movss -0x68(%rbp), %xmm0	 RIP: 40178f	 Bytes: 5
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178f = call %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178f)
  store %struct.Memory* %call_40178f, %struct.Memory** %MEMORY

  ; Code: mulss -0x68(%rbp), %xmm0	 RIP: 401794	 Bytes: 5
  %loadMem_401794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401794 = call %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401794)
  store %struct.Memory* %call_401794, %struct.Memory** %MEMORY

  ; Code: addss -0x60(%rbp), %xmm0	 RIP: 401799	 Bytes: 5
  %loadMem_401799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401799 = call %struct.Memory* @routine_addss_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401799)
  store %struct.Memory* %call_401799, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x60(%rbp)	 RIP: 40179e	 Bytes: 5
  %loadMem_40179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179e = call %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179e)
  store %struct.Memory* %call_40179e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4017a3	 Bytes: 4
  %loadMem_4017a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a3)
  store %struct.Memory* %call_4017a3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4017a7	 Bytes: 3
  %loadMem_4017a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a7)
  store %struct.Memory* %call_4017a7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017aa	 Bytes: 4
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4017ae	 Bytes: 4
  %loadMem_4017ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ae = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ae)
  store %struct.Memory* %call_4017ae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017b2	 Bytes: 4
  %loadMem_4017b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b2)
  store %struct.Memory* %call_4017b2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4017b6	 Bytes: 4
  %loadMem_4017b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b6 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b6)
  store %struct.Memory* %call_4017b6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017ba	 Bytes: 4
  %loadMem_4017ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ba = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ba)
  store %struct.Memory* %call_4017ba, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4017be	 Bytes: 4
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017be = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017be)
  store %struct.Memory* %call_4017be, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4017c2	 Bytes: 3
  %loadMem_4017c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c2 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c2)
  store %struct.Memory* %call_4017c2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017c5	 Bytes: 4
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4017c9	 Bytes: 4
  %loadMem_4017c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c9 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c9)
  store %struct.Memory* %call_4017c9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017cd	 Bytes: 4
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cd)
  store %struct.Memory* %call_4017cd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017d1	 Bytes: 4
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017d5	 Bytes: 2
  %loadMem_4017d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d5)
  store %struct.Memory* %call_4017d5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4017d7	 Bytes: 3
  %loadMem_4017d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d7)
  store %struct.Memory* %call_4017d7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017da	 Bytes: 4
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017da = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017da)
  store %struct.Memory* %call_4017da, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017de	 Bytes: 4
  %loadMem_4017de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017de = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017de)
  store %struct.Memory* %call_4017de, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017e2	 Bytes: 2
  %loadMem_4017e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e2)
  store %struct.Memory* %call_4017e2, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4017e4	 Bytes: 3
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e4 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e4)
  store %struct.Memory* %call_4017e4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4017e7	 Bytes: 3
  %loadMem_4017e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e7)
  store %struct.Memory* %call_4017e7, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4017ea	 Bytes: 5
  %loadMem_4017ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ea = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ea)
  store %struct.Memory* %call_4017ea, %struct.Memory** %MEMORY

  ; Code: movss 0x603058, %xmm1	 RIP: 4017ef	 Bytes: 9
  %loadMem_4017ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ef = call %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ef)
  store %struct.Memory* %call_4017ef, %struct.Memory** %MEMORY

  ; Code: mulss -0x68(%rbp), %xmm1	 RIP: 4017f8	 Bytes: 5
  %loadMem_4017f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f8 = call %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f8)
  store %struct.Memory* %call_4017f8, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4017fd	 Bytes: 4
  %loadMem_4017fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fd = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fd)
  store %struct.Memory* %call_4017fd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 401801	 Bytes: 4
  %loadMem_401801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401801 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401801)
  store %struct.Memory* %call_401801, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401805	 Bytes: 3
  %loadMem_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401805 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401805)
  store %struct.Memory* %call_401805, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401808	 Bytes: 4
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40180c	 Bytes: 4
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180c = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180c)
  store %struct.Memory* %call_40180c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401810	 Bytes: 4
  %loadMem_401810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401810 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401810)
  store %struct.Memory* %call_401810, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401814	 Bytes: 4
  %loadMem_401814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401814 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401814)
  store %struct.Memory* %call_401814, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401818	 Bytes: 4
  %loadMem_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401818 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401818)
  store %struct.Memory* %call_401818, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40181c	 Bytes: 4
  %loadMem_40181c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181c = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181c)
  store %struct.Memory* %call_40181c, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401820	 Bytes: 3
  %loadMem_401820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401820 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401820)
  store %struct.Memory* %call_401820, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401823	 Bytes: 4
  %loadMem_401823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401823 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401823)
  store %struct.Memory* %call_401823, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401827	 Bytes: 4
  %loadMem_401827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401827 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401827)
  store %struct.Memory* %call_401827, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40182b	 Bytes: 4
  %loadMem_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182b)
  store %struct.Memory* %call_40182b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40182f	 Bytes: 4
  %loadMem_40182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182f)
  store %struct.Memory* %call_40182f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401833	 Bytes: 2
  %loadMem_401833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401833 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401833)
  store %struct.Memory* %call_401833, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401835	 Bytes: 3
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401838	 Bytes: 4
  %loadMem_401838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401838 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401838)
  store %struct.Memory* %call_401838, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40183c	 Bytes: 4
  %loadMem_40183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183c)
  store %struct.Memory* %call_40183c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401840	 Bytes: 2
  %loadMem_401840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401840 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401840)
  store %struct.Memory* %call_401840, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401842	 Bytes: 3
  %loadMem_401842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401842 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401842)
  store %struct.Memory* %call_401842, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401845	 Bytes: 3
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 401848	 Bytes: 5
  %loadMem_401848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401848 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401848)
  store %struct.Memory* %call_401848, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40184d	 Bytes: 3
  %loadMem_40184d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184d)
  store %struct.Memory* %call_40184d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401850	 Bytes: 3
  %loadMem_401850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401850 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401850)
  store %struct.Memory* %call_401850, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 401853	 Bytes: 3
  %loadMem_401853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401853 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401853)
  store %struct.Memory* %call_401853, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d9a	 RIP: 401856	 Bytes: 5
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401856 = call %struct.Memory* @routine_jmpq_.L_400d9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401856, i64 -2748, i64 5)
  store %struct.Memory* %call_401856, %struct.Memory** %MEMORY

  br label %block_.L_400d9a

  ; Code: .L_40185b:	 RIP: 40185b	 Bytes: 0
block_.L_40185b:

  ; Code: jmpq .L_401860	 RIP: 40185b	 Bytes: 5
  %loadMem_40185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185b = call %struct.Memory* @routine_jmpq_.L_401860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185b, i64 5, i64 5)
  store %struct.Memory* %call_40185b, %struct.Memory** %MEMORY

  br label %block_.L_401860

  ; Code: .L_401860:	 RIP: 401860	 Bytes: 0
block_.L_401860:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 401860	 Bytes: 3
  %loadMem_401860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401860 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401860)
  store %struct.Memory* %call_401860, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401863	 Bytes: 3
  %loadMem_401863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401863 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401863)
  store %struct.Memory* %call_401863, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 401866	 Bytes: 3
  %loadMem_401866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401866 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401866)
  store %struct.Memory* %call_401866, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d87	 RIP: 401869	 Bytes: 5
  %loadMem_401869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401869 = call %struct.Memory* @routine_jmpq_.L_400d87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401869, i64 -2786, i64 5)
  store %struct.Memory* %call_401869, %struct.Memory** %MEMORY

  br label %block_.L_400d87

  ; Code: .L_40186e:	 RIP: 40186e	 Bytes: 0
block_.L_40186e:

  ; Code: jmpq .L_401873	 RIP: 40186e	 Bytes: 5
  %loadMem_40186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186e = call %struct.Memory* @routine_jmpq_.L_401873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186e, i64 5, i64 5)
  store %struct.Memory* %call_40186e, %struct.Memory** %MEMORY

  br label %block_.L_401873

  ; Code: .L_401873:	 RIP: 401873	 Bytes: 0
block_.L_401873:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401873	 Bytes: 3
  %loadMem_401873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401873 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401873)
  store %struct.Memory* %call_401873, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401876	 Bytes: 3
  %loadMem_401876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401876 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401876)
  store %struct.Memory* %call_401876, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 401879	 Bytes: 3
  %loadMem_401879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401879 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401879)
  store %struct.Memory* %call_401879, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d74	 RIP: 40187c	 Bytes: 5
  %loadMem_40187c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187c = call %struct.Memory* @routine_jmpq_.L_400d74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187c, i64 -2824, i64 5)
  store %struct.Memory* %call_40187c, %struct.Memory** %MEMORY

  br label %block_.L_400d74

  ; Code: .L_401881:	 RIP: 401881	 Bytes: 0
block_.L_401881:

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 401881	 Bytes: 7
  %loadMem_401881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401881 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401881)
  store %struct.Memory* %call_401881, %struct.Memory** %MEMORY

  ; Code: .L_401888:	 RIP: 401888	 Bytes: 0
  br label %block_.L_401888
block_.L_401888:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401888	 Bytes: 3
  %loadMem_401888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401888 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401888)
  store %struct.Memory* %call_401888, %struct.Memory** %MEMORY

  ; Code: cmpl -0x54(%rbp), %eax	 RIP: 40188b	 Bytes: 3
  %loadMem_40188b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188b = call %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188b)
  store %struct.Memory* %call_40188b, %struct.Memory** %MEMORY

  ; Code: jge .L_401986	 RIP: 40188e	 Bytes: 6
  %loadMem_40188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188e = call %struct.Memory* @routine_jge_.L_401986(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188e, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_40188e, %struct.Memory** %MEMORY

  %loadBr_40188e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40188e = icmp eq i8 %loadBr_40188e, 1
  br i1 %cmpBr_40188e, label %block_.L_401986, label %block_401894

block_401894:
  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 401894	 Bytes: 7
  %loadMem_401894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401894 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401894)
  store %struct.Memory* %call_401894, %struct.Memory** %MEMORY

  ; Code: .L_40189b:	 RIP: 40189b	 Bytes: 0
  br label %block_.L_40189b
block_.L_40189b:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 40189b	 Bytes: 3
  %loadMem_40189b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189b)
  store %struct.Memory* %call_40189b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x58(%rbp), %eax	 RIP: 40189e	 Bytes: 3
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189e = call %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189e)
  store %struct.Memory* %call_40189e, %struct.Memory** %MEMORY

  ; Code: jge .L_401973	 RIP: 4018a1	 Bytes: 6
  %loadMem_4018a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a1 = call %struct.Memory* @routine_jge_.L_401973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a1, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_4018a1, %struct.Memory** %MEMORY

  %loadBr_4018a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018a1 = icmp eq i8 %loadBr_4018a1, 1
  br i1 %cmpBr_4018a1, label %block_.L_401973, label %block_4018a7

block_4018a7:
  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 4018a7	 Bytes: 7
  %loadMem_4018a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a7 = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a7)
  store %struct.Memory* %call_4018a7, %struct.Memory** %MEMORY

  ; Code: .L_4018ae:	 RIP: 4018ae	 Bytes: 0
  br label %block_.L_4018ae
block_.L_4018ae:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 4018ae	 Bytes: 3
  %loadMem_4018ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ae = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ae)
  store %struct.Memory* %call_4018ae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 4018b1	 Bytes: 3
  %loadMem_4018b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b1 = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b1)
  store %struct.Memory* %call_4018b1, %struct.Memory** %MEMORY

  ; Code: jge .L_401960	 RIP: 4018b4	 Bytes: 6
  %loadMem_4018b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b4 = call %struct.Memory* @routine_jge_.L_401960(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b4, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4018b4, %struct.Memory** %MEMORY

  %loadBr_4018b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018b4 = icmp eq i8 %loadBr_4018b4, 1
  br i1 %cmpBr_4018b4, label %block_.L_401960, label %block_4018ba

block_4018ba:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 4018ba	 Bytes: 4
  %loadMem_4018ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ba = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ba)
  store %struct.Memory* %call_4018ba, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4018be	 Bytes: 3
  %loadMem_4018be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018be = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018be)
  store %struct.Memory* %call_4018be, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018c1	 Bytes: 4
  %loadMem_4018c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c1)
  store %struct.Memory* %call_4018c1, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4018c5	 Bytes: 4
  %loadMem_4018c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c5 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c5)
  store %struct.Memory* %call_4018c5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018c9	 Bytes: 4
  %loadMem_4018c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c9 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c9)
  store %struct.Memory* %call_4018c9, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4018cd	 Bytes: 4
  %loadMem_4018cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cd = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cd)
  store %struct.Memory* %call_4018cd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018d1	 Bytes: 4
  %loadMem_4018d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d1)
  store %struct.Memory* %call_4018d1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4018d5	 Bytes: 4
  %loadMem_4018d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d5 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d5)
  store %struct.Memory* %call_4018d5, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4018d9	 Bytes: 3
  %loadMem_4018d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d9 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d9)
  store %struct.Memory* %call_4018d9, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018dc	 Bytes: 4
  %loadMem_4018dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dc = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dc)
  store %struct.Memory* %call_4018dc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4018e0	 Bytes: 4
  %loadMem_4018e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e0)
  store %struct.Memory* %call_4018e0, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018e4	 Bytes: 4
  %loadMem_4018e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e4)
  store %struct.Memory* %call_4018e4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018e8	 Bytes: 4
  %loadMem_4018e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e8)
  store %struct.Memory* %call_4018e8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018ec	 Bytes: 2
  %loadMem_4018ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ec = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ec)
  store %struct.Memory* %call_4018ec, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4018ee	 Bytes: 3
  %loadMem_4018ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ee = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ee)
  store %struct.Memory* %call_4018ee, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018f1	 Bytes: 4
  %loadMem_4018f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f1)
  store %struct.Memory* %call_4018f1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018f5	 Bytes: 4
  %loadMem_4018f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f5 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f5)
  store %struct.Memory* %call_4018f5, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018f9	 Bytes: 2
  %loadMem_4018f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f9)
  store %struct.Memory* %call_4018f9, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4018fb	 Bytes: 3
  %loadMem_4018fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fb = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fb)
  store %struct.Memory* %call_4018fb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4018fe	 Bytes: 3
  %loadMem_4018fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fe = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fe)
  store %struct.Memory* %call_4018fe, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 401901	 Bytes: 5
  %loadMem_401901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401901 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401901)
  store %struct.Memory* %call_401901, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401906	 Bytes: 4
  %loadMem_401906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401906 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401906)
  store %struct.Memory* %call_401906, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40190a	 Bytes: 3
  %loadMem_40190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190a)
  store %struct.Memory* %call_40190a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40190d	 Bytes: 4
  %loadMem_40190d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190d)
  store %struct.Memory* %call_40190d, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401911	 Bytes: 4
  %loadMem_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401911 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401911)
  store %struct.Memory* %call_401911, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401915	 Bytes: 4
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401915 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401915)
  store %struct.Memory* %call_401915, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401919	 Bytes: 4
  %loadMem_401919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401919 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401919)
  store %struct.Memory* %call_401919, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40191d	 Bytes: 4
  %loadMem_40191d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191d)
  store %struct.Memory* %call_40191d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401921	 Bytes: 4
  %loadMem_401921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401921 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401921)
  store %struct.Memory* %call_401921, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401925	 Bytes: 3
  %loadMem_401925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401925 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401925)
  store %struct.Memory* %call_401925, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401928	 Bytes: 4
  %loadMem_401928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401928 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401928)
  store %struct.Memory* %call_401928, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40192c	 Bytes: 4
  %loadMem_40192c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192c)
  store %struct.Memory* %call_40192c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401930	 Bytes: 4
  %loadMem_401930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401930 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401930)
  store %struct.Memory* %call_401930, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401934	 Bytes: 4
  %loadMem_401934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401934 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401934)
  store %struct.Memory* %call_401934, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401938	 Bytes: 2
  %loadMem_401938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401938 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401938)
  store %struct.Memory* %call_401938, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40193a	 Bytes: 3
  %loadMem_40193a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193a)
  store %struct.Memory* %call_40193a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40193d	 Bytes: 4
  %loadMem_40193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193d)
  store %struct.Memory* %call_40193d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401941	 Bytes: 4
  %loadMem_401941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401941 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401941)
  store %struct.Memory* %call_401941, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401945	 Bytes: 2
  %loadMem_401945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401945 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401945)
  store %struct.Memory* %call_401945, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401947	 Bytes: 3
  %loadMem_401947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401947 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401947)
  store %struct.Memory* %call_401947, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40194a	 Bytes: 3
  %loadMem_40194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194a)
  store %struct.Memory* %call_40194a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40194d	 Bytes: 5
  %loadMem_40194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194d = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194d)
  store %struct.Memory* %call_40194d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 401952	 Bytes: 3
  %loadMem_401952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401952 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401952)
  store %struct.Memory* %call_401952, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401955	 Bytes: 3
  %loadMem_401955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401955 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401955)
  store %struct.Memory* %call_401955, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 401958	 Bytes: 3
  %loadMem_401958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401958 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401958)
  store %struct.Memory* %call_401958, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4018ae	 RIP: 40195b	 Bytes: 5
  %loadMem_40195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195b = call %struct.Memory* @routine_jmpq_.L_4018ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195b, i64 -173, i64 5)
  store %struct.Memory* %call_40195b, %struct.Memory** %MEMORY

  br label %block_.L_4018ae

  ; Code: .L_401960:	 RIP: 401960	 Bytes: 0
block_.L_401960:

  ; Code: jmpq .L_401965	 RIP: 401960	 Bytes: 5
  %loadMem_401960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401960 = call %struct.Memory* @routine_jmpq_.L_401965(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401960, i64 5, i64 5)
  store %struct.Memory* %call_401960, %struct.Memory** %MEMORY

  br label %block_.L_401965

  ; Code: .L_401965:	 RIP: 401965	 Bytes: 0
block_.L_401965:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 401965	 Bytes: 3
  %loadMem_401965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401965 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401965)
  store %struct.Memory* %call_401965, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401968	 Bytes: 3
  %loadMem_401968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401968 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401968)
  store %struct.Memory* %call_401968, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 40196b	 Bytes: 3
  %loadMem_40196b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196b)
  store %struct.Memory* %call_40196b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40189b	 RIP: 40196e	 Bytes: 5
  %loadMem_40196e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196e = call %struct.Memory* @routine_jmpq_.L_40189b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196e, i64 -211, i64 5)
  store %struct.Memory* %call_40196e, %struct.Memory** %MEMORY

  br label %block_.L_40189b

  ; Code: .L_401973:	 RIP: 401973	 Bytes: 0
block_.L_401973:

  ; Code: jmpq .L_401978	 RIP: 401973	 Bytes: 5
  %loadMem_401973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401973 = call %struct.Memory* @routine_jmpq_.L_401978(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401973, i64 5, i64 5)
  store %struct.Memory* %call_401973, %struct.Memory** %MEMORY

  br label %block_.L_401978

  ; Code: .L_401978:	 RIP: 401978	 Bytes: 0
block_.L_401978:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401978	 Bytes: 3
  %loadMem_401978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401978 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401978)
  store %struct.Memory* %call_401978, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40197b	 Bytes: 3
  %loadMem_40197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197b)
  store %struct.Memory* %call_40197b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 40197e	 Bytes: 3
  %loadMem_40197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197e = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197e)
  store %struct.Memory* %call_40197e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401888	 RIP: 401981	 Bytes: 5
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401981 = call %struct.Memory* @routine_jmpq_.L_401888(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401981, i64 -249, i64 5)
  store %struct.Memory* %call_401981, %struct.Memory** %MEMORY

  br label %block_.L_401888

  ; Code: .L_401986:	 RIP: 401986	 Bytes: 0
block_.L_401986:

  ; Code: jmpq .L_40198b	 RIP: 401986	 Bytes: 5
  %loadMem_401986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401986 = call %struct.Memory* @routine_jmpq_.L_40198b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401986, i64 5, i64 5)
  store %struct.Memory* %call_401986, %struct.Memory** %MEMORY

  br label %block_.L_40198b

  ; Code: .L_40198b:	 RIP: 40198b	 Bytes: 0
block_.L_40198b:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40198b	 Bytes: 3
  %loadMem_40198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198b)
  store %struct.Memory* %call_40198b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40198e	 Bytes: 3
  %loadMem_40198e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198e)
  store %struct.Memory* %call_40198e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 401991	 Bytes: 3
  %loadMem_401991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401991 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401991)
  store %struct.Memory* %call_401991, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d59	 RIP: 401994	 Bytes: 5
  %loadMem_401994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401994 = call %struct.Memory* @routine_jmpq_.L_400d59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401994, i64 -3131, i64 5)
  store %struct.Memory* %call_401994, %struct.Memory** %MEMORY

  br label %block_.L_400d59

  ; Code: .L_401999:	 RIP: 401999	 Bytes: 0
block_.L_401999:

  ; Code: movss -0x60(%rbp), %xmm0	 RIP: 401999	 Bytes: 5
  %loadMem_401999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401999 = call %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401999)
  store %struct.Memory* %call_401999, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40199e	 Bytes: 1
  %loadMem_40199e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199e)
  store %struct.Memory* %call_40199e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40199f	 Bytes: 1
  %loadMem_40199f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199f)
  store %struct.Memory* %call_40199f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40199f
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jge_.L_401999(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 alwaysinline {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 alwaysinline {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = sub i64 %14, 84
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401881(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = sub i64 %14, 88
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40186e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = sub i64 %14, 92
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40185b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 0)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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






define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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























define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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








define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_shll__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 0)
  ret %struct.Memory* %12
}


































define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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












































define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 alwaysinline {
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

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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










define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








































































define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


















































































define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
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


































define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 alwaysinline {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fsub float %13, %12
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

define %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}



























































































define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 alwaysinline {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 alwaysinline {
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

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




































































































































































































































































































































































































































































































define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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










































































































































































































































































define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




































define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = sub i64 %11, 100
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 3)
  ret %struct.Memory* %16
}












































































define %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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






































define %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addss_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














































define %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x603058_type* @G_0x603058 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




































define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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




define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_400d9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_400d87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400d74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_401986(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_401973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_401960(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































































define %struct.Memory* @routine_jmpq_.L_4018ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401965(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40189b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401978(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401888(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40198b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_jmpq_.L_400d59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 alwaysinline {
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

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

