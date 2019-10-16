; ModuleID = 'Shootout-hash/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_node = type { i8*, i32, %struct.ht_node* }
%struct.ht_ht = type { i32, %struct.ht_node**, i32, %struct.ht_node*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal global [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ht_node* @ht_node_create(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %newkey = alloca i8*, align 8
  %node = alloca %struct.ht_node*, align 8
  store i8* %key, i8** %key.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to %struct.ht_node*
  store %struct.ht_node* %0, %struct.ht_node** %node, align 8
  %cmp = icmp eq %struct.ht_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call noalias i8* @strdup(i8* %1) #5
  store i8* %call1, i8** %newkey, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %newkey, align 8
  %3 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %key5 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %3, i32 0, i32 0
  store i8* %2, i8** %key5, align 8
  %4 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %val = getelementptr inbounds %struct.ht_node, %struct.ht_node* %4, i32 0, i32 1
  store i32 0, i32* %val, align 8
  %5 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %next = getelementptr inbounds %struct.ht_node, %struct.ht_node* %5, i32 0, i32 2
  store %struct.ht_node* null, %struct.ht_node** %next, align 8
  %6 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  ret %struct.ht_node* %6
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ht_ht* @ht_create(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ht = alloca %struct.ht_ht*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  %call = call noalias i8* @malloc(i64 40) #5
  %0 = bitcast i8* %call to %struct.ht_ht*
  store %struct.ht_ht* %0, %struct.ht_ht** %ht, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp ult i64 %2, %conv
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [28 x i64], [28 x i64]* @ht_prime_list, i64 0, i64 %idxprom2
  %6 = load i64, i64* %arrayidx3, align 8
  %conv4 = trunc i64 %6 to i32
  %7 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %size5 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %7, i32 0, i32 0
  store i32 %conv4, i32* %size5, align 8
  %8 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %size6 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %8, i32 0, i32 0
  %9 = load i32, i32* %size6, align 8
  %conv7 = sext i32 %9 to i64
  %call8 = call noalias i8* @calloc(i64 %conv7, i64 8) #5
  %10 = bitcast i8* %call8 to %struct.ht_node**
  %11 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %11, i32 0, i32 1
  store %struct.ht_node** %10, %struct.ht_node*** %tbl, align 8
  %12 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %iter_index = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %12, i32 0, i32 2
  store i32 0, i32* %iter_index, align 8
  %13 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %iter_next = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %13, i32 0, i32 3
  store %struct.ht_node* null, %struct.ht_node** %iter_next, align 8
  %14 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %items = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %14, i32 0, i32 4
  store i32 0, i32* %items, align 8
  %15 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  ret %struct.ht_ht* %15
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @ht_destroy(%struct.ht_ht* %ht) #0 {
entry:
  %ht.addr = alloca %struct.ht_ht*, align 8
  %cur = alloca %struct.ht_node*, align 8
  %next = alloca %struct.ht_node*, align 8
  %i = alloca i32, align 4
  store %struct.ht_ht* %ht, %struct.ht_ht** %ht.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %size = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %1, i32 0, i32 0
  %2 = load i32, i32* %size, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %3, i32 0, i32 1
  %4 = load %struct.ht_node**, %struct.ht_node*** %tbl, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %4, i64 %idxprom
  %6 = load %struct.ht_node*, %struct.ht_node** %arrayidx, align 8
  store %struct.ht_node* %6, %struct.ht_node** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load %struct.ht_node*, %struct.ht_node** %next, align 8
  %tobool = icmp ne %struct.ht_node* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.ht_node*, %struct.ht_node** %next, align 8
  store %struct.ht_node* %8, %struct.ht_node** %cur, align 8
  %9 = load %struct.ht_node*, %struct.ht_node** %next, align 8
  %next1 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %9, i32 0, i32 2
  %10 = load %struct.ht_node*, %struct.ht_node** %next1, align 8
  store %struct.ht_node* %10, %struct.ht_node** %next, align 8
  %11 = load %struct.ht_node*, %struct.ht_node** %cur, align 8
  %key = getelementptr inbounds %struct.ht_node, %struct.ht_node* %11, i32 0, i32 0
  %12 = load i8*, i8** %key, align 8
  call void @free(i8* %12) #5
  %13 = load %struct.ht_node*, %struct.ht_node** %cur, align 8
  %14 = bitcast %struct.ht_node* %13 to i8*
  call void @free(i8* %14) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %tbl2 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %16, i32 0, i32 1
  %17 = load %struct.ht_node**, %struct.ht_node*** %tbl2, align 8
  %18 = bitcast %struct.ht_node** %17 to i8*
  call void @free(i8* %18) #5
  %19 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %20 = bitcast %struct.ht_ht* %19 to i8*
  call void @free(i8* %20) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %ht = alloca %struct.ht_ht*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %c, align 4
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
  %cond = phi i32 [ %call, %cond.true ], [ 3500000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %call1 = call %struct.ht_ht* @ht_create(i32 %3)
  store %struct.ht_ht* %call1, %struct.ht_ht** %ht, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %cmp2 = icmp sle i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %6) #5
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call5 = call %struct.ht_node* @ht_find_new(%struct.ht_ht* %8, i8* %arraydecay4)
  %val = getelementptr inbounds %struct.ht_node, %struct.ht_node* %call5, i32 0, i32 1
  store i32 %7, i32* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %n, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond6
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %12 = load i32, i32* %i, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %12) #5
  %13 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i32 0, i32 0
  %call12 = call %struct.ht_node* @ht_find(%struct.ht_ht* %13, i8* %arraydecay11)
  %tobool = icmp ne %struct.ht_node* %call12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %14 = load i32, i32* %c, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond6

for.end15:                                        ; preds = %for.cond6
  %16 = load %struct.ht_ht*, %struct.ht_ht** %ht, align 8
  call void @ht_destroy(%struct.ht_ht* %16)
  %17 = load i32, i32* %c, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %17)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.ht_node* @ht_find_new(%struct.ht_ht* %ht, i8* %key) #0 {
entry:
  %retval = alloca %struct.ht_node*, align 8
  %ht.addr = alloca %struct.ht_ht*, align 8
  %key.addr = alloca i8*, align 8
  %hash_code = alloca i32, align 4
  %prev = alloca %struct.ht_node*, align 8
  %node = alloca %struct.ht_node*, align 8
  store %struct.ht_ht* %ht, %struct.ht_ht** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @ht_hashcode(%struct.ht_ht* %0, i8* %1)
  store i32 %call, i32* %hash_code, align 4
  store %struct.ht_node* null, %struct.ht_node** %prev, align 8
  %2 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %2, i32 0, i32 1
  %3 = load %struct.ht_node**, %struct.ht_node*** %tbl, align 8
  %4 = load i32, i32* %hash_code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %3, i64 %idxprom
  %5 = load %struct.ht_node*, %struct.ht_node** %arrayidx, align 8
  store %struct.ht_node* %5, %struct.ht_node** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %tobool = icmp ne %struct.ht_node* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %key1 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* %9) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  store %struct.ht_node* %10, %struct.ht_node** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  store %struct.ht_node* %11, %struct.ht_node** %prev, align 8
  %12 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %next = getelementptr inbounds %struct.ht_node, %struct.ht_node* %12, i32 0, i32 2
  %13 = load %struct.ht_node*, %struct.ht_node** %next, align 8
  store %struct.ht_node* %13, %struct.ht_node** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %items = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %14, i32 0, i32 4
  %15 = load i32, i32* %items, align 8
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %items, align 8
  %16 = load %struct.ht_node*, %struct.ht_node** %prev, align 8
  %tobool3 = icmp ne %struct.ht_node* %16, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.end
  %17 = load i8*, i8** %key.addr, align 8
  %call5 = call %struct.ht_node* @ht_node_create(i8* %17)
  %18 = load %struct.ht_node*, %struct.ht_node** %prev, align 8
  %next6 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %18, i32 0, i32 2
  store %struct.ht_node* %call5, %struct.ht_node** %next6, align 8
  store %struct.ht_node* %call5, %struct.ht_node** %retval, align 8
  br label %return

if.else:                                          ; preds = %while.end
  %19 = load i8*, i8** %key.addr, align 8
  %call7 = call %struct.ht_node* @ht_node_create(i8* %19)
  %20 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %tbl8 = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %20, i32 0, i32 1
  %21 = load %struct.ht_node**, %struct.ht_node*** %tbl8, align 8
  %22 = load i32, i32* %hash_code, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %21, i64 %idxprom9
  store %struct.ht_node* %call7, %struct.ht_node** %arrayidx10, align 8
  store %struct.ht_node* %call7, %struct.ht_node** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then4, %if.then
  %23 = load %struct.ht_node*, %struct.ht_node** %retval, align 8
  ret %struct.ht_node* %23
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ht_node* @ht_find(%struct.ht_ht* %ht, i8* %key) #0 {
entry:
  %retval = alloca %struct.ht_node*, align 8
  %ht.addr = alloca %struct.ht_ht*, align 8
  %key.addr = alloca i8*, align 8
  %hash_code = alloca i32, align 4
  %node = alloca %struct.ht_node*, align 8
  store %struct.ht_ht* %ht, %struct.ht_ht** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @ht_hashcode(%struct.ht_ht* %0, i8* %1)
  store i32 %call, i32* %hash_code, align 4
  %2 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %tbl = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %2, i32 0, i32 1
  %3 = load %struct.ht_node**, %struct.ht_node*** %tbl, align 8
  %4 = load i32, i32* %hash_code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.ht_node*, %struct.ht_node** %3, i64 %idxprom
  %5 = load %struct.ht_node*, %struct.ht_node** %arrayidx, align 8
  store %struct.ht_node* %5, %struct.ht_node** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %tobool = icmp ne %struct.ht_node* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %key.addr, align 8
  %8 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %key1 = getelementptr inbounds %struct.ht_node, %struct.ht_node* %8, i32 0, i32 0
  %9 = load i8*, i8** %key1, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* %9) #7
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  store %struct.ht_node* %10, %struct.ht_node** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load %struct.ht_node*, %struct.ht_node** %node, align 8
  %next = getelementptr inbounds %struct.ht_node, %struct.ht_node* %11, i32 0, i32 2
  %12 = load %struct.ht_node*, %struct.ht_node** %next, align 8
  store %struct.ht_node* %12, %struct.ht_node** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.ht_node* null, %struct.ht_node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load %struct.ht_node*, %struct.ht_node** %retval, align 8
  ret %struct.ht_node* %13
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ht_hashcode(%struct.ht_ht* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct.ht_ht*, align 8
  %key.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  store %struct.ht_ht* %ht, %struct.ht_ht** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 0, i64* %val, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %key.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %val, align 8
  %mul = mul i64 5, %2
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i64
  %add = add i64 %mul, %conv
  store i64 %add, i64* %val, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %key.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %key.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %val, align 8
  %7 = load %struct.ht_ht*, %struct.ht_ht** %ht.addr, align 8
  %size = getelementptr inbounds %struct.ht_ht, %struct.ht_ht* %7, i32 0, i32 0
  %8 = load i32, i32* %size, align 8
  %conv1 = sext i32 %8 to i64
  %rem = urem i64 %6, %conv1
  %conv2 = trunc i64 %rem to i32
  ret i32 %conv2
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
