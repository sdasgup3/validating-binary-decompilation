; ModuleID = 'Shootout-lists/Shootout-lists.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DLL = type { i32, %struct.DLL*, %struct.DLL* }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"[last entry points to list head]\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[val of next of tail is:  %d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"li2 and li1 are not equal\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"li2 should be empty now\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"li3 should be empty now\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"li1 size wrong, wanted %d, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"li1 and li2 are not equal\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @list_push_tail(%struct.DLL* %head, %struct.DLL* %item) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  %item.addr = alloca %struct.DLL*, align 8
  %tail = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  store %struct.DLL* %item, %struct.DLL** %item.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 2
  %1 = load %struct.DLL*, %struct.DLL** %prev, align 8
  store %struct.DLL* %1, %struct.DLL** %tail, align 8
  %2 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %3 = load %struct.DLL*, %struct.DLL** %tail, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 1
  store %struct.DLL* %2, %struct.DLL** %next, align 8
  %4 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %5 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %next1, align 8
  %6 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %7 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %prev2 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 2
  store %struct.DLL* %6, %struct.DLL** %prev2, align 8
  %8 = load %struct.DLL*, %struct.DLL** %tail, align 8
  %9 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %prev3 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i32 0, i32 2
  store %struct.DLL* %8, %struct.DLL** %prev3, align 8
  %10 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 0
  %11 = load i32, i32* %val, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %val, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.DLL* @list_pop_tail(%struct.DLL* %head) #0 {
