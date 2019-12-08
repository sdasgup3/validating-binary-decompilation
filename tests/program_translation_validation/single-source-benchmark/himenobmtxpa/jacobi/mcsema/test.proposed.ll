; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_600e50__init_array_type = type <{ i64, i64 }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

  ; Code: .jacobi:	 RIP: 400cd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400cd0	 Bytes: 1
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd0)
  store %struct.Memory* %call_400cd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400cd1	 Bytes: 3
  %loadMem_400cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd1)
  store %struct.Memory* %call_400cd1, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 400cd4	 Bytes: 4
  %loadMem_400cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd4 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd4)
  store %struct.Memory* %call_400cd4, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r10	 RIP: 400cd8	 Bytes: 4
  %loadMem_400cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd8 = call %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd8)
  store %struct.Memory* %call_400cd8, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 400cdc	 Bytes: 3
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdc = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdc)
  store %struct.Memory* %call_400cdc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 400cdf	 Bytes: 4
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdf = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdf)
  store %struct.Memory* %call_400cdf, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 400ce3	 Bytes: 4
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce3 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce3)
  store %struct.Memory* %call_400ce3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 400ce7	 Bytes: 4
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce7 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce7)
  store %struct.Memory* %call_400ce7, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 400ceb	 Bytes: 4
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ceb = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ceb)
  store %struct.Memory* %call_400ceb, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x30(%rbp)	 RIP: 400cef	 Bytes: 4
  %loadMem_400cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cef = call %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cef)
  store %struct.Memory* %call_400cef, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400cf3	 Bytes: 4
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf3)
  store %struct.Memory* %call_400cf3, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edi	 RIP: 400cf7	 Bytes: 3
  %loadMem_400cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf7 = call %struct.Memory* @routine_movl_0xc__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf7)
  store %struct.Memory* %call_400cf7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400cfa	 Bytes: 3
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfa = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfa)
  store %struct.Memory* %call_400cfa, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x44(%rbp)	 RIP: 400cfd	 Bytes: 3
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfd = call %struct.Memory* @routine_movl__edi__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfd)
  store %struct.Memory* %call_400cfd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400d00	 Bytes: 4
  %loadMem_400d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d00 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d00)
  store %struct.Memory* %call_400d00, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %edi	 RIP: 400d04	 Bytes: 3
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d04 = call %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d04)
  store %struct.Memory* %call_400d04, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d07	 Bytes: 3
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d07 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d07)
  store %struct.Memory* %call_400d07, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x48(%rbp)	 RIP: 400d0a	 Bytes: 3
  %loadMem_400d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0a = call %struct.Memory* @routine_movl__edi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0a)
  store %struct.Memory* %call_400d0a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400d0d	 Bytes: 4
  %loadMem_400d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0d)
  store %struct.Memory* %call_400d0d, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rcx), %edi	 RIP: 400d11	 Bytes: 3
  %loadMem_400d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d11 = call %struct.Memory* @routine_movl_0x14__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d11)
  store %struct.Memory* %call_400d11, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d14	 Bytes: 3
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d14 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d14)
  store %struct.Memory* %call_400d14, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4c(%rbp)	 RIP: 400d17	 Bytes: 3
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d17 = call %struct.Memory* @routine_movl__edi__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d17)
  store %struct.Memory* %call_400d17, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x40(%rbp)	 RIP: 400d1a	 Bytes: 7
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1a = call %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1a)
  store %struct.Memory* %call_400d1a, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x60(%rbp)	 RIP: 400d21	 Bytes: 4
  %loadMem_400d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d21 = call %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d21)
  store %struct.Memory* %call_400d21, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 400d25	 Bytes: 4
  %loadMem_400d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d25 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d25)
  store %struct.Memory* %call_400d25, %struct.Memory** %MEMORY

  ; Code: .L_400d29:	 RIP: 400d29	 Bytes: 0
  br label %block_.L_400d29
block_.L_400d29:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 400d29	 Bytes: 3
  %loadMem_400d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d29 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d29)
  store %struct.Memory* %call_400d29, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 400d2c	 Bytes: 3
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2c)
  store %struct.Memory* %call_400d2c, %struct.Memory** %MEMORY

  ; Code: jge .L_401969	 RIP: 400d2f	 Bytes: 6
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2f = call %struct.Memory* @routine_jge_.L_401969(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2f, i8* %BRANCH_TAKEN, i64 3130, i64 6, i64 6)
  store %struct.Memory* %call_400d2f, %struct.Memory** %MEMORY

  %loadBr_400d2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d2f = icmp eq i8 %loadBr_400d2f, 1
  br i1 %cmpBr_400d2f, label %block_.L_401969, label %block_400d35

block_400d35:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400d35	 Bytes: 3
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x50(%rbp)	 RIP: 400d38	 Bytes: 5
  %loadMem_400d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d38 = call %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d38)
  store %struct.Memory* %call_400d38, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x34(%rbp)	 RIP: 400d3d	 Bytes: 7
  %loadMem_400d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3d = call %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3d)
  store %struct.Memory* %call_400d3d, %struct.Memory** %MEMORY

  ; Code: .L_400d44:	 RIP: 400d44	 Bytes: 0
  br label %block_.L_400d44
block_.L_400d44:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 400d44	 Bytes: 3
  %loadMem_400d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d44 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d44)
  store %struct.Memory* %call_400d44, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 400d47	 Bytes: 3
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d47 = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d47)
  store %struct.Memory* %call_400d47, %struct.Memory** %MEMORY

  ; Code: jge .L_401851	 RIP: 400d4a	 Bytes: 6
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4a = call %struct.Memory* @routine_jge_.L_401851(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4a, i8* %BRANCH_TAKEN, i64 2823, i64 6, i64 6)
  store %struct.Memory* %call_400d4a, %struct.Memory** %MEMORY

  %loadBr_400d4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d4a = icmp eq i8 %loadBr_400d4a, 1
  br i1 %cmpBr_400d4a, label %block_.L_401851, label %block_400d50

block_400d50:
  ; Code: movl $0x1, -0x38(%rbp)	 RIP: 400d50	 Bytes: 7
  %loadMem_400d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d50 = call %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d50)
  store %struct.Memory* %call_400d50, %struct.Memory** %MEMORY

  ; Code: .L_400d57:	 RIP: 400d57	 Bytes: 0
  br label %block_.L_400d57
block_.L_400d57:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 400d57	 Bytes: 3
  %loadMem_400d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d57 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d57)
  store %struct.Memory* %call_400d57, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 400d5a	 Bytes: 3
  %loadMem_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5a = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5a)
  store %struct.Memory* %call_400d5a, %struct.Memory** %MEMORY

  ; Code: jge .L_40183e	 RIP: 400d5d	 Bytes: 6
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5d = call %struct.Memory* @routine_jge_.L_40183e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5d, i8* %BRANCH_TAKEN, i64 2785, i64 6, i64 6)
  store %struct.Memory* %call_400d5d, %struct.Memory** %MEMORY

  %loadBr_400d5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d5d = icmp eq i8 %loadBr_400d5d, 1
  br i1 %cmpBr_400d5d, label %block_.L_40183e, label %block_400d63

block_400d63:
  ; Code: movl $0x1, -0x3c(%rbp)	 RIP: 400d63	 Bytes: 7
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d63 = call %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d63)
  store %struct.Memory* %call_400d63, %struct.Memory** %MEMORY

  ; Code: .L_400d6a:	 RIP: 400d6a	 Bytes: 0
  br label %block_.L_400d6a
block_.L_400d6a:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 400d6a	 Bytes: 3
  %loadMem_400d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6a = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6a)
  store %struct.Memory* %call_400d6a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 400d6d	 Bytes: 3
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6d = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6d)
  store %struct.Memory* %call_400d6d, %struct.Memory** %MEMORY

  ; Code: jge .L_40182b	 RIP: 400d70	 Bytes: 6
  %loadMem_400d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d70 = call %struct.Memory* @routine_jge_.L_40182b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d70, i8* %BRANCH_TAKEN, i64 2747, i64 6, i64 6)
  store %struct.Memory* %call_400d70, %struct.Memory** %MEMORY

  %loadBr_400d70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d70 = icmp eq i8 %loadBr_400d70, 1
  br i1 %cmpBr_400d70, label %block_.L_40182b, label %block_400d76

