; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_21/test_21.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"We have: 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %foo = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 -4294967296, i64* %foo, align 8
  %call = call i32 (i32, i64*, ...) bitcast (void (i32, i64*)* @shiftit to i32 (i32, i64*, ...)*)(i32 16, i64* %foo)
  %0 = load i64, i64* %foo, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define void @shiftit(i32 %amt, i64* %orig) #0 {
entry:
  %amt.addr = alloca i32, align 4
  %orig.addr = alloca i64*, align 8
  %newval = alloca i64, align 8
  store i32 %amt, i32* %amt.addr, align 4
  store i64* %orig, i64** %orig.addr, align 8
  %0 = load i64*, i64** %orig.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %newval, align 8
  %2 = load i32, i32* %amt.addr, align 4
  %3 = load i64, i64* %newval, align 8
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %3, %sh_prom
  store i64 %shr, i64* %newval, align 8
  %4 = load i64, i64* %newval, align 8
  %5 = load i64*, i64** %orig.addr, align 8
  store i64 %4, i64* %5, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
