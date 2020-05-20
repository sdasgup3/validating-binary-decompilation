; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/misr/misr.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cells = type { i32, i32, %struct.cells* }

@reg_len = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Register too long; Max. = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Structure does not match Register length:\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cell_array = alloca %struct.cells, align 8
  %num_vect = alloca i32, align 4
  %num_times = alloca i32, align 4
  %num_true = alloca i32, align 4
  %i = alloca i32, align 4
  %prob = alloca double, align 8
  %structure = alloca [100 x i8], align 16
  %seed = alloca [3 x i16], align 2
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10, i32* %num_vect, align 4
  store i32 10, i32* @reg_len, align 4
  store double 2.500000e-01, double* %prob, align 8
  store i32 100000, i32* %num_times, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 6
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %2) #5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @reg_len, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i64 0, i64 %idxprom
  store i8 48, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i64 0, i64 0
  store i8 49, i8* %arrayidx3, align 16
  %7 = load i32, i32* @reg_len, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i64 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp sgt i32 %8, 7
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.end
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %9, i64 7
  %10 = load i8*, i8** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 0
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i16* %arrayidx9) #5
  br label %if.end13

if.else11:                                        ; preds = %if.end
  %arrayidx12 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 0
  store i16 1, i16* %arrayidx12, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then7
  %11 = load i32, i32* %argc.addr, align 4
  %cmp14 = icmp sgt i32 %11, 8
  br i1 %cmp14, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.end13
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %12, i64 8
  %13 = load i8*, i8** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 1
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i16* %arrayidx17) #5
  br label %if.end21

if.else19:                                        ; preds = %if.end13
  %arrayidx20 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 1
  store i16 0, i16* %arrayidx20, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then15
  %14 = load i32, i32* %argc.addr, align 4
  %cmp22 = icmp sgt i32 %14, 9
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end21
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %15, i64 9
  %16 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 2
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i16* %arrayidx25) #5
  br label %if.end29

if.else27:                                        ; preds = %if.end21
  %arrayidx28 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 2
  store i16 0, i16* %arrayidx28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then23
  %17 = load i32, i32* @reg_len, align 4
  %cmp30 = icmp sgt i32 %17, 100
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 100)
  store i32 2, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end29
  %18 = load double, double* %prob, align 8
  %cmp34 = fcmp ogt double %18, 1.000000e+00
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %19 = load double, double* %prob, align 8
  %cmp35 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %lor.lhs.false, %if.end33
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 3, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %lor.lhs.false
  %arraydecay39 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #6
  %20 = load i32, i32* @reg_len, align 4
  %conv = sext i32 %20 to i64
  %cmp41 = icmp ne i64 %call40, %conv
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  store i32 4, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end38
  %arraydecay46 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i32 0, i32 0
  %call47 = call i16* @seed48(i16* %arraydecay46) #5
  call void @create_link_list(%struct.cells* %cell_array)
  store i32 0, i32* %num_true, align 4
  %21 = load i32, i32* %num_vect, align 4
  %cmp48 = icmp ne i32 %21, 0
  br i1 %cmp48, label %if.then50, label %if.else60

if.then50:                                        ; preds = %if.end45
  store i32 0, i32* %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc57, %if.then50
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %num_times, align 4
  %cmp52 = icmp slt i32 %22, %23
  br i1 %cmp52, label %for.body54, label %for.end59

for.body54:                                       ; preds = %for.cond51
  call void @init(%struct.cells* %cell_array)
  %24 = load i32, i32* %num_vect, align 4
  %25 = load double, double* %prob, align 8
  %arraydecay55 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %call56 = call i32 @simulate(i32 %24, %struct.cells* %cell_array, double %25, i8* %arraydecay55)
  %26 = load i32, i32* %num_true, align 4
  %add = add nsw i32 %26, %call56
  store i32 %add, i32* %num_true, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body54
  %27 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %27, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond51

for.end59:                                        ; preds = %for.cond51
  br label %if.end73