block_400d76:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400d76	 Bytes: 4
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d76 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d76)
  store %struct.Memory* %call_400d76, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400d7a	 Bytes: 3
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7a)
  store %struct.Memory* %call_400d7a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400d7d	 Bytes: 4
  %loadMem_400d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7d)
  store %struct.Memory* %call_400d7d, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400d81	 Bytes: 4
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d81 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d81)
  store %struct.Memory* %call_400d81, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400d85	 Bytes: 4
  %loadMem_400d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d85 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d85)
  store %struct.Memory* %call_400d85, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400d89	 Bytes: 4
  %loadMem_400d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d89 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d89)
  store %struct.Memory* %call_400d89, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400d8d	 Bytes: 4
  %loadMem_400d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8d)
  store %struct.Memory* %call_400d8d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400d91	 Bytes: 4
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d91 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d91)
  store %struct.Memory* %call_400d91, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400d95	 Bytes: 3
  %loadMem_400d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d95 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d95)
  store %struct.Memory* %call_400d95, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400d98	 Bytes: 4
  %loadMem_400d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d98 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d98)
  store %struct.Memory* %call_400d98, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400d9c	 Bytes: 4
  %loadMem_400d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9c)
  store %struct.Memory* %call_400d9c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400da0	 Bytes: 4
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da0)
  store %struct.Memory* %call_400da0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400da4	 Bytes: 4
  %loadMem_400da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da4)
  store %struct.Memory* %call_400da4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400da8	 Bytes: 2
  %loadMem_400da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da8)
  store %struct.Memory* %call_400da8, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400daa	 Bytes: 3
  %loadMem_400daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400daa = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400daa)
  store %struct.Memory* %call_400daa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dad	 Bytes: 4
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dad)
  store %struct.Memory* %call_400dad, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400db1	 Bytes: 4
  %loadMem_400db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db1)
  store %struct.Memory* %call_400db1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400db5	 Bytes: 2
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db5)
  store %struct.Memory* %call_400db5, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400db7	 Bytes: 3
  %loadMem_400db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db7 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db7)
  store %struct.Memory* %call_400db7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400dba	 Bytes: 3
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dba = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dba)
  store %struct.Memory* %call_400dba, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 400dbd	 Bytes: 5
  %loadMem_400dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbd = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbd)
  store %struct.Memory* %call_400dbd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400dc2	 Bytes: 4
  %loadMem_400dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc2)
  store %struct.Memory* %call_400dc2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400dc6	 Bytes: 3
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc6)
  store %struct.Memory* %call_400dc6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400dc9	 Bytes: 4
  %loadMem_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc9)
  store %struct.Memory* %call_400dc9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400dcd	 Bytes: 4
  %loadMem_400dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcd = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcd)
  store %struct.Memory* %call_400dcd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400dd1	 Bytes: 4
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd1)
  store %struct.Memory* %call_400dd1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400dd5	 Bytes: 4
  %loadMem_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd5 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd5)
  store %struct.Memory* %call_400dd5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400dd9	 Bytes: 4
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd9)
  store %struct.Memory* %call_400dd9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400ddd	 Bytes: 4
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddd = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddd)
  store %struct.Memory* %call_400ddd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400de1	 Bytes: 3
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de1)
  store %struct.Memory* %call_400de1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400de4	 Bytes: 3
  %loadMem_400de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de4 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de4)
  store %struct.Memory* %call_400de4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400de7	 Bytes: 4
  %loadMem_400de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de7)
  store %struct.Memory* %call_400de7, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400deb	 Bytes: 4
  %loadMem_400deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400deb = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400deb)
  store %struct.Memory* %call_400deb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400def	 Bytes: 4
  %loadMem_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400def = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400def)
  store %struct.Memory* %call_400def, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400df3	 Bytes: 4
  %loadMem_400df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df3 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df3)
  store %struct.Memory* %call_400df3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400df7	 Bytes: 2
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df7)
  store %struct.Memory* %call_400df7, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400df9	 Bytes: 3
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df9 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df9)
  store %struct.Memory* %call_400df9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400dfc	 Bytes: 4
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfc)
  store %struct.Memory* %call_400dfc, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e00	 Bytes: 4
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e00 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e00)
  store %struct.Memory* %call_400e00, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e04	 Bytes: 2
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e04 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e04)
  store %struct.Memory* %call_400e04, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400e06	 Bytes: 3
  %loadMem_400e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e06 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e06)
  store %struct.Memory* %call_400e06, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e09	 Bytes: 3
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e09 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e09)
  store %struct.Memory* %call_400e09, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 400e0c	 Bytes: 5
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0c)
  store %struct.Memory* %call_400e0c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400e11	 Bytes: 4
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e11 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e11)
  store %struct.Memory* %call_400e11, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e15	 Bytes: 3
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e15 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e15)
  store %struct.Memory* %call_400e15, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e18	 Bytes: 4
  %loadMem_400e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e18 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e18)
  store %struct.Memory* %call_400e18, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400e1c	 Bytes: 3
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1c = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1c)
  store %struct.Memory* %call_400e1c, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 400e1f	 Bytes: 3
  %loadMem_400e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1f = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1f)
  store %struct.Memory* %call_400e1f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e22	 Bytes: 4
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e26	 Bytes: 4
  %loadMem_400e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e26 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e26)
  store %struct.Memory* %call_400e26, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e2a	 Bytes: 4
  %loadMem_400e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2a)
  store %struct.Memory* %call_400e2a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e2e	 Bytes: 4
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2e)
  store %struct.Memory* %call_400e2e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400e32	 Bytes: 3
  %loadMem_400e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e32 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e32)
  store %struct.Memory* %call_400e32, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e35	 Bytes: 4
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e35 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e35)
  store %struct.Memory* %call_400e35, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e39	 Bytes: 4
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e39 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e39)
  store %struct.Memory* %call_400e39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e3d	 Bytes: 4
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3d)
  store %struct.Memory* %call_400e3d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e41	 Bytes: 4
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e41 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e41)
  store %struct.Memory* %call_400e41, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e45	 Bytes: 2
  %loadMem_400e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e45 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e45)
  store %struct.Memory* %call_400e45, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400e47	 Bytes: 3
  %loadMem_400e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e47 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e47)
  store %struct.Memory* %call_400e47, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e4a	 Bytes: 4
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4a)
  store %struct.Memory* %call_400e4a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e4e	 Bytes: 4
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4e)
  store %struct.Memory* %call_400e4e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e52	 Bytes: 2
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e52 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e52)
  store %struct.Memory* %call_400e52, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400e54	 Bytes: 3
  %loadMem_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e54 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e54)
  store %struct.Memory* %call_400e54, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e57	 Bytes: 3
  %loadMem_400e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e57 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e57)
  store %struct.Memory* %call_400e57, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400e5a	 Bytes: 5
  %loadMem_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5a)
  store %struct.Memory* %call_400e5a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400e5f	 Bytes: 4
  %loadMem_400e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5f)
  store %struct.Memory* %call_400e5f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e63	 Bytes: 3
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e63 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e63)
  store %struct.Memory* %call_400e63, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e66	 Bytes: 4
  %loadMem_400e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e66 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e66)
  store %struct.Memory* %call_400e66, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400e6a	 Bytes: 4
  %loadMem_400e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6a)
  store %struct.Memory* %call_400e6a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e6e	 Bytes: 4
  %loadMem_400e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6e)
  store %struct.Memory* %call_400e6e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e72	 Bytes: 4
  %loadMem_400e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e72 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e72)
  store %struct.Memory* %call_400e72, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e76	 Bytes: 4
  %loadMem_400e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e76 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e76)
  store %struct.Memory* %call_400e76, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e7a	 Bytes: 4
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7a)
  store %struct.Memory* %call_400e7a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400e7e	 Bytes: 3
  %loadMem_400e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7e)
  store %struct.Memory* %call_400e7e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e81	 Bytes: 4
  %loadMem_400e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e81 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e81)
  store %struct.Memory* %call_400e81, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e85	 Bytes: 4
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e85 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e85)
  store %struct.Memory* %call_400e85, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e89	 Bytes: 4
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e89 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e89)
  store %struct.Memory* %call_400e89, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e8d	 Bytes: 4
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8d)
  store %struct.Memory* %call_400e8d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e91	 Bytes: 2
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e91 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e91)
  store %struct.Memory* %call_400e91, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400e93	 Bytes: 3
  %loadMem_400e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e93 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e93)
  store %struct.Memory* %call_400e93, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400e96	 Bytes: 3
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e96 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e96)
  store %struct.Memory* %call_400e96, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e99	 Bytes: 4
  %loadMem_400e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e99 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e99)
  store %struct.Memory* %call_400e99, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e9d	 Bytes: 4
  %loadMem_400e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9d)
  store %struct.Memory* %call_400e9d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ea1	 Bytes: 2
  %loadMem_400ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea1)
  store %struct.Memory* %call_400ea1, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400ea3	 Bytes: 3
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea3 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea3)
  store %struct.Memory* %call_400ea3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ea6	 Bytes: 3
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea6)
  store %struct.Memory* %call_400ea6, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400ea9	 Bytes: 5
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400eae	 Bytes: 4
  %loadMem_400eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eae = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eae)
  store %struct.Memory* %call_400eae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400eb2	 Bytes: 4
  %loadMem_400eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb2)
  store %struct.Memory* %call_400eb2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400eb6	 Bytes: 3
  %loadMem_400eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb6)
  store %struct.Memory* %call_400eb6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400eb9	 Bytes: 4
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb9)
  store %struct.Memory* %call_400eb9, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400ebd	 Bytes: 3
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebd = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebd)
  store %struct.Memory* %call_400ebd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 400ec0	 Bytes: 3
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec0 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec0)
  store %struct.Memory* %call_400ec0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ec3	 Bytes: 4
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec3)
  store %struct.Memory* %call_400ec3, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400ec7	 Bytes: 4
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec7 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec7)
  store %struct.Memory* %call_400ec7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ecb	 Bytes: 4
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecb)
  store %struct.Memory* %call_400ecb, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400ecf	 Bytes: 4
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecf = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecf)
  store %struct.Memory* %call_400ecf, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400ed3	 Bytes: 3
  %loadMem_400ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed3 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed3)
  store %struct.Memory* %call_400ed3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ed6	 Bytes: 4
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed6)
  store %struct.Memory* %call_400ed6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400eda	 Bytes: 4
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eda = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eda)
  store %struct.Memory* %call_400eda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ede	 Bytes: 4
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ede = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ede)
  store %struct.Memory* %call_400ede, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ee2	 Bytes: 4
  %loadMem_400ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee2 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee2)
  store %struct.Memory* %call_400ee2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ee6	 Bytes: 2
  %loadMem_400ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee6 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee6)
  store %struct.Memory* %call_400ee6, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400ee8	 Bytes: 3
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee8 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee8)
  store %struct.Memory* %call_400ee8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400eeb	 Bytes: 4
  %loadMem_400eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eeb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eeb)
  store %struct.Memory* %call_400eeb, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400eef	 Bytes: 4
  %loadMem_400eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eef = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eef)
  store %struct.Memory* %call_400eef, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ef3	 Bytes: 2
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef3 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef3)
  store %struct.Memory* %call_400ef3, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400ef5	 Bytes: 3
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef5 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef5)
  store %struct.Memory* %call_400ef5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ef8	 Bytes: 3
  %loadMem_400ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef8)
  store %struct.Memory* %call_400ef8, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400efb	 Bytes: 5
  %loadMem_400efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efb = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efb)
  store %struct.Memory* %call_400efb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400f00	 Bytes: 4
  %loadMem_400f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f00 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f00)
  store %struct.Memory* %call_400f00, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f04	 Bytes: 3
  %loadMem_400f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f04 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f04)
  store %struct.Memory* %call_400f04, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f07	 Bytes: 4
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f07 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f07)
  store %struct.Memory* %call_400f07, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f0b	 Bytes: 4
  %loadMem_400f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0b)
  store %struct.Memory* %call_400f0b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f0f	 Bytes: 4
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f13	 Bytes: 4
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f13 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f13)
  store %struct.Memory* %call_400f13, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f17	 Bytes: 4
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f17 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f17)
  store %struct.Memory* %call_400f17, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400f1b	 Bytes: 4
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400f1f	 Bytes: 3
  %loadMem_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1f)
  store %struct.Memory* %call_400f1f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f22	 Bytes: 4
  %loadMem_400f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f22 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f22)
  store %struct.Memory* %call_400f22, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f26	 Bytes: 4
  %loadMem_400f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f26 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f26)
  store %struct.Memory* %call_400f26, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f2a	 Bytes: 4
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2a)
  store %struct.Memory* %call_400f2a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f2e	 Bytes: 4
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2e)
  store %struct.Memory* %call_400f2e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f32	 Bytes: 2
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f32 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f32)
  store %struct.Memory* %call_400f32, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400f34	 Bytes: 3
  %loadMem_400f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f34 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f34)
  store %struct.Memory* %call_400f34, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f37	 Bytes: 4
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f37 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f37)
  store %struct.Memory* %call_400f37, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f3b	 Bytes: 4
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3b)
  store %struct.Memory* %call_400f3b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f3f	 Bytes: 2
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3f)
  store %struct.Memory* %call_400f3f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 400f41	 Bytes: 3
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f41 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f41)
  store %struct.Memory* %call_400f41, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400f44	 Bytes: 3
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f44 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f44)
  store %struct.Memory* %call_400f44, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f47	 Bytes: 2
  %loadMem_400f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f47 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f47)
  store %struct.Memory* %call_400f47, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f49	 Bytes: 3
  %loadMem_400f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f49 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f49)
  store %struct.Memory* %call_400f49, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400f4c	 Bytes: 5
  %loadMem_400f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4c)
  store %struct.Memory* %call_400f4c, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400f51	 Bytes: 4
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f51 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f51)
  store %struct.Memory* %call_400f51, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400f55	 Bytes: 4
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f55 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f55)
  store %struct.Memory* %call_400f55, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f59	 Bytes: 3
  %loadMem_400f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f59 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f59)
  store %struct.Memory* %call_400f59, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f5c	 Bytes: 4
  %loadMem_400f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5c)
  store %struct.Memory* %call_400f5c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f60	 Bytes: 4
  %loadMem_400f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f60 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f60)
  store %struct.Memory* %call_400f60, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f64	 Bytes: 4
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f64 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f64)
  store %struct.Memory* %call_400f64, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f68	 Bytes: 4
  %loadMem_400f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f68 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f68)
  store %struct.Memory* %call_400f68, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f6c	 Bytes: 4
  %loadMem_400f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6c)
  store %struct.Memory* %call_400f6c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400f70	 Bytes: 4
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f70 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f70)
  store %struct.Memory* %call_400f70, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400f74	 Bytes: 3
  %loadMem_400f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f74 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f74)
  store %struct.Memory* %call_400f74, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f77	 Bytes: 4
  %loadMem_400f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f77 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f77)
  store %struct.Memory* %call_400f77, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f7b	 Bytes: 4
  %loadMem_400f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7b = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7b)
  store %struct.Memory* %call_400f7b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f7f	 Bytes: 4
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7f)
  store %struct.Memory* %call_400f7f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f83	 Bytes: 4
  %loadMem_400f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f83 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f83)
  store %struct.Memory* %call_400f83, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f87	 Bytes: 2
  %loadMem_400f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f87 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f87)
  store %struct.Memory* %call_400f87, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400f89	 Bytes: 3
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f89 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f89)
  store %struct.Memory* %call_400f89, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f8c	 Bytes: 4
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8c)
  store %struct.Memory* %call_400f8c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f90	 Bytes: 4
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f90 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f90)
  store %struct.Memory* %call_400f90, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f94	 Bytes: 2
  %loadMem_400f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f94 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f94)
  store %struct.Memory* %call_400f94, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400f96	 Bytes: 3
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f96 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f96)
  store %struct.Memory* %call_400f96, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f99	 Bytes: 3
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f99 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f99)
  store %struct.Memory* %call_400f99, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400f9c	 Bytes: 5
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9c = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9c)
  store %struct.Memory* %call_400f9c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400fa1	 Bytes: 4
  %loadMem_400fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa1)
  store %struct.Memory* %call_400fa1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400fa5	 Bytes: 3
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa5)
  store %struct.Memory* %call_400fa5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fa8	 Bytes: 4
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa8)
  store %struct.Memory* %call_400fa8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400fac	 Bytes: 4
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fac = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fac)
  store %struct.Memory* %call_400fac, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fb0	 Bytes: 4
  %loadMem_400fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb0)
  store %struct.Memory* %call_400fb0, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400fb4	 Bytes: 4
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb4 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb4)
  store %struct.Memory* %call_400fb4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fb8	 Bytes: 4
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb8)
  store %struct.Memory* %call_400fb8, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400fbc	 Bytes: 4
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 400fc0	 Bytes: 3
  %loadMem_400fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc0 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc0)
  store %struct.Memory* %call_400fc0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400fc3	 Bytes: 3
  %loadMem_400fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc3 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc3)
  store %struct.Memory* %call_400fc3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fc6	 Bytes: 4
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc6)
  store %struct.Memory* %call_400fc6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400fca	 Bytes: 4
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fca = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fca)
  store %struct.Memory* %call_400fca, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fce	 Bytes: 4
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fce = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fce)
  store %struct.Memory* %call_400fce, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fd2	 Bytes: 4
  %loadMem_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd2 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd2)
  store %struct.Memory* %call_400fd2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fd6	 Bytes: 2
  %loadMem_400fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd6 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd6)
  store %struct.Memory* %call_400fd6, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400fd8	 Bytes: 3
  %loadMem_400fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd8 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd8)
  store %struct.Memory* %call_400fd8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400fdb	 Bytes: 3
  %loadMem_400fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdb = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdb)
  store %struct.Memory* %call_400fdb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fde	 Bytes: 4
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fde = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fde)
  store %struct.Memory* %call_400fde, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fe2	 Bytes: 4
  %loadMem_400fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe2 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe2)
  store %struct.Memory* %call_400fe2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fe6	 Bytes: 2
  %loadMem_400fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe6 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe6)
  store %struct.Memory* %call_400fe6, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 400fe8	 Bytes: 3
  %loadMem_400fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe8 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe8)
  store %struct.Memory* %call_400fe8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400feb	 Bytes: 3
  %loadMem_400feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400feb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400feb)
  store %struct.Memory* %call_400feb, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 400fee	 Bytes: 5
  %loadMem_400fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fee = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fee)
  store %struct.Memory* %call_400fee, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400ff3	 Bytes: 4
  %loadMem_400ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff3)
  store %struct.Memory* %call_400ff3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400ff7	 Bytes: 3
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff7)
  store %struct.Memory* %call_400ff7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ffa	 Bytes: 4
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffa)
  store %struct.Memory* %call_400ffa, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400ffe	 Bytes: 4
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffe = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffe)
  store %struct.Memory* %call_400ffe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401002	 Bytes: 4
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401006	 Bytes: 4
  %loadMem_401006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401006 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401006)
  store %struct.Memory* %call_401006, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40100a	 Bytes: 4
  %loadMem_40100a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100a)
  store %struct.Memory* %call_40100a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40100e	 Bytes: 4
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100e)
  store %struct.Memory* %call_40100e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401012	 Bytes: 3
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401012 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401012)
  store %struct.Memory* %call_401012, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401015	 Bytes: 3
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401015 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401015)
  store %struct.Memory* %call_401015, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401018	 Bytes: 4
  %loadMem_401018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401018 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401018)
  store %struct.Memory* %call_401018, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40101c	 Bytes: 4
  %loadMem_40101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101c)
  store %struct.Memory* %call_40101c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401020	 Bytes: 4
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401020 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401020)
  store %struct.Memory* %call_401020, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401024	 Bytes: 4
  %loadMem_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401024 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401024)
  store %struct.Memory* %call_401024, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401028	 Bytes: 2
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401028 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401028)
  store %struct.Memory* %call_401028, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40102a	 Bytes: 3
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40102d	 Bytes: 3
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102d)
  store %struct.Memory* %call_40102d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401030	 Bytes: 4
  %loadMem_401030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401030 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401030)
  store %struct.Memory* %call_401030, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401034	 Bytes: 4
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401034 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401034)
  store %struct.Memory* %call_401034, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401038	 Bytes: 2
  %loadMem_401038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401038 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401038)
  store %struct.Memory* %call_401038, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40103a	 Bytes: 3
  %loadMem_40103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103a = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103a)
  store %struct.Memory* %call_40103a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40103d	 Bytes: 3
  %loadMem_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103d)
  store %struct.Memory* %call_40103d, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401040	 Bytes: 5
  %loadMem_401040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401040 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401040)
  store %struct.Memory* %call_401040, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401045	 Bytes: 4
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401045 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401045)
  store %struct.Memory* %call_401045, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401049	 Bytes: 3
  %loadMem_401049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401049 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401049)
  store %struct.Memory* %call_401049, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40104c	 Bytes: 4
  %loadMem_40104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104c)
  store %struct.Memory* %call_40104c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401050	 Bytes: 4
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401050 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401050)
  store %struct.Memory* %call_401050, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401054	 Bytes: 4
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401054 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401054)
  store %struct.Memory* %call_401054, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401058	 Bytes: 4
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40105c	 Bytes: 4
  %loadMem_40105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105c)
  store %struct.Memory* %call_40105c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401060	 Bytes: 4
  %loadMem_401060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401060 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401060)
  store %struct.Memory* %call_401060, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401064	 Bytes: 3
  %loadMem_401064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401064 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401064)
  store %struct.Memory* %call_401064, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401067	 Bytes: 3
  %loadMem_401067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401067 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401067)
  store %struct.Memory* %call_401067, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40106a	 Bytes: 4
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106a)
  store %struct.Memory* %call_40106a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40106e	 Bytes: 4
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106e)
  store %struct.Memory* %call_40106e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401072	 Bytes: 4
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401072 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401072)
  store %struct.Memory* %call_401072, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401076	 Bytes: 4
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401076 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401076)
  store %struct.Memory* %call_401076, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40107a	 Bytes: 2
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107a)
  store %struct.Memory* %call_40107a, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40107c	 Bytes: 3
  %loadMem_40107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107c = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107c)
  store %struct.Memory* %call_40107c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40107f	 Bytes: 3
  %loadMem_40107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107f = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107f)
  store %struct.Memory* %call_40107f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401082	 Bytes: 4
  %loadMem_401082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401082 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401082)
  store %struct.Memory* %call_401082, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401086	 Bytes: 4
  %loadMem_401086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401086 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401086)
  store %struct.Memory* %call_401086, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40108a	 Bytes: 2
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108a)
  store %struct.Memory* %call_40108a, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40108c	 Bytes: 3
  %loadMem_40108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108c = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108c)
  store %struct.Memory* %call_40108c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40108f	 Bytes: 3
  %loadMem_40108f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108f)
  store %struct.Memory* %call_40108f, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401092	 Bytes: 5
  %loadMem_401092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401092 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401092)
  store %struct.Memory* %call_401092, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401097	 Bytes: 4
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401097 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401097)
  store %struct.Memory* %call_401097, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40109b	 Bytes: 3
  %loadMem_40109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109b)
  store %struct.Memory* %call_40109b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40109e	 Bytes: 4
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109e)
  store %struct.Memory* %call_40109e, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4010a2	 Bytes: 4
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010a6	 Bytes: 4
  %loadMem_4010a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a6)
  store %struct.Memory* %call_4010a6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4010aa	 Bytes: 4
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010aa = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010aa)
  store %struct.Memory* %call_4010aa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010ae	 Bytes: 4
  %loadMem_4010ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ae = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ae)
  store %struct.Memory* %call_4010ae, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4010b2	 Bytes: 4
  %loadMem_4010b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b2 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b2)
  store %struct.Memory* %call_4010b2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4010b6	 Bytes: 3
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b6)
  store %struct.Memory* %call_4010b6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4010b9	 Bytes: 3
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b9 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b9)
  store %struct.Memory* %call_4010b9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010bc	 Bytes: 4
  %loadMem_4010bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bc)
  store %struct.Memory* %call_4010bc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4010c0	 Bytes: 4
  %loadMem_4010c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c0)
  store %struct.Memory* %call_4010c0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010c4	 Bytes: 4
  %loadMem_4010c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c4)
  store %struct.Memory* %call_4010c4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010c8	 Bytes: 4
  %loadMem_4010c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c8)
  store %struct.Memory* %call_4010c8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010cc	 Bytes: 2
  %loadMem_4010cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cc)
  store %struct.Memory* %call_4010cc, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4010ce	 Bytes: 3
  %loadMem_4010ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ce = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ce)
  store %struct.Memory* %call_4010ce, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4010d1	 Bytes: 3
  %loadMem_4010d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d1 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d1)
  store %struct.Memory* %call_4010d1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010d4	 Bytes: 4
  %loadMem_4010d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d4)
  store %struct.Memory* %call_4010d4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010d8	 Bytes: 4
  %loadMem_4010d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d8)
  store %struct.Memory* %call_4010d8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010dc	 Bytes: 2
  %loadMem_4010dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010dc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010dc)
  store %struct.Memory* %call_4010dc, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4010de	 Bytes: 3
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010de = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010de)
  store %struct.Memory* %call_4010de, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4010e1	 Bytes: 3
  %loadMem_4010e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e1)
  store %struct.Memory* %call_4010e1, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 4010e4	 Bytes: 5
  %loadMem_4010e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e4 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e4)
  store %struct.Memory* %call_4010e4, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 4010e9	 Bytes: 4
  %loadMem_4010e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e9 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e9)
  store %struct.Memory* %call_4010e9, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4010ed	 Bytes: 4
  %loadMem_4010ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ed = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ed)
  store %struct.Memory* %call_4010ed, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4010f1	 Bytes: 4
  %loadMem_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f1)
  store %struct.Memory* %call_4010f1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4010f5	 Bytes: 3
  %loadMem_4010f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f5)
  store %struct.Memory* %call_4010f5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4010f8	 Bytes: 4
  %loadMem_4010f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f8)
  store %struct.Memory* %call_4010f8, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4010fc	 Bytes: 3
  %loadMem_4010fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fc = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fc)
  store %struct.Memory* %call_4010fc, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 4010ff	 Bytes: 3
  %loadMem_4010ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ff = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ff)
  store %struct.Memory* %call_4010ff, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401102	 Bytes: 4
  %loadMem_401102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401102 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401102)
  store %struct.Memory* %call_401102, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401106	 Bytes: 4
  %loadMem_401106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401106 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401106)
  store %struct.Memory* %call_401106, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40110a	 Bytes: 4
  %loadMem_40110a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110a)
  store %struct.Memory* %call_40110a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40110e	 Bytes: 4
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110e)
  store %struct.Memory* %call_40110e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401112	 Bytes: 3
  %loadMem_401112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401112 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401112)
  store %struct.Memory* %call_401112, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401115	 Bytes: 4
  %loadMem_401115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401115 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401115)
  store %struct.Memory* %call_401115, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401119	 Bytes: 4
  %loadMem_401119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401119 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401119)
  store %struct.Memory* %call_401119, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40111d	 Bytes: 4
  %loadMem_40111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111d)
  store %struct.Memory* %call_40111d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401121	 Bytes: 4
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401125	 Bytes: 2
  %loadMem_401125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401125 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401125)
  store %struct.Memory* %call_401125, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401127	 Bytes: 3
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401127 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401127)
  store %struct.Memory* %call_401127, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40112a	 Bytes: 4
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112a)
  store %struct.Memory* %call_40112a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40112e	 Bytes: 4
  %loadMem_40112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112e)
  store %struct.Memory* %call_40112e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401132	 Bytes: 2
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 401134	 Bytes: 3
  %loadMem_401134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401134 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401134)
  store %struct.Memory* %call_401134, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401137	 Bytes: 3
  %loadMem_401137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401137 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401137)
  store %struct.Memory* %call_401137, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40113a	 Bytes: 5
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113a)
  store %struct.Memory* %call_40113a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40113f	 Bytes: 4
  %loadMem_40113f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113f)
  store %struct.Memory* %call_40113f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401143	 Bytes: 3
  %loadMem_401143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401143 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401143)
  store %struct.Memory* %call_401143, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401146	 Bytes: 4
  %loadMem_401146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401146 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401146)
  store %struct.Memory* %call_401146, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40114a	 Bytes: 4
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114a)
  store %struct.Memory* %call_40114a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40114e	 Bytes: 4
  %loadMem_40114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114e)
  store %struct.Memory* %call_40114e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401152	 Bytes: 4
  %loadMem_401152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401152 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401152)
  store %struct.Memory* %call_401152, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401156	 Bytes: 4
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401156 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401156)
  store %struct.Memory* %call_401156, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40115a	 Bytes: 4
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115a)
  store %struct.Memory* %call_40115a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40115e	 Bytes: 3
  %loadMem_40115e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115e)
  store %struct.Memory* %call_40115e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401161	 Bytes: 4
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401161 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401161)
  store %struct.Memory* %call_401161, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401165	 Bytes: 4
  %loadMem_401165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401165 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401165)
  store %struct.Memory* %call_401165, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401169	 Bytes: 4
  %loadMem_401169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401169 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401169)
  store %struct.Memory* %call_401169, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40116d	 Bytes: 4
  %loadMem_40116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116d)
  store %struct.Memory* %call_40116d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401171	 Bytes: 2
  %loadMem_401171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401171 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401171)
  store %struct.Memory* %call_401171, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401173	 Bytes: 3
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401173 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401173)
  store %struct.Memory* %call_401173, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401176	 Bytes: 3
  %loadMem_401176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401176 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401176)
  store %struct.Memory* %call_401176, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401179	 Bytes: 4
  %loadMem_401179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401179 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401179)
  store %struct.Memory* %call_401179, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40117d	 Bytes: 4
  %loadMem_40117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117d)
  store %struct.Memory* %call_40117d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401181	 Bytes: 2
  %loadMem_401181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401181 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401181)
  store %struct.Memory* %call_401181, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 401183	 Bytes: 3
  %loadMem_401183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401183 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401183)
  store %struct.Memory* %call_401183, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401186	 Bytes: 3
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401186 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401186)
  store %struct.Memory* %call_401186, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401189	 Bytes: 2
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401189 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401189)
  store %struct.Memory* %call_401189, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40118b	 Bytes: 3
  %loadMem_40118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118b)
  store %struct.Memory* %call_40118b, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 40118e	 Bytes: 5
  %loadMem_40118e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118e)
  store %struct.Memory* %call_40118e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401193	 Bytes: 4
  %loadMem_401193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401193 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401193)
  store %struct.Memory* %call_401193, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401197	 Bytes: 3
  %loadMem_401197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401197 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401197)
  store %struct.Memory* %call_401197, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40119a	 Bytes: 4
  %loadMem_40119a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119a)
  store %struct.Memory* %call_40119a, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40119e	 Bytes: 4
  %loadMem_40119e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119e = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119e)
  store %struct.Memory* %call_40119e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011a2	 Bytes: 4
  %loadMem_4011a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a2)
  store %struct.Memory* %call_4011a2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4011a6	 Bytes: 4
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a6 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a6)
  store %struct.Memory* %call_4011a6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011aa	 Bytes: 4
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011aa)
  store %struct.Memory* %call_4011aa, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4011ae	 Bytes: 4
  %loadMem_4011ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ae = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ae)
  store %struct.Memory* %call_4011ae, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4011b2	 Bytes: 3
  %loadMem_4011b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b2)
  store %struct.Memory* %call_4011b2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011b5	 Bytes: 4
  %loadMem_4011b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b5)
  store %struct.Memory* %call_4011b5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4011b9	 Bytes: 4
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b9 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b9)
  store %struct.Memory* %call_4011b9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011bd	 Bytes: 4
  %loadMem_4011bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bd)
  store %struct.Memory* %call_4011bd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011c1	 Bytes: 4
  %loadMem_4011c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c1)
  store %struct.Memory* %call_4011c1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011c5	 Bytes: 2
  %loadMem_4011c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c5)
  store %struct.Memory* %call_4011c5, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4011c7	 Bytes: 3
  %loadMem_4011c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c7 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c7)
  store %struct.Memory* %call_4011c7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4011ca	 Bytes: 3
  %loadMem_4011ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ca = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ca)
  store %struct.Memory* %call_4011ca, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011cd	 Bytes: 4
  %loadMem_4011cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011cd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011cd)
  store %struct.Memory* %call_4011cd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011d1	 Bytes: 4
  %loadMem_4011d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d1)
  store %struct.Memory* %call_4011d1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011d5	 Bytes: 2
  %loadMem_4011d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d5)
  store %struct.Memory* %call_4011d5, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 4011d7	 Bytes: 3
  %loadMem_4011d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d7 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d7)
  store %struct.Memory* %call_4011d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4011da	 Bytes: 3
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011da = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011da)
  store %struct.Memory* %call_4011da, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011dd	 Bytes: 2
  %loadMem_4011dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011dd = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011dd)
  store %struct.Memory* %call_4011dd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4011df	 Bytes: 3
  %loadMem_4011df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011df = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011df)
  store %struct.Memory* %call_4011df, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4011e2	 Bytes: 5
  %loadMem_4011e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e2 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e2)
  store %struct.Memory* %call_4011e2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4011e7	 Bytes: 4
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e7)
  store %struct.Memory* %call_4011e7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4011eb	 Bytes: 3
  %loadMem_4011eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011eb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011eb)
  store %struct.Memory* %call_4011eb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ee	 Bytes: 4
  %loadMem_4011ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ee = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ee)
  store %struct.Memory* %call_4011ee, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4011f2	 Bytes: 4
  %loadMem_4011f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f2 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f2)
  store %struct.Memory* %call_4011f2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011f6	 Bytes: 4
  %loadMem_4011f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f6)
  store %struct.Memory* %call_4011f6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4011fa	 Bytes: 4
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fa = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fa)
  store %struct.Memory* %call_4011fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011fe	 Bytes: 4
  %loadMem_4011fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fe = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fe)
  store %struct.Memory* %call_4011fe, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401202	 Bytes: 4
  %loadMem_401202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401202 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401202)
  store %struct.Memory* %call_401202, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401206	 Bytes: 3
  %loadMem_401206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401206 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401206)
  store %struct.Memory* %call_401206, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401209	 Bytes: 4
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401209 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401209)
  store %struct.Memory* %call_401209, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40120d	 Bytes: 4
  %loadMem_40120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120d = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120d)
  store %struct.Memory* %call_40120d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401211	 Bytes: 4
  %loadMem_401211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401211 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401211)
  store %struct.Memory* %call_401211, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401215	 Bytes: 4
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401215 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401215)
  store %struct.Memory* %call_401215, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401219	 Bytes: 2
  %loadMem_401219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401219 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401219)
  store %struct.Memory* %call_401219, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40121b	 Bytes: 3
  %loadMem_40121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121b)
  store %struct.Memory* %call_40121b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40121e	 Bytes: 3
  %loadMem_40121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121e = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121e)
  store %struct.Memory* %call_40121e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401221	 Bytes: 4
  %loadMem_401221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401221 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401221)
  store %struct.Memory* %call_401221, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401225	 Bytes: 4
  %loadMem_401225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401225 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401225)
  store %struct.Memory* %call_401225, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401229	 Bytes: 2
  %loadMem_401229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401229 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401229)
  store %struct.Memory* %call_401229, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 40122b	 Bytes: 3
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122b = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122b)
  store %struct.Memory* %call_40122b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40122e	 Bytes: 3
  %loadMem_40122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122e)
  store %struct.Memory* %call_40122e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401231	 Bytes: 2
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401231 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401231)
  store %struct.Memory* %call_401231, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401233	 Bytes: 3
  %loadMem_401233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401233 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401233)
  store %struct.Memory* %call_401233, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401236	 Bytes: 5
  %loadMem_401236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401236 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401236)
  store %struct.Memory* %call_401236, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40123b	 Bytes: 4
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123b)
  store %struct.Memory* %call_40123b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40123f	 Bytes: 3
  %loadMem_40123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123f)
  store %struct.Memory* %call_40123f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401242	 Bytes: 4
  %loadMem_401242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401242 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401242)
  store %struct.Memory* %call_401242, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401246	 Bytes: 4
  %loadMem_401246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401246 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401246)
  store %struct.Memory* %call_401246, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40124a	 Bytes: 4
  %loadMem_40124a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124a)
  store %struct.Memory* %call_40124a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40124e	 Bytes: 4
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124e = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124e)
  store %struct.Memory* %call_40124e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401252	 Bytes: 4
  %loadMem_401252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401252 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401252)
  store %struct.Memory* %call_401252, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401256	 Bytes: 4
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401256 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401256)
  store %struct.Memory* %call_401256, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40125a	 Bytes: 3
  %loadMem_40125a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125a)
  store %struct.Memory* %call_40125a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40125d	 Bytes: 4
  %loadMem_40125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125d)
  store %struct.Memory* %call_40125d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401261	 Bytes: 4
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401261 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401261)
  store %struct.Memory* %call_401261, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401265	 Bytes: 4
  %loadMem_401265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401265 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401265)
  store %struct.Memory* %call_401265, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401269	 Bytes: 4
  %loadMem_401269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401269 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401269)
  store %struct.Memory* %call_401269, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40126d	 Bytes: 2
  %loadMem_40126d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126d)
  store %struct.Memory* %call_40126d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40126f	 Bytes: 3
  %loadMem_40126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126f = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126f)
  store %struct.Memory* %call_40126f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401272	 Bytes: 3
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401275	 Bytes: 4
  %loadMem_401275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401275 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401275)
  store %struct.Memory* %call_401275, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401279	 Bytes: 4
  %loadMem_401279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401279 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401279)
  store %struct.Memory* %call_401279, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40127d	 Bytes: 2
  %loadMem_40127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127d)
  store %struct.Memory* %call_40127d, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 40127f	 Bytes: 3
  %loadMem_40127f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127f = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127f)
  store %struct.Memory* %call_40127f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401282	 Bytes: 3
  %loadMem_401282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401282 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401282)
  store %struct.Memory* %call_401282, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401285	 Bytes: 2
  %loadMem_401285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401285 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401285)
  store %struct.Memory* %call_401285, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401287	 Bytes: 3
  %loadMem_401287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401287 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401287)
  store %struct.Memory* %call_401287, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 40128a	 Bytes: 5
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 40128f	 Bytes: 4
  %loadMem_40128f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128f = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128f)
  store %struct.Memory* %call_40128f, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401293	 Bytes: 4
  %loadMem_401293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401293 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401293)
  store %struct.Memory* %call_401293, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401297	 Bytes: 4
  %loadMem_401297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401297 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401297)
  store %struct.Memory* %call_401297, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40129b	 Bytes: 3
  %loadMem_40129b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129b)
  store %struct.Memory* %call_40129b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40129e	 Bytes: 4
  %loadMem_40129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129e)
  store %struct.Memory* %call_40129e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4012a2	 Bytes: 3
  %loadMem_4012a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a2 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a2)
  store %struct.Memory* %call_4012a2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4012a5	 Bytes: 3
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a5 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a5)
  store %struct.Memory* %call_4012a5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012a8	 Bytes: 4
  %loadMem_4012a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a8)
  store %struct.Memory* %call_4012a8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4012ac	 Bytes: 4
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ac = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ac)
  store %struct.Memory* %call_4012ac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012b0	 Bytes: 4
  %loadMem_4012b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b0)
  store %struct.Memory* %call_4012b0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4012b4	 Bytes: 4
  %loadMem_4012b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b4)
  store %struct.Memory* %call_4012b4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4012b8	 Bytes: 3
  %loadMem_4012b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b8)
  store %struct.Memory* %call_4012b8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012bb	 Bytes: 4
  %loadMem_4012bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bb)
  store %struct.Memory* %call_4012bb, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4012bf	 Bytes: 4
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012c3	 Bytes: 4
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012c7	 Bytes: 4
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c7)
  store %struct.Memory* %call_4012c7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012cb	 Bytes: 2
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4012cd	 Bytes: 3
  %loadMem_4012cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cd = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cd)
  store %struct.Memory* %call_4012cd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012d0	 Bytes: 4
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012d4	 Bytes: 4
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d4)
  store %struct.Memory* %call_4012d4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012d8	 Bytes: 2
  %loadMem_4012d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d8)
  store %struct.Memory* %call_4012d8, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4012da	 Bytes: 3
  %loadMem_4012da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012da = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012da)
  store %struct.Memory* %call_4012da, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4012dd	 Bytes: 3
  %loadMem_4012dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012dd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012dd)
  store %struct.Memory* %call_4012dd, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4012e0	 Bytes: 5
  %loadMem_4012e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e0 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e0)
  store %struct.Memory* %call_4012e0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4012e5	 Bytes: 4
  %loadMem_4012e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e5)
  store %struct.Memory* %call_4012e5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4012e9	 Bytes: 3
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e9 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e9)
  store %struct.Memory* %call_4012e9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4012ec	 Bytes: 4
  %loadMem_4012ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ec = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ec)
  store %struct.Memory* %call_4012ec, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4012f0	 Bytes: 4
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f0 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f0)
  store %struct.Memory* %call_4012f0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4012f4	 Bytes: 4
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f4)
  store %struct.Memory* %call_4012f4, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4012f8	 Bytes: 4
  %loadMem_4012f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f8 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f8)
  store %struct.Memory* %call_4012f8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4012fc	 Bytes: 4
  %loadMem_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fc)
  store %struct.Memory* %call_4012fc, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401300	 Bytes: 4
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401300 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401300)
  store %struct.Memory* %call_401300, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401304	 Bytes: 3
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401304 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401304)
  store %struct.Memory* %call_401304, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401307	 Bytes: 3
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401307 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401307)
  store %struct.Memory* %call_401307, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40130a	 Bytes: 4
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130a)
  store %struct.Memory* %call_40130a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40130e	 Bytes: 4
  %loadMem_40130e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130e)
  store %struct.Memory* %call_40130e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401312	 Bytes: 4
  %loadMem_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401312 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401312)
  store %struct.Memory* %call_401312, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401316	 Bytes: 4
  %loadMem_401316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401316 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401316)
  store %struct.Memory* %call_401316, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40131a	 Bytes: 2
  %loadMem_40131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131a)
  store %struct.Memory* %call_40131a, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40131c	 Bytes: 3
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40131f	 Bytes: 4
  %loadMem_40131f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131f)
  store %struct.Memory* %call_40131f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401323	 Bytes: 4
  %loadMem_401323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401323 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401323)
  store %struct.Memory* %call_401323, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401327	 Bytes: 2
  %loadMem_401327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401327 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401327)
  store %struct.Memory* %call_401327, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 401329	 Bytes: 3
  %loadMem_401329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401329 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401329)
  store %struct.Memory* %call_401329, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40132c	 Bytes: 3
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132c = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132c)
  store %struct.Memory* %call_40132c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40132f	 Bytes: 2
  %loadMem_40132f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132f)
  store %struct.Memory* %call_40132f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401331	 Bytes: 3
  %loadMem_401331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401331 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401331)
  store %struct.Memory* %call_401331, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 401334	 Bytes: 5
  %loadMem_401334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401334 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401334)
  store %struct.Memory* %call_401334, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401339	 Bytes: 4
  %loadMem_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401339 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401339)
  store %struct.Memory* %call_401339, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40133d	 Bytes: 3
  %loadMem_40133d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133d)
  store %struct.Memory* %call_40133d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401340	 Bytes: 4
  %loadMem_401340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401340 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401340)
  store %struct.Memory* %call_401340, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401344	 Bytes: 4
  %loadMem_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401344 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401344)
  store %struct.Memory* %call_401344, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401348	 Bytes: 4
  %loadMem_401348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401348 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401348)
  store %struct.Memory* %call_401348, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40134c	 Bytes: 4
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401350	 Bytes: 4
  %loadMem_401350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401350 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401350)
  store %struct.Memory* %call_401350, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401354	 Bytes: 4
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401354 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401354)
  store %struct.Memory* %call_401354, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401358	 Bytes: 3
  %loadMem_401358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401358 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401358)
  store %struct.Memory* %call_401358, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40135b	 Bytes: 3
  %loadMem_40135b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135b)
  store %struct.Memory* %call_40135b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40135e	 Bytes: 4
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135e)
  store %struct.Memory* %call_40135e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401362	 Bytes: 4
  %loadMem_401362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401362 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401362)
  store %struct.Memory* %call_401362, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401366	 Bytes: 4
  %loadMem_401366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401366 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401366)
  store %struct.Memory* %call_401366, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40136a	 Bytes: 4
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136a = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136a)
  store %struct.Memory* %call_40136a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40136e	 Bytes: 2
  %loadMem_40136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136e)
  store %struct.Memory* %call_40136e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401370	 Bytes: 3
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401370 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401370)
  store %struct.Memory* %call_401370, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401373	 Bytes: 4
  %loadMem_401373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401373 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401373)
  store %struct.Memory* %call_401373, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401377	 Bytes: 4
  %loadMem_401377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401377 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401377)
  store %struct.Memory* %call_401377, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40137b	 Bytes: 2
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137b)
  store %struct.Memory* %call_40137b, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 40137d	 Bytes: 3
  %loadMem_40137d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137d)
  store %struct.Memory* %call_40137d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401380	 Bytes: 3
  %loadMem_401380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401380 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401380)
  store %struct.Memory* %call_401380, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401383	 Bytes: 2
  %loadMem_401383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401383 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401383)
  store %struct.Memory* %call_401383, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401385	 Bytes: 3
  %loadMem_401385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401385 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401385)
  store %struct.Memory* %call_401385, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401388	 Bytes: 5
  %loadMem_401388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401388 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401388)
  store %struct.Memory* %call_401388, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40138d	 Bytes: 4
  %loadMem_40138d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138d)
  store %struct.Memory* %call_40138d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401391	 Bytes: 3
  %loadMem_401391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401391 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401391)
  store %struct.Memory* %call_401391, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401394	 Bytes: 4
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401394 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401394)
  store %struct.Memory* %call_401394, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401398	 Bytes: 4
  %loadMem_401398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401398 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401398)
  store %struct.Memory* %call_401398, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40139c	 Bytes: 4
  %loadMem_40139c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139c)
  store %struct.Memory* %call_40139c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4013a0	 Bytes: 4
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a0 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a0)
  store %struct.Memory* %call_4013a0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013a4	 Bytes: 4
  %loadMem_4013a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a4)
  store %struct.Memory* %call_4013a4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4013a8	 Bytes: 4
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a8 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a8)
  store %struct.Memory* %call_4013a8, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4013ac	 Bytes: 3
  %loadMem_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ac = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ac)
  store %struct.Memory* %call_4013ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4013af	 Bytes: 3
  %loadMem_4013af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013af = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013af)
  store %struct.Memory* %call_4013af, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013b2	 Bytes: 4
  %loadMem_4013b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b2)
  store %struct.Memory* %call_4013b2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4013b6	 Bytes: 4
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b6 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b6)
  store %struct.Memory* %call_4013b6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013ba	 Bytes: 4
  %loadMem_4013ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ba = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ba)
  store %struct.Memory* %call_4013ba, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013be	 Bytes: 4
  %loadMem_4013be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013be = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013be)
  store %struct.Memory* %call_4013be, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013c2	 Bytes: 2
  %loadMem_4013c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c2)
  store %struct.Memory* %call_4013c2, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4013c4	 Bytes: 3
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c4)
  store %struct.Memory* %call_4013c4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013c7	 Bytes: 4
  %loadMem_4013c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c7)
  store %struct.Memory* %call_4013c7, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013cb	 Bytes: 4
  %loadMem_4013cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cb = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cb)
  store %struct.Memory* %call_4013cb, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013cf	 Bytes: 2
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cf = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cf)
  store %struct.Memory* %call_4013cf, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 4013d1	 Bytes: 3
  %loadMem_4013d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d1)
  store %struct.Memory* %call_4013d1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4013d4	 Bytes: 3
  %loadMem_4013d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d4 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d4)
  store %struct.Memory* %call_4013d4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013d7	 Bytes: 2
  %loadMem_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d7)
  store %struct.Memory* %call_4013d7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4013d9	 Bytes: 3
  %loadMem_4013d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d9)
  store %struct.Memory* %call_4013d9, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4013dc	 Bytes: 5
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4013e1	 Bytes: 4
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e1)
  store %struct.Memory* %call_4013e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4013e5	 Bytes: 3
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e5)
  store %struct.Memory* %call_4013e5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013e8	 Bytes: 4
  %loadMem_4013e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e8)
  store %struct.Memory* %call_4013e8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4013ec	 Bytes: 4
  %loadMem_4013ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ec = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ec)
  store %struct.Memory* %call_4013ec, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013f0	 Bytes: 4
  %loadMem_4013f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f0)
  store %struct.Memory* %call_4013f0, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4013f4	 Bytes: 4
  %loadMem_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f4 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f4)
  store %struct.Memory* %call_4013f4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013f8	 Bytes: 4
  %loadMem_4013f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f8)
  store %struct.Memory* %call_4013f8, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4013fc	 Bytes: 4
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fc = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fc)
  store %struct.Memory* %call_4013fc, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401400	 Bytes: 3
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401400 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401400)
  store %struct.Memory* %call_401400, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401403	 Bytes: 3
  %loadMem_401403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401403 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401403)
  store %struct.Memory* %call_401403, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401406	 Bytes: 4
  %loadMem_401406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401406 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401406)
  store %struct.Memory* %call_401406, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40140a	 Bytes: 4
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140a = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140a)
  store %struct.Memory* %call_40140a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40140e	 Bytes: 4
  %loadMem_40140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140e)
  store %struct.Memory* %call_40140e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401412	 Bytes: 4
  %loadMem_401412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401412 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401412)
  store %struct.Memory* %call_401412, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401416	 Bytes: 2
  %loadMem_401416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401416 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401416)
  store %struct.Memory* %call_401416, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401418	 Bytes: 3
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40141b	 Bytes: 4
  %loadMem_40141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141b)
  store %struct.Memory* %call_40141b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40141f	 Bytes: 4
  %loadMem_40141f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141f)
  store %struct.Memory* %call_40141f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401423	 Bytes: 2
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401423 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401423)
  store %struct.Memory* %call_401423, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 401425	 Bytes: 3
  %loadMem_401425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401425 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401425)
  store %struct.Memory* %call_401425, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401428	 Bytes: 3
  %loadMem_401428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401428 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401428)
  store %struct.Memory* %call_401428, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40142b	 Bytes: 2
  %loadMem_40142b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142b)
  store %struct.Memory* %call_40142b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40142d	 Bytes: 3
  %loadMem_40142d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142d)
  store %struct.Memory* %call_40142d, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 401430	 Bytes: 5
  %loadMem_401430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401430 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401430)
  store %struct.Memory* %call_401430, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 401435	 Bytes: 4
  %loadMem_401435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401435 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401435)
  store %struct.Memory* %call_401435, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401439	 Bytes: 4
  %loadMem_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401439 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401439)
  store %struct.Memory* %call_401439, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40143d	 Bytes: 4
  %loadMem_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143d)
  store %struct.Memory* %call_40143d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401441	 Bytes: 3
  %loadMem_401441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401441 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401441)
  store %struct.Memory* %call_401441, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401444	 Bytes: 4
  %loadMem_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401444 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401444)
  store %struct.Memory* %call_401444, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401448	 Bytes: 4
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401448 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401448)
  store %struct.Memory* %call_401448, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40144c	 Bytes: 4
  %loadMem_40144c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144c)
  store %struct.Memory* %call_40144c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401450	 Bytes: 4
  %loadMem_401450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401450 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401450)
  store %struct.Memory* %call_401450, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401454	 Bytes: 4
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401454 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401454)
  store %struct.Memory* %call_401454, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401458	 Bytes: 4
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401458 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401458)
  store %struct.Memory* %call_401458, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40145c	 Bytes: 3
  %loadMem_40145c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145c)
  store %struct.Memory* %call_40145c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40145f	 Bytes: 4
  %loadMem_40145f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145f)
  store %struct.Memory* %call_40145f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401463	 Bytes: 4
  %loadMem_401463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401463 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401463)
  store %struct.Memory* %call_401463, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401467	 Bytes: 4
  %loadMem_401467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401467 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401467)
  store %struct.Memory* %call_401467, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40146b	 Bytes: 4
  %loadMem_40146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146b)
  store %struct.Memory* %call_40146b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40146f	 Bytes: 2
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146f)
  store %struct.Memory* %call_40146f, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401471	 Bytes: 3
  %loadMem_401471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401471 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401471)
  store %struct.Memory* %call_401471, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401474	 Bytes: 4
  %loadMem_401474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401474 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401474)
  store %struct.Memory* %call_401474, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401478	 Bytes: 4
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401478 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401478)
  store %struct.Memory* %call_401478, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40147c	 Bytes: 2
  %loadMem_40147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147c)
  store %struct.Memory* %call_40147c, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40147e	 Bytes: 3
  %loadMem_40147e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147e = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147e)
  store %struct.Memory* %call_40147e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401481	 Bytes: 3
  %loadMem_401481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401481 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401481)
  store %struct.Memory* %call_401481, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401484	 Bytes: 5
  %loadMem_401484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401484 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401484)
  store %struct.Memory* %call_401484, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401489	 Bytes: 4
  %loadMem_401489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401489 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401489)
  store %struct.Memory* %call_401489, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40148d	 Bytes: 3
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401490	 Bytes: 4
  %loadMem_401490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401490 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401490)
  store %struct.Memory* %call_401490, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401494	 Bytes: 4
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401494 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401494)
  store %struct.Memory* %call_401494, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401498	 Bytes: 4
  %loadMem_401498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401498 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401498)
  store %struct.Memory* %call_401498, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40149c	 Bytes: 4
  %loadMem_40149c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149c = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149c)
  store %struct.Memory* %call_40149c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014a0	 Bytes: 4
  %loadMem_4014a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a0)
  store %struct.Memory* %call_4014a0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4014a4	 Bytes: 4
  %loadMem_4014a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a4)
  store %struct.Memory* %call_4014a4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4014a8	 Bytes: 3
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a8)
  store %struct.Memory* %call_4014a8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4014ab	 Bytes: 3
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ab = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ab)
  store %struct.Memory* %call_4014ab, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014ae	 Bytes: 4
  %loadMem_4014ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ae = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ae)
  store %struct.Memory* %call_4014ae, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4014b2	 Bytes: 4
  %loadMem_4014b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b2 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b2)
  store %struct.Memory* %call_4014b2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014b6	 Bytes: 4
  %loadMem_4014b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b6)
  store %struct.Memory* %call_4014b6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014ba	 Bytes: 4
  %loadMem_4014ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ba = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ba)
  store %struct.Memory* %call_4014ba, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014be	 Bytes: 2
  %loadMem_4014be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014be = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014be)
  store %struct.Memory* %call_4014be, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4014c0	 Bytes: 3
  %loadMem_4014c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c0 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c0)
  store %struct.Memory* %call_4014c0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014c3	 Bytes: 4
  %loadMem_4014c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c3)
  store %struct.Memory* %call_4014c3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014c7	 Bytes: 4
  %loadMem_4014c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c7)
  store %struct.Memory* %call_4014c7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014cb	 Bytes: 2
  %loadMem_4014cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cb)
  store %struct.Memory* %call_4014cb, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4014cd	 Bytes: 3
  %loadMem_4014cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cd = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cd)
  store %struct.Memory* %call_4014cd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4014d0	 Bytes: 3
  %loadMem_4014d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d0)
  store %struct.Memory* %call_4014d0, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4014d3	 Bytes: 5
  %loadMem_4014d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d3 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d3)
  store %struct.Memory* %call_4014d3, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4014d8	 Bytes: 4
  %loadMem_4014d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d8 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d8)
  store %struct.Memory* %call_4014d8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4014dc	 Bytes: 4
  %loadMem_4014dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dc)
  store %struct.Memory* %call_4014dc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4014e0	 Bytes: 3
  %loadMem_4014e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e0 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e0)
  store %struct.Memory* %call_4014e0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4014e3	 Bytes: 4
  %loadMem_4014e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e3)
  store %struct.Memory* %call_4014e3, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4014e7	 Bytes: 3
  %loadMem_4014e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e7 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e7)
  store %struct.Memory* %call_4014e7, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 4014ea	 Bytes: 3
  %loadMem_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ea = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ea)
  store %struct.Memory* %call_4014ea, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4014ed	 Bytes: 4
  %loadMem_4014ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ed)
  store %struct.Memory* %call_4014ed, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4014f1	 Bytes: 4
  %loadMem_4014f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f1 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f1)
  store %struct.Memory* %call_4014f1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4014f5	 Bytes: 4
  %loadMem_4014f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f5)
  store %struct.Memory* %call_4014f5, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4014f9	 Bytes: 4
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f9 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f9)
  store %struct.Memory* %call_4014f9, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4014fd	 Bytes: 3
  %loadMem_4014fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fd = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fd)
  store %struct.Memory* %call_4014fd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401500	 Bytes: 4
  %loadMem_401500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401500 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401500)
  store %struct.Memory* %call_401500, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401504	 Bytes: 4
  %loadMem_401504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401504 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401504)
  store %struct.Memory* %call_401504, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401508	 Bytes: 4
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401508 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401508)
  store %struct.Memory* %call_401508, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40150c	 Bytes: 4
  %loadMem_40150c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150c)
  store %struct.Memory* %call_40150c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401510	 Bytes: 2
  %loadMem_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401510 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401510)
  store %struct.Memory* %call_401510, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401512	 Bytes: 3
  %loadMem_401512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401512 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401512)
  store %struct.Memory* %call_401512, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401515	 Bytes: 4
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401519	 Bytes: 4
  %loadMem_401519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401519 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401519)
  store %struct.Memory* %call_401519, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40151d	 Bytes: 2
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151d)
  store %struct.Memory* %call_40151d, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40151f	 Bytes: 3
  %loadMem_40151f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151f = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151f)
  store %struct.Memory* %call_40151f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401522	 Bytes: 3
  %loadMem_401522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401522 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401522)
  store %struct.Memory* %call_401522, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401525	 Bytes: 5
  %loadMem_401525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401525 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401525)
  store %struct.Memory* %call_401525, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40152a	 Bytes: 4
  %loadMem_40152a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152a)
  store %struct.Memory* %call_40152a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40152e	 Bytes: 3
  %loadMem_40152e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152e)
  store %struct.Memory* %call_40152e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401531	 Bytes: 4
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401535	 Bytes: 4
  %loadMem_401535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401535 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401535)
  store %struct.Memory* %call_401535, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401539	 Bytes: 4
  %loadMem_401539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401539 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401539)
  store %struct.Memory* %call_401539, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40153d	 Bytes: 4
  %loadMem_40153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153d = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153d)
  store %struct.Memory* %call_40153d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401541	 Bytes: 4
  %loadMem_401541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401541 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401541)
  store %struct.Memory* %call_401541, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401545	 Bytes: 4
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401545 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401545)
  store %struct.Memory* %call_401545, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401549	 Bytes: 3
  %loadMem_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401549 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401549)
  store %struct.Memory* %call_401549, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40154c	 Bytes: 4
  %loadMem_40154c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154c)
  store %struct.Memory* %call_40154c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401550	 Bytes: 4
  %loadMem_401550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401550 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401550)
  store %struct.Memory* %call_401550, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401554	 Bytes: 4
  %loadMem_401554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401554 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401554)
  store %struct.Memory* %call_401554, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401558	 Bytes: 4
  %loadMem_401558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401558 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401558)
  store %struct.Memory* %call_401558, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40155c	 Bytes: 2
  %loadMem_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155c)
  store %struct.Memory* %call_40155c, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40155e	 Bytes: 3
  %loadMem_40155e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155e = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155e)
  store %struct.Memory* %call_40155e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401561	 Bytes: 3
  %loadMem_401561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401561 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401561)
  store %struct.Memory* %call_401561, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401564	 Bytes: 4
  %loadMem_401564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401564 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401564)
  store %struct.Memory* %call_401564, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401568	 Bytes: 4
  %loadMem_401568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401568 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401568)
  store %struct.Memory* %call_401568, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40156c	 Bytes: 2
  %loadMem_40156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156c)
  store %struct.Memory* %call_40156c, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40156e	 Bytes: 3
  %loadMem_40156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156e = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156e)
  store %struct.Memory* %call_40156e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401571	 Bytes: 3
  %loadMem_401571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401571 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401571)
  store %struct.Memory* %call_401571, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401574	 Bytes: 5
  %loadMem_401574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401574 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401574)
  store %struct.Memory* %call_401574, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401579	 Bytes: 4
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40157d	 Bytes: 4
  %loadMem_40157d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157d)
  store %struct.Memory* %call_40157d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401581	 Bytes: 3
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401584	 Bytes: 4
  %loadMem_401584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401584 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401584)
  store %struct.Memory* %call_401584, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 401588	 Bytes: 3
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401588 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401588)
  store %struct.Memory* %call_401588, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 40158b	 Bytes: 3
  %loadMem_40158b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158b = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158b)
  store %struct.Memory* %call_40158b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40158e	 Bytes: 4
  %loadMem_40158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158e)
  store %struct.Memory* %call_40158e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401592	 Bytes: 4
  %loadMem_401592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401592 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401592)
  store %struct.Memory* %call_401592, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401596	 Bytes: 4
  %loadMem_401596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401596 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401596)
  store %struct.Memory* %call_401596, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40159a	 Bytes: 4
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40159e	 Bytes: 3
  %loadMem_40159e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159e)
  store %struct.Memory* %call_40159e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015a1	 Bytes: 4
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4015a5	 Bytes: 4
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a5 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a5)
  store %struct.Memory* %call_4015a5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015a9	 Bytes: 4
  %loadMem_4015a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a9)
  store %struct.Memory* %call_4015a9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015ad	 Bytes: 4
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ad = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ad)
  store %struct.Memory* %call_4015ad, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015b1	 Bytes: 2
  %loadMem_4015b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b1)
  store %struct.Memory* %call_4015b1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4015b3	 Bytes: 3
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015b6	 Bytes: 4
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b6)
  store %struct.Memory* %call_4015b6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015ba	 Bytes: 4
  %loadMem_4015ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ba = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ba)
  store %struct.Memory* %call_4015ba, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015be	 Bytes: 2
  %loadMem_4015be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015be = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015be)
  store %struct.Memory* %call_4015be, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4015c0	 Bytes: 3
  %loadMem_4015c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c0 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c0)
  store %struct.Memory* %call_4015c0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4015c3	 Bytes: 3
  %loadMem_4015c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c3)
  store %struct.Memory* %call_4015c3, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4015c6	 Bytes: 5
  %loadMem_4015c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c6)
  store %struct.Memory* %call_4015c6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4015cb	 Bytes: 4
  %loadMem_4015cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cb)
  store %struct.Memory* %call_4015cb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4015cf	 Bytes: 3
  %loadMem_4015cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cf = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cf)
  store %struct.Memory* %call_4015cf, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015d2	 Bytes: 4
  %loadMem_4015d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d2)
  store %struct.Memory* %call_4015d2, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4015d6	 Bytes: 4
  %loadMem_4015d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d6 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d6)
  store %struct.Memory* %call_4015d6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015da	 Bytes: 4
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4015de	 Bytes: 4
  %loadMem_4015de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015de = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015de)
  store %struct.Memory* %call_4015de, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015e2	 Bytes: 4
  %loadMem_4015e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e2)
  store %struct.Memory* %call_4015e2, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4015e6	 Bytes: 4
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4015ea	 Bytes: 3
  %loadMem_4015ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ea = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ea)
  store %struct.Memory* %call_4015ea, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015ed	 Bytes: 4
  %loadMem_4015ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ed = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ed)
  store %struct.Memory* %call_4015ed, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4015f1	 Bytes: 4
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f1 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f1)
  store %struct.Memory* %call_4015f1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015f5	 Bytes: 4
  %loadMem_4015f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f5)
  store %struct.Memory* %call_4015f5, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015f9	 Bytes: 4
  %loadMem_4015f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f9 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f9)
  store %struct.Memory* %call_4015f9, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015fd	 Bytes: 2
  %loadMem_4015fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fd = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fd)
  store %struct.Memory* %call_4015fd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4015ff	 Bytes: 3
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401602	 Bytes: 4
  %loadMem_401602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401602 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401602)
  store %struct.Memory* %call_401602, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401606	 Bytes: 4
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40160a	 Bytes: 2
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160a)
  store %struct.Memory* %call_40160a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 40160c	 Bytes: 3
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160c = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160c)
  store %struct.Memory* %call_40160c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40160f	 Bytes: 3
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160f = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160f)
  store %struct.Memory* %call_40160f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401612	 Bytes: 2
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401612 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401612)
  store %struct.Memory* %call_401612, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401614	 Bytes: 3
  %loadMem_401614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401614 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401614)
  store %struct.Memory* %call_401614, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401617	 Bytes: 5
  %loadMem_401617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401617 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401617)
  store %struct.Memory* %call_401617, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40161c	 Bytes: 4
  %loadMem_40161c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161c = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161c)
  store %struct.Memory* %call_40161c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 401620	 Bytes: 4
  %loadMem_401620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401620 = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401620)
  store %struct.Memory* %call_401620, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401624	 Bytes: 3
  %loadMem_401624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401624 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401624)
  store %struct.Memory* %call_401624, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 401627	 Bytes: 4
  %loadMem_401627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401627 = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401627)
  store %struct.Memory* %call_401627, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40162b	 Bytes: 4
  %loadMem_40162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162b)
  store %struct.Memory* %call_40162b, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 40162f	 Bytes: 4
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401633	 Bytes: 4
  %loadMem_401633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401633 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401633)
  store %struct.Memory* %call_401633, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 401637	 Bytes: 4
  %loadMem_401637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401637 = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401637)
  store %struct.Memory* %call_401637, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40163b	 Bytes: 4
  %loadMem_40163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163b)
  store %struct.Memory* %call_40163b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40163f	 Bytes: 3
  %loadMem_40163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163f)
  store %struct.Memory* %call_40163f, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 401642	 Bytes: 4
  %loadMem_401642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401642 = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401642)
  store %struct.Memory* %call_401642, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401646	 Bytes: 4
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401646 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401646)
  store %struct.Memory* %call_401646, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 40164a	 Bytes: 4
  %loadMem_40164a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164a = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164a)
  store %struct.Memory* %call_40164a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40164e	 Bytes: 4
  %loadMem_40164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164e)
  store %struct.Memory* %call_40164e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401652	 Bytes: 2
  %loadMem_401652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401652 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401652)
  store %struct.Memory* %call_401652, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401654	 Bytes: 3
  %loadMem_401654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401654 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401654)
  store %struct.Memory* %call_401654, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rcx	 RIP: 401657	 Bytes: 4
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40165b	 Bytes: 4
  %loadMem_40165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165b)
  store %struct.Memory* %call_40165b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40165f	 Bytes: 2
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165f)
  store %struct.Memory* %call_40165f, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 401661	 Bytes: 3
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401664	 Bytes: 3
  %loadMem_401664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401664 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401664)
  store %struct.Memory* %call_401664, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm0	 RIP: 401667	 Bytes: 5
  %loadMem_401667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401667 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401667)
  store %struct.Memory* %call_401667, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x54(%rbp)	 RIP: 40166c	 Bytes: 5
  %loadMem_40166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166c = call %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166c)
  store %struct.Memory* %call_40166c, %struct.Memory** %MEMORY

  ; Code: movss -0x54(%rbp), %xmm0	 RIP: 401671	 Bytes: 5
  %loadMem_401671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401671 = call %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401671)
  store %struct.Memory* %call_401671, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 401676	 Bytes: 4
  %loadMem_401676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401676 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401676)
  store %struct.Memory* %call_401676, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40167a	 Bytes: 3
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167a)
  store %struct.Memory* %call_40167a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40167d	 Bytes: 4
  %loadMem_40167d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167d)
  store %struct.Memory* %call_40167d, %struct.Memory** %MEMORY

  ; Code: imull $0x3, 0xc(%rcx), %edx	 RIP: 401681	 Bytes: 4
  %loadMem_401681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401681 = call %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401681)
  store %struct.Memory* %call_401681, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 401685	 Bytes: 4
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401689	 Bytes: 4
  %loadMem_401689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401689 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401689)
  store %struct.Memory* %call_401689, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40168d	 Bytes: 4
  %loadMem_40168d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168d)
  store %struct.Memory* %call_40168d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401691	 Bytes: 4
  %loadMem_401691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401691 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401691)
  store %struct.Memory* %call_401691, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401695	 Bytes: 3
  %loadMem_401695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401695 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401695)
  store %struct.Memory* %call_401695, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 401698	 Bytes: 4
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401698 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401698)
  store %struct.Memory* %call_401698, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40169c	 Bytes: 4
  %loadMem_40169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169c)
  store %struct.Memory* %call_40169c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016a0	 Bytes: 4
  %loadMem_4016a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a0)
  store %struct.Memory* %call_4016a0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016a4	 Bytes: 4
  %loadMem_4016a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a4)
  store %struct.Memory* %call_4016a4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016a8	 Bytes: 2
  %loadMem_4016a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a8)
  store %struct.Memory* %call_4016a8, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4016aa	 Bytes: 3
  %loadMem_4016aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016aa = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016aa)
  store %struct.Memory* %call_4016aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016ad	 Bytes: 4
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ad)
  store %struct.Memory* %call_4016ad, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016b1	 Bytes: 4
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016b5	 Bytes: 2
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b5)
  store %struct.Memory* %call_4016b5, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4016b7	 Bytes: 3
  %loadMem_4016b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b7 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b7)
  store %struct.Memory* %call_4016b7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4016ba	 Bytes: 3
  %loadMem_4016ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ba = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ba)
  store %struct.Memory* %call_4016ba, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 4016bd	 Bytes: 5
  %loadMem_4016bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bd = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bd)
  store %struct.Memory* %call_4016bd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4016c2	 Bytes: 4
  %loadMem_4016c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c2)
  store %struct.Memory* %call_4016c2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4016c6	 Bytes: 3
  %loadMem_4016c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c6)
  store %struct.Memory* %call_4016c6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016c9	 Bytes: 4
  %loadMem_4016c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c9)
  store %struct.Memory* %call_4016c9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4016cd	 Bytes: 4
  %loadMem_4016cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cd = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cd)
  store %struct.Memory* %call_4016cd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016d1	 Bytes: 4
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4016d5	 Bytes: 4
  %loadMem_4016d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d5 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d5)
  store %struct.Memory* %call_4016d5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016d9	 Bytes: 4
  %loadMem_4016d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d9)
  store %struct.Memory* %call_4016d9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4016dd	 Bytes: 4
  %loadMem_4016dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016dd = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016dd)
  store %struct.Memory* %call_4016dd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4016e1	 Bytes: 3
  %loadMem_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e1)
  store %struct.Memory* %call_4016e1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016e4	 Bytes: 4
  %loadMem_4016e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e4)
  store %struct.Memory* %call_4016e4, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4016e8	 Bytes: 4
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e8 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e8)
  store %struct.Memory* %call_4016e8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016ec	 Bytes: 4
  %loadMem_4016ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ec = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ec)
  store %struct.Memory* %call_4016ec, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016f0	 Bytes: 4
  %loadMem_4016f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f0 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f0)
  store %struct.Memory* %call_4016f0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016f4	 Bytes: 2
  %loadMem_4016f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f4 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f4)
  store %struct.Memory* %call_4016f4, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4016f6	 Bytes: 3
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f6 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f6)
  store %struct.Memory* %call_4016f6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016f9	 Bytes: 4
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f9)
  store %struct.Memory* %call_4016f9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016fd	 Bytes: 4
  %loadMem_4016fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fd)
  store %struct.Memory* %call_4016fd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401701	 Bytes: 2
  %loadMem_401701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401701 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401701)
  store %struct.Memory* %call_401701, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 401703	 Bytes: 3
  %loadMem_401703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401703 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401703)
  store %struct.Memory* %call_401703, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401706	 Bytes: 3
  %loadMem_401706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401706 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401706)
  store %struct.Memory* %call_401706, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm0	 RIP: 401709	 Bytes: 5
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401709 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401709)
  store %struct.Memory* %call_401709, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40170e	 Bytes: 4
  %loadMem_40170e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170e)
  store %struct.Memory* %call_40170e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401712	 Bytes: 3
  %loadMem_401712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401712 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401712)
  store %struct.Memory* %call_401712, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401715	 Bytes: 4
  %loadMem_401715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401715 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401715)
  store %struct.Memory* %call_401715, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401719	 Bytes: 4
  %loadMem_401719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401719 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401719)
  store %struct.Memory* %call_401719, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40171d	 Bytes: 4
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401721	 Bytes: 4
  %loadMem_401721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401721 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401721)
  store %struct.Memory* %call_401721, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401725	 Bytes: 4
  %loadMem_401725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401725 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401725)
  store %struct.Memory* %call_401725, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401729	 Bytes: 4
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 40172d	 Bytes: 3
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172d)
  store %struct.Memory* %call_40172d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401730	 Bytes: 4
  %loadMem_401730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401730 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401730)
  store %struct.Memory* %call_401730, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401734	 Bytes: 4
  %loadMem_401734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401734 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401734)
  store %struct.Memory* %call_401734, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401738	 Bytes: 4
  %loadMem_401738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401738 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401738)
  store %struct.Memory* %call_401738, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40173c	 Bytes: 4
  %loadMem_40173c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173c)
  store %struct.Memory* %call_40173c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401740	 Bytes: 2
  %loadMem_401740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401740 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401740)
  store %struct.Memory* %call_401740, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401742	 Bytes: 3
  %loadMem_401742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401742 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401742)
  store %struct.Memory* %call_401742, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401745	 Bytes: 4
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401749	 Bytes: 4
  %loadMem_401749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401749 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401749)
  store %struct.Memory* %call_401749, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40174d	 Bytes: 2
  %loadMem_40174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174d)
  store %struct.Memory* %call_40174d, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 40174f	 Bytes: 3
  %loadMem_40174f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174f = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174f)
  store %struct.Memory* %call_40174f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401752	 Bytes: 3
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401752 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401752)
  store %struct.Memory* %call_401752, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 401755	 Bytes: 5
  %loadMem_401755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401755 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401755)
  store %struct.Memory* %call_401755, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x58(%rbp)	 RIP: 40175a	 Bytes: 5
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175a = call %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175a)
  store %struct.Memory* %call_40175a, %struct.Memory** %MEMORY

  ; Code: movss -0x58(%rbp), %xmm0	 RIP: 40175f	 Bytes: 5
  %loadMem_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175f = call %struct.Memory* @routine_movss_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175f)
  store %struct.Memory* %call_40175f, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm0	 RIP: 401764	 Bytes: 5
  %loadMem_401764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401764 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401764)
  store %struct.Memory* %call_401764, %struct.Memory** %MEMORY

  ; Code: addss -0x50(%rbp), %xmm0	 RIP: 401769	 Bytes: 5
  %loadMem_401769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401769 = call %struct.Memory* @routine_addss_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401769)
  store %struct.Memory* %call_401769, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x50(%rbp)	 RIP: 40176e	 Bytes: 5
  %loadMem_40176e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176e = call %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176e)
  store %struct.Memory* %call_40176e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401773	 Bytes: 4
  %loadMem_401773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401773 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401773)
  store %struct.Memory* %call_401773, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401777	 Bytes: 3
  %loadMem_401777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401777 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401777)
  store %struct.Memory* %call_401777, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40177a	 Bytes: 4
  %loadMem_40177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177a)
  store %struct.Memory* %call_40177a, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40177e	 Bytes: 4
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177e = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177e)
  store %struct.Memory* %call_40177e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401782	 Bytes: 4
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401782 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401782)
  store %struct.Memory* %call_401782, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401786	 Bytes: 4
  %loadMem_401786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401786 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401786)
  store %struct.Memory* %call_401786, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40178a	 Bytes: 4
  %loadMem_40178a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178a)
  store %struct.Memory* %call_40178a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40178e	 Bytes: 4
  %loadMem_40178e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178e)
  store %struct.Memory* %call_40178e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 401792	 Bytes: 3
  %loadMem_401792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401792 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401792)
  store %struct.Memory* %call_401792, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401795	 Bytes: 4
  %loadMem_401795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401795 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401795)
  store %struct.Memory* %call_401795, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401799	 Bytes: 4
  %loadMem_401799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401799 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401799)
  store %struct.Memory* %call_401799, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40179d	 Bytes: 4
  %loadMem_40179d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179d)
  store %struct.Memory* %call_40179d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017a1	 Bytes: 4
  %loadMem_4017a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a1)
  store %struct.Memory* %call_4017a1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017a5	 Bytes: 2
  %loadMem_4017a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a5)
  store %struct.Memory* %call_4017a5, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4017a7	 Bytes: 3
  %loadMem_4017a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a7 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a7)
  store %struct.Memory* %call_4017a7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017aa	 Bytes: 4
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017ae	 Bytes: 4
  %loadMem_4017ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ae = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ae)
  store %struct.Memory* %call_4017ae, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017b2	 Bytes: 2
  %loadMem_4017b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b2)
  store %struct.Memory* %call_4017b2, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4017b4	 Bytes: 3
  %loadMem_4017b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b4 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b4)
  store %struct.Memory* %call_4017b4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4017b7	 Bytes: 3
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b7)
  store %struct.Memory* %call_4017b7, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4017ba	 Bytes: 5
  %loadMem_4017ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ba = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ba)
  store %struct.Memory* %call_4017ba, %struct.Memory** %MEMORY

  ; Code: movss 0x603058, %xmm1	 RIP: 4017bf	 Bytes: 9
  %loadMem_4017bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017bf = call %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017bf)
  store %struct.Memory* %call_4017bf, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm1	 RIP: 4017c8	 Bytes: 5
  %loadMem_4017c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c8 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c8)
  store %struct.Memory* %call_4017c8, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4017cd	 Bytes: 4
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cd = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cd)
  store %struct.Memory* %call_4017cd, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4017d1	 Bytes: 4
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4017d5	 Bytes: 3
  %loadMem_4017d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d5)
  store %struct.Memory* %call_4017d5, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4017d8	 Bytes: 4
  %loadMem_4017d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d8 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d8)
  store %struct.Memory* %call_4017d8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4017dc	 Bytes: 4
  %loadMem_4017dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017dc = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017dc)
  store %struct.Memory* %call_4017dc, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4017e0	 Bytes: 4
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e0 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e0)
  store %struct.Memory* %call_4017e0, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4017e4	 Bytes: 4
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e4 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e4)
  store %struct.Memory* %call_4017e4, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4017e8	 Bytes: 4
  %loadMem_4017e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e8 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e8)
  store %struct.Memory* %call_4017e8, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4017ec	 Bytes: 4
  %loadMem_4017ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ec = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ec)
  store %struct.Memory* %call_4017ec, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4017f0	 Bytes: 3
  %loadMem_4017f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f0 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f0)
  store %struct.Memory* %call_4017f0, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4017f3	 Bytes: 4
  %loadMem_4017f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f3 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f3)
  store %struct.Memory* %call_4017f3, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4017f7	 Bytes: 4
  %loadMem_4017f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f7 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f7)
  store %struct.Memory* %call_4017f7, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4017fb	 Bytes: 4
  %loadMem_4017fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fb = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fb)
  store %struct.Memory* %call_4017fb, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017ff	 Bytes: 4
  %loadMem_4017ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ff = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ff)
  store %struct.Memory* %call_4017ff, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401803	 Bytes: 2
  %loadMem_401803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401803 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401803)
  store %struct.Memory* %call_401803, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 401805	 Bytes: 3
  %loadMem_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401805 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401805)
  store %struct.Memory* %call_401805, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 401808	 Bytes: 4
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40180c	 Bytes: 4
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180c)
  store %struct.Memory* %call_40180c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401810	 Bytes: 2
  %loadMem_401810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401810 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401810)
  store %struct.Memory* %call_401810, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 401812	 Bytes: 3
  %loadMem_401812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401812 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401812)
  store %struct.Memory* %call_401812, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401815	 Bytes: 3
  %loadMem_401815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401815 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401815)
  store %struct.Memory* %call_401815, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 401818	 Bytes: 5
  %loadMem_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401818 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401818)
  store %struct.Memory* %call_401818, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 40181d	 Bytes: 3
  %loadMem_40181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181d)
  store %struct.Memory* %call_40181d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401820	 Bytes: 3
  %loadMem_401820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401820 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401820)
  store %struct.Memory* %call_401820, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 401823	 Bytes: 3
  %loadMem_401823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401823 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401823)
  store %struct.Memory* %call_401823, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d6a	 RIP: 401826	 Bytes: 5
  %loadMem_401826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401826 = call %struct.Memory* @routine_jmpq_.L_400d6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401826, i64 -2748, i64 5)
  store %struct.Memory* %call_401826, %struct.Memory** %MEMORY

  br label %block_.L_400d6a

  ; Code: .L_40182b:	 RIP: 40182b	 Bytes: 0
