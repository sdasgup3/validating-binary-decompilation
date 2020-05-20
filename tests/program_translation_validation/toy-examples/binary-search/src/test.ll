; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/binary-search/binary-search.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.arr = private unnamed_addr constant [4 x i32] [i32 40, i32 30, i32 20, i32 10], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @binary_search(i32* %arr, i32 %len, i32 %target) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32 0, i32* %start, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load i32, i32* %start, align 4
  %2 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %start, align 4
  %4 = load i32, i32* %end, align 4
  %5 = load i32, i32* %start, align 4
  %sub1 = sub nsw i32 %4, %5
  %div = sdiv i32 %sub1, 2
  %add = add nsw i32 %3, %div
  store i32 %add, i32* %mid, align 4
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %target.addr, align 4
  %cmp2 = icmp eq i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %mid, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %target.addr, align 4
  %12 = load i32*, i32** %arr.addr, align 8
  %13 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %11, %14
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %15 = load i32, i32* %mid, align 4
  %add7 = add nsw i32 %15, 1
  store i32 %add7, i32* %start, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %mid, align 4
  %sub8 = sub nsw i32 %16, 1
  store i32 %sub8, i32* %end, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [4 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @main.arr to i8*), i64 16, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %arr, i32 0, i32 0
  %call = call i32 @binary_search(i32* %arraydecay, i32 4, i32 30)
  ret i32 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
