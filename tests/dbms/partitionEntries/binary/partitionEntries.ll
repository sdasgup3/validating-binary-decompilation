; ModuleID = 'partitionEntries.bc'
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
define void @partitionEntries(%struct.IndexEntry*, i64, %struct.IndexEntry**, %struct.IndexEntry**) #0 {
  %5 = alloca %struct.IndexEntry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexEntry**, align 8
  %8 = alloca %struct.IndexEntry**, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexEntry*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexKey, align 8
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.IndexKey, align 8
  %20 = alloca float, align 4
  store %struct.IndexEntry* %0, %struct.IndexEntry** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.IndexEntry** %2, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %8, align 8
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %22 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %21, %struct.IndexEntry** %22, align 8
  %23 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %24 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %23, i32 0, i32 2
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %24, align 8
  %26 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %25, %struct.IndexEntry** %26, align 8
  %27 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %27, align 8
  %29 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %28, i32 0, i32 1
  %30 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %30, align 8
  %32 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %31, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %29, %struct.IndexKey* %32, %struct.IndexKey* %15)
  %33 = call float @volume(%struct.IndexKey* byval align 8 %15)
  store float %33, float* %16, align 4
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %9, align 8
  br label %35

; <label>:35:                                     ; preds = %68, %4
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %37 = icmp ne %struct.IndexEntry* %36, null
  br i1 %37, label %38, label %72

; <label>:38:                                     ; preds = %35
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %40 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %39, i32 0, i32 2
  %41 = load %struct.IndexEntry*, %struct.IndexEntry** %40, align 8
  store %struct.IndexEntry* %41, %struct.IndexEntry** %10, align 8
  br label %42

; <label>:42:                                     ; preds = %63, %38
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %44 = icmp ne %struct.IndexEntry* %43, null
  br i1 %44, label %45, label %67

; <label>:45:                                     ; preds = %42
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 1
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %49 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %48, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %47, %struct.IndexKey* %49, %struct.IndexKey* %19)
  %50 = call float @volume(%struct.IndexKey* byval align 8 %19)
  store float %50, float* %20, align 4
  %51 = load float, float* %20, align 4
  %52 = load float, float* %16, align 4
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %54, label %62

; <label>:54:                                     ; preds = %45
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %56 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %55, %struct.IndexEntry** %56, align 8
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %58 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %57, %struct.IndexEntry** %58, align 8
  %59 = bitcast %struct.IndexKey* %15 to i8*
  %60 = bitcast %struct.IndexKey* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 4, i1 false)
  %61 = load float, float* %20, align 4
  store float %61, float* %16, align 4
  br label %62

; <label>:62:                                     ; preds = %54, %45
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %65 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %64, i32 0, i32 2
  %66 = load %struct.IndexEntry*, %struct.IndexEntry** %65, align 8
  store %struct.IndexEntry* %66, %struct.IndexEntry** %10, align 8
  br label %42

; <label>:67:                                     ; preds = %42
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %70 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %69, i32 0, i32 2
  %71 = load %struct.IndexEntry*, %struct.IndexEntry** %70, align 8
  store %struct.IndexEntry* %71, %struct.IndexEntry** %9, align 8
  br label %35

; <label>:72:                                     ; preds = %35
  %73 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %73, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %74

; <label>:74:                                     ; preds = %110, %72
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %76 = icmp ne %struct.IndexEntry* %75, null
  br i1 %76, label %77, label %111

; <label>:77:                                     ; preds = %74
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %79 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %80 = load %struct.IndexEntry*, %struct.IndexEntry** %79, align 8
  %81 = icmp eq %struct.IndexEntry* %78, %80
  br i1 %81, label %87, label %82

; <label>:82:                                     ; preds = %77
  %83 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %84 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %84, align 8
  %86 = icmp eq %struct.IndexEntry* %83, %85
  br i1 %86, label %87, label %105

; <label>:87:                                     ; preds = %82, %77
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %89 = icmp eq %struct.IndexEntry* %88, null
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %87
  %91 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %92 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %91, i32 0, i32 2
  %93 = load %struct.IndexEntry*, %struct.IndexEntry** %92, align 8
  store %struct.IndexEntry* %93, %struct.IndexEntry** %5, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %94, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %104

; <label>:95:                                     ; preds = %87
  %96 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %97 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %96, i32 0, i32 2
  %98 = load %struct.IndexEntry*, %struct.IndexEntry** %97, align 8
  %99 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %100 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %99, i32 0, i32 2
  store %struct.IndexEntry* %98, %struct.IndexEntry** %100, align 8
  %101 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %102 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %101, i32 0, i32 2
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %102, align 8
  store %struct.IndexEntry* %103, %struct.IndexEntry** %11, align 8
  br label %104

; <label>:104:                                    ; preds = %95, %90
  br label %110

; <label>:105:                                    ; preds = %82
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* %106, %struct.IndexEntry** %12, align 8
  %107 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %108 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %107, i32 0, i32 2
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %108, align 8
  store %struct.IndexEntry* %109, %struct.IndexEntry** %11, align 8
  br label %110

; <label>:110:                                    ; preds = %105, %104
  br label %74

; <label>:111:                                    ; preds = %74
  %112 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %113 = load %struct.IndexEntry*, %struct.IndexEntry** %112, align 8
  %114 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %113, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %114, align 8
  %115 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %115, align 8
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %116, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %117, align 8
  store i64 1, i64* %17, align 8
  store i64 1, i64* %18, align 8
  %118 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %119 = load %struct.IndexEntry*, %struct.IndexEntry** %118, align 8
  store %struct.IndexEntry* %119, %struct.IndexEntry** %13, align 8
  %120 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %121 = load %struct.IndexEntry*, %struct.IndexEntry** %120, align 8
  store %struct.IndexEntry* %121, %struct.IndexEntry** %14, align 8
  br label %122

