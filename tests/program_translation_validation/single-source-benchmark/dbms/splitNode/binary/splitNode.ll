; ModuleID = 'splitNode.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@.str = hidden unnamed_addr constant [30 x i8] c"too many entries to partition\00", align 1
@partitionEntries.name = hidden global [17 x i8] c"partitionEntries\00", align 16
@.str.3 = hidden unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@getInsertCommand.name = hidden global [17 x i8] c"getInsertCommand\00", align 16
@.str.1 = hidden unnamed_addr constant [25 x i8] c"unknown data object type\00", align 1
@.str.2 = hidden unnamed_addr constant [42 x i8] c"improper format - type must be an integer\00", align 1
@.str.3.4 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4 = hidden unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.5 = hidden unnamed_addr constant [41 x i8] c"allocation failure for non-key attribute\00", align 1
@.str.6 = hidden unnamed_addr constant [33 x i8] c"allocation failure - split entry\00", align 1
@splitNode.name = hidden global [10 x i8] c"splitNode\00", align 1
@.str.1.7 = hidden unnamed_addr constant [34 x i8] c"allocation failure - sibling node\00", align 1
@.str.8 = hidden unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@getDeleteCommand.name = hidden global [17 x i8] c"getDeleteCommand\00", align 16
@.str.1.9 = hidden unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.2.10 = hidden unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.3.11 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4.12 = hidden unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1
@outputQuery.dataObjectString = hidden global [44484 x i8] zeroinitializer, align 16
@outputQuery.temp = hidden global [51 x i8] zeroinitializer, align 16
@.str.13 = hidden unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.1.14 = hidden unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2.15 = hidden unnamed_addr constant [2 x i8] c"\0A\00", align 1
@outputBuffer = hidden global [88967 x i8] zeroinitializer, align 16
@outputFile = hidden global %struct._IO_FILE* null, align 8
@.str.3.16 = hidden unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = hidden unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@createDataObject.name = hidden global [17 x i8] c"createDataObject\00", align 16
@.str.1.20 = hidden unnamed_addr constant [30 x i8] c"invalid object type to create\00", align 1
@.str.21 = hidden unnamed_addr constant [24 x i8] c"missing argument for -i\00", align 1
@openFiles.name = hidden global [10 x i8] c"openFiles\00", align 1
@.str.1.22 = hidden unnamed_addr constant [20 x i8] c"Usage: %s [-h], or\0A\00", align 1
@.str.2.23 = hidden unnamed_addr constant [10 x i8] c"       %s\00", align 1
@.str.3.24 = hidden unnamed_addr constant [27 x i8] c" [-i <input file = stdin>]\00", align 1
@.str.4.25 = hidden unnamed_addr constant [29 x i8] c" [-o <output file = stdout>]\00", align 1
@.str.5.26 = hidden unnamed_addr constant [31 x i8] c" [-m <metrics file = stderr>]\0A\00", align 1
@.str.6.27 = hidden unnamed_addr constant [24 x i8] c"missing argument for -o\00", align 1
@.str.7 = hidden unnamed_addr constant [24 x i8] c"missing argument for -m\00", align 1
@.str.8.28 = hidden unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.9 = hidden unnamed_addr constant [34 x i8] c"incorrect format - unknown option\00", align 1
@.str.10 = hidden unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = hidden unnamed_addr constant [25 x i8] c"error opening input file\00", align 1
@.str.12 = hidden unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13.29 = hidden unnamed_addr constant [26 x i8] c"error opening output file\00", align 1
@.str.14 = hidden unnamed_addr constant [27 x i8] c"error opening metrics file\00", align 1
@.str.30 = hidden unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@delete.name = hidden global [7 x i8] c"delete\00", align 1
@.str.1.31 = hidden unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1
@.str.32 = hidden unnamed_addr constant [22 x i8] c"invalid fan specified\00", align 1
@getInitCommand.name = hidden global [15 x i8] c"getInitCommand\00", align 1
@.str.1.33 = hidden unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.2.34 = hidden unnamed_addr constant [41 x i8] c"improper format - fan must be an integer\00", align 1
@getNonKeyAttribute.name = hidden global [19 x i8] c"getNonKeyAttribute\00", align 16
@.str.37 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.40 = hidden unnamed_addr constant [46 x i8] c"Error Message Too Large for Buffer: flushing\0A\00", align 1
@.str.1.41 = hidden unnamed_addr constant [17 x i8] c"unconnected: %s\0A\00", align 1
@errorBuffer = hidden global [1024 x i8] zeroinitializer, align 16
@.str.2.42 = hidden unnamed_addr constant [37 x i8] c"Error Message Buffer full: flushing\0A\00", align 1
@.str.3.43 = hidden unnamed_addr constant [21 x i8] c"unconnected: %s: %s\0A\00", align 1
@.str.4.44 = hidden unnamed_addr constant [12 x i8] c"unconnected\00", align 1
@.str.5.45 = hidden unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6.46 = hidden unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.49 = hidden unnamed_addr constant [24 x i8] c"invalid level specified\00", align 1
@createIndexNode.name = hidden global [16 x i8] c"createIndexNode\00", align 16
@.str.1.50 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.51 = hidden unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@getQueryCommand.name = hidden global [16 x i8] c"getQueryCommand\00", align 16
@.str.1.52 = hidden unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.2.53 = hidden unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.3.54 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.4.55 = hidden unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1
@.str.60 = hidden unnamed_addr constant [27 x i8] c"can't choose entry on node\00", align 1
@insertEntry.name = hidden global [12 x i8] c"insertEntry\00", align 1
@.str.1.61 = hidden unnamed_addr constant [22 x i8] c"can't split LEAF node\00", align 1
@.str.2.62 = hidden unnamed_addr constant [26 x i8] c"can't split non-LEAF node\00", align 1
@.str.65 = hidden unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@createIndexEntry.name = hidden global [17 x i8] c"createIndexEntry\00", align 16
@startTime = hidden global i64 0, align 8
@.str.70 = hidden unnamed_addr constant [25 x i8] c"error closing input file\00", align 1
@closeFiles.name = hidden global [11 x i8] c"closeFiles\00", align 1
@.str.1.71 = hidden unnamed_addr constant [26 x i8] c"error closing output file\00", align 1
@.str.2.72 = hidden unnamed_addr constant [26 x i8] c"error closing metric file\00", align 1
@.str.77 = hidden unnamed_addr constant [10 x i8] c"root node\00", align 1
@.str.1.78 = hidden unnamed_addr constant [32 x i8] c"Can't read first command (INIT)\00", align 1
@.str.2.79 = hidden unnamed_addr constant [34 x i8] c"First command is not INIT command\00", align 1
@.str.3.80 = hidden unnamed_addr constant [29 x i8] c"Additional INIT command read\00", align 1
@.str.83 = hidden unnamed_addr constant [39 x i8] c"can't create entry for new data object\00", align 1
@insert.name = hidden global [7 x i8] c"insert\00", align 1
@.str.1.84 = hidden unnamed_addr constant [27 x i8] c"can't create new root node\00", align 1
@.str.2.85 = hidden unnamed_addr constant [32 x i8] c"can't create entry for old root\00", align 1
@.str.88 = hidden unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@query.name = hidden global [6 x i8] c"query\00", align 1
@.str.1.89 = hidden unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1
@getString.buffer = hidden global [1025 x i8] zeroinitializer, align 16
@.str.92 = hidden unnamed_addr constant [31 x i8] c"maximum buffer length exceeded\00", align 1
@getString.name = hidden global [10 x i8] c"getString\00", align 1
@.str.1.93 = hidden unnamed_addr constant [41 x i8] c"error pushing character back onto stream\00", align 1
@.str.98 = hidden unnamed_addr constant [14 x i8] c"invalid level\00", align 1
@deleteIndexEntry.name = hidden global [17 x i8] c"deleteIndexEntry\00", align 16
@.str.101 = hidden unnamed_addr constant [21 x i8] c"unknown command code\00", align 1
@getNextCommandCode.name = hidden global [19 x i8] c"getNextCommandCode\00", align 16
@.str.1.102 = hidden unnamed_addr constant [42 x i8] c"improper format - code must be an integer\00", align 1
@.str.107 = hidden unnamed_addr constant [36 x i8] c"lastTimeMark doesn't seem to be set\00", align 1
@updateMetricsData.name = hidden global [18 x i8] c"updateMetricsData\00", align 16
@.str.108 = hidden unnamed_addr constant [29 x i8] c"DIS Data Management Metrics\0A\00", align 1
@.str.1.109 = hidden unnamed_addr constant [29 x i8] c"    total time  = %li msecs\0A\00", align 1
@.str.2.110 = hidden unnamed_addr constant [29 x i8] c"    input time  = %li msecs\0A\00", align 1
@.str.3.111 = hidden unnamed_addr constant [29 x i8] c"    output time = %li msecs\0A\00", align 1
@.str.4.112 = hidden unnamed_addr constant [30 x i8] c"    Insert Commmand Metrics:\0A\00", align 1
@.str.5.113 = hidden unnamed_addr constant [40 x i8] c"        best time          = %li msecs\0A\00", align 1
@.str.6.114 = hidden unnamed_addr constant [40 x i8] c"        worst time         = %li msecs\0A\00", align 1
@.str.7.115 = hidden unnamed_addr constant [39 x i8] c"        average            = %f msecs\0A\00", align 1
@.str.8.116 = hidden unnamed_addr constant [39 x i8] c"        standard deviation = %f msecs\0A\00", align 1
@.str.9.117 = hidden unnamed_addr constant [29 x i8] c"    Query Commmand Metrics:\0A\00", align 1
@.str.10.118 = hidden unnamed_addr constant [30 x i8] c"    Delete Commmand Metrics:\0A\00", align 1
@getKeyAttribute.name = hidden global [16 x i8] c"getKeyAttribute\00", align 16
@.str.123 = hidden unnamed_addr constant [18 x i8] c"Lower T > Upper T\00", align 1
@validIndexKey.name = hidden global [14 x i8] c"validIndexKey\00", align 1
@.str.1.124 = hidden unnamed_addr constant [18 x i8] c"Lower X > Upper X\00", align 1
@.str.2.125 = hidden unnamed_addr constant [18 x i8] c"Lower Y > Upper Y\00", align 1
@.str.3.126 = hidden unnamed_addr constant [18 x i8] c"Lower Z > Upper Z\00", align 1
@.str.4.129 = hidden unnamed_addr constant [23 x i8] c"invalid attribute code\00", align 1
@validAttributes.name = hidden global [16 x i8] c"validAttributes\00", align 16
@.str.5.130 = hidden unnamed_addr constant [23 x i8] c"key value out-of-range\00", align 1
@.str.6.131 = hidden unnamed_addr constant [26 x i8] c"non-key value set to NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
declare void @partitionEntries(%struct.IndexEntry*, i64, %struct.IndexEntry**, %struct.IndexEntry**) #0

