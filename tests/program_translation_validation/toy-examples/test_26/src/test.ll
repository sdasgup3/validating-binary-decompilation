; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_26/test_26.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, %struct.nested }
%struct.nested = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define { i64, i32 } @update(i64 %a_r.coerce0, i32 %a_r.coerce1, %struct.S* %b_r, %struct.S* %c_r, i32 %d, i32 %e, i32 %f, %struct.S* byval align 8 %a_s, %struct.S* %b_s, %struct.S* %c_s) #0 {
entry:
  %retval = alloca %struct.S, align 4
  %a_r = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %b_r.addr = alloca %struct.S*, align 8
  %c_r.addr = alloca %struct.S*, align 8
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %b_s.addr = alloca %struct.S*, align 8
  %c_s.addr = alloca %struct.S*, align 8
  %differ = alloca %struct.S, align 4
  %tmp = alloca { i64, i32 }, align 8
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
  %x = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %5 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %x1 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0
  %6 = load i32, i32* %x1, align 4
  %add = add nsw i32 %4, %6
  %7 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %x2 = getelementptr inbounds %struct.S, %struct.S* %7, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4
  %add3 = add nsw i32 %add, %8
  %x4 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 0
  %9 = load i32, i32* %x4, align 8
  %10 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %x5 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 0
  %11 = load i32, i32* %x5, align 4
  %add6 = add nsw i32 %9, %11
  %12 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %x7 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 0
  %13 = load i32, i32* %x7, align 4
  %add8 = add nsw i32 %add6, %13
  %add9 = add nsw i32 %add3, %add8
  %x10 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 0
  store i32 %add9, i32* %x10, align 4
  %y = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %y11 = getelementptr inbounds %struct.S, %struct.S* %15, i32 0, i32 1
  %16 = load i32, i32* %y11, align 4
  %add12 = add nsw i32 %14, %16
  %17 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %y13 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 1
  %18 = load i32, i32* %y13, align 4
  %add14 = add nsw i32 %add12, %18
  %y15 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 1
  %19 = load i32, i32* %y15, align 4
  %20 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %y16 = getelementptr inbounds %struct.S, %struct.S* %20, i32 0, i32 1
  %21 = load i32, i32* %y16, align 4
  %add17 = add nsw i32 %19, %21
  %22 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %y18 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 1
  %23 = load i32, i32* %y18, align 4
  %add19 = add nsw i32 %add17, %23
  %add20 = add nsw i32 %add14, %add19
  %y21 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 1
  store i32 %add20, i32* %y21, align 4
  %n = getelementptr inbounds %struct.S, %struct.S* %a_r, i32 0, i32 2
  %x22 = getelementptr inbounds %struct.nested, %struct.nested* %n, i32 0, i32 0
  %24 = load i32, i32* %x22, align 4
  %25 = load %struct.S*, %struct.S** %b_r.addr, align 8
  %n23 = getelementptr inbounds %struct.S, %struct.S* %25, i32 0, i32 2
  %x24 = getelementptr inbounds %struct.nested, %struct.nested* %n23, i32 0, i32 0
  %26 = load i32, i32* %x24, align 4
  %add25 = add nsw i32 %24, %26
  %27 = load %struct.S*, %struct.S** %c_r.addr, align 8
  %n26 = getelementptr inbounds %struct.S, %struct.S* %27, i32 0, i32 2
  %x27 = getelementptr inbounds %struct.nested, %struct.nested* %n26, i32 0, i32 0
  %28 = load i32, i32* %x27, align 4
  %add28 = add nsw i32 %add25, %28
  %n29 = getelementptr inbounds %struct.S, %struct.S* %a_s, i32 0, i32 2
  %x30 = getelementptr inbounds %struct.nested, %struct.nested* %n29, i32 0, i32 0
  %29 = load i32, i32* %x30, align 8
  %30 = load %struct.S*, %struct.S** %b_s.addr, align 8
  %n31 = getelementptr inbounds %struct.S, %struct.S* %30, i32 0, i32 2
  %x32 = getelementptr inbounds %struct.nested, %struct.nested* %n31, i32 0, i32 0
  %31 = load i32, i32* %x32, align 4
  %add33 = add nsw i32 %29, %31
  %32 = load %struct.S*, %struct.S** %c_s.addr, align 8
  %n34 = getelementptr inbounds %struct.S, %struct.S* %32, i32 0, i32 2
  %x35 = getelementptr inbounds %struct.nested, %struct.nested* %n34, i32 0, i32 0
  %33 = load i32, i32* %x35, align 4
  %add36 = add nsw i32 %add33, %33
  %add37 = add nsw i32 %add28, %add36
  %n38 = getelementptr inbounds %struct.S, %struct.S* %differ, i32 0, i32 2
  %x39 = getelementptr inbounds %struct.nested, %struct.nested* %n38, i32 0, i32 0
  store i32 %add37, i32* %x39, align 4
  %34 = bitcast %struct.S* %retval to i8*
  %35 = bitcast %struct.S* %differ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 12, i32 4, i1 false)
  %36 = bitcast { i64, i32 }* %tmp to i8*
  %37 = bitcast %struct.S* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 12, i32 4, i1 false)
  %38 = load { i64, i32 }, { i64, i32 }* %tmp, align 8
  ret { i64, i32 } %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.S, align 8
  %t1 = alloca %struct.S*, align 8
  %ret = alloca %struct.S, align 4
  %t.coerce = alloca { i64, i32 }, align 4
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
  %5 = load %struct.S*, %struct.S** %t1, align 8
  %6 = bitcast { i64, i32 }* %t.coerce to i8*
  %7 = bitcast %struct.S* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 4, i1 false)
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %t.coerce, i32 0, i32 0
  %9 = load i64, i64* %8, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %t.coerce, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %call6 = call { i64, i32 } @update(i64 %9, i32 %11, %struct.S* %t, %struct.S* %4, i32 1, i32 2, i32 3, %struct.S* byval align 8 %t, %struct.S* %t, %struct.S* %5)
  store { i64, i32 } %call6, { i64, i32 }* %tmp, align 8
  %12 = bitcast { i64, i32 }* %tmp to i8*
  %13 = bitcast %struct.S* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %12, i64 12, i32 4, i1 false)
  %x8 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 0
  %14 = load i32, i32* %x8, align 4
  %y9 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 1
  %15 = load i32, i32* %y9, align 4
  %add = add nsw i32 %14, %15
  %n10 = getelementptr inbounds %struct.S, %struct.S* %ret, i32 0, i32 2
  %x11 = getelementptr inbounds %struct.nested, %struct.nested* %n10, i32 0, i32 0
  %16 = load i32, i32* %x11, align 4
  %add12 = add nsw i32 %add, %16
  store i32 %add12, i32* %z, align 4
  %17 = load i32, i32* %z, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %17)
  %18 = load i32, i32* %z, align 4
  ret i32 %18
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
