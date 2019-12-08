; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/spec2006/bc-seeds/429.mcf/429.mcf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct.basket = type { %struct.arc*, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@net = common global %struct.network zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"not enough memory, exit(-1)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0AMCF SPEC CPU2006 version 1.10\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"read error, exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"PRIMAL NETWORK SIMPLEX: \00", align 1
@.str.1.17 = private unnamed_addr constant [49 x i8] c"artificial arc with nonzero flow, node %d (%ld)\0A\00", align 1
@.str.2.18 = private unnamed_addr constant [31 x i8] c"basis primal infeasible (%ld)\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3.19 = private unnamed_addr constant [23 x i8] c"DUAL NETWORK SIMPLEX: \00", align 1
@.str.4.20 = private unnamed_addr constant [23 x i8] c"basis dual infeasible\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.26 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str.3.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@perm = internal global [351 x %struct.basket*] zeroinitializer, align 16
@initialize = internal global i64 1, align 8
@basket = internal global [351 x %struct.basket] zeroinitializer, align 16
@nr_group = internal global i64 0, align 8
@group_pos = internal global i64 0, align 8
@basket_size = internal global i64 0, align 8
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.36 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.2.37 = private unnamed_addr constant [31 x i8] c"read_min(): not enough memory\0A\00", align 1
@.str.3.38 = private unnamed_addr constant [12 x i8] c"%ld %ld %ld\00", align 1

; Function Attrs: noinline nounwind uwtable
define i64 @resize_prob(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %off = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 9
  %1 = load i64, i64* %max_new_m, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 4
  %3 = load i64, i64* %max_m, align 8
  %add = add nsw i64 %3, %1
  store i64 %add, i64* %max_m, align 8
  %4 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m1 = getelementptr inbounds %struct.network, %struct.network* %4, i32 0, i32 9
  %5 = load i64, i64* %max_new_m1, align 8
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 8
  %7 = load i64, i64* %max_residual_new_m, align 8
  %add2 = add nsw i64 %7, %5
  store i64 %add2, i64* %max_residual_new_m, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 23
  %9 = load %struct.arc*, %struct.arc** %arcs, align 8
  %10 = bitcast %struct.arc* %9 to i8*
  %11 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m3 = getelementptr inbounds %struct.network, %struct.network* %11, i32 0, i32 4
  %12 = load i64, i64* %max_m3, align 8
  %mul = mul i64 %12, 64
  %call = call i8* @realloc(i8* %10, i64 %mul) #5
  %13 = bitcast i8* %call to %struct.arc*
  store %struct.arc* %13, %struct.arc** %arc, align 8
  %14 = load %struct.arc*, %struct.arc** %arc, align 8
  %tobool = icmp ne %struct.arc* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.network*, %struct.network** %net.addr, align 8
  %inputfile = getelementptr inbounds %struct.network, %struct.network* %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %inputfile, i32 0, i32 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %16)
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %17 = load %struct.arc*, %struct.arc** %arc, align 8
  %18 = ptrtoint %struct.arc* %17 to i64
  %19 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs6 = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 23
  %20 = load %struct.arc*, %struct.arc** %arcs6, align 8
  %21 = ptrtoint %struct.arc* %20 to i64
  %sub = sub i64 %18, %21
  store i64 %sub, i64* %off, align 8
  %22 = load %struct.arc*, %struct.arc** %arc, align 8
  %23 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs7 = getelementptr inbounds %struct.network, %struct.network* %23, i32 0, i32 23
  store %struct.arc* %22, %struct.arc** %arcs7, align 8
  %24 = load %struct.arc*, %struct.arc** %arc, align 8
  %25 = load %struct.network*, %struct.network** %net.addr, align 8
  %m = getelementptr inbounds %struct.network, %struct.network* %25, i32 0, i32 5
  %26 = load i64, i64* %m, align 8
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %24, i64 %26
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 24
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs, align 8
  %28 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %28, i32 0, i32 21
  %29 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %29, %struct.node** %node, align 8
  store %struct.node* %29, %struct.node** %root, align 8
  %30 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %30, i32 1
  store %struct.node* %incdec.ptr, %struct.node** %node, align 8
  %31 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %31, i32 0, i32 22
  %32 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %33 = bitcast %struct.node* %32 to i8*
  %34 = bitcast i8* %33 to %struct.node*
  store %struct.node* %34, %struct.node** %stop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load %struct.node*, %struct.node** %node, align 8
  %36 = load %struct.node*, %struct.node** %stop, align 8
  %cmp = icmp ult %struct.node* %35, %36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.node*, %struct.node** %node, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 3
  %38 = load %struct.node*, %struct.node** %pred, align 8
  %39 = load %struct.node*, %struct.node** %root, align 8
  %cmp8 = icmp ne %struct.node* %38, %39
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body
  %40 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 6
  %41 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  %42 = ptrtoint %struct.arc* %41 to i64
  %43 = load i64, i64* %off, align 8
  %add10 = add i64 %42, %43
  %44 = inttoptr i64 %add10 to %struct.arc*
  %45 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc11 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 6
  store %struct.arc* %44, %struct.arc** %basic_arc11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %46 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.node, %struct.node* %46, i32 1
  store %struct.node* %incdec.ptr13, %struct.node** %node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %47 = load i64, i64* %retval, align 8
  ret i64 %47
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare i32 @printf(i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define void @insert_new_arc(%struct.arc* %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  %new.addr = alloca %struct.arc*, align 8
  %newpos.addr = alloca i64, align 8
  %tail.addr = alloca %struct.node*, align 8
  %head.addr = alloca %struct.node*, align 8
  %cost.addr = alloca i64, align 8
  %red_cost.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct.arc* %new, %struct.arc** %new.addr, align 8
  store i64 %newpos, i64* %newpos.addr, align 8
  store %struct.node* %tail, %struct.node** %tail.addr, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store i64 %cost, i64* %cost.addr, align 8
  store i64 %red_cost, i64* %red_cost.addr, align 8
  %0 = load %struct.node*, %struct.node** %tail.addr, align 8
  %1 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %2 = load i64, i64* %newpos.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %1, i64 %2
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx, i32 0, i32 1
  store %struct.node* %0, %struct.node** %tail1, align 8
  %3 = load %struct.node*, %struct.node** %head.addr, align 8
  %4 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %5 = load i64, i64* %newpos.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.arc, %struct.arc* %4, i64 %5
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx2, i32 0, i32 2
  store %struct.node* %3, %struct.node** %head3, align 8
  %6 = load i64, i64* %cost.addr, align 8
  %7 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %8 = load i64, i64* %newpos.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %8
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx4, i32 0, i32 7
  store i64 %6, i64* %org_cost, align 8
  %9 = load i64, i64* %cost.addr, align 8
  %10 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %11 = load i64, i64* %newpos.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 %11
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx5, i32 0, i32 0
  store i64 %9, i64* %cost6, align 8
  %12 = load i64, i64* %red_cost.addr, align 8
  %13 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %14 = load i64, i64* %newpos.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.arc, %struct.arc* %13, i64 %14
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx7, i32 0, i32 6
  store i64 %12, i64* %flow, align 8
  %15 = load i64, i64* %newpos.addr, align 8
  %add = add nsw i64 %15, 1
  store i64 %add, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %16 = load i64, i64* %pos, align 8
  %sub = sub nsw i64 %16, 1
  %tobool = icmp ne i64 %sub, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i64, i64* %red_cost.addr, align 8
  %18 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %19 = load i64, i64* %pos, align 8
  %div = sdiv i64 %19, 2
  %sub8 = sub nsw i64 %div, 1
  %arrayidx9 = getelementptr inbounds %struct.arc, %struct.arc* %18, i64 %sub8
  %flow10 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx9, i32 0, i32 6
  %20 = load i64, i64* %flow10, align 8
  %cmp = icmp sgt i64 %17, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %23 = load i64, i64* %pos, align 8
  %div11 = sdiv i64 %23, 2
  %sub12 = sub nsw i64 %div11, 1
  %arrayidx13 = getelementptr inbounds %struct.arc, %struct.arc* %22, i64 %sub12
  %tail14 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx13, i32 0, i32 1
  %24 = load %struct.node*, %struct.node** %tail14, align 8
  %25 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %26 = load i64, i64* %pos, align 8
  %sub15 = sub nsw i64 %26, 1
  %arrayidx16 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %sub15
  %tail17 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx16, i32 0, i32 1
  store %struct.node* %24, %struct.node** %tail17, align 8
  %27 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %28 = load i64, i64* %pos, align 8
  %div18 = sdiv i64 %28, 2
  %sub19 = sub nsw i64 %div18, 1
  %arrayidx20 = getelementptr inbounds %struct.arc, %struct.arc* %27, i64 %sub19
  %head21 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx20, i32 0, i32 2
  %29 = load %struct.node*, %struct.node** %head21, align 8
  %30 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %31 = load i64, i64* %pos, align 8
  %sub22 = sub nsw i64 %31, 1
  %arrayidx23 = getelementptr inbounds %struct.arc, %struct.arc* %30, i64 %sub22
  %head24 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx23, i32 0, i32 2
  store %struct.node* %29, %struct.node** %head24, align 8
  %32 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %33 = load i64, i64* %pos, align 8
  %div25 = sdiv i64 %33, 2
  %sub26 = sub nsw i64 %div25, 1
  %arrayidx27 = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %sub26
  %cost28 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx27, i32 0, i32 0
  %34 = load i64, i64* %cost28, align 8
  %35 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %36 = load i64, i64* %pos, align 8
  %sub29 = sub nsw i64 %36, 1
  %arrayidx30 = getelementptr inbounds %struct.arc, %struct.arc* %35, i64 %sub29
  %cost31 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx30, i32 0, i32 0
  store i64 %34, i64* %cost31, align 8
  %37 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %38 = load i64, i64* %pos, align 8
  %div32 = sdiv i64 %38, 2
  %sub33 = sub nsw i64 %div32, 1
  %arrayidx34 = getelementptr inbounds %struct.arc, %struct.arc* %37, i64 %sub33
  %cost35 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx34, i32 0, i32 0
  %39 = load i64, i64* %cost35, align 8
  %40 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %41 = load i64, i64* %pos, align 8
  %sub36 = sub nsw i64 %41, 1
  %arrayidx37 = getelementptr inbounds %struct.arc, %struct.arc* %40, i64 %sub36
  %org_cost38 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx37, i32 0, i32 7
  store i64 %39, i64* %org_cost38, align 8
  %42 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %43 = load i64, i64* %pos, align 8
  %div39 = sdiv i64 %43, 2
  %sub40 = sub nsw i64 %div39, 1
  %arrayidx41 = getelementptr inbounds %struct.arc, %struct.arc* %42, i64 %sub40
  %flow42 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx41, i32 0, i32 6
  %44 = load i64, i64* %flow42, align 8
  %45 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %46 = load i64, i64* %pos, align 8
  %sub43 = sub nsw i64 %46, 1
  %arrayidx44 = getelementptr inbounds %struct.arc, %struct.arc* %45, i64 %sub43
  %flow45 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx44, i32 0, i32 6
  store i64 %44, i64* %flow45, align 8
  %47 = load i64, i64* %pos, align 8
  %div46 = sdiv i64 %47, 2
  store i64 %div46, i64* %pos, align 8
  %48 = load %struct.node*, %struct.node** %tail.addr, align 8
  %49 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %50 = load i64, i64* %pos, align 8
  %sub47 = sub nsw i64 %50, 1
  %arrayidx48 = getelementptr inbounds %struct.arc, %struct.arc* %49, i64 %sub47
  %tail49 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx48, i32 0, i32 1
  store %struct.node* %48, %struct.node** %tail49, align 8
  %51 = load %struct.node*, %struct.node** %head.addr, align 8
  %52 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %53 = load i64, i64* %pos, align 8
  %sub50 = sub nsw i64 %53, 1
  %arrayidx51 = getelementptr inbounds %struct.arc, %struct.arc* %52, i64 %sub50
  %head52 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx51, i32 0, i32 2
  store %struct.node* %51, %struct.node** %head52, align 8
  %54 = load i64, i64* %cost.addr, align 8
  %55 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %56 = load i64, i64* %pos, align 8
  %sub53 = sub nsw i64 %56, 1
  %arrayidx54 = getelementptr inbounds %struct.arc, %struct.arc* %55, i64 %sub53
  %cost55 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx54, i32 0, i32 0
  store i64 %54, i64* %cost55, align 8
  %57 = load i64, i64* %cost.addr, align 8
  %58 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %59 = load i64, i64* %pos, align 8
  %sub56 = sub nsw i64 %59, 1
  %arrayidx57 = getelementptr inbounds %struct.arc, %struct.arc* %58, i64 %sub56
  %org_cost58 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx57, i32 0, i32 7
  store i64 %57, i64* %org_cost58, align 8
  %60 = load i64, i64* %red_cost.addr, align 8
  %61 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %62 = load i64, i64* %pos, align 8
  %sub59 = sub nsw i64 %62, 1
  %arrayidx60 = getelementptr inbounds %struct.arc, %struct.arc* %61, i64 %sub59
  %flow61 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx60, i32 0, i32 6
  store i64 %60, i64* %flow61, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @replace_weaker_arc(%struct.network* %net, %struct.arc* %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %new.addr = alloca %struct.arc*, align 8
  %tail.addr = alloca %struct.node*, align 8
  %head.addr = alloca %struct.node*, align 8
  %cost.addr = alloca i64, align 8
  %red_cost.addr = alloca i64, align 8
  %pos = alloca i64, align 8
  %cmp = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store %struct.arc* %new, %struct.arc** %new.addr, align 8
  store %struct.node* %tail, %struct.node** %tail.addr, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store i64 %cost, i64* %cost.addr, align 8
  store i64 %red_cost, i64* %red_cost.addr, align 8
  %0 = load %struct.node*, %struct.node** %tail.addr, align 8
  %1 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %1, i64 0
  %tail1 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx, i32 0, i32 1
  store %struct.node* %0, %struct.node** %tail1, align 8
  %2 = load %struct.node*, %struct.node** %head.addr, align 8
  %3 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.arc, %struct.arc* %3, i64 0
  %head3 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx2, i32 0, i32 2
  store %struct.node* %2, %struct.node** %head3, align 8
  %4 = load i64, i64* %cost.addr, align 8
  %5 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.arc, %struct.arc* %5, i64 0
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx4, i32 0, i32 7
  store i64 %4, i64* %org_cost, align 8
  %6 = load i64, i64* %cost.addr, align 8
  %7 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 0
  %cost6 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx5, i32 0, i32 0
  store i64 %6, i64* %cost6, align 8
  %8 = load i64, i64* %red_cost.addr, align 8
  %9 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.arc, %struct.arc* %9, i64 0
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx7, i32 0, i32 6
  store i64 %8, i64* %flow, align 8
  store i64 1, i64* %pos, align 8
  %10 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.arc, %struct.arc* %10, i64 1
  %flow9 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx8, i32 0, i32 6
  %11 = load i64, i64* %flow9, align 8
  %12 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.arc, %struct.arc* %12, i64 2
  %flow11 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx10, i32 0, i32 6
  %13 = load i64, i64* %flow11, align 8
  %cmp12 = icmp sgt i64 %11, %13
  %cond = select i1 %cmp12, i32 2, i32 3
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %cmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %entry
  %14 = load i64, i64* %cmp, align 8
  %15 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %15, i32 0, i32 8
  %16 = load i64, i64* %max_residual_new_m, align 8
  %cmp13 = icmp sle i64 %14, %16
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i64, i64* %red_cost.addr, align 8
  %18 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %19 = load i64, i64* %cmp, align 8
  %sub = sub nsw i64 %19, 1
  %arrayidx15 = getelementptr inbounds %struct.arc, %struct.arc* %18, i64 %sub
  %flow16 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx15, i32 0, i32 6
  %20 = load i64, i64* %flow16, align 8
  %cmp17 = icmp slt i64 %17, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %23 = load i64, i64* %cmp, align 8
  %sub19 = sub nsw i64 %23, 1
  %arrayidx20 = getelementptr inbounds %struct.arc, %struct.arc* %22, i64 %sub19
  %tail21 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx20, i32 0, i32 1
  %24 = load %struct.node*, %struct.node** %tail21, align 8
  %25 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %26 = load i64, i64* %pos, align 8
  %sub22 = sub nsw i64 %26, 1
  %arrayidx23 = getelementptr inbounds %struct.arc, %struct.arc* %25, i64 %sub22
  %tail24 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx23, i32 0, i32 1
  store %struct.node* %24, %struct.node** %tail24, align 8
  %27 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %28 = load i64, i64* %cmp, align 8
  %sub25 = sub nsw i64 %28, 1
  %arrayidx26 = getelementptr inbounds %struct.arc, %struct.arc* %27, i64 %sub25
  %head27 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx26, i32 0, i32 2
  %29 = load %struct.node*, %struct.node** %head27, align 8
  %30 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %31 = load i64, i64* %pos, align 8
  %sub28 = sub nsw i64 %31, 1
  %arrayidx29 = getelementptr inbounds %struct.arc, %struct.arc* %30, i64 %sub28
  %head30 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx29, i32 0, i32 2
  store %struct.node* %29, %struct.node** %head30, align 8
  %32 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %33 = load i64, i64* %cmp, align 8
  %sub31 = sub nsw i64 %33, 1
  %arrayidx32 = getelementptr inbounds %struct.arc, %struct.arc* %32, i64 %sub31
  %cost33 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx32, i32 0, i32 0
  %34 = load i64, i64* %cost33, align 8
  %35 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %36 = load i64, i64* %pos, align 8
  %sub34 = sub nsw i64 %36, 1
  %arrayidx35 = getelementptr inbounds %struct.arc, %struct.arc* %35, i64 %sub34
  %cost36 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx35, i32 0, i32 0
  store i64 %34, i64* %cost36, align 8
  %37 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %38 = load i64, i64* %cmp, align 8
  %sub37 = sub nsw i64 %38, 1
  %arrayidx38 = getelementptr inbounds %struct.arc, %struct.arc* %37, i64 %sub37
  %cost39 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx38, i32 0, i32 0
  %39 = load i64, i64* %cost39, align 8
  %40 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %41 = load i64, i64* %pos, align 8
  %sub40 = sub nsw i64 %41, 1
  %arrayidx41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i64 %sub40
  %org_cost42 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx41, i32 0, i32 7
  store i64 %39, i64* %org_cost42, align 8
  %42 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %43 = load i64, i64* %cmp, align 8
  %sub43 = sub nsw i64 %43, 1
  %arrayidx44 = getelementptr inbounds %struct.arc, %struct.arc* %42, i64 %sub43
  %flow45 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx44, i32 0, i32 6
  %44 = load i64, i64* %flow45, align 8
  %45 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %46 = load i64, i64* %pos, align 8
  %sub46 = sub nsw i64 %46, 1
  %arrayidx47 = getelementptr inbounds %struct.arc, %struct.arc* %45, i64 %sub46
  %flow48 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx47, i32 0, i32 6
  store i64 %44, i64* %flow48, align 8
  %47 = load %struct.node*, %struct.node** %tail.addr, align 8
  %48 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %49 = load i64, i64* %cmp, align 8
  %sub49 = sub nsw i64 %49, 1
  %arrayidx50 = getelementptr inbounds %struct.arc, %struct.arc* %48, i64 %sub49
  %tail51 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx50, i32 0, i32 1
  store %struct.node* %47, %struct.node** %tail51, align 8
  %50 = load %struct.node*, %struct.node** %head.addr, align 8
  %51 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %52 = load i64, i64* %cmp, align 8
  %sub52 = sub nsw i64 %52, 1
  %arrayidx53 = getelementptr inbounds %struct.arc, %struct.arc* %51, i64 %sub52
  %head54 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx53, i32 0, i32 2
  store %struct.node* %50, %struct.node** %head54, align 8
  %53 = load i64, i64* %cost.addr, align 8
  %54 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %55 = load i64, i64* %cmp, align 8
  %sub55 = sub nsw i64 %55, 1
  %arrayidx56 = getelementptr inbounds %struct.arc, %struct.arc* %54, i64 %sub55
  %cost57 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx56, i32 0, i32 0
  store i64 %53, i64* %cost57, align 8
  %56 = load i64, i64* %cost.addr, align 8
  %57 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %58 = load i64, i64* %cmp, align 8
  %sub58 = sub nsw i64 %58, 1
  %arrayidx59 = getelementptr inbounds %struct.arc, %struct.arc* %57, i64 %sub58
  %org_cost60 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx59, i32 0, i32 7
  store i64 %56, i64* %org_cost60, align 8
  %59 = load i64, i64* %red_cost.addr, align 8
  %60 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %61 = load i64, i64* %cmp, align 8
  %sub61 = sub nsw i64 %61, 1
  %arrayidx62 = getelementptr inbounds %struct.arc, %struct.arc* %60, i64 %sub61
  %flow63 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx62, i32 0, i32 6
  store i64 %59, i64* %flow63, align 8
  %62 = load i64, i64* %cmp, align 8
  store i64 %62, i64* %pos, align 8
  %63 = load i64, i64* %cmp, align 8
  %mul = mul nsw i64 %63, 2
  store i64 %mul, i64* %cmp, align 8
  %64 = load i64, i64* %cmp, align 8
  %add = add nsw i64 %64, 1
  %65 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m64 = getelementptr inbounds %struct.network, %struct.network* %65, i32 0, i32 8
  %66 = load i64, i64* %max_residual_new_m64, align 8
  %cmp65 = icmp sle i64 %add, %66
  br i1 %cmp65, label %if.then, label %if.end75

if.then:                                          ; preds = %while.body
  %67 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %68 = load i64, i64* %cmp, align 8
  %sub67 = sub nsw i64 %68, 1
  %arrayidx68 = getelementptr inbounds %struct.arc, %struct.arc* %67, i64 %sub67
  %flow69 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx68, i32 0, i32 6
  %69 = load i64, i64* %flow69, align 8
  %70 = load %struct.arc*, %struct.arc** %new.addr, align 8
  %71 = load i64, i64* %cmp, align 8
  %arrayidx70 = getelementptr inbounds %struct.arc, %struct.arc* %70, i64 %71
  %flow71 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx70, i32 0, i32 6
  %72 = load i64, i64* %flow71, align 8
  %cmp72 = icmp slt i64 %69, %72
  br i1 %cmp72, label %if.then74, label %if.end

if.then74:                                        ; preds = %if.then
  %73 = load i64, i64* %cmp, align 8
  %inc = add nsw i64 %73, 1
  store i64 %inc, i64* %cmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then74, %if.then
  br label %if.end75

if.end75:                                         ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @price_out_impl(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %i = alloca i64, align 8
  %trips = alloca i64, align 8
  %new_arcs = alloca i64, align 8
  %resized = alloca i64, align 8
  %latest = alloca i64, align 8
  %min_impl_duration = alloca i64, align 8
  %bigM = alloca i64, align 8
  %head_potential = alloca i64, align 8
  %arc_cost = alloca i64, align 8
  %red_cost = alloca i64, align 8
  %bigM_minus_min_impl_duration = alloca i64, align 8
  %arcout = alloca %struct.arc*, align 8
  %arcin = alloca %struct.arc*, align 8
  %arcnew = alloca %struct.arc*, align 8
  %stop = alloca %struct.arc*, align 8
  %first_of_sparse_list = alloca %struct.arc*, align 8
  %tail = alloca %struct.node*, align 8
  %head = alloca %struct.node*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 0, i64* %new_arcs, align 8
  store i64 0, i64* %resized, align 8
  store i64 15, i64* %min_impl_duration, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM1 = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 18
  %1 = load i64, i64* %bigM1, align 8
  store i64 %1, i64* %bigM, align 8
  store i64 30, i64* %arc_cost, align 8
  %2 = load i64, i64* %bigM, align 8
  %3 = load i64, i64* %min_impl_duration, align 8
  %sub = sub nsw i64 %2, %3
  store i64 %sub, i64* %bigM_minus_min_impl_duration, align 8
  %4 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %4, i32 0, i32 3
  %5 = load i64, i64* %n_trips, align 8
  %cmp = icmp sle i64 %5, 15000
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %m = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 5
  %7 = load i64, i64* %m, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 9
  %9 = load i64, i64* %max_new_m, align 8
  %add = add nsw i64 %7, %9
  %10 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m = getelementptr inbounds %struct.network, %struct.network* %10, i32 0, i32 4
  %11 = load i64, i64* %max_m, align 8
  %cmp2 = icmp sgt i64 %add, %11
  br i1 %cmp2, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips3 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 3
  %13 = load i64, i64* %n_trips3, align 8
  %14 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips4 = getelementptr inbounds %struct.network, %struct.network* %14, i32 0, i32 3
  %15 = load i64, i64* %n_trips4, align 8
  %mul = mul nsw i64 %13, %15
  %div = sdiv i64 %mul, 2
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %m5 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 5
  %17 = load i64, i64* %m5, align 8
  %add6 = add nsw i64 %div, %17
  %18 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m7 = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 4
  %19 = load i64, i64* %max_m7, align 8
  %cmp8 = icmp sgt i64 %add6, %19
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  store i64 1, i64* %resized, align 8
  %20 = load %struct.network*, %struct.network** %net.addr, align 8
  %call = call i64 @resize_prob(%struct.network* %20)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then9
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then9
  %21 = load %struct.network*, %struct.network** %net.addr, align 8
  call void @refresh_neighbour_lists(%struct.network* %21)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %22 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %22, i32 0, i32 24
  %23 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  store %struct.arc* %23, %struct.arc** %arcnew, align 8
  %24 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips13 = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 3
  %25 = load i64, i64* %n_trips13, align 8
  store i64 %25, i64* %trips, align 8
  %26 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %26, i32 0, i32 23
  %27 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %27, %struct.arc** %arcout, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %28 = load i64, i64* %i, align 8
  %29 = load i64, i64* %trips, align 8
  %cmp14 = icmp slt i64 %28, %29
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %30 = load %struct.arc*, %struct.arc** %arcout, align 8
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %30, i64 1
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx, i32 0, i32 3
  %31 = load i32, i32* %ident, align 8
  %cmp15 = icmp eq i32 %31, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %32 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %32, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %i, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %i, align 8
  %34 = load %struct.arc*, %struct.arc** %arcout, align 8
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %34, i64 3
  store %struct.arc* %add.ptr, %struct.arc** %arcout, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  store %struct.arc* null, %struct.arc** %first_of_sparse_list, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc66, %for.end
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %trips, align 8
  %cmp17 = icmp slt i64 %35, %36
  br i1 %cmp17, label %for.body18, label %for.end69

for.body18:                                       ; preds = %for.cond16
  %37 = load %struct.arc*, %struct.arc** %arcout, align 8
  %arrayidx19 = getelementptr inbounds %struct.arc, %struct.arc* %37, i64 1
  %ident20 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx19, i32 0, i32 3
  %38 = load i32, i32* %ident20, align 8
  %cmp21 = icmp ne i32 %38, -1
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %for.body18
  %39 = load %struct.arc*, %struct.arc** %first_of_sparse_list, align 8
  %40 = load %struct.arc*, %struct.arc** %arcout, align 8
  %head23 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %head23, align 8
  %firstout = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 7
  %42 = load %struct.arc*, %struct.arc** %firstout, align 8
  %head24 = getelementptr inbounds %struct.arc, %struct.arc* %42, i32 0, i32 2
  %43 = load %struct.node*, %struct.node** %head24, align 8
  %arc_tmp = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 9
  store %struct.arc* %39, %struct.arc** %arc_tmp, align 8
  %44 = load %struct.arc*, %struct.arc** %arcout, align 8
  %add.ptr25 = getelementptr inbounds %struct.arc, %struct.arc* %44, i64 1
  store %struct.arc* %add.ptr25, %struct.arc** %first_of_sparse_list, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %for.body18
  %45 = load %struct.arc*, %struct.arc** %arcout, align 8
  %ident27 = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 3
  %46 = load i32, i32* %ident27, align 8
  %cmp28 = icmp eq i32 %46, -1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  br label %for.inc66

if.end30:                                         ; preds = %if.end26
  %47 = load %struct.arc*, %struct.arc** %arcout, align 8
  %head31 = getelementptr inbounds %struct.arc, %struct.arc* %47, i32 0, i32 2
  %48 = load %struct.node*, %struct.node** %head31, align 8
  store %struct.node* %48, %struct.node** %head, align 8
  %49 = load %struct.node*, %struct.node** %head, align 8
  %time = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 13
  %50 = load i32, i32* %time, align 4
  %conv = sext i32 %50 to i64
  %51 = load %struct.arc*, %struct.arc** %arcout, align 8
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 7
  %52 = load i64, i64* %org_cost, align 8
  %sub32 = sub nsw i64 %conv, %52
  %53 = load i64, i64* %bigM_minus_min_impl_duration, align 8
  %add33 = add nsw i64 %sub32, %53
  store i64 %add33, i64* %latest, align 8
  %54 = load %struct.node*, %struct.node** %head, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %55 = load i64, i64* %potential, align 8
  store i64 %55, i64* %head_potential, align 8
  %56 = load %struct.arc*, %struct.arc** %first_of_sparse_list, align 8
  %tail34 = getelementptr inbounds %struct.arc, %struct.arc* %56, i32 0, i32 1
  %57 = load %struct.node*, %struct.node** %tail34, align 8
  %arc_tmp35 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 9
  %58 = load %struct.arc*, %struct.arc** %arc_tmp35, align 8
  store %struct.arc* %58, %struct.arc** %arcin, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %if.then44, %if.end30
  %59 = load %struct.arc*, %struct.arc** %arcin, align 8
  %tobool36 = icmp ne %struct.arc* %59, null
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load %struct.arc*, %struct.arc** %arcin, align 8
  %tail37 = getelementptr inbounds %struct.arc, %struct.arc* %60, i32 0, i32 1
  %61 = load %struct.node*, %struct.node** %tail37, align 8
  store %struct.node* %61, %struct.node** %tail, align 8
  %62 = load %struct.node*, %struct.node** %tail, align 8
  %time38 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 13
  %63 = load i32, i32* %time38, align 4
  %conv39 = sext i32 %63 to i64
  %64 = load %struct.arc*, %struct.arc** %arcin, align 8
  %org_cost40 = getelementptr inbounds %struct.arc, %struct.arc* %64, i32 0, i32 7
  %65 = load i64, i64* %org_cost40, align 8
  %add41 = add nsw i64 %conv39, %65
  %66 = load i64, i64* %latest, align 8
  %cmp42 = icmp sgt i64 %add41, %66
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %while.body
  %67 = load %struct.node*, %struct.node** %tail, align 8
  %arc_tmp45 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 9
  %68 = load %struct.arc*, %struct.arc** %arc_tmp45, align 8
  store %struct.arc* %68, %struct.arc** %arcin, align 8
  br label %while.cond

if.end46:                                         ; preds = %while.body
  %69 = load i64, i64* %arc_cost, align 8
  %70 = load %struct.node*, %struct.node** %tail, align 8
  %potential47 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  %71 = load i64, i64* %potential47, align 8
  %sub48 = sub nsw i64 %69, %71
  %72 = load %struct.node*, %struct.node** %head, align 8
  %potential49 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 0
  %73 = load i64, i64* %potential49, align 8
  %add50 = add nsw i64 %sub48, %73
  store i64 %add50, i64* %red_cost, align 8
  %74 = load i64, i64* %red_cost, align 8
  %cmp51 = icmp slt i64 %74, 0
  br i1 %cmp51, label %if.then53, label %if.end64

if.then53:                                        ; preds = %if.end46
  %75 = load i64, i64* %new_arcs, align 8
  %76 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %76, i32 0, i32 8
  %77 = load i64, i64* %max_residual_new_m, align 8
  %cmp54 = icmp slt i64 %75, %77
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then53
  %78 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %79 = load i64, i64* %new_arcs, align 8
  %80 = load %struct.node*, %struct.node** %tail, align 8
  %81 = load %struct.node*, %struct.node** %head, align 8
  %82 = load i64, i64* %arc_cost, align 8
  %83 = load i64, i64* %red_cost, align 8
  call void @insert_new_arc(%struct.arc* %78, i64 %79, %struct.node* %80, %struct.node* %81, i64 %82, i64 %83)
  %84 = load i64, i64* %new_arcs, align 8
  %inc57 = add nsw i64 %84, 1
  store i64 %inc57, i64* %new_arcs, align 8
  br label %if.end63

if.else:                                          ; preds = %if.then53
  %85 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %arrayidx58 = getelementptr inbounds %struct.arc, %struct.arc* %85, i64 0
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx58, i32 0, i32 6
  %86 = load i64, i64* %flow, align 8
  %87 = load i64, i64* %red_cost, align 8
  %cmp59 = icmp sgt i64 %86, %87
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else
  %88 = load %struct.network*, %struct.network** %net.addr, align 8
  %89 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %90 = load %struct.node*, %struct.node** %tail, align 8
  %91 = load %struct.node*, %struct.node** %head, align 8
  %92 = load i64, i64* %arc_cost, align 8
  %93 = load i64, i64* %red_cost, align 8
  call void @replace_weaker_arc(%struct.network* %88, %struct.arc* %89, %struct.node* %90, %struct.node* %91, i64 %92, i64 %93)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.else
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then56
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end46
  %94 = load %struct.node*, %struct.node** %tail, align 8
  %arc_tmp65 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 9
  %95 = load %struct.arc*, %struct.arc** %arc_tmp65, align 8
  store %struct.arc* %95, %struct.arc** %arcin, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc66

for.inc66:                                        ; preds = %while.end, %if.then29
  %96 = load i64, i64* %i, align 8
  %inc67 = add nsw i64 %96, 1
  store i64 %inc67, i64* %i, align 8
  %97 = load %struct.arc*, %struct.arc** %arcout, align 8
  %add.ptr68 = getelementptr inbounds %struct.arc, %struct.arc* %97, i64 3
  store %struct.arc* %add.ptr68, %struct.arc** %arcout, align 8
  br label %for.cond16

for.end69:                                        ; preds = %for.cond16
  %98 = load i64, i64* %new_arcs, align 8
  %tobool70 = icmp ne i64 %98, 0
  br i1 %tobool70, label %if.then71, label %if.end109

if.then71:                                        ; preds = %for.end69
  %99 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs72 = getelementptr inbounds %struct.network, %struct.network* %99, i32 0, i32 24
  %100 = load %struct.arc*, %struct.arc** %stop_arcs72, align 8
  store %struct.arc* %100, %struct.arc** %arcnew, align 8
  %101 = load i64, i64* %new_arcs, align 8
  %102 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs73 = getelementptr inbounds %struct.network, %struct.network* %102, i32 0, i32 24
  %103 = load %struct.arc*, %struct.arc** %stop_arcs73, align 8
  %add.ptr74 = getelementptr inbounds %struct.arc, %struct.arc* %103, i64 %101
  store %struct.arc* %add.ptr74, %struct.arc** %stop_arcs73, align 8
  %104 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs75 = getelementptr inbounds %struct.network, %struct.network* %104, i32 0, i32 24
  %105 = load %struct.arc*, %struct.arc** %stop_arcs75, align 8
  %106 = bitcast %struct.arc* %105 to i8*
  %107 = bitcast i8* %106 to %struct.arc*
  store %struct.arc* %107, %struct.arc** %stop, align 8
  %108 = load i64, i64* %resized, align 8
  %tobool76 = icmp ne i64 %108, 0
  br i1 %tobool76, label %if.then77, label %if.else86

if.then77:                                        ; preds = %if.then71
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc84, %if.then77
  %109 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %110 = load %struct.arc*, %struct.arc** %stop, align 8
  %cmp79 = icmp ne %struct.arc* %109, %110
  br i1 %cmp79, label %for.body81, label %for.end85

for.body81:                                       ; preds = %for.cond78
  %111 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %flow82 = getelementptr inbounds %struct.arc, %struct.arc* %111, i32 0, i32 6
  store i64 0, i64* %flow82, align 8
  %112 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %ident83 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 3
  store i32 1, i32* %ident83, align 8
  br label %for.inc84

for.inc84:                                        ; preds = %for.body81
  %113 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %113, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arcnew, align 8
  br label %for.cond78

for.end85:                                        ; preds = %for.cond78
  br label %if.end103

if.else86:                                        ; preds = %if.then71
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc100, %if.else86
  %114 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %115 = load %struct.arc*, %struct.arc** %stop, align 8
  %cmp88 = icmp ne %struct.arc* %114, %115
  br i1 %cmp88, label %for.body90, label %for.end102

for.body90:                                       ; preds = %for.cond87
  %116 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %flow91 = getelementptr inbounds %struct.arc, %struct.arc* %116, i32 0, i32 6
  store i64 0, i64* %flow91, align 8
  %117 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %ident92 = getelementptr inbounds %struct.arc, %struct.arc* %117, i32 0, i32 3
  store i32 1, i32* %ident92, align 8
  %118 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %tail93 = getelementptr inbounds %struct.arc, %struct.arc* %118, i32 0, i32 1
  %119 = load %struct.node*, %struct.node** %tail93, align 8
  %firstout94 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 7
  %120 = load %struct.arc*, %struct.arc** %firstout94, align 8
  %121 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %121, i32 0, i32 4
  store %struct.arc* %120, %struct.arc** %nextout, align 8
  %122 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %123 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %tail95 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 1
  %124 = load %struct.node*, %struct.node** %tail95, align 8
  %firstout96 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 7
  store %struct.arc* %122, %struct.arc** %firstout96, align 8
  %125 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %head97 = getelementptr inbounds %struct.arc, %struct.arc* %125, i32 0, i32 2
  %126 = load %struct.node*, %struct.node** %head97, align 8
  %firstin = getelementptr inbounds %struct.node, %struct.node* %126, i32 0, i32 8
  %127 = load %struct.arc*, %struct.arc** %firstin, align 8
  %128 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 5
  store %struct.arc* %127, %struct.arc** %nextin, align 8
  %129 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %130 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %head98 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 2
  %131 = load %struct.node*, %struct.node** %head98, align 8
  %firstin99 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 8
  store %struct.arc* %129, %struct.arc** %firstin99, align 8
  br label %for.inc100

for.inc100:                                       ; preds = %for.body90
  %132 = load %struct.arc*, %struct.arc** %arcnew, align 8
  %incdec.ptr101 = getelementptr inbounds %struct.arc, %struct.arc* %132, i32 1
  store %struct.arc* %incdec.ptr101, %struct.arc** %arcnew, align 8
  br label %for.cond87

for.end102:                                       ; preds = %for.cond87
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %for.end85
  %133 = load i64, i64* %new_arcs, align 8
  %134 = load %struct.network*, %struct.network** %net.addr, align 8
  %m104 = getelementptr inbounds %struct.network, %struct.network* %134, i32 0, i32 5
  %135 = load i64, i64* %m104, align 8
  %add105 = add nsw i64 %135, %133
  store i64 %add105, i64* %m104, align 8
  %136 = load i64, i64* %new_arcs, align 8
  %137 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %137, i32 0, i32 7
  %138 = load i64, i64* %m_impl, align 8
  %add106 = add nsw i64 %138, %136
  store i64 %add106, i64* %m_impl, align 8
  %139 = load i64, i64* %new_arcs, align 8
  %140 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m107 = getelementptr inbounds %struct.network, %struct.network* %140, i32 0, i32 8
  %141 = load i64, i64* %max_residual_new_m107, align 8
  %sub108 = sub nsw i64 %141, %139
  store i64 %sub108, i64* %max_residual_new_m107, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.end103, %for.end69
  %142 = load i64, i64* %new_arcs, align 8
  store i64 %142, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end109, %if.then10
  %143 = load i64, i64* %retval, align 8
  ret i64 %143
}

; Function Attrs: noinline nounwind uwtable
define i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %threshold.addr = alloca i64, align 8
  %all.addr = alloca i64, align 8
  %susp = alloca i64, align 8
  %red_cost = alloca i64, align 8
  %new_arc = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 %threshold, i64* %threshold.addr, align 8
  store i64 %all, i64* %all.addr, align 8
  %0 = load i64, i64* %all.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %1, i32 0, i32 7
  %2 = load i64, i64* %m_impl, align 8
  store i64 %2, i64* %susp, align 8
  br label %if.end25

if.else:                                          ; preds = %entry
  %3 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 24
  %4 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %5 = bitcast %struct.arc* %4 to i8*
  store i8* %5, i8** %stop, align 8
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 23
  %7 = load %struct.arc*, %struct.arc** %arcs, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %m = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 5
  %9 = load i64, i64* %m, align 8
  %10 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl1 = getelementptr inbounds %struct.network, %struct.network* %10, i32 0, i32 7
  %11 = load i64, i64* %m_impl1, align 8
  %sub = sub nsw i64 %9, %11
  %arrayidx = getelementptr inbounds %struct.arc, %struct.arc* %7, i64 %sub
  store %struct.arc* %arrayidx, %struct.arc** %new_arc, align 8
  store i64 0, i64* %susp, align 8
  %12 = load %struct.arc*, %struct.arc** %new_arc, align 8
  store %struct.arc* %12, %struct.arc** %arc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load %struct.arc*, %struct.arc** %arc, align 8
  %14 = load i8*, i8** %stop, align 8
  %15 = bitcast i8* %14 to %struct.arc*
  %cmp = icmp ult %struct.arc* %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 3
  %17 = load i32, i32* %ident, align 8
  %cmp2 = icmp eq i32 %17, 1
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %for.body
  %18 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 0
  %19 = load i64, i64* %cost, align 8
  %20 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %20, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %tail, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %22 = load i64, i64* %potential, align 8
  %sub4 = sub nsw i64 %19, %22
  %23 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %23, i32 0, i32 2
  %24 = load %struct.node*, %struct.node** %head, align 8
  %potential5 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0
  %25 = load i64, i64* %potential5, align 8
  %add = add nsw i64 %sub4, %25
  store i64 %add, i64* %red_cost, align 8
  br label %if.end19

if.else6:                                         ; preds = %for.body
  store i64 -2, i64* %red_cost, align 8
  %26 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident7 = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 0, i32 3
  %27 = load i32, i32* %ident7, align 8
  %cmp8 = icmp eq i32 %27, 0
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.else6
  %28 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail10 = getelementptr inbounds %struct.arc, %struct.arc* %28, i32 0, i32 1
  %29 = load %struct.node*, %struct.node** %tail10, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 6
  %30 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  %31 = load %struct.arc*, %struct.arc** %arc, align 8
  %cmp11 = icmp eq %struct.arc* %30, %31
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.then9
  %32 = load %struct.arc*, %struct.arc** %new_arc, align 8
  %33 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail13 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 0, i32 1
  %34 = load %struct.node*, %struct.node** %tail13, align 8
  %basic_arc14 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 6
  store %struct.arc* %32, %struct.arc** %basic_arc14, align 8
  br label %if.end

if.else15:                                        ; preds = %if.then9
  %35 = load %struct.arc*, %struct.arc** %new_arc, align 8
  %36 = load %struct.arc*, %struct.arc** %arc, align 8
  %head16 = getelementptr inbounds %struct.arc, %struct.arc* %36, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %head16, align 8
  %basic_arc17 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 6
  store %struct.arc* %35, %struct.arc** %basic_arc17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.else6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then3
  %38 = load i64, i64* %red_cost, align 8
  %39 = load i64, i64* %threshold.addr, align 8
  %cmp20 = icmp sgt i64 %38, %39
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  %40 = load i64, i64* %susp, align 8
  %inc = add nsw i64 %40, 1
  store i64 %inc, i64* %susp, align 8
  br label %if.end23

if.else22:                                        ; preds = %if.end19
  %41 = load %struct.arc*, %struct.arc** %new_arc, align 8
  %42 = load %struct.arc*, %struct.arc** %arc, align 8
  %43 = bitcast %struct.arc* %41 to i8*
  %44 = bitcast %struct.arc* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 64, i32 8, i1 false)
  %45 = load %struct.arc*, %struct.arc** %new_arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %new_arc, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr24 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 1
  store %struct.arc* %incdec.ptr24, %struct.arc** %arc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.then
  %47 = load i64, i64* %susp, align 8
  %tobool26 = icmp ne i64 %47, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end25
  %48 = load i64, i64* %susp, align 8
  %49 = load %struct.network*, %struct.network** %net.addr, align 8
  %m28 = getelementptr inbounds %struct.network, %struct.network* %49, i32 0, i32 5
  %50 = load i64, i64* %m28, align 8
  %sub29 = sub nsw i64 %50, %48
  store i64 %sub29, i64* %m28, align 8
  %51 = load i64, i64* %susp, align 8
  %52 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl30 = getelementptr inbounds %struct.network, %struct.network* %52, i32 0, i32 7
  %53 = load i64, i64* %m_impl30, align 8
  %sub31 = sub nsw i64 %53, %51
  store i64 %sub31, i64* %m_impl30, align 8
  %54 = load i64, i64* %susp, align 8
  %55 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs32 = getelementptr inbounds %struct.network, %struct.network* %55, i32 0, i32 24
  %56 = load %struct.arc*, %struct.arc** %stop_arcs32, align 8
  %idx.neg = sub i64 0, %54
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %56, i64 %idx.neg
  store %struct.arc* %add.ptr, %struct.arc** %stop_arcs32, align 8
  %57 = load i64, i64* %susp, align 8
  %58 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %58, i32 0, i32 8
  %59 = load i64, i64* %max_residual_new_m, align 8
  %add33 = add nsw i64 %59, %57
  store i64 %add33, i64* %max_residual_new_m, align 8
  %60 = load %struct.network*, %struct.network** %net.addr, align 8
  call void @refresh_neighbour_lists(%struct.network* %60)
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end25
  %61 = load i64, i64* %susp, align 8
  ret i64 %61
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define i64 @global_opt() #0 {
entry:
  %new_arcs = alloca i64, align 8
  %residual_nb_it = alloca i64, align 8
  store i64 -1, i64* %new_arcs, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 3), align 8
  %cmp = icmp sle i64 %0, 15000
  %cond = select i1 %cmp, i32 5, i32 5
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %residual_nb_it, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %entry
  %1 = load i64, i64* %new_arcs, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 5), align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i64 %2)
  %call1 = call i64 @primal_net_simplex(%struct.network* @net)
  %3 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 27), align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1.2, i32 0, i32 0), i64 %3)
  %call3 = call double @flow_cost(%struct.network* @net)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), double %call3)
  %4 = load i64, i64* %residual_nb_it, align 8
  %tobool5 = icmp ne i64 %4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 7), align 8
  %tobool6 = icmp ne i64 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %call8 = call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0)
  store i64 %call8, i64* %new_arcs, align 8
  %6 = load i64, i64* %new_arcs, align 8
  %tobool9 = icmp ne i64 %6, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %7 = load i64, i64* %new_arcs, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i64 %7)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %call14 = call i64 @price_out_impl(%struct.network* @net)
  store i64 %call14, i64* %new_arcs, align 8
  %8 = load i64, i64* %new_arcs, align 8
  %tobool15 = icmp ne i64 %8, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %9 = load i64, i64* %new_arcs, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i64 %9)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %10 = load i64, i64* %new_arcs, align 8
  %cmp19 = icmp slt i64 %10, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %if.end18
  %11 = load i64, i64* %residual_nb_it, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %residual_nb_it, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 29), align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i64 %12)
  ret i64 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i8 0, i64 624, i32 8, i1 false)
  store i64 10000000, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 18), align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call5 = call i8* @strcpy(i8* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 0, i32 0), i8* %2) #5
  %call6 = call i64 @read_min(%struct.network* @net)
  %tobool = icmp ne i64 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  %call9 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.network, %struct.network* @net, i32 0, i32 3), align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i64 %3)
  %call12 = call i64 @primal_start_artificial(%struct.network* @net)
  %call13 = call i64 @global_opt()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  %call15 = call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.network* @net)
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  %call18 = call i64 @getfree(%struct.network* @net)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end10
  %call20 = call i64 @getfree(%struct.network* @net)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then17, %if.then7, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @refresh_neighbour_lists(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 21
  %1 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 22
  %3 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %4 = bitcast %struct.node* %3 to i8*
  store i8* %4, i8** %stop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.node*, %struct.node** %node, align 8
  %6 = load i8*, i8** %stop, align 8
  %7 = bitcast i8* %6 to %struct.node*
  %cmp = icmp ult %struct.node* %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.node*, %struct.node** %node, align 8
  %firstin = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 8
  store %struct.arc* null, %struct.arc** %firstin, align 8
  %9 = load %struct.node*, %struct.node** %node, align 8
  %firstout = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 7
  store %struct.arc* null, %struct.arc** %firstout, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %10, i32 1
  store %struct.node* %incdec.ptr, %struct.node** %node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %11, i32 0, i32 23
  %12 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %12, %struct.arc** %arc, align 8
  %13 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 24
  %14 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %15 = bitcast %struct.arc* %14 to i8*
  store i8* %15, i8** %stop, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %16 = load %struct.arc*, %struct.arc** %arc, align 8
  %17 = load i8*, i8** %stop, align 8
  %18 = bitcast i8* %17 to %struct.arc*
  %cmp2 = icmp ult %struct.arc* %16, %18
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %19 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %19, i32 0, i32 1
  %20 = load %struct.node*, %struct.node** %tail, align 8
  %firstout4 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 7
  %21 = load %struct.arc*, %struct.arc** %firstout4, align 8
  %22 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 4
  store %struct.arc* %21, %struct.arc** %nextout, align 8
  %23 = load %struct.arc*, %struct.arc** %arc, align 8
  %24 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail5 = getelementptr inbounds %struct.arc, %struct.arc* %24, i32 0, i32 1
  %25 = load %struct.node*, %struct.node** %tail5, align 8
  %firstout6 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 7
  store %struct.arc* %23, %struct.arc** %firstout6, align 8
  %26 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %head, align 8
  %firstin7 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 8
  %28 = load %struct.arc*, %struct.arc** %firstin7, align 8
  %29 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 5
  store %struct.arc* %28, %struct.arc** %nextin, align 8
  %30 = load %struct.arc*, %struct.arc** %arc, align 8
  %31 = load %struct.arc*, %struct.arc** %arc, align 8
  %head8 = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 2
  %32 = load %struct.node*, %struct.node** %head8, align 8
  %firstin9 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 8
  store %struct.arc* %30, %struct.arc** %firstin9, align 8
  br label %for.inc10

for.inc10:                                        ; preds = %for.body3
  %33 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.arc, %struct.arc* %33, i32 1
  store %struct.arc* %incdec.ptr11, %struct.arc** %arc, align 8
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @refresh_potential(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %tmp = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %checksum = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 21
  %1 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %1, %struct.node** %root, align 8
  store i64 0, i64* %checksum, align 8
  %2 = load %struct.node*, %struct.node** %root, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i64 -100000000, i64* %potential, align 8
  %3 = load %struct.node*, %struct.node** %root, align 8
  %child = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 2
  %4 = load %struct.node*, %struct.node** %child, align 8
  store %struct.node* %4, %struct.node** %node, align 8
  store %struct.node* %4, %struct.node** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end23, %entry
  %5 = load %struct.node*, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %root, align 8
  %cmp = icmp ne %struct.node* %5, %6
  br i1 %cmp, label %while.body, label %while.end24

while.body:                                       ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %if.end, %while.body
  %7 = load %struct.node*, %struct.node** %node, align 8
  %tobool = icmp ne %struct.node* %7, null
  br i1 %tobool, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond3
  %8 = load %struct.node*, %struct.node** %node, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  %9 = load i32, i32* %orientation, align 8
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body4
  %10 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 6
  %11 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %11, i32 0, i32 0
  %12 = load i64, i64* %cost, align 8
  %13 = load %struct.node*, %struct.node** %node, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 3
  %14 = load %struct.node*, %struct.node** %pred, align 8
  %potential6 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %15 = load i64, i64* %potential6, align 8
  %add = add nsw i64 %12, %15
  %16 = load %struct.node*, %struct.node** %node, align 8
  %potential7 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  store i64 %add, i64* %potential7, align 8
  br label %if.end

if.else:                                          ; preds = %while.body4
  %17 = load %struct.node*, %struct.node** %node, align 8
  %pred8 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred8, align 8
  %potential9 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %19 = load i64, i64* %potential9, align 8
  %20 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc10 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 6
  %21 = load %struct.arc*, %struct.arc** %basic_arc10, align 8
  %cost11 = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 0
  %22 = load i64, i64* %cost11, align 8
  %sub = sub nsw i64 %19, %22
  %23 = load %struct.node*, %struct.node** %node, align 8
  %potential12 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  store i64 %sub, i64* %potential12, align 8
  %24 = load i64, i64* %checksum, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, i64* %checksum, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct.node*, %struct.node** %node, align 8
  store %struct.node* %25, %struct.node** %tmp, align 8
  %26 = load %struct.node*, %struct.node** %node, align 8
  %child13 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 2
  %27 = load %struct.node*, %struct.node** %child13, align 8
  store %struct.node* %27, %struct.node** %node, align 8
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  %28 = load %struct.node*, %struct.node** %tmp, align 8
  store %struct.node* %28, %struct.node** %node, align 8
  br label %while.cond14

while.cond14:                                     ; preds = %if.end22, %while.end
  %29 = load %struct.node*, %struct.node** %node, align 8
  %pred15 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred15, align 8
  %tobool16 = icmp ne %struct.node* %30, null
  br i1 %tobool16, label %while.body17, label %while.end23

while.body17:                                     ; preds = %while.cond14
  %31 = load %struct.node*, %struct.node** %node, align 8
  %sibling = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 4
  %32 = load %struct.node*, %struct.node** %sibling, align 8
  store %struct.node* %32, %struct.node** %tmp, align 8
  %33 = load %struct.node*, %struct.node** %tmp, align 8
  %tobool18 = icmp ne %struct.node* %33, null
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %while.body17
  %34 = load %struct.node*, %struct.node** %tmp, align 8
  store %struct.node* %34, %struct.node** %node, align 8
  br label %while.end23

if.else20:                                        ; preds = %while.body17
  %35 = load %struct.node*, %struct.node** %node, align 8
  %pred21 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 3
  %36 = load %struct.node*, %struct.node** %pred21, align 8
  store %struct.node* %36, %struct.node** %node, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else20
  br label %while.cond14

while.end23:                                      ; preds = %if.then19, %while.cond14
  br label %while.cond

while.end24:                                      ; preds = %while.cond
  %37 = load i64, i64* %checksum, align 8
  ret i64 %37
}

; Function Attrs: noinline nounwind uwtable
define double @flow_cost(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca i8*, align 8
  %fleet = alloca i64, align 8
  %operational_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 0, i64* %fleet, align 8
  store i64 0, i64* %operational_cost, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 24
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %2 = bitcast %struct.arc* %1 to i8*
  store i8* %2, i8** %stop, align 8
  %3 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 23
  %4 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %4, %struct.arc** %arc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.arc*, %struct.arc** %arc, align 8
  %6 = load i8*, i8** %stop, align 8
  %7 = bitcast i8* %6 to %struct.arc*
  %cmp = icmp ne %struct.arc* %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %8, i32 0, i32 3
  %9 = load i32, i32* %ident, align 8
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %10, i32 0, i32 6
  store i64 1, i64* %flow, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow2 = getelementptr inbounds %struct.arc, %struct.arc* %11, i32 0, i32 6
  store i64 0, i64* %flow2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %12, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 22
  %14 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %15 = bitcast %struct.node* %14 to i8*
  store i8* %15, i8** %stop, align 8
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 21
  %17 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %17, %struct.node** %node, align 8
  %18 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.node, %struct.node* %18, i32 1
  store %struct.node* %incdec.ptr3, %struct.node** %node, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %19 = load %struct.node*, %struct.node** %node, align 8
  %20 = load i8*, i8** %stop, align 8
  %21 = bitcast i8* %20 to %struct.node*
  %cmp5 = icmp ne %struct.node* %19, %21
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %22 = load %struct.node*, %struct.node** %node, align 8
  %flow7 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow7, align 8
  %24 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 6
  %25 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  %flow8 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 6
  store i64 %23, i64* %flow8, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %26 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.node, %struct.node* %26, i32 1
  store %struct.node* %incdec.ptr10, %struct.node** %node, align 8
  br label %for.cond4

for.end11:                                        ; preds = %for.cond4
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs12 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 24
  %28 = load %struct.arc*, %struct.arc** %stop_arcs12, align 8
  %29 = bitcast %struct.arc* %28 to i8*
  store i8* %29, i8** %stop, align 8
  %30 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs13 = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 23
  %31 = load %struct.arc*, %struct.arc** %arcs13, align 8
  store %struct.arc* %31, %struct.arc** %arc, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc33, %for.end11
  %32 = load %struct.arc*, %struct.arc** %arc, align 8
  %33 = load i8*, i8** %stop, align 8
  %34 = bitcast i8* %33 to %struct.arc*
  %cmp15 = icmp ne %struct.arc* %32, %34
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond14
  %35 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow17 = getelementptr inbounds %struct.arc, %struct.arc* %35, i32 0, i32 6
  %36 = load i64, i64* %flow17, align 8
  %tobool = icmp ne i64 %36, 0
  br i1 %tobool, label %if.then18, label %if.end32

if.then18:                                        ; preds = %for.body16
  %37 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %37, i32 0, i32 1
  %38 = load %struct.node*, %struct.node** %tail, align 8
  %number = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 12
  %39 = load i32, i32* %number, align 8
  %cmp19 = icmp slt i32 %39, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then22

land.lhs.true:                                    ; preds = %if.then18
  %40 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %head, align 8
  %number20 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 12
  %42 = load i32, i32* %number20, align 8
  %cmp21 = icmp sgt i32 %42, 0
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %land.lhs.true, %if.then18
  %43 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail23 = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 1
  %44 = load %struct.node*, %struct.node** %tail23, align 8
  %number24 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 12
  %45 = load i32, i32* %number24, align 8
  %tobool25 = icmp ne i32 %45, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.then22
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 0
  %47 = load i64, i64* %cost, align 8
  %48 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 18
  %49 = load i64, i64* %bigM, align 8
  %sub = sub nsw i64 %47, %49
  %50 = load i64, i64* %operational_cost, align 8
  %add = add nsw i64 %50, %sub
  store i64 %add, i64* %operational_cost, align 8
  %51 = load i64, i64* %fleet, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %fleet, align 8
  br label %if.end30

if.else27:                                        ; preds = %if.then22
  %52 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost28 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 0
  %53 = load i64, i64* %cost28, align 8
  %54 = load i64, i64* %operational_cost, align 8
  %add29 = add nsw i64 %54, %53
  store i64 %add29, i64* %operational_cost, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.body16
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %55 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.arc, %struct.arc* %55, i32 1
  store %struct.arc* %incdec.ptr34, %struct.arc** %arc, align 8
  br label %for.cond14

for.end35:                                        ; preds = %for.cond14
  %56 = load i64, i64* %fleet, align 8
  %conv = sitofp i64 %56 to double
  %57 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM36 = getelementptr inbounds %struct.network, %struct.network* %57, i32 0, i32 18
  %58 = load i64, i64* %bigM36, align 8
  %conv37 = sitofp i64 %58 to double
  %mul = fmul double %conv, %conv37
  %59 = load i64, i64* %operational_cost, align 8
  %conv38 = sitofp i64 %59 to double
  %add39 = fadd double %mul, %conv38
  ret double %add39
}

; Function Attrs: noinline nounwind uwtable
define double @flow_org_cost(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  %stop = alloca i8*, align 8
  %fleet = alloca i64, align 8
  %operational_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 0, i64* %fleet, align 8
  store i64 0, i64* %operational_cost, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 24
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %2 = bitcast %struct.arc* %1 to i8*
  store i8* %2, i8** %stop, align 8
  %3 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 23
  %4 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %4, %struct.arc** %arc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.arc*, %struct.arc** %arc, align 8
  %6 = load i8*, i8** %stop, align 8
  %7 = bitcast i8* %6 to %struct.arc*
  %cmp = icmp ne %struct.arc* %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %8, i32 0, i32 3
  %9 = load i32, i32* %ident, align 8
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %10, i32 0, i32 6
  store i64 1, i64* %flow, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow2 = getelementptr inbounds %struct.arc, %struct.arc* %11, i32 0, i32 6
  store i64 0, i64* %flow2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %12, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 22
  %14 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %15 = bitcast %struct.node* %14 to i8*
  store i8* %15, i8** %stop, align 8
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 21
  %17 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %17, %struct.node** %node, align 8
  %18 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.node, %struct.node* %18, i32 1
  store %struct.node* %incdec.ptr3, %struct.node** %node, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %19 = load %struct.node*, %struct.node** %node, align 8
  %20 = load i8*, i8** %stop, align 8
  %21 = bitcast i8* %20 to %struct.node*
  %cmp5 = icmp ne %struct.node* %19, %21
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %22 = load %struct.node*, %struct.node** %node, align 8
  %flow7 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow7, align 8
  %24 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 6
  %25 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  %flow8 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 6
  store i64 %23, i64* %flow8, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %26 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.node, %struct.node* %26, i32 1
  store %struct.node* %incdec.ptr10, %struct.node** %node, align 8
  br label %for.cond4

for.end11:                                        ; preds = %for.cond4
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs12 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 24
  %28 = load %struct.arc*, %struct.arc** %stop_arcs12, align 8
  %29 = bitcast %struct.arc* %28 to i8*
  store i8* %29, i8** %stop, align 8
  %30 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs13 = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 23
  %31 = load %struct.arc*, %struct.arc** %arcs13, align 8
  store %struct.arc* %31, %struct.arc** %arc, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc33, %for.end11
  %32 = load %struct.arc*, %struct.arc** %arc, align 8
  %33 = load i8*, i8** %stop, align 8
  %34 = bitcast i8* %33 to %struct.arc*
  %cmp15 = icmp ne %struct.arc* %32, %34
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond14
  %35 = load %struct.arc*, %struct.arc** %arc, align 8
  %flow17 = getelementptr inbounds %struct.arc, %struct.arc* %35, i32 0, i32 6
  %36 = load i64, i64* %flow17, align 8
  %tobool = icmp ne i64 %36, 0
  br i1 %tobool, label %if.then18, label %if.end32

if.then18:                                        ; preds = %for.body16
  %37 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %37, i32 0, i32 1
  %38 = load %struct.node*, %struct.node** %tail, align 8
  %number = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 12
  %39 = load i32, i32* %number, align 8
  %cmp19 = icmp slt i32 %39, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then22

land.lhs.true:                                    ; preds = %if.then18
  %40 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 2
  %41 = load %struct.node*, %struct.node** %head, align 8
  %number20 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 12
  %42 = load i32, i32* %number20, align 8
  %cmp21 = icmp sgt i32 %42, 0
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %land.lhs.true, %if.then18
  %43 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail23 = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 1
  %44 = load %struct.node*, %struct.node** %tail23, align 8
  %number24 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 12
  %45 = load i32, i32* %number24, align 8
  %tobool25 = icmp ne i32 %45, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.then22
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 7
  %47 = load i64, i64* %org_cost, align 8
  %48 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 18
  %49 = load i64, i64* %bigM, align 8
  %sub = sub nsw i64 %47, %49
  %50 = load i64, i64* %operational_cost, align 8
  %add = add nsw i64 %50, %sub
  store i64 %add, i64* %operational_cost, align 8
  %51 = load i64, i64* %fleet, align 8
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %fleet, align 8
  br label %if.end30

if.else27:                                        ; preds = %if.then22
  %52 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost28 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 7
  %53 = load i64, i64* %org_cost28, align 8
  %54 = load i64, i64* %operational_cost, align 8
  %add29 = add nsw i64 %54, %53
  store i64 %add29, i64* %operational_cost, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.body16
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %55 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.arc, %struct.arc* %55, i32 1
  store %struct.arc* %incdec.ptr34, %struct.arc** %arc, align 8
  br label %for.cond14

for.end35:                                        ; preds = %for.cond14
  %56 = load i64, i64* %fleet, align 8
  %conv = sitofp i64 %56 to double
  %57 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM36 = getelementptr inbounds %struct.network, %struct.network* %57, i32 0, i32 18
  %58 = load i64, i64* %bigM36, align 8
  %conv37 = sitofp i64 %58 to double
  %mul = fmul double %conv, %conv37
  %59 = load i64, i64* %operational_cost, align 8
  %conv38 = sitofp i64 %59 to double
  %add39 = fadd double %mul, %conv38
  ret double %add39
}

; Function Attrs: noinline nounwind uwtable
define i64 @primal_feasible(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %stop = alloca i8*, align 8
  %node = alloca %struct.node*, align 8
  %dummy = alloca %struct.arc*, align 8
  %stop_dummy = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %flow = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 25
  %1 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8
  store %struct.arc* %1, %struct.arc** %dummy, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_dummy1 = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 26
  %3 = load %struct.arc*, %struct.arc** %stop_dummy1, align 8
  store %struct.arc* %3, %struct.arc** %stop_dummy, align 8
  %4 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %4, i32 0, i32 21
  %5 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %5, %struct.node** %node, align 8
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 22
  %7 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %8 = bitcast %struct.node* %7 to i8*
  store i8* %8, i8** %stop, align 8
  %9 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %9, i32 1
  store %struct.node* %incdec.ptr, %struct.node** %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.node*, %struct.node** %node, align 8
  %11 = load i8*, i8** %stop, align 8
  %12 = bitcast i8* %11 to %struct.node*
  %cmp = icmp ult %struct.node* %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 6
  %14 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  store %struct.arc* %14, %struct.arc** %arc, align 8
  %15 = load %struct.node*, %struct.node** %node, align 8
  %flow2 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 10
  %16 = load i64, i64* %flow2, align 8
  store i64 %16, i64* %flow, align 8
  %17 = load %struct.arc*, %struct.arc** %arc, align 8
  %18 = load %struct.arc*, %struct.arc** %dummy, align 8
  %cmp3 = icmp uge %struct.arc* %17, %18
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.arc*, %struct.arc** %arc, align 8
  %20 = load %struct.arc*, %struct.arc** %stop_dummy, align 8
  %cmp4 = icmp ult %struct.arc* %19, %20
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %21 = load i64, i64* %flow, align 8
  %cmp5 = icmp sge i64 %21, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %22 = load i64, i64* %flow, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load i64, i64* %flow, align 8
  %sub = sub nsw i64 0, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ %sub, %cond.false ]
  %24 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 16
  %25 = load i64, i64* %feas_tol, align 8
  %cmp6 = icmp sgt i64 %cond, %25
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %26 = load %struct.node*, %struct.node** %node, align 8
  %number = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 12
  %27 = load i32, i32* %number, align 8
  %28 = load i64, i64* %flow, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1.17, i32 0, i32 0), i32 %27, i64 %28)
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %for.body
  %29 = load i64, i64* %flow, align 8
  %30 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol9 = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 16
  %31 = load i64, i64* %feas_tol9, align 8
  %sub10 = sub nsw i64 0, %31
  %cmp11 = icmp slt i64 %29, %sub10
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load i64, i64* %flow, align 8
  %sub12 = sub nsw i64 %32, 1
  %33 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol13 = getelementptr inbounds %struct.network, %struct.network* %33, i32 0, i32 16
  %34 = load i64, i64* %feas_tol13, align 8
  %cmp14 = icmp sgt i64 %sub12, %34
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %lor.lhs.false, %if.else
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %35 = load i64, i64* %flow, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.18, i32 0, i32 0), i64 %35)
  %36 = load %struct.network*, %struct.network** %net.addr, align 8
  %feasible = getelementptr inbounds %struct.network, %struct.network* %36, i32 0, i32 13
  store i64 0, i64* %feasible, align 8
  store i64 1, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %37 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %37, i32 1
  store %struct.node* %incdec.ptr20, %struct.node** %node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.network*, %struct.network** %net.addr, align 8
  %feasible21 = getelementptr inbounds %struct.network, %struct.network* %38, i32 0, i32 13
  store i64 1, i64* %feasible21, align 8
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then15
  %39 = load i64, i64* %retval, align 8
  ret i64 %39
}