if.else60:                                        ; preds = %if.end45
  call void @init(%struct.cells* %cell_array)
  %28 = load double, double* %prob, align 8
  %arraydecay61 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %call62 = call i32 @simulate(i32 10000, %struct.cells* %cell_array, double %28, i8* %arraydecay61)
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc70, %if.else60
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %num_times, align 4
  %cmp64 = icmp slt i32 %29, %30
  br i1 %cmp64, label %for.body66, label %for.end72

for.body66:                                       ; preds = %for.cond63
  %31 = load double, double* %prob, align 8
  %arraydecay67 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %call68 = call i32 @simulate(i32 1, %struct.cells* %cell_array, double %31, i8* %arraydecay67)
  %32 = load i32, i32* %num_true, align 4
  %add69 = add nsw i32 %32, %call68
  store i32 %add69, i32* %num_true, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %for.body66
  %33 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %33, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond63

for.end72:                                        ; preds = %for.cond63
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %for.end59
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0))
  %34 = load i32, i32* @reg_len, align 4
  %35 = load i32, i32* %num_vect, align 4
  %36 = load double, double* %prob, align 8
  %37 = load i32, i32* %num_times, align 4
  %arraydecay75 = getelementptr inbounds [100 x i8], [100 x i8]* %structure, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 0
  %38 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %38 to i32
  %arrayidx78 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 1
  %39 = load i16, i16* %arrayidx78, align 2
  %conv79 = zext i16 %39 to i32
  %arrayidx80 = getelementptr inbounds [3 x i16], [3 x i16]* %seed, i64 0, i64 2
  %40 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %40 to i32
  %41 = load i32, i32* %num_times, align 4
  %42 = load i32, i32* %num_true, align 4
  %sub = sub nsw i32 %41, %42
  %conv82 = sitofp i32 %sub to double
  %43 = load i32, i32* %num_times, align 4
  %conv83 = sitofp i32 %43 to double
  %div = fdiv double %conv82, %conv83
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i32 %34, i32 %35, double %36, i32 %37, i8* %arraydecay75, i32 %conv77, i32 %conv79, i32 %conv81, double %div)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then43, %if.then36, %if.then31
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i16* @seed48(i16*) #1

; Function Attrs: noinline nounwind uwtable
define void @create_link_list(%struct.cells* %cell_array) #0 {
entry:
  %cell_array.addr = alloca %struct.cells*, align 8
  %i = alloca i32, align 4
  %temp = alloca %struct.cells*, align 8
  %present = alloca %struct.cells*, align 8
  store %struct.cells* %cell_array, %struct.cells** %cell_array.addr, align 8
  %0 = load %struct.cells*, %struct.cells** %cell_array.addr, align 8
  %1 = bitcast %struct.cells* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %2 = load %struct.cells*, %struct.cells** %cell_array.addr, align 8
  store %struct.cells* %2, %struct.cells** %present, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @reg_len, align 4
  %add = add nsw i32 %4, 1
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias i8* @malloc(i64 16) #5
  %5 = bitcast i8* %call to %struct.cells*
  store %struct.cells* %5, %struct.cells** %temp, align 8
  %6 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free = getelementptr inbounds %struct.cells, %struct.cells* %6, i32 0, i32 0
  store i32 1, i32* %f_free, align 8
  %7 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty = getelementptr inbounds %struct.cells, %struct.cells* %7, i32 0, i32 1
  store i32 1, i32* %faulty, align 4
  %8 = load %struct.cells*, %struct.cells** %temp, align 8
  %next = getelementptr inbounds %struct.cells, %struct.cells* %8, i32 0, i32 2
  store %struct.cells* null, %struct.cells** %next, align 8
  %9 = load %struct.cells*, %struct.cells** %temp, align 8
  %10 = load %struct.cells*, %struct.cells** %present, align 8
  %next1 = getelementptr inbounds %struct.cells, %struct.cells* %10, i32 0, i32 2
  store %struct.cells* %9, %struct.cells** %next1, align 8
  %11 = load %struct.cells*, %struct.cells** %present, align 8
  %next2 = getelementptr inbounds %struct.cells, %struct.cells* %11, i32 0, i32 2
  %12 = load %struct.cells*, %struct.cells** %next2, align 8
  store %struct.cells* %12, %struct.cells** %present, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @init(%struct.cells* %present) #0 {
