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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

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


define %struct.Memory* @kernel_fdtd_apml(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_fdtd_apml:	 RIP: 4014c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4014c0	 Bytes: 1
  %loadMem_4014c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c0)
  store %struct.Memory* %call_4014c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4014c1	 Bytes: 3
  %loadMem_4014c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c1)
  store %struct.Memory* %call_4014c1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4014c4	 Bytes: 2
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c4)
  store %struct.Memory* %call_4014c4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4014c6	 Bytes: 2
  %loadMem_4014c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c6)
  store %struct.Memory* %call_4014c6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 4014c8	 Bytes: 2
  %loadMem_4014c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c8)
  store %struct.Memory* %call_4014c8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 4014ca	 Bytes: 2
  %loadMem_4014ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ca = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ca)
  store %struct.Memory* %call_4014ca, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4014cc	 Bytes: 1
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: subq $0x38, %rsp	 RIP: 4014cd	 Bytes: 4
  %loadMem_4014cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cd = call %struct.Memory* @routine_subq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cd)
  store %struct.Memory* %call_4014cd, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4014d1	 Bytes: 4
  %loadMem_4014d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d1 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d1)
  store %struct.Memory* %call_4014d1, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %r10	 RIP: 4014d5	 Bytes: 4
  %loadMem_4014d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d5 = call %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d5)
  store %struct.Memory* %call_4014d5, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %r11	 RIP: 4014d9	 Bytes: 4
  %loadMem_4014d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d9 = call %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d9)
  store %struct.Memory* %call_4014d9, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rbx	 RIP: 4014dd	 Bytes: 4
  %loadMem_4014dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dd = call %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dd)
  store %struct.Memory* %call_4014dd, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %r14	 RIP: 4014e1	 Bytes: 4
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e1 = call %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e1)
  store %struct.Memory* %call_4014e1, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %r15	 RIP: 4014e5	 Bytes: 4
  %loadMem_4014e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e5 = call %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e5)
  store %struct.Memory* %call_4014e5, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r12	 RIP: 4014e9	 Bytes: 4
  %loadMem_4014e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e9 = call %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e9)
  store %struct.Memory* %call_4014e9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r13	 RIP: 4014ed	 Bytes: 4
  %loadMem_4014ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ed = call %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ed)
  store %struct.Memory* %call_4014ed, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 4014f1	 Bytes: 7
  %loadMem_4014f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f1 = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f1)
  store %struct.Memory* %call_4014f1, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 4014f8	 Bytes: 4
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f8 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f8)
  store %struct.Memory* %call_4014f8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 4014fc	 Bytes: 7
  %loadMem_4014fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fc = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fc)
  store %struct.Memory* %call_4014fc, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 401503	 Bytes: 4
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 401507	 Bytes: 7
  %loadMem_401507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401507 = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401507)
  store %struct.Memory* %call_401507, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 40150e	 Bytes: 4
  %loadMem_40150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150e = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150e)
  store %struct.Memory* %call_40150e, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 401512	 Bytes: 3
  %loadMem_401512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401512 = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401512)
  store %struct.Memory* %call_401512, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30(%rbp)	 RIP: 401515	 Bytes: 3
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 401518	 Bytes: 3
  %loadMem_401518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401518 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401518)
  store %struct.Memory* %call_401518, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40151b	 Bytes: 5
  %loadMem_40151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151b)
  store %struct.Memory* %call_40151b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 401520	 Bytes: 5
  %loadMem_401520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401520 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401520)
  store %struct.Memory* %call_401520, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 401525	 Bytes: 4
  %loadMem_401525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401525 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401525)
  store %struct.Memory* %call_401525, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x58(%rbp)	 RIP: 401529	 Bytes: 4
  %loadMem_401529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401529 = call %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401529)
  store %struct.Memory* %call_401529, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x60(%rbp)	 RIP: 40152d	 Bytes: 4
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152d = call %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152d)
  store %struct.Memory* %call_40152d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 401531	 Bytes: 4
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rax	 RIP: 401535	 Bytes: 7
  %loadMem_401535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401535 = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401535)
  store %struct.Memory* %call_401535, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 40153c	 Bytes: 4
  %loadMem_40153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153c = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153c)
  store %struct.Memory* %call_40153c, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rcx	 RIP: 401540	 Bytes: 7
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x78(%rbp)	 RIP: 401547	 Bytes: 4
  %loadMem_401547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401547 = call %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401547)
  store %struct.Memory* %call_401547, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x80(%rbp)	 RIP: 40154b	 Bytes: 4
  %loadMem_40154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154b = call %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154b)
  store %struct.Memory* %call_40154b, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0x88(%rbp)	 RIP: 40154f	 Bytes: 7
  %loadMem_40154f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154f = call %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154f)
  store %struct.Memory* %call_40154f, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0x90(%rbp)	 RIP: 401556	 Bytes: 7
  %loadMem_401556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401556 = call %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401556)
  store %struct.Memory* %call_401556, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x98(%rbp)	 RIP: 40155d	 Bytes: 7
  %loadMem_40155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155d = call %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155d)
  store %struct.Memory* %call_40155d, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0xa0(%rbp)	 RIP: 401564	 Bytes: 7
  %loadMem_401564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401564 = call %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401564)
  store %struct.Memory* %call_401564, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0xa8(%rbp)	 RIP: 40156b	 Bytes: 7
  %loadMem_40156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156b = call %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156b)
  store %struct.Memory* %call_40156b, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xb0(%rbp)	 RIP: 401572	 Bytes: 7
  %loadMem_401572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401572 = call %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401572)
  store %struct.Memory* %call_401572, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %r8	 RIP: 401579	 Bytes: 7
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xb8(%rbp)	 RIP: 401580	 Bytes: 7
  %loadMem_401580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401580 = call %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401580)
  store %struct.Memory* %call_401580, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xbc(%rbp)	 RIP: 401587	 Bytes: 10
  %loadMem_401587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401587 = call %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401587)
  store %struct.Memory* %call_401587, %struct.Memory** %MEMORY

  ; Code: .L_401591:	 RIP: 401591	 Bytes: 0
  br label %block_.L_401591
block_.L_401591:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 401591	 Bytes: 6
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401591 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401591)
  store %struct.Memory* %call_401591, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401597	 Bytes: 3
  %loadMem_401597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401597 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401597)
  store %struct.Memory* %call_401597, %struct.Memory** %MEMORY

  ; Code: jge .L_40225b	 RIP: 40159a	 Bytes: 6
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_jge_.L_40225b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a, i8* %BRANCH_TAKEN, i64 3265, i64 6, i64 6)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  %loadBr_40159a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40159a = icmp eq i8 %loadBr_40159a, 1
  br i1 %cmpBr_40159a, label %block_.L_40225b, label %block_4015a0

block_4015a0:
  ; Code: movl $0x0, -0xc0(%rbp)	 RIP: 4015a0	 Bytes: 10
  %loadMem_4015a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a0 = call %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a0)
  store %struct.Memory* %call_4015a0, %struct.Memory** %MEMORY

  ; Code: .L_4015aa:	 RIP: 4015aa	 Bytes: 0
  br label %block_.L_4015aa
block_.L_4015aa:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 4015aa	 Bytes: 6
  %loadMem_4015aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015aa = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015aa)
  store %struct.Memory* %call_4015aa, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 4015b0	 Bytes: 3
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b0 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b0)
  store %struct.Memory* %call_4015b0, %struct.Memory** %MEMORY

  ; Code: jge .L_402242	 RIP: 4015b3	 Bytes: 6
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_jge_.L_402242(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3, i8* %BRANCH_TAKEN, i64 3215, i64 6, i64 6)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  %loadBr_4015b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015b3 = icmp eq i8 %loadBr_4015b3, 1
  br i1 %cmpBr_4015b3, label %block_.L_402242, label %block_4015b9

block_4015b9:
  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 4015b9	 Bytes: 10
  %loadMem_4015b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b9 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b9)
  store %struct.Memory* %call_4015b9, %struct.Memory** %MEMORY

  ; Code: .L_4015c3:	 RIP: 4015c3	 Bytes: 0
  br label %block_.L_4015c3
block_.L_4015c3:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 4015c3	 Bytes: 6
  %loadMem_4015c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c3 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c3)
  store %struct.Memory* %call_4015c3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4015c9	 Bytes: 3
  %loadMem_4015c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c9 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c9)
  store %struct.Memory* %call_4015c9, %struct.Memory** %MEMORY

  ; Code: jge .L_401923	 RIP: 4015cc	 Bytes: 6
  %loadMem_4015cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cc = call %struct.Memory* @routine_jge_.L_401923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cc, i8* %BRANCH_TAKEN, i64 855, i64 6, i64 6)
  store %struct.Memory* %call_4015cc, %struct.Memory** %MEMORY

  %loadBr_4015cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015cc = icmp eq i8 %loadBr_4015cc, 1
  br i1 %cmpBr_4015cc, label %block_.L_401923, label %block_4015d2