; Function Attrs: noinline nounwind uwtable
define i64 @dual_feasible(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca %struct.arc*, align 8
  %red_cost = alloca i64, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 24
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  store %struct.arc* %1, %struct.arc** %stop, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 23
  %3 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %3, %struct.arc** %arc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.arc*, %struct.arc** %arc, align 8
  %5 = load %struct.arc*, %struct.arc** %stop, align 8
  %cmp = icmp ult %struct.arc* %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %6, i32 0, i32 0
  %7 = load i64, i64* %cost, align 8
  %8 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %8, i32 0, i32 1
  %9 = load %struct.node*, %struct.node** %tail, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %10 = load i64, i64* %potential, align 8
  %sub = sub nsw i64 %7, %10
  %11 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %11, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %head, align 8
  %potential1 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %13 = load i64, i64* %potential1, align 8
  %add = add nsw i64 %sub, %13
  store i64 %add, i64* %red_cost, align 8
  %14 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 3
  %15 = load i32, i32* %ident, align 8
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 -1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %16 = load i64, i64* %red_cost, align 8
  %17 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %17, i32 0, i32 16
  %18 = load i64, i64* %feas_tol, align 8
  %sub2 = sub nsw i64 0, %18
  %cmp3 = icmp slt i64 %16, %sub2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %DUAL_INFEAS

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %19 = load i64, i64* %red_cost, align 8
  %20 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol5 = getelementptr inbounds %struct.network, %struct.network* %20, i32 0, i32 16
  %21 = load i64, i64* %feas_tol5, align 8
  %cmp6 = icmp sgt i64 %19, %21
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb4
  br label %DUAL_INFEAS

if.end8:                                          ; preds = %sw.bb4
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %22 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %retval, align 8
  br label %return

DUAL_INFEAS:                                      ; preds = %if.then7, %if.then
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.19, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4.20, i32 0, i32 0))
  store i64 1, i64* %retval, align 8
  br label %return

