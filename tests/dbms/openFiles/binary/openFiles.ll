; ModuleID = 'openFiles.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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
@stderr = external global %struct._IO_FILE*, align 8
@.str.1.22 = hidden unnamed_addr constant [20 x i8] c"Usage: %s [-h], or\0A\00", align 1
@.str.2.23 = hidden unnamed_addr constant [10 x i8] c"       %s\00", align 1
@.str.3.24 = hidden unnamed_addr constant [27 x i8] c" [-i <input file = stdin>]\00", align 1
@.str.4.25 = hidden unnamed_addr constant [29 x i8] c" [-o <output file = stdout>]\00", align 1
@.str.5.26 = hidden unnamed_addr constant [31 x i8] c" [-m <metrics file = stderr>]\0A\00", align 1
@.str.6.27 = hidden unnamed_addr constant [24 x i8] c"missing argument for -o\00", align 1
@.str.7 = hidden unnamed_addr constant [24 x i8] c"missing argument for -m\00", align 1
@.str.8.28 = hidden unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.9 = hidden unnamed_addr constant [34 x i8] c"incorrect format - unknown option\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.10 = hidden unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = hidden unnamed_addr constant [25 x i8] c"error opening input file\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @initOutputBuffer(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i64 @openFiles(i64, i8**, %struct._IO_FILE**, %struct._IO_FILE**, %struct._IO_FILE**) #2 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca %struct._IO_FILE**, align 8
  %11 = alloca %struct._IO_FILE**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE** %4, %struct._IO_FILE*** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 1
  br i1 %17, label %18, label %227

; <label>:18:                                     ; preds = %5
  store i64 1, i64* %15, align 8
  br label %19

; <label>:19:                                     ; preds = %225, %18
  %20 = load i64, i64* %15, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %226

; <label>:23:                                     ; preds = %19
  %24 = load i8**, i8*** %8, align 8
  %25 = load i64, i64* %15, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27) #3
  %29 = icmp eq i64 %28, 2
  br i1 %29, label %30, label %208

; <label>:30:                                     ; preds = %23
  %31 = load i8**, i8*** %8, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %208

; <label>:39:                                     ; preds = %30
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 105
  br i1 %47, label %48, label %80

; <label>:48:                                     ; preds = %39
  %49 = load i64, i64* %15, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %60

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %15, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %12, align 8
  br label %77

; <label>:60:                                     ; preds = %48
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 2, i64* %6, align 8
  br label %275

; <label>:77:                                     ; preds = %53
  %78 = load i64, i64* %15, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %15, align 8
  br label %207

; <label>:80:                                     ; preds = %39
  %81 = load i8**, i8*** %8, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 111
  br i1 %88, label %89, label %121

; <label>:89:                                     ; preds = %80
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i64, i64* %7, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %101

; <label>:94:                                     ; preds = %89
  %95 = load i64, i64* %15, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %15, align 8
  %97 = load i8**, i8*** %8, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %13, align 8
  br label %118

; <label>:101:                                    ; preds = %89
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6.27, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = load i8**, i8*** %8, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %105)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = load i8**, i8*** %8, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %110)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 2, i64* %6, align 8
  br label %275

; <label>:118:                                    ; preds = %94
  %119 = load i64, i64* %15, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %206

; <label>:121:                                    ; preds = %80
  %122 = load i8**, i8*** %8, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 109
  br i1 %129, label %130, label %162

; <label>:130:                                    ; preds = %121
  %131 = load i64, i64* %15, align 8
  %132 = add nsw i64 %131, 1
  %133 = load i64, i64* %7, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %142

; <label>:135:                                    ; preds = %130
  %136 = load i64, i64* %15, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %15, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = load i64, i64* %15, align 8
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %14, align 8
  br label %159

; <label>:142:                                    ; preds = %130
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %144 = load i8**, i8*** %8, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %151)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 2, i64* %6, align 8
  br label %275

; <label>:159:                                    ; preds = %135
  %160 = load i64, i64* %15, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %15, align 8
  br label %205

