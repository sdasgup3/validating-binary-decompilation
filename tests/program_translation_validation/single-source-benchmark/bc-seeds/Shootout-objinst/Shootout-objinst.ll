; ModuleID = 'Shootout-objinst/Shootout-objinst.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { %struct.Toggle, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define signext i8 @toggle_value(%struct.Toggle* %this) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  %0 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i32 0, i32 0
  %1 = load i8, i8* %state, align 8
  ret i8 %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.Toggle* @toggle_activate(%struct.Toggle* %this) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  %0 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i32 0, i32 0
  %1 = load i8, i8* %state, align 8
  %tobool = icmp ne i8 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %2 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state1 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %2, i32 0, i32 0
  store i8 %conv, i8* %state1, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  ret %struct.Toggle* %3
}

; Function Attrs: noinline nounwind uwtable
define %struct.Toggle* @init_Toggle(%struct.Toggle* %this, i8 signext %start_state) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  %start_state.addr = alloca i8, align 1
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  %0 = load i8, i8* %start_state.addr, align 1
  %1 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %1, i32 0, i32 0
  store i8 %0, i8* %state, align 8
  %2 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %2, i32 0, i32 1
  %value1 = bitcast {}** %value to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %4 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  ret %struct.Toggle* %4
}

; Function Attrs: noinline nounwind uwtable
define %struct.Toggle* @new_Toggle(i8 signext %start_state) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %this = alloca %struct.Toggle*, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  %call = call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.Toggle*
  store %struct.Toggle* %0, %struct.Toggle** %this, align 8
  %1 = load %struct.Toggle*, %struct.Toggle** %this, align 8
  %2 = load i8, i8* %start_state.addr, align 1
  %call1 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %1, i8 signext %2)
  ret %struct.Toggle* %call1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* %this) #0 {
entry:
  %this.addr = alloca %struct.NthToggle*, align 8
  store %struct.NthToggle* %this, %struct.NthToggle** %this.addr, align 8
  %0 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i32 0, i32 2
  %1 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %counter, align 4
  %2 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %2, i32 0, i32 1
  %3 = load i32, i32* %count_max, align 8
  %cmp = icmp sge i32 %inc, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %base = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %4, i32 0, i32 0
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %base, i32 0, i32 0
  %5 = load i8, i8* %state, align 8
  %tobool = icmp ne i8 %5, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %6 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %base1 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %6, i32 0, i32 0
  %state2 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %base1, i32 0, i32 0
  store i8 %conv, i8* %state2, align 8
  %7 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter3 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %7, i32 0, i32 2
  store i32 0, i32* %counter3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  ret %struct.NthToggle* %8
}

; Function Attrs: noinline nounwind uwtable
define %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %this, i32 %max_count) #0 {
entry:
  %this.addr = alloca %struct.NthToggle*, align 8
  %max_count.addr = alloca i32, align 4
  store %struct.NthToggle* %this, %struct.NthToggle** %this.addr, align 8
  store i32 %max_count, i32* %max_count.addr, align 4
  %0 = load i32, i32* %max_count.addr, align 4
  %1 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %1, i32 0, i32 1
  store i32 %0, i32* %count_max, align 8
  %2 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %2, i32 0, i32 2
  store i32 0, i32* %counter, align 4
  %3 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %base = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %3, i32 0, i32 0
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %base, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %4 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  ret %struct.NthToggle* %4
}

