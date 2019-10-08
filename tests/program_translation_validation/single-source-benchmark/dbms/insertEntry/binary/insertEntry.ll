; ModuleID = 'insertEntry.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
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
declare i64 @splitNode(%struct.IndexNode*, %struct.IndexEntry*, i64, %struct.IndexEntry**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexEntry* @chooseEntry(%struct.IndexNode*, %struct.IndexEntry*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
define i64 @insertEntry(%struct.IndexNode*, %struct.IndexEntry*, i64, i64, %struct.IndexEntry**) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexEntry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IndexEntry**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexEntry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.IndexEntry*, align 8
  %18 = alloca %struct.IndexEntry*, align 8
  %19 = alloca i64, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.IndexEntry** %4, %struct.IndexEntry*** %11, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %21 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %113

; <label>:25:                                     ; preds = %5
  %26 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %28 = call %struct.IndexEntry* @chooseEntry(%struct.IndexNode* %26, %struct.IndexEntry* %27)
  store %struct.IndexEntry* %28, %struct.IndexEntry** %13, align 8
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %30 = icmp eq %struct.IndexEntry* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %25
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %6, align 8
  br label %163

; <label>:32:                                     ; preds = %25
  %33 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %34 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %33, i32 0, i32 0
  %35 = bitcast %union.anon* %34 to %struct.IndexNode**
  %36 = load %struct.IndexNode*, %struct.IndexNode** %35, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %41 = call i64 @insertEntry(%struct.IndexNode* %36, %struct.IndexEntry* %37, i64 %38, i64 %39, %struct.IndexEntry** %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %100

; <label>:44:                                     ; preds = %32
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %46 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %45, i32 0, i32 0
  %47 = bitcast %union.anon* %46 to %struct.IndexNode**
  %48 = load %struct.IndexNode*, %struct.IndexNode** %47, align 8
  %49 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %48, i32 0, i32 1
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %49, align 8
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %52 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %51, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %50, %struct.IndexKey* %52)
  %53 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %53, align 8
  %55 = icmp ne %struct.IndexEntry* %54, null
  br i1 %55, label %56, label %99

; <label>:56:                                     ; preds = %44
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %15, align 8
  store i64 0, i64* %16, align 8
  %57 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %58 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %57, i32 0, i32 1
  %59 = load %struct.IndexEntry*, %struct.IndexEntry** %58, align 8
  store %struct.IndexEntry* %59, %struct.IndexEntry** %15, align 8
  %60 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %60, %struct.IndexEntry** %14, align 8
  br label %61

; <label>:61:                                     ; preds = %64, %56
  %62 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %63 = icmp ne %struct.IndexEntry* %62, null
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %61
  %65 = load i64, i64* %16, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %16, align 8
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %67, %struct.IndexEntry** %14, align 8
  %68 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %69 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %68, i32 0, i32 2
  %70 = load %struct.IndexEntry*, %struct.IndexEntry** %69, align 8
  store %struct.IndexEntry* %70, %struct.IndexEntry** %15, align 8
  br label %61

; <label>:71:                                     ; preds = %61
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %71
  %76 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %76, align 8
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %79 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %78, i32 0, i32 2
  store %struct.IndexEntry* %77, %struct.IndexEntry** %79, align 8
  %80 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %80, align 8
  br label %98

; <label>:81:                                     ; preds = %71
  %82 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %83 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %84 = load %struct.IndexEntry*, %struct.IndexEntry** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @splitNode(%struct.IndexNode* %82, %struct.IndexEntry* %84, i64 %85, %struct.IndexEntry** %15)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %81
  %90 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %91 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* %90, %struct.IndexEntry** %91, align 8
  br label %97

; <label>:92:                                     ; preds = %81
  %93 = load i64, i64* %12, align 8
  %94 = icmp eq i64 %93, 1
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %92
  store i64 2, i64* %6, align 8
  br label %163

; <label>:96:                                     ; preds = %92
  br label %97

; <label>:97:                                     ; preds = %96, %89
  br label %98

; <label>:98:                                     ; preds = %97, %75
  br label %99

; <label>:99:                                     ; preds = %98, %44
  br label %112

; <label>:100:                                    ; preds = %32
  %101 = load i64, i64* %12, align 8
  %102 = icmp eq i64 %101, 1
  br i1 %102, label %109, label %103

; <label>:103:                                    ; preds = %100
  %104 = load i64, i64* %12, align 8
  %105 = icmp eq i64 %104, 2
  br i1 %105, label %109, label %106

; <label>:106:                                    ; preds = %103
  %107 = load i64, i64* %12, align 8
  %108 = icmp eq i64 %107, 3
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %106, %103, %100
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %6, align 8
  br label %163

; <label>:111:                                    ; preds = %106
  br label %112

; <label>:112:                                    ; preds = %111, %99
  br label %162

; <label>:113:                                    ; preds = %5
  store %struct.IndexEntry* null, %struct.IndexEntry** %17, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %18, align 8
  store i64 0, i64* %19, align 8
  %114 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %115 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %114, i32 0, i32 1
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %115, align 8
  store %struct.IndexEntry* %116, %struct.IndexEntry** %18, align 8
  %117 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %117, %struct.IndexEntry** %17, align 8
  br label %118

; <label>:118:                                    ; preds = %121, %113
  %119 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %120 = icmp ne %struct.IndexEntry* %119, null
  br i1 %120, label %121, label %128

; <label>:121:                                    ; preds = %118
  %122 = load i64, i64* %19, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %19, align 8
  %124 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %124, %struct.IndexEntry** %17, align 8
  %125 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %126 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %125, i32 0, i32 2
  %127 = load %struct.IndexEntry*, %struct.IndexEntry** %126, align 8
  store %struct.IndexEntry* %127, %struct.IndexEntry** %18, align 8
  br label %118

; <label>:128:                                    ; preds = %118
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %145

; <label>:132:                                    ; preds = %128
  %133 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %134 = icmp eq %struct.IndexEntry* %133, null
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %132
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %137 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %138 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %137, i32 0, i32 1
  store %struct.IndexEntry* %136, %struct.IndexEntry** %138, align 8
  br label %143

; <label>:139:                                    ; preds = %132
  %140 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %141 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %142 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %141, i32 0, i32 2
  store %struct.IndexEntry* %140, %struct.IndexEntry** %142, align 8
  br label %143

; <label>:143:                                    ; preds = %139, %135
  %144 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %144, align 8
  br label %161

; <label>:145:                                    ; preds = %128
  %146 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %147 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %150 = call i64 @splitNode(%struct.IndexNode* %146, %struct.IndexEntry* %147, i64 %148, %struct.IndexEntry** %149)
  store i64 %150, i64* %12, align 8
  %151 = load i64, i64* %12, align 8
  %152 = icmp eq i64 %151, 1
  br i1 %152, label %153, label %160

; <label>:153:                                    ; preds = %145
  %154 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %155 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %153
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.61, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %6, align 8
  br label %163

; <label>:159:                                    ; preds = %153
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.62, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %6, align 8
  br label %163

; <label>:160:                                    ; preds = %145
  br label %161

; <label>:161:                                    ; preds = %160, %143
  br label %162

; <label>:162:                                    ; preds = %161, %112
  store i64 0, i64* %6, align 8
  br label %163

; <label>:163:                                    ; preds = %162, %159, %158, %109, %95, %31
  %164 = load i64, i64* %6, align 8
  ret i64 %164
}

; Function Attrs: noinline nounwind optnone uwtable
declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
