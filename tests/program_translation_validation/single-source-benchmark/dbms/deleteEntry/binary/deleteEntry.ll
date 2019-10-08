; ModuleID = 'deleteEntry.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }

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
declare signext i8 @consistentKey(%struct.IndexKey*, %struct.IndexKey*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare signext i8 @consistentNonKey(i8*, i8*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #0

; Function Attrs: noinline nounwind optnone uwtable
define void @deleteEntry(%struct.IndexNode*, %struct.IndexKey*, %struct.DataAttribute*, i8*) #0 {
  %5 = alloca %struct.IndexNode*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.DataAttribute*, align 8
  %16 = alloca %struct.DataObject*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  store i8 0, i8* %20, align 1
  %21 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %22 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %106

; <label>:25:                                     ; preds = %4
  store %struct.IndexEntry* null, %struct.IndexEntry** %10, align 8
  %26 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %27 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i32 0, i32 1
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %27, align 8
  store %struct.IndexEntry* %28, %struct.IndexEntry** %9, align 8
  br label %29

; <label>:29:                                     ; preds = %104, %25
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %31 = icmp ne %struct.IndexEntry* %30, null
  br i1 %31, label %32, label %105

; <label>:32:                                     ; preds = %29
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %34 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %33, i32 0, i32 1
  %35 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %36 = call signext i8 @consistentKey(%struct.IndexKey* %34, %struct.IndexKey* %35)
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %99

; <label>:39:                                     ; preds = %32
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %41 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.IndexNode**
  %43 = load %struct.IndexNode*, %struct.IndexNode** %42, align 8
  %44 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %45 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  call void @deleteEntry(%struct.IndexNode* %43, %struct.IndexKey* %44, %struct.DataAttribute* %45, i8* %11)
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 0
  %48 = bitcast %union.anon* %47 to %struct.IndexNode**
  %49 = load %struct.IndexNode*, %struct.IndexNode** %48, align 8
  %50 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %49, i32 0, i32 1
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %50, align 8
  %52 = icmp eq %struct.IndexEntry* %51, null
  br i1 %52, label %53, label %74

; <label>:53:                                     ; preds = %39
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %55 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %54, i32 0, i32 2
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %55, align 8
  store %struct.IndexEntry* %56, %struct.IndexEntry** %12, align 8
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %58 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %59 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %57, i64 %60)
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  store %struct.IndexEntry* %61, %struct.IndexEntry** %9, align 8
  %62 = load i8*, i8** %8, align 8
  store i8 1, i8* %62, align 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %64 = icmp ne %struct.IndexEntry* %63, null
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %53
  %66 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %68 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %67, i32 0, i32 2
  store %struct.IndexEntry* %66, %struct.IndexEntry** %68, align 8
  br label %73

; <label>:69:                                     ; preds = %53
  %70 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %71 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %72 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %71, i32 0, i32 1
  store %struct.IndexEntry* %70, %struct.IndexEntry** %72, align 8
  br label %73

; <label>:73:                                     ; preds = %69, %65
  br label %98

; <label>:74:                                     ; preds = %39
  %75 = load i8, i8* %11, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %92

; <label>:78:                                     ; preds = %74
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %79, i32 0, i32 0
  %81 = bitcast %union.anon* %80 to %struct.IndexNode**
  %82 = load %struct.IndexNode*, %struct.IndexNode** %81, align 8
  %83 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %82, i32 0, i32 1
  %84 = load %struct.IndexEntry*, %struct.IndexEntry** %83, align 8
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %86 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %85, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %84, %struct.IndexKey* %86)
  %87 = load i8*, i8** %8, align 8
  store i8 1, i8* %87, align 1
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %88, %struct.IndexEntry** %10, align 8
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %90 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %89, i32 0, i32 2
  %91 = load %struct.IndexEntry*, %struct.IndexEntry** %90, align 8
  store %struct.IndexEntry* %91, %struct.IndexEntry** %9, align 8
  br label %97

; <label>:92:                                     ; preds = %74
  %93 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %93, %struct.IndexEntry** %10, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %95 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %94, i32 0, i32 2
  %96 = load %struct.IndexEntry*, %struct.IndexEntry** %95, align 8
  store %struct.IndexEntry* %96, %struct.IndexEntry** %9, align 8
  br label %97

; <label>:97:                                     ; preds = %92, %78
  br label %98

; <label>:98:                                     ; preds = %97, %73
  br label %104

; <label>:99:                                     ; preds = %32
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %100, %struct.IndexEntry** %10, align 8
  %101 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %102 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %101, i32 0, i32 2
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %102, align 8
  store %struct.IndexEntry* %103, %struct.IndexEntry** %9, align 8
  br label %104

; <label>:104:                                    ; preds = %99, %98
  br label %29

; <label>:105:                                    ; preds = %29
  br label %217

; <label>:106:                                    ; preds = %4
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  %107 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %108 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %107, i32 0, i32 1
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %108, align 8
  store %struct.IndexEntry* %109, %struct.IndexEntry** %13, align 8
  br label %110