; Function Attrs: noinline nounwind uwtable
define %struct.NthToggle* @new_NthToggle(i8 signext %start_state, i32 %max_count) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %max_count.addr = alloca i32, align 4
  %this = alloca %struct.NthToggle*, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  store i32 %max_count, i32* %max_count.addr, align 4
  %call = call noalias i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.NthToggle*
  store %struct.NthToggle* %0, %struct.NthToggle** %this, align 8
  %1 = load %struct.NthToggle*, %struct.NthToggle** %this, align 8
  %2 = bitcast %struct.NthToggle* %1 to %struct.Toggle*
  %3 = load i8, i8* %start_state.addr, align 1
  %call1 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %2, i8 signext %3)
  %4 = bitcast %struct.Toggle* %call1 to %struct.NthToggle*
  store %struct.NthToggle* %4, %struct.NthToggle** %this, align 8
  %5 = load %struct.NthToggle*, %struct.NthToggle** %this, align 8
  %6 = load i32, i32* %max_count.addr, align 4
  %call2 = call %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %5, i32 %6)
  ret %struct.NthToggle* %call2
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %tog = alloca %struct.Toggle*, align 8
  %ntog = alloca %struct.NthToggle*, align 8
  %Msg = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 70000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %call1 = call %struct.Toggle* @new_Toggle(i8 signext 1)
  store %struct.Toggle* %call1, %struct.Toggle** %tog, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %4, i32 0, i32 2
  %5 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %6 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %call3 = call %struct.Toggle* %5(%struct.Toggle* %6)
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call3, i32 0, i32 1
  %value4 = bitcast {}** %value to i8 (%struct.Toggle*)**
  %7 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value4, align 8
  %8 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %call5 = call signext i8 %7(%struct.Toggle* %8)
  %conv = sext i8 %call5 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond6 = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)
  %call7 = call i32 @puts(i8* %cond6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %11 = bitcast %struct.Toggle* %10 to i8*
  call void @free(i8* %11) #4
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc13, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body11, label %for.end15

for.body11:                                       ; preds = %for.cond8
  %call12 = call %struct.Toggle* @new_Toggle(i8 signext 1)
  store %struct.Toggle* %call12, %struct.Toggle** %tog, align 8
  %14 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %15 = bitcast %struct.Toggle* %14 to i8*
  call void @free(i8* %15) #4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body11
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond8

for.end15:                                        ; preds = %for.cond8
  %call16 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  %call17 = call %struct.NthToggle* @new_NthToggle(i8 signext 1, i32 3)
  store %struct.NthToggle* %call17, %struct.NthToggle** %ntog, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc29, %for.end15
  %17 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %17, 8
  br i1 %cmp19, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond18
  %18 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %base = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %18, i32 0, i32 0
  %activate22 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %base, i32 0, i32 2
  %19 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate22, align 8
  %20 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %21 = bitcast %struct.NthToggle* %20 to %struct.Toggle*
  %call23 = call %struct.Toggle* %19(%struct.Toggle* %21)
  %value24 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call23, i32 0, i32 1
  %value25 = bitcast {}** %value24 to i8 (%struct.Toggle*)**
  %22 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value25, align 8
  %23 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %24 = bitcast %struct.NthToggle* %23 to %struct.Toggle*
  %call26 = call signext i8 %22(%struct.Toggle* %24)
  %tobool27 = icmp ne i8 %call26, 0
  br i1 %tobool27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %Msg, align 8
  br label %if.end

if.else:                                          ; preds = %for.body21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %Msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i8*, i8** %Msg, align 8
  %call28 = call i32 @puts(i8* %25)
  br label %for.inc29

for.inc29:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond18

for.end31:                                        ; preds = %for.cond18
  %27 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %28 = bitcast %struct.NthToggle* %27 to i8*
  call void @free(i8* %28) #4
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc37, %for.end31
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n, align 4
  %cmp33 = icmp slt i32 %29, %30
  br i1 %cmp33, label %for.body35, label %for.end39

for.body35:                                       ; preds = %for.cond32
  %call36 = call %struct.NthToggle* @new_NthToggle(i8 signext 1, i32 3)
  store %struct.NthToggle* %call36, %struct.NthToggle** %ntog, align 8
  %31 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %32 = bitcast %struct.NthToggle* %31 to i8*
  call void @free(i8* %32) #4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body35
  %33 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %33, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond32

for.end39:                                        ; preds = %for.cond32
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @puts(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