return:                                           ; preds = %DUAL_INFEAS, %for.end
  %25 = load i64, i64* %retval, align 8
  ret i64 %25
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define i64 @getfree(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 21
  %1 = load %struct.node*, %struct.node** %nodes, align 8
  %tobool = icmp ne %struct.node* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes1 = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 21
  %3 = load %struct.node*, %struct.node** %nodes1, align 8
  %4 = bitcast %struct.node* %3 to i8*
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %5, i32 0, i32 23
  %6 = load %struct.arc*, %struct.arc** %arcs, align 8
  %tobool2 = icmp ne %struct.arc* %6, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs4 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 23
  %8 = load %struct.arc*, %struct.arc** %arcs4, align 8
  %9 = bitcast %struct.arc* %8 to i8*
  call void @free(i8* %9) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %10, i32 0, i32 25
  %11 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8
  %tobool6 = icmp ne %struct.arc* %11, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %12 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs8 = getelementptr inbounds %struct.network, %struct.network* %12, i32 0, i32 25
  %13 = load %struct.arc*, %struct.arc** %dummy_arcs8, align 8
  %14 = bitcast %struct.arc* %13 to i8*
  call void @free(i8* %14) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %15 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %15, i32 0, i32 22
  store %struct.node* null, %struct.node** %stop_nodes, align 8
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes10 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 21
  store %struct.node* null, %struct.node** %nodes10, align 8
  %17 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %17, i32 0, i32 24
  store %struct.arc* null, %struct.arc** %stop_arcs, align 8
  %18 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs11 = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 23
  store %struct.arc* null, %struct.arc** %arcs11, align 8
  %19 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_dummy = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 26
  store %struct.arc* null, %struct.arc** %stop_dummy, align 8
  %20 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs12 = getelementptr inbounds %struct.network, %struct.network* %20, i32 0, i32 25
  store %struct.arc* null, %struct.arc** %dummy_arcs12, align 8
  ret i64 0
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i64 @write_circulations(i8* %outfile, %struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %outfile.addr = alloca i8*, align 8
  %net.addr = alloca %struct.network*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %block = alloca %struct.arc*, align 8
  %arc = alloca %struct.arc*, align 8
  %arc2 = alloca %struct.arc*, align 8
  %first_impl = alloca %struct.arc*, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 24
  %1 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_impl = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 7
  %3 = load i64, i64* %m_impl, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %1, i64 %idx.neg
  store %struct.arc* %add.ptr, %struct.arc** %first_impl, align 8
  %4 = load i8*, i8** %outfile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %out, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.network*, %struct.network** %net.addr, align 8
  call void @refresh_neighbour_lists(%struct.network* %5)
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 21
  %7 = load %struct.node*, %struct.node** %nodes, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %n = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 2
  %9 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds %struct.node, %struct.node* %7, i64 %9
  %firstout = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 7
  %10 = load %struct.arc*, %struct.arc** %firstout, align 8
  store %struct.arc* %10, %struct.arc** %block, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %if.end
  %11 = load %struct.arc*, %struct.arc** %block, align 8
  %tobool = icmp ne %struct.arc* %11, null
  br i1 %tobool, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %12 = load %struct.arc*, %struct.arc** %block, align 8
  %flow = getelementptr inbounds %struct.arc, %struct.arc* %12, i32 0, i32 6
  %13 = load i64, i64* %flow, align 8
  %tobool1 = icmp ne i64 %13, 0
  br i1 %tobool1, label %if.then2, label %if.end29

if.then2:                                         ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.26, i32 0, i32 0))
  %15 = load %struct.arc*, %struct.arc** %block, align 8
  store %struct.arc* %15, %struct.arc** %arc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.then2
  %16 = load %struct.arc*, %struct.arc** %arc, align 8
  %tobool4 = icmp ne %struct.arc* %16, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.arc*, %struct.arc** %arc, align 8
  %18 = load %struct.arc*, %struct.arc** %first_impl, align 8
  %cmp5 = icmp uge %struct.arc* %17, %18
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.27, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %21 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %21, i32 0, i32 2
  %22 = load %struct.node*, %struct.node** %head, align 8
  %number = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 12
  %23 = load i32, i32* %number, align 8
  %sub = sub nsw i32 0, %23
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.28, i32 0, i32 0), i32 %sub)
  %24 = load %struct.arc*, %struct.arc** %arc, align 8
  %head10 = getelementptr inbounds %struct.arc, %struct.arc* %24, i32 0, i32 2
  %25 = load %struct.node*, %struct.node** %head10, align 8
  %26 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %26, i32 0, i32 3
  %27 = load i64, i64* %n_trips, align 8
  %arrayidx11 = getelementptr inbounds %struct.node, %struct.node* %25, i64 %27
  %firstout12 = getelementptr inbounds %struct.node, %struct.node* %arrayidx11, i32 0, i32 7
  %28 = load %struct.arc*, %struct.arc** %firstout12, align 8
  store %struct.arc* %28, %struct.arc** %arc2, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %if.end8
  %29 = load %struct.arc*, %struct.arc** %arc2, align 8
  %tobool14 = icmp ne %struct.arc* %29, null
  br i1 %tobool14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %30 = load %struct.arc*, %struct.arc** %arc2, align 8
  %flow16 = getelementptr inbounds %struct.arc, %struct.arc* %30, i32 0, i32 6
  %31 = load i64, i64* %flow16, align 8
  %tobool17 = icmp ne i64 %31, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body15
  br label %for.end

