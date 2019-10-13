; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_26_1/test_26_1.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, %struct.nested }
%struct.nested = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define { i64, i32 } @update(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, %struct.S* %b_s, %struct.S* %c_s) #0 {
entry:
  %retval = alloca %struct.S, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %b_s.addr = alloca %struct.S*, align 8
  %c_s.addr = alloca %struct.S*, align 8
  %differ = alloca %struct.S, align 4
  %tmp = alloca { i64, i32 }, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store %struct.S* %b_s, %struct.S** %b_s.addr, align 8
  store %struct.S* %c_s, %struct.S** %c_s.addr, align 8
  %0 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %x = getelementptr inbounds %struct.S, %struct.S* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %x1 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4
  %add = add nsw i32 %1, %3
  %x2 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 0
  store i32 %add, i32* %x2, align 4
  %4 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %y = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %6 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %y3 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %7 = load i32, i32* %y3, align 4
  %add4 = add nsw i32 %5, %7
  %y5 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 1
  store i32 %add4, i32* %y5, align 4
  %8 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %n = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 2
  %x6 = getelementptr inbounds %struct.nested, %struct.nested* %n, i32 0, i32 0
  %9 = load i32, i32* %x6, align 4
  %10 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %n7 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 2
  %x8 = getelementptr inbounds %struct.nested, %struct.nested* %n7, i32 0, i32 0
  %11 = load i32, i32* %x8, align 4
  %add9 = add nsw i32 %9, %11
  %n10 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 2
  %x11 = getelementptr inbounds %struct.nested, %struct.nested* %n10, i32 0, i32 0
  store i32 %add9, i32* %x11, align 4
  %12 = bitcast %struct.S* %retval to i8*
  %13 = bitcast %struct.S* %differ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 12, i32 4, i1 false)
  %14 = bitcast { i64, i32 }* %tmp to i8*
  %15 = bitcast %struct.S* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 12, i32 4, i1 false)
  %16 = load { i64, i32 }, { i64, i32 }* %tmp, align 8
  ret { i64, i32 } %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.S, align 4
  %t1 = alloca %struct.S*, align 8
  %ret = alloca %struct.S, align 4
  %tmp = alloca { i64, i32 }, align 8
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %x = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 0
  store i32 10, i32* %x, align 4
  %y = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 1
  store i32 10, i32* %y, align 4
  %n = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 2
  %x1 = getelementptr inbounds %struct.nested, %struct.nested* %n, i32 0, i32 0
  store i32 10, i32* %x1, align 4
  %call = call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.S*
  store %struct.S* %0, %struct.S** %t1, align 8
  %1 = load %struct.S*, %struct.S** %t1, align 8
  %x2 = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  store i32 5, i32* %x2, align 4
  %2 = load %struct.S*, %struct.S** %t1, align 8
  %y3 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  store i32 5, i32* %y3, align 4
  %3 = load %struct.S*, %struct.S** %t1, align 8
  %n4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  %x5 = getelementptr inbounds %struct.nested, %struct.nested* %n4, i32 0, i32 0
  store i32 5, i32* %x5, align 4
  %4 = load %struct.S*, %struct.S** %t1, align 8
  %call6 = call { i64, i32 } @update(i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, %struct.S* %t, %struct.S* %4)
  store { i64, i32 } %call6, { i64, i32 }* %tmp, align 8
  %5 = bitcast { i64, i32 }* %tmp to i8*
  %6 = bitcast %struct.S* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 12, i32 4, i1 false)
  %x8 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 0
  %7 = load i32, i32* %x8, align 4
  %y9 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 1
  %8 = load i32, i32* %y9, align 4
  %add = add nsw i32 %7, %8
  %n10 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 2
  %x11 = getelementptr inbounds %struct.nested, %struct.nested* %n10, i32 0, i32 0
  %9 = load i32, i32* %x11, align 4
  %add12 = add nsw i32 %add, %9
  store i32 %add12, i32* %z, align 4
  %10 = load i32, i32* %z, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %10)
  %11 = load i32, i32* %z, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
