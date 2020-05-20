; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_22/test_22.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%0.16Lf -> %0.16Lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define x86_fp80 @DoDemoFpu1(x86_fp80 %k) #0 {
entry:
  %k.addr = alloca x86_fp80, align 16
  store x86_fp80 %k, x86_fp80* %k.addr, align 16
  %0 = load x86_fp80, x86_fp80* %k.addr, align 16
  %call = call i32 (x86_fp80, ...) bitcast (x86_fp80 (x86_fp80)* @timespi to i32 (x86_fp80, ...)*)(x86_fp80 %0)
  %conv = sitofp i32 %call to x86_fp80
  ret x86_fp80 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca x86_fp80, align 16
  %k = alloca x86_fp80, align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store x86_fp80 0xK40008000000000000000, x86_fp80* %n, align 16
  %0 = load x86_fp80, x86_fp80* %n, align 16
  %call = call x86_fp80 @DoDemoFpu1(x86_fp80 %0)
  store x86_fp80 %call, x86_fp80* %k, align 16
  %1 = load x86_fp80, x86_fp80* %n, align 16
  %2 = load x86_fp80, x86_fp80* %k, align 16
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), x86_fp80 %1, x86_fp80 %2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define x86_fp80 @timespi(x86_fp80 %k) #0 {
entry:
  %k.addr = alloca x86_fp80, align 16
  %pi = alloca x86_fp80, align 16
  store x86_fp80 %k, x86_fp80* %k.addr, align 16
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %pi, align 16
  %0 = load x86_fp80, x86_fp80* %k.addr, align 16
  %1 = load x86_fp80, x86_fp80* %pi, align 16
  %mul = fmul x86_fp80 %0, %1
  ret x86_fp80 %mul
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