entry:
  %present.addr = alloca %struct.cells*, align 8
  store %struct.cells* %present, %struct.cells** %present.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %next = getelementptr inbounds %struct.cells, %struct.cells* %0, i32 0, i32 2
  %1 = load %struct.cells*, %struct.cells** %next, align 8
  %cmp = icmp ne %struct.cells* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %f_free = getelementptr inbounds %struct.cells, %struct.cells* %2, i32 0, i32 0
  %3 = load i32, i32* %f_free, align 8
  %4 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %faulty = getelementptr inbounds %struct.cells, %struct.cells* %4, i32 0, i32 1
  store i32 %3, i32* %faulty, align 4
  %5 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %next1 = getelementptr inbounds %struct.cells, %struct.cells* %5, i32 0, i32 2
  %6 = load %struct.cells*, %struct.cells** %next1, align 8
  store %struct.cells* %6, %struct.cells** %present.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @simulate(i32 %iterations, %struct.cells* %present, double %prob, i8* %structure) #0 {
entry:
  %iterations.addr = alloca i32, align 4
  %present.addr = alloca %struct.cells*, align 8
  %prob.addr = alloca double, align 8
  %structure.addr = alloca i8*, align 8
  %temp = alloca %struct.cells*, align 8
  %different = alloca i32, align 4
  %savef_free = alloca i32, align 4
  %savefaulty = alloca i32, align 4
  %rem = alloca i32, align 4
  %quot = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %randv = alloca i64, align 8
  %randprob = alloca double, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store %struct.cells* %present, %struct.cells** %present.addr, align 8
  store double %prob, double* %prob.addr, align 8
  store i8* %structure, i8** %structure.addr, align 8
  store i32 0, i32* %different, align 4
  %0 = load i32, i32* @reg_len, align 4
  %sub = sub nsw i32 %0, 1
  %div = sdiv i32 %sub, 31
  store i32 %div, i32* %quot, align 4
  %1 = load i32, i32* @reg_len, align 4
  %sub1 = sub nsw i32 %1, 1
  %rem2 = srem i32 %sub1, 31
  store i32 %rem2, i32* %rem, align 4
  %2 = load %struct.cells*, %struct.cells** %present.addr, align 8
  store %struct.cells* %2, %struct.cells** %temp, align 8
  store i32 0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc115, %entry
  %3 = load i32, i32* %h, align 4
  %4 = load i32, i32* %iterations.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end117

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %savef_free, align 4
  store i32 0, i32* %savefaulty, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc34, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %quot, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end36