entry:
  %retval = alloca %struct.DLL*, align 8
  %head.addr = alloca %struct.DLL*, align 8
  %prev = alloca %struct.DLL*, align 8
  %tail = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %call = call i32 @list_empty(%struct.DLL* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.DLL* null, %struct.DLL** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %prev1 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i32 0, i32 2
  %2 = load %struct.DLL*, %struct.DLL** %prev1, align 8
  store %struct.DLL* %2, %struct.DLL** %tail, align 8
  %3 = load %struct.DLL*, %struct.DLL** %tail, align 8
  %prev2 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 2
  %4 = load %struct.DLL*, %struct.DLL** %prev2, align 8
  store %struct.DLL* %4, %struct.DLL** %prev, align 8
  %5 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %6 = load %struct.DLL*, %struct.DLL** %prev, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i32 0, i32 1
  store %struct.DLL* %5, %struct.DLL** %next, align 8
  %7 = load %struct.DLL*, %struct.DLL** %prev, align 8
  %8 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %prev3 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i32 0, i32 2
  store %struct.DLL* %7, %struct.DLL** %prev3, align 8
  %9 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i32 0, i32 0
  %10 = load i32, i32* %val, align 8
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %val, align 8
  %11 = load %struct.DLL*, %struct.DLL** %tail, align 8
  store %struct.DLL* %11, %struct.DLL** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.DLL*, %struct.DLL** %retval, align 8
  ret %struct.DLL* %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_empty(%struct.DLL* %head) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %call = call i32 @list_length(%struct.DLL* %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @list_length(%struct.DLL* %head) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 0
  %1 = load i32, i32* %val, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define void @list_push_head(%struct.DLL* %head, %struct.DLL* %item) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  %item.addr = alloca %struct.DLL*, align 8
  %next = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  store %struct.DLL* %item, %struct.DLL** %item.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 1
  %1 = load %struct.DLL*, %struct.DLL** %next1, align 8
  store %struct.DLL* %1, %struct.DLL** %next, align 8
  %2 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %3 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %next2 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 1
  store %struct.DLL* %2, %struct.DLL** %next2, align 8
  %4 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %5 = load %struct.DLL*, %struct.DLL** %next, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 2
  store %struct.DLL* %4, %struct.DLL** %prev, align 8
  %6 = load %struct.DLL*, %struct.DLL** %next, align 8
  %7 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %next3 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 1
  store %struct.DLL* %6, %struct.DLL** %next3, align 8
  %8 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %9 = load %struct.DLL*, %struct.DLL** %item.addr, align 8
  %prev4 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i32 0, i32 2
  store %struct.DLL* %8, %struct.DLL** %prev4, align 8
  %10 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 0
  %11 = load i32, i32* %val, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %val, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.DLL* @list_pop_head(%struct.DLL* %head) #0 {
entry:
  %retval = alloca %struct.DLL*, align 8
  %head.addr = alloca %struct.DLL*, align 8
  %next = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %call = call i32 @list_empty(%struct.DLL* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.DLL* null, %struct.DLL** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %next1 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i32 0, i32 1
  %2 = load %struct.DLL*, %struct.DLL** %next1, align 8
  store %struct.DLL* %2, %struct.DLL** %next, align 8
  %3 = load %struct.DLL*, %struct.DLL** %next, align 8
  %next2 = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %next2, align 8
  %5 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %next3 = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %next3, align 8
  %6 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %7 = load %struct.DLL*, %struct.DLL** %next, align 8
  %next4 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 1
  %8 = load %struct.DLL*, %struct.DLL** %next4, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i32 0, i32 2
  store %struct.DLL* %6, %struct.DLL** %prev, align 8
  %9 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i32 0, i32 0
  %10 = load i32, i32* %val, align 8
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %val, align 8
  %11 = load %struct.DLL*, %struct.DLL** %next, align 8
  store %struct.DLL* %11, %struct.DLL** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.DLL*, %struct.DLL** %retval, align 8
  ret %struct.DLL* %12
}

; Function Attrs: noinline nounwind uwtable
define i32 @list_equal(%struct.DLL* %x, %struct.DLL* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.DLL*, align 8
  %y.addr = alloca %struct.DLL*, align 8
  %xp = alloca %struct.DLL*, align 8
  %yp = alloca %struct.DLL*, align 8
  store %struct.DLL* %x, %struct.DLL** %x.addr, align 8
  store %struct.DLL* %y, %struct.DLL** %y.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  store %struct.DLL* %0, %struct.DLL** %xp, align 8
  %1 = load %struct.DLL*, %struct.DLL** %y.addr, align 8
  store %struct.DLL* %1, %struct.DLL** %yp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i32 0, i32 1
  %3 = load %struct.DLL*, %struct.DLL** %next, align 8
  %4 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %cmp = icmp ne %struct.DLL* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 0
  %6 = load i32, i32* %val, align 8
  %7 = load %struct.DLL*, %struct.DLL** %yp, align 8
  %val1 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 0
  %8 = load i32, i32* %val1, align 8
  %cmp2 = icmp ne i32 %6, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next3 = getelementptr inbounds %struct.DLL, %struct.DLL* %9, i32 0, i32 1
  %10 = load %struct.DLL*, %struct.DLL** %next3, align 8
  store %struct.DLL* %10, %struct.DLL** %xp, align 8
  %11 = load %struct.DLL*, %struct.DLL** %yp, align 8
  %next4 = getelementptr inbounds %struct.DLL, %struct.DLL* %11, i32 0, i32 1
  %12 = load %struct.DLL*, %struct.DLL** %next4, align 8
  store %struct.DLL* %12, %struct.DLL** %yp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %val5 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 0
  %14 = load i32, i32* %val5, align 8
  %15 = load %struct.DLL*, %struct.DLL** %yp, align 8
  %val6 = getelementptr inbounds %struct.DLL, %struct.DLL* %15, i32 0, i32 0
  %16 = load i32, i32* %val6, align 8
  %cmp7 = icmp ne i32 %14, %16
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.end
  %17 = load %struct.DLL*, %struct.DLL** %yp, align 8
  %next10 = getelementptr inbounds %struct.DLL, %struct.DLL* %17, i32 0, i32 1
  %18 = load %struct.DLL*, %struct.DLL** %next10, align 8
  %19 = load %struct.DLL*, %struct.DLL** %y.addr, align 8
  %cmp11 = icmp eq %struct.DLL* %18, %19
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define void @list_print(i8* %msg, %struct.DLL* %x) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %x.addr = alloca %struct.DLL*, align 8
  %xp = alloca %struct.DLL*, align 8
  %first = alloca %struct.DLL*, align 8
  %i = alloca i32, align 4
  store i8* %msg, i8** %msg.addr, align 8
  store %struct.DLL* %x, %struct.DLL** %x.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 1
  %1 = load %struct.DLL*, %struct.DLL** %next, align 8
  store %struct.DLL* %1, %struct.DLL** %first, align 8
  store i32 0, i32* %i, align 4
  %2 = load i8*, i8** %msg.addr, align 8
  %call = call i32 @puts(i8* %2)
  %3 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %call1 = call i32 @list_length(%struct.DLL* %3)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 %call1)
  %4 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %next3 = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i32 0, i32 1
  %5 = load %struct.DLL*, %struct.DLL** %next3, align 8
  store %struct.DLL* %5, %struct.DLL** %xp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next4 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i32 0, i32 1
  %7 = load %struct.DLL*, %struct.DLL** %next4, align 8
  %8 = load %struct.DLL*, %struct.DLL** %first, align 8
  %cmp = icmp ne %struct.DLL* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i32 0, i32 0
  %11 = load i32, i32* %val, align 8
  %12 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next5 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i32 0, i32 1
  %13 = load %struct.DLL*, %struct.DLL** %next5, align 8
  %val6 = getelementptr inbounds %struct.DLL, %struct.DLL* %13, i32 0, i32 0
  %14 = load i32, i32* %val6, align 8
  %15 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %15, i32 0, i32 2
  %16 = load %struct.DLL*, %struct.DLL** %prev, align 8
  %val7 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i32 0, i32 0
  %17 = load i32, i32* %val7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 %inc, i32 %11, i32 %14, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next9 = getelementptr inbounds %struct.DLL, %struct.DLL* %18, i32 0, i32 1
  %19 = load %struct.DLL*, %struct.DLL** %next9, align 8
  store %struct.DLL* %19, %struct.DLL** %xp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  %20 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next11 = getelementptr inbounds %struct.DLL, %struct.DLL* %20, i32 0, i32 1
  %21 = load %struct.DLL*, %struct.DLL** %next11, align 8
  %val12 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i32 0, i32 0
  %22 = load i32, i32* %val12, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %22)
  ret void
}