if.end19:                                         ; preds = %for.body15
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %32 = load %struct.arc*, %struct.arc** %arc2, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 4
  %33 = load %struct.arc*, %struct.arc** %nextout, align 8
  store %struct.arc* %33, %struct.arc** %arc2, align 8
  br label %for.cond13

for.end:                                          ; preds = %if.then18, %for.cond13
  %34 = load %struct.arc*, %struct.arc** %arc2, align 8
  %tobool20 = icmp ne %struct.arc* %34, null
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %for.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %35)
  store i64 -1, i64* %retval, align 8
  br label %return

if.end23:                                         ; preds = %for.end
  %36 = load %struct.arc*, %struct.arc** %arc2, align 8
  %head24 = getelementptr inbounds %struct.arc, %struct.arc* %36, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %head24, align 8
  %number25 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 12
  %38 = load i32, i32* %number25, align 8
  %tobool26 = icmp ne i32 %38, 0
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  %39 = load %struct.arc*, %struct.arc** %arc2, align 8
  store %struct.arc* %39, %struct.arc** %arc, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end23
  store %struct.arc* null, %struct.arc** %arc, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end29

if.end29:                                         ; preds = %while.end, %for.body
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %40 = load %struct.arc*, %struct.arc** %block, align 8
  %nextout31 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 4
  %41 = load %struct.arc*, %struct.arc** %nextout31, align 8
  store %struct.arc* %41, %struct.arc** %block, align 8
  br label %for.cond

for.end32:                                        ; preds = %for.cond
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %42)
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end32, %if.then21, %if.then
  %43 = load i64, i64* %retval, align 8
  ret i64 %43
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @bea_is_dual_infeasible(%struct.arc* %arc, i64 %red_cost) #0 {
entry:
  %arc.addr = alloca %struct.arc*, align 8
  %red_cost.addr = alloca i64, align 8
  store %struct.arc* %arc, %struct.arc** %arc.addr, align 8
  store i64 %red_cost, i64* %red_cost.addr, align 8
  %0 = load i64, i64* %red_cost.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.arc*, %struct.arc** %arc.addr, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %1, i32 0, i32 3
  %2 = load i32, i32* %ident, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %red_cost.addr, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load %struct.arc*, %struct.arc** %arc.addr, align 8
  %ident3 = getelementptr inbounds %struct.arc, %struct.arc* %4, i32 0, i32 3
  %5 = load i32, i32* %ident3, align 8
  %cmp4 = icmp eq i32 %5, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind uwtable
define void @sort_basket(i64 %min, i64 %max) #0 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %r = alloca i64, align 8
  %cut = alloca i64, align 8
  %xchange = alloca %struct.basket*, align 8
  store i64 %min, i64* %min.addr, align 8
  store i64 %max, i64* %max.addr, align 8
  %0 = load i64, i64* %min.addr, align 8
  store i64 %0, i64* %l, align 8
  %1 = load i64, i64* %max.addr, align 8
  store i64 %1, i64* %r, align 8
  %2 = load i64, i64* %l, align 8
  %3 = load i64, i64* %r, align 8
  %add = add nsw i64 %2, %3
  %div = sdiv i64 %add, 2
  %arrayidx = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %div
  %4 = load %struct.basket*, %struct.basket** %arrayidx, align 8
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %4, i32 0, i32 2
  %5 = load i64, i64* %abs_cost, align 8
  store i64 %5, i64* %cut, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %6 = load i64, i64* %l, align 8
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %6
  %7 = load %struct.basket*, %struct.basket** %arrayidx1, align 8
  %abs_cost2 = getelementptr inbounds %struct.basket, %struct.basket* %7, i32 0, i32 2
  %8 = load i64, i64* %abs_cost2, align 8
  %9 = load i64, i64* %cut, align 8
  %cmp = icmp sgt i64 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %l, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %l, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %while.body7, %while.end
  %11 = load i64, i64* %cut, align 8
  %12 = load i64, i64* %r, align 8
  %arrayidx4 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %12
  %13 = load %struct.basket*, %struct.basket** %arrayidx4, align 8
  %abs_cost5 = getelementptr inbounds %struct.basket, %struct.basket* %13, i32 0, i32 2
  %14 = load i64, i64* %abs_cost5, align 8
  %cmp6 = icmp sgt i64 %11, %14
  br i1 %cmp6, label %while.body7, label %while.end8

while.body7:                                      ; preds = %while.cond3
  %15 = load i64, i64* %r, align 8
  %dec = add nsw i64 %15, -1
  store i64 %dec, i64* %r, align 8
  br label %while.cond3

while.end8:                                       ; preds = %while.cond3
  %16 = load i64, i64* %l, align 8
  %17 = load i64, i64* %r, align 8
  %cmp9 = icmp slt i64 %16, %17
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end8
  %18 = load i64, i64* %l, align 8
  %arrayidx10 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %18
  %19 = load %struct.basket*, %struct.basket** %arrayidx10, align 8
  store %struct.basket* %19, %struct.basket** %xchange, align 8
  %20 = load i64, i64* %r, align 8
  %arrayidx11 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %20
  %21 = load %struct.basket*, %struct.basket** %arrayidx11, align 8
  %22 = load i64, i64* %l, align 8
  %arrayidx12 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %22
  store %struct.basket* %21, %struct.basket** %arrayidx12, align 8
  %23 = load %struct.basket*, %struct.basket** %xchange, align 8
  %24 = load i64, i64* %r, align 8
  %arrayidx13 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %24
  store %struct.basket* %23, %struct.basket** %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end8
  %25 = load i64, i64* %l, align 8
  %26 = load i64, i64* %r, align 8
  %cmp14 = icmp sle i64 %25, %26
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end
  %27 = load i64, i64* %l, align 8
  %inc16 = add nsw i64 %27, 1
  store i64 %inc16, i64* %l, align 8
  %28 = load i64, i64* %r, align 8
  %dec17 = add nsw i64 %28, -1
  store i64 %dec17, i64* %r, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end18
  %29 = load i64, i64* %l, align 8
  %30 = load i64, i64* %r, align 8
  %cmp19 = icmp sle i64 %29, %30
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load i64, i64* %min.addr, align 8
  %32 = load i64, i64* %r, align 8
  %cmp20 = icmp slt i64 %31, %32
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end
  %33 = load i64, i64* %min.addr, align 8
  %34 = load i64, i64* %r, align 8
  call void @sort_basket(i64 %33, i64 %34)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end
  %35 = load i64, i64* %l, align 8
  %36 = load i64, i64* %max.addr, align 8
  %cmp23 = icmp slt i64 %35, %36
  br i1 %cmp23, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end22
  %37 = load i64, i64* %l, align 8
  %cmp24 = icmp sle i64 %37, 50
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  %38 = load i64, i64* %l, align 8
  %39 = load i64, i64* %max.addr, align 8
  call void @sort_basket(i64 %38, i64 %39)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true, %if.end22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.arc* @primal_bea_mpp(i64 %m, %struct.arc* %arcs, %struct.arc* %stop_arcs, i64* %red_cost_of_bea) #0 {
entry:
  %retval = alloca %struct.arc*, align 8
  %m.addr = alloca i64, align 8
  %arcs.addr = alloca %struct.arc*, align 8
  %stop_arcs.addr = alloca %struct.arc*, align 8
  %red_cost_of_bea.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %next = alloca i64, align 8
  %old_group_pos = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %red_cost = alloca i64, align 8
  store i64 %m, i64* %m.addr, align 8
  store %struct.arc* %arcs, %struct.arc** %arcs.addr, align 8
  store %struct.arc* %stop_arcs, %struct.arc** %stop_arcs.addr, align 8
  store i64* %red_cost_of_bea, i64** %red_cost_of_bea.addr, align 8
  %0 = load i64, i64* @initialize, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %1, 351
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [351 x %struct.basket], [351 x %struct.basket]* @basket, i64 0, i64 %2
  %3 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %3
  store %struct.basket* %arrayidx, %struct.basket** %arrayidx1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* %m.addr, align 8
  %sub = sub nsw i64 %5, 1
  %div = sdiv i64 %sub, 300
  %add = add nsw i64 %div, 1
  store i64 %add, i64* @nr_group, align 8
  store i64 0, i64* @group_pos, align 8
  store i64 0, i64* @basket_size, align 8
  store i64 0, i64* @initialize, align 8
  br label %if.end28

if.else:                                          ; preds = %entry
  store i64 2, i64* %i, align 8
  store i64 0, i64* %next, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %if.else
  %6 = load i64, i64* %i, align 8
  %cmp3 = icmp sle i64 %6, 50
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* @basket_size, align 8
  %cmp4 = icmp sle i64 %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %9 = phi i1 [ false, %for.cond2 ], [ %cmp4, %land.rhs ]
  br i1 %9, label %for.body5, label %for.end27

