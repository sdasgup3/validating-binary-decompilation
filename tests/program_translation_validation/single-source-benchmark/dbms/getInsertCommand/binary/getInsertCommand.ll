; ModuleID = 'getInsertCommand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.2 }
%union.anon.2 = type { i8* }

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
define i64 @getInsertCommand(%struct._IO_FILE*, %struct.DataObject**) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.DataObject**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.DataObject** %1, %struct.DataObject*** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = call i64 @getInt(%struct._IO_FILE* %12, i64* %8)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  br label %32

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %3, align 8
  br label %158

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 2
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %3, align 8
  br label %158

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  call void @errorMessage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %3, align 8
  br label %158

; <label>:29:                                     ; preds = %25
  br label %30

; <label>:30:                                     ; preds = %29
  br label %31

; <label>:31:                                     ; preds = %30
  br label %32

; <label>:32:                                     ; preds = %31, %16
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = call %struct.DataObject* @createDataObject(i32 1)
  %37 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %36, %struct.DataObject** %37, align 8
  store i64 18, i64* %9, align 8
  br label %53

; <label>:38:                                     ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %38
  %42 = call %struct.DataObject* @createDataObject(i32 2)
  %43 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %42, %struct.DataObject** %43, align 8
  store i64 25, i64* %9, align 8
  br label %52

; <label>:44:                                     ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %44
  %48 = call %struct.DataObject* @createDataObject(i32 3)
  %49 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %48, %struct.DataObject** %49, align 8
  store i64 51, i64* %9, align 8
  br label %51

; <label>:50:                                     ; preds = %44
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %3, align 8
  br label %158

; <label>:51:                                     ; preds = %47
  br label %52

; <label>:52:                                     ; preds = %51, %41
  br label %53

; <label>:53:                                     ; preds = %52, %35
  %54 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %55 = load %struct.DataObject*, %struct.DataObject** %54, align 8
  %56 = icmp eq %struct.DataObject* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.4, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %3, align 8
  br label %158

; <label>:58:                                     ; preds = %53
  store i64 0, i64* %6, align 8
  br label %59

; <label>:59:                                     ; preds = %104, %58
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %60, 8
  br i1 %61, label %62, label %107

; <label>:62:                                     ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %64 = call i64 @getKeyAttribute(%struct._IO_FILE* %63, float* %10)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

; <label>:67:                                     ; preds = %62
  %68 = load float, float* %10, align 4
  %69 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %70 = load %struct.DataObject*, %struct.DataObject** %69, align 8
  %71 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %70, i32 0, i32 1
  %72 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %72, i64 %73
  %75 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %74, i32 0, i32 0
  %76 = bitcast %union.anon.2* %75 to float*
  store float %68, float* %76, align 8
  br label %103

; <label>:77:                                     ; preds = %62
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %77
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %81 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %82 = load %struct.DataObject*, %struct.DataObject** %81, align 8
  %83 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %82, i32 0, i32 1
  %84 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %84, i64 %85
  %87 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %86, i32 0, i32 0
  %88 = bitcast %union.anon.2* %87 to float*
  store float 0xC7EFFFFFE0000000, float* %88, align 8
  store i64 2, i64* %3, align 8
  br label %158

; <label>:89:                                     ; preds = %77
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %89
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %93 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %94 = load %struct.DataObject*, %struct.DataObject** %93, align 8
  %95 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %94, i32 0, i32 1
  %96 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %96, i64 %97
  %99 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %98, i32 0, i32 0
  %100 = bitcast %union.anon.2* %99 to float*
  store float 0xC7EFFFFFE0000000, float* %100, align 8
  store i64 1, i64* %3, align 8
  br label %158

; <label>:101:                                    ; preds = %89
  br label %102

; <label>:102:                                    ; preds = %101
  br label %103

; <label>:103:                                    ; preds = %102, %67
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %59

; <label>:107:                                    ; preds = %59
  store i64 8, i64* %6, align 8
  br label %108

; <label>:108:                                    ; preds = %154, %107
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %157

; <label>:112:                                    ; preds = %108
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %113, i8** %11)
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* %7, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

; <label>:117:                                    ; preds = %112
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %120 = load %struct.DataObject*, %struct.DataObject** %119, align 8
  %121 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %120, i32 0, i32 1
  %122 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %122, i64 %123
  %125 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %124, i32 0, i32 0
  %126 = bitcast %union.anon.2* %125 to i8**
  store i8* %118, i8** %126, align 8
  br label %153

; <label>:127:                                    ; preds = %112
  %128 = load i64, i64* %7, align 8
  %129 = icmp eq i64 %128, 2
  br i1 %129, label %130, label %139

; <label>:130:                                    ; preds = %127
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %131 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %132 = load %struct.DataObject*, %struct.DataObject** %131, align 8
  %133 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %132, i32 0, i32 1
  %134 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %134, i64 %135
  %137 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %136, i32 0, i32 0
  %138 = bitcast %union.anon.2* %137 to i8**
  store i8* null, i8** %138, align 8
  store i64 2, i64* %3, align 8
  br label %158

; <label>:139:                                    ; preds = %127
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %140, 1
  br i1 %141, label %142, label %151

; <label>:142:                                    ; preds = %139
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i32 0, i32 0), i8 signext 1)
  %143 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %144 = load %struct.DataObject*, %struct.DataObject** %143, align 8
  %145 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %144, i32 0, i32 1
  %146 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %146, i64 %147
  %149 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %148, i32 0, i32 0
  %150 = bitcast %union.anon.2* %149 to i8**
  store i8* null, i8** %150, align 8
  store i64 4, i64* %3, align 8
  br label %158

; <label>:151:                                    ; preds = %139
  br label %152

; <label>:152:                                    ; preds = %151
  br label %153

; <label>:153:                                    ; preds = %152, %117
  br label %154

; <label>:154:                                    ; preds = %153
  %155 = load i64, i64* %6, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %6, align 8
  br label %108

; <label>:157:                                    ; preds = %108
  store i64 0, i64* %3, align 8
  br label %158

; <label>:158:                                    ; preds = %157, %142, %130, %92, %80, %57, %50, %28, %24, %20
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.DataObject* @createDataObject(i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getNonKeyAttribute(%struct._IO_FILE*, i8**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getInt(%struct._IO_FILE*, i64*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getKeyAttribute(%struct._IO_FILE*, float*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