declare i32 @puts(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define %struct.DLL* @list_new() #0 {
entry:
  %l = alloca %struct.DLL*, align 8
  %call = call noalias i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to %struct.DLL*
  store %struct.DLL* %0, %struct.DLL** %l, align 8
  %1 = load %struct.DLL*, %struct.DLL** %l, align 8
  %2 = load %struct.DLL*, %struct.DLL** %l, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i32 0, i32 1
  store %struct.DLL* %1, %struct.DLL** %next, align 8
  %3 = load %struct.DLL*, %struct.DLL** %l, align 8
  %4 = load %struct.DLL*, %struct.DLL** %l, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i32 0, i32 2
  store %struct.DLL* %3, %struct.DLL** %prev, align 8
  %5 = load %struct.DLL*, %struct.DLL** %l, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 0
  store i32 0, i32* %val, align 8
  %6 = load %struct.DLL*, %struct.DLL** %l, align 8
  ret %struct.DLL* %6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define %struct.DLL* @list_sequence(i32 %from, i32 %to) #0 {
entry:
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca %struct.DLL*, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %1 = load i32, i32* %to.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %from.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %to.addr, align 4
  store i32 %3, i32* %from.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %to.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %to.addr, align 4
  %6 = load i32, i32* %from.addr, align 4
  %sub = sub nsw i32 %5, %6
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %size, align 4
  %7 = load i32, i32* %size, align 4
  %add4 = add nsw i32 %7, 1
  %conv = sext i32 %add4 to i64
  %mul = mul i64 %conv, 24
  %call = call noalias i8* @malloc(i64 %mul) #5
  %8 = bitcast i8* %call to %struct.DLL*
  store %struct.DLL* %8, %struct.DLL** %l, align 8
  %9 = load i32, i32* %from.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %from.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %size, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.DLL*, %struct.DLL** %l, align 8
  %13 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %13, 1
  %idxprom = sext i32 %add7 to i64
  %arrayidx = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %idxprom
  %14 = load %struct.DLL*, %struct.DLL** %l, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.DLL, %struct.DLL* %14, i64 %idxprom8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx9, i32 0, i32 1
  store %struct.DLL* %arrayidx, %struct.DLL** %next, align 8
  %16 = load %struct.DLL*, %struct.DLL** %l, align 8
  %17 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %17, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i64 %idxprom11
  %18 = load %struct.DLL*, %struct.DLL** %l, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds %struct.DLL, %struct.DLL* %18, i64 %idxprom13
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx14, i32 0, i32 2
  store %struct.DLL* %arrayidx12, %struct.DLL** %prev, align 8
  %20 = load i32, i32* %from.addr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %from.addr, align 4
  %21 = load %struct.DLL*, %struct.DLL** %l, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.DLL, %struct.DLL* %21, i64 %idxprom15
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx16, i32 0, i32 0
  store i32 %20, i32* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %23, 1
  store i32 %inc17, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %24, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.DLL*, %struct.DLL** %l, align 8
  %26 = load i32, i32* %size, align 4
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds %struct.DLL, %struct.DLL* %25, i64 %idxprom19
  %27 = load %struct.DLL*, %struct.DLL** %l, align 8
  %arrayidx21 = getelementptr inbounds %struct.DLL, %struct.DLL* %27, i64 0
  %prev22 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx21, i32 0, i32 2
  store %struct.DLL* %arrayidx20, %struct.DLL** %prev22, align 8
  %28 = load %struct.DLL*, %struct.DLL** %l, align 8
  %arrayidx23 = getelementptr inbounds %struct.DLL, %struct.DLL* %28, i64 0
  %29 = load %struct.DLL*, %struct.DLL** %l, align 8
  %30 = load i32, i32* %size, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds %struct.DLL, %struct.DLL* %29, i64 %idxprom24
  %next26 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx25, i32 0, i32 1
  store %struct.DLL* %arrayidx23, %struct.DLL** %next26, align 8
  %31 = load %struct.DLL*, %struct.DLL** %l, align 8
  %32 = load i32, i32* %size, align 4
  %sub27 = sub nsw i32 %32, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds %struct.DLL, %struct.DLL* %31, i64 %idxprom28
  %33 = load %struct.DLL*, %struct.DLL** %l, align 8
  %34 = load i32, i32* %size, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds %struct.DLL, %struct.DLL* %33, i64 %idxprom30
  %prev32 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx31, i32 0, i32 2
  store %struct.DLL* %arrayidx29, %struct.DLL** %prev32, align 8
  %35 = load i32, i32* %from.addr, align 4
  %36 = load %struct.DLL*, %struct.DLL** %l, align 8
  %37 = load i32, i32* %size, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i64 %idxprom33
  %val35 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx34, i32 0, i32 0
  store i32 %35, i32* %val35, align 8
  %38 = load i32, i32* %size, align 4
  %39 = load %struct.DLL*, %struct.DLL** %l, align 8
  %arrayidx36 = getelementptr inbounds %struct.DLL, %struct.DLL* %39, i64 0
  %val37 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx36, i32 0, i32 0
  store i32 %38, i32* %val37, align 8
  %40 = load %struct.DLL*, %struct.DLL** %l, align 8
  ret %struct.DLL* %40
}