for.body5:                                        ; preds = %land.end
  %10 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %10
  %11 = load %struct.basket*, %struct.basket** %arrayidx6, align 8
  %a = getelementptr inbounds %struct.basket, %struct.basket* %11, i32 0, i32 0
  %12 = load %struct.arc*, %struct.arc** %a, align 8
  store %struct.arc* %12, %struct.arc** %arc, align 8
  %13 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %13, i32 0, i32 0
  %14 = load i64, i64* %cost, align 8
  %15 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %15, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %tail, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load i64, i64* %potential, align 8
  %sub7 = sub nsw i64 %14, %17
  %18 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %head, align 8
  %potential8 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %20 = load i64, i64* %potential8, align 8
  %add9 = add nsw i64 %sub7, %20
  store i64 %add9, i64* %red_cost, align 8
  %21 = load i64, i64* %red_cost, align 8
  %cmp10 = icmp slt i64 %21, 0
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body5
  %22 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 3
  %23 = load i32, i32* %ident, align 8
  %cmp11 = icmp eq i32 %23, 1
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body5
  %24 = load i64, i64* %red_cost, align 8
  %cmp12 = icmp sgt i64 %24, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %25 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident14 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 3
  %26 = load i32, i32* %ident14, align 8
  %cmp15 = icmp eq i32 %26, 2
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true13, %land.lhs.true
  %27 = load i64, i64* %next, align 8
  %inc17 = add nsw i64 %27, 1
  store i64 %inc17, i64* %next, align 8
  %28 = load %struct.arc*, %struct.arc** %arc, align 8
  %29 = load i64, i64* %next, align 8
  %arrayidx18 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %29
  %30 = load %struct.basket*, %struct.basket** %arrayidx18, align 8
  %a19 = getelementptr inbounds %struct.basket, %struct.basket* %30, i32 0, i32 0
  store %struct.arc* %28, %struct.arc** %a19, align 8
  %31 = load i64, i64* %red_cost, align 8
  %32 = load i64, i64* %next, align 8
  %arrayidx20 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %32
  %33 = load %struct.basket*, %struct.basket** %arrayidx20, align 8
  %cost21 = getelementptr inbounds %struct.basket, %struct.basket* %33, i32 0, i32 1
  store i64 %31, i64* %cost21, align 8
  %34 = load i64, i64* %red_cost, align 8
  %cmp22 = icmp sge i64 %34, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  %35 = load i64, i64* %red_cost, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %36 = load i64, i64* %red_cost, align 8
  %sub23 = sub nsw i64 0, %36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %35, %cond.true ], [ %sub23, %cond.false ]
  %37 = load i64, i64* %next, align 8
  %arrayidx24 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %37
  %38 = load %struct.basket*, %struct.basket** %arrayidx24, align 8
  %abs_cost = getelementptr inbounds %struct.basket, %struct.basket* %38, i32 0, i32 2
  store i64 %cond, i64* %abs_cost, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true13, %lor.lhs.false
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %39 = load i64, i64* %i, align 8
  %inc26 = add nsw i64 %39, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond2

for.end27:                                        ; preds = %land.end
  %40 = load i64, i64* %next, align 8
  store i64 %40, i64* @basket_size, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end
  %41 = load i64, i64* @group_pos, align 8
  store i64 %41, i64* %old_group_pos, align 8
  br label %NEXT

NEXT:                                             ; preds = %if.then69, %if.end28
  %42 = load %struct.arc*, %struct.arc** %arcs.addr, align 8
  %43 = load i64, i64* @group_pos, align 8
  %add.ptr = getelementptr inbounds %struct.arc, %struct.arc* %42, i64 %43
  store %struct.arc* %add.ptr, %struct.arc** %arc, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc59, %NEXT
  %44 = load %struct.arc*, %struct.arc** %arc, align 8
  %45 = load %struct.arc*, %struct.arc** %stop_arcs.addr, align 8
  %cmp30 = icmp ult %struct.arc* %44, %45
  br i1 %cmp30, label %for.body31, label %for.end61

for.body31:                                       ; preds = %for.cond29
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident32 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 3
  %47 = load i32, i32* %ident32, align 8
  %cmp33 = icmp sgt i32 %47, 0
  br i1 %cmp33, label %if.then34, label %if.end58

if.then34:                                        ; preds = %for.body31
  %48 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost35 = getelementptr inbounds %struct.arc, %struct.arc* %48, i32 0, i32 0
  %49 = load i64, i64* %cost35, align 8
  %50 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail36 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 1
  %51 = load %struct.node*, %struct.node** %tail36, align 8
  %potential37 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 0
  %52 = load i64, i64* %potential37, align 8
  %sub38 = sub nsw i64 %49, %52
  %53 = load %struct.arc*, %struct.arc** %arc, align 8
  %head39 = getelementptr inbounds %struct.arc, %struct.arc* %53, i32 0, i32 2
  %54 = load %struct.node*, %struct.node** %head39, align 8
  %potential40 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %55 = load i64, i64* %potential40, align 8
  %add41 = add nsw i64 %sub38, %55
  store i64 %add41, i64* %red_cost, align 8
  %56 = load %struct.arc*, %struct.arc** %arc, align 8
  %57 = load i64, i64* %red_cost, align 8
  %call = call i32 @bea_is_dual_infeasible(%struct.arc* %56, i64 %57)
  %tobool42 = icmp ne i32 %call, 0
  br i1 %tobool42, label %if.then43, label %if.end57

if.then43:                                        ; preds = %if.then34
  %58 = load i64, i64* @basket_size, align 8
  %inc44 = add nsw i64 %58, 1
  store i64 %inc44, i64* @basket_size, align 8
  %59 = load %struct.arc*, %struct.arc** %arc, align 8
  %60 = load i64, i64* @basket_size, align 8
  %arrayidx45 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %60
  %61 = load %struct.basket*, %struct.basket** %arrayidx45, align 8
  %a46 = getelementptr inbounds %struct.basket, %struct.basket* %61, i32 0, i32 0
  store %struct.arc* %59, %struct.arc** %a46, align 8
  %62 = load i64, i64* %red_cost, align 8
  %63 = load i64, i64* @basket_size, align 8
  %arrayidx47 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %63
  %64 = load %struct.basket*, %struct.basket** %arrayidx47, align 8
  %cost48 = getelementptr inbounds %struct.basket, %struct.basket* %64, i32 0, i32 1
  store i64 %62, i64* %cost48, align 8
  %65 = load i64, i64* %red_cost, align 8
  %cmp49 = icmp sge i64 %65, 0
  br i1 %cmp49, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %if.then43
  %66 = load i64, i64* %red_cost, align 8
  br label %cond.end53

cond.false51:                                     ; preds = %if.then43
  %67 = load i64, i64* %red_cost, align 8
  %sub52 = sub nsw i64 0, %67
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false51, %cond.true50
  %cond54 = phi i64 [ %66, %cond.true50 ], [ %sub52, %cond.false51 ]
  %68 = load i64, i64* @basket_size, align 8
  %arrayidx55 = getelementptr inbounds [351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 %68
  %69 = load %struct.basket*, %struct.basket** %arrayidx55, align 8
  %abs_cost56 = getelementptr inbounds %struct.basket, %struct.basket* %69, i32 0, i32 2
  store i64 %cond54, i64* %abs_cost56, align 8
  br label %if.end57

if.end57:                                         ; preds = %cond.end53, %if.then34
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %for.body31
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %70 = load i64, i64* @nr_group, align 8
  %71 = load %struct.arc*, %struct.arc** %arc, align 8
  %add.ptr60 = getelementptr inbounds %struct.arc, %struct.arc* %71, i64 %70
  store %struct.arc* %add.ptr60, %struct.arc** %arc, align 8
  br label %for.cond29

for.end61:                                        ; preds = %for.cond29
  %72 = load i64, i64* @group_pos, align 8
  %inc62 = add nsw i64 %72, 1
  store i64 %inc62, i64* @group_pos, align 8
  %73 = load i64, i64* @nr_group, align 8
  %cmp63 = icmp eq i64 %inc62, %73
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.end61
  store i64 0, i64* @group_pos, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.end61
  %74 = load i64, i64* @basket_size, align 8
  %cmp66 = icmp slt i64 %74, 50
  br i1 %cmp66, label %land.lhs.true67, label %if.end70

land.lhs.true67:                                  ; preds = %if.end65
  %75 = load i64, i64* @group_pos, align 8
  %76 = load i64, i64* %old_group_pos, align 8
  %cmp68 = icmp ne i64 %75, %76
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %land.lhs.true67
  br label %NEXT

if.end70:                                         ; preds = %land.lhs.true67, %if.end65
  %77 = load i64, i64* @basket_size, align 8
  %cmp71 = icmp eq i64 %77, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  store i64 1, i64* @initialize, align 8
  %78 = load i64*, i64** %red_cost_of_bea.addr, align 8
  store i64 0, i64* %78, align 8
  store %struct.arc* null, %struct.arc** %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.end70
  %79 = load i64, i64* @basket_size, align 8
  call void @sort_basket(i64 1, i64 %79)
  %80 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 1), align 8
  %cost74 = getelementptr inbounds %struct.basket, %struct.basket* %80, i32 0, i32 1
  %81 = load i64, i64* %cost74, align 8
  %82 = load i64*, i64** %red_cost_of_bea.addr, align 8
  store i64 %81, i64* %82, align 8
  %83 = load %struct.basket*, %struct.basket** getelementptr inbounds ([351 x %struct.basket*], [351 x %struct.basket*]* @perm, i64 0, i64 1), align 8
  %a75 = getelementptr inbounds %struct.basket, %struct.basket* %83, i32 0, i32 0
  %84 = load %struct.arc*, %struct.arc** %a75, align 8
  store %struct.arc* %84, %struct.arc** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.then72
  %85 = load %struct.arc*, %struct.arc** %retval, align 8
  ret %struct.arc* %85
}

; Function Attrs: noinline nounwind uwtable
define %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %delta.addr = alloca i64*, align 8
  %xchange.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  ret %struct.node* %58
}

; Function Attrs: noinline nounwind uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* %w) #0 {
entry:
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node*, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node* %w, %struct.node** %w.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 10
  store i64 0, i64* %flow, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow1 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 10
  store i64 1, i64* %flow1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 3
  %7 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %7, %struct.node** %iplus.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %8 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %9 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp3 = icmp ne %struct.node* %8, %9
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %10 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation5 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %11 = load i32, i32* %orientation5, align 8
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %for.body4
  %12 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow8 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 10
  store i64 1, i64* %flow8, align 8
  br label %if.end11

if.else9:                                         ; preds = %for.body4
  %13 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  store i64 0, i64* %flow10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %14 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred13 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %15 = load %struct.node*, %struct.node** %pred13, align 8
  store %struct.node* %15, %struct.node** %jplus.addr, align 8
  br label %for.cond2

for.end14:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @primal_net_simplex(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %delta = alloca i64, align 8
  %new_flow = alloca i64, align 8
  %opt = alloca i64, align 8
  %xchange = alloca i64, align 8
  %new_orientation = alloca i64, align 8
  %iplus = alloca %struct.node*, align 8
  %jplus = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %jminus = alloca %struct.node*, align 8
  %w = alloca %struct.node*, align 8
  %bea = alloca %struct.arc*, align 8
  %bla = alloca %struct.arc*, align 8
  %arcs = alloca %struct.arc*, align 8
  %stop_arcs = alloca %struct.arc*, align 8
  %temp = alloca %struct.node*, align 8
  %m = alloca i64, align 8
  %new_set = alloca i64, align 8
  %red_cost_of_bea = alloca i64, align 8
  %iterations = alloca i64*, align 8
  %bound_exchanges = alloca i64*, align 8
  %checksum = alloca i64*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store i64 0, i64* %opt, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs1 = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 23
  %1 = load %struct.arc*, %struct.arc** %arcs1, align 8
  store %struct.arc* %1, %struct.arc** %arcs, align 8
  %2 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs2 = getelementptr inbounds %struct.network, %struct.network* %2, i32 0, i32 24
  %3 = load %struct.arc*, %struct.arc** %stop_arcs2, align 8
  store %struct.arc* %3, %struct.arc** %stop_arcs, align 8
  %4 = load %struct.network*, %struct.network** %net.addr, align 8
  %m3 = getelementptr inbounds %struct.network, %struct.network* %4, i32 0, i32 5
  %5 = load i64, i64* %m3, align 8
  store i64 %5, i64* %m, align 8
  %6 = load %struct.network*, %struct.network** %net.addr, align 8
  %iterations4 = getelementptr inbounds %struct.network, %struct.network* %6, i32 0, i32 27
  store i64* %iterations4, i64** %iterations, align 8
  %7 = load %struct.network*, %struct.network** %net.addr, align 8
  %bound_exchanges5 = getelementptr inbounds %struct.network, %struct.network* %7, i32 0, i32 28
  store i64* %bound_exchanges5, i64** %bound_exchanges, align 8
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %checksum6 = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 29
  store i64* %checksum6, i64** %checksum, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end57, %entry
  %9 = load i64, i64* %opt, align 8
  %tobool = icmp ne i64 %9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %m, align 8
  %11 = load %struct.arc*, %struct.arc** %arcs, align 8
  %12 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %call = call %struct.arc* @primal_bea_mpp(i64 %10, %struct.arc* %11, %struct.arc* %12, i64* %red_cost_of_bea)
  store %struct.arc* %call, %struct.arc** %bea, align 8
  %tobool7 = icmp ne %struct.arc* %call, null
  br i1 %tobool7, label %if.then, label %if.else56

if.then:                                          ; preds = %while.body
  %13 = load i64*, i64** %iterations, align 8
  %14 = load i64, i64* %13, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %13, align 8
  %15 = load i64, i64* %red_cost_of_bea, align 8
  %cmp = icmp sgt i64 %15, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %16 = load %struct.arc*, %struct.arc** %bea, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %16, i32 0, i32 2
  %17 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %17, %struct.node** %iplus, align 8
  %18 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %18, i32 0, i32 1
  %19 = load %struct.node*, %struct.node** %tail, align 8
  store %struct.node* %19, %struct.node** %jplus, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail9 = getelementptr inbounds %struct.arc, %struct.arc* %20, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %tail9, align 8
  store %struct.node* %21, %struct.node** %iplus, align 8
  %22 = load %struct.arc*, %struct.arc** %bea, align 8
  %head10 = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 2
  %23 = load %struct.node*, %struct.node** %head10, align 8
  store %struct.node* %23, %struct.node** %jplus, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  store i64 1, i64* %delta, align 8
  %24 = load %struct.node*, %struct.node** %iplus, align 8
  %25 = load %struct.node*, %struct.node** %jplus, align 8
  %call11 = call %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %24, %struct.node* %25, %struct.node** %w)
  store %struct.node* %call11, %struct.node** %iminus, align 8
  %26 = load %struct.node*, %struct.node** %iminus, align 8
  %tobool12 = icmp ne %struct.node* %26, null
  br i1 %tobool12, label %if.else24, label %if.then13

if.then13:                                        ; preds = %if.end
  %27 = load i64*, i64** %bound_exchanges, align 8
  %28 = load i64, i64* %27, align 8
  %inc14 = add nsw i64 %28, 1
  store i64 %inc14, i64* %27, align 8
  %29 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %29, i32 0, i32 3
  %30 = load i32, i32* %ident, align 8
  %cmp15 = icmp eq i32 %30, 2
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.then13
  %31 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident17 = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 3
  store i32 1, i32* %ident17, align 8
  br label %if.end20

if.else18:                                        ; preds = %if.then13
  %32 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident19 = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 3
  store i32 2, i32* %ident19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %33 = load i64, i64* %delta, align 8
  %tobool21 = icmp ne i64 %33, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  %34 = load %struct.node*, %struct.node** %iplus, align 8
  %35 = load %struct.node*, %struct.node** %jplus, align 8
  %36 = load %struct.node*, %struct.node** %w, align 8
  call void @primal_update_flow(%struct.node* %34, %struct.node* %35, %struct.node* %36)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  br label %if.end55

if.else24:                                        ; preds = %if.end
  %37 = load i64, i64* %xchange, align 8
  %tobool25 = icmp ne i64 %37, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else24
  %38 = load %struct.node*, %struct.node** %jplus, align 8
  store %struct.node* %38, %struct.node** %temp, align 8
  %39 = load %struct.node*, %struct.node** %iplus, align 8
  store %struct.node* %39, %struct.node** %jplus, align 8
  %40 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %40, %struct.node** %iplus, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else24
  %41 = load %struct.node*, %struct.node** %iminus, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 3
  %42 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %42, %struct.node** %jminus, align 8
  %43 = load %struct.node*, %struct.node** %iminus, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 6
  %44 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  store %struct.arc* %44, %struct.arc** %bla, align 8
  %45 = load i64, i64* %xchange, align 8
  %46 = load %struct.node*, %struct.node** %iminus, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %47 = load i32, i32* %orientation, align 8
  %conv = sext i32 %47 to i64
  %cmp28 = icmp ne i64 %45, %conv
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end27
  store i64 1, i64* %new_set, align 8
  br label %if.end32

if.else31:                                        ; preds = %if.end27
  store i64 2, i64* %new_set, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %48 = load i64, i64* %red_cost_of_bea, align 8
  %cmp33 = icmp sgt i64 %48, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end32
  %49 = load i64, i64* %delta, align 8
  %sub = sub nsw i64 1, %49
  store i64 %sub, i64* %new_flow, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.end32
  %50 = load i64, i64* %delta, align 8
  store i64 %50, i64* %new_flow, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  %51 = load %struct.arc*, %struct.arc** %bea, align 8
  %tail38 = getelementptr inbounds %struct.arc, %struct.arc* %51, i32 0, i32 1
  %52 = load %struct.node*, %struct.node** %tail38, align 8
  %53 = load %struct.node*, %struct.node** %iplus, align 8
  %cmp39 = icmp eq %struct.node* %52, %53
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.end37
  store i64 1, i64* %new_orientation, align 8
  br label %if.end43

if.else42:                                        ; preds = %if.end37
  store i64 0, i64* %new_orientation, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  %54 = load i64, i64* %xchange, align 8
  %tobool44 = icmp ne i64 %54, 0
  %lnot45 = xor i1 %tobool44, true
  %lnot.ext = zext i1 %lnot45 to i32
  %conv46 = sext i32 %lnot.ext to i64
  %55 = load i64, i64* %new_orientation, align 8
  %56 = load i64, i64* %delta, align 8
  %57 = load i64, i64* %new_flow, align 8
  %58 = load %struct.node*, %struct.node** %iplus, align 8
  %59 = load %struct.node*, %struct.node** %jplus, align 8
  %60 = load %struct.node*, %struct.node** %iminus, align 8
  %61 = load %struct.node*, %struct.node** %jminus, align 8
  %62 = load %struct.node*, %struct.node** %w, align 8
  %63 = load %struct.arc*, %struct.arc** %bea, align 8
  %64 = load i64, i64* %red_cost_of_bea, align 8
  %65 = load %struct.network*, %struct.network** %net.addr, align 8
  %feas_tol = getelementptr inbounds %struct.network, %struct.network* %65, i32 0, i32 16
  %66 = load i64, i64* %feas_tol, align 8
  call void @update_tree(i64 %conv46, i64 %55, i64 %56, i64 %57, %struct.node* %58, %struct.node* %59, %struct.node* %60, %struct.node* %61, %struct.node* %62, %struct.arc* %63, i64 %64, i64 %66)
  %67 = load %struct.arc*, %struct.arc** %bea, align 8
  %ident47 = getelementptr inbounds %struct.arc, %struct.arc* %67, i32 0, i32 3
  store i32 0, i32* %ident47, align 8
  %68 = load i64, i64* %new_set, align 8
  %conv48 = trunc i64 %68 to i32
  %69 = load %struct.arc*, %struct.arc** %bla, align 8
  %ident49 = getelementptr inbounds %struct.arc, %struct.arc* %69, i32 0, i32 3
  store i32 %conv48, i32* %ident49, align 8
  %70 = load i64*, i64** %iterations, align 8
  %71 = load i64, i64* %70, align 8
  %sub50 = sub nsw i64 %71, 1
  %rem = srem i64 %sub50, 200
  %tobool51 = icmp ne i64 %rem, 0
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end43
  %72 = load %struct.network*, %struct.network** %net.addr, align 8
  %call53 = call i64 @refresh_potential(%struct.network* %72)
  %73 = load i64*, i64** %checksum, align 8
  %74 = load i64, i64* %73, align 8
  %add = add nsw i64 %74, %call53
  store i64 %add, i64* %73, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end43
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end23
  br label %if.end57

