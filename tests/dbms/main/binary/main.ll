; ModuleID = 'main.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }

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
declare void @initMetricsData(%struct.Metrics*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getInsertCommand(%struct._IO_FILE*, %struct.DataObject**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @deleteIndexNode(%struct.IndexNode*) #0

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getDeleteCommand(%struct._IO_FILE*, %struct.IndexKey*, %struct.DataAttribute**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @outputQuery(%struct.DataObject*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @flushOutputBuffer() #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @openFiles(i64, i8**, %struct._IO_FILE**, %struct._IO_FILE**, %struct._IO_FILE**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @delete(%struct.IndexNode**, %struct.IndexKey*, %struct.DataAttribute*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getInitCommand(%struct._IO_FILE*, i64*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @flushErrorMessage() #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexNode* @createIndexNode(i64) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getQueryCommand(%struct._IO_FILE*, %struct.IndexKey*, %struct.DataAttribute**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @setMetricsData(%struct.Metrics*, i32) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @clearLine(%struct._IO_FILE*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getTime() #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @closeFiles(%struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*) #0

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.Metrics, align 8
  %12 = alloca %struct.IndexNode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.DataObject*, align 8
  %16 = alloca %struct.IndexKey, align 4
  %17 = alloca %struct.DataAttribute*, align 8
  %18 = alloca %struct.DataAttribute*, align 8
  %19 = alloca %struct.DataAttribute*, align 8
  %20 = alloca %struct.IndexKey, align 4
  %21 = alloca %struct.DataAttribute*, align 8
  %22 = alloca %struct.DataAttribute*, align 8
  %23 = alloca %struct.DataAttribute*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @initMetricsData(%struct.Metrics* %11)
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @openFiles(i64 %25, i8** %26, %struct._IO_FILE** %8, %struct._IO_FILE** %9, %struct._IO_FILE** %10)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

; <label>:30:                                     ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  store i32 0, i32* %3, align 4
  br label %295

; <label>:34:                                     ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  call void @errorMessage(i8* %37, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:38:                                     ; preds = %2
  %39 = call %struct.IndexNode* @createIndexNode(i64 0)
  store %struct.IndexNode* %39, %struct.IndexNode** %12, align 8
  %40 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %41 = icmp eq %struct.IndexNode* %40, null
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %38
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8 signext 1)
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  call void @errorMessage(i8* %45, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:46:                                     ; preds = %38
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %48 = call i64 @getNextCommandCode(%struct._IO_FILE* %47, i32* %7)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %76

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

; <label>:54:                                     ; preds = %51
  %55 = call i64 @getTime()
  store i64 %55, i64* %14, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %57 = call i64 @getInitCommand(%struct._IO_FILE* %56, i64* %13)
  store i64 %57, i64* %6, align 8
  %58 = call i64 @getTime()
  %59 = load i64, i64* %14, align 8
  %60 = sub nsw i64 %58, %59
  %61 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %54
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.78, i32 0, i32 0), i8 signext 1)
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  call void @errorMessage(i8* %69, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:70:                                     ; preds = %54
  br label %75

; <label>:71:                                     ; preds = %51
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.79, i32 0, i32 0), i8 signext 0)
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  call void @errorMessage(i8* %74, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:75:                                     ; preds = %70
  br label %87

; <label>:76:                                     ; preds = %46
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 2
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %79, %76
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.78, i32 0, i32 0), i8 signext 1)
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  call void @errorMessage(i8* %85, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:86:                                     ; preds = %79
  br label %87

; <label>:87:                                     ; preds = %86, %75
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @clearLine(%struct._IO_FILE* %88)
  br label %89

; <label>:89:                                     ; preds = %288, %87
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %92, label %290

; <label>:92:                                     ; preds = %89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %94 = call i64 @getNextCommandCode(%struct._IO_FILE* %93, i32* %7)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %272

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %7, align 4
  call void @setMetricsData(%struct.Metrics* %11, i32 %98)
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %145

; <label>:101:                                    ; preds = %97
  %102 = call i64 @getTime()
  store i64 %102, i64* %14, align 8
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %104 = call i64 @getInsertCommand(%struct._IO_FILE* %103, %struct.DataObject** %15)
  store i64 %104, i64* %6, align 8
  %105 = call i64 @getTime()
  %106 = load i64, i64* %14, align 8
  %107 = sub nsw i64 %105, %106
  %108 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %107
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %140

; <label>:113:                                    ; preds = %101
  %114 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i64 @insert(%struct.IndexNode** %12, %struct.DataObject* %114, i64 %115)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 1
  br i1 %118, label %119, label %123

; <label>:119:                                    ; preds = %113
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  call void @errorMessage(i8* %122, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:123:                                    ; preds = %113
  %124 = load i64, i64* %6, align 8
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %130

; <label>:126:                                    ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  call void @errorMessage(i8* %129, i8 signext 1)
  call void @flushErrorMessage()
  br label %138

; <label>:130:                                    ; preds = %123
  %131 = load i64, i64* %6, align 8
  %132 = icmp eq i64 %131, 3
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %130
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  call void @errorMessage(i8* %136, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:137:                                    ; preds = %130
  br label %138

; <label>:138:                                    ; preds = %137, %126
  br label %139

; <label>:139:                                    ; preds = %138
  br label %144

; <label>:140:                                    ; preds = %101
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  call void @errorMessage(i8* %143, i8 signext 1)
  call void @flushErrorMessage()
  br label %144

; <label>:144:                                    ; preds = %140, %139
  br label %264

; <label>:145:                                    ; preds = %97
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %196

; <label>:148:                                    ; preds = %145
  %149 = call i64 @getTime()
  store i64 %149, i64* %14, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %151 = call i64 @getQueryCommand(%struct._IO_FILE* %150, %struct.IndexKey* %16, %struct.DataAttribute** %17)
  store i64 %151, i64* %6, align 8
  %152 = call i64 @getTime()
  %153 = load i64, i64* %14, align 8
  %154 = sub nsw i64 %152, %153
  %155 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %154
  store i64 %157, i64* %155, align 8
  %158 = load i64, i64* %6, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %174

; <label>:160:                                    ; preds = %148
  %161 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %17, align 8
  %163 = call i64 @query(%struct.IndexNode* %161, %struct.IndexKey* %16, %struct.DataAttribute* %162, i8 signext 1, void (%struct.DataObject*)* @outputQuery)
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %169, label %166

; <label>:166:                                    ; preds = %160
  %167 = load i64, i64* %6, align 8
  %168 = icmp eq i64 %167, 2
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %166, %160
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  call void @errorMessage(i8* %172, i8 signext 1)
  call void @flushErrorMessage()
  br label %173

; <label>:173:                                    ; preds = %169, %166
  br label %178

; <label>:174:                                    ; preds = %148
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  call void @errorMessage(i8* %177, i8 signext 1)
  call void @flushErrorMessage()
  br label %178

; <label>:178:                                    ; preds = %174, %173
  %179 = load %struct.DataAttribute*, %struct.DataAttribute** %17, align 8
  store %struct.DataAttribute* %179, %struct.DataAttribute** %18, align 8
  br label %180

; <label>:180:                                    ; preds = %183, %178
  %181 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %182 = icmp ne %struct.DataAttribute* %181, null
  br i1 %182, label %183, label %195

; <label>:183:                                    ; preds = %180
  %184 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %185 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %184, i32 0, i32 2
  %186 = load %struct.DataAttribute*, %struct.DataAttribute** %185, align 8
  store %struct.DataAttribute* %186, %struct.DataAttribute** %19, align 8
  %187 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %188 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %188, i32 0, i32 0
  %190 = bitcast %union.anon.2* %189 to i8**
  %191 = load i8*, i8** %190, align 8
  call void @free(i8* %191) #3
  %192 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %193 = bitcast %struct.DataAttribute* %192 to i8*
  call void @free(i8* %193) #3
  %194 = load %struct.DataAttribute*, %struct.DataAttribute** %19, align 8
  store %struct.DataAttribute* %194, %struct.DataAttribute** %18, align 8
  br label %180

; <label>:195:                                    ; preds = %180
  br label %263

; <label>:196:                                    ; preds = %145
  %197 = load i32, i32* %7, align 4
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %246

; <label>:199:                                    ; preds = %196
  %200 = call i64 @getTime()
  store i64 %200, i64* %14, align 8
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %202 = call i64 @getDeleteCommand(%struct._IO_FILE* %201, %struct.IndexKey* %20, %struct.DataAttribute** %21)
  store i64 %202, i64* %6, align 8
  %203 = call i64 @getTime()
  %204 = load i64, i64* %14, align 8
  %205 = sub nsw i64 %203, %204
  %206 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %205
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %224

; <label>:211:                                    ; preds = %199
  %212 = load %struct.DataAttribute*, %struct.DataAttribute** %21, align 8
  %213 = call i64 @delete(%struct.IndexNode** %12, %struct.IndexKey* %20, %struct.DataAttribute* %212)
  store i64 %213, i64* %6, align 8
  %214 = load i64, i64* %6, align 8
  %215 = icmp eq i64 %214, 1
  br i1 %215, label %219, label %216

; <label>:216:                                    ; preds = %211
  %217 = load i64, i64* %6, align 8
  %218 = icmp eq i64 %217, 2
  br i1 %218, label %219, label %223

; <label>:219:                                    ; preds = %216, %211
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  call void @errorMessage(i8* %222, i8 signext 1)
  call void @flushErrorMessage()
  br label %223

; <label>:223:                                    ; preds = %219, %216
  br label %228

; <label>:224:                                    ; preds = %199
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  call void @errorMessage(i8* %227, i8 signext 1)
  call void @flushErrorMessage()
  br label %228

; <label>:228:                                    ; preds = %224, %223
  %229 = load %struct.DataAttribute*, %struct.DataAttribute** %21, align 8
  store %struct.DataAttribute* %229, %struct.DataAttribute** %22, align 8
  br label %230

; <label>:230:                                    ; preds = %233, %228
  %231 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %232 = icmp ne %struct.DataAttribute* %231, null
  br i1 %232, label %233, label %245

; <label>:233:                                    ; preds = %230
  %234 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %235 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %234, i32 0, i32 2
  %236 = load %struct.DataAttribute*, %struct.DataAttribute** %235, align 8
  store %struct.DataAttribute* %236, %struct.DataAttribute** %23, align 8
  %237 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %238 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %238, i32 0, i32 0
  %240 = bitcast %union.anon.2* %239 to i8**
  %241 = load i8*, i8** %240, align 8
  call void @free(i8* %241) #3
  %242 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %243 = bitcast %struct.DataAttribute* %242 to i8*
  call void @free(i8* %243) #3
  %244 = load %struct.DataAttribute*, %struct.DataAttribute** %23, align 8
  store %struct.DataAttribute* %244, %struct.DataAttribute** %22, align 8
  br label %230

; <label>:245:                                    ; preds = %230
  br label %262

; <label>:246:                                    ; preds = %196
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

; <label>:249:                                    ; preds = %246
  call void @errorMessage(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.80, i32 0, i32 0), i8 signext 0)
  %250 = load i8**, i8*** %5, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  call void @errorMessage(i8* %252, i8 signext 1)
  call void @flushErrorMessage()
  br label %261

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, 5
  br i1 %255, label %256, label %260

; <label>:256:                                    ; preds = %253
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 0
  %259 = load i8*, i8** %258, align 8
  call void @errorMessage(i8* %259, i8 signext 1)
  call void @flushErrorMessage()
  br label %260

; <label>:260:                                    ; preds = %256, %253
  br label %261

; <label>:261:                                    ; preds = %260, %249
  br label %262

; <label>:262:                                    ; preds = %261, %245
  br label %263

; <label>:263:                                    ; preds = %262, %195
  br label %264

; <label>:264:                                    ; preds = %263, %144
  call void @updateMetricsData(%struct.Metrics* %11)
  %265 = call i64 @getTime()
  store i64 %265, i64* %14, align 8
  call void @flushOutputBuffer()
  %266 = call i64 @getTime()
  %267 = load i64, i64* %14, align 8
  %268 = sub nsw i64 %266, %267
  %269 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, %268
  store i64 %271, i64* %269, align 8
  br label %288

; <label>:272:                                    ; preds = %92
  %273 = load i64, i64* %6, align 8
  %274 = icmp eq i64 %273, 1
  br i1 %274, label %275, label %279

; <label>:275:                                    ; preds = %272
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 0
  %278 = load i8*, i8** %277, align 8
  call void @errorMessage(i8* %278, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

; <label>:279:                                    ; preds = %272
  %280 = load i64, i64* %6, align 8
  %281 = icmp eq i64 %280, 2
  br i1 %281, label %282, label %286

; <label>:282:                                    ; preds = %279
  %283 = load i8**, i8*** %5, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  %285 = load i8*, i8** %284, align 8
  call void @errorMessage(i8* %285, i8 signext 1)
  call void @flushErrorMessage()
  br label %286

; <label>:286:                                    ; preds = %282, %279
  br label %287

; <label>:287:                                    ; preds = %286
  br label %288

; <label>:288:                                    ; preds = %287, %264
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @clearLine(%struct._IO_FILE* %289)
  br label %89

; <label>:290:                                    ; preds = %89
  %291 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  call void @deleteIndexNode(%struct.IndexNode* %291)
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void @closeFiles(%struct._IO_FILE* %292, %struct._IO_FILE* %293, %struct._IO_FILE* %294)
  call void @exit(i32 0) #4
  unreachable

; <label>:295:                                    ; preds = %275, %133, %119, %82, %71, %66, %42, %34, %33
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @insert(%struct.IndexNode**, %struct.DataObject*, i64) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @query(%struct.IndexNode*, %struct.IndexKey*, %struct.DataAttribute*, i8 signext, void (%struct.DataObject*)*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @getNextCommandCode(%struct._IO_FILE*, i32*) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @updateMetricsData(%struct.Metrics*) #0

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