; Function Attrs: noinline nounwind uwtable
define %struct.DLL* @list_copy(%struct.DLL* %x) #0 {
entry:
  %x.addr = alloca %struct.DLL*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %xp = alloca %struct.DLL*, align 8
  %l = alloca %struct.DLL*, align 8
  store %struct.DLL* %x, %struct.DLL** %x.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %call = call i32 @list_length(%struct.DLL* %0)
  store i32 %call, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 24
  %call1 = call noalias i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call1 to %struct.DLL*
  store %struct.DLL* %2, %struct.DLL** %l, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %j, align 4
  %3 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  store %struct.DLL* %3, %struct.DLL** %xp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.DLL*, %struct.DLL** %l, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i64 %idxprom
  %8 = load %struct.DLL*, %struct.DLL** %l, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 %idxprom3
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx4, i32 0, i32 1
  store %struct.DLL* %arrayidx, %struct.DLL** %next, align 8
  %10 = load %struct.DLL*, %struct.DLL** %l, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.DLL, %struct.DLL* %10, i64 %idxprom5
  %12 = load %struct.DLL*, %struct.DLL** %l, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %idxprom7
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx8, i32 0, i32 2
  store %struct.DLL* %arrayidx6, %struct.DLL** %prev, align 8
  %14 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %14, i32 0, i32 0
  %15 = load i32, i32* %val, align 8
  %16 = load %struct.DLL*, %struct.DLL** %l, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i64 %idxprom9
  %val11 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx10, i32 0, i32 0
  store i32 %15, i32* %val11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  %19 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %j, align 4
  %20 = load %struct.DLL*, %struct.DLL** %xp, align 8
  %next13 = getelementptr inbounds %struct.DLL, %struct.DLL* %20, i32 0, i32 1
  %21 = load %struct.DLL*, %struct.DLL** %next13, align 8
  store %struct.DLL* %21, %struct.DLL** %xp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.DLL*, %struct.DLL** %l, align 8
  %23 = load i32, i32* %size, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds %struct.DLL, %struct.DLL* %22, i64 %idxprom14
  %24 = load %struct.DLL*, %struct.DLL** %l, align 8
  %arrayidx16 = getelementptr inbounds %struct.DLL, %struct.DLL* %24, i64 0
  %prev17 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx16, i32 0, i32 2
  store %struct.DLL* %arrayidx15, %struct.DLL** %prev17, align 8
  %25 = load %struct.DLL*, %struct.DLL** %l, align 8
  %arrayidx18 = getelementptr inbounds %struct.DLL, %struct.DLL* %25, i64 0
  %26 = load %struct.DLL*, %struct.DLL** %l, align 8
  %27 = load i32, i32* %size, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds %struct.DLL, %struct.DLL* %26, i64 %idxprom19
  %next21 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx20, i32 0, i32 1
  store %struct.DLL* %arrayidx18, %struct.DLL** %next21, align 8
  %28 = load %struct.DLL*, %struct.DLL** %x.addr, align 8
  %call22 = call %struct.DLL* @list_last(%struct.DLL* %28)
  %val23 = getelementptr inbounds %struct.DLL, %struct.DLL* %call22, i32 0, i32 0
  %29 = load i32, i32* %val23, align 8
  %30 = load %struct.DLL*, %struct.DLL** %l, align 8
  %31 = load i32, i32* %size, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds %struct.DLL, %struct.DLL* %30, i64 %idxprom24
  %val26 = getelementptr inbounds %struct.DLL, %struct.DLL* %arrayidx25, i32 0, i32 0
  store i32 %29, i32* %val26, align 8
  %32 = load %struct.DLL*, %struct.DLL** %l, align 8
  ret %struct.DLL* %32
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.DLL* @list_last(%struct.DLL* %head) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 2
  %1 = load %struct.DLL*, %struct.DLL** %prev, align 8
  ret %struct.DLL* %1
}