; Function Attrs: noinline nounwind optnone uwtable
define i64 @splitNode(%struct.IndexNode*, %struct.IndexEntry*, i64, %struct.IndexEntry**) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.IndexNode*, align 8
  %7 = alloca %struct.IndexEntry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.IndexEntry**, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %6, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %9, align 8
  %12 = call %struct.IndexEntry* @createIndexEntry()
  %13 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  store %struct.IndexEntry* %12, %struct.IndexEntry** %13, align 8
  %14 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %16 = icmp eq %struct.IndexEntry* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %4
  call void @errorMessage(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %60

; <label>:18:                                     ; preds = %4
  %19 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %20 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.IndexNode* @createIndexNode(i64 %21)
  store %struct.IndexNode* %22, %struct.IndexNode** %11, align 8
  %23 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %24 = icmp eq %struct.IndexNode* %23, null
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %18
  %26 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %26, align 8
  %28 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %29 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %27, i64 %30)
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1.7, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %60

; <label>:31:                                     ; preds = %18
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  store %struct.IndexEntry* %33, %struct.IndexEntry** %10, align 8
  %34 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %35 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %34, i32 0, i32 1
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %35, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %38 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %37, i32 0, i32 2
  store %struct.IndexEntry* %36, %struct.IndexEntry** %38, align 8
  %39 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %40 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %39, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %40, align 8
  %41 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %42, align 8
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %46 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %45, i32 0, i32 1
  %47 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %48 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %47, i32 0, i32 1
  call void @partitionEntries(%struct.IndexEntry* %43, i64 %44, %struct.IndexEntry** %46, %struct.IndexEntry** %48)
  %49 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %50 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %49, i32 0, i32 1
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %50, align 8
  %52 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %53 = load %struct.IndexEntry*, %struct.IndexEntry** %52, align 8
  %54 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %53, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %51, %struct.IndexKey* %54)
  %55 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %56 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %56, align 8
  %58 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %57, i32 0, i32 0
  %59 = bitcast %union.anon* %58 to %struct.IndexNode**
  store %struct.IndexNode* %55, %struct.IndexNode** %59, align 8
  store i64 0, i64* %5, align 8
  br label %60

; <label>:60:                                     ; preds = %32, %25, %17
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexNode* @createIndexNode(i64) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexEntry* @createIndexEntry() #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @deleteIndexEntry(%struct.IndexEntry*, i64) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}