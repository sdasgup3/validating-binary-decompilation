; ModuleID = 'richards_benchmark/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { %struct.task*, i32, i32, %struct.packet*, i32, %struct.task* (%struct.packet*)*, i64, i64 }
%struct.packet = type { %struct.packet*, i32, i32, i32, [4 x i8] }

@alphabet = global [28 x i8] c"0ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@tasktab = global [11 x %struct.task*] zeroinitializer, align 16
@tasklist = global %struct.task* null, align 8
@qpktcount = global i32 0, align 4
@holdcount = global i32 0, align 4
@tracing = global i32 1, align 4
@layout = global i32 0, align 4
@tcb = common global %struct.task* null, align 8
@taskid = common global i64 0, align 8
@v1 = common global i64 0, align 8
@v2 = common global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0ABad task id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Bench mark starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"finished\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"qpkt count = %d  holdcount = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"These results are \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"correct\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"incorrect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0Aend of run\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @createtask(i32 %id, i32 %pri, %struct.packet* %wkq, i32 %state, %struct.task* (%struct.packet*)* %fn, i64 %v1, i64 %v2) #0 {
entry:
  %id.addr = alloca i32, align 4
  %pri.addr = alloca i32, align 4
  %wkq.addr = alloca %struct.packet*, align 8
  %state.addr = alloca i32, align 4
  %fn.addr = alloca %struct.task* (%struct.packet*)*, align 8
  %v1.addr = alloca i64, align 8
  %v2.addr = alloca i64, align 8
  %t = alloca %struct.task*, align 8
  store i32 %id, i32* %id.addr, align 4
  store i32 %pri, i32* %pri.addr, align 4
  store %struct.packet* %wkq, %struct.packet** %wkq.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct.task* (%struct.packet*)* %fn, %struct.task* (%struct.packet*)** %fn.addr, align 8
  store i64 %v1, i64* %v1.addr, align 8
  store i64 %v2, i64* %v2.addr, align 8
  %call = call noalias i8* @malloc(i64 56) #3
  %0 = bitcast i8* %call to %struct.task*
  store %struct.task* %0, %struct.task** %t, align 8
  %1 = load %struct.task*, %struct.task** %t, align 8
  %2 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %idxprom
  store %struct.task* %1, %struct.task** %arrayidx, align 8
  %3 = load %struct.task*, %struct.task** @tasklist, align 8
  %4 = load %struct.task*, %struct.task** %t, align 8
  %t_link = getelementptr inbounds %struct.task, %struct.task* %4, i32 0, i32 0
  store %struct.task* %3, %struct.task** %t_link, align 8
  %5 = load i32, i32* %id.addr, align 4
  %6 = load %struct.task*, %struct.task** %t, align 8
  %t_id = getelementptr inbounds %struct.task, %struct.task* %6, i32 0, i32 1
  store i32 %5, i32* %t_id, align 8
  %7 = load i32, i32* %pri.addr, align 4
  %8 = load %struct.task*, %struct.task** %t, align 8
  %t_pri = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 2
  store i32 %7, i32* %t_pri, align 4
  %9 = load %struct.packet*, %struct.packet** %wkq.addr, align 8
  %10 = load %struct.task*, %struct.task** %t, align 8
  %t_wkq = getelementptr inbounds %struct.task, %struct.task* %10, i32 0, i32 3
  store %struct.packet* %9, %struct.packet** %t_wkq, align 8
  %11 = load i32, i32* %state.addr, align 4
  %12 = load %struct.task*, %struct.task** %t, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %12, i32 0, i32 4
  store i32 %11, i32* %t_state, align 8
  %13 = load %struct.task* (%struct.packet*)*, %struct.task* (%struct.packet*)** %fn.addr, align 8
  %14 = load %struct.task*, %struct.task** %t, align 8
  %t_fn = getelementptr inbounds %struct.task, %struct.task* %14, i32 0, i32 5
  store %struct.task* (%struct.packet*)* %13, %struct.task* (%struct.packet*)** %t_fn, align 8
  %15 = load i64, i64* %v1.addr, align 8
  %16 = load %struct.task*, %struct.task** %t, align 8
  %t_v1 = getelementptr inbounds %struct.task, %struct.task* %16, i32 0, i32 6
  store i64 %15, i64* %t_v1, align 8
  %17 = load i64, i64* %v2.addr, align 8
  %18 = load %struct.task*, %struct.task** %t, align 8
  %t_v2 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 7
  store i64 %17, i64* %t_v2, align 8
  %19 = load %struct.task*, %struct.task** %t, align 8
  store %struct.task* %19, %struct.task** @tasklist, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define %struct.packet* @pkt(%struct.packet* %link, i32 %id, i32 %kind) #0 {