block_.L_40182b:

  ; Code: jmpq .L_401830	 RIP: 40182b	 Bytes: 5
  %loadMem_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182b = call %struct.Memory* @routine_jmpq_.L_401830(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182b, i64 5, i64 5)
  store %struct.Memory* %call_40182b, %struct.Memory** %MEMORY

  br label %block_.L_401830

  ; Code: .L_401830:	 RIP: 401830	 Bytes: 0
block_.L_401830:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 401830	 Bytes: 3
  %loadMem_401830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401830 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401830)
  store %struct.Memory* %call_401830, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401833	 Bytes: 3
  %loadMem_401833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401833 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401833)
  store %struct.Memory* %call_401833, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 401836	 Bytes: 3
  %loadMem_401836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401836 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401836)
  store %struct.Memory* %call_401836, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d57	 RIP: 401839	 Bytes: 5
  %loadMem_401839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401839 = call %struct.Memory* @routine_jmpq_.L_400d57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401839, i64 -2786, i64 5)
  store %struct.Memory* %call_401839, %struct.Memory** %MEMORY

  br label %block_.L_400d57

  ; Code: .L_40183e:	 RIP: 40183e	 Bytes: 0
block_.L_40183e:

  ; Code: jmpq .L_401843	 RIP: 40183e	 Bytes: 5
  %loadMem_40183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183e = call %struct.Memory* @routine_jmpq_.L_401843(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183e, i64 5, i64 5)
  store %struct.Memory* %call_40183e, %struct.Memory** %MEMORY

  br label %block_.L_401843

  ; Code: .L_401843:	 RIP: 401843	 Bytes: 0