for.body5:                                        ; preds = %for.cond3
  %call = call i64 @lrand48() #5
  store i64 %call, i64* %randv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %7 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %7, 31
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %8 = load i8*, i8** %structure.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 31
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %10
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 49
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %12 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free = getelementptr inbounds %struct.cells, %struct.cells* %12, i32 0, i32 0
  %13 = load i32, i32* %f_free, align 8
  %14 = load i32, i32* %savef_free, align 4
  %add11 = add nsw i32 %14, %13
  store i32 %add11, i32* %savef_free, align 4
  %15 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty = getelementptr inbounds %struct.cells, %struct.cells* %15, i32 0, i32 1
  %16 = load i32, i32* %faulty, align 4
  %17 = load i32, i32* %savefaulty, align 4
  %add12 = add nsw i32 %17, %16
  store i32 %add12, i32* %savefaulty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %18 = load %struct.cells*, %struct.cells** %temp, align 8
  %next = getelementptr inbounds %struct.cells, %struct.cells* %18, i32 0, i32 2
  %19 = load %struct.cells*, %struct.cells** %next, align 8
  %f_free13 = getelementptr inbounds %struct.cells, %struct.cells* %19, i32 0, i32 0
  %20 = load i32, i32* %f_free13, align 8
  %conv14 = sext i32 %20 to i64
  %21 = load i64, i64* %randv, align 8
  %add15 = add nsw i64 %conv14, %21
  %and = and i64 %add15, 1
  %conv16 = trunc i64 %and to i32
  %22 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free17 = getelementptr inbounds %struct.cells, %struct.cells* %22, i32 0, i32 0
  store i32 %conv16, i32* %f_free17, align 8
  %call18 = call i64 @lrand48() #5
  %rem19 = srem i64 %call18, 1000
  %conv20 = sitofp i64 %rem19 to double
  %div21 = fdiv double %conv20, 1.000000e+03
  store double %div21, double* %randprob, align 8
  %23 = load double, double* %prob.addr, align 8
  %24 = load double, double* %randprob, align 8
  %cmp22 = fcmp ogt double %23, %24
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  %25 = load i64, i64* %randv, align 8
  %xor = xor i64 %25, 1
  store i64 %xor, i64* %randv, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end
  %26 = load %struct.cells*, %struct.cells** %temp, align 8
  %next26 = getelementptr inbounds %struct.cells, %struct.cells* %26, i32 0, i32 2
  %27 = load %struct.cells*, %struct.cells** %next26, align 8
  %faulty27 = getelementptr inbounds %struct.cells, %struct.cells* %27, i32 0, i32 1
  %28 = load i32, i32* %faulty27, align 4
  %conv28 = sext i32 %28 to i64
  %29 = load i64, i64* %randv, align 8
  %add29 = add nsw i64 %conv28, %29
  %and30 = and i64 %add29, 1
  %conv31 = trunc i64 %and30 to i32
  %30 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty32 = getelementptr inbounds %struct.cells, %struct.cells* %30, i32 0, i32 1
  store i32 %conv31, i32* %faulty32, align 4
  %31 = load %struct.cells*, %struct.cells** %temp, align 8
  %next33 = getelementptr inbounds %struct.cells, %struct.cells* %31, i32 0, i32 2
  %32 = load %struct.cells*, %struct.cells** %next33, align 8
  store %struct.cells* %32, %struct.cells** %temp, align 8
  %33 = load i64, i64* %randv, align 8
  %shr = ashr i64 %33, 1
  store i64 %shr, i64* %randv, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %35 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %35, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond3

for.end36:                                        ; preds = %for.cond3
  %call37 = call i64 @lrand48() #5
  store i64 %call37, i64* %randv, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc80, %for.end36
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %rem, align 4
  %cmp39 = icmp slt i32 %36, %37
  br i1 %cmp39, label %for.body41, label %for.end82