if.else56:                                        ; preds = %while.body
  store i64 1, i64* %opt, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.end55
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %75 = load %struct.network*, %struct.network** %net.addr, align 8
  %call58 = call i64 @refresh_potential(%struct.network* %75)
  %76 = load i64*, i64** %checksum, align 8
  %77 = load i64, i64* %76, align 8
  %add59 = add nsw i64 %77, %call58
  store i64 %add59, i64* %76, align 8
  %78 = load %struct.network*, %struct.network** %net.addr, align 8
  %call60 = call i64 @primal_feasible(%struct.network* %78)
  %79 = load %struct.network*, %struct.network** %net.addr, align 8
  %call61 = call i64 @dual_feasible(%struct.network* %79)
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define i64 @primal_start_artificial(%struct.network* %net) #0 {
entry:
  %net.addr = alloca %struct.network*, align 8
  %node = alloca %struct.node*, align 8
  %root = alloca %struct.node*, align 8
  %arc = alloca %struct.arc*, align 8
  %stop = alloca i8*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 21
  %1 = load %struct.node*, %struct.node** %nodes, align 8
  store %struct.node* %1, %struct.node** %node, align 8
  store %struct.node* %1, %struct.node** %root, align 8
  %2 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr = getelementptr inbounds %struct.node, %struct.node* %2, i32 1
  store %struct.node* %incdec.ptr, %struct.node** %node, align 8
  %3 = load %struct.node*, %struct.node** %root, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 6
  store %struct.arc* null, %struct.arc** %basic_arc, align 8
  %4 = load %struct.node*, %struct.node** %root, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 3
  store %struct.node* null, %struct.node** %pred, align 8
  %5 = load %struct.node*, %struct.node** %node, align 8
  %6 = load %struct.node*, %struct.node** %root, align 8
  %child = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  store %struct.node* %5, %struct.node** %child, align 8
  %7 = load %struct.node*, %struct.node** %root, align 8
  %sibling = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 4
  store %struct.node* null, %struct.node** %sibling, align 8
  %8 = load %struct.node*, %struct.node** %root, align 8
  %sibling_prev = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  store %struct.node* null, %struct.node** %sibling_prev, align 8
  %9 = load %struct.network*, %struct.network** %net.addr, align 8
  %n = getelementptr inbounds %struct.network, %struct.network* %9, i32 0, i32 2
  %10 = load i64, i64* %n, align 8
  %add = add nsw i64 %10, 1
  %11 = load %struct.node*, %struct.node** %root, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 11
  store i64 %add, i64* %depth, align 8
  %12 = load %struct.node*, %struct.node** %root, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  store i32 0, i32* %orientation, align 8
  %13 = load %struct.node*, %struct.node** %root, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  store i64 -100000000, i64* %potential, align 8
  %14 = load %struct.node*, %struct.node** %root, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 10
  store i64 0, i64* %flow, align 8
  %15 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %15, i32 0, i32 24
  %16 = load %struct.arc*, %struct.arc** %stop_arcs, align 8
  %17 = bitcast %struct.arc* %16 to i8*
  store i8* %17, i8** %stop, align 8
  %18 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 23
  %19 = load %struct.arc*, %struct.arc** %arcs, align 8
  store %struct.arc* %19, %struct.arc** %arc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load %struct.arc*, %struct.arc** %arc, align 8
  %21 = load i8*, i8** %stop, align 8
  %22 = bitcast i8* %21 to %struct.arc*
  %cmp = icmp ne %struct.arc* %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident = getelementptr inbounds %struct.arc, %struct.arc* %23, i32 0, i32 3
  %24 = load i32, i32* %ident, align 8
  %cmp1 = icmp ne i32 %24, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %25 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident2 = getelementptr inbounds %struct.arc, %struct.arc* %25, i32 0, i32 3
  store i32 1, i32* %ident2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.arc, %struct.arc* %26, i32 1
  store %struct.arc* %incdec.ptr3, %struct.arc** %arc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 25
  %28 = load %struct.arc*, %struct.arc** %dummy_arcs, align 8
  store %struct.arc* %28, %struct.arc** %arc, align 8
  %29 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %29, i32 0, i32 22
  %30 = load %struct.node*, %struct.node** %stop_nodes, align 8
  %31 = bitcast %struct.node* %30 to i8*
  store i8* %31, i8** %stop, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc18, %for.end
  %32 = load %struct.node*, %struct.node** %node, align 8
  %33 = load i8*, i8** %stop, align 8
  %34 = bitcast i8* %33 to %struct.node*
  %cmp5 = icmp ne %struct.node* %32, %34
  br i1 %cmp5, label %for.body6, label %for.end21

for.body6:                                        ; preds = %for.cond4
  %35 = load %struct.arc*, %struct.arc** %arc, align 8
  %36 = load %struct.node*, %struct.node** %node, align 8
  %basic_arc7 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 6
  store %struct.arc* %35, %struct.arc** %basic_arc7, align 8
  %37 = load %struct.node*, %struct.node** %root, align 8
  %38 = load %struct.node*, %struct.node** %node, align 8
  %pred8 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 3
  store %struct.node* %37, %struct.node** %pred8, align 8
  %39 = load %struct.node*, %struct.node** %node, align 8
  %child9 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  store %struct.node* null, %struct.node** %child9, align 8
  %40 = load %struct.node*, %struct.node** %node, align 8
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %40, i64 1
  %41 = load %struct.node*, %struct.node** %node, align 8
  %sibling10 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  store %struct.node* %add.ptr, %struct.node** %sibling10, align 8
  %42 = load %struct.node*, %struct.node** %node, align 8
  %add.ptr11 = getelementptr inbounds %struct.node, %struct.node* %42, i64 -1
  %43 = load %struct.node*, %struct.node** %node, align 8
  %sibling_prev12 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 5
  store %struct.node* %add.ptr11, %struct.node** %sibling_prev12, align 8
  %44 = load %struct.node*, %struct.node** %node, align 8
  %depth13 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 11
  store i64 1, i64* %depth13, align 8
  %45 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %45, i32 0, i32 0
  store i64 100000000, i64* %cost, align 8
  %46 = load %struct.arc*, %struct.arc** %arc, align 8
  %ident14 = getelementptr inbounds %struct.arc, %struct.arc* %46, i32 0, i32 3
  store i32 0, i32* %ident14, align 8
  %47 = load %struct.node*, %struct.node** %node, align 8
  %orientation15 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 1
  store i32 1, i32* %orientation15, align 8
  %48 = load %struct.node*, %struct.node** %node, align 8
  %potential16 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 0
  store i64 0, i64* %potential16, align 8
  %49 = load %struct.node*, %struct.node** %node, align 8
  %50 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 1
  store %struct.node* %49, %struct.node** %tail, align 8
  %51 = load %struct.node*, %struct.node** %root, align 8
  %52 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 2
  store %struct.node* %51, %struct.node** %head, align 8
  %53 = load %struct.node*, %struct.node** %node, align 8
  %flow17 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 10
  store i64 0, i64* %flow17, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %for.body6
  %54 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.arc, %struct.arc* %54, i32 1
  store %struct.arc* %incdec.ptr19, %struct.arc** %arc, align 8
  %55 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.node, %struct.node* %55, i32 1
  store %struct.node* %incdec.ptr20, %struct.node** %node, align 8
  br label %for.cond4

for.end21:                                        ; preds = %for.cond4
  %56 = load %struct.node*, %struct.node** %node, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.node, %struct.node* %56, i32 -1
  store %struct.node* %incdec.ptr22, %struct.node** %node, align 8
  %57 = load %struct.node*, %struct.node** %root, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.node, %struct.node* %57, i32 1
  store %struct.node* %incdec.ptr23, %struct.node** %root, align 8
  %58 = load %struct.node*, %struct.node** %node, align 8
  %sibling24 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 4
  store %struct.node* null, %struct.node** %sibling24, align 8
  %59 = load %struct.node*, %struct.node** %root, align 8
  %sibling_prev25 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 5
  store %struct.node* null, %struct.node** %sibling_prev25, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define i64 @read_min(%struct.network* %net) #0 {
entry:
  %retval = alloca i64, align 8
  %net.addr = alloca %struct.network*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %instring = alloca [201 x i8], align 16
  %t = alloca i64, align 8
  %h = alloca i64, align 8
  %c = alloca i64, align 8
  %i = alloca i64, align 8
  %arc = alloca %struct.arc*, align 8
  %node = alloca %struct.node*, align 8
  store %struct.network* %net, %struct.network** %net.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  %0 = load %struct.network*, %struct.network** %net.addr, align 8
  %inputfile = getelementptr inbounds %struct.network, %struct.network* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %inputfile, i32 0, i32 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 200, %struct._IO_FILE* %1)
  %arraydecay3 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i32 0, i32 0), i64* %t, i64* %h) #5
  %cmp5 = icmp ne i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %2 = load i64, i64* %t, align 8
  %3 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips = getelementptr inbounds %struct.network, %struct.network* %3, i32 0, i32 3
  store i64 %2, i64* %n_trips, align 8
  %4 = load i64, i64* %h, align 8
  %5 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org = getelementptr inbounds %struct.network, %struct.network* %5, i32 0, i32 6
  store i64 %4, i64* %m_org, align 8
  %6 = load i64, i64* %t, align 8
  %7 = load i64, i64* %t, align 8
  %add = add nsw i64 %6, %7
  %add8 = add nsw i64 %add, 1
  %8 = load %struct.network*, %struct.network** %net.addr, align 8
  %n = getelementptr inbounds %struct.network, %struct.network* %8, i32 0, i32 2
  store i64 %add8, i64* %n, align 8
  %9 = load i64, i64* %t, align 8
  %10 = load i64, i64* %t, align 8
  %add9 = add nsw i64 %9, %10
  %11 = load i64, i64* %t, align 8
  %add10 = add nsw i64 %add9, %11
  %12 = load i64, i64* %h, align 8
  %add11 = add nsw i64 %add10, %12
  %13 = load %struct.network*, %struct.network** %net.addr, align 8
  %m = getelementptr inbounds %struct.network, %struct.network* %13, i32 0, i32 5
  store i64 %add11, i64* %m, align 8
  %14 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips12 = getelementptr inbounds %struct.network, %struct.network* %14, i32 0, i32 3
  %15 = load i64, i64* %n_trips12, align 8
  %cmp13 = icmp sle i64 %15, 15000
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %16 = load %struct.network*, %struct.network** %net.addr, align 8
  %m15 = getelementptr inbounds %struct.network, %struct.network* %16, i32 0, i32 5
  %17 = load i64, i64* %m15, align 8
  %18 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m = getelementptr inbounds %struct.network, %struct.network* %18, i32 0, i32 4
  store i64 %17, i64* %max_m, align 8
  %19 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m = getelementptr inbounds %struct.network, %struct.network* %19, i32 0, i32 9
  store i64 3000000, i64* %max_new_m, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end7
  %20 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m16 = getelementptr inbounds %struct.network, %struct.network* %20, i32 0, i32 4
  store i64 27328512, i64* %max_m16, align 8
  %21 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_new_m17 = getelementptr inbounds %struct.network, %struct.network* %21, i32 0, i32 9
  store i64 28900000, i64* %max_new_m17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %22 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m19 = getelementptr inbounds %struct.network, %struct.network* %22, i32 0, i32 4
  %23 = load i64, i64* %max_m19, align 8
  %24 = load %struct.network*, %struct.network** %net.addr, align 8
  %m20 = getelementptr inbounds %struct.network, %struct.network* %24, i32 0, i32 5
  %25 = load i64, i64* %m20, align 8
  %sub = sub nsw i64 %23, %25
  %26 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_residual_new_m = getelementptr inbounds %struct.network, %struct.network* %26, i32 0, i32 8
  store i64 %sub, i64* %max_residual_new_m, align 8
  %27 = load %struct.network*, %struct.network** %net.addr, align 8
  %n21 = getelementptr inbounds %struct.network, %struct.network* %27, i32 0, i32 2
  %28 = load i64, i64* %n21, align 8
  %add22 = add nsw i64 %28, 1
  %call23 = call noalias i8* @calloc(i64 %add22, i64 104) #5
  %29 = bitcast i8* %call23 to %struct.node*
  %30 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes = getelementptr inbounds %struct.network, %struct.network* %30, i32 0, i32 21
  store %struct.node* %29, %struct.node** %nodes, align 8
  %31 = load %struct.network*, %struct.network** %net.addr, align 8
  %n24 = getelementptr inbounds %struct.network, %struct.network* %31, i32 0, i32 2
  %32 = load i64, i64* %n24, align 8
  %call25 = call noalias i8* @calloc(i64 %32, i64 64) #5
  %33 = bitcast i8* %call25 to %struct.arc*
  %34 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs = getelementptr inbounds %struct.network, %struct.network* %34, i32 0, i32 25
  store %struct.arc* %33, %struct.arc** %dummy_arcs, align 8
  %35 = load %struct.network*, %struct.network** %net.addr, align 8
  %max_m26 = getelementptr inbounds %struct.network, %struct.network* %35, i32 0, i32 4
  %36 = load i64, i64* %max_m26, align 8
  %call27 = call noalias i8* @calloc(i64 %36, i64 64) #5
  %37 = bitcast i8* %call27 to %struct.arc*
  %38 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs = getelementptr inbounds %struct.network, %struct.network* %38, i32 0, i32 23
  store %struct.arc* %37, %struct.arc** %arcs, align 8
  %39 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes28 = getelementptr inbounds %struct.network, %struct.network* %39, i32 0, i32 21
  %40 = load %struct.node*, %struct.node** %nodes28, align 8
  %tobool = icmp ne %struct.node* %40, null
  br i1 %tobool, label %land.lhs.true, label %if.then34

land.lhs.true:                                    ; preds = %if.end18
  %41 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs29 = getelementptr inbounds %struct.network, %struct.network* %41, i32 0, i32 23
  %42 = load %struct.arc*, %struct.arc** %arcs29, align 8
  %tobool30 = icmp ne %struct.arc* %42, null
  br i1 %tobool30, label %land.lhs.true31, label %if.then34

land.lhs.true31:                                  ; preds = %land.lhs.true
  %43 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs32 = getelementptr inbounds %struct.network, %struct.network* %43, i32 0, i32 25
  %44 = load %struct.arc*, %struct.arc** %dummy_arcs32, align 8
  %tobool33 = icmp ne %struct.arc* %44, null
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31, %land.lhs.true, %if.end18
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.37, i32 0, i32 0))
  %45 = load %struct.network*, %struct.network** %net.addr, align 8
  %call36 = call i64 @getfree(%struct.network* %45)
  store i64 -1, i64* %retval, align 8
  br label %return

if.end37:                                         ; preds = %land.lhs.true31
  %46 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes38 = getelementptr inbounds %struct.network, %struct.network* %46, i32 0, i32 21
  %47 = load %struct.node*, %struct.node** %nodes38, align 8
  %48 = load %struct.network*, %struct.network** %net.addr, align 8
  %n39 = getelementptr inbounds %struct.network, %struct.network* %48, i32 0, i32 2
  %49 = load i64, i64* %n39, align 8
  %add.ptr = getelementptr inbounds %struct.node, %struct.node* %47, i64 %49
  %add.ptr40 = getelementptr inbounds %struct.node, %struct.node* %add.ptr, i64 1
  %50 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_nodes = getelementptr inbounds %struct.network, %struct.network* %50, i32 0, i32 22
  store %struct.node* %add.ptr40, %struct.node** %stop_nodes, align 8
  %51 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs41 = getelementptr inbounds %struct.network, %struct.network* %51, i32 0, i32 23
  %52 = load %struct.arc*, %struct.arc** %arcs41, align 8
  %53 = load %struct.network*, %struct.network** %net.addr, align 8
  %m42 = getelementptr inbounds %struct.network, %struct.network* %53, i32 0, i32 5
  %54 = load i64, i64* %m42, align 8
  %add.ptr43 = getelementptr inbounds %struct.arc, %struct.arc* %52, i64 %54
  %55 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs = getelementptr inbounds %struct.network, %struct.network* %55, i32 0, i32 24
  store %struct.arc* %add.ptr43, %struct.arc** %stop_arcs, align 8
  %56 = load %struct.network*, %struct.network** %net.addr, align 8
  %dummy_arcs44 = getelementptr inbounds %struct.network, %struct.network* %56, i32 0, i32 25
  %57 = load %struct.arc*, %struct.arc** %dummy_arcs44, align 8
  %58 = load %struct.network*, %struct.network** %net.addr, align 8
  %n45 = getelementptr inbounds %struct.network, %struct.network* %58, i32 0, i32 2
  %59 = load i64, i64* %n45, align 8
  %add.ptr46 = getelementptr inbounds %struct.arc, %struct.arc* %57, i64 %59
  %60 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_dummy = getelementptr inbounds %struct.network, %struct.network* %60, i32 0, i32 26
  store %struct.arc* %add.ptr46, %struct.arc** %stop_dummy, align 8
  %61 = load %struct.network*, %struct.network** %net.addr, align 8
  %nodes47 = getelementptr inbounds %struct.network, %struct.network* %61, i32 0, i32 21
  %62 = load %struct.node*, %struct.node** %nodes47, align 8
  store %struct.node* %62, %struct.node** %node, align 8
  %63 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs48 = getelementptr inbounds %struct.network, %struct.network* %63, i32 0, i32 23
  %64 = load %struct.arc*, %struct.arc** %arcs48, align 8
  store %struct.arc* %64, %struct.arc** %arc, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end37
  %65 = load i64, i64* %i, align 8
  %66 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips49 = getelementptr inbounds %struct.network, %struct.network* %66, i32 0, i32 3
  %67 = load i64, i64* %n_trips49, align 8
  %cmp50 = icmp sle i64 %65, %67
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay51 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call52 = call i8* @fgets(i8* %arraydecay51, i32 200, %struct._IO_FILE* %68)
  %arraydecay53 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i32 0, i32 0), i64* %t, i64* %h) #5
  %cmp55 = icmp ne i32 %call54, 2
  br i1 %cmp55, label %if.then57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %69 = load i64, i64* %t, align 8
  %70 = load i64, i64* %h, align 8
  %cmp56 = icmp sgt i64 %69, %70
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false, %for.body
  store i64 -1, i64* %retval, align 8
  br label %return