; Function Attrs: noinline nounwind uwtable
define void @list_reverse(%struct.DLL* %head) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  %tmp = alloca %struct.DLL*, align 8
  %p = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  store %struct.DLL* %0, %struct.DLL** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.DLL*, %struct.DLL** %p, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i32 0, i32 1
  %2 = load %struct.DLL*, %struct.DLL** %next, align 8
  store %struct.DLL* %2, %struct.DLL** %tmp, align 8
  %3 = load %struct.DLL*, %struct.DLL** %p, align 8
  %prev = getelementptr inbounds %struct.DLL, %struct.DLL* %3, i32 0, i32 2
  %4 = load %struct.DLL*, %struct.DLL** %prev, align 8
  %5 = load %struct.DLL*, %struct.DLL** %p, align 8
  %next2 = getelementptr inbounds %struct.DLL, %struct.DLL* %5, i32 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %next2, align 8
  %6 = load %struct.DLL*, %struct.DLL** %tmp, align 8
  %7 = load %struct.DLL*, %struct.DLL** %p, align 8
  %prev3 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i32 0, i32 2
  store %struct.DLL* %6, %struct.DLL** %prev3, align 8
  %8 = load %struct.DLL*, %struct.DLL** %tmp, align 8
  store %struct.DLL* %8, %struct.DLL** %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load %struct.DLL*, %struct.DLL** %p, align 8
  %10 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %cmp = icmp ne %struct.DLL* %9, %10
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @test_lists() #0 {
entry:
  %len = alloca i32, align 4
  %li1 = alloca %struct.DLL*, align 8
  %li2 = alloca %struct.DLL*, align 8
  %li3 = alloca %struct.DLL*, align 8
  store i32 0, i32* %len, align 4
  %call = call %struct.DLL* @list_sequence(i32 1, i32 100)
  store %struct.DLL* %call, %struct.DLL** %li1, align 8
  %0 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call1 = call %struct.DLL* @list_copy(%struct.DLL* %0)
  store %struct.DLL* %call1, %struct.DLL** %li2, align 8
  %call2 = call %struct.DLL* @list_new()
  store %struct.DLL* %call2, %struct.DLL** %li3, align 8
  %1 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %2 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call3 = call i32 @list_equal(%struct.DLL* %1, %struct.DLL* %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call5 = call i32 @list_empty(%struct.DLL* %3)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.DLL*, %struct.DLL** %li3, align 8
  %5 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call7 = call %struct.DLL* @list_pop_head(%struct.DLL* %5)
  call void @list_push_tail(%struct.DLL* %4, %struct.DLL* %call7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call8 = call i32 @list_empty(%struct.DLL* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %while.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end12:                                         ; preds = %while.end
  br label %while.cond13

while.cond13:                                     ; preds = %while.body17, %if.end12
  %7 = load %struct.DLL*, %struct.DLL** %li3, align 8
  %call14 = call i32 @list_empty(%struct.DLL* %7)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %while.body17, label %while.end19

while.body17:                                     ; preds = %while.cond13
  %8 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %9 = load %struct.DLL*, %struct.DLL** %li3, align 8
  %call18 = call %struct.DLL* @list_pop_tail(%struct.DLL* %9)
  call void @list_push_tail(%struct.DLL* %8, %struct.DLL* %call18)
  br label %while.cond13

while.end19:                                      ; preds = %while.cond13
  %10 = load %struct.DLL*, %struct.DLL** %li3, align 8
  %call20 = call i32 @list_empty(%struct.DLL* %10)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %while.end19
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end24:                                         ; preds = %while.end19
  %11 = load %struct.DLL*, %struct.DLL** %li1, align 8
  call void @list_reverse(%struct.DLL* %11)
  %12 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call25 = call %struct.DLL* @list_first(%struct.DLL* %12)
  %val = getelementptr inbounds %struct.DLL, %struct.DLL* %call25, i32 0, i32 0
  %13 = load i32, i32* %val, align 8
  %cmp = icmp ne i32 %13, 100
  br i1 %cmp, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end24
  %14 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call27 = call %struct.DLL* @list_first(%struct.DLL* %14)
  %val28 = getelementptr inbounds %struct.DLL, %struct.DLL* %call27, i32 0, i32 0
  %15 = load i32, i32* %val28, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i32 100, i32 %15)
  call void @exit(i32 1) #6
  unreachable

if.end30:                                         ; preds = %if.end24
  %16 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call31 = call %struct.DLL* @list_last(%struct.DLL* %16)
  %val32 = getelementptr inbounds %struct.DLL, %struct.DLL* %call31, i32 0, i32 0
  %17 = load i32, i32* %val32, align 8
  %cmp33 = icmp ne i32 %17, 1
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  %18 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call35 = call %struct.DLL* @list_last(%struct.DLL* %18)
  %val36 = getelementptr inbounds %struct.DLL, %struct.DLL* %call35, i32 0, i32 0
  %19 = load i32, i32* %val36, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 100, i32 %19)
  call void @exit(i32 1) #6
  unreachable

if.end38:                                         ; preds = %if.end30
  %20 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call39 = call %struct.DLL* @list_first(%struct.DLL* %20)
  %val40 = getelementptr inbounds %struct.DLL, %struct.DLL* %call39, i32 0, i32 0
  %21 = load i32, i32* %val40, align 8
  %cmp41 = icmp ne i32 %21, 100
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end38
  %22 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call43 = call %struct.DLL* @list_first(%struct.DLL* %22)
  %val44 = getelementptr inbounds %struct.DLL, %struct.DLL* %call43, i32 0, i32 0
  %23 = load i32, i32* %val44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i32 100, i32 %23)
  call void @exit(i32 1) #6
  unreachable

