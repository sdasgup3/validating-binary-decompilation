; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.arr = external hidden unnamed_addr constant [4 x i32], align 16

; Function Attrs: noinline nounwind uwtable
declare void @array_reverse(i32*, i32) #0

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [4 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @main.arr to i8*), i64 16, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arr, i32 0, i32 0
  call void @array_reverse(i32* %arraydecay, i32 4)
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 16
  ret i32 %1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