entry:
  %link.addr = alloca %struct.packet*, align 8
  %id.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca %struct.packet*, align 8
  store %struct.packet* %link, %struct.packet** %link.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  store i32 %kind, i32* %kind.addr, align 4
  %call = call noalias i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.packet*
  store %struct.packet* %0, %struct.packet** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.packet*, %struct.packet** %p, align 8
  %p_a2 = getelementptr inbounds %struct.packet, %struct.packet* %2, i32 0, i32 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %p_a2, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.packet*, %struct.packet** %link.addr, align 8
  %6 = load %struct.packet*, %struct.packet** %p, align 8
  %p_link = getelementptr inbounds %struct.packet, %struct.packet* %6, i32 0, i32 0
  store %struct.packet* %5, %struct.packet** %p_link, align 8
  %7 = load i32, i32* %id.addr, align 4
  %8 = load %struct.packet*, %struct.packet** %p, align 8
  %p_id = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 1
  store i32 %7, i32* %p_id, align 8
  %9 = load i32, i32* %kind.addr, align 4
  %10 = load %struct.packet*, %struct.packet** %p, align 8
  %p_kind = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 2
  store i32 %9, i32* %p_kind, align 4
  %11 = load %struct.packet*, %struct.packet** %p, align 8
  %p_a1 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 3
  store i32 0, i32* %p_a1, align 8
  %12 = load %struct.packet*, %struct.packet** %p, align 8
  ret %struct.packet* %12
}

; Function Attrs: noinline nounwind uwtable
define void @trace(i8 signext %a) #0 {
entry:
  %a.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  %0 = load i32, i32* @layout, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @layout, align 4
  %cmp = icmp sle i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 50, i32* @layout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %1 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %conv)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define void @schedule() #0 {
