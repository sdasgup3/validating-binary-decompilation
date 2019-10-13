; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_27/test_27.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, %struct.nested }
%struct.nested = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.S* @update(i64 %a_r.coerce0, i32 %a_r.coerce1, %struct.S* %b_r, %struct.S* %c_r, i32 %d, i32 %e, i32 %f, %struct.S* byval align 8 %a_s, %struct.S* %b_s, %struct.S* %c_s) #0 {
entry:
  %a_r = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %b_r.addr = alloca %struct.S*, align 8
  %c_r.addr = alloca %struct.S*, align 8
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %b_s.addr = alloca %struct.S*, align 8
  %c_s.addr = alloca %struct.S*, align 8
  %differ = alloca %struct.S*, align 8
  %0 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %a_r.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %a_r.coerce1, i32* %1, align 4
  %2 = bitcast %struct.S* %a_r to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 4, i1 false)
  store %struct.S* %b_r, %struct.S** %b_r.addr, align 8
  store %struct.S* %c_r, %struct.S** %c_r.addr, align 8
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store %struct.S* %b_s, %struct.S** %b_s.addr, align 8
  store %struct.S* %c_s, %struct.S** %c_s.addr, align 8
  %call = call noalias i8* @malloc(i64 12) #4
  %4 = bitcast i8* %call to %struct.S*
  store %struct.S* %4, %struct.S** %differ, align 8
  %x = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %x1 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 0
  %7 = load i32, i32* %x1, align 4
  %add = add nsw i32 %5, %7
  %8 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %x2 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 0
  %9 = load i32, i32* %x2, align 4
  %add3 = add nsw i32 %add, %9
  %x4 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 0
  %10 = load i32, i32* %x4, align 8
  %11 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %x5 = getelementptr inbounds %struct.S, %struct.S* %11, i32 0, i32 0
  %12 = load i32, i32* %x5, align 4
  %add6 = add nsw i32 %10, %12
  %13 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %x7 = getelementptr inbounds %struct.S, %struct.S* %13, i32 0, i32 0
  %14 = load i32, i32* %x7, align 4
  %add8 = add nsw i32 %add6, %14
  %add9 = add nsw i32 %add3, %add8
  %15 = load %struct.S*, %struct.S** %differ, align 8
  %x10 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 0
  store i32 %add9, i32* %x10, align 4
  %y = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 1
  %16 = load i32, i32* %y, align 4
  %17 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %y11 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 1
  %18 = load i32, i32* %y11, align 4
  %add12 = add nsw i32 %16, %18
  %19 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %y13 = getelementptr inbounds %struct.S, %struct.S* %19, i32 0, i32 1
  %20 = load i32, i32* %y13, align 4
  %add14 = add nsw i32 %add12, %20
  %y15 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 1
  %21 = load i32, i32* %y15, align 4
  %22 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %y16 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 1
  %23 = load i32, i32* %y16, align 4
  %add17 = add nsw i32 %21, %23
  %24 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %y18 = getelementptr inbounds %struct.S, %struct.S* %24, i32 0, i32 1
  %25 = load i32, i32* %y18, align 4
  %add19 = add nsw i32 %add17, %25
  %add20 = add nsw i32 %add14, %add19
  %26 = load %struct.S*, %struct.S** %differ, align 8
  %y21 = getelementptr inbounds %struct.S, %struct.S* %26, i32 0, i32 1
  store i32 %add20, i32* %y21, align 4
  %n = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 2
  %x22 = getelementptr inbounds %struct.nested, %struct.nested* %n, i32 0, i32 0
  %27 = load i32, i32* %x22, align 4
  %28 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %n23 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 2
  %x24 = getelementptr inbounds %struct.nested, %struct.nested* %n23, i32 0, i32 0
  %29 = load i32, i32* %x24, align 4
  %add25 = add nsw i32 %27, %29
  %30 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %n26 = getelementptr inbounds %struct.S, %struct.S* %30, i32 0, i32 2
  %x27 = getelementptr inbounds %struct.nested, %struct.nested* %n26, i32 0, i32 0
  %31 = load i32, i32* %x27, align 4
  %add28 = add nsw i32 %add25, %31
  %n29 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 2
  %x30 = getelementptr inbounds %struct.nested, %struct.nested* %n29, i32 0, i32 0
  %32 = load i32, i32* %x30, align 8
  %33 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %n31 = getelementptr inbounds %struct.S, %struct.S* %33, i32 0, i32 2
  %x32 = getelementptr inbounds %struct.nested, %struct.nested* %n31, i32 0, i32 0
  %34 = load i32, i32* %x32, align 4
  %add33 = add nsw i32 %32, %34
  %35 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %n34 = getelementptr inbounds %struct.S, %struct.S* %35, i32 0, i32 2
  %x35 = getelementptr inbounds %struct.nested, %struct.nested* %n34, i32 0, i32 0
  %36 = load i32, i32* %x35, align 4
  %add36 = add nsw i32 %add33, %36
  %add37 = add nsw i32 %add28, %add36
  %37 = load %struct.S*, %struct.S** %differ, align 8
  %n38 = getelementptr inbounds %struct.S, %struct.S* %37, i32 0, i32 2
  %x39 = getelementptr inbounds %struct.nested, %struct.nested* %n38, i32 0, i32 0
  store i32 %add37, i32* %x39, align 4
  %38 = load %struct.S*, %struct.S** %differ, align 8
  ret %struct.S* %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.S, align 8
  %t1 = alloca %struct.S*, align 8
  %ret = alloca %struct.S*, align 8
  %t.coerce = alloca { i64, i32 }, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %x = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 0
  store i32 10, i32* %x, align 4
  %y = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 1
  store i32 10, i32* %y, align 4
  %n = getelementptr inbounds %struct.S, %struct.S* %t, i32 0, i32 2
  %x1 = getelementptr inbounds %struct.nested, %struct.nested* %n, i32 0, i32 0
  store i32 10, i32* %x1, align 4
  %call = call noalias i8* @malloc(i64 12) #4
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
  %5 = load %struct.S*, %struct.S** %t1, align 8
  %6 = bitcast { i64, i32 }* %t.coerce to i8*
  %7 = bitcast %struct.S* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 4, i1 false)
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %t.coerce, i32 0, i32 0
  %9 = load i64, i64* %8, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %t.coerce, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %call6 = call %struct.S* @update(i64 %9, i32 %11, %struct.S* %t, %struct.S* %4, i32 1, i32 2, i32 3, %struct.S* byval align 8 %t, %struct.S* %t, %struct.S* %5)
  store %struct.S* %call6, %struct.S** %ret, align 8
  %12 = load %struct.S*, %struct.S** %ret, align 8
  %x7 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %13 = load i32, i32* %x7, align 4
  %14 = load %struct.S*, %struct.S** %ret, align 8
  %y8 = getelementptr inbounds %struct.S, %struct.S* %14, i32 0, i32 1
  %15 = load i32, i32* %y8, align 4
  %add = add nsw i32 %13, %15
  %16 = load %struct.S*, %struct.S** %ret, align 8
  %n9 = getelementptr inbounds %struct.S, %struct.S* %16, i32 0, i32 2
  %x10 = getelementptr inbounds %struct.nested, %struct.nested* %n9, i32 0, i32 0
  %17 = load i32, i32* %x10, align 4
  %add11 = add nsw i32 %add, %17
  store i32 %add11, i32* %z, align 4
  %18 = load i32, i32* %z, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %18)
  %19 = load i32, i32* %z, align 4
  ret i32 %19
}

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