block_.L_401843:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401843	 Bytes: 3
  %loadMem_401843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401843 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401843)
  store %struct.Memory* %call_401843, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401846	 Bytes: 3
  %loadMem_401846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401846 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401846)
  store %struct.Memory* %call_401846, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 401849	 Bytes: 3
  %loadMem_401849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401849 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401849)
  store %struct.Memory* %call_401849, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d44	 RIP: 40184c	 Bytes: 5
  %loadMem_40184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184c = call %struct.Memory* @routine_jmpq_.L_400d44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184c, i64 -2824, i64 5)
  store %struct.Memory* %call_40184c, %struct.Memory** %MEMORY

  br label %block_.L_400d44

  ; Code: .L_401851:	 RIP: 401851	 Bytes: 0
block_.L_401851:

  ; Code: movl $0x1, -0x34(%rbp)	 RIP: 401851	 Bytes: 7
  %loadMem_401851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401851 = call %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401851)
  store %struct.Memory* %call_401851, %struct.Memory** %MEMORY

  ; Code: .L_401858:	 RIP: 401858	 Bytes: 0
  br label %block_.L_401858
block_.L_401858:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401858	 Bytes: 3
  %loadMem_401858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401858 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401858)
  store %struct.Memory* %call_401858, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 40185b	 Bytes: 3
  %loadMem_40185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185b = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185b)
  store %struct.Memory* %call_40185b, %struct.Memory** %MEMORY

  ; Code: jge .L_401956	 RIP: 40185e	 Bytes: 6
  %loadMem_40185e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185e = call %struct.Memory* @routine_jge_.L_401956(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185e, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_40185e, %struct.Memory** %MEMORY

  %loadBr_40185e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40185e = icmp eq i8 %loadBr_40185e, 1
  br i1 %cmpBr_40185e, label %block_.L_401956, label %block_401864

block_401864:
  ; Code: movl $0x1, -0x38(%rbp)	 RIP: 401864	 Bytes: 7
  %loadMem_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401864 = call %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401864)
  store %struct.Memory* %call_401864, %struct.Memory** %MEMORY

  ; Code: .L_40186b:	 RIP: 40186b	 Bytes: 0
  br label %block_.L_40186b
