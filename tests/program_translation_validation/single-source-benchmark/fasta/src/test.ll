; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/fasta/fasta.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aminoacid_t = type { float, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.iub = internal global [15 x %struct.aminoacid_t] [%struct.aminoacid_t { float 0x3FD147AE20000000, i8 97 }, %struct.aminoacid_t { float 0x3FBEB851E0000000, i8 99 }, %struct.aminoacid_t { float 0x3FBEB851E0000000, i8 103 }, %struct.aminoacid_t { float 0x3FD147AE20000000, i8 116 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 66 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 68 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 72 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 75 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 77 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 78 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 82 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 83 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 86 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 87 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 89 }], align 16
@main.homosapiens = internal global [4 x %struct.aminoacid_t] [%struct.aminoacid_t { float 0x3FD3639D20000000, i8 97 }, %struct.aminoacid_t { float 0x3FC957AE40000000, i8 99 }, %struct.aminoacid_t { float 0x3FC9493AE0000000, i8 103 }, %struct.aminoacid_t { float 0x3FD34BEE40000000, i8 116 }], align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 1
@.str = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 1
@myrandom.last = internal global i64 42, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 5000000, i64* %n, align 8
  call void @accumulate_probabilities(%struct.aminoacid_t* getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i32 0, i32 0), i64 15)
  call void @accumulate_probabilities(%struct.aminoacid_t* getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i32 0, i32 0), i64 4)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load i64, i64* %n, align 8
  %mul = mul i64 2, %1
  call void @repeat_fasta(i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i32 0, i32 0), i64 %mul)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load i64, i64* %n, align 8
  %mul2 = mul i64 3, %3
  call void @random_fasta(%struct.aminoacid_t* getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i32 0, i32 0), i64 %mul2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load i64, i64* %n, align 8
  %mul4 = mul i64 5, %5
  call void @random_fasta(%struct.aminoacid_t* getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i32 0, i32 0), i64 %mul4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @accumulate_probabilities(%struct.aminoacid_t* %genelist, i64 %len) #0 {
entry:
  %genelist.addr = alloca %struct.aminoacid_t*, align 8
  %len.addr = alloca i64, align 8
  %cp = alloca float, align 4
  %i = alloca i64, align 8
  store %struct.aminoacid_t* %genelist, %struct.aminoacid_t** %genelist.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store float 0.000000e+00, float* %cp, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.aminoacid_t*, %struct.aminoacid_t** %genelist.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %2, i64 %3
  %p = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %arrayidx, i32 0, i32 0
  %4 = load float, float* %p, align 4
  %5 = load float, float* %cp, align 4
  %add = fadd float %5, %4
  store float %add, float* %cp, align 4
  %6 = load float, float* %cp, align 4
  %7 = load %struct.aminoacid_t*, %struct.aminoacid_t** %genelist.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %7, i64 %8
  %p2 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %arrayidx1, i32 0, i32 0
  store float %6, float* %p2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @repeat_fasta(i8* %s, i64 %count) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %len = alloca i64, align 8
  %s2 = alloca i8*, align 8
  %line = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 0, i64* %pos, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 60
  %call1 = call noalias i8* @malloc(i64 %add) #6
  store i8* %call1, i8** %s2, align 8
  %2 = load i8*, i8** %s2, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 %4, i32 1, i1 false)
  %5 = load i8*, i8** %s2, align 8
  %6 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8*, i8** %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %7, i64 60, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i64, i64* %count.addr, align 8
  %cmp = icmp ule i64 60, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %9 = load i64, i64* %count.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 60, %cond.true ], [ %9, %cond.false ]
  store i64 %cond, i64* %line, align 8
  %10 = load i8*, i8** %s2, align 8
  %11 = load i64, i64* %pos, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i64, i64* %line, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i64 @fwrite(i8* %add.ptr2, i64 1, i64 %12, %struct._IO_FILE* %13)
  %call4 = call i32 @putchar(i32 10)
  %14 = load i64, i64* %line, align 8
  %15 = load i64, i64* %pos, align 8
  %add5 = add i64 %15, %14
  store i64 %add5, i64* %pos, align 8
  %16 = load i64, i64* %pos, align 8
  %17 = load i64, i64* %len, align 8
  %cmp6 = icmp uge i64 %16, %17
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %18 = load i64, i64* %len, align 8
  %19 = load i64, i64* %pos, align 8
  %sub = sub i64 %19, %18
  store i64 %sub, i64* %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %20 = load i64, i64* %line, align 8
  %21 = load i64, i64* %count.addr, align 8
  %sub7 = sub i64 %21, %20
  store i64 %sub7, i64* %count.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %22 = load i64, i64* %count.addr, align 8
  %tobool = icmp ne i64 %22, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i8*, i8** %s2, align 8
  call void @free(i8* %23) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @random_fasta(%struct.aminoacid_t* %genelist, i64 %count) #0 {