; <label>:162:                                    ; preds = %121
  %163 = load i8**, i8*** %8, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds i8*, i8** %163, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 104
  br i1 %170, label %171, label %188

; <label>:171:                                    ; preds = %162
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %173 = load i8**, i8*** %8, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %175)
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = load i8**, i8*** %8, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 1, i64* %6, align 8
  br label %275

; <label>:188:                                    ; preds = %162
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.28, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %190 = load i8**, i8*** %8, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %192)
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = load i8**, i8*** %8, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %197)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 2, i64* %6, align 8
  br label %275

; <label>:205:                                    ; preds = %159
  br label %206

; <label>:206:                                    ; preds = %205, %118
  br label %207

; <label>:207:                                    ; preds = %206, %77
  br label %225

; <label>:208:                                    ; preds = %30, %23
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %210 = load i8**, i8*** %8, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0), i8* %212)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %215 = load i8**, i8*** %8, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.23, i32 0, i32 0), i8* %217)
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.24, i32 0, i32 0))
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.25, i32 0, i32 0))
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.26, i32 0, i32 0))
  store i64 2, i64* %6, align 8
  br label %275

; <label>:225:                                    ; preds = %207
  br label %19

; <label>:226:                                    ; preds = %19
  br label %227

; <label>:227:                                    ; preds = %226, %5
  %228 = load i8*, i8** %12, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %233

; <label>:230:                                    ; preds = %227
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %232 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %231, %struct._IO_FILE** %232, align 8
  br label %242

; <label>:233:                                    ; preds = %227
  %234 = load i8*, i8** %12, align 8
  %235 = call %struct._IO_FILE* @fopen(i8* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %236 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %235, %struct._IO_FILE** %236, align 8
  %237 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %237, align 8
  %239 = icmp eq %struct._IO_FILE* %238, null
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %233
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %6, align 8
  br label %275

; <label>:241:                                    ; preds = %233
  br label %242

; <label>:242:                                    ; preds = %241, %230
  %243 = load i8*, i8** %13, align 8
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %248

; <label>:245:                                    ; preds = %242
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %247 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %246, %struct._IO_FILE** %247, align 8
  br label %257

; <label>:248:                                    ; preds = %242
  %249 = load i8*, i8** %13, align 8
  %250 = call %struct._IO_FILE* @fopen(i8* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %251 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %250, %struct._IO_FILE** %251, align 8
  %252 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %252, align 8
  %254 = icmp eq %struct._IO_FILE* %253, null
  br i1 %254, label %255, label %256

; <label>:255:                                    ; preds = %248
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13.29, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 4, i64* %6, align 8
  br label %275

; <label>:256:                                    ; preds = %248
  br label %257

; <label>:257:                                    ; preds = %256, %245
  %258 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %258, align 8
  call void @initOutputBuffer(%struct._IO_FILE* %259)
  %260 = load i8*, i8** %14, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %265

; <label>:262:                                    ; preds = %257
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %264 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %263, %struct._IO_FILE** %264, align 8
  br label %274

; <label>:265:                                    ; preds = %257
  %266 = load i8*, i8** %14, align 8
  %267 = call %struct._IO_FILE* @fopen(i8* %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %268 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %267, %struct._IO_FILE** %268, align 8
  %269 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %269, align 8
  %271 = icmp eq %struct._IO_FILE* %270, null
  br i1 %271, label %272, label %273

; <label>:272:                                    ; preds = %265
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i32 0, i32 0), i8 signext 1)
  store i64 5, i64* %6, align 8
  br label %275

; <label>:273:                                    ; preds = %265
  br label %274

; <label>:274:                                    ; preds = %273, %262
  store i64 0, i64* %6, align 8
  br label %275

; <label>:275:                                    ; preds = %274, %272, %255, %240, %208, %188, %171, %142, %101, %60
  %276 = load i64, i64* %6, align 8
  ret i64 %276
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #2

attributes #0 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