block_.L_40186b:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 40186b	 Bytes: 3
  %loadMem_40186b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186b)
  store %struct.Memory* %call_40186b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 40186e	 Bytes: 3
  %loadMem_40186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186e = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186e)
  store %struct.Memory* %call_40186e, %struct.Memory** %MEMORY

  ; Code: jge .L_401943	 RIP: 401871	 Bytes: 6
  %loadMem_401871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401871 = call %struct.Memory* @routine_jge_.L_401943(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401871, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_401871, %struct.Memory** %MEMORY

  %loadBr_401871 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401871 = icmp eq i8 %loadBr_401871, 1
  br i1 %cmpBr_401871, label %block_.L_401943, label %block_401877

block_401877:
  ; Code: movl $0x1, -0x3c(%rbp)	 RIP: 401877	 Bytes: 7
  %loadMem_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401877 = call %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401877)
  store %struct.Memory* %call_401877, %struct.Memory** %MEMORY

  ; Code: .L_40187e:	 RIP: 40187e	 Bytes: 0
  br label %block_.L_40187e
block_.L_40187e:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 40187e	 Bytes: 3
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187e = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187e)
  store %struct.Memory* %call_40187e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 401881	 Bytes: 3
  %loadMem_401881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401881 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401881)
  store %struct.Memory* %call_401881, %struct.Memory** %MEMORY

  ; Code: jge .L_401930	 RIP: 401884	 Bytes: 6
  %loadMem_401884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401884 = call %struct.Memory* @routine_jge_.L_401930(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401884, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_401884, %struct.Memory** %MEMORY

  %loadBr_401884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401884 = icmp eq i8 %loadBr_401884, 1
  br i1 %cmpBr_401884, label %block_.L_401930, label %block_40188a

block_40188a:
  ; Code: movq 0x18(%rbp), %rax	 RIP: 40188a	 Bytes: 4
  %loadMem_40188a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188a = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188a)
  store %struct.Memory* %call_40188a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40188e	 Bytes: 3
  %loadMem_40188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188e)
  store %struct.Memory* %call_40188e, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 401891	 Bytes: 4
  %loadMem_401891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401891 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401891)
  store %struct.Memory* %call_401891, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401895	 Bytes: 4
  %loadMem_401895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401895 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401895)
  store %struct.Memory* %call_401895, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 401899	 Bytes: 4
  %loadMem_401899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401899 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401899)
  store %struct.Memory* %call_401899, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40189d	 Bytes: 4
  %loadMem_40189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189d = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189d)
  store %struct.Memory* %call_40189d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4018a1	 Bytes: 4
  %loadMem_4018a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a1 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a1)
  store %struct.Memory* %call_4018a1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4018a5	 Bytes: 4
  %loadMem_4018a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a5 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a5)
  store %struct.Memory* %call_4018a5, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4018a9	 Bytes: 3
  %loadMem_4018a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a9)
  store %struct.Memory* %call_4018a9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4018ac	 Bytes: 4
  %loadMem_4018ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ac = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ac)
  store %struct.Memory* %call_4018ac, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4018b0	 Bytes: 4
  %loadMem_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b0)
  store %struct.Memory* %call_4018b0, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4018b4	 Bytes: 4
  %loadMem_4018b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b4 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b4)
  store %struct.Memory* %call_4018b4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018b8	 Bytes: 4
  %loadMem_4018b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b8)
  store %struct.Memory* %call_4018b8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018bc	 Bytes: 2
  %loadMem_4018bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018bc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018bc)
  store %struct.Memory* %call_4018bc, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4018be	 Bytes: 3
  %loadMem_4018be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018be = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018be)
  store %struct.Memory* %call_4018be, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rcx	 RIP: 4018c1	 Bytes: 4
  %loadMem_4018c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c1 = call %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c1)
  store %struct.Memory* %call_4018c1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018c5	 Bytes: 4
  %loadMem_4018c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c5 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c5)
  store %struct.Memory* %call_4018c5, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018c9	 Bytes: 2
  %loadMem_4018c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c9)
  store %struct.Memory* %call_4018c9, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 4018cb	 Bytes: 3
  %loadMem_4018cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cb = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cb)
  store %struct.Memory* %call_4018cb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4018ce	 Bytes: 3
  %loadMem_4018ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ce = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ce)
  store %struct.Memory* %call_4018ce, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4018d1	 Bytes: 5
  %loadMem_4018d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d1 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d1)
  store %struct.Memory* %call_4018d1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4018d6	 Bytes: 4
  %loadMem_4018d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d6)
  store %struct.Memory* %call_4018d6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4018da	 Bytes: 3
  %loadMem_4018da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018da = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018da)
  store %struct.Memory* %call_4018da, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4018dd	 Bytes: 4
  %loadMem_4018dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dd)
  store %struct.Memory* %call_4018dd, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4018e1	 Bytes: 4
  %loadMem_4018e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e1 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e1)
  store %struct.Memory* %call_4018e1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4018e5	 Bytes: 4
  %loadMem_4018e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e5)
  store %struct.Memory* %call_4018e5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4018e9	 Bytes: 4
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e9 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e9)
  store %struct.Memory* %call_4018e9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4018ed	 Bytes: 4
  %loadMem_4018ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ed = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ed)
  store %struct.Memory* %call_4018ed, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4018f1	 Bytes: 4
  %loadMem_4018f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f1 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f1)
  store %struct.Memory* %call_4018f1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4018f5	 Bytes: 3
  %loadMem_4018f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f5 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f5)
  store %struct.Memory* %call_4018f5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4018f8	 Bytes: 4
  %loadMem_4018f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f8)
  store %struct.Memory* %call_4018f8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4018fc	 Bytes: 4
  %loadMem_4018fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fc = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fc)
  store %struct.Memory* %call_4018fc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401900	 Bytes: 4
  %loadMem_401900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401900 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401900)
  store %struct.Memory* %call_401900, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401904	 Bytes: 4
  %loadMem_401904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401904 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401904)
  store %struct.Memory* %call_401904, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401908	 Bytes: 2
  %loadMem_401908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401908 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401908)
  store %struct.Memory* %call_401908, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 40190a	 Bytes: 3
  %loadMem_40190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190a)
  store %struct.Memory* %call_40190a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40190d	 Bytes: 4
  %loadMem_40190d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190d)
  store %struct.Memory* %call_40190d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401911	 Bytes: 4
  %loadMem_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401911 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401911)
  store %struct.Memory* %call_401911, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401915	 Bytes: 2
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401915 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401915)
  store %struct.Memory* %call_401915, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 401917	 Bytes: 3
  %loadMem_401917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401917 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401917)
  store %struct.Memory* %call_401917, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40191a	 Bytes: 3
  %loadMem_40191a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191a)
  store %struct.Memory* %call_40191a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40191d	 Bytes: 5
  %loadMem_40191d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191d = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191d)
  store %struct.Memory* %call_40191d, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 401922	 Bytes: 3
  %loadMem_401922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401922 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401922)
  store %struct.Memory* %call_401922, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401925	 Bytes: 3
  %loadMem_401925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401925 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401925)
  store %struct.Memory* %call_401925, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 401928	 Bytes: 3
  %loadMem_401928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401928 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401928)
  store %struct.Memory* %call_401928, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40187e	 RIP: 40192b	 Bytes: 5
  %loadMem_40192b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192b = call %struct.Memory* @routine_jmpq_.L_40187e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192b, i64 -173, i64 5)
  store %struct.Memory* %call_40192b, %struct.Memory** %MEMORY

  br label %block_.L_40187e

  ; Code: .L_401930:	 RIP: 401930	 Bytes: 0