block_4015d2:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4015d2	 Bytes: 4
  %loadMem_4015d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d2)
  store %struct.Memory* %call_4015d2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4015d6	 Bytes: 7
  %loadMem_4015d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d6)
  store %struct.Memory* %call_4015d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4015dd	 Bytes: 7
  %loadMem_4015dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015dd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015dd)
  store %struct.Memory* %call_4015dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015e4	 Bytes: 3
  %loadMem_4015e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e4)
  store %struct.Memory* %call_4015e4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4015e7	 Bytes: 7
  %loadMem_4015e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e7 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e7)
  store %struct.Memory* %call_4015e7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4015ee	 Bytes: 7
  %loadMem_4015ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ee = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ee)
  store %struct.Memory* %call_4015ee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015f5	 Bytes: 3
  %loadMem_4015f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f5)
  store %struct.Memory* %call_4015f5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4015f8	 Bytes: 7
  %loadMem_4015f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f8 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f8)
  store %struct.Memory* %call_4015f8, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4015ff	 Bytes: 5
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401604	 Bytes: 4
  %loadMem_401604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401604 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401604)
  store %struct.Memory* %call_401604, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401608	 Bytes: 7
  %loadMem_401608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401608 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401608)
  store %struct.Memory* %call_401608, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40160f	 Bytes: 7
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160f = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160f)
  store %struct.Memory* %call_40160f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401616	 Bytes: 3
  %loadMem_401616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401616 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401616)
  store %struct.Memory* %call_401616, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 401619	 Bytes: 6
  %loadMem_401619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401619 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401619)
  store %struct.Memory* %call_401619, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40161f	 Bytes: 3
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401622	 Bytes: 3
  %loadMem_401622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401622 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401622)
  store %struct.Memory* %call_401622, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401625	 Bytes: 7
  %loadMem_401625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401625 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401625)
  store %struct.Memory* %call_401625, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40162c	 Bytes: 3
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162c)
  store %struct.Memory* %call_40162c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 40162f	 Bytes: 7
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401636	 Bytes: 5
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 40163b	 Bytes: 4
  %loadMem_40163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163b = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163b)
  store %struct.Memory* %call_40163b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40163f	 Bytes: 7
  %loadMem_40163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163f = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163f)
  store %struct.Memory* %call_40163f, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401646	 Bytes: 7
  %loadMem_401646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401646 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401646)
  store %struct.Memory* %call_401646, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40164d	 Bytes: 3
  %loadMem_40164d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164d)
  store %struct.Memory* %call_40164d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401650	 Bytes: 7
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401657	 Bytes: 7
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40165e	 Bytes: 3
  %loadMem_40165e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165e)
  store %struct.Memory* %call_40165e, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 401661	 Bytes: 6
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401667	 Bytes: 3
  %loadMem_401667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401667 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401667)
  store %struct.Memory* %call_401667, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40166a	 Bytes: 3
  %loadMem_40166a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166a)
  store %struct.Memory* %call_40166a, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40166d	 Bytes: 5
  %loadMem_40166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166d = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166d)
  store %struct.Memory* %call_40166d, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401672	 Bytes: 4
  %loadMem_401672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401672 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401672)
  store %struct.Memory* %call_401672, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401676	 Bytes: 7
  %loadMem_401676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401676 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401676)
  store %struct.Memory* %call_401676, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40167d	 Bytes: 7
  %loadMem_40167d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167d)
  store %struct.Memory* %call_40167d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401684	 Bytes: 3
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401687	 Bytes: 7
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40168e	 Bytes: 7
  %loadMem_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168e)
  store %struct.Memory* %call_40168e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401695	 Bytes: 3
  %loadMem_401695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401695 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401695)
  store %struct.Memory* %call_401695, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401698	 Bytes: 7
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401698 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401698)
  store %struct.Memory* %call_401698, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40169f	 Bytes: 5
  %loadMem_40169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169f = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169f)
  store %struct.Memory* %call_40169f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4016a4	 Bytes: 4
  %loadMem_4016a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a4 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a4)
  store %struct.Memory* %call_4016a4, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4016a8	 Bytes: 7
  %loadMem_4016a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a8)
  store %struct.Memory* %call_4016a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4016af	 Bytes: 7
  %loadMem_4016af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016af = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016af)
  store %struct.Memory* %call_4016af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016b6	 Bytes: 3
  %loadMem_4016b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b6)
  store %struct.Memory* %call_4016b6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016b9	 Bytes: 7
  %loadMem_4016b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b9)
  store %struct.Memory* %call_4016b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4016c0	 Bytes: 5
  %loadMem_4016c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c0 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c0)
  store %struct.Memory* %call_4016c0, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 4016c5	 Bytes: 7
  %loadMem_4016c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c5 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c5)
  store %struct.Memory* %call_4016c5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016cc	 Bytes: 7
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cc = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cc)
  store %struct.Memory* %call_4016cc, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4016d3	 Bytes: 5
  %loadMem_4016d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d3 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d3)
  store %struct.Memory* %call_4016d3, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4016d8	 Bytes: 7
  %loadMem_4016d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d8 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d8)
  store %struct.Memory* %call_4016d8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016df	 Bytes: 7
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4016e6	 Bytes: 5
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4016eb	 Bytes: 4
  %loadMem_4016eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016eb = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016eb)
  store %struct.Memory* %call_4016eb, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4016ef	 Bytes: 7
  %loadMem_4016ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ef = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ef)
  store %struct.Memory* %call_4016ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4016f6	 Bytes: 7
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f6)
  store %struct.Memory* %call_4016f6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016fd	 Bytes: 3
  %loadMem_4016fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fd)
  store %struct.Memory* %call_4016fd, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401700	 Bytes: 7
  %loadMem_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401700 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401700)
  store %struct.Memory* %call_401700, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401707	 Bytes: 7
  %loadMem_401707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401707 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401707)
  store %struct.Memory* %call_401707, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40170e	 Bytes: 3
  %loadMem_40170e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170e)
  store %struct.Memory* %call_40170e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401711	 Bytes: 7
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401711 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401711)
  store %struct.Memory* %call_401711, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401718	 Bytes: 5
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401718 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401718)
  store %struct.Memory* %call_401718, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 40171d	 Bytes: 5
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401722	 Bytes: 7
  %loadMem_401722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401722 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401722)
  store %struct.Memory* %call_401722, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401729	 Bytes: 7
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401730	 Bytes: 5
  %loadMem_401730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401730 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401730)
  store %struct.Memory* %call_401730, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401735	 Bytes: 4
  %loadMem_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401735 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401735)
  store %struct.Memory* %call_401735, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401739	 Bytes: 7
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401740	 Bytes: 7
  %loadMem_401740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401740 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401740)
  store %struct.Memory* %call_401740, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401747	 Bytes: 3
  %loadMem_401747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401747 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401747)
  store %struct.Memory* %call_401747, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40174a	 Bytes: 7
  %loadMem_40174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174a)
  store %struct.Memory* %call_40174a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401751	 Bytes: 5
  %loadMem_401751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401751 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401751)
  store %struct.Memory* %call_401751, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401756	 Bytes: 4
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401756 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401756)
  store %struct.Memory* %call_401756, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40175a	 Bytes: 4
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175a)
  store %struct.Memory* %call_40175a, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40175e	 Bytes: 7
  %loadMem_40175e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175e)
  store %struct.Memory* %call_40175e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401765	 Bytes: 7
  %loadMem_401765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401765 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401765)
  store %struct.Memory* %call_401765, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40176c	 Bytes: 3
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176c)
  store %struct.Memory* %call_40176c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40176f	 Bytes: 7
  %loadMem_40176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176f)
  store %struct.Memory* %call_40176f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401776	 Bytes: 5
  %loadMem_401776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401776 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401776)
  store %struct.Memory* %call_401776, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 40177b	 Bytes: 7
  %loadMem_40177b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177b = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177b)
  store %struct.Memory* %call_40177b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401782	 Bytes: 7
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401782 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401782)
  store %struct.Memory* %call_401782, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401789	 Bytes: 5
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401789 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401789)
  store %struct.Memory* %call_401789, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40178e	 Bytes: 7
  %loadMem_40178e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178e)
  store %struct.Memory* %call_40178e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401795	 Bytes: 7
  %loadMem_401795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401795 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401795)
  store %struct.Memory* %call_401795, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 40179c	 Bytes: 5
  %loadMem_40179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179c)
  store %struct.Memory* %call_40179c, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 4017a1	 Bytes: 7
  %loadMem_4017a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a1 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a1)
  store %struct.Memory* %call_4017a1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4017a8	 Bytes: 7
  %loadMem_4017a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a8)
  store %struct.Memory* %call_4017a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4017af	 Bytes: 7
  %loadMem_4017af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017af = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017af)
  store %struct.Memory* %call_4017af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017b6	 Bytes: 3
  %loadMem_4017b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b6)
  store %struct.Memory* %call_4017b6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4017b9	 Bytes: 7
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b9)
  store %struct.Memory* %call_4017b9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017c0	 Bytes: 7
  %loadMem_4017c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c0)
  store %struct.Memory* %call_4017c0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017c7	 Bytes: 3
  %loadMem_4017c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c7)
  store %struct.Memory* %call_4017c7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4017ca	 Bytes: 7
  %loadMem_4017ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ca = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ca)
  store %struct.Memory* %call_4017ca, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4017d1	 Bytes: 5
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4017d6	 Bytes: 5
  %loadMem_4017d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d6 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d6)
  store %struct.Memory* %call_4017d6, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 4017db	 Bytes: 7
  %loadMem_4017db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017db = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017db)
  store %struct.Memory* %call_4017db, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4017e2	 Bytes: 7
  %loadMem_4017e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e2 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e2)
  store %struct.Memory* %call_4017e2, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4017e9	 Bytes: 5
  %loadMem_4017e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e9)
  store %struct.Memory* %call_4017e9, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4017ee	 Bytes: 7
  %loadMem_4017ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ee = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ee)
  store %struct.Memory* %call_4017ee, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4017f5	 Bytes: 7
  %loadMem_4017f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f5 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f5)
  store %struct.Memory* %call_4017f5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4017fc	 Bytes: 5
  %loadMem_4017fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fc = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fc)
  store %struct.Memory* %call_4017fc, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401801	 Bytes: 4
  %loadMem_401801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401801 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401801)
  store %struct.Memory* %call_401801, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401805	 Bytes: 7
  %loadMem_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401805 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401805)
  store %struct.Memory* %call_401805, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40180c	 Bytes: 7
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180c = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180c)
  store %struct.Memory* %call_40180c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401813	 Bytes: 3
  %loadMem_401813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401813 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401813)
  store %struct.Memory* %call_401813, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401816	 Bytes: 7
  %loadMem_401816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401816 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401816)
  store %struct.Memory* %call_401816, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40181d	 Bytes: 5
  %loadMem_40181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181d)
  store %struct.Memory* %call_40181d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401822	 Bytes: 4
  %loadMem_401822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401822 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401822)
  store %struct.Memory* %call_401822, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401826	 Bytes: 5
  %loadMem_401826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401826 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401826)
  store %struct.Memory* %call_401826, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 40182b	 Bytes: 7
  %loadMem_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182b = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182b)
  store %struct.Memory* %call_40182b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401832	 Bytes: 7
  %loadMem_401832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401832 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401832)
  store %struct.Memory* %call_401832, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401839	 Bytes: 5
  %loadMem_401839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401839 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401839)
  store %struct.Memory* %call_401839, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40183e	 Bytes: 7
  %loadMem_40183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183e)
  store %struct.Memory* %call_40183e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401845	 Bytes: 7
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40184c	 Bytes: 5
  %loadMem_40184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184c)
  store %struct.Memory* %call_40184c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401851	 Bytes: 4
  %loadMem_401851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401851 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401851)
  store %struct.Memory* %call_401851, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401855	 Bytes: 7
  %loadMem_401855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401855 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401855)
  store %struct.Memory* %call_401855, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40185c	 Bytes: 7
  %loadMem_40185c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185c)
  store %struct.Memory* %call_40185c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401863	 Bytes: 3
  %loadMem_401863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401863 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401863)
  store %struct.Memory* %call_401863, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401866	 Bytes: 7
  %loadMem_401866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401866 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401866)
  store %struct.Memory* %call_401866, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40186d	 Bytes: 7
  %loadMem_40186d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186d)
  store %struct.Memory* %call_40186d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401874	 Bytes: 3
  %loadMem_401874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401874 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401874)
  store %struct.Memory* %call_401874, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401877	 Bytes: 7
  %loadMem_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401877 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401877)
  store %struct.Memory* %call_401877, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40187e	 Bytes: 5
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187e = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187e)
  store %struct.Memory* %call_40187e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401883	 Bytes: 4
  %loadMem_401883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401883 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401883)
  store %struct.Memory* %call_401883, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401887	 Bytes: 7
  %loadMem_401887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401887 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401887)
  store %struct.Memory* %call_401887, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40188e	 Bytes: 7
  %loadMem_40188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188e)
  store %struct.Memory* %call_40188e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401895	 Bytes: 7
  %loadMem_401895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401895 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401895)
  store %struct.Memory* %call_401895, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40189c	 Bytes: 3
  %loadMem_40189c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189c)
  store %struct.Memory* %call_40189c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40189f	 Bytes: 7
  %loadMem_40189f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189f)
  store %struct.Memory* %call_40189f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018a6	 Bytes: 7
  %loadMem_4018a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a6 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a6)
  store %struct.Memory* %call_4018a6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018ad	 Bytes: 3
  %loadMem_4018ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ad = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ad)
  store %struct.Memory* %call_4018ad, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4018b0	 Bytes: 7
  %loadMem_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b0 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b0)
  store %struct.Memory* %call_4018b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4018b7	 Bytes: 5
  %loadMem_4018b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b7 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b7)
  store %struct.Memory* %call_4018b7, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4018bc	 Bytes: 4
  %loadMem_4018bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018bc = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018bc)
  store %struct.Memory* %call_4018bc, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4018c0	 Bytes: 7
  %loadMem_4018c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c0 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c0)
  store %struct.Memory* %call_4018c0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018c7	 Bytes: 7
  %loadMem_4018c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c7)
  store %struct.Memory* %call_4018c7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018ce	 Bytes: 3
  %loadMem_4018ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ce = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ce)
  store %struct.Memory* %call_4018ce, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4018d1	 Bytes: 7
  %loadMem_4018d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d1 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d1)
  store %struct.Memory* %call_4018d1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4018d8	 Bytes: 5
  %loadMem_4018d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d8 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d8)
  store %struct.Memory* %call_4018d8, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4018dd	 Bytes: 4
  %loadMem_4018dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dd = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dd)
  store %struct.Memory* %call_4018dd, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4018e1	 Bytes: 7
  %loadMem_4018e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e1)
  store %struct.Memory* %call_4018e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4018e8	 Bytes: 7
  %loadMem_4018e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e8)
  store %struct.Memory* %call_4018e8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018ef	 Bytes: 3
  %loadMem_4018ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ef = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ef)
  store %struct.Memory* %call_4018ef, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4018f2	 Bytes: 7
  %loadMem_4018f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f2)
  store %struct.Memory* %call_4018f2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018f9	 Bytes: 7
  %loadMem_4018f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f9)
  store %struct.Memory* %call_4018f9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401900	 Bytes: 3
  %loadMem_401900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401900 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401900)
  store %struct.Memory* %call_401900, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401903	 Bytes: 7
  %loadMem_401903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401903 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401903)
  store %struct.Memory* %call_401903, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 40190a	 Bytes: 5
  %loadMem_40190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190a = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190a)
  store %struct.Memory* %call_40190a, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 40190f	 Bytes: 6
  %loadMem_40190f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190f = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190f)
  store %struct.Memory* %call_40190f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401915	 Bytes: 3
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401915 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401915)
  store %struct.Memory* %call_401915, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 401918	 Bytes: 6
  %loadMem_401918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401918 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401918)
  store %struct.Memory* %call_401918, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4015c3	 RIP: 40191e	 Bytes: 5
  %loadMem_40191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191e = call %struct.Memory* @routine_jmpq_.L_4015c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191e, i64 -859, i64 5)
  store %struct.Memory* %call_40191e, %struct.Memory** %MEMORY

  br label %block_.L_4015c3

  ; Code: .L_401923:	 RIP: 401923	 Bytes: 0