for.body41:                                       ; preds = %for.cond38
  %38 = load i8*, i8** %structure.addr, align 8
  %39 = load i32, i32* %quot, align 4
  %mul42 = mul nsw i32 %39, 31
  %40 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %mul42, %40
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds i8, i8* %38, i64 %idxprom44
  %41 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %41 to i32
  %cmp47 = icmp eq i32 %conv46, 49
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %for.body41
  %42 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free50 = getelementptr inbounds %struct.cells, %struct.cells* %42, i32 0, i32 0
  %43 = load i32, i32* %f_free50, align 8
  %44 = load i32, i32* %savef_free, align 4
  %add51 = add nsw i32 %44, %43
  store i32 %add51, i32* %savef_free, align 4
  %45 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty52 = getelementptr inbounds %struct.cells, %struct.cells* %45, i32 0, i32 1
  %46 = load i32, i32* %faulty52, align 4
  %47 = load i32, i32* %savefaulty, align 4
  %add53 = add nsw i32 %47, %46
  store i32 %add53, i32* %savefaulty, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %for.body41
  %48 = load %struct.cells*, %struct.cells** %temp, align 8
  %next55 = getelementptr inbounds %struct.cells, %struct.cells* %48, i32 0, i32 2
  %49 = load %struct.cells*, %struct.cells** %next55, align 8
  %f_free56 = getelementptr inbounds %struct.cells, %struct.cells* %49, i32 0, i32 0
  %50 = load i32, i32* %f_free56, align 8
  %conv57 = sext i32 %50 to i64
  %51 = load i64, i64* %randv, align 8
  %add58 = add nsw i64 %conv57, %51
  %and59 = and i64 %add58, 1
  %conv60 = trunc i64 %and59 to i32
  %52 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free61 = getelementptr inbounds %struct.cells, %struct.cells* %52, i32 0, i32 0
  store i32 %conv60, i32* %f_free61, align 8
  %call62 = call i64 @lrand48() #5
  %rem63 = srem i64 %call62, 1000
  %conv64 = sitofp i64 %rem63 to double
  %div65 = fdiv double %conv64, 1.000000e+03
  store double %div65, double* %randprob, align 8
  %53 = load double, double* %prob.addr, align 8
  %54 = load double, double* %randprob, align 8
  %cmp66 = fcmp ogt double %53, %54
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end54
  %55 = load i64, i64* %randv, align 8
  %xor69 = xor i64 %55, 1
  store i64 %xor69, i64* %randv, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end54
  %56 = load %struct.cells*, %struct.cells** %temp, align 8
  %next71 = getelementptr inbounds %struct.cells, %struct.cells* %56, i32 0, i32 2
  %57 = load %struct.cells*, %struct.cells** %next71, align 8
  %faulty72 = getelementptr inbounds %struct.cells, %struct.cells* %57, i32 0, i32 1
  %58 = load i32, i32* %faulty72, align 4
  %conv73 = sext i32 %58 to i64
  %59 = load i64, i64* %randv, align 8
  %add74 = add nsw i64 %conv73, %59
  %and75 = and i64 %add74, 1
  %conv76 = trunc i64 %and75 to i32
  %60 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty77 = getelementptr inbounds %struct.cells, %struct.cells* %60, i32 0, i32 1
  store i32 %conv76, i32* %faulty77, align 4
  %61 = load %struct.cells*, %struct.cells** %temp, align 8
  %next78 = getelementptr inbounds %struct.cells, %struct.cells* %61, i32 0, i32 2
  %62 = load %struct.cells*, %struct.cells** %next78, align 8
  store %struct.cells* %62, %struct.cells** %temp, align 8
  %63 = load i64, i64* %randv, align 8
  %shr79 = ashr i64 %63, 1
  store i64 %shr79, i64* %randv, align 8
  br label %for.inc80

for.inc80:                                        ; preds = %if.end70
  %64 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %64, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond38