block_.L_401930:

  ; Code: jmpq .L_401935	 RIP: 401930	 Bytes: 5
  %loadMem_401930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401930 = call %struct.Memory* @routine_jmpq_.L_401935(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401930, i64 5, i64 5)
  store %struct.Memory* %call_401930, %struct.Memory** %MEMORY

  br label %block_.L_401935

  ; Code: .L_401935:	 RIP: 401935	 Bytes: 0
block_.L_401935:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 401935	 Bytes: 3
  %loadMem_401935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401935 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401935)
  store %struct.Memory* %call_401935, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401938	 Bytes: 3
  %loadMem_401938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401938 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401938)
  store %struct.Memory* %call_401938, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 40193b	 Bytes: 3
  %loadMem_40193b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193b = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193b)
  store %struct.Memory* %call_40193b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40186b	 RIP: 40193e	 Bytes: 5
  %loadMem_40193e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193e = call %struct.Memory* @routine_jmpq_.L_40186b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193e, i64 -211, i64 5)
  store %struct.Memory* %call_40193e, %struct.Memory** %MEMORY

  br label %block_.L_40186b

  ; Code: .L_401943:	 RIP: 401943	 Bytes: 0
block_.L_401943:

  ; Code: jmpq .L_401948	 RIP: 401943	 Bytes: 5
  %loadMem_401943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401943 = call %struct.Memory* @routine_jmpq_.L_401948(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401943, i64 5, i64 5)
  store %struct.Memory* %call_401943, %struct.Memory** %MEMORY

  br label %block_.L_401948

  ; Code: .L_401948:	 RIP: 401948	 Bytes: 0