; <label>:110:                                    ; preds = %215, %106
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %112 = icmp ne %struct.IndexEntry* %111, null
  br i1 %112, label %113, label %216

; <label>:113:                                    ; preds = %110
  %114 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %115 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %114, i32 0, i32 1
  %116 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %117 = call signext i8 @consistentKey(%struct.IndexKey* %115, %struct.IndexKey* %116)
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %210

; <label>:120:                                    ; preds = %113
  %121 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %122 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %122 to %struct.DataObject**
  %124 = load %struct.DataObject*, %struct.DataObject** %123, align 8
  store %struct.DataObject* %124, %struct.DataObject** %16, align 8
  store i64 0, i64* %17, align 8
  %125 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %126 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %120
  store i64 18, i64* %17, align 8
  br label %144

; <label>:130:                                    ; preds = %120
  %131 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %132 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %136

; <label>:135:                                    ; preds = %130
  store i64 25, i64* %17, align 8
  br label %143

; <label>:136:                                    ; preds = %130
  %137 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %138 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %136
  store i64 51, i64* %17, align 8
  br label %142

; <label>:142:                                    ; preds = %141, %136
  br label %143

; <label>:143:                                    ; preds = %142, %135
  br label %144

; <label>:144:                                    ; preds = %143, %129
  store i8 1, i8* %18, align 1
  %145 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  store %struct.DataAttribute* %145, %struct.DataAttribute** %15, align 8
  br label %146

; <label>:146:                                    ; preds = %178, %144
  %147 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %148 = icmp ne %struct.DataAttribute* %147, null
  br i1 %148, label %149, label %153

; <label>:149:                                    ; preds = %146
  %150 = load i8, i8* %18, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 1
  br label %153

; <label>:153:                                    ; preds = %149, %146
  %154 = phi i1 [ false, %146 ], [ %152, %149 ]
  br i1 %154, label %155, label %182

; <label>:155:                                    ; preds = %153
  %156 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %157 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %17, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %178

; <label>:161:                                    ; preds = %155
  %162 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %163 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %162, i32 0, i32 1
  %164 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %163, align 8
  %165 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %166 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %164, i64 %167
  %169 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %168, i32 0, i32 0
  %170 = bitcast %union.anon.2* %169 to i8**
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %173 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %173, i32 0, i32 0
  %175 = bitcast %union.anon.2* %174 to i8**
  %176 = load i8*, i8** %175, align 8
  %177 = call signext i8 @consistentNonKey(i8* %171, i8* %176)
  store i8 %177, i8* %18, align 1
  br label %178

; <label>:178:                                    ; preds = %161, %155
  %179 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %180 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %179, i32 0, i32 2
  %181 = load %struct.DataAttribute*, %struct.DataAttribute** %180, align 8
  store %struct.DataAttribute* %181, %struct.DataAttribute** %15, align 8
  br label %146

; <label>:182:                                    ; preds = %153
  %183 = load i8, i8* %18, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

; <label>:186:                                    ; preds = %182
  %187 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %187, %struct.IndexEntry** %14, align 8
  %188 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %189 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %188, i32 0, i32 2
  %190 = load %struct.IndexEntry*, %struct.IndexEntry** %189, align 8
  store %struct.IndexEntry* %190, %struct.IndexEntry** %13, align 8
  br label %209

; <label>:191:                                    ; preds = %182
  %192 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %193 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %192, i32 0, i32 2
  %194 = load %struct.IndexEntry*, %struct.IndexEntry** %193, align 8
  store %struct.IndexEntry* %194, %struct.IndexEntry** %19, align 8
  %195 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %195, i64 0)
  %196 = load %struct.IndexEntry*, %struct.IndexEntry** %19, align 8
  store %struct.IndexEntry* %196, %struct.IndexEntry** %13, align 8
  %197 = load i8*, i8** %8, align 8
  store i8 1, i8* %197, align 1
  %198 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %199 = icmp ne %struct.IndexEntry* %198, null
  br i1 %199, label %200, label %204

; <label>:200:                                    ; preds = %191
  %201 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %202 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %203 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %202, i32 0, i32 2
  store %struct.IndexEntry* %201, %struct.IndexEntry** %203, align 8
  br label %208

; <label>:204:                                    ; preds = %191
  %205 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %206 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %207 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %206, i32 0, i32 1
  store %struct.IndexEntry* %205, %struct.IndexEntry** %207, align 8
  br label %208

; <label>:208:                                    ; preds = %204, %200
  br label %209

; <label>:209:                                    ; preds = %208, %186
  br label %215

; <label>:210:                                    ; preds = %113
  %211 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %211, %struct.IndexEntry** %14, align 8
  %212 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %213 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %212, i32 0, i32 2
  %214 = load %struct.IndexEntry*, %struct.IndexEntry** %213, align 8
  store %struct.IndexEntry* %214, %struct.IndexEntry** %13, align 8
  br label %215

; <label>:215:                                    ; preds = %210, %209
  br label %110

; <label>:216:                                    ; preds = %110
  br label %217

; <label>:217:                                    ; preds = %216, %105
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
declare void @deleteIndexEntry(%struct.IndexEntry*, i64) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
