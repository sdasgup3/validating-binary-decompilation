; ModuleID = 'getQueryCommand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getNonKeyAttribute(%struct._IO_FILE*, i8**) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @getQueryCommand(%struct._IO_FILE*, %struct.IndexKey*, %struct.DataAttribute**) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DataAttribute*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute** %2, %struct.DataAttribute*** %7, align 8
  %13 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %14, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %15, align 4
  %16 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %17, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %18, align 4
  %19 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %20, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %21, align 4
  %22 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %24, align 4
  %25 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %26 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %26, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %27, align 4
  %28 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %29 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %29, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %30, align 4
  %31 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %33, align 4
  %34 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %35 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %35, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %36, align 4
  %37 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* null, %struct.DataAttribute** %37, align 8
  store i64 0, i64* %9, align 8
  br label %38

; <label>:38:                                     ; preds = %198, %3
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %199

; <label>:41:                                     ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %43 = call i64 @getInt(%struct._IO_FILE* %42, i64* %8)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %183

; <label>:46:                                     ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %46
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %50, 50
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49, %46
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %200

; <label>:53:                                     ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = icmp slt i64 %54, 8
  br i1 %55, label %56, label %144

; <label>:56:                                     ; preds = %53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %58 = call i64 @getKeyAttribute(%struct._IO_FILE* %57, float* %10)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %133

; <label>:61:                                     ; preds = %56
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %61
  %65 = load float, float* %10, align 4
  %66 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %67 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %67, i32 0, i32 0
  store float %65, float* %68, align 4
  br label %132

; <label>:69:                                     ; preds = %61
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %69
  %73 = load float, float* %10, align 4
  %74 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %75 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %75, i32 0, i32 1
  store float %73, float* %76, align 4
  br label %131

; <label>:77:                                     ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = icmp eq i64 %78, 2
  br i1 %79, label %80, label %85

; <label>:80:                                     ; preds = %77
  %81 = load float, float* %10, align 4
  %82 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %83 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %83, i32 0, i32 2
  store float %81, float* %84, align 4
  br label %130

; <label>:85:                                     ; preds = %77
  %86 = load i64, i64* %8, align 8
  %87 = icmp eq i64 %86, 3
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %85
  %89 = load float, float* %10, align 4
  %90 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %91 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %91, i32 0, i32 3
  store float %89, float* %92, align 4
  br label %129

; <label>:93:                                     ; preds = %85
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %101

; <label>:96:                                     ; preds = %93
  %97 = load float, float* %10, align 4
  %98 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %99 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %99, i32 0, i32 0
  store float %97, float* %100, align 4
  br label %128

; <label>:101:                                    ; preds = %93
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %102, 5
  br i1 %103, label %104, label %109

; <label>:104:                                    ; preds = %101
  %105 = load float, float* %10, align 4
  %106 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %107 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %107, i32 0, i32 1
  store float %105, float* %108, align 4
  br label %127

; <label>:109:                                    ; preds = %101
  %110 = load i64, i64* %8, align 8
  %111 = icmp eq i64 %110, 6
  br i1 %111, label %112, label %117

; <label>:112:                                    ; preds = %109
  %113 = load float, float* %10, align 4
  %114 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %115 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %115, i32 0, i32 2
  store float %113, float* %116, align 4
  br label %126

; <label>:117:                                    ; preds = %109
  %118 = load i64, i64* %8, align 8
  %119 = icmp eq i64 %118, 7
  br i1 %119, label %120, label %125

; <label>:120:                                    ; preds = %117
  %121 = load float, float* %10, align 4
  %122 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %123 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %123, i32 0, i32 3
  store float %121, float* %124, align 4
  br label %125

; <label>:125:                                    ; preds = %120, %117
  br label %126

; <label>:126:                                    ; preds = %125, %112
  br label %127

; <label>:127:                                    ; preds = %126, %104
  br label %128

; <label>:128:                                    ; preds = %127, %96
  br label %129