if.end46:                                         ; preds = %if.end38
  %24 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call47 = call %struct.DLL* @list_last(%struct.DLL* %24)
  %val48 = getelementptr inbounds %struct.DLL, %struct.DLL* %call47, i32 0, i32 0
  %25 = load i32, i32* %val48, align 8
  %cmp49 = icmp ne i32 %25, 1
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end46
  %26 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call51 = call %struct.DLL* @list_last(%struct.DLL* %26)
  %val52 = getelementptr inbounds %struct.DLL, %struct.DLL* %call51, i32 0, i32 0
  %27 = load i32, i32* %val52, align 8
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 100, i32 %27)
  call void @exit(i32 1) #6
  unreachable

if.end54:                                         ; preds = %if.end46
  %28 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call55 = call i32 @list_length(%struct.DLL* %28)
  %cmp56 = icmp ne i32 %call55, 100
  br i1 %cmp56, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end54
  %29 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call58 = call i32 @list_length(%struct.DLL* %29)
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 100, i32 %call58)
  call void @exit(i32 1) #6
  unreachable

if.end60:                                         ; preds = %if.end54
  %30 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %31 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %call61 = call i32 @list_equal(%struct.DLL* %30, %struct.DLL* %31)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end60
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end65:                                         ; preds = %if.end60
  %32 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %call66 = call i32 @list_length(%struct.DLL* %32)
  store i32 %call66, i32* %len, align 4
  %33 = load %struct.DLL*, %struct.DLL** %li1, align 8
  %34 = bitcast %struct.DLL* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load %struct.DLL*, %struct.DLL** %li2, align 8
  %36 = bitcast %struct.DLL* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load %struct.DLL*, %struct.DLL** %li3, align 8
  %38 = bitcast %struct.DLL* %37 to i8*
  call void @free(i8* %38) #5
  %39 = load i32, i32* %len, align 4
  ret i32 %39
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal %struct.DLL* @list_first(%struct.DLL* %head) #0 {
entry:
  %head.addr = alloca %struct.DLL*, align 8
  store %struct.DLL* %head, %struct.DLL** %head.addr, align 8
  %0 = load %struct.DLL*, %struct.DLL** %head.addr, align 8
  %next = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i32 0, i32 1
  %1 = load %struct.DLL*, %struct.DLL** %next, align 8
  ret %struct.DLL* %1
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %result = alloca i32, align 4
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
  %call = call i32 @atoi(i8* %2) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 3000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i32 0, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load i32, i32* %n, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @test_lists()
  store i32 %call1, i32* %result, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %result, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %4)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