entry:
  %pkt = alloca %struct.packet*, align 8
  %newtcb = alloca %struct.task*, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct.task*, %struct.task** @tcb, align 8
  %cmp = icmp ne %struct.task* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store %struct.packet* null, %struct.packet** %pkt, align 8
  %1 = load %struct.task*, %struct.task** @tcb, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %1, i32 0, i32 4
  %2 = load i32, i32* %t_state, align 8
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 2, label %sw.bb11
    i32 4, label %sw.bb11
    i32 5, label %sw.bb11
    i32 6, label %sw.bb11
    i32 7, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load %struct.task*, %struct.task** @tcb, align 8
  %t_wkq = getelementptr inbounds %struct.task, %struct.task* %3, i32 0, i32 3
  %4 = load %struct.packet*, %struct.packet** %t_wkq, align 8
  store %struct.packet* %4, %struct.packet** %pkt, align 8
  %5 = load %struct.packet*, %struct.packet** %pkt, align 8
  %p_link = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  %6 = load %struct.packet*, %struct.packet** %p_link, align 8
  %7 = load %struct.task*, %struct.task** @tcb, align 8
  %t_wkq1 = getelementptr inbounds %struct.task, %struct.task* %7, i32 0, i32 3
  store %struct.packet* %6, %struct.packet** %t_wkq1, align 8
  %8 = load %struct.task*, %struct.task** @tcb, align 8
  %t_wkq2 = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 3
  %9 = load %struct.packet*, %struct.packet** %t_wkq2, align 8
  %cmp3 = icmp eq %struct.packet* %9, null
  %cond = select i1 %cmp3, i32 0, i32 1
  %10 = load %struct.task*, %struct.task** @tcb, align 8
  %t_state4 = getelementptr inbounds %struct.task, %struct.task* %10, i32 0, i32 4
  store i32 %cond, i32* %t_state4, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %while.body, %while.body, %sw.bb
  %11 = load %struct.task*, %struct.task** @tcb, align 8
  %t_id = getelementptr inbounds %struct.task, %struct.task* %11, i32 0, i32 1
  %12 = load i32, i32* %t_id, align 8
  %conv = sext i32 %12 to i64
  store i64 %conv, i64* @taskid, align 8
  %13 = load %struct.task*, %struct.task** @tcb, align 8
  %t_v1 = getelementptr inbounds %struct.task, %struct.task* %13, i32 0, i32 6
  %14 = load i64, i64* %t_v1, align 8
  store i64 %14, i64* @v1, align 8
  %15 = load %struct.task*, %struct.task** @tcb, align 8
  %t_v2 = getelementptr inbounds %struct.task, %struct.task* %15, i32 0, i32 7
  %16 = load i64, i64* %t_v2, align 8
  store i64 %16, i64* @v2, align 8
  %17 = load i32, i32* @tracing, align 4
  %cmp6 = icmp eq i32 %17, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb5
  %18 = load i64, i64* @taskid, align 8
  %add = add nsw i64 %18, 48
  %conv8 = trunc i64 %add to i8
  call void @trace(i8 signext %conv8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5
  %19 = load %struct.task*, %struct.task** @tcb, align 8
  %t_fn = getelementptr inbounds %struct.task, %struct.task* %19, i32 0, i32 5
  %20 = load %struct.task* (%struct.packet*)*, %struct.task* (%struct.packet*)** %t_fn, align 8
  %21 = load %struct.packet*, %struct.packet** %pkt, align 8
  %call = call %struct.task* %20(%struct.packet* %21)
  store %struct.task* %call, %struct.task** %newtcb, align 8
  %22 = load i64, i64* @v1, align 8
  %23 = load %struct.task*, %struct.task** @tcb, align 8
  %t_v19 = getelementptr inbounds %struct.task, %struct.task* %23, i32 0, i32 6
  store i64 %22, i64* %t_v19, align 8
  %24 = load i64, i64* @v2, align 8
  %25 = load %struct.task*, %struct.task** @tcb, align 8
  %t_v210 = getelementptr inbounds %struct.task, %struct.task* %25, i32 0, i32 7
  store i64 %24, i64* %t_v210, align 8
  %26 = load %struct.task*, %struct.task** %newtcb, align 8
  store %struct.task* %26, %struct.task** @tcb, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %27 = load %struct.task*, %struct.task** @tcb, align 8
  %t_link = getelementptr inbounds %struct.task, %struct.task* %27, i32 0, i32 0
  %28 = load %struct.task*, %struct.task** %t_link, align 8
  store %struct.task* %28, %struct.task** @tcb, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %while.end

sw.epilog:                                        ; preds = %sw.bb11, %if.end
  br label %while.cond

while.end:                                        ; preds = %sw.default, %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @Wait() #0 {
entry:
  %0 = load %struct.task*, %struct.task** @tcb, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %0, i32 0, i32 4
  %1 = load i32, i32* %t_state, align 8
  %or = or i32 %1, 2
  store i32 %or, i32* %t_state, align 8
  %2 = load %struct.task*, %struct.task** @tcb, align 8
  ret %struct.task* %2
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @holdself() #0 {
entry:
  %0 = load i32, i32* @holdcount, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @holdcount, align 4
  %1 = load %struct.task*, %struct.task** @tcb, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %1, i32 0, i32 4
  %2 = load i32, i32* %t_state, align 8
  %or = or i32 %2, 4
  store i32 %or, i32* %t_state, align 8
  %3 = load %struct.task*, %struct.task** @tcb, align 8
  %t_link = getelementptr inbounds %struct.task, %struct.task* %3, i32 0, i32 0
  %4 = load %struct.task*, %struct.task** %t_link, align 8
  ret %struct.task* %4
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @findtcb(i32 %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %t = alloca %struct.task*, align 8
  store i32 %id, i32* %id.addr, align 4
  store %struct.task* null, %struct.task** %t, align 8
  %0 = load i32, i32* %id.addr, align 4
  %cmp = icmp sle i32 1, %0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp sle i64 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.task*], [11 x %struct.task*]* @tasktab, i64 0, i64 %idxprom
  %3 = load %struct.task*, %struct.task** %arrayidx, align 8
  store %struct.task* %3, %struct.task** %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load %struct.task*, %struct.task** %t, align 8
  %cmp3 = icmp eq %struct.task* %4, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %id.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load %struct.task*, %struct.task** %t, align 8
  ret %struct.task* %6
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @release(i32 %id) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %id.addr = alloca i32, align 4
  %t = alloca %struct.task*, align 8
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4
  %call = call %struct.task* @findtcb(i32 %0)
  store %struct.task* %call, %struct.task** %t, align 8
  %1 = load %struct.task*, %struct.task** %t, align 8
  %cmp = icmp eq %struct.task* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.task* null, %struct.task** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.task*, %struct.task** %t, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %2, i32 0, i32 4
  %3 = load i32, i32* %t_state, align 8
  %and = and i32 %3, 65531
  store i32 %and, i32* %t_state, align 8
  %4 = load %struct.task*, %struct.task** %t, align 8
  %t_pri = getelementptr inbounds %struct.task, %struct.task* %4, i32 0, i32 2
  %5 = load i32, i32* %t_pri, align 4
  %6 = load %struct.task*, %struct.task** @tcb, align 8
  %t_pri1 = getelementptr inbounds %struct.task, %struct.task* %6, i32 0, i32 2
  %7 = load i32, i32* %t_pri1, align 4
  %cmp2 = icmp sgt i32 %5, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load %struct.task*, %struct.task** %t, align 8
  store %struct.task* %8, %struct.task** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.task*, %struct.task** @tcb, align 8
  store %struct.task* %9, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %10
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @qpkt(%struct.packet* %pkt) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %pkt.addr = alloca %struct.packet*, align 8
  %t = alloca %struct.task*, align 8
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_id = getelementptr inbounds %struct.packet, %struct.packet* %0, i32 0, i32 1
  %1 = load i32, i32* %p_id, align 8
  %call = call %struct.task* @findtcb(i32 %1)
  store %struct.task* %call, %struct.task** %t, align 8
  %2 = load %struct.task*, %struct.task** %t, align 8
  %cmp = icmp eq %struct.task* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.task*, %struct.task** %t, align 8
  store %struct.task* %3, %struct.task** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @qpktcount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @qpktcount, align 4
  %5 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_link = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 0
  store %struct.packet* null, %struct.packet** %p_link, align 8
  %6 = load i64, i64* @taskid, align 8
  %conv = trunc i64 %6 to i32
  %7 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_id1 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 1
  store i32 %conv, i32* %p_id1, align 8
  %8 = load %struct.task*, %struct.task** %t, align 8
  %t_wkq = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 3
  %9 = load %struct.packet*, %struct.packet** %t_wkq, align 8
  %cmp2 = icmp eq %struct.packet* %9, null
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %11 = load %struct.task*, %struct.task** %t, align 8
  %t_wkq5 = getelementptr inbounds %struct.task, %struct.task* %11, i32 0, i32 3
  store %struct.packet* %10, %struct.packet** %t_wkq5, align 8
  %12 = load %struct.task*, %struct.task** %t, align 8
  %t_state = getelementptr inbounds %struct.task, %struct.task* %12, i32 0, i32 4
  %13 = load i32, i32* %t_state, align 8
  %or = or i32 %13, 1
  store i32 %or, i32* %t_state, align 8
  %14 = load %struct.task*, %struct.task** %t, align 8
  %t_pri = getelementptr inbounds %struct.task, %struct.task* %14, i32 0, i32 2
  %15 = load i32, i32* %t_pri, align 4
  %16 = load %struct.task*, %struct.task** @tcb, align 8
  %t_pri6 = getelementptr inbounds %struct.task, %struct.task* %16, i32 0, i32 2
  %17 = load i32, i32* %t_pri6, align 4
  %cmp7 = icmp sgt i32 %15, %17
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then4
  %18 = load %struct.task*, %struct.task** %t, align 8
  store %struct.task* %18, %struct.task** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.then4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %19 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %20 = load %struct.task*, %struct.task** %t, align 8
  %t_wkq11 = getelementptr inbounds %struct.task, %struct.task* %20, i32 0, i32 3
  %21 = bitcast %struct.packet** %t_wkq11 to %struct.packet*
  call void @append(%struct.packet* %19, %struct.packet* %21)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end10
  %22 = load %struct.task*, %struct.task** @tcb, align 8
  store %struct.task* %22, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then9, %if.then
  %23 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %23
}