; <label>:129:                                    ; preds = %128, %88
  br label %130

; <label>:130:                                    ; preds = %129, %80
  br label %131

; <label>:131:                                    ; preds = %130, %72
  br label %132

; <label>:132:                                    ; preds = %131, %64
  br label %143

; <label>:133:                                    ; preds = %56
  %134 = load i64, i64* %9, align 8
  %135 = icmp eq i64 %134, 1
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %133
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.52, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %200

; <label>:137:                                    ; preds = %133
  %138 = load i64, i64* %9, align 8
  %139 = icmp eq i64 %138, 2
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %137
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.53, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 1, i64* %4, align 8
  br label %200

; <label>:141:                                    ; preds = %137
  br label %142

; <label>:142:                                    ; preds = %141
  br label %143

; <label>:143:                                    ; preds = %142, %132
  br label %181

; <label>:144:                                    ; preds = %53
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %146 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %145, i8** %11)
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %170

; <label>:149:                                    ; preds = %144
  %150 = call noalias i8* @malloc(i64 24) #2
  %151 = bitcast i8* %150 to %struct.DataAttribute*
  store %struct.DataAttribute* %151, %struct.DataAttribute** %12, align 8
  %152 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %153 = icmp eq %struct.DataAttribute* %152, null
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %149
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.54, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %200

; <label>:155:                                    ; preds = %149
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %158 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %161 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %161, i32 0, i32 0
  %163 = bitcast %union.anon.2* %162 to i8**
  store i8* %159, i8** %163, align 8
  %164 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  %165 = load %struct.DataAttribute*, %struct.DataAttribute** %164, align 8
  %166 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %167 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %166, i32 0, i32 2
  store %struct.DataAttribute* %165, %struct.DataAttribute** %167, align 8
  %168 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %169 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* %168, %struct.DataAttribute** %169, align 8
  br label %180

; <label>:170:                                    ; preds = %144
  %171 = load i64, i64* %9, align 8
  %172 = icmp eq i64 %171, 2
  br i1 %172, label %173, label %174

; <label>:173:                                    ; preds = %170
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.52, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %200

; <label>:174:                                    ; preds = %170
  %175 = load i64, i64* %9, align 8
  %176 = icmp eq i64 %175, 1
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %174
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.55, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %200

; <label>:178:                                    ; preds = %174
  br label %179

; <label>:179:                                    ; preds = %178
  br label %180

; <label>:180:                                    ; preds = %179, %155
  br label %181

; <label>:181:                                    ; preds = %180, %143
  br label %182

; <label>:182:                                    ; preds = %181
  br label %198

; <label>:183:                                    ; preds = %41
  %184 = load i64, i64* %9, align 8
  %185 = icmp eq i64 %184, 1
  br i1 %185, label %186, label %187

; <label>:186:                                    ; preds = %183
  br label %197

; <label>:187:                                    ; preds = %183
  %188 = load i64, i64* %9, align 8
  %189 = icmp eq i64 %188, 2
  br i1 %189, label %190, label %191

; <label>:190:                                    ; preds = %187
  store i64 3, i64* %4, align 8
  br label %200

; <label>:191:                                    ; preds = %187
  %192 = load i64, i64* %9, align 8
  %193 = icmp eq i64 %192, 3
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %191
  store i64 3, i64* %4, align 8
  br label %200

; <label>:195:                                    ; preds = %191
  br label %196

; <label>:196:                                    ; preds = %195
  br label %197

; <label>:197:                                    ; preds = %196, %186
  br label %198

; <label>:198:                                    ; preds = %197, %182
  br label %38

; <label>:199:                                    ; preds = %38
  store i64 0, i64* %4, align 8
  br label %200

; <label>:200:                                    ; preds = %199, %194, %190, %177, %173, %154, %140, %136, %52
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getInt(%struct._IO_FILE*, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getKeyAttribute(%struct._IO_FILE*, float*) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