block_.L_401948:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401948	 Bytes: 3
  %loadMem_401948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401948 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401948)
  store %struct.Memory* %call_401948, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40194b	 Bytes: 3
  %loadMem_40194b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194b)
  store %struct.Memory* %call_40194b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 40194e	 Bytes: 3
  %loadMem_40194e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194e = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194e)
  store %struct.Memory* %call_40194e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401858	 RIP: 401951	 Bytes: 5
  %loadMem_401951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401951 = call %struct.Memory* @routine_jmpq_.L_401858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401951, i64 -249, i64 5)
  store %struct.Memory* %call_401951, %struct.Memory** %MEMORY

  br label %block_.L_401858

  ; Code: .L_401956:	 RIP: 401956	 Bytes: 0
block_.L_401956:

  ; Code: jmpq .L_40195b	 RIP: 401956	 Bytes: 5
  %loadMem_401956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401956 = call %struct.Memory* @routine_jmpq_.L_40195b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401956, i64 5, i64 5)
  store %struct.Memory* %call_401956, %struct.Memory** %MEMORY

  br label %block_.L_40195b

  ; Code: .L_40195b:	 RIP: 40195b	 Bytes: 0
block_.L_40195b:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 40195b	 Bytes: 3
  %loadMem_40195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195b = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195b)
  store %struct.Memory* %call_40195b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40195e	 Bytes: 3
  %loadMem_40195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195e)
  store %struct.Memory* %call_40195e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 401961	 Bytes: 3
  %loadMem_401961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401961 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401961)
  store %struct.Memory* %call_401961, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d29	 RIP: 401964	 Bytes: 5
  %loadMem_401964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401964 = call %struct.Memory* @routine_jmpq_.L_400d29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401964, i64 -3131, i64 5)
  store %struct.Memory* %call_401964, %struct.Memory** %MEMORY

  br label %block_.L_400d29

  ; Code: .L_401969:	 RIP: 401969	 Bytes: 0
