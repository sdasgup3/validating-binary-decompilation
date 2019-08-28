; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, %struct.T }
%struct.T = type { i32 }

; Function Attrs: noinline nounwind uwtable
define void @func(%struct.S* %s) #0 {
entry:
  %s.addr = alloca %struct.S*, align 8
  store %struct.S* %s, %struct.S** %s.addr, align 8
  %0 = load %struct.S*, %struct.S** %s.addr, align 8
  %sx = getelementptr inbounds %struct.S, %struct.S* %0, i32 0, i32 0
  %1 = load i32, i32* %sx, align 4
  %2 = load %struct.S*, %struct.S** %s.addr, align 8
  %t = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  %tx = getelementptr inbounds %struct.T, %struct.T* %t, i32 0, i32 0
  %3 = load i32, i32* %tx, align 4
  %add = add nsw i32 %1, %3
  %4 = load %struct.S*, %struct.S** %s.addr, align 8
  %sx1 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 0
  store i32 %add, i32* %sx1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %s = alloca %struct.S, align 4
  %sx = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0
  store i32 10, i32* %sx, align 4
  %t = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1
  %tx = getelementptr inbounds %struct.T, %struct.T* %t, i32 0, i32 0
  store i32 20, i32* %tx, align 4
  call void @func(%struct.S* %s)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
