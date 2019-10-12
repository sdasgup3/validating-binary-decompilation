; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/add-sub.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @add_sub(i32 %c, i32 %b) #0 {
entry:
  %c.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %a, align 4
  %2 = load i32, i32* %c.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %d, align 4
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %d, align 4
  %add1 = add nsw i32 %4, %5
  ret i32 %add1
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @add_sub(i32 10, i32 20)
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