if.end58:                                         ; preds = %lor.lhs.false
  %71 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 0, %71
  %conv = trunc i64 %sub59 to i32
  %72 = load %struct.node*, %struct.node** %node, align 8
  %73 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.node, %struct.node* %72, i64 %73
  %number = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 12
  store i32 %conv, i32* %number, align 8
  %74 = load %struct.node*, %struct.node** %node, align 8
  %75 = load i64, i64* %i, align 8
  %arrayidx60 = getelementptr inbounds %struct.node, %struct.node* %74, i64 %75
  %flow = getelementptr inbounds %struct.node, %struct.node* %arrayidx60, i32 0, i32 10
  store i64 -1, i64* %flow, align 8
  %76 = load i64, i64* %i, align 8
  %conv61 = trunc i64 %76 to i32
  %77 = load %struct.node*, %struct.node** %node, align 8
  %78 = load i64, i64* %i, align 8
  %79 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips62 = getelementptr inbounds %struct.network, %struct.network* %79, i32 0, i32 3
  %80 = load i64, i64* %n_trips62, align 8
  %add63 = add nsw i64 %78, %80
  %arrayidx64 = getelementptr inbounds %struct.node, %struct.node* %77, i64 %add63
  %number65 = getelementptr inbounds %struct.node, %struct.node* %arrayidx64, i32 0, i32 12
  store i32 %conv61, i32* %number65, align 8
  %81 = load %struct.node*, %struct.node** %node, align 8
  %82 = load i64, i64* %i, align 8
  %83 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips66 = getelementptr inbounds %struct.network, %struct.network* %83, i32 0, i32 3
  %84 = load i64, i64* %n_trips66, align 8
  %add67 = add nsw i64 %82, %84
  %arrayidx68 = getelementptr inbounds %struct.node, %struct.node* %81, i64 %add67
  %flow69 = getelementptr inbounds %struct.node, %struct.node* %arrayidx68, i32 0, i32 10
  store i64 1, i64* %flow69, align 8
  %85 = load i64, i64* %t, align 8
  %conv70 = trunc i64 %85 to i32
  %86 = load %struct.node*, %struct.node** %node, align 8
  %87 = load i64, i64* %i, align 8
  %arrayidx71 = getelementptr inbounds %struct.node, %struct.node* %86, i64 %87
  %time = getelementptr inbounds %struct.node, %struct.node* %arrayidx71, i32 0, i32 13
  store i32 %conv70, i32* %time, align 4
  %88 = load i64, i64* %h, align 8
  %conv72 = trunc i64 %88 to i32
  %89 = load %struct.node*, %struct.node** %node, align 8
  %90 = load i64, i64* %i, align 8
  %91 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips73 = getelementptr inbounds %struct.network, %struct.network* %91, i32 0, i32 3
  %92 = load i64, i64* %n_trips73, align 8
  %add74 = add nsw i64 %90, %92
  %arrayidx75 = getelementptr inbounds %struct.node, %struct.node* %89, i64 %add74
  %time76 = getelementptr inbounds %struct.node, %struct.node* %arrayidx75, i32 0, i32 13
  store i32 %conv72, i32* %time76, align 4
  %93 = load %struct.node*, %struct.node** %node, align 8
  %94 = load %struct.network*, %struct.network** %net.addr, align 8
  %n77 = getelementptr inbounds %struct.network, %struct.network* %94, i32 0, i32 2
  %95 = load i64, i64* %n77, align 8
  %arrayidx78 = getelementptr inbounds %struct.node, %struct.node* %93, i64 %95
  %96 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %96, i32 0, i32 1
  store %struct.node* %arrayidx78, %struct.node** %tail, align 8
  %97 = load %struct.node*, %struct.node** %node, align 8
  %98 = load i64, i64* %i, align 8
  %arrayidx79 = getelementptr inbounds %struct.node, %struct.node* %97, i64 %98
  %99 = load %struct.arc*, %struct.arc** %arc, align 8
  %head = getelementptr inbounds %struct.arc, %struct.arc* %99, i32 0, i32 2
  store %struct.node* %arrayidx79, %struct.node** %head, align 8
  %100 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM = getelementptr inbounds %struct.network, %struct.network* %100, i32 0, i32 18
  %101 = load i64, i64* %bigM, align 8
  %add80 = add nsw i64 %101, 15
  %102 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost = getelementptr inbounds %struct.arc, %struct.arc* %102, i32 0, i32 0
  store i64 %add80, i64* %cost, align 8
  %103 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost = getelementptr inbounds %struct.arc, %struct.arc* %103, i32 0, i32 7
  store i64 %add80, i64* %org_cost, align 8
  %104 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail81 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 1
  %105 = load %struct.node*, %struct.node** %tail81, align 8
  %firstout = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 7
  %106 = load %struct.arc*, %struct.arc** %firstout, align 8
  %107 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout = getelementptr inbounds %struct.arc, %struct.arc* %107, i32 0, i32 4
  store %struct.arc* %106, %struct.arc** %nextout, align 8
  %108 = load %struct.arc*, %struct.arc** %arc, align 8
  %109 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail82 = getelementptr inbounds %struct.arc, %struct.arc* %109, i32 0, i32 1
  %110 = load %struct.node*, %struct.node** %tail82, align 8
  %firstout83 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 7
  store %struct.arc* %108, %struct.arc** %firstout83, align 8
  %111 = load %struct.arc*, %struct.arc** %arc, align 8
  %head84 = getelementptr inbounds %struct.arc, %struct.arc* %111, i32 0, i32 2
  %112 = load %struct.node*, %struct.node** %head84, align 8
  %firstin = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 8
  %113 = load %struct.arc*, %struct.arc** %firstin, align 8
  %114 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin = getelementptr inbounds %struct.arc, %struct.arc* %114, i32 0, i32 5
  store %struct.arc* %113, %struct.arc** %nextin, align 8
  %115 = load %struct.arc*, %struct.arc** %arc, align 8
  %116 = load %struct.arc*, %struct.arc** %arc, align 8
  %head85 = getelementptr inbounds %struct.arc, %struct.arc* %116, i32 0, i32 2
  %117 = load %struct.node*, %struct.node** %head85, align 8
  %firstin86 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 8
  store %struct.arc* %115, %struct.arc** %firstin86, align 8
  %118 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr = getelementptr inbounds %struct.arc, %struct.arc* %118, i32 1
  store %struct.arc* %incdec.ptr, %struct.arc** %arc, align 8
  %119 = load %struct.node*, %struct.node** %node, align 8
  %120 = load i64, i64* %i, align 8
  %121 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips87 = getelementptr inbounds %struct.network, %struct.network* %121, i32 0, i32 3
  %122 = load i64, i64* %n_trips87, align 8
  %add88 = add nsw i64 %120, %122
  %arrayidx89 = getelementptr inbounds %struct.node, %struct.node* %119, i64 %add88
  %123 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail90 = getelementptr inbounds %struct.arc, %struct.arc* %123, i32 0, i32 1
  store %struct.node* %arrayidx89, %struct.node** %tail90, align 8
  %124 = load %struct.node*, %struct.node** %node, align 8
  %125 = load %struct.network*, %struct.network** %net.addr, align 8
  %n91 = getelementptr inbounds %struct.network, %struct.network* %125, i32 0, i32 2
  %126 = load i64, i64* %n91, align 8
  %arrayidx92 = getelementptr inbounds %struct.node, %struct.node* %124, i64 %126
  %127 = load %struct.arc*, %struct.arc** %arc, align 8
  %head93 = getelementptr inbounds %struct.arc, %struct.arc* %127, i32 0, i32 2
  store %struct.node* %arrayidx92, %struct.node** %head93, align 8
  %128 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost94 = getelementptr inbounds %struct.arc, %struct.arc* %128, i32 0, i32 0
  store i64 15, i64* %cost94, align 8
  %129 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost95 = getelementptr inbounds %struct.arc, %struct.arc* %129, i32 0, i32 7
  store i64 15, i64* %org_cost95, align 8
  %130 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail96 = getelementptr inbounds %struct.arc, %struct.arc* %130, i32 0, i32 1
  %131 = load %struct.node*, %struct.node** %tail96, align 8
  %firstout97 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 7
  %132 = load %struct.arc*, %struct.arc** %firstout97, align 8
  %133 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout98 = getelementptr inbounds %struct.arc, %struct.arc* %133, i32 0, i32 4
  store %struct.arc* %132, %struct.arc** %nextout98, align 8
  %134 = load %struct.arc*, %struct.arc** %arc, align 8
  %135 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail99 = getelementptr inbounds %struct.arc, %struct.arc* %135, i32 0, i32 1
  %136 = load %struct.node*, %struct.node** %tail99, align 8
  %firstout100 = getelementptr inbounds %struct.node, %struct.node* %136, i32 0, i32 7
  store %struct.arc* %134, %struct.arc** %firstout100, align 8
  %137 = load %struct.arc*, %struct.arc** %arc, align 8
  %head101 = getelementptr inbounds %struct.arc, %struct.arc* %137, i32 0, i32 2
  %138 = load %struct.node*, %struct.node** %head101, align 8
  %firstin102 = getelementptr inbounds %struct.node, %struct.node* %138, i32 0, i32 8
  %139 = load %struct.arc*, %struct.arc** %firstin102, align 8
  %140 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin103 = getelementptr inbounds %struct.arc, %struct.arc* %140, i32 0, i32 5
  store %struct.arc* %139, %struct.arc** %nextin103, align 8
  %141 = load %struct.arc*, %struct.arc** %arc, align 8
  %142 = load %struct.arc*, %struct.arc** %arc, align 8
  %head104 = getelementptr inbounds %struct.arc, %struct.arc* %142, i32 0, i32 2
  %143 = load %struct.node*, %struct.node** %head104, align 8
  %firstin105 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 8
  store %struct.arc* %141, %struct.arc** %firstin105, align 8
  %144 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr106 = getelementptr inbounds %struct.arc, %struct.arc* %144, i32 1
  store %struct.arc* %incdec.ptr106, %struct.arc** %arc, align 8
  %145 = load %struct.node*, %struct.node** %node, align 8
  %146 = load i64, i64* %i, align 8
  %arrayidx107 = getelementptr inbounds %struct.node, %struct.node* %145, i64 %146
  %147 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail108 = getelementptr inbounds %struct.arc, %struct.arc* %147, i32 0, i32 1
  store %struct.node* %arrayidx107, %struct.node** %tail108, align 8
  %148 = load %struct.node*, %struct.node** %node, align 8
  %149 = load i64, i64* %i, align 8
  %150 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips109 = getelementptr inbounds %struct.network, %struct.network* %150, i32 0, i32 3
  %151 = load i64, i64* %n_trips109, align 8
  %add110 = add nsw i64 %149, %151
  %arrayidx111 = getelementptr inbounds %struct.node, %struct.node* %148, i64 %add110
  %152 = load %struct.arc*, %struct.arc** %arc, align 8
  %head112 = getelementptr inbounds %struct.arc, %struct.arc* %152, i32 0, i32 2
  store %struct.node* %arrayidx111, %struct.node** %head112, align 8
  %153 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM113 = getelementptr inbounds %struct.network, %struct.network* %153, i32 0, i32 18
  %154 = load i64, i64* %bigM113, align 8
  %cmp114 = icmp sgt i64 %154, 10000000
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end58
  %155 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM116 = getelementptr inbounds %struct.network, %struct.network* %155, i32 0, i32 18
  %156 = load i64, i64* %bigM116, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %156, %cond.true ], [ 10000000, %cond.false ]
  %mul = mul nsw i64 2, %cond
  %157 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost117 = getelementptr inbounds %struct.arc, %struct.arc* %157, i32 0, i32 0
  store i64 %mul, i64* %cost117, align 8
  %158 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost118 = getelementptr inbounds %struct.arc, %struct.arc* %158, i32 0, i32 7
  store i64 %mul, i64* %org_cost118, align 8
  %159 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail119 = getelementptr inbounds %struct.arc, %struct.arc* %159, i32 0, i32 1
  %160 = load %struct.node*, %struct.node** %tail119, align 8
  %firstout120 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 7
  %161 = load %struct.arc*, %struct.arc** %firstout120, align 8
  %162 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout121 = getelementptr inbounds %struct.arc, %struct.arc* %162, i32 0, i32 4
  store %struct.arc* %161, %struct.arc** %nextout121, align 8
  %163 = load %struct.arc*, %struct.arc** %arc, align 8
  %164 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail122 = getelementptr inbounds %struct.arc, %struct.arc* %164, i32 0, i32 1
  %165 = load %struct.node*, %struct.node** %tail122, align 8
  %firstout123 = getelementptr inbounds %struct.node, %struct.node* %165, i32 0, i32 7
  store %struct.arc* %163, %struct.arc** %firstout123, align 8
  %166 = load %struct.arc*, %struct.arc** %arc, align 8
  %head124 = getelementptr inbounds %struct.arc, %struct.arc* %166, i32 0, i32 2
  %167 = load %struct.node*, %struct.node** %head124, align 8
  %firstin125 = getelementptr inbounds %struct.node, %struct.node* %167, i32 0, i32 8
  %168 = load %struct.arc*, %struct.arc** %firstin125, align 8
  %169 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin126 = getelementptr inbounds %struct.arc, %struct.arc* %169, i32 0, i32 5
  store %struct.arc* %168, %struct.arc** %nextin126, align 8
  %170 = load %struct.arc*, %struct.arc** %arc, align 8
  %171 = load %struct.arc*, %struct.arc** %arc, align 8
  %head127 = getelementptr inbounds %struct.arc, %struct.arc* %171, i32 0, i32 2
  %172 = load %struct.node*, %struct.node** %head127, align 8
  %firstin128 = getelementptr inbounds %struct.node, %struct.node* %172, i32 0, i32 8
  store %struct.arc* %170, %struct.arc** %firstin128, align 8
  %173 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr129 = getelementptr inbounds %struct.arc, %struct.arc* %173, i32 1
  store %struct.arc* %incdec.ptr129, %struct.arc** %arc, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %174 = load i64, i64* %i, align 8
  %inc = add nsw i64 %174, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %175 = load i64, i64* %i, align 8
  %176 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips130 = getelementptr inbounds %struct.network, %struct.network* %176, i32 0, i32 3
  %177 = load i64, i64* %n_trips130, align 8
  %add131 = add nsw i64 %177, 1
  %cmp132 = icmp ne i64 %175, %add131
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %for.end
  store i64 -1, i64* %retval, align 8
  br label %return

if.end135:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc167, %if.end135
  %178 = load i64, i64* %i, align 8
  %179 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org137 = getelementptr inbounds %struct.network, %struct.network* %179, i32 0, i32 6
  %180 = load i64, i64* %m_org137, align 8
  %cmp138 = icmp slt i64 %178, %180
  br i1 %cmp138, label %for.body140, label %for.end170

for.body140:                                      ; preds = %for.cond136
  %arraydecay141 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call142 = call i8* @fgets(i8* %arraydecay141, i32 200, %struct._IO_FILE* %181)
  %arraydecay143 = getelementptr inbounds [201 x i8], [201 x i8]* %instring, i32 0, i32 0
  %call144 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.38, i32 0, i32 0), i64* %t, i64* %h, i64* %c) #5
  %cmp145 = icmp ne i32 %call144, 3
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %for.body140
  store i64 -1, i64* %retval, align 8
  br label %return

if.end148:                                        ; preds = %for.body140
  %182 = load %struct.node*, %struct.node** %node, align 8
  %183 = load i64, i64* %t, align 8
  %184 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips149 = getelementptr inbounds %struct.network, %struct.network* %184, i32 0, i32 3
  %185 = load i64, i64* %n_trips149, align 8
  %add150 = add nsw i64 %183, %185
  %arrayidx151 = getelementptr inbounds %struct.node, %struct.node* %182, i64 %add150
  %186 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail152 = getelementptr inbounds %struct.arc, %struct.arc* %186, i32 0, i32 1
  store %struct.node* %arrayidx151, %struct.node** %tail152, align 8
  %187 = load %struct.node*, %struct.node** %node, align 8
  %188 = load i64, i64* %h, align 8
  %arrayidx153 = getelementptr inbounds %struct.node, %struct.node* %187, i64 %188
  %189 = load %struct.arc*, %struct.arc** %arc, align 8
  %head154 = getelementptr inbounds %struct.arc, %struct.arc* %189, i32 0, i32 2
  store %struct.node* %arrayidx153, %struct.node** %head154, align 8
  %190 = load i64, i64* %c, align 8
  %191 = load %struct.arc*, %struct.arc** %arc, align 8
  %org_cost155 = getelementptr inbounds %struct.arc, %struct.arc* %191, i32 0, i32 7
  store i64 %190, i64* %org_cost155, align 8
  %192 = load i64, i64* %c, align 8
  %193 = load %struct.arc*, %struct.arc** %arc, align 8
  %cost156 = getelementptr inbounds %struct.arc, %struct.arc* %193, i32 0, i32 0
  store i64 %192, i64* %cost156, align 8
  %194 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail157 = getelementptr inbounds %struct.arc, %struct.arc* %194, i32 0, i32 1
  %195 = load %struct.node*, %struct.node** %tail157, align 8
  %firstout158 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 7
  %196 = load %struct.arc*, %struct.arc** %firstout158, align 8
  %197 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextout159 = getelementptr inbounds %struct.arc, %struct.arc* %197, i32 0, i32 4
  store %struct.arc* %196, %struct.arc** %nextout159, align 8
  %198 = load %struct.arc*, %struct.arc** %arc, align 8
  %199 = load %struct.arc*, %struct.arc** %arc, align 8
  %tail160 = getelementptr inbounds %struct.arc, %struct.arc* %199, i32 0, i32 1
  %200 = load %struct.node*, %struct.node** %tail160, align 8
  %firstout161 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 7
  store %struct.arc* %198, %struct.arc** %firstout161, align 8
  %201 = load %struct.arc*, %struct.arc** %arc, align 8
  %head162 = getelementptr inbounds %struct.arc, %struct.arc* %201, i32 0, i32 2
  %202 = load %struct.node*, %struct.node** %head162, align 8
  %firstin163 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 8
  %203 = load %struct.arc*, %struct.arc** %firstin163, align 8
  %204 = load %struct.arc*, %struct.arc** %arc, align 8
  %nextin164 = getelementptr inbounds %struct.arc, %struct.arc* %204, i32 0, i32 5
  store %struct.arc* %203, %struct.arc** %nextin164, align 8
  %205 = load %struct.arc*, %struct.arc** %arc, align 8
  %206 = load %struct.arc*, %struct.arc** %arc, align 8
  %head165 = getelementptr inbounds %struct.arc, %struct.arc* %206, i32 0, i32 2
  %207 = load %struct.node*, %struct.node** %head165, align 8
  %firstin166 = getelementptr inbounds %struct.node, %struct.node* %207, i32 0, i32 8
  store %struct.arc* %205, %struct.arc** %firstin166, align 8
  br label %for.inc167

for.inc167:                                       ; preds = %if.end148
  %208 = load i64, i64* %i, align 8
  %inc168 = add nsw i64 %208, 1
  store i64 %inc168, i64* %i, align 8
  %209 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr169 = getelementptr inbounds %struct.arc, %struct.arc* %209, i32 1
  store %struct.arc* %incdec.ptr169, %struct.arc** %arc, align 8
  br label %for.cond136

for.end170:                                       ; preds = %for.cond136
  %210 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs171 = getelementptr inbounds %struct.network, %struct.network* %210, i32 0, i32 24
  %211 = load %struct.arc*, %struct.arc** %stop_arcs171, align 8
  %212 = load %struct.arc*, %struct.arc** %arc, align 8
  %cmp172 = icmp ne %struct.arc* %211, %212
  br i1 %cmp172, label %if.then174, label %if.end190

if.then174:                                       ; preds = %for.end170
  %213 = load %struct.arc*, %struct.arc** %arc, align 8
  %214 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs175 = getelementptr inbounds %struct.network, %struct.network* %214, i32 0, i32 24
  store %struct.arc* %213, %struct.arc** %stop_arcs175, align 8
  %215 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs176 = getelementptr inbounds %struct.network, %struct.network* %215, i32 0, i32 23
  %216 = load %struct.arc*, %struct.arc** %arcs176, align 8
  store %struct.arc* %216, %struct.arc** %arc, align 8
  %217 = load %struct.network*, %struct.network** %net.addr, align 8
  %m177 = getelementptr inbounds %struct.network, %struct.network* %217, i32 0, i32 5
  store i64 0, i64* %m177, align 8
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc185, %if.then174
  %218 = load %struct.arc*, %struct.arc** %arc, align 8
  %219 = load %struct.network*, %struct.network** %net.addr, align 8
  %stop_arcs179 = getelementptr inbounds %struct.network, %struct.network* %219, i32 0, i32 24
  %220 = load %struct.arc*, %struct.arc** %stop_arcs179, align 8
  %cmp180 = icmp ult %struct.arc* %218, %220
  br i1 %cmp180, label %for.body182, label %for.end187

for.body182:                                      ; preds = %for.cond178
  %221 = load %struct.network*, %struct.network** %net.addr, align 8
  %m183 = getelementptr inbounds %struct.network, %struct.network* %221, i32 0, i32 5
  %222 = load i64, i64* %m183, align 8
  %inc184 = add nsw i64 %222, 1
  store i64 %inc184, i64* %m183, align 8
  br label %for.inc185

for.inc185:                                       ; preds = %for.body182
  %223 = load %struct.arc*, %struct.arc** %arc, align 8
  %incdec.ptr186 = getelementptr inbounds %struct.arc, %struct.arc* %223, i32 1
  store %struct.arc* %incdec.ptr186, %struct.arc** %arc, align 8
  br label %for.cond178

for.end187:                                       ; preds = %for.cond178
  %224 = load %struct.network*, %struct.network** %net.addr, align 8
  %m188 = getelementptr inbounds %struct.network, %struct.network* %224, i32 0, i32 5
  %225 = load i64, i64* %m188, align 8
  %226 = load %struct.network*, %struct.network** %net.addr, align 8
  %m_org189 = getelementptr inbounds %struct.network, %struct.network* %226, i32 0, i32 6
  store i64 %225, i64* %m_org189, align 8
  br label %if.end190

if.end190:                                        ; preds = %for.end187, %for.end170
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call191 = call i32 @fclose(%struct._IO_FILE* %227)
  %228 = load %struct.network*, %struct.network** %net.addr, align 8
  %clustfile = getelementptr inbounds %struct.network, %struct.network* %228, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [200 x i8], [200 x i8]* %clustfile, i64 0, i64 0
  store i8 0, i8* %arrayidx192, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc226, %if.end190
  %229 = load i64, i64* %i, align 8
  %230 = load %struct.network*, %struct.network** %net.addr, align 8
  %n_trips194 = getelementptr inbounds %struct.network, %struct.network* %230, i32 0, i32 3
  %231 = load i64, i64* %n_trips194, align 8
  %cmp195 = icmp sle i64 %229, %231
  br i1 %cmp195, label %for.body197, label %for.end228

for.body197:                                      ; preds = %for.cond193
  %232 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM198 = getelementptr inbounds %struct.network, %struct.network* %232, i32 0, i32 18
  %233 = load i64, i64* %bigM198, align 8
  %cmp199 = icmp sgt i64 %233, 10000000
  br i1 %cmp199, label %cond.true201, label %cond.false203

cond.true201:                                     ; preds = %for.body197
  %234 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM202 = getelementptr inbounds %struct.network, %struct.network* %234, i32 0, i32 18
  %235 = load i64, i64* %bigM202, align 8
  br label %cond.end204

cond.false203:                                    ; preds = %for.body197
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false203, %cond.true201
  %cond205 = phi i64 [ %235, %cond.true201 ], [ 10000000, %cond.false203 ]
  %mul206 = mul nsw i64 -2, %cond205
  %236 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs207 = getelementptr inbounds %struct.network, %struct.network* %236, i32 0, i32 23
  %237 = load %struct.arc*, %struct.arc** %arcs207, align 8
  %238 = load i64, i64* %i, align 8
  %mul208 = mul nsw i64 3, %238
  %sub209 = sub nsw i64 %mul208, 1
  %arrayidx210 = getelementptr inbounds %struct.arc, %struct.arc* %237, i64 %sub209
  %cost211 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx210, i32 0, i32 0
  store i64 %mul206, i64* %cost211, align 8
  %239 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM212 = getelementptr inbounds %struct.network, %struct.network* %239, i32 0, i32 18
  %240 = load i64, i64* %bigM212, align 8
  %cmp213 = icmp sgt i64 %240, 10000000
  br i1 %cmp213, label %cond.true215, label %cond.false217