block_.L_401923:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401923	 Bytes: 4
  %loadMem_401923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401923 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401923)
  store %struct.Memory* %call_401923, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401927	 Bytes: 7
  %loadMem_401927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401927 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401927)
  store %struct.Memory* %call_401927, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40192e	 Bytes: 7
  %loadMem_40192e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192e = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192e)
  store %struct.Memory* %call_40192e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401935	 Bytes: 3
  %loadMem_401935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401935 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401935)
  store %struct.Memory* %call_401935, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401938	 Bytes: 7
  %loadMem_401938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401938 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401938)
  store %struct.Memory* %call_401938, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40193f	 Bytes: 7
  %loadMem_40193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193f)
  store %struct.Memory* %call_40193f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401946	 Bytes: 3
  %loadMem_401946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401946 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401946)
  store %struct.Memory* %call_401946, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401949	 Bytes: 4
  %loadMem_401949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401949 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401949)
  store %struct.Memory* %call_401949, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40194d	 Bytes: 5
  %loadMem_40194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194d = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194d)
  store %struct.Memory* %call_40194d, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401952	 Bytes: 4
  %loadMem_401952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401952 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401952)
  store %struct.Memory* %call_401952, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401956	 Bytes: 7
  %loadMem_401956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401956 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401956)
  store %struct.Memory* %call_401956, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40195d	 Bytes: 7
  %loadMem_40195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195d)
  store %struct.Memory* %call_40195d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401964	 Bytes: 3
  %loadMem_401964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401964 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401964)
  store %struct.Memory* %call_401964, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 401967	 Bytes: 6
  %loadMem_401967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401967 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401967)
  store %struct.Memory* %call_401967, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40196d	 Bytes: 3
  %loadMem_40196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196d)
  store %struct.Memory* %call_40196d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401970	 Bytes: 3
  %loadMem_401970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401970 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401970)
  store %struct.Memory* %call_401970, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401973	 Bytes: 7
  %loadMem_401973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401973 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401973)
  store %struct.Memory* %call_401973, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40197a	 Bytes: 3
  %loadMem_40197a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197a)
  store %struct.Memory* %call_40197a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40197d	 Bytes: 4
  %loadMem_40197d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197d)
  store %struct.Memory* %call_40197d, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401981	 Bytes: 5
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401981 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401981)
  store %struct.Memory* %call_401981, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 401986	 Bytes: 4
  %loadMem_401986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401986 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401986)
  store %struct.Memory* %call_401986, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40198a	 Bytes: 7
  %loadMem_40198a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198a)
  store %struct.Memory* %call_40198a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401991	 Bytes: 7
  %loadMem_401991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401991 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401991)
  store %struct.Memory* %call_401991, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401998	 Bytes: 3
  %loadMem_401998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401998 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401998)
  store %struct.Memory* %call_401998, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40199b	 Bytes: 7
  %loadMem_40199b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199b)
  store %struct.Memory* %call_40199b, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 4019a2	 Bytes: 5
  %loadMem_4019a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a2 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a2)
  store %struct.Memory* %call_4019a2, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4019a7	 Bytes: 4
  %loadMem_4019a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a7 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a7)
  store %struct.Memory* %call_4019a7, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4019ab	 Bytes: 7
  %loadMem_4019ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ab = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ab)
  store %struct.Memory* %call_4019ab, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4019b2	 Bytes: 7
  %loadMem_4019b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b2)
  store %struct.Memory* %call_4019b2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019b9	 Bytes: 3
  %loadMem_4019b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b9)
  store %struct.Memory* %call_4019b9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019bc	 Bytes: 7
  %loadMem_4019bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019bc = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019bc)
  store %struct.Memory* %call_4019bc, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019c3	 Bytes: 7
  %loadMem_4019c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c3)
  store %struct.Memory* %call_4019c3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019ca	 Bytes: 3
  %loadMem_4019ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ca = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ca)
  store %struct.Memory* %call_4019ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4019cd	 Bytes: 4
  %loadMem_4019cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019cd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019cd)
  store %struct.Memory* %call_4019cd, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4019d1	 Bytes: 5
  %loadMem_4019d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d1 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d1)
  store %struct.Memory* %call_4019d1, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4019d6	 Bytes: 4
  %loadMem_4019d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d6 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d6)
  store %struct.Memory* %call_4019d6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4019da	 Bytes: 7
  %loadMem_4019da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019da = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019da)
  store %struct.Memory* %call_4019da, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019e1	 Bytes: 7
  %loadMem_4019e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e1)
  store %struct.Memory* %call_4019e1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019e8	 Bytes: 3
  %loadMem_4019e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e8)
  store %struct.Memory* %call_4019e8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019eb	 Bytes: 7
  %loadMem_4019eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019eb = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019eb)
  store %struct.Memory* %call_4019eb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4019f2	 Bytes: 5
  %loadMem_4019f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f2 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f2)
  store %struct.Memory* %call_4019f2, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 4019f7	 Bytes: 7
  %loadMem_4019f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f7 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f7)
  store %struct.Memory* %call_4019f7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019fe	 Bytes: 7
  %loadMem_4019fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fe = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fe)
  store %struct.Memory* %call_4019fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401a05	 Bytes: 5
  %loadMem_401a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a05 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a05)
  store %struct.Memory* %call_401a05, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401a0a	 Bytes: 7
  %loadMem_401a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a0a = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a0a)
  store %struct.Memory* %call_401a0a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a11	 Bytes: 7
  %loadMem_401a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a11 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a11)
  store %struct.Memory* %call_401a11, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401a18	 Bytes: 5
  %loadMem_401a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a18 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a18)
  store %struct.Memory* %call_401a18, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401a1d	 Bytes: 4
  %loadMem_401a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a1d = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a1d)
  store %struct.Memory* %call_401a1d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a21	 Bytes: 7
  %loadMem_401a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a21 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a21)
  store %struct.Memory* %call_401a21, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401a28	 Bytes: 7
  %loadMem_401a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a28 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a28)
  store %struct.Memory* %call_401a28, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a2f	 Bytes: 3
  %loadMem_401a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a2f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a2f)
  store %struct.Memory* %call_401a2f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a32	 Bytes: 7
  %loadMem_401a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a32 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a32)
  store %struct.Memory* %call_401a32, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a39	 Bytes: 7
  %loadMem_401a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a39 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a39)
  store %struct.Memory* %call_401a39, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a40	 Bytes: 3
  %loadMem_401a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a40)
  store %struct.Memory* %call_401a40, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401a43	 Bytes: 4
  %loadMem_401a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a43 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a43)
  store %struct.Memory* %call_401a43, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401a47	 Bytes: 5
  %loadMem_401a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a47 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a47)
  store %struct.Memory* %call_401a47, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401a4c	 Bytes: 5
  %loadMem_401a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a4c = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a4c)
  store %struct.Memory* %call_401a4c, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401a51	 Bytes: 7
  %loadMem_401a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a51 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a51)
  store %struct.Memory* %call_401a51, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a58	 Bytes: 7
  %loadMem_401a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a58 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a58)
  store %struct.Memory* %call_401a58, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401a5f	 Bytes: 5
  %loadMem_401a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a5f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a5f)
  store %struct.Memory* %call_401a5f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401a64	 Bytes: 4
  %loadMem_401a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a64 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a64)
  store %struct.Memory* %call_401a64, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a68	 Bytes: 7
  %loadMem_401a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a68 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a68)
  store %struct.Memory* %call_401a68, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a6f	 Bytes: 7
  %loadMem_401a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a6f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a6f)
  store %struct.Memory* %call_401a6f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a76	 Bytes: 3
  %loadMem_401a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a76 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a76)
  store %struct.Memory* %call_401a76, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a79	 Bytes: 7
  %loadMem_401a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a79 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a79)
  store %struct.Memory* %call_401a79, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401a80	 Bytes: 5
  %loadMem_401a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a80 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a80)
  store %struct.Memory* %call_401a80, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401a85	 Bytes: 4
  %loadMem_401a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a85 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a85)
  store %struct.Memory* %call_401a85, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401a89	 Bytes: 4
  %loadMem_401a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a89 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a89)
  store %struct.Memory* %call_401a89, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a8d	 Bytes: 7
  %loadMem_401a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8d)
  store %struct.Memory* %call_401a8d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a94	 Bytes: 7
  %loadMem_401a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a94 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a94)
  store %struct.Memory* %call_401a94, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a9b	 Bytes: 3
  %loadMem_401a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9b)
  store %struct.Memory* %call_401a9b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a9e	 Bytes: 7
  %loadMem_401a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9e)
  store %struct.Memory* %call_401a9e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401aa5	 Bytes: 5
  %loadMem_401aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa5 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa5)
  store %struct.Memory* %call_401aa5, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 401aaa	 Bytes: 7
  %loadMem_401aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aaa = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aaa)
  store %struct.Memory* %call_401aaa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ab1	 Bytes: 4
  %loadMem_401ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab1)
  store %struct.Memory* %call_401ab1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401ab5	 Bytes: 5
  %loadMem_401ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab5)
  store %struct.Memory* %call_401ab5, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401aba	 Bytes: 7
  %loadMem_401aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aba = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aba)
  store %struct.Memory* %call_401aba, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ac1	 Bytes: 4
  %loadMem_401ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac1)
  store %struct.Memory* %call_401ac1, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401ac5	 Bytes: 5
  %loadMem_401ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac5 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac5)
  store %struct.Memory* %call_401ac5, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401aca	 Bytes: 7
  %loadMem_401aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aca = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aca)
  store %struct.Memory* %call_401aca, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ad1	 Bytes: 7
  %loadMem_401ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad1)
  store %struct.Memory* %call_401ad1, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ad8	 Bytes: 7
  %loadMem_401ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad8)
  store %struct.Memory* %call_401ad8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401adf	 Bytes: 3
  %loadMem_401adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401adf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401adf)
  store %struct.Memory* %call_401adf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401ae2	 Bytes: 7
  %loadMem_401ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae2)
  store %struct.Memory* %call_401ae2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ae9	 Bytes: 7
  %loadMem_401ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae9)
  store %struct.Memory* %call_401ae9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401af0	 Bytes: 3
  %loadMem_401af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af0)
  store %struct.Memory* %call_401af0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401af3	 Bytes: 4
  %loadMem_401af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af3)
  store %struct.Memory* %call_401af3, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401af7	 Bytes: 5
  %loadMem_401af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af7 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af7)
  store %struct.Memory* %call_401af7, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401afc	 Bytes: 5
  %loadMem_401afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401afc = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401afc)
  store %struct.Memory* %call_401afc, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 401b01	 Bytes: 7
  %loadMem_401b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b01 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b01)
  store %struct.Memory* %call_401b01, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b08	 Bytes: 7
  %loadMem_401b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b08 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b08)
  store %struct.Memory* %call_401b08, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b0f	 Bytes: 5
  %loadMem_401b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b0f = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b0f)
  store %struct.Memory* %call_401b0f, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401b14	 Bytes: 7
  %loadMem_401b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b14 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b14)
  store %struct.Memory* %call_401b14, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b1b	 Bytes: 4
  %loadMem_401b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1b)
  store %struct.Memory* %call_401b1b, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401b1f	 Bytes: 5
  %loadMem_401b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1f)
  store %struct.Memory* %call_401b1f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401b24	 Bytes: 4
  %loadMem_401b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b24 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b24)
  store %struct.Memory* %call_401b24, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b28	 Bytes: 7
  %loadMem_401b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b28 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b28)
  store %struct.Memory* %call_401b28, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b2f	 Bytes: 7
  %loadMem_401b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b2f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b2f)
  store %struct.Memory* %call_401b2f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b36	 Bytes: 3
  %loadMem_401b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b36 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b36)
  store %struct.Memory* %call_401b36, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401b39	 Bytes: 7
  %loadMem_401b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b39 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b39)
  store %struct.Memory* %call_401b39, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b40	 Bytes: 5
  %loadMem_401b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b40 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b40)
  store %struct.Memory* %call_401b40, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401b45	 Bytes: 4
  %loadMem_401b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b45 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b45)
  store %struct.Memory* %call_401b45, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401b49	 Bytes: 5
  %loadMem_401b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b49 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b49)
  store %struct.Memory* %call_401b49, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 401b4e	 Bytes: 7
  %loadMem_401b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4e = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4e)
  store %struct.Memory* %call_401b4e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b55	 Bytes: 7
  %loadMem_401b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b55 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b55)
  store %struct.Memory* %call_401b55, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b5c	 Bytes: 5
  %loadMem_401b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5c)
  store %struct.Memory* %call_401b5c, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401b61	 Bytes: 7
  %loadMem_401b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b61 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b61)
  store %struct.Memory* %call_401b61, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b68	 Bytes: 4
  %loadMem_401b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b68 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b68)
  store %struct.Memory* %call_401b68, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401b6c	 Bytes: 5
  %loadMem_401b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6c)
  store %struct.Memory* %call_401b6c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401b71	 Bytes: 4
  %loadMem_401b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b71 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b71)
  store %struct.Memory* %call_401b71, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b75	 Bytes: 7
  %loadMem_401b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b75 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b75)
  store %struct.Memory* %call_401b75, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401b7c	 Bytes: 7
  %loadMem_401b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b7c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b7c)
  store %struct.Memory* %call_401b7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b83	 Bytes: 3
  %loadMem_401b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b83 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b83)
  store %struct.Memory* %call_401b83, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401b86	 Bytes: 7
  %loadMem_401b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b86 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b86)
  store %struct.Memory* %call_401b86, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b8d	 Bytes: 7
  %loadMem_401b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b8d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b8d)
  store %struct.Memory* %call_401b8d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b94	 Bytes: 3
  %loadMem_401b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b94 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b94)
  store %struct.Memory* %call_401b94, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b97	 Bytes: 4
  %loadMem_401b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b97 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b97)
  store %struct.Memory* %call_401b97, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b9b	 Bytes: 5
  %loadMem_401b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b9b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b9b)
  store %struct.Memory* %call_401b9b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401ba0	 Bytes: 4
  %loadMem_401ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba0 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba0)
  store %struct.Memory* %call_401ba0, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401ba4	 Bytes: 7
  %loadMem_401ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba4 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba4)
  store %struct.Memory* %call_401ba4, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401bab	 Bytes: 7
  %loadMem_401bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bab = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bab)
  store %struct.Memory* %call_401bab, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401bb2	 Bytes: 7
  %loadMem_401bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb2)
  store %struct.Memory* %call_401bb2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bb9	 Bytes: 3
  %loadMem_401bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb9)
  store %struct.Memory* %call_401bb9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401bbc	 Bytes: 7
  %loadMem_401bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbc = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbc)
  store %struct.Memory* %call_401bbc, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401bc3	 Bytes: 7
  %loadMem_401bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc3)
  store %struct.Memory* %call_401bc3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bca	 Bytes: 3
  %loadMem_401bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bca = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bca)
  store %struct.Memory* %call_401bca, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401bcd	 Bytes: 4
  %loadMem_401bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bcd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bcd)
  store %struct.Memory* %call_401bcd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401bd1	 Bytes: 5
  %loadMem_401bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd1 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd1)
  store %struct.Memory* %call_401bd1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401bd6	 Bytes: 4
  %loadMem_401bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd6 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd6)
  store %struct.Memory* %call_401bd6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401bda	 Bytes: 7
  %loadMem_401bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bda = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bda)
  store %struct.Memory* %call_401bda, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401be1	 Bytes: 7
  %loadMem_401be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be1)
  store %struct.Memory* %call_401be1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401be8	 Bytes: 3
  %loadMem_401be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be8)
  store %struct.Memory* %call_401be8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401beb	 Bytes: 7
  %loadMem_401beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401beb = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401beb)
  store %struct.Memory* %call_401beb, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401bf2	 Bytes: 5
  %loadMem_401bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf2 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf2)
  store %struct.Memory* %call_401bf2, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401bf7	 Bytes: 4
  %loadMem_401bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf7 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf7)
  store %struct.Memory* %call_401bf7, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401bfb	 Bytes: 7
  %loadMem_401bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bfb = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bfb)
  store %struct.Memory* %call_401bfb, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c02	 Bytes: 7
  %loadMem_401c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c02 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c02)
  store %struct.Memory* %call_401c02, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c09	 Bytes: 3
  %loadMem_401c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c09 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c09)
  store %struct.Memory* %call_401c09, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401c0c	 Bytes: 7
  %loadMem_401c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0c = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0c)
  store %struct.Memory* %call_401c0c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c13	 Bytes: 7
  %loadMem_401c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c13 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c13)
  store %struct.Memory* %call_401c13, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c1a	 Bytes: 3
  %loadMem_401c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1a)
  store %struct.Memory* %call_401c1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401c1d	 Bytes: 4
  %loadMem_401c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1d)
  store %struct.Memory* %call_401c1d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401c21	 Bytes: 5
  %loadMem_401c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c21 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c21)
  store %struct.Memory* %call_401c21, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 401c26	 Bytes: 10
  %loadMem_401c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c26 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c26)
  store %struct.Memory* %call_401c26, %struct.Memory** %MEMORY

  ; Code: .L_401c30:	 RIP: 401c30	 Bytes: 0
  br label %block_.L_401c30
