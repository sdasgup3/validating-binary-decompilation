; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/chomp/chomp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._play = type { i32, i32*, %struct._list*, %struct._play* }
%struct._list = type { i32*, %struct._list* }

@ncol = common global i32 0, align 4
@nrow = common global i32 0, align 4
@game_tree = common global %struct._play* null, align 8
@wanted = common global %struct._list* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"For state :\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  value = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"We get, in order :\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Mode : 1 -> multiple first moves\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"       2 -> report game\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"       3 -> good positions\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" Selection : \00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Enter number of Columns       : \00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Enter Initial number of Rows : \00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enter Maximum number of Rows : \00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"The winning initial move for %d x %d CHOMP is (%d,%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Enter number of Columns : \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Enter number of Rows    : \00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"player %d plays at (%d,%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"player %d loses\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"ATTENTION : representation is as in a _data structure\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32* @copy_data(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %new = alloca i32*, align 8
  %counter = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  %0 = load i32, i32* @ncol, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %new, align 8
  %2 = load i32, i32* @ncol, align 4
  store i32 %2, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %counter, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %counter, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %new, align 8
  %8 = load i32, i32* %counter, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 %6, i32* %arrayidx2, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32*, i32** %new, align 8
  ret i32* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define i32 @next_data(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %counter = alloca i32, align 4
  %valid = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %valid, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %counter, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %valid, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* @nrow, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %counter, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  store i32 0, i32* %arrayidx3, align 4
  %10 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load i32*, i32** %data.addr, align 8
  %12 = load i32, i32* %counter, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, i32* %arrayidx5, align 4
  store i32 1, i32* %valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %valid, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define void @melt_data(i32* %data1, i32* %data2) #0 {
entry:
  %data1.addr = alloca i32*, align 8
  %data2.addr = alloca i32*, align 8
  %counter = alloca i32, align 4
  store i32* %data1, i32** %data1.addr, align 8
  store i32* %data2, i32** %data2.addr, align 8
  %0 = load i32, i32* @ncol, align 4
  store i32 %0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %counter, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %counter, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %data1.addr, align 8
  %3 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %data2.addr, align 8
  %6 = load i32, i32* %counter, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp sgt i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32*, i32** %data2.addr, align 8
  %9 = load i32, i32* %counter, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %11 = load i32*, i32** %data1.addr, align 8
  %12 = load i32, i32* %counter, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @equal_data(i32* %data1, i32* %data2) #0 {
entry:
  %data1.addr = alloca i32*, align 8
  %data2.addr = alloca i32*, align 8
  %counter = alloca i32, align 4
  store i32* %data1, i32** %data1.addr, align 8
  store i32* %data2, i32** %data2.addr, align 8
  %0 = load i32, i32* @ncol, align 4
  store i32 %0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %counter, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %counter, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32*, i32** %data1.addr, align 8
  %3 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %data2.addr, align 8
  %6 = load i32, i32* %counter, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp eq i32 %4, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %counter, align 4
  %cmp3 = icmp slt i32 %9, 0
  %conv = zext i1 %cmp3 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @valid_data(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %low = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 0, i32* %counter, align 4
  %0 = load i32, i32* @nrow, align 4
  store i32 %0, i32* %low, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %counter, align 4
  %2 = load i32, i32* @ncol, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %data.addr, align 8
  %4 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %low, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i32, i32* %counter, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  store i32 %9, i32* %low, align 4
  %10 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %counter, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i32, i32* %counter, align 4
  %12 = load i32, i32* @ncol, align 4
  %cmp4 = icmp eq i32 %11, %12
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define void @dump_list(%struct._list* %list) #0 {
entry:
  %list.addr = alloca %struct._list*, align 8
  store %struct._list* %list, %struct._list** %list.addr, align 8
  %0 = load %struct._list*, %struct._list** %list.addr, align 8
  %cmp = icmp ne %struct._list* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._list*, %struct._list** %list.addr, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 1
  %2 = load %struct._list*, %struct._list** %next, align 8
  call void @dump_list(%struct._list* %2)
  %3 = load %struct._list*, %struct._list** %list.addr, align 8
  %data = getelementptr inbounds %struct._list, %struct._list* %3, i32 0, i32 0
  %4 = load i32*, i32** %data, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  %6 = load %struct._list*, %struct._list** %list.addr, align 8
  %7 = bitcast %struct._list* %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @dump_play(%struct._play* %play) #0 {
entry:
  %play.addr = alloca %struct._play*, align 8
  store %struct._play* %play, %struct._play** %play.addr, align 8
  %0 = load %struct._play*, %struct._play** %play.addr, align 8
  %cmp = icmp ne %struct._play* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._play*, %struct._play** %play.addr, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %1, i32 0, i32 3
  %2 = load %struct._play*, %struct._play** %next, align 8
  call void @dump_play(%struct._play* %2)
  %3 = load %struct._play*, %struct._play** %play.addr, align 8
  %first = getelementptr inbounds %struct._play, %struct._play* %3, i32 0, i32 2
  %4 = load %struct._list*, %struct._list** %first, align 8
  call void @dump_list(%struct._list* %4)
  %5 = load %struct._play*, %struct._play** %play.addr, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %5, i32 0, i32 1
  %6 = load i32*, i32** %state, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7) #3
  %8 = load %struct._play*, %struct._play** %play.addr, align 8
  %9 = bitcast %struct._play* %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @get_value(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %search = alloca %struct._play*, align 8
  store i32* %data, i32** %data.addr, align 8
  %0 = load %struct._play*, %struct._play** @game_tree, align 8
  store %struct._play* %0, %struct._play** %search, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._play*, %struct._play** %search, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %1, i32 0, i32 1
  %2 = load i32*, i32** %state, align 8
  %3 = load i32*, i32** %data.addr, align 8
  %call = call i32 @equal_data(i32* %2, i32* %3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._play*, %struct._play** %search, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %4, i32 0, i32 3
  %5 = load %struct._play*, %struct._play** %next, align 8
  store %struct._play* %5, %struct._play** %search, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct._play*, %struct._play** %search, align 8
  %value = getelementptr inbounds %struct._play, %struct._play* %6, i32 0, i32 0
  %7 = load i32, i32* %value, align 8
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define void @show_data(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %counter = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %counter, align 4
  %1 = load i32, i32* @ncol, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %counter, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %counter, align 4
  %6 = load i32, i32* @ncol, align 4
  %cmp1 = icmp ne i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call2 = call i32 @putchar(i32 44)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @putchar(i32) #2

; Function Attrs: noinline nounwind uwtable
define void @show_move(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  store i32* %data, i32** %data.addr, align 8
  %call = call i32 @putchar(i32 40)
  %0 = load i32*, i32** %data.addr, align 8
  call void @show_data(i32* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @show_list(%struct._list* %list) #0 {
entry:
  %list.addr = alloca %struct._list*, align 8
  store %struct._list* %list, %struct._list** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._list*, %struct._list** %list.addr, align 8
  %cmp = icmp ne %struct._list* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._list*, %struct._list** %list.addr, align 8
  %data = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 0
  %2 = load i32*, i32** %data, align 8
  call void @show_move(i32* %2)
  %3 = load %struct._list*, %struct._list** %list.addr, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %3, i32 0, i32 1
  %4 = load %struct._list*, %struct._list** %next, align 8
  store %struct._list* %4, %struct._list** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @show_play(%struct._play* %play) #0 {
entry:
  %play.addr = alloca %struct._play*, align 8
  store %struct._play* %play, %struct._play** %play.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._play*, %struct._play** %play.addr, align 8
  %cmp = icmp ne %struct._play* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._play*, %struct._play** %play.addr, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %1, i32 0, i32 1
  %2 = load i32*, i32** %state, align 8
  call void @show_data(i32* %2)
  %3 = load %struct._play*, %struct._play** %play.addr, align 8
  %value = getelementptr inbounds %struct._play, %struct._play* %3, i32 0, i32 0
  %4 = load i32, i32* %value, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %4)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._play*, %struct._play** %play.addr, align 8
  %first = getelementptr inbounds %struct._play, %struct._play* %5, i32 0, i32 2
  %6 = load %struct._list*, %struct._list** %first, align 8
  call void @show_list(%struct._list* %6)
  %7 = load %struct._play*, %struct._play** %play.addr, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %7, i32 0, i32 3
  %8 = load %struct._play*, %struct._play** %next, align 8
  store %struct._play* %8, %struct._play** %play.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @in_wanted(i32* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i32*, align 8
  %current = alloca %struct._list*, align 8
  store i32* %data, i32** %data.addr, align 8
  %0 = load %struct._list*, %struct._list** @wanted, align 8
  store %struct._list* %0, %struct._list** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._list*, %struct._list** %current, align 8
  %cmp = icmp ne %struct._list* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._list*, %struct._list** %current, align 8
  %data1 = getelementptr inbounds %struct._list, %struct._list* %2, i32 0, i32 0
  %3 = load i32*, i32** %data1, align 8
  %4 = load i32*, i32** %data.addr, align 8
  %call = call i32 @equal_data(i32* %3, i32* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load %struct._list*, %struct._list** %current, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %5, i32 0, i32 1
  %6 = load %struct._list*, %struct._list** %next, align 8
  store %struct._list* %6, %struct._list** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load %struct._list*, %struct._list** %current, align 8
  %cmp2 = icmp eq %struct._list* %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define i32* @make_data(i32 %row, i32 %col) #0 {
entry:
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %new = alloca i32*, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* @ncol, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %new, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* %col.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @nrow, align 4
  %5 = load i32*, i32** %new, align 8
  %6 = load i32, i32* %count, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %8 = load i32, i32* %count, align 4
  %9 = load i32, i32* @ncol, align 4
  %cmp3 = icmp ne i32 %8, %9
  br i1 %cmp3, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond2
  %10 = load i32, i32* %row.addr, align 4
  %11 = load i32*, i32** %new, align 8
  %12 = load i32, i32* %count, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  store i32 %10, i32* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %13 = load i32, i32* %count, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %count, align 4
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  %14 = load i32*, i32** %new, align 8
  ret i32* %14
}

; Function Attrs: noinline nounwind uwtable
define %struct._list* @make_list(i32* %data, i32* %value, i32* %all) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %all.addr = alloca i32*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %temp = alloca i32*, align 8
  %head = alloca %struct._list*, align 8
  %current = alloca %struct._list*, align 8
  store i32* %data, i32** %data.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  store i32* %all, i32** %all.addr, align 8
  %0 = load i32*, i32** %value.addr, align 8
  store i32 1, i32* %0, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %1 = bitcast i8* %call to %struct._list*
  store %struct._list* %1, %struct._list** %head, align 8
  %2 = load %struct._list*, %struct._list** %head, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %2, i32 0, i32 1
  store %struct._list* null, %struct._list** %next, align 8
  %3 = load %struct._list*, %struct._list** %head, align 8
  store %struct._list* %3, %struct._list** %current, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %4 = load i32, i32* %row, align 4
  %5 = load i32, i32* @nrow, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %col, align 4
  %7 = load i32, i32* @ncol, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %row, align 4
  %9 = load i32, i32* %col, align 4
  %call4 = call i32* @make_data(i32 %8, i32 %9)
  store i32* %call4, i32** %temp, align 8
  %10 = load i32*, i32** %temp, align 8
  %11 = load i32*, i32** %data.addr, align 8
  call void @melt_data(i32* %10, i32* %11)
  %12 = load i32*, i32** %temp, align 8
  %13 = load i32*, i32** %data.addr, align 8
  %call5 = call i32 @equal_data(i32* %12, i32* %13)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body3
  %call6 = call noalias i8* @malloc(i64 16) #3
  %14 = bitcast i8* %call6 to %struct._list*
  %15 = load %struct._list*, %struct._list** %current, align 8
  %next7 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 1
  store %struct._list* %14, %struct._list** %next7, align 8
  %16 = load i32*, i32** %temp, align 8
  %call8 = call i32* @copy_data(i32* %16)
  %17 = load %struct._list*, %struct._list** %current, align 8
  %next9 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 1
  %18 = load %struct._list*, %struct._list** %next9, align 8
  %data10 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 0
  store i32* %call8, i32** %data10, align 8
  %19 = load %struct._list*, %struct._list** %current, align 8
  %next11 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 1
  %20 = load %struct._list*, %struct._list** %next11, align 8
  %next12 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1
  store %struct._list* null, %struct._list** %next12, align 8
  %21 = load %struct._list*, %struct._list** %current, align 8
  %next13 = getelementptr inbounds %struct._list, %struct._list* %21, i32 0, i32 1
  %22 = load %struct._list*, %struct._list** %next13, align 8
  store %struct._list* %22, %struct._list** %current, align 8
  %23 = load i32*, i32** %value.addr, align 8
  %24 = load i32, i32* %23, align 4
  %cmp14 = icmp eq i32 %24, 1
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %25 = load i32*, i32** %temp, align 8
  %call16 = call i32 @get_value(i32* %25)
  %26 = load i32*, i32** %value.addr, align 8
  store i32 %call16, i32* %26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %27 = load i32*, i32** %all.addr, align 8
  %28 = load i32, i32* %27, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %29 = load i32*, i32** %value.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp18 = icmp eq i32 %30, 0
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %land.lhs.true
  %31 = load i32, i32* @ncol, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %col, align 4
  %32 = load i32, i32* @nrow, align 4
  %sub20 = sub nsw i32 %32, 1
  store i32 %sub20, i32* %row, align 4
  %33 = load i32*, i32** %temp, align 8
  %call21 = call i32 @in_wanted(i32* %33)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  %34 = load i32*, i32** %all.addr, align 8
  store i32 2, i32* %34, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %if.end
  br label %if.end31

if.else:                                          ; preds = %for.body3
  %35 = load i32, i32* %col, align 4
  %cmp26 = icmp eq i32 %35, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.else
  %36 = load i32, i32* @nrow, align 4
  %sub28 = sub nsw i32 %36, 1
  store i32 %sub28, i32* %row, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.else
  %37 = load i32, i32* @ncol, align 4
  %sub30 = sub nsw i32 %37, 1
  store i32 %sub30, i32* %col, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end25
  %38 = load i32*, i32** %temp, align 8
  %39 = bitcast i32* %38 to i8*
  call void @free(i8* %39) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %40 = load i32, i32* %col, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %41 = load i32, i32* %row, align 4
  %inc33 = add nsw i32 %41, 1
  store i32 %inc33, i32* %row, align 4
  br label %for.cond

for.end34:                                        ; preds = %for.cond
  %42 = load %struct._list*, %struct._list** %head, align 8
  %next35 = getelementptr inbounds %struct._list, %struct._list* %42, i32 0, i32 1
  %43 = load %struct._list*, %struct._list** %next35, align 8
  store %struct._list* %43, %struct._list** %current, align 8
  %44 = load %struct._list*, %struct._list** %head, align 8
  %45 = bitcast %struct._list* %44 to i8*
  call void @free(i8* %45) #3
  %46 = load %struct._list*, %struct._list** %current, align 8
  %cmp36 = icmp ne %struct._list* %46, null
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %for.end34
  %47 = load i32*, i32** %value.addr, align 8
  %48 = load i32, i32* %47, align 4
  %sub38 = sub nsw i32 1, %48
  %49 = load i32*, i32** %value.addr, align 8
  store i32 %sub38, i32* %49, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.end34
  %50 = load %struct._list*, %struct._list** %current, align 8
  ret %struct._list* %50
}

; Function Attrs: noinline nounwind uwtable
define %struct._play* @make_play(i32 %all) #0 {
entry:
  %all.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %temp = alloca i32*, align 8
  %head = alloca %struct._play*, align 8
  %current = alloca %struct._play*, align 8
  store i32 %all, i32* %all.addr, align 4
  %call = call noalias i8* @malloc(i64 32) #3
  %0 = bitcast i8* %call to %struct._play*
  store %struct._play* %0, %struct._play** %head, align 8
  %1 = load %struct._play*, %struct._play** %head, align 8
  store %struct._play* %1, %struct._play** %current, align 8
  store %struct._play* null, %struct._play** @game_tree, align 8
  %call1 = call i32* @make_data(i32 0, i32 0)
  store i32* %call1, i32** %temp, align 8
  %2 = load i32*, i32** %temp, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %entry
  %4 = load i32*, i32** %temp, align 8
  %call2 = call i32 @next_data(i32* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32*, i32** %temp, align 8
  %call3 = call i32 @valid_data(i32* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end20

if.then:                                          ; preds = %while.body
  %call5 = call noalias i8* @malloc(i64 32) #3
  %6 = bitcast i8* %call5 to %struct._play*
  %7 = load %struct._play*, %struct._play** %current, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %7, i32 0, i32 3
  store %struct._play* %6, %struct._play** %next, align 8
  %8 = load %struct._play*, %struct._play** @game_tree, align 8
  %cmp = icmp eq %struct._play* %8, null
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct._play*, %struct._play** %current, align 8
  %next7 = getelementptr inbounds %struct._play, %struct._play* %9, i32 0, i32 3
  %10 = load %struct._play*, %struct._play** %next7, align 8
  store %struct._play* %10, %struct._play** @game_tree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load i32*, i32** %temp, align 8
  %call8 = call i32* @copy_data(i32* %11)
  %12 = load %struct._play*, %struct._play** %current, align 8
  %next9 = getelementptr inbounds %struct._play, %struct._play* %12, i32 0, i32 3
  %13 = load %struct._play*, %struct._play** %next9, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %13, i32 0, i32 1
  store i32* %call8, i32** %state, align 8
  %14 = load i32*, i32** %temp, align 8
  %call10 = call %struct._list* @make_list(i32* %14, i32* %val, i32* %all.addr)
  %15 = load %struct._play*, %struct._play** %current, align 8
  %next11 = getelementptr inbounds %struct._play, %struct._play* %15, i32 0, i32 3
  %16 = load %struct._play*, %struct._play** %next11, align 8
  %first = getelementptr inbounds %struct._play, %struct._play* %16, i32 0, i32 2
  store %struct._list* %call10, %struct._list** %first, align 8
  %17 = load i32, i32* %val, align 4
  %18 = load %struct._play*, %struct._play** %current, align 8
  %next12 = getelementptr inbounds %struct._play, %struct._play* %18, i32 0, i32 3
  %19 = load %struct._play*, %struct._play** %next12, align 8
  %value = getelementptr inbounds %struct._play, %struct._play* %19, i32 0, i32 0
  store i32 %17, i32* %value, align 8
  %20 = load %struct._play*, %struct._play** %current, align 8
  %next13 = getelementptr inbounds %struct._play, %struct._play* %20, i32 0, i32 3
  %21 = load %struct._play*, %struct._play** %next13, align 8
  %next14 = getelementptr inbounds %struct._play, %struct._play* %21, i32 0, i32 3
  store %struct._play* null, %struct._play** %next14, align 8
  %22 = load %struct._play*, %struct._play** %current, align 8
  %next15 = getelementptr inbounds %struct._play, %struct._play* %22, i32 0, i32 3
  %23 = load %struct._play*, %struct._play** %next15, align 8
  store %struct._play* %23, %struct._play** %current, align 8
  %24 = load i32, i32* %all.addr, align 4
  %cmp16 = icmp eq i32 %24, 2
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %25 = load i32*, i32** %temp, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26) #3
  %27 = load i32, i32* @nrow, align 4
  %28 = load i32, i32* @ncol, align 4
  %call18 = call i32* @make_data(i32 %27, i32 %28)
  store i32* %call18, i32** %temp, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._play*, %struct._play** %head, align 8
  %next21 = getelementptr inbounds %struct._play, %struct._play* %29, i32 0, i32 3
  %30 = load %struct._play*, %struct._play** %next21, align 8
  store %struct._play* %30, %struct._play** %current, align 8
  %31 = load %struct._play*, %struct._play** %head, align 8
  %32 = bitcast %struct._play* %31 to i8*
  call void @free(i8* %32) #3
  %33 = load %struct._play*, %struct._play** %current, align 8
  ret %struct._play* %33
}

; Function Attrs: noinline nounwind uwtable
define void @make_wanted(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %temp = alloca i32*, align 8
  %head = alloca %struct._list*, align 8
  %current = alloca %struct._list*, align 8
  store i32* %data, i32** %data.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct._list*
  store %struct._list* %0, %struct._list** %head, align 8
  %1 = load %struct._list*, %struct._list** %head, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 1
  store %struct._list* null, %struct._list** %next, align 8
  %2 = load %struct._list*, %struct._list** %head, align 8
  store %struct._list* %2, %struct._list** %current, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %3 = load i32, i32* %row, align 4
  %4 = load i32, i32* @nrow, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %col, align 4
  %6 = load i32, i32* @ncol, align 4
  %cmp2 = icmp ne i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, i32* %row, align 4
  %8 = load i32, i32* %col, align 4
  %call4 = call i32* @make_data(i32 %7, i32 %8)
  store i32* %call4, i32** %temp, align 8
  %9 = load i32*, i32** %temp, align 8
  %10 = load i32*, i32** %data.addr, align 8
  call void @melt_data(i32* %9, i32* %10)
  %11 = load i32*, i32** %temp, align 8
  %12 = load i32*, i32** %data.addr, align 8
  %call5 = call i32 @equal_data(i32* %11, i32* %12)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body3
  %call6 = call noalias i8* @malloc(i64 16) #3
  %13 = bitcast i8* %call6 to %struct._list*
  %14 = load %struct._list*, %struct._list** %current, align 8
  %next7 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1
  store %struct._list* %13, %struct._list** %next7, align 8
  %15 = load i32*, i32** %temp, align 8
  %call8 = call i32* @copy_data(i32* %15)
  %16 = load %struct._list*, %struct._list** %current, align 8
  %next9 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 1
  %17 = load %struct._list*, %struct._list** %next9, align 8
  %data10 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 0
  store i32* %call8, i32** %data10, align 8
  %18 = load %struct._list*, %struct._list** %current, align 8
  %next11 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 1
  %19 = load %struct._list*, %struct._list** %next11, align 8
  %next12 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 1
  store %struct._list* null, %struct._list** %next12, align 8
  %20 = load %struct._list*, %struct._list** %current, align 8
  %next13 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 1
  %21 = load %struct._list*, %struct._list** %next13, align 8
  store %struct._list* %21, %struct._list** %current, align 8
  br label %if.end17

if.else:                                          ; preds = %for.body3
  %22 = load i32, i32* %col, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %23 = load i32, i32* @nrow, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, i32* %row, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  %24 = load i32, i32* @ncol, align 4
  %sub16 = sub nsw i32 %24, 1
  store i32 %sub16, i32* %col, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %25 = load i32*, i32** %temp, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %27 = load i32, i32* %col, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %28 = load i32, i32* %row, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %row, align 4
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  %29 = load %struct._list*, %struct._list** %head, align 8
  %next21 = getelementptr inbounds %struct._list, %struct._list* %29, i32 0, i32 1
  %30 = load %struct._list*, %struct._list** %next21, align 8
  store %struct._list* %30, %struct._list** %current, align 8
  %31 = load %struct._list*, %struct._list** %head, align 8
  %32 = bitcast %struct._list* %31 to i8*
  call void @free(i8* %32) #3
  %33 = load %struct._list*, %struct._list** %current, align 8
  store %struct._list* %33, %struct._list** @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32* @get_good_move(%struct._list* %list) #0 {
entry:
  %retval = alloca i32*, align 8
  %list.addr = alloca %struct._list*, align 8
  store %struct._list* %list, %struct._list** %list.addr, align 8
  %0 = load %struct._list*, %struct._list** %list.addr, align 8
  %cmp = icmp eq %struct._list* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct._list*, %struct._list** %list.addr, align 8
  %next = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 1
  %2 = load %struct._list*, %struct._list** %next, align 8
  %cmp1 = icmp ne %struct._list* %2, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct._list*, %struct._list** %list.addr, align 8
  %data = getelementptr inbounds %struct._list, %struct._list* %3, i32 0, i32 0
  %4 = load i32*, i32** %data, align 8
  %call = call i32 @get_value(i32* %4)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct._list*, %struct._list** %list.addr, align 8
  %next2 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1
  %7 = load %struct._list*, %struct._list** %next2, align 8
  store %struct._list* %7, %struct._list** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load %struct._list*, %struct._list** %list.addr, align 8
  %data3 = getelementptr inbounds %struct._list, %struct._list* %8, i32 0, i32 0
  %9 = load i32*, i32** %data3, align 8
  %call4 = call i32* @copy_data(i32* %9)
  store i32* %call4, i32** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32*, i32** %retval, align 8
  ret i32* %10
}

; Function Attrs: noinline nounwind uwtable
define i32* @get_winning_move(%struct._play* %play) #0 {
entry:
  %play.addr = alloca %struct._play*, align 8
  %temp = alloca i32*, align 8
  store %struct._play* %play, %struct._play** %play.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._play*, %struct._play** %play.addr, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %0, i32 0, i32 3
  %1 = load %struct._play*, %struct._play** %next, align 8
  %cmp = icmp ne %struct._play* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._play*, %struct._play** %play.addr, align 8
  %next1 = getelementptr inbounds %struct._play, %struct._play* %2, i32 0, i32 3
  %3 = load %struct._play*, %struct._play** %next1, align 8
  store %struct._play* %3, %struct._play** %play.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct._play*, %struct._play** %play.addr, align 8
  %first = getelementptr inbounds %struct._play, %struct._play* %4, i32 0, i32 2
  %5 = load %struct._list*, %struct._list** %first, align 8
  %call = call i32* @get_good_move(%struct._list* %5)
  store i32* %call, i32** %temp, align 8
  %6 = load i32*, i32** %temp, align 8
  ret i32* %6
}

; Function Attrs: noinline nounwind uwtable
define %struct._list* @where(i32* %data, %struct._play* %play) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %play.addr = alloca %struct._play*, align 8
  store i32* %data, i32** %data.addr, align 8
  store %struct._play* %play, %struct._play** %play.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._play*, %struct._play** %play.addr, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %0, i32 0, i32 1
  %1 = load i32*, i32** %state, align 8
  %2 = load i32*, i32** %data.addr, align 8
  %call = call i32 @equal_data(i32* %1, i32* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._play*, %struct._play** %play.addr, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %3, i32 0, i32 3
  %4 = load %struct._play*, %struct._play** %next, align 8
  store %struct._play* %4, %struct._play** %play.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._play*, %struct._play** %play.addr, align 8
  %first = getelementptr inbounds %struct._play, %struct._play* %5, i32 0, i32 2
  %6 = load %struct._list*, %struct._list** %first, align 8
  ret %struct._list* %6
}

; Function Attrs: noinline nounwind uwtable
define void @get_real_move(i32* %data1, i32* %data2, i32* %row, i32* %col) #0 {
entry:
  %data1.addr = alloca i32*, align 8
  %data2.addr = alloca i32*, align 8
  %row.addr = alloca i32*, align 8
  %col.addr = alloca i32*, align 8
  store i32* %data1, i32** %data1.addr, align 8
  store i32* %data2, i32** %data2.addr, align 8
  store i32* %row, i32** %row.addr, align 8
  store i32* %col, i32** %col.addr, align 8
  %0 = load i32*, i32** %col.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %data1.addr, align 8
  %2 = load i32*, i32** %col.addr, align 8
  %3 = load i32, i32* %2, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %data2.addr, align 8
  %6 = load i32*, i32** %col.addr, align 8
  %7 = load i32, i32* %6, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp eq i32 %4, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32*, i32** %col.addr, align 8
  %10 = load i32, i32* %9, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %9, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32*, i32** %data1.addr, align 8
  %12 = load i32*, i32** %col.addr, align 8
  %13 = load i32, i32* %12, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4
  %15 = load i32*, i32** %row.addr, align 8
  store i32 %14, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %maxrow = alloca i32, align 4
  %player = alloca i32, align 4
  %win = alloca i32*, align 8
  %current = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %tree = alloca %struct._play*, align 8
  %look = alloca %struct._play*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store i32 2, i32* %row, align 4
  %0 = load i32, i32* %row, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* @ncol)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* @nrow)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %maxrow)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %1 = load i32, i32* @nrow, align 4
  %2 = load i32, i32* %maxrow, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @nrow, align 4
  %4 = load i32, i32* @ncol, align 4
  %call10 = call i32* @make_data(i32 %3, i32 %4)
  call void @make_wanted(i32* %call10)
  %call11 = call %struct._play* @make_play(i32 0)
  store %struct._play* %call11, %struct._play** %tree, align 8
  %5 = load %struct._play*, %struct._play** %tree, align 8
  %call12 = call i32* @get_winning_move(%struct._play* %5)
  store i32* %call12, i32** %win, align 8
  %6 = load i32*, i32** %win, align 8
  %7 = load i32, i32* @nrow, align 4
  %8 = load i32, i32* @ncol, align 4
  %call13 = call i32* @make_data(i32 %7, i32 %8)
  call void @get_real_move(i32* %6, i32* %call13, i32* %row, i32* %col)
  %9 = load i32, i32* @nrow, align 4
  %10 = load i32, i32* @ncol, align 4
  %11 = load i32, i32* %row, align 4
  %12 = load i32, i32* %col, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i32 %9, i32 %10, i32 %11, i32 %12)
  %13 = load %struct._play*, %struct._play** %tree, align 8
  call void @dump_play(%struct._play* %13)
  %14 = load %struct._list*, %struct._list** @wanted, align 8
  call void @dump_list(%struct._list* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* @nrow, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @nrow, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  store i32 7, i32* @ncol, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  store i32 8, i32* @nrow, align 4
  %call18 = call %struct._play* @make_play(i32 1)
  store %struct._play* %call18, %struct._play** %tree, align 8
  store i32 0, i32* %player, align 4
  %16 = load i32, i32* @nrow, align 4
  %17 = load i32, i32* @ncol, align 4
  %call19 = call i32* @make_data(i32 %16, i32 %17)
  store i32* %call19, i32** %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %sw.bb15
  %18 = load i32*, i32** %current, align 8
  %cmp20 = icmp ne i32* %18, null
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32*, i32** %current, align 8
  %20 = load %struct._play*, %struct._play** %tree, align 8
  %call21 = call %struct._list* @where(i32* %19, %struct._play* %20)
  %call22 = call i32* @get_good_move(%struct._list* %call21)
  store i32* %call22, i32** %temp, align 8
  %21 = load i32*, i32** %temp, align 8
  %cmp23 = icmp ne i32* %21, null
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %22 = load i32*, i32** %temp, align 8
  %23 = load i32*, i32** %current, align 8
  call void @get_real_move(i32* %22, i32* %23, i32* %row, i32* %col)
  %24 = load i32, i32* %player, align 4
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %col, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 %24, i32 %25, i32 %26)
  %27 = load i32, i32* %player, align 4
  %sub = sub nsw i32 1, %27
  store i32 %sub, i32* %player, align 4
  %28 = load i32*, i32** %current, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %30 = load i32*, i32** %temp, align 8
  store i32* %30, i32** %current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load %struct._play*, %struct._play** %tree, align 8
  call void @dump_play(%struct._play* %31)
  %32 = load i32, i32* %player, align 4
  %sub25 = sub nsw i32 1, %32
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i32 %sub25)
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  %call29 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* @ncol)
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  %call31 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* @nrow)
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  %call33 = call %struct._play* @make_play(i32 1)
  store %struct._play* %call33, %struct._play** %tree, align 8
  %33 = load %struct._play*, %struct._play** %tree, align 8
  store %struct._play* %33, %struct._play** %look, align 8
  br label %while.cond34