; Function Attrs: noinline nounwind uwtable
define void @append(%struct.packet* %pkt, %struct.packet* %ptr) #0 {
entry:
  %pkt.addr = alloca %struct.packet*, align 8
  %ptr.addr = alloca %struct.packet*, align 8
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  store %struct.packet* %ptr, %struct.packet** %ptr.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_link = getelementptr inbounds %struct.packet, %struct.packet* %0, i32 0, i32 0
  store %struct.packet* null, %struct.packet** %p_link, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.packet*, %struct.packet** %ptr.addr, align 8
  %p_link1 = getelementptr inbounds %struct.packet, %struct.packet* %1, i32 0, i32 0
  %2 = load %struct.packet*, %struct.packet** %p_link1, align 8
  %tobool = icmp ne %struct.packet* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.packet*, %struct.packet** %ptr.addr, align 8
  %p_link2 = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 0
  %4 = load %struct.packet*, %struct.packet** %p_link2, align 8
  store %struct.packet* %4, %struct.packet** %ptr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %6 = load %struct.packet*, %struct.packet** %ptr.addr, align 8
  %p_link3 = getelementptr inbounds %struct.packet, %struct.packet* %6, i32 0, i32 0
  store %struct.packet* %5, %struct.packet** %p_link3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @idlefn(%struct.packet* %pkt) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %pkt.addr = alloca %struct.packet*, align 8
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  %0 = load i64, i64* @v2, align 8
  %dec = add nsw i64 %0, -1
  store i64 %dec, i64* @v2, align 8
  %1 = load i64, i64* @v2, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.task* @holdself()
  store %struct.task* %call, %struct.task** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* @v1, align 8
  %and = and i64 %2, 1
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* @v1, align 8
  %shr = ashr i64 %3, 1
  %and3 = and i64 %shr, 32767
  store i64 %and3, i64* @v1, align 8
  %call4 = call %struct.task* @release(i32 5)
  store %struct.task* %call4, %struct.task** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i64, i64* @v1, align 8
  %shr5 = ashr i64 %4, 1
  %and6 = and i64 %shr5, 32767
  %xor = xor i64 %and6, 53256
  store i64 %xor, i64* @v1, align 8
  %call7 = call %struct.task* @release(i32 6)
  store %struct.task* %call7, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then2, %if.then
  %5 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %5
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @workfn(%struct.packet* %pkt) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %pkt.addr = alloca %struct.packet*, align 8
  %i = alloca i32, align 4
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %cmp = icmp eq %struct.packet* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.task* @Wait()
  store %struct.task* %call, %struct.task** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* @v1, align 8
  %sub = sub nsw i64 7, %1
  store i64 %sub, i64* @v1, align 8
  %2 = load i64, i64* @v1, align 8
  %conv = trunc i64 %2 to i32
  %3 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_id = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 1
  store i32 %conv, i32* %p_id, align 8
  %4 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_a1 = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 3
  store i32 0, i32* %p_a1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp sle i32 %5, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* @v2, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* @v2, align 8
  %7 = load i64, i64* @v2, align 8
  %cmp3 = icmp sgt i64 %7, 26
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  store i64 1, i64* @v2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body
  %8 = load i64, i64* @v2, align 8
  %arrayidx = getelementptr inbounds [28 x i8], [28 x i8]* @alphabet, i64 0, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_a2 = getelementptr inbounds %struct.packet, %struct.packet* %10, i32 0, i32 4
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %p_a2, i64 0, i64 %idxprom
  store i8 %9, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %call8 = call %struct.task* @qpkt(%struct.packet* %13)
  store %struct.task* %call8, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %14
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @handlerfn(%struct.packet* %pkt) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %pkt.addr = alloca %struct.packet*, align 8
  %count = alloca i32, align 4
  %workpkt = alloca %struct.packet*, align 8
  %devpkt = alloca %struct.packet*, align 8
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %cmp = icmp ne %struct.packet* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %2 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_kind = getelementptr inbounds %struct.packet, %struct.packet* %2, i32 0, i32 2
  %3 = load i32, i32* %p_kind, align 4
  %cmp1 = icmp eq i32 %3, 1001
  %cond = select i1 %cmp1, i64* @v1, i64* @v2
  %4 = bitcast i64* %cond to %struct.packet*
  call void @append(%struct.packet* %1, %struct.packet* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* @v1, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %6 = load i64, i64* @v1, align 8
  %7 = inttoptr i64 %6 to %struct.packet*
  store %struct.packet* %7, %struct.packet** %workpkt, align 8
  %8 = load %struct.packet*, %struct.packet** %workpkt, align 8
  %p_a1 = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 3
  %9 = load i32, i32* %p_a1, align 8
  store i32 %9, i32* %count, align 4
  %10 = load i32, i32* %count, align 4
  %cmp4 = icmp sgt i32 %10, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %11 = load i64, i64* @v1, align 8
  %12 = inttoptr i64 %11 to %struct.packet*
  %p_link = getelementptr inbounds %struct.packet, %struct.packet* %12, i32 0, i32 0
  %13 = load %struct.packet*, %struct.packet** %p_link, align 8
  %14 = ptrtoint %struct.packet* %13 to i64
  store i64 %14, i64* @v1, align 8
  %15 = load %struct.packet*, %struct.packet** %workpkt, align 8
  %call = call %struct.task* @qpkt(%struct.packet* %15)
  store %struct.task* %call, %struct.task** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.then3
  %16 = load i64, i64* @v2, align 8
  %cmp7 = icmp ne i64 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %17 = load i64, i64* @v2, align 8
  %18 = inttoptr i64 %17 to %struct.packet*
  store %struct.packet* %18, %struct.packet** %devpkt, align 8
  %19 = load i64, i64* @v2, align 8
  %20 = inttoptr i64 %19 to %struct.packet*
  %p_link9 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 0
  %21 = load %struct.packet*, %struct.packet** %p_link9, align 8
  %22 = ptrtoint %struct.packet* %21 to i64
  store i64 %22, i64* @v2, align 8
  %23 = load %struct.packet*, %struct.packet** %workpkt, align 8
  %p_a2 = getelementptr inbounds %struct.packet, %struct.packet* %23, i32 0, i32 4
  %24 = load i32, i32* %count, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %p_a2, i64 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %26 = load %struct.packet*, %struct.packet** %devpkt, align 8
  %p_a110 = getelementptr inbounds %struct.packet, %struct.packet* %26, i32 0, i32 3
  store i32 %conv, i32* %p_a110, align 8
  %27 = load i32, i32* %count, align 4
  %add = add nsw i32 %27, 1
  %28 = load %struct.packet*, %struct.packet** %workpkt, align 8
  %p_a111 = getelementptr inbounds %struct.packet, %struct.packet* %28, i32 0, i32 3
  store i32 %add, i32* %p_a111, align 8
  %29 = load %struct.packet*, %struct.packet** %devpkt, align 8
  %call12 = call %struct.task* @qpkt(%struct.packet* %29)
  store %struct.task* %call12, %struct.task** %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %call15 = call %struct.task* @Wait()
  store %struct.task* %call15, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then8, %if.then5
  %30 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %30
}