block_.L_401c30:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 401c30	 Bytes: 6
  %loadMem_401c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c30 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c30)
  store %struct.Memory* %call_401c30, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401c36	 Bytes: 3
  %loadMem_401c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c36 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c36)
  store %struct.Memory* %call_401c36, %struct.Memory** %MEMORY

  ; Code: jge .L_401f62	 RIP: 401c39	 Bytes: 6
  %loadMem_401c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c39 = call %struct.Memory* @routine_jge_.L_401f62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c39, i8* %BRANCH_TAKEN, i64 809, i64 6, i64 6)
  store %struct.Memory* %call_401c39, %struct.Memory** %MEMORY

  %loadBr_401c39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c39 = icmp eq i8 %loadBr_401c39, 1
  br i1 %cmpBr_401c39, label %block_.L_401f62, label %block_401c3f

block_401c3f:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 401c3f	 Bytes: 4
  %loadMem_401c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3f = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3f)
  store %struct.Memory* %call_401c3f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c43	 Bytes: 7
  %loadMem_401c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c43 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c43)
  store %struct.Memory* %call_401c43, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c4a	 Bytes: 7
  %loadMem_401c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4a)
  store %struct.Memory* %call_401c4a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c51	 Bytes: 3
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c51 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c51)
  store %struct.Memory* %call_401c51, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c54	 Bytes: 4
  %loadMem_401c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c54 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c54)
  store %struct.Memory* %call_401c54, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c58	 Bytes: 7
  %loadMem_401c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c58 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c58)
  store %struct.Memory* %call_401c58, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c5f	 Bytes: 3
  %loadMem_401c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5f)
  store %struct.Memory* %call_401c5f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401c62	 Bytes: 7
  %loadMem_401c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c62 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c62)
  store %struct.Memory* %call_401c62, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401c69	 Bytes: 5
  %loadMem_401c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c69 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c69)
  store %struct.Memory* %call_401c69, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401c6e	 Bytes: 4
  %loadMem_401c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6e)
  store %struct.Memory* %call_401c6e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c72	 Bytes: 7
  %loadMem_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c72 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c72)
  store %struct.Memory* %call_401c72, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c79	 Bytes: 7
  %loadMem_401c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c79 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c79)
  store %struct.Memory* %call_401c79, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c80	 Bytes: 3
  %loadMem_401c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c80 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c80)
  store %struct.Memory* %call_401c80, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401c83	 Bytes: 7
  %loadMem_401c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c83 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c83)
  store %struct.Memory* %call_401c83, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401c8a	 Bytes: 5
  %loadMem_401c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8a = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8a)
  store %struct.Memory* %call_401c8a, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401c8f	 Bytes: 4
  %loadMem_401c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8f = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8f)
  store %struct.Memory* %call_401c8f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c93	 Bytes: 7
  %loadMem_401c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c93 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c93)
  store %struct.Memory* %call_401c93, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c9a	 Bytes: 7
  %loadMem_401c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9a)
  store %struct.Memory* %call_401c9a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ca1	 Bytes: 3
  %loadMem_401ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca1)
  store %struct.Memory* %call_401ca1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401ca4	 Bytes: 4
  %loadMem_401ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca4)
  store %struct.Memory* %call_401ca4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ca8	 Bytes: 7
  %loadMem_401ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca8)
  store %struct.Memory* %call_401ca8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401caf	 Bytes: 3
  %loadMem_401caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401caf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401caf)
  store %struct.Memory* %call_401caf, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 401cb2	 Bytes: 6
  %loadMem_401cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb2 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb2)
  store %struct.Memory* %call_401cb2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401cb8	 Bytes: 3
  %loadMem_401cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb8)
  store %struct.Memory* %call_401cb8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401cbb	 Bytes: 3
  %loadMem_401cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbb = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbb)
  store %struct.Memory* %call_401cbb, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401cbe	 Bytes: 5
  %loadMem_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbe = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbe)
  store %struct.Memory* %call_401cbe, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401cc3	 Bytes: 4
  %loadMem_401cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc3 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc3)
  store %struct.Memory* %call_401cc3, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401cc7	 Bytes: 7
  %loadMem_401cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc7 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc7)
  store %struct.Memory* %call_401cc7, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401cce	 Bytes: 7
  %loadMem_401cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cce = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cce)
  store %struct.Memory* %call_401cce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cd5	 Bytes: 3
  %loadMem_401cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd5)
  store %struct.Memory* %call_401cd5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401cd8	 Bytes: 4
  %loadMem_401cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd8)
  store %struct.Memory* %call_401cd8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401cdc	 Bytes: 7
  %loadMem_401cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdc = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdc)
  store %struct.Memory* %call_401cdc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ce3	 Bytes: 3
  %loadMem_401ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce3)
  store %struct.Memory* %call_401ce3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401ce6	 Bytes: 7
  %loadMem_401ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce6 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce6)
  store %struct.Memory* %call_401ce6, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401ced	 Bytes: 5
  %loadMem_401ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ced = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ced)
  store %struct.Memory* %call_401ced, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401cf2	 Bytes: 4
  %loadMem_401cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf2 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf2)
  store %struct.Memory* %call_401cf2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401cf6	 Bytes: 7
  %loadMem_401cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf6)
  store %struct.Memory* %call_401cf6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401cfd	 Bytes: 7
  %loadMem_401cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfd = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfd)
  store %struct.Memory* %call_401cfd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d04	 Bytes: 3
  %loadMem_401d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d04 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d04)
  store %struct.Memory* %call_401d04, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d07	 Bytes: 7
  %loadMem_401d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d07 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d07)
  store %struct.Memory* %call_401d07, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401d0e	 Bytes: 5
  %loadMem_401d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0e)
  store %struct.Memory* %call_401d0e, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 401d13	 Bytes: 7
  %loadMem_401d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d13 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d13)
  store %struct.Memory* %call_401d13, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d1a	 Bytes: 4
  %loadMem_401d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1a)
  store %struct.Memory* %call_401d1a, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401d1e	 Bytes: 5
  %loadMem_401d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1e = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1e)
  store %struct.Memory* %call_401d1e, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401d23	 Bytes: 7
  %loadMem_401d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d23 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d23)
  store %struct.Memory* %call_401d23, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d2a	 Bytes: 7
  %loadMem_401d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2a)
  store %struct.Memory* %call_401d2a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401d31	 Bytes: 5
  %loadMem_401d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d31 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d31)
  store %struct.Memory* %call_401d31, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401d36	 Bytes: 4
  %loadMem_401d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d36 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d36)
  store %struct.Memory* %call_401d36, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401d3a	 Bytes: 7
  %loadMem_401d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3a)
  store %struct.Memory* %call_401d3a, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401d41	 Bytes: 7
  %loadMem_401d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d41 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d41)
  store %struct.Memory* %call_401d41, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d48	 Bytes: 3
  %loadMem_401d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d48 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d48)
  store %struct.Memory* %call_401d48, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d4b	 Bytes: 7
  %loadMem_401d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4b)
  store %struct.Memory* %call_401d4b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d52	 Bytes: 7
  %loadMem_401d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d52 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d52)
  store %struct.Memory* %call_401d52, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d59	 Bytes: 3
  %loadMem_401d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d59 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d59)
  store %struct.Memory* %call_401d59, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401d5c	 Bytes: 7
  %loadMem_401d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5c = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5c)
  store %struct.Memory* %call_401d5c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401d63	 Bytes: 5
  %loadMem_401d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d63 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d63)
  store %struct.Memory* %call_401d63, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401d68	 Bytes: 5
  %loadMem_401d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d68 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d68)
  store %struct.Memory* %call_401d68, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401d6d	 Bytes: 7
  %loadMem_401d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6d = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6d)
  store %struct.Memory* %call_401d6d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d74	 Bytes: 7
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d74 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d74)
  store %struct.Memory* %call_401d74, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401d7b	 Bytes: 5
  %loadMem_401d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7b = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7b)
  store %struct.Memory* %call_401d7b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401d80	 Bytes: 4
  %loadMem_401d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d80 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d80)
  store %struct.Memory* %call_401d80, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401d84	 Bytes: 7
  %loadMem_401d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d84 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d84)
  store %struct.Memory* %call_401d84, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d8b	 Bytes: 7
  %loadMem_401d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8b)
  store %struct.Memory* %call_401d8b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d92	 Bytes: 3
  %loadMem_401d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d92 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d92)
  store %struct.Memory* %call_401d92, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d95	 Bytes: 7
  %loadMem_401d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d95 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d95)
  store %struct.Memory* %call_401d95, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401d9c	 Bytes: 5
  %loadMem_401d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9c)
  store %struct.Memory* %call_401d9c, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401da1	 Bytes: 4
  %loadMem_401da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da1 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da1)
  store %struct.Memory* %call_401da1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401da5	 Bytes: 4
  %loadMem_401da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da5 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da5)
  store %struct.Memory* %call_401da5, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401da9	 Bytes: 7
  %loadMem_401da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da9)
  store %struct.Memory* %call_401da9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401db0	 Bytes: 7
  %loadMem_401db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db0)
  store %struct.Memory* %call_401db0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401db7	 Bytes: 3
  %loadMem_401db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db7)
  store %struct.Memory* %call_401db7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401dba	 Bytes: 7
  %loadMem_401dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dba = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dba)
  store %struct.Memory* %call_401dba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401dc1	 Bytes: 5
  %loadMem_401dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc1 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc1)
  store %struct.Memory* %call_401dc1, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 401dc6	 Bytes: 7
  %loadMem_401dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc6 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc6)
  store %struct.Memory* %call_401dc6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401dcd	 Bytes: 7
  %loadMem_401dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dcd = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dcd)
  store %struct.Memory* %call_401dcd, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401dd4	 Bytes: 5
  %loadMem_401dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd4 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd4)
  store %struct.Memory* %call_401dd4, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401dd9	 Bytes: 7
  %loadMem_401dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd9 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd9)
  store %struct.Memory* %call_401dd9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401de0	 Bytes: 7
  %loadMem_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de0 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de0)
  store %struct.Memory* %call_401de0, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401de7	 Bytes: 5
  %loadMem_401de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de7 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de7)
  store %struct.Memory* %call_401de7, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401dec	 Bytes: 7
  %loadMem_401dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dec = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dec)
  store %struct.Memory* %call_401dec, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401df3	 Bytes: 7
  %loadMem_401df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df3)
  store %struct.Memory* %call_401df3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401dfa	 Bytes: 7
  %loadMem_401dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfa = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfa)
  store %struct.Memory* %call_401dfa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e01	 Bytes: 3
  %loadMem_401e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e01 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e01)
  store %struct.Memory* %call_401e01, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401e04	 Bytes: 4
  %loadMem_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e04 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e04)
  store %struct.Memory* %call_401e04, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e08	 Bytes: 7
  %loadMem_401e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e08 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e08)
  store %struct.Memory* %call_401e08, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e0f	 Bytes: 3
  %loadMem_401e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0f)
  store %struct.Memory* %call_401e0f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e12	 Bytes: 7
  %loadMem_401e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e12 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e12)
  store %struct.Memory* %call_401e12, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401e19	 Bytes: 5
  %loadMem_401e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e19 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e19)
  store %struct.Memory* %call_401e19, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401e1e	 Bytes: 5
  %loadMem_401e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1e)
  store %struct.Memory* %call_401e1e, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 401e23	 Bytes: 7
  %loadMem_401e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e23 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e23)
  store %struct.Memory* %call_401e23, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e2a	 Bytes: 7
  %loadMem_401e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2a)
  store %struct.Memory* %call_401e2a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e31	 Bytes: 5
  %loadMem_401e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e31 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e31)
  store %struct.Memory* %call_401e31, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401e36	 Bytes: 7
  %loadMem_401e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e36 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e36)
  store %struct.Memory* %call_401e36, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e3d	 Bytes: 7
  %loadMem_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3d)
  store %struct.Memory* %call_401e3d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401e44	 Bytes: 5
  %loadMem_401e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e44 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e44)
  store %struct.Memory* %call_401e44, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401e49	 Bytes: 4
  %loadMem_401e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e49 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e49)
  store %struct.Memory* %call_401e49, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e4d	 Bytes: 7
  %loadMem_401e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4d)
  store %struct.Memory* %call_401e4d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e54	 Bytes: 7
  %loadMem_401e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e54 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e54)
  store %struct.Memory* %call_401e54, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e5b	 Bytes: 3
  %loadMem_401e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5b)
  store %struct.Memory* %call_401e5b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401e5e	 Bytes: 7
  %loadMem_401e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5e)
  store %struct.Memory* %call_401e5e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e65	 Bytes: 5
  %loadMem_401e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e65 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e65)
  store %struct.Memory* %call_401e65, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401e6a	 Bytes: 4
  %loadMem_401e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6a)
  store %struct.Memory* %call_401e6a, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401e6e	 Bytes: 5
  %loadMem_401e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6e)
  store %struct.Memory* %call_401e6e, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 401e73	 Bytes: 7
  %loadMem_401e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e73 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e73)
  store %struct.Memory* %call_401e73, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e7a	 Bytes: 7
  %loadMem_401e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7a)
  store %struct.Memory* %call_401e7a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e81	 Bytes: 5
  %loadMem_401e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e81 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e81)
  store %struct.Memory* %call_401e81, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401e86	 Bytes: 7
  %loadMem_401e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e86 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e86)
  store %struct.Memory* %call_401e86, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e8d	 Bytes: 7
  %loadMem_401e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8d)
  store %struct.Memory* %call_401e8d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401e94	 Bytes: 5
  %loadMem_401e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e94 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e94)
  store %struct.Memory* %call_401e94, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401e99	 Bytes: 4
  %loadMem_401e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e99 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e99)
  store %struct.Memory* %call_401e99, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e9d	 Bytes: 7
  %loadMem_401e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9d)
  store %struct.Memory* %call_401e9d, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ea4	 Bytes: 7
  %loadMem_401ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea4 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea4)
  store %struct.Memory* %call_401ea4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401eab	 Bytes: 3
  %loadMem_401eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eab = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eab)
  store %struct.Memory* %call_401eab, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401eae	 Bytes: 4
  %loadMem_401eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eae = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eae)
  store %struct.Memory* %call_401eae, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401eb2	 Bytes: 7
  %loadMem_401eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb2)
  store %struct.Memory* %call_401eb2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401eb9	 Bytes: 3
  %loadMem_401eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb9)
  store %struct.Memory* %call_401eb9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401ebc	 Bytes: 7
  %loadMem_401ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebc = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebc)
  store %struct.Memory* %call_401ebc, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401ec3	 Bytes: 5
  %loadMem_401ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec3 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec3)
  store %struct.Memory* %call_401ec3, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401ec8	 Bytes: 4
  %loadMem_401ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec8 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec8)
  store %struct.Memory* %call_401ec8, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401ecc	 Bytes: 7
  %loadMem_401ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ecc = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ecc)
  store %struct.Memory* %call_401ecc, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ed3	 Bytes: 7
  %loadMem_401ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed3)
  store %struct.Memory* %call_401ed3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401eda	 Bytes: 7
  %loadMem_401eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eda = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eda)
  store %struct.Memory* %call_401eda, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ee1	 Bytes: 3
  %loadMem_401ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee1)
  store %struct.Memory* %call_401ee1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401ee4	 Bytes: 4
  %loadMem_401ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee4)
  store %struct.Memory* %call_401ee4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ee8	 Bytes: 7
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee8)
  store %struct.Memory* %call_401ee8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401eef	 Bytes: 3
  %loadMem_401eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eef = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eef)
  store %struct.Memory* %call_401eef, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401ef2	 Bytes: 7
  %loadMem_401ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef2 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef2)
  store %struct.Memory* %call_401ef2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401ef9	 Bytes: 5
  %loadMem_401ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef9)
  store %struct.Memory* %call_401ef9, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401efe	 Bytes: 4
  %loadMem_401efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efe = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efe)
  store %struct.Memory* %call_401efe, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f02	 Bytes: 7
  %loadMem_401f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f02 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f02)
  store %struct.Memory* %call_401f02, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f09	 Bytes: 7
  %loadMem_401f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f09 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f09)
  store %struct.Memory* %call_401f09, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f10	 Bytes: 3
  %loadMem_401f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f10 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f10)
  store %struct.Memory* %call_401f10, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401f13	 Bytes: 7
  %loadMem_401f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f13 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f13)
  store %struct.Memory* %call_401f13, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401f1a	 Bytes: 5
  %loadMem_401f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1a)
  store %struct.Memory* %call_401f1a, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401f1f	 Bytes: 4
  %loadMem_401f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1f = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1f)
  store %struct.Memory* %call_401f1f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f23	 Bytes: 7
  %loadMem_401f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f23 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f23)
  store %struct.Memory* %call_401f23, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401f2a	 Bytes: 7
  %loadMem_401f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2a)
  store %struct.Memory* %call_401f2a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f31	 Bytes: 3
  %loadMem_401f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f31 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f31)
  store %struct.Memory* %call_401f31, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401f34	 Bytes: 4
  %loadMem_401f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f34 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f34)
  store %struct.Memory* %call_401f34, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f38	 Bytes: 7
  %loadMem_401f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f38 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f38)
  store %struct.Memory* %call_401f38, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f3f	 Bytes: 3
  %loadMem_401f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3f)
  store %struct.Memory* %call_401f3f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401f42	 Bytes: 7
  %loadMem_401f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f42 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f42)
  store %struct.Memory* %call_401f42, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401f49	 Bytes: 5
  %loadMem_401f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f49 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f49)
  store %struct.Memory* %call_401f49, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 401f4e	 Bytes: 6
  %loadMem_401f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4e = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4e)
  store %struct.Memory* %call_401f4e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401f54	 Bytes: 3
  %loadMem_401f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f54 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f54)
  store %struct.Memory* %call_401f54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 401f57	 Bytes: 6
  %loadMem_401f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f57 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f57)
  store %struct.Memory* %call_401f57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c30	 RIP: 401f5d	 Bytes: 5
  %loadMem_401f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5d = call %struct.Memory* @routine_jmpq_.L_401c30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5d, i64 -813, i64 5)
  store %struct.Memory* %call_401f5d, %struct.Memory** %MEMORY

  br label %block_.L_401c30

  ; Code: .L_401f62:	 RIP: 401f62	 Bytes: 0
