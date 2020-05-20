; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_0/test_0.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.Point, align 4
  %pp = alloca %struct.Point*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.Point* %p, %struct.Point** %pp, align 8
  %0 = load %struct.Point*, %struct.Point** %pp, align 8
  %x = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 0
  store i32 1, i32* %x, align 4
  %1 = load %struct.Point*, %struct.Point** %pp, align 8
  %y = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  store i32 2, i32* %y, align 4
  %2 = load %struct.Point*, %struct.Point** %pp, align 8
  %y1 = getelementptr inbounds %struct.Point, %struct.Point* %2, i32 0, i32 1
  %3 = load i32, i32* %y1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %3)
  %4 = load %struct.Point*, %struct.Point** %pp, align 8
  %y2 = getelementptr inbounds %struct.Point, %struct.Point* %4, i32 0, i32 1
  %5 = load i32, i32* %y2, align 4
  ret i32 %5
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
