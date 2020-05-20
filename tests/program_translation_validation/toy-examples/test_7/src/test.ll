; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_7/test_7.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @check(i32 %stack_var_r, i32* %stack_arr_r, i32* %ptr_stack_var_r, i32* %ptr_dyn_arr_r, i32 %a_r, i32 %b_r, i32 %stack_var_s, i32* %stack_arr_s, i32* %ptr_stack_var_s, i32* %ptr_dyn_arr_s) #0 {
entry:
  %stack_var_r.addr = alloca i32, align 4
  %stack_arr_r.addr = alloca i32*, align 8
  %ptr_stack_var_r.addr = alloca i32*, align 8
  %ptr_dyn_arr_r.addr = alloca i32*, align 8
  %a_r.addr = alloca i32, align 4
  %b_r.addr = alloca i32, align 4
  %stack_var_s.addr = alloca i32, align 4
  %stack_arr_s.addr = alloca i32*, align 8
  %ptr_stack_var_s.addr = alloca i32*, align 8
  %ptr_dyn_arr_s.addr = alloca i32*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %stack_var_r, i32* %stack_var_r.addr, align 4
  store i32* %stack_arr_r, i32** %stack_arr_r.addr, align 8
  store i32* %ptr_stack_var_r, i32** %ptr_stack_var_r.addr, align 8
  store i32* %ptr_dyn_arr_r, i32** %ptr_dyn_arr_r.addr, align 8
  store i32 %a_r, i32* %a_r.addr, align 4
  store i32 %b_r, i32* %b_r.addr, align 4
  store i32 %stack_var_s, i32* %stack_var_s.addr, align 4
  store i32* %stack_arr_s, i32** %stack_arr_s.addr, align 8
  store i32* %ptr_stack_var_s, i32** %ptr_stack_var_s.addr, align 8
  store i32* %ptr_dyn_arr_s, i32** %ptr_dyn_arr_s.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %stack_var_r.addr, align 4
  %1 = load i32, i32* %sum, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %a_r.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %stack_arr_r.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %sum, align 4
  %add1 = add nsw i32 %7, %6
  store i32 %add1, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32*, i32** %ptr_stack_var_r.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %sum, align 4
  %add2 = add nsw i32 %11, %10
  store i32 %add2, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %b_r.addr, align 4
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %14 = load i32*, i32** %ptr_dyn_arr_r.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %17 = load i32, i32* %sum, align 4
  %add8 = add nsw i32 %17, %16
  store i32 %add8, i32* %sum, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %18 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond3

for.end11:                                        ; preds = %for.cond3
  %19 = load i32, i32* %stack_var_s.addr, align 4
  %20 = load i32, i32* %sum, align 4
  %add12 = add nsw i32 %20, %19
  store i32 %add12, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end11
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %a_r.addr, align 4
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %23 = load i32*, i32** %stack_arr_s.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  %26 = load i32, i32* %sum, align 4
  %add18 = add nsw i32 %26, %25
  store i32 %add18, i32* %sum, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %27 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond13

for.end21:                                        ; preds = %for.cond13
  %28 = load i32*, i32** %ptr_stack_var_s.addr, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %sum, align 4
  %add22 = add nsw i32 %30, %29
  store i32 %add22, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc29, %for.end21
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %b_r.addr, align 4
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %for.body25, label %for.end31

for.body25:                                       ; preds = %for.cond23
  %33 = load i32*, i32** %ptr_dyn_arr_s.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 %idxprom26
  %35 = load i32, i32* %arrayidx27, align 4
  %36 = load i32, i32* %sum, align 4
  %add28 = add nsw i32 %36, %35
  store i32 %add28, i32* %sum, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body25
  %37 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond23

for.end31:                                        ; preds = %for.cond23
  %38 = load i32, i32* %sum, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %stack_var = alloca i32, align 4
  %i = alloca i32, align 4
  %stack_arr = alloca [10 x i32], align 16
  %ptr_stack_var = alloca i32*, align 8
  %ptr_dyn_arr = alloca i32*, align 8
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %stack_var, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %stack_arr, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32* %stack_var, i32** %ptr_stack_var, align 8
  %call = call noalias i8* @malloc(i64 40) #3
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %ptr_dyn_arr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 10
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %6, 1
  %7 = load i32*, i32** %ptr_dyn_arr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %7, i64 %idxprom5
  store i32 %add4, i32* %arrayidx6, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %9 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond1

for.end9:                                         ; preds = %for.cond1
  %10 = load i32, i32* %stack_var, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %stack_arr, i32 0, i32 0
  %11 = load i32*, i32** %ptr_stack_var, align 8
  %12 = load i32*, i32** %ptr_dyn_arr, align 8
  %13 = load i32, i32* %stack_var, align 4
  %arraydecay10 = getelementptr inbounds [10 x i32], [10 x i32]* %stack_arr, i32 0, i32 0
  %14 = load i32*, i32** %ptr_stack_var, align 8
  %15 = load i32*, i32** %ptr_dyn_arr, align 8
  %call11 = call i32 @check(i32 %10, i32* %arraydecay, i32* %11, i32* %12, i32 10, i32 10, i32 %13, i32* %arraydecay10, i32* %14, i32* %15)
  store i32 %call11, i32* %z, align 4
  %16 = load i32, i32* %z, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %16)
  %17 = load i32, i32* %z, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
