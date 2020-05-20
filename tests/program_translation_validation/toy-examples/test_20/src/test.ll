; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_20/test_20.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 (i32, ...) bitcast (i32 (i32)* @switches to i32 (i32, ...)*)(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @switches(i32 %input) #0 {
entry:
  %input.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 %input, i32* %input.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32, i32* %input.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
    i32 6, label %sw.bb7
    i32 12, label %sw.bb9
    i32 13, label %sw.bb11
    i32 19, label %sw.bb13
    i32 255, label %sw.bb15
    i32 74633, label %sw.bb17
    i32 74634, label %sw.bb19
    i32 74635, label %sw.bb21
    i32 74636, label %sw.bb23
    i32 74637, label %sw.bb25
    i32 74639, label %sw.bb27
    i32 74640, label %sw.bb29
    i32 74641, label %sw.bb31
    i32 74642, label %sw.bb33
    i32 74643, label %sw.bb35
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %sum, align 4
  %add = add nsw i32 %1, 0
  store i32 %add, i32* %sum, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* %sum, align 4
  %add2 = add nsw i32 %2, 1
  store i32 %add2, i32* %sum, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %3 = load i32, i32* %sum, align 4
  %add4 = add nsw i32 %3, 2
  store i32 %add4, i32* %sum, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %4 = load i32, i32* %sum, align 4
  %add6 = add nsw i32 %4, 4
  store i32 %add6, i32* %sum, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %5 = load i32, i32* %sum, align 4
  %add8 = add nsw i32 %5, 6
  store i32 %add8, i32* %sum, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %6 = load i32, i32* %sum, align 4
  %add10 = add nsw i32 %6, 12
  store i32 %add10, i32* %sum, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %7 = load i32, i32* %sum, align 4
  %add12 = add nsw i32 %7, 13
  store i32 %add12, i32* %sum, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %8 = load i32, i32* %sum, align 4
  %add14 = add nsw i32 %8, 19
  store i32 %add14, i32* %sum, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %9 = load i32, i32* %sum, align 4
  %add16 = add nsw i32 %9, 255
  store i32 %add16, i32* %sum, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %10 = load i32, i32* %sum, align 4
  %add18 = add nsw i32 %10, 74633
  store i32 %add18, i32* %sum, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %11 = load i32, i32* %sum, align 4
  %add20 = add nsw i32 %11, 74634
  store i32 %add20, i32* %sum, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %12 = load i32, i32* %sum, align 4
  %add22 = add nsw i32 %12, 74635
  store i32 %add22, i32* %sum, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %13 = load i32, i32* %sum, align 4
  %add24 = add nsw i32 %13, 74636
  store i32 %add24, i32* %sum, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %14 = load i32, i32* %sum, align 4
  %add26 = add nsw i32 %14, 74637
  store i32 %add26, i32* %sum, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %15 = load i32, i32* %sum, align 4
  %add28 = add nsw i32 %15, 74639
  store i32 %add28, i32* %sum, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %16 = load i32, i32* %sum, align 4
  %add30 = add nsw i32 %16, 74640
  store i32 %add30, i32* %sum, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %17 = load i32, i32* %sum, align 4
  %add32 = add nsw i32 %17, 74641
  store i32 %add32, i32* %sum, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %18 = load i32, i32* %sum, align 4
  %add34 = add nsw i32 %18, 74642
  store i32 %add34, i32* %sum, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %19 = load i32, i32* %sum, align 4
  %add36 = add nsw i32 %19, 74643
  store i32 %add36, i32* %sum, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %20 = load i32, i32* %sum, align 4
  %add37 = add nsw i32 %20, 0
  store i32 %add37, i32* %sum, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %21 = load i32, i32* %sum, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
