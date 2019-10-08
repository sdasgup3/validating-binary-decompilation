; ModuleID = 'query.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
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
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
define i64 @query(%struct.IndexNode*, %struct.IndexKey*, %struct.DataAttribute*, i8 signext, void (%struct.DataObject*)*) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexKey*, align 8
  %9 = alloca %struct.DataAttribute*, align 8
  %10 = alloca i8, align 1
  %11 = alloca void (%struct.DataObject*)*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.DataAttribute*, align 8
  %15 = alloca %struct.DataObject*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %8, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %9, align 8
  store i8 %3, i8* %10, align 1
  store void (%struct.DataObject*)* %4, void (%struct.DataObject*)** %11, align 8
  %18 = load i8, i8* %10, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %5
  %22 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %23 = call signext i8 @validIndexKey(%struct.IndexKey* %22)
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %6, align 8
  br label %163

; <label>:27:                                     ; preds = %21
  %28 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %29 = call signext i8 @validAttributes(%struct.DataAttribute* %28)
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.89, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %6, align 8
  br label %163

; <label>:33:                                     ; preds = %27
  br label %34

; <label>:34:                                     ; preds = %33
  br label %35

; <label>:35:                                     ; preds = %34, %5
  %36 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %37 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %69

; <label>:40:                                     ; preds = %35
  %41 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 1
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %42, align 8
  store %struct.IndexEntry* %43, %struct.IndexEntry** %12, align 8
  br label %44

; <label>:44:                                     ; preds = %64, %40
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %46 = icmp ne %struct.IndexEntry* %45, null
  br i1 %46, label %47, label %68

; <label>:47:                                     ; preds = %44
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %49 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %48, i32 0, i32 1
  %50 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %51 = call signext i8 @consistentKey(%struct.IndexKey* %49, %struct.IndexKey* %50)
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %47
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %56 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %55, i32 0, i32 0
  %57 = bitcast %union.anon* %56 to %struct.IndexNode**
  %58 = load %struct.IndexNode*, %struct.IndexNode** %57, align 8
  %59 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %61 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %62 = call i64 @query(%struct.IndexNode* %58, %struct.IndexKey* %59, %struct.DataAttribute* %60, i8 signext 0, void (%struct.DataObject*)* %61)
  br label %63

; <label>:63:                                     ; preds = %54, %47
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %66 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %65, i32 0, i32 2
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %66, align 8
  store %struct.IndexEntry* %67, %struct.IndexEntry** %12, align 8
  br label %44

; <label>:68:                                     ; preds = %44
  br label %162

; <label>:69:                                     ; preds = %35
  %70 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %71 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %70, i32 0, i32 1
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %71, align 8
  store %struct.IndexEntry* %72, %struct.IndexEntry** %13, align 8
  br label %73

; <label>:73:                                     ; preds = %157, %69
  %74 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %75 = icmp ne %struct.IndexEntry* %74, null
  br i1 %75, label %76, label %161

; <label>:76:                                     ; preds = %73
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %78 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %77, i32 0, i32 1
  %79 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %80 = call signext i8 @consistentKey(%struct.IndexKey* %78, %struct.IndexKey* %79)
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %156

; <label>:83:                                     ; preds = %76
  %84 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %85 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.DataObject**
  %87 = load %struct.DataObject*, %struct.DataObject** %86, align 8
  store %struct.DataObject* %87, %struct.DataObject** %15, align 8
  store i64 0, i64* %16, align 8
  %88 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %89 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %83
  store i64 18, i64* %16, align 8
  br label %107

; <label>:93:                                     ; preds = %83
  %94 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %95 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %93
  store i64 25, i64* %16, align 8
  br label %106

; <label>:99:                                     ; preds = %93
  %100 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %101 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %99
  store i64 51, i64* %16, align 8
  br label %105

; <label>:105:                                    ; preds = %104, %99
  br label %106

; <label>:106:                                    ; preds = %105, %98
  br label %107

; <label>:107:                                    ; preds = %106, %92
  store i8 1, i8* %17, align 1
  %108 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  store %struct.DataAttribute* %108, %struct.DataAttribute** %14, align 8
  br label %109

; <label>:109:                                    ; preds = %141, %107
  %110 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %111 = icmp ne %struct.DataAttribute* %110, null
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %109
  %113 = load i8, i8* %17, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 1
  br label %116

; <label>:116:                                    ; preds = %112, %109
  %117 = phi i1 [ false, %109 ], [ %115, %112 ]
  br i1 %117, label %118, label %145

; <label>:118:                                    ; preds = %116
  %119 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %120 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %141

; <label>:124:                                    ; preds = %118
  %125 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %126 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %125, i32 0, i32 1
  %127 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %126, align 8
  %128 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %129 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %127, i64 %130
  %132 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %131, i32 0, i32 0
  %133 = bitcast %union.anon.2* %132 to i8**
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %136 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %136, i32 0, i32 0
  %138 = bitcast %union.anon.2* %137 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = call signext i8 @consistentNonKey(i8* %134, i8* %139)
  store i8 %140, i8* %17, align 1
  br label %141

; <label>:141:                                    ; preds = %124, %118
  %142 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %143 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %142, i32 0, i32 2
  %144 = load %struct.DataAttribute*, %struct.DataAttribute** %143, align 8
  store %struct.DataAttribute* %144, %struct.DataAttribute** %14, align 8
  br label %109

; <label>:145:                                    ; preds = %116
  %146 = load i8, i8* %17, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %155

; <label>:149:                                    ; preds = %145
  %150 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %151 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %152 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %151, i32 0, i32 0
  %153 = bitcast %union.anon* %152 to %struct.DataObject**
  %154 = load %struct.DataObject*, %struct.DataObject** %153, align 8
  call void %150(%struct.DataObject* %154)
  br label %155

; <label>:155:                                    ; preds = %149, %145
  br label %156

; <label>:156:                                    ; preds = %155, %76
  br label %157

; <label>:157:                                    ; preds = %156
  %158 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %159 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %158, i32 0, i32 2
  %160 = load %struct.IndexEntry*, %struct.IndexEntry** %159, align 8
  store %struct.IndexEntry* %160, %struct.IndexEntry** %13, align 8
  br label %73

; <label>:161:                                    ; preds = %73
  br label %162

; <label>:162:                                    ; preds = %161, %68
  store i64 0, i64* %6, align 8
  br label %163

; <label>:163:                                    ; preds = %162, %32, %26
  %164 = load i64, i64* %6, align 8
  ret i64 %164
}

; Function Attrs: noinline nounwind optnone uwtable
declare signext i8 @validIndexKey(%struct.IndexKey*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare signext i8 @validAttributes(%struct.DataAttribute*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