while.cond34:                                     ; preds = %if.end39, %sw.bb27
  %34 = load %struct._play*, %struct._play** %look, align 8
  %cmp35 = icmp ne %struct._play* %34, null
  br i1 %cmp35, label %while.body36, label %while.end40

while.body36:                                     ; preds = %while.cond34
  %35 = load %struct._play*, %struct._play** %look, align 8
  %value = getelementptr inbounds %struct._play, %struct._play* %35, i32 0, i32 0
  %36 = load i32, i32* %value, align 8
  %cmp37 = icmp eq i32 %36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %while.body36
  %37 = load %struct._play*, %struct._play** %look, align 8
  %state = getelementptr inbounds %struct._play, %struct._play* %37, i32 0, i32 1
  %38 = load i32*, i32** %state, align 8
  call void @show_move(i32* %38)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.body36
  %39 = load %struct._play*, %struct._play** %look, align 8
  %next = getelementptr inbounds %struct._play, %struct._play* %39, i32 0, i32 3
  %40 = load %struct._play*, %struct._play** %next, align 8
  store %struct._play* %40, %struct._play** %look, align 8
  br label %while.cond34

while.end40:                                      ; preds = %while.cond34
  %41 = load %struct._play*, %struct._play** %tree, align 8
  call void @dump_play(%struct._play* %41)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %while.end40, %while.end, %for.end
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