block_.L_401f62:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401f62	 Bytes: 4
  %loadMem_401f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f62 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f62)
  store %struct.Memory* %call_401f62, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f66	 Bytes: 7
  %loadMem_401f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f66 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f66)
  store %struct.Memory* %call_401f66, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401f6d	 Bytes: 7
  %loadMem_401f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6d)
  store %struct.Memory* %call_401f6d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f74	 Bytes: 3
  %loadMem_401f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f74 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f74)
  store %struct.Memory* %call_401f74, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401f77	 Bytes: 4
  %loadMem_401f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f77 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f77)
  store %struct.Memory* %call_401f77, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f7b	 Bytes: 7
  %loadMem_401f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7b)
  store %struct.Memory* %call_401f7b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f82	 Bytes: 3
  %loadMem_401f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f82 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f82)
  store %struct.Memory* %call_401f82, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401f85	 Bytes: 4
  %loadMem_401f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f85 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f85)
  store %struct.Memory* %call_401f85, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401f89	 Bytes: 5
  %loadMem_401f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f89 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f89)
  store %struct.Memory* %call_401f89, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401f8e	 Bytes: 4
  %loadMem_401f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8e)
  store %struct.Memory* %call_401f8e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f92	 Bytes: 7
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f92 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f92)
  store %struct.Memory* %call_401f92, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f99	 Bytes: 7
  %loadMem_401f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f99 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f99)
  store %struct.Memory* %call_401f99, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fa0	 Bytes: 3
  %loadMem_401fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa0)
  store %struct.Memory* %call_401fa0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401fa3	 Bytes: 4
  %loadMem_401fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa3)
  store %struct.Memory* %call_401fa3, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401fa7	 Bytes: 5
  %loadMem_401fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa7 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa7)
  store %struct.Memory* %call_401fa7, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 401fac	 Bytes: 4
  %loadMem_401fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fac = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fac)
  store %struct.Memory* %call_401fac, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401fb0	 Bytes: 7
  %loadMem_401fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb0 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb0)
  store %struct.Memory* %call_401fb0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401fb7	 Bytes: 7
  %loadMem_401fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb7)
  store %struct.Memory* %call_401fb7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fbe	 Bytes: 3
  %loadMem_401fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbe)
  store %struct.Memory* %call_401fbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401fc1	 Bytes: 4
  %loadMem_401fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc1)
  store %struct.Memory* %call_401fc1, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401fc5	 Bytes: 5
  %loadMem_401fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc5 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc5)
  store %struct.Memory* %call_401fc5, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401fca	 Bytes: 4
  %loadMem_401fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fca = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fca)
  store %struct.Memory* %call_401fca, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401fce	 Bytes: 7
  %loadMem_401fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fce = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fce)
  store %struct.Memory* %call_401fce, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401fd5	 Bytes: 7
  %loadMem_401fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd5 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd5)
  store %struct.Memory* %call_401fd5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fdc	 Bytes: 3
  %loadMem_401fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdc)
  store %struct.Memory* %call_401fdc, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401fdf	 Bytes: 4
  %loadMem_401fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdf = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdf)
  store %struct.Memory* %call_401fdf, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401fe3	 Bytes: 7
  %loadMem_401fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe3)
  store %struct.Memory* %call_401fe3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fea	 Bytes: 3
  %loadMem_401fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fea = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fea)
  store %struct.Memory* %call_401fea, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401fed	 Bytes: 4
  %loadMem_401fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fed = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fed)
  store %struct.Memory* %call_401fed, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401ff1	 Bytes: 5
  %loadMem_401ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff1 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff1)
  store %struct.Memory* %call_401ff1, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401ff6	 Bytes: 4
  %loadMem_401ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff6 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff6)
  store %struct.Memory* %call_401ff6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ffa	 Bytes: 7
  %loadMem_401ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffa = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffa)
  store %struct.Memory* %call_401ffa, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402001	 Bytes: 7
  %loadMem_402001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402001 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402001)
  store %struct.Memory* %call_402001, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402008	 Bytes: 3
  %loadMem_402008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402008 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402008)
  store %struct.Memory* %call_402008, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40200b	 Bytes: 7
  %loadMem_40200b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200b)
  store %struct.Memory* %call_40200b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402012	 Bytes: 5
  %loadMem_402012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402012 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402012)
  store %struct.Memory* %call_402012, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402017	 Bytes: 7
  %loadMem_402017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402017 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402017)
  store %struct.Memory* %call_402017, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40201e	 Bytes: 4
  %loadMem_40201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201e)
  store %struct.Memory* %call_40201e, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402022	 Bytes: 5
  %loadMem_402022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402022 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402022)
  store %struct.Memory* %call_402022, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402027	 Bytes: 7
  %loadMem_402027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402027 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402027)
  store %struct.Memory* %call_402027, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40202e	 Bytes: 4
  %loadMem_40202e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202e)
  store %struct.Memory* %call_40202e, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402032	 Bytes: 5
  %loadMem_402032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402032 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402032)
  store %struct.Memory* %call_402032, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402037	 Bytes: 4
  %loadMem_402037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402037 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402037)
  store %struct.Memory* %call_402037, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40203b	 Bytes: 7
  %loadMem_40203b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203b)
  store %struct.Memory* %call_40203b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402042	 Bytes: 7
  %loadMem_402042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402042 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402042)
  store %struct.Memory* %call_402042, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402049	 Bytes: 3
  %loadMem_402049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402049 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402049)
  store %struct.Memory* %call_402049, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40204c	 Bytes: 4
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402050	 Bytes: 7
  %loadMem_402050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402050 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402050)
  store %struct.Memory* %call_402050, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402057	 Bytes: 3
  %loadMem_402057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402057 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402057)
  store %struct.Memory* %call_402057, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40205a	 Bytes: 4
  %loadMem_40205a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205a)
  store %struct.Memory* %call_40205a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 40205e	 Bytes: 5
  %loadMem_40205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205e = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205e)
  store %struct.Memory* %call_40205e, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402063	 Bytes: 5
  %loadMem_402063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402063 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402063)
  store %struct.Memory* %call_402063, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402068	 Bytes: 7
  %loadMem_402068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402068 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402068)
  store %struct.Memory* %call_402068, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40206f	 Bytes: 4
  %loadMem_40206f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206f)
  store %struct.Memory* %call_40206f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402073	 Bytes: 5
  %loadMem_402073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402073 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402073)
  store %struct.Memory* %call_402073, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402078	 Bytes: 4
  %loadMem_402078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402078 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402078)
  store %struct.Memory* %call_402078, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40207c	 Bytes: 7
  %loadMem_40207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207c = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207c)
  store %struct.Memory* %call_40207c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402083	 Bytes: 7
  %loadMem_402083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402083 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402083)
  store %struct.Memory* %call_402083, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40208a	 Bytes: 3
  %loadMem_40208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208a)
  store %struct.Memory* %call_40208a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40208d	 Bytes: 7
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208d = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208d)
  store %struct.Memory* %call_40208d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402094	 Bytes: 5
  %loadMem_402094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402094 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402094)
  store %struct.Memory* %call_402094, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402099	 Bytes: 4
  %loadMem_402099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402099 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402099)
  store %struct.Memory* %call_402099, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40209d	 Bytes: 4
  %loadMem_40209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209d)
  store %struct.Memory* %call_40209d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4020a1	 Bytes: 7
  %loadMem_4020a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a1)
  store %struct.Memory* %call_4020a1, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4020a8	 Bytes: 7
  %loadMem_4020a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a8)
  store %struct.Memory* %call_4020a8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020af	 Bytes: 3
  %loadMem_4020af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020af = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020af)
  store %struct.Memory* %call_4020af, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4020b2	 Bytes: 7
  %loadMem_4020b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b2)
  store %struct.Memory* %call_4020b2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4020b9	 Bytes: 5
  %loadMem_4020b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b9)
  store %struct.Memory* %call_4020b9, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 4020be	 Bytes: 7
  %loadMem_4020be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020be = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020be)
  store %struct.Memory* %call_4020be, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020c5	 Bytes: 4
  %loadMem_4020c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c5)
  store %struct.Memory* %call_4020c5, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4020c9	 Bytes: 5
  %loadMem_4020c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c9 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c9)
  store %struct.Memory* %call_4020c9, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4020ce	 Bytes: 7
  %loadMem_4020ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ce = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ce)
  store %struct.Memory* %call_4020ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020d5	 Bytes: 4
  %loadMem_4020d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d5)
  store %struct.Memory* %call_4020d5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4020d9	 Bytes: 5
  %loadMem_4020d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d9 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d9)
  store %struct.Memory* %call_4020d9, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 4020de	 Bytes: 7
  %loadMem_4020de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020de = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020de)
  store %struct.Memory* %call_4020de, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4020e5	 Bytes: 7
  %loadMem_4020e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e5)
  store %struct.Memory* %call_4020e5, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4020ec	 Bytes: 7
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ec = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ec)
  store %struct.Memory* %call_4020ec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020f3	 Bytes: 3
  %loadMem_4020f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f3)
  store %struct.Memory* %call_4020f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4020f6	 Bytes: 4
  %loadMem_4020f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f6)
  store %struct.Memory* %call_4020f6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4020fa	 Bytes: 7
  %loadMem_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fa = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fa)
  store %struct.Memory* %call_4020fa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402101	 Bytes: 3
  %loadMem_402101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402101 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402101)
  store %struct.Memory* %call_402101, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402104	 Bytes: 4
  %loadMem_402104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402104 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402104)
  store %struct.Memory* %call_402104, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402108	 Bytes: 5
  %loadMem_402108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402108 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402108)
  store %struct.Memory* %call_402108, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 40210d	 Bytes: 5
  %loadMem_40210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210d = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210d)
  store %struct.Memory* %call_40210d, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 402112	 Bytes: 7
  %loadMem_402112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402112 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402112)
  store %struct.Memory* %call_402112, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402119	 Bytes: 7
  %loadMem_402119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402119 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402119)
  store %struct.Memory* %call_402119, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402120	 Bytes: 5
  %loadMem_402120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402120 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402120)
  store %struct.Memory* %call_402120, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402125	 Bytes: 7
  %loadMem_402125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402125 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402125)
  store %struct.Memory* %call_402125, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40212c	 Bytes: 4
  %loadMem_40212c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212c)
  store %struct.Memory* %call_40212c, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402130	 Bytes: 5
  %loadMem_402130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402130 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402130)
  store %struct.Memory* %call_402130, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402135	 Bytes: 4
  %loadMem_402135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402135 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402135)
  store %struct.Memory* %call_402135, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402139	 Bytes: 7
  %loadMem_402139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402139 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402139)
  store %struct.Memory* %call_402139, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402140	 Bytes: 7
  %loadMem_402140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402140 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402140)
  store %struct.Memory* %call_402140, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402147	 Bytes: 3
  %loadMem_402147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402147 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402147)
  store %struct.Memory* %call_402147, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40214a	 Bytes: 7
  %loadMem_40214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214a)
  store %struct.Memory* %call_40214a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402151	 Bytes: 5
  %loadMem_402151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402151 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402151)
  store %struct.Memory* %call_402151, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 402156	 Bytes: 4
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402156 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402156)
  store %struct.Memory* %call_402156, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 40215a	 Bytes: 5
  %loadMem_40215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215a = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215a)
  store %struct.Memory* %call_40215a, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 40215f	 Bytes: 7
  %loadMem_40215f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215f = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215f)
  store %struct.Memory* %call_40215f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402166	 Bytes: 7
  %loadMem_402166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402166 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402166)
  store %struct.Memory* %call_402166, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40216d	 Bytes: 5
  %loadMem_40216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216d)
  store %struct.Memory* %call_40216d, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402172	 Bytes: 7
  %loadMem_402172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402172 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402172)
  store %struct.Memory* %call_402172, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402179	 Bytes: 4
  %loadMem_402179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402179 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402179)
  store %struct.Memory* %call_402179, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40217d	 Bytes: 5
  %loadMem_40217d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217d = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217d)
  store %struct.Memory* %call_40217d, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402182	 Bytes: 4
  %loadMem_402182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402182 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402182)
  store %struct.Memory* %call_402182, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402186	 Bytes: 7
  %loadMem_402186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402186 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402186)
  store %struct.Memory* %call_402186, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40218d	 Bytes: 7
  %loadMem_40218d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218d)
  store %struct.Memory* %call_40218d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402194	 Bytes: 3
  %loadMem_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402194 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402194)
  store %struct.Memory* %call_402194, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402197	 Bytes: 4
  %loadMem_402197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402197 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402197)
  store %struct.Memory* %call_402197, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40219b	 Bytes: 7
  %loadMem_40219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219b)
  store %struct.Memory* %call_40219b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021a2	 Bytes: 3
  %loadMem_4021a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a2)
  store %struct.Memory* %call_4021a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4021a5	 Bytes: 4
  %loadMem_4021a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a5)
  store %struct.Memory* %call_4021a5, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4021a9	 Bytes: 5
  %loadMem_4021a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a9)
  store %struct.Memory* %call_4021a9, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4021ae	 Bytes: 4
  %loadMem_4021ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ae = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ae)
  store %struct.Memory* %call_4021ae, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 4021b2	 Bytes: 7
  %loadMem_4021b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b2 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b2)
  store %struct.Memory* %call_4021b2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4021b9	 Bytes: 7
  %loadMem_4021b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b9)
  store %struct.Memory* %call_4021b9, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4021c0	 Bytes: 7
  %loadMem_4021c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c0 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c0)
  store %struct.Memory* %call_4021c0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021c7	 Bytes: 3
  %loadMem_4021c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c7)
  store %struct.Memory* %call_4021c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4021ca	 Bytes: 4
  %loadMem_4021ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ca = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ca)
  store %struct.Memory* %call_4021ca, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021ce	 Bytes: 7
  %loadMem_4021ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ce = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ce)
  store %struct.Memory* %call_4021ce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021d5	 Bytes: 3
  %loadMem_4021d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d5)
  store %struct.Memory* %call_4021d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4021d8	 Bytes: 4
  %loadMem_4021d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d8 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d8)
  store %struct.Memory* %call_4021d8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4021dc	 Bytes: 5
  %loadMem_4021dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021dc = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021dc)
  store %struct.Memory* %call_4021dc, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4021e1	 Bytes: 4
  %loadMem_4021e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e1 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e1)
  store %struct.Memory* %call_4021e1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4021e5	 Bytes: 7
  %loadMem_4021e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e5)
  store %struct.Memory* %call_4021e5, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021ec	 Bytes: 7
  %loadMem_4021ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ec = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ec)
  store %struct.Memory* %call_4021ec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021f3	 Bytes: 3
  %loadMem_4021f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f3)
  store %struct.Memory* %call_4021f3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4021f6	 Bytes: 7
  %loadMem_4021f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f6 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f6)
  store %struct.Memory* %call_4021f6, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4021fd	 Bytes: 5
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fd = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fd)
  store %struct.Memory* %call_4021fd, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402202	 Bytes: 4
  %loadMem_402202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402202 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402202)
  store %struct.Memory* %call_402202, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402206	 Bytes: 7
  %loadMem_402206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402206 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402206)
  store %struct.Memory* %call_402206, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40220d	 Bytes: 7
  %loadMem_40220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220d)
  store %struct.Memory* %call_40220d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402214	 Bytes: 3
  %loadMem_402214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402214 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402214)
  store %struct.Memory* %call_402214, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402217	 Bytes: 4
  %loadMem_402217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402217 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402217)
  store %struct.Memory* %call_402217, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40221b	 Bytes: 7
  %loadMem_40221b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221b)
  store %struct.Memory* %call_40221b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402222	 Bytes: 3
  %loadMem_402222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402222 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402222)
  store %struct.Memory* %call_402222, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402225	 Bytes: 4
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402229	 Bytes: 5
  %loadMem_402229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402229 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402229)
  store %struct.Memory* %call_402229, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 40222e	 Bytes: 6
  %loadMem_40222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222e = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222e)
  store %struct.Memory* %call_40222e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402234	 Bytes: 3
  %loadMem_402234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402234 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402234)
  store %struct.Memory* %call_402234, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 402237	 Bytes: 6
  %loadMem_402237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402237 = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402237)
  store %struct.Memory* %call_402237, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4015aa	 RIP: 40223d	 Bytes: 5
  %loadMem_40223d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223d = call %struct.Memory* @routine_jmpq_.L_4015aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223d, i64 -3219, i64 5)
  store %struct.Memory* %call_40223d, %struct.Memory** %MEMORY

  br label %block_.L_4015aa

  ; Code: .L_402242:	 RIP: 402242	 Bytes: 0