entry:
  %genelist.addr = alloca %struct.aminoacid_t*, align 8
  %count.addr = alloca i64, align 8
  %line = alloca i64, align 8
  %pos = alloca i64, align 8
  %buf = alloca [61 x i8], align 16
  %r = alloca float, align 4
  %i = alloca i64, align 8
  store %struct.aminoacid_t* %genelist, %struct.aminoacid_t** %genelist.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond9, %entry
  %0 = load i64, i64* %count.addr, align 8
  %cmp = icmp ule i64 60, %0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %1 = load i64, i64* %count.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 60, %cond.true ], [ %1, %cond.false ]
  store i64 %cond, i64* %line, align 8
  store i64 0, i64* %pos, align 8
  br label %do.body1

do.body1:                                         ; preds = %do.cond, %cond.end
  %call = call float @myrandom(float 1.000000e+00)
  store float %call, float* %r, align 4
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body1
  %2 = load %struct.aminoacid_t*, %struct.aminoacid_t** %genelist.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %2, i64 %3
  %p = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %arrayidx, i32 0, i32 0
  %4 = load float, float* %p, align 4
  %5 = load float, float* %r, align 4
  %cmp2 = fcmp olt float %4, %5
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.aminoacid_t*, %struct.aminoacid_t** %genelist.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %7, i64 %8
  %c = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %arrayidx3, i32 0, i32 1
  %9 = load i8, i8* %c, align 4
  %10 = load i64, i64* %pos, align 8
  %inc4 = add i64 %10, 1
  store i64 %inc4, i64* %pos, align 8
  %arrayidx5 = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i64 0, i64 %10
  store i8 %9, i8* %arrayidx5, align 1
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %11 = load i64, i64* %pos, align 8
  %12 = load i64, i64* %line, align 8
  %cmp6 = icmp ult i64 %11, %12
  br i1 %cmp6, label %do.body1, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %line, align 8
  %arrayidx7 = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i64 0, i64 %13
  store i8 10, i8* %arrayidx7, align 1
  %arraydecay = getelementptr inbounds [61 x i8], [61 x i8]* %buf, i32 0, i32 0
  %14 = load i64, i64* %line, align 8
  %add = add i64 %14, 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 %add, %struct._IO_FILE* %15)
  %16 = load i64, i64* %line, align 8
  %17 = load i64, i64* %count.addr, align 8
  %sub = sub i64 %17, %16
  store i64 %sub, i64* %count.addr, align 8
  br label %do.cond9

do.cond9:                                         ; preds = %do.end
  %18 = load i64, i64* %count.addr, align 8
  %tobool = icmp ne i64 %18, 0
  br i1 %tobool, label %do.body, label %do.end10

do.end10:                                         ; preds = %do.cond9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @myrandom(float %max) #0 {
entry:
  %max.addr = alloca float, align 4
  %IM = alloca i64, align 8
  %IA = alloca i64, align 8
  %IC = alloca i64, align 8
  store float %max, float* %max.addr, align 4
  store i64 139968, i64* %IM, align 8
  store i64 3877, i64* %IA, align 8
  store i64 29573, i64* %IC, align 8
  %0 = load i64, i64* @myrandom.last, align 8
  %mul = mul i64 %0, 3877
  %add = add i64 %mul, 29573
  %rem = urem i64 %add, 139968
  store i64 %rem, i64* @myrandom.last, align 8
  %1 = load float, float* %max.addr, align 4
  %2 = load i64, i64* @myrandom.last, align 8
  %conv = sitofp i64 %2 to float
  %mul1 = fmul float %1, %conv
  %div = fdiv float %mul1, 1.399680e+05
  ret float %div
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @putchar(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