block_.L_401969:

  ; Code: movss -0x50(%rbp), %xmm0	 RIP: 401969	 Bytes: 5
  %loadMem_401969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401969 = call %struct.Memory* @routine_movss_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401969)
  store %struct.Memory* %call_401969, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40196e	 Bytes: 1
  %loadMem_40196e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196e)
  store %struct.Memory* %call_40196e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40196f	 Bytes: 1
  %loadMem_40196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196f)
  store %struct.Memory* %call_40196f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40196f
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
block_400478:
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
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
block_400478:
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


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl__edi__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x14__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401969(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401851(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 72
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40183e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40182b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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




define %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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




define %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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




define %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
block_400478:
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























define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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








define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_shll__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


































define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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












































define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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










define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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








































































define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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












define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


















































































define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


































define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
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

define %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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



























































































define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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




































































































































































































































































































































































































































































































define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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










































































































































































































































































define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




































define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = sub i64 %11, 84
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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












































































define %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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






































define %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addss_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














































define %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




































define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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




define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_400d6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_401830(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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






define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_400d57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_401843(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_400d44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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








define %struct.Memory* @routine_jge_.L_401956(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_401943(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_401930(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































































define %struct.Memory* @routine_jmpq_.L_40187e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_401935(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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








define %struct.Memory* @routine_jmpq_.L_40186b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_401948(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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








define %struct.Memory* @routine_jmpq_.L_401858(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_jmpq_.L_40195b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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






define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400d29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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


define %struct.Memory* @routine_movss_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400478:
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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
block_400478:
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
block_400478:
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