for.end82:                                        ; preds = %for.cond38
  %call83 = call i64 @lrand48() #5
  store i64 %call83, i64* %randv, align 8
  %65 = load i8*, i8** %structure.addr, align 8
  %66 = load i32, i32* @reg_len, align 4
  %sub84 = sub nsw i32 %66, 1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i8, i8* %65, i64 %idxprom85
  %67 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %67 to i32
  %cmp88 = icmp eq i32 %conv87, 49
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %for.end82
  %68 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free91 = getelementptr inbounds %struct.cells, %struct.cells* %68, i32 0, i32 0
  %69 = load i32, i32* %f_free91, align 8
  %70 = load i32, i32* %savef_free, align 4
  %add92 = add nsw i32 %70, %69
  store i32 %add92, i32* %savef_free, align 4
  %71 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty93 = getelementptr inbounds %struct.cells, %struct.cells* %71, i32 0, i32 1
  %72 = load i32, i32* %faulty93, align 4
  %73 = load i32, i32* %savefaulty, align 4
  %add94 = add nsw i32 %73, %72
  store i32 %add94, i32* %savefaulty, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %for.end82
  %74 = load i32, i32* %savef_free, align 4
  %conv96 = sext i32 %74 to i64
  %75 = load i64, i64* %randv, align 8
  %add97 = add nsw i64 %conv96, %75
  %and98 = and i64 %add97, 1
  %conv99 = trunc i64 %and98 to i32
  %76 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free100 = getelementptr inbounds %struct.cells, %struct.cells* %76, i32 0, i32 0
  store i32 %conv99, i32* %f_free100, align 8
  %call101 = call i64 @lrand48() #5
  %rem102 = srem i64 %call101, 10000
  %conv103 = sitofp i64 %rem102 to double
  %div104 = fdiv double %conv103, 1.000000e+04
  store double %div104, double* %randprob, align 8
  %77 = load double, double* %prob.addr, align 8
  %78 = load double, double* %randprob, align 8
  %cmp105 = fcmp ogt double %77, %78
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end95
  %79 = load i64, i64* %randv, align 8
  %xor108 = xor i64 %79, 1
  store i64 %xor108, i64* %randv, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end95
  %80 = load i32, i32* %savefaulty, align 4
  %conv110 = sext i32 %80 to i64
  %81 = load i64, i64* %randv, align 8
  %add111 = add nsw i64 %conv110, %81
  %and112 = and i64 %add111, 1
  %conv113 = trunc i64 %and112 to i32
  %82 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty114 = getelementptr inbounds %struct.cells, %struct.cells* %82, i32 0, i32 1
  store i32 %conv113, i32* %faulty114, align 4
  %83 = load %struct.cells*, %struct.cells** %present.addr, align 8
  store %struct.cells* %83, %struct.cells** %temp, align 8
  br label %for.inc115

for.inc115:                                       ; preds = %if.end109
  %84 = load i32, i32* %h, align 4
  %inc116 = add nsw i32 %84, 1
  store i32 %inc116, i32* %h, align 4
  br label %for.cond

for.end117:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc129, %for.end117
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* @reg_len, align 4
  %cmp119 = icmp slt i32 %85, %86
  br i1 %cmp119, label %for.body121, label %for.end131

for.body121:                                      ; preds = %for.cond118
  %87 = load %struct.cells*, %struct.cells** %temp, align 8
  %f_free122 = getelementptr inbounds %struct.cells, %struct.cells* %87, i32 0, i32 0
  %88 = load i32, i32* %f_free122, align 8
  %89 = load %struct.cells*, %struct.cells** %temp, align 8
  %faulty123 = getelementptr inbounds %struct.cells, %struct.cells* %89, i32 0, i32 1
  %90 = load i32, i32* %faulty123, align 4
  %cmp124 = icmp ne i32 %88, %90
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %for.body121
  store i32 1, i32* %different, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %for.body121
  %91 = load %struct.cells*, %struct.cells** %temp, align 8
  %next128 = getelementptr inbounds %struct.cells, %struct.cells* %91, i32 0, i32 2
  %92 = load %struct.cells*, %struct.cells** %next128, align 8
  store %struct.cells* %92, %struct.cells** %temp, align 8
  br label %for.inc129

for.inc129:                                       ; preds = %if.end127
  %93 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %93, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond118

for.end131:                                       ; preds = %for.cond118
  %94 = load i32, i32* %different, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i64 @lrand48() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define void @kill_list(%struct.cells* %present) #0 {
entry:
  %present.addr = alloca %struct.cells*, align 8
  %temp = alloca %struct.cells*, align 8
  store %struct.cells* %present, %struct.cells** %present.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %tobool = icmp ne %struct.cells* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %next = getelementptr inbounds %struct.cells, %struct.cells* %1, i32 0, i32 2
  %2 = load %struct.cells*, %struct.cells** %next, align 8
  store %struct.cells* %2, %struct.cells** %temp, align 8
  %3 = load %struct.cells*, %struct.cells** %present.addr, align 8
  %4 = bitcast %struct.cells* %3 to i8*
  call void @free(i8* %4) #5
  %5 = load %struct.cells*, %struct.cells** %temp, align 8
  store %struct.cells* %5, %struct.cells** %present.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