cond.true215:                                     ; preds = %cond.end204
  %241 = load %struct.network*, %struct.network** %net.addr, align 8
  %bigM216 = getelementptr inbounds %struct.network, %struct.network* %241, i32 0, i32 18
  %242 = load i64, i64* %bigM216, align 8
  br label %cond.end218

cond.false217:                                    ; preds = %cond.end204
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false217, %cond.true215
  %cond219 = phi i64 [ %242, %cond.true215 ], [ 10000000, %cond.false217 ]
  %mul220 = mul nsw i64 -2, %cond219
  %243 = load %struct.network*, %struct.network** %net.addr, align 8
  %arcs221 = getelementptr inbounds %struct.network, %struct.network* %243, i32 0, i32 23
  %244 = load %struct.arc*, %struct.arc** %arcs221, align 8
  %245 = load i64, i64* %i, align 8
  %mul222 = mul nsw i64 3, %245
  %sub223 = sub nsw i64 %mul222, 1
  %arrayidx224 = getelementptr inbounds %struct.arc, %struct.arc* %244, i64 %sub223
  %org_cost225 = getelementptr inbounds %struct.arc, %struct.arc* %arrayidx224, i32 0, i32 7
  store i64 %mul220, i64* %org_cost225, align 8
  br label %for.inc226

for.inc226:                                       ; preds = %cond.end218
  %246 = load i64, i64* %i, align 8
  %inc227 = add nsw i64 %246, 1
  store i64 %inc227, i64* %i, align 8
  br label %for.cond193

for.end228:                                       ; preds = %for.cond193
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end228, %if.then147, %if.then134, %if.then57, %if.then34, %if.then6, %if.then
  %247 = load i64, i64* %retval, align 8
  ret i64 %247
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
entry:
  %cycle_ori.addr = alloca i64, align 8
  %new_orientation.addr = alloca i64, align 8
  %delta.addr = alloca i64, align 8
  %new_flow.addr = alloca i64, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iminus.addr = alloca %struct.node*, align 8
  %jminus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node*, align 8
  %bea.addr = alloca %struct.arc*, align 8
  %sigma.addr = alloca i64, align 8
  %feas_tol.addr = alloca i64, align 8
  %basic_arc_temp = alloca %struct.arc*, align 8
  %new_basic_arc = alloca %struct.arc*, align 8
  %father = alloca %struct.node*, align 8
  %temp = alloca %struct.node*, align 8
  %new_pred = alloca %struct.node*, align 8
  %orientation_temp = alloca i64, align 8
  %depth_temp = alloca i64, align 8
  %depth_iminus = alloca i64, align 8
  %new_depth = alloca i64, align 8
  %flow_temp = alloca i64, align 8
  store i64 %cycle_ori, i64* %cycle_ori.addr, align 8
  store i64 %new_orientation, i64* %new_orientation.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
  store i64 %new_flow, i64* %new_flow.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node* %iminus, %struct.node** %iminus.addr, align 8
  store %struct.node* %jminus, %struct.node** %jminus.addr, align 8
  store %struct.node* %w, %struct.node** %w.addr, align 8
  store %struct.arc* %bea, %struct.arc** %bea.addr, align 8
  store i64 %sigma, i64* %sigma.addr, align 8
  store i64 %feas_tol, i64* %feas_tol.addr, align 8
  %0 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  %tail = getelementptr inbounds %struct.arc, %struct.arc* %0, i32 0, i32 1
  %1 = load %struct.node*, %struct.node** %tail, align 8
  %2 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp eq %struct.node* %1, %2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %sigma.addr, align 8
  %cmp1 = icmp slt i64 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  %tail2 = getelementptr inbounds %struct.arc, %struct.arc* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %tail2, align 8
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %cmp3 = icmp eq %struct.node* %5, %6
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %7 = load i64, i64* %sigma.addr, align 8
  %cmp5 = icmp sgt i64 %7, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4, %land.lhs.true
  %8 = load i64, i64* %sigma.addr, align 8
  %cmp6 = icmp sge i64 %8, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i64, i64* %sigma.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load i64, i64* %sigma.addr, align 8
  %sub = sub nsw i64 0, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %sigma.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true4, %lor.lhs.false
  %11 = load i64, i64* %sigma.addr, align 8
  %cmp7 = icmp sge i64 %11, 0
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %if.else
  %12 = load i64, i64* %sigma.addr, align 8
  br label %cond.end11

cond.false9:                                      ; preds = %if.else
  %13 = load i64, i64* %sigma.addr, align 8
  %sub10 = sub nsw i64 0, %13
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.true8
  %cond12 = phi i64 [ %12, %cond.true8 ], [ %sub10, %cond.false9 ]
  %sub13 = sub nsw i64 0, %cond12
  store i64 %sub13, i64* %sigma.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end11, %cond.end
  %14 = load %struct.node*, %struct.node** %iminus.addr, align 8
  store %struct.node* %14, %struct.node** %father, align 8
  %15 = load i64, i64* %sigma.addr, align 8
  %16 = load %struct.node*, %struct.node** %father, align 8
  %potential = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load i64, i64* %potential, align 8
  %add = add nsw i64 %17, %15
  store i64 %add, i64* %potential, align 8
  br label %RECURSION

RECURSION:                                        ; preds = %ITERATION, %if.end
  %18 = load %struct.node*, %struct.node** %father, align 8
  %child = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %19 = load %struct.node*, %struct.node** %child, align 8
  store %struct.node* %19, %struct.node** %temp, align 8
  %20 = load %struct.node*, %struct.node** %temp, align 8
  %tobool = icmp ne %struct.node* %20, null
  br i1 %tobool, label %if.then14, label %if.end17

if.then14:                                        ; preds = %RECURSION
  br label %ITERATION

ITERATION:                                        ; preds = %if.then22, %if.then14
  %21 = load i64, i64* %sigma.addr, align 8
  %22 = load %struct.node*, %struct.node** %temp, align 8
  %potential15 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %23 = load i64, i64* %potential15, align 8
  %add16 = add nsw i64 %23, %21
  store i64 %add16, i64* %potential15, align 8
  %24 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %24, %struct.node** %father, align 8
  br label %RECURSION

if.end17:                                         ; preds = %RECURSION
  br label %TEST

TEST:                                             ; preds = %if.end23, %if.end17
  %25 = load %struct.node*, %struct.node** %father, align 8
  %26 = load %struct.node*, %struct.node** %iminus.addr, align 8
  %cmp18 = icmp eq %struct.node* %25, %26
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %TEST
  br label %CONTINUE

if.end20:                                         ; preds = %TEST
  %27 = load %struct.node*, %struct.node** %father, align 8
  %sibling = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %28 = load %struct.node*, %struct.node** %sibling, align 8
  store %struct.node* %28, %struct.node** %temp, align 8
  %29 = load %struct.node*, %struct.node** %temp, align 8
  %tobool21 = icmp ne %struct.node* %29, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  br label %ITERATION

if.end23:                                         ; preds = %if.end20
  %30 = load %struct.node*, %struct.node** %father, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 3
  %31 = load %struct.node*, %struct.node** %pred, align 8
  store %struct.node* %31, %struct.node** %father, align 8
  br label %TEST

CONTINUE:                                         ; preds = %if.then19
  %32 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %32, %struct.node** %temp, align 8
  %33 = load %struct.node*, %struct.node** %temp, align 8
  %pred24 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 3
  %34 = load %struct.node*, %struct.node** %pred24, align 8
  store %struct.node* %34, %struct.node** %father, align 8
  %35 = load %struct.node*, %struct.node** %iminus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 11
  %36 = load i64, i64* %depth, align 8
  store i64 %36, i64* %depth_iminus, align 8
  store i64 %36, i64* %new_depth, align 8
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %new_pred, align 8
  %38 = load %struct.arc*, %struct.arc** %bea.addr, align 8
  store %struct.arc* %38, %struct.arc** %new_basic_arc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end61, %CONTINUE
  %39 = load %struct.node*, %struct.node** %temp, align 8
  %40 = load %struct.node*, %struct.node** %jminus.addr, align 8
  %cmp25 = icmp ne %struct.node* %39, %40
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.node*, %struct.node** %temp, align 8
  %sibling26 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %42 = load %struct.node*, %struct.node** %sibling26, align 8
  %tobool27 = icmp ne %struct.node* %42, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %while.body
  %43 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 5
  %44 = load %struct.node*, %struct.node** %sibling_prev, align 8
  %45 = load %struct.node*, %struct.node** %temp, align 8
  %sibling29 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %46 = load %struct.node*, %struct.node** %sibling29, align 8
  %sibling_prev30 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 5
  store %struct.node* %44, %struct.node** %sibling_prev30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %while.body
  %47 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev32 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 5
  %48 = load %struct.node*, %struct.node** %sibling_prev32, align 8
  %tobool33 = icmp ne %struct.node* %48, null
  br i1 %tobool33, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.end31
  %49 = load %struct.node*, %struct.node** %temp, align 8
  %sibling35 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 4
  %50 = load %struct.node*, %struct.node** %sibling35, align 8
  %51 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev36 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 5
  %52 = load %struct.node*, %struct.node** %sibling_prev36, align 8
  %sibling37 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 4
  store %struct.node* %50, %struct.node** %sibling37, align 8
  br label %if.end41

if.else38:                                        ; preds = %if.end31
  %53 = load %struct.node*, %struct.node** %temp, align 8
  %sibling39 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %54 = load %struct.node*, %struct.node** %sibling39, align 8
  %55 = load %struct.node*, %struct.node** %father, align 8
  %child40 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 2
  store %struct.node* %54, %struct.node** %child40, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then34
  %56 = load %struct.node*, %struct.node** %new_pred, align 8
  %57 = load %struct.node*, %struct.node** %temp, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 3
  store %struct.node* %56, %struct.node** %pred42, align 8
  %58 = load %struct.node*, %struct.node** %new_pred, align 8
  %child43 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %59 = load %struct.node*, %struct.node** %child43, align 8
  %60 = load %struct.node*, %struct.node** %temp, align 8
  %sibling44 = getelementptr inbounds %struct.node, %struct.node* %60, i32 0, i32 4
  store %struct.node* %59, %struct.node** %sibling44, align 8
  %61 = load %struct.node*, %struct.node** %temp, align 8
  %sibling45 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 4
  %62 = load %struct.node*, %struct.node** %sibling45, align 8
  %tobool46 = icmp ne %struct.node* %62, null
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end41
  %63 = load %struct.node*, %struct.node** %temp, align 8
  %64 = load %struct.node*, %struct.node** %temp, align 8
  %sibling48 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  %65 = load %struct.node*, %struct.node** %sibling48, align 8
  %sibling_prev49 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 5
  store %struct.node* %63, %struct.node** %sibling_prev49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end41
  %66 = load %struct.node*, %struct.node** %temp, align 8
  %67 = load %struct.node*, %struct.node** %new_pred, align 8
  %child51 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 2
  store %struct.node* %66, %struct.node** %child51, align 8
  %68 = load %struct.node*, %struct.node** %temp, align 8
  %sibling_prev52 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 5
  store %struct.node* null, %struct.node** %sibling_prev52, align 8
  %69 = load %struct.node*, %struct.node** %temp, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 1
  %70 = load i32, i32* %orientation, align 8
  %tobool53 = icmp ne i32 %70, 0
  %lnot = xor i1 %tobool53, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  store i64 %conv, i64* %orientation_temp, align 8
  %71 = load i64, i64* %orientation_temp, align 8
  %72 = load i64, i64* %cycle_ori.addr, align 8
  %cmp54 = icmp eq i64 %71, %72
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.end50
  %73 = load %struct.node*, %struct.node** %temp, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 10
  %74 = load i64, i64* %flow, align 8
  %75 = load i64, i64* %delta.addr, align 8
  %add57 = add nsw i64 %74, %75
  store i64 %add57, i64* %flow_temp, align 8
  br label %if.end61

if.else58:                                        ; preds = %if.end50
  %76 = load %struct.node*, %struct.node** %temp, align 8
  %flow59 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 10
  %77 = load i64, i64* %flow59, align 8
  %78 = load i64, i64* %delta.addr, align 8
  %sub60 = sub nsw i64 %77, %78
  store i64 %sub60, i64* %flow_temp, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then56
  %79 = load %struct.node*, %struct.node** %temp, align 8
  %basic_arc = getelementptr inbounds %struct.node, %struct.node* %79, i32 0, i32 6
  %80 = load %struct.arc*, %struct.arc** %basic_arc, align 8
  store %struct.arc* %80, %struct.arc** %basic_arc_temp, align 8
  %81 = load %struct.node*, %struct.node** %temp, align 8
  %depth62 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 11
  %82 = load i64, i64* %depth62, align 8
  store i64 %82, i64* %depth_temp, align 8
  %83 = load i64, i64* %new_orientation.addr, align 8
  %conv63 = trunc i64 %83 to i32
  %84 = load %struct.node*, %struct.node** %temp, align 8
  %orientation64 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 1
  store i32 %conv63, i32* %orientation64, align 8
  %85 = load i64, i64* %new_flow.addr, align 8
  %86 = load %struct.node*, %struct.node** %temp, align 8
  %flow65 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 10
  store i64 %85, i64* %flow65, align 8
  %87 = load %struct.arc*, %struct.arc** %new_basic_arc, align 8
  %88 = load %struct.node*, %struct.node** %temp, align 8
  %basic_arc66 = getelementptr inbounds %struct.node, %struct.node* %88, i32 0, i32 6
  store %struct.arc* %87, %struct.arc** %basic_arc66, align 8
  %89 = load i64, i64* %new_depth, align 8
  %90 = load %struct.node*, %struct.node** %temp, align 8
  %depth67 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 11
  store i64 %89, i64* %depth67, align 8
  %91 = load %struct.node*, %struct.node** %temp, align 8
  store %struct.node* %91, %struct.node** %new_pred, align 8
  %92 = load i64, i64* %orientation_temp, align 8
  store i64 %92, i64* %new_orientation.addr, align 8
  %93 = load i64, i64* %flow_temp, align 8
  store i64 %93, i64* %new_flow.addr, align 8
  %94 = load %struct.arc*, %struct.arc** %basic_arc_temp, align 8
  store %struct.arc* %94, %struct.arc** %new_basic_arc, align 8
  %95 = load i64, i64* %depth_iminus, align 8
  %96 = load i64, i64* %depth_temp, align 8
  %sub68 = sub nsw i64 %95, %96
  store i64 %sub68, i64* %new_depth, align 8
  %97 = load %struct.node*, %struct.node** %father, align 8
  store %struct.node* %97, %struct.node** %temp, align 8
  %98 = load %struct.node*, %struct.node** %temp, align 8
  %pred69 = getelementptr inbounds %struct.node, %struct.node* %98, i32 0, i32 3
  %99 = load %struct.node*, %struct.node** %pred69, align 8
  store %struct.node* %99, %struct.node** %father, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %100 = load i64, i64* %delta.addr, align 8
  %101 = load i64, i64* %feas_tol.addr, align 8
  %cmp70 = icmp sgt i64 %100, %101
  br i1 %cmp70, label %if.then72, label %if.else109

if.then72:                                        ; preds = %while.end
  %102 = load %struct.node*, %struct.node** %jminus.addr, align 8
  store %struct.node* %102, %struct.node** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then72
  %103 = load %struct.node*, %struct.node** %temp, align 8
  %104 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp73 = icmp ne %struct.node* %103, %104
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %105 = load i64, i64* %depth_iminus, align 8
  %106 = load %struct.node*, %struct.node** %temp, align 8
  %depth75 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 11
  %107 = load i64, i64* %depth75, align 8
  %sub76 = sub nsw i64 %107, %105
  store i64 %sub76, i64* %depth75, align 8
  %108 = load %struct.node*, %struct.node** %temp, align 8
  %orientation77 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 1
  %109 = load i32, i32* %orientation77, align 8
  %conv78 = sext i32 %109 to i64
  %110 = load i64, i64* %cycle_ori.addr, align 8
  %cmp79 = icmp ne i64 %conv78, %110
  br i1 %cmp79, label %if.then81, label %if.else84

if.then81:                                        ; preds = %for.body
  %111 = load i64, i64* %delta.addr, align 8
  %112 = load %struct.node*, %struct.node** %temp, align 8
  %flow82 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 10
  %113 = load i64, i64* %flow82, align 8
  %add83 = add nsw i64 %113, %111
  store i64 %add83, i64* %flow82, align 8
  br label %if.end87

if.else84:                                        ; preds = %for.body
  %114 = load i64, i64* %delta.addr, align 8
  %115 = load %struct.node*, %struct.node** %temp, align 8
  %flow85 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 10
  %116 = load i64, i64* %flow85, align 8
  %sub86 = sub nsw i64 %116, %114
  store i64 %sub86, i64* %flow85, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %if.then81
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %117 = load %struct.node*, %struct.node** %temp, align 8
  %pred88 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 3
  %118 = load %struct.node*, %struct.node** %pred88, align 8
  store %struct.node* %118, %struct.node** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %119 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %119, %struct.node** %temp, align 8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc106, %for.end
  %120 = load %struct.node*, %struct.node** %temp, align 8
  %121 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp90 = icmp ne %struct.node* %120, %121
  br i1 %cmp90, label %for.body92, label %for.end108

for.body92:                                       ; preds = %for.cond89
  %122 = load i64, i64* %depth_iminus, align 8
  %123 = load %struct.node*, %struct.node** %temp, align 8
  %depth93 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 11
  %124 = load i64, i64* %depth93, align 8
  %add94 = add nsw i64 %124, %122
  store i64 %add94, i64* %depth93, align 8
  %125 = load %struct.node*, %struct.node** %temp, align 8
  %orientation95 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 1
  %126 = load i32, i32* %orientation95, align 8
  %conv96 = sext i32 %126 to i64
  %127 = load i64, i64* %cycle_ori.addr, align 8
  %cmp97 = icmp eq i64 %conv96, %127
  br i1 %cmp97, label %if.then99, label %if.else102

if.then99:                                        ; preds = %for.body92
  %128 = load i64, i64* %delta.addr, align 8
  %129 = load %struct.node*, %struct.node** %temp, align 8
  %flow100 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 10
  %130 = load i64, i64* %flow100, align 8
  %add101 = add nsw i64 %130, %128
  store i64 %add101, i64* %flow100, align 8
  br label %if.end105

if.else102:                                       ; preds = %for.body92
  %131 = load i64, i64* %delta.addr, align 8
  %132 = load %struct.node*, %struct.node** %temp, align 8
  %flow103 = getelementptr inbounds %struct.node, %struct.node* %132, i32 0, i32 10
  %133 = load i64, i64* %flow103, align 8
  %sub104 = sub nsw i64 %133, %131
  store i64 %sub104, i64* %flow103, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then99
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %134 = load %struct.node*, %struct.node** %temp, align 8
  %pred107 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 3
  %135 = load %struct.node*, %struct.node** %pred107, align 8
  store %struct.node* %135, %struct.node** %temp, align 8
  br label %for.cond89

for.end108:                                       ; preds = %for.cond89
  br label %if.end128

if.else109:                                       ; preds = %while.end
  %136 = load %struct.node*, %struct.node** %jminus.addr, align 8
  store %struct.node* %136, %struct.node** %temp, align 8
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc116, %if.else109
  %137 = load %struct.node*, %struct.node** %temp, align 8
  %138 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp111 = icmp ne %struct.node* %137, %138
  br i1 %cmp111, label %for.body113, label %for.end118

for.body113:                                      ; preds = %for.cond110
  %139 = load i64, i64* %depth_iminus, align 8
  %140 = load %struct.node*, %struct.node** %temp, align 8
  %depth114 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 11
  %141 = load i64, i64* %depth114, align 8
  %sub115 = sub nsw i64 %141, %139
  store i64 %sub115, i64* %depth114, align 8
  br label %for.inc116

for.inc116:                                       ; preds = %for.body113
  %142 = load %struct.node*, %struct.node** %temp, align 8
  %pred117 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 3
  %143 = load %struct.node*, %struct.node** %pred117, align 8
  store %struct.node* %143, %struct.node** %temp, align 8
  br label %for.cond110

for.end118:                                       ; preds = %for.cond110
  %144 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %144, %struct.node** %temp, align 8
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.end118
  %145 = load %struct.node*, %struct.node** %temp, align 8
  %146 = load %struct.node*, %struct.node** %w.addr, align 8
  %cmp120 = icmp ne %struct.node* %145, %146
  br i1 %cmp120, label %for.body122, label %for.end127

for.body122:                                      ; preds = %for.cond119
  %147 = load i64, i64* %depth_iminus, align 8
  %148 = load %struct.node*, %struct.node** %temp, align 8
  %depth123 = getelementptr inbounds %struct.node, %struct.node* %148, i32 0, i32 11
  %149 = load i64, i64* %depth123, align 8
  %add124 = add nsw i64 %149, %147
  store i64 %add124, i64* %depth123, align 8
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %150 = load %struct.node*, %struct.node** %temp, align 8
  %pred126 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 3
  %151 = load %struct.node*, %struct.node** %pred126, align 8
  store %struct.node* %151, %struct.node** %temp, align 8
  br label %for.cond119

for.end127:                                       ; preds = %for.cond119
  br label %if.end128

if.end128:                                        ; preds = %for.end127, %for.end108
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