; Function Attrs: noinline nounwind uwtable
define %struct.task* @devfn(%struct.packet* %pkt) #0 {
entry:
  %retval = alloca %struct.task*, align 8
  %pkt.addr = alloca %struct.packet*, align 8
  store %struct.packet* %pkt, %struct.packet** %pkt.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %cmp = icmp eq %struct.packet* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @v1, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call %struct.task* @Wait()
  store %struct.task* %call, %struct.task** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i64, i64* @v1, align 8
  %3 = inttoptr i64 %2 to %struct.packet*
  store %struct.packet* %3, %struct.packet** %pkt.addr, align 8
  store i64 0, i64* @v1, align 8
  %4 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %call3 = call %struct.task* @qpkt(%struct.packet* %4)
  store %struct.task* %call3, %struct.task** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %6 = ptrtoint %struct.packet* %5 to i64
  store i64 %6, i64* @v1, align 8
  %7 = load i32, i32* @tracing, align 4
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  %8 = load %struct.packet*, %struct.packet** %pkt.addr, align 8
  %p_a1 = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 3
  %9 = load i32, i32* %p_a1, align 8
  %conv = trunc i32 %9 to i8
  call void @trace(i8 signext %conv)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else
  %call7 = call %struct.task* @holdself()
  store %struct.task* %call7, %struct.task** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.end, %if.then2
  %10 = load %struct.task*, %struct.task** %retval, align 8
  ret %struct.task* %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %wkq = alloca %struct.packet*, align 8
  %retval1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store %struct.packet* null, %struct.packet** %wkq, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  %0 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 1, i32 0, %struct.packet* %0, i32 0, %struct.task* (%struct.packet*)* @idlefn, i64 1, i64 10000000)
  %call2 = call %struct.packet* @pkt(%struct.packet* null, i32 0, i32 1001)
  store %struct.packet* %call2, %struct.packet** %wkq, align 8
  %1 = load %struct.packet*, %struct.packet** %wkq, align 8
  %call3 = call %struct.packet* @pkt(%struct.packet* %1, i32 0, i32 1001)
  store %struct.packet* %call3, %struct.packet** %wkq, align 8
  %2 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 2, i32 1000, %struct.packet* %2, i32 3, %struct.task* (%struct.packet*)* @workfn, i64 3, i64 0)
  %call4 = call %struct.packet* @pkt(%struct.packet* null, i32 5, i32 1000)
  store %struct.packet* %call4, %struct.packet** %wkq, align 8
  %3 = load %struct.packet*, %struct.packet** %wkq, align 8
  %call5 = call %struct.packet* @pkt(%struct.packet* %3, i32 5, i32 1000)
  store %struct.packet* %call5, %struct.packet** %wkq, align 8
  %4 = load %struct.packet*, %struct.packet** %wkq, align 8
  %call6 = call %struct.packet* @pkt(%struct.packet* %4, i32 5, i32 1000)
  store %struct.packet* %call6, %struct.packet** %wkq, align 8
  %5 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 3, i32 2000, %struct.packet* %5, i32 3, %struct.task* (%struct.packet*)* @handlerfn, i64 0, i64 0)
  %call7 = call %struct.packet* @pkt(%struct.packet* null, i32 6, i32 1000)
  store %struct.packet* %call7, %struct.packet** %wkq, align 8
  %6 = load %struct.packet*, %struct.packet** %wkq, align 8
  %call8 = call %struct.packet* @pkt(%struct.packet* %6, i32 6, i32 1000)
  store %struct.packet* %call8, %struct.packet** %wkq, align 8
  %7 = load %struct.packet*, %struct.packet** %wkq, align 8
  %call9 = call %struct.packet* @pkt(%struct.packet* %7, i32 6, i32 1000)
  store %struct.packet* %call9, %struct.packet** %wkq, align 8
  %8 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 4, i32 3000, %struct.packet* %8, i32 3, %struct.task* (%struct.packet*)* @handlerfn, i64 0, i64 0)
  store %struct.packet* null, %struct.packet** %wkq, align 8
  %9 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 5, i32 4000, %struct.packet* %9, i32 2, %struct.task* (%struct.packet*)* @devfn, i64 0, i64 0)
  %10 = load %struct.packet*, %struct.packet** %wkq, align 8
  call void @createtask(i32 6, i32 5000, %struct.packet* %10, i32 2, %struct.task* (%struct.packet*)* @devfn, i64 0, i64 0)
  %11 = load %struct.task*, %struct.task** @tasklist, align 8
  store %struct.task* %11, %struct.task** @tcb, align 8
  store i32 0, i32* @holdcount, align 4
  store i32 0, i32* @qpktcount, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* @tracing, align 4
  store i32 0, i32* @layout, align 4
  call void @schedule()
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %12 = load i32, i32* @qpktcount, align 4
  %13 = load i32, i32* @holdcount, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i32 %12, i32 %13)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  %14 = load i32, i32* @qpktcount, align 4
  %cmp = icmp eq i32 %14, 23263894
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* @holdcount, align 4
  %cmp14 = icmp eq i32 %15, 9305557
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval1, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %16 = load i32, i32* %retval1, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