; <label>:122:                                    ; preds = %222, %111
  %123 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %124 = icmp ne %struct.IndexEntry* %123, null
  br i1 %124, label %125, label %223

; <label>:125:                                    ; preds = %122
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %172

; <label>:129:                                    ; preds = %125
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %172

; <label>:133:                                    ; preds = %129
  %134 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %135 = load %struct.IndexEntry*, %struct.IndexEntry** %134, align 8
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %137 = call float @penalty(%struct.IndexEntry* byval align 8 %135, %struct.IndexEntry* byval align 8 %136)
  %138 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %139 = load %struct.IndexEntry*, %struct.IndexEntry** %138, align 8
  %140 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %141 = call float @penalty(%struct.IndexEntry* byval align 8 %139, %struct.IndexEntry* byval align 8 %140)
  %142 = fcmp olt float %137, %141
  br i1 %142, label %143, label %157

; <label>:143:                                    ; preds = %133
  %144 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %145 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %146 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %145, i32 0, i32 2
  store %struct.IndexEntry* %144, %struct.IndexEntry** %146, align 8
  %147 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %148 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %147, i32 0, i32 2
  %149 = load %struct.IndexEntry*, %struct.IndexEntry** %148, align 8
  store %struct.IndexEntry* %149, %struct.IndexEntry** %5, align 8
  %150 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %151 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %150, i32 0, i32 2
  %152 = load %struct.IndexEntry*, %struct.IndexEntry** %151, align 8
  store %struct.IndexEntry* %152, %struct.IndexEntry** %13, align 8
  %153 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %154 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %153, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %154, align 8
  %155 = load i64, i64* %17, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %17, align 8
  br label %171

; <label>:157:                                    ; preds = %133
  %158 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %159 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %160 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %159, i32 0, i32 2
  store %struct.IndexEntry* %158, %struct.IndexEntry** %160, align 8
  %161 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %162 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %161, i32 0, i32 2
  %163 = load %struct.IndexEntry*, %struct.IndexEntry** %162, align 8
  store %struct.IndexEntry* %163, %struct.IndexEntry** %5, align 8
  %164 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %165 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %164, i32 0, i32 2
  %166 = load %struct.IndexEntry*, %struct.IndexEntry** %165, align 8
  store %struct.IndexEntry* %166, %struct.IndexEntry** %14, align 8
  %167 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %168 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %167, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %168, align 8
  %169 = load i64, i64* %18, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %18, align 8
  br label %171

; <label>:171:                                    ; preds = %157, %143
  br label %222

; <label>:172:                                    ; preds = %129, %125
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %6, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %194

; <label>:176:                                    ; preds = %172
  %177 = load i64, i64* %18, align 8
  %178 = load i64, i64* %6, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %180, label %194

; <label>:180:                                    ; preds = %176
  %181 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %182 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %183 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %182, i32 0, i32 2
  store %struct.IndexEntry* %181, %struct.IndexEntry** %183, align 8
  %184 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %185 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %184, i32 0, i32 2
  %186 = load %struct.IndexEntry*, %struct.IndexEntry** %185, align 8
  store %struct.IndexEntry* %186, %struct.IndexEntry** %5, align 8
  %187 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %188 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %187, i32 0, i32 2
  %189 = load %struct.IndexEntry*, %struct.IndexEntry** %188, align 8
  store %struct.IndexEntry* %189, %struct.IndexEntry** %14, align 8
  %190 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %191 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %190, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %191, align 8
  %192 = load i64, i64* %18, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %18, align 8
  br label %221

; <label>:194:                                    ; preds = %176, %172
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %6, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %216

; <label>:198:                                    ; preds = %194
  %199 = load i64, i64* %17, align 8
  %200 = load i64, i64* %6, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %216

; <label>:202:                                    ; preds = %198
  %203 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %204 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %205 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %204, i32 0, i32 2
  store %struct.IndexEntry* %203, %struct.IndexEntry** %205, align 8
  %206 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %207 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %206, i32 0, i32 2
  %208 = load %struct.IndexEntry*, %struct.IndexEntry** %207, align 8
  store %struct.IndexEntry* %208, %struct.IndexEntry** %5, align 8
  %209 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %210 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %209, i32 0, i32 2
  %211 = load %struct.IndexEntry*, %struct.IndexEntry** %210, align 8
  store %struct.IndexEntry* %211, %struct.IndexEntry** %13, align 8
  %212 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %213 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %212, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %213, align 8
  %214 = load i64, i64* %17, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %17, align 8
  br label %220

; <label>:216:                                    ; preds = %198, %194
  %217 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %218 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %217, i32 0, i32 2
  %219 = load %struct.IndexEntry*, %struct.IndexEntry** %218, align 8
  store %struct.IndexEntry* %219, %struct.IndexEntry** %5, align 8
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @partitionEntries.name, i32 0, i32 0), i8 signext 1)
  br label %220

; <label>:220:                                    ; preds = %216, %202
  br label %221

; <label>:221:                                    ; preds = %220, %180
  br label %222

; <label>:222:                                    ; preds = %221, %171
  br label %122

; <label>:223:                                    ; preds = %122
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind optnone uwtable
declare float @volume(%struct.IndexKey* byval align 8) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
declare float @penalty(%struct.IndexEntry* byval align 8, %struct.IndexEntry* byval align 8) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @keyUnion(%struct.IndexKey*, %struct.IndexKey*, %struct.IndexKey*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