block_.L_402242:

  ; Code: jmpq .L_402247	 RIP: 402242	 Bytes: 5
  %loadMem_402242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402242 = call %struct.Memory* @routine_jmpq_.L_402247(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402242, i64 5, i64 5)
  store %struct.Memory* %call_402242, %struct.Memory** %MEMORY

  br label %block_.L_402247

  ; Code: .L_402247:	 RIP: 402247	 Bytes: 0
block_.L_402247:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 402247	 Bytes: 6
  %loadMem_402247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402247 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402247)
  store %struct.Memory* %call_402247, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40224d	 Bytes: 3
  %loadMem_40224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224d)
  store %struct.Memory* %call_40224d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 402250	 Bytes: 6
  %loadMem_402250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402250 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402250)
  store %struct.Memory* %call_402250, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401591	 RIP: 402256	 Bytes: 5
  %loadMem_402256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402256 = call %struct.Memory* @routine_jmpq_.L_401591(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402256, i64 -3269, i64 5)
  store %struct.Memory* %call_402256, %struct.Memory** %MEMORY

  br label %block_.L_401591

  ; Code: .L_40225b:	 RIP: 40225b	 Bytes: 0
block_.L_40225b:

  ; Code: addq $0x38, %rsp	 RIP: 40225b	 Bytes: 4
  %loadMem_40225b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225b = call %struct.Memory* @routine_addq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225b)
  store %struct.Memory* %call_40225b, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 40225f	 Bytes: 1
  %loadMem_40225f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225f = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225f)
  store %struct.Memory* %call_40225f, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 402260	 Bytes: 2
  %loadMem_402260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402260 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402260)
  store %struct.Memory* %call_402260, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 402262	 Bytes: 2
  %loadMem_402262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402262 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402262)
  store %struct.Memory* %call_402262, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 402264	 Bytes: 2
  %loadMem_402264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402264 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402264)
  store %struct.Memory* %call_402264, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 402266	 Bytes: 2
  %loadMem_402266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402266 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402266)
  store %struct.Memory* %call_402266, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 402268	 Bytes: 1
  %loadMem_402268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402268 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402268)
  store %struct.Memory* %call_402268, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402269	 Bytes: 1
  %loadMem_402269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402269 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402269)
  store %struct.Memory* %call_402269, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402269
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
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

define %struct.Memory* @routine_subq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 188
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_40225b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_402242(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 33800)
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


define %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 520)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




















define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


















define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4015c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




























































































































































































































































define %struct.Memory* @routine_jge_.L_401f62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















































































































































































































































































define %struct.Memory* @routine_jmpq_.L_401c30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4015aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402247(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401591(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
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


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
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


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
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

