; ModuleID = 'insert.bc'
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
declare void @errorMessage(i8*, i8 signext) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexNode* @createIndexNode(i64) #0

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @insertEntry(%struct.IndexNode*, %struct.IndexEntry*, i64, i64, %struct.IndexEntry**) #0

; Function Attrs: noinline nounwind optnone uwtable
declare %struct.IndexEntry* @createIndexEntry() #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @keysUnion(%struct.IndexEntry*, %struct.IndexKey*) #0

; Function Attrs: noinline nounwind optnone uwtable
define i64 @insert(%struct.IndexNode**, %struct.DataObject*, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.IndexNode**, align 8
  %6 = alloca %struct.DataObject*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.IndexEntry*, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %0, %struct.IndexNode*** %5, align 8
  store %struct.DataObject* %1, %struct.DataObject** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call %struct.IndexEntry* @createIndexEntry()
  store %struct.IndexEntry* %12, %struct.IndexEntry** %8, align 8
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %14 = icmp eq %struct.IndexEntry* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  call void @errorMessage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.83, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %178

; <label>:16:                                     ; preds = %3
  %17 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %19 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 0
  %20 = bitcast %union.anon* %19 to %struct.DataObject**
  store %struct.DataObject* %17, %struct.DataObject** %20, align 8
  %21 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %22 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %21, i32 0, i32 1
  %23 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %22, align 8
  %24 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %23, i64 0
  %25 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %24, i32 0, i32 0
  %26 = bitcast %union.anon.2* %25 to float*
  %27 = load float, float* %26, align 8
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %29 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %30, i32 0, i32 0
  store float %27, float* %31, align 8
  %32 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %33 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %32, i32 0, i32 1
  %34 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %33, align 8
  %35 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %34, i64 1
  %36 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %35, i32 0, i32 0
  %37 = bitcast %union.anon.2* %36 to float*
  %38 = load float, float* %37, align 8
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %40 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %41, i32 0, i32 1
  store float %38, float* %42, align 4
  %43 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %44 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %43, i32 0, i32 1
  %45 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %44, align 8
  %46 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %45, i64 2
  %47 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %46, i32 0, i32 0
  %48 = bitcast %union.anon.2* %47 to float*
  %49 = load float, float* %48, align 8
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %51 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %52, i32 0, i32 2
  store float %49, float* %53, align 8
  %54 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %55 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %54, i32 0, i32 1
  %56 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %55, align 8
  %57 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %56, i64 3
  %58 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %57, i32 0, i32 0
  %59 = bitcast %union.anon.2* %58 to float*
  %60 = load float, float* %59, align 8
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %62 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %63, i32 0, i32 3
  store float %60, float* %64, align 4
  %65 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %66 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %65, i32 0, i32 1
  %67 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %66, align 8
  %68 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %67, i64 4
  %69 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %68, i32 0, i32 0
  %70 = bitcast %union.anon.2* %69 to float*
  %71 = load float, float* %70, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %73 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %74, i32 0, i32 0
  store float %71, float* %75, align 8
  %76 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %77 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %76, i32 0, i32 1
  %78 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %77, align 8
  %79 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %78, i64 5
  %80 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %79, i32 0, i32 0
  %81 = bitcast %union.anon.2* %80 to float*
  %82 = load float, float* %81, align 8
  %83 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %84 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %85, i32 0, i32 1
  store float %82, float* %86, align 4
  %87 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %88 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %87, i32 0, i32 1
  %89 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %88, align 8
  %90 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %89, i64 6
  %91 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %90, i32 0, i32 0
  %92 = bitcast %union.anon.2* %91 to float*
  %93 = load float, float* %92, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %95 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %96, i32 0, i32 2
  store float %93, float* %97, align 8
  %98 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %99 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %98, i32 0, i32 1
  %100 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %99, align 8
  %101 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %100, i64 7
  %102 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %101, i32 0, i32 0
  %103 = bitcast %union.anon.2* %102 to float*
  %104 = load float, float* %103, align 8
  %105 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %106 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %107, i32 0, i32 3
  store float %104, float* %108, align 4
  %109 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %110 = load %struct.IndexNode*, %struct.IndexNode** %109, align 8
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @insertEntry(%struct.IndexNode* %110, %struct.IndexEntry* %111, i64 0, i64 %112, %struct.IndexEntry** %9)
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %162

; <label>:116:                                    ; preds = %16
  %117 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %118 = icmp ne %struct.IndexEntry* %117, null
  br i1 %118, label %119, label %161

; <label>:119:                                    ; preds = %116
  store %struct.IndexNode* null, %struct.IndexNode** %11, align 8
  %120 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %121 = load %struct.IndexNode*, %struct.IndexNode** %120, align 8
  %122 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  %125 = call %struct.IndexNode* @createIndexNode(i64 %124)
  store %struct.IndexNode* %125, %struct.IndexNode** %11, align 8
  %126 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %127 = icmp eq %struct.IndexNode* %126, null
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %119
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.84, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %178

; <label>:129:                                    ; preds = %119
  %130 = call %struct.IndexEntry* @createIndexEntry()
  %131 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %132 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %131, i32 0, i32 1
  store %struct.IndexEntry* %130, %struct.IndexEntry** %132, align 8
  %133 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %134 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %133, i32 0, i32 1
  %135 = load %struct.IndexEntry*, %struct.IndexEntry** %134, align 8
  %136 = icmp eq %struct.IndexEntry* %135, null
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %129
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.85, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i32 0, i32 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %178

; <label>:138:                                    ; preds = %129
  %139 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %140 = load %struct.IndexNode*, %struct.IndexNode** %139, align 8
  %141 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %142 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %141, i32 0, i32 1
  %143 = load %struct.IndexEntry*, %struct.IndexEntry** %142, align 8
  %144 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %143, i32 0, i32 0
  %145 = bitcast %union.anon* %144 to %struct.IndexNode**
  store %struct.IndexNode* %140, %struct.IndexNode** %145, align 8
  %146 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %147 = load %struct.IndexNode*, %struct.IndexNode** %146, align 8
  %148 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %147, i32 0, i32 1
  %149 = load %struct.IndexEntry*, %struct.IndexEntry** %148, align 8
  %150 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %151 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %150, i32 0, i32 1
  %152 = load %struct.IndexEntry*, %struct.IndexEntry** %151, align 8
  %153 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %152, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %149, %struct.IndexKey* %153)
  %154 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %155 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %156 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %155, i32 0, i32 1
  %157 = load %struct.IndexEntry*, %struct.IndexEntry** %156, align 8
  %158 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %157, i32 0, i32 2
  store %struct.IndexEntry* %154, %struct.IndexEntry** %158, align 8
  %159 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %160 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  store %struct.IndexNode* %159, %struct.IndexNode** %160, align 8
  br label %161

; <label>:161:                                    ; preds = %138, %116
  br label %177

; <label>:162:                                    ; preds = %16
  %163 = load i64, i64* %10, align 8
  %164 = icmp eq i64 %163, 1
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %162
  store i64 2, i64* %4, align 8
  br label %178

; <label>:166:                                    ; preds = %162
  %167 = load i64, i64* %10, align 8
  %168 = icmp eq i64 %167, 2
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %166
  store i64 1, i64* %4, align 8
  br label %178

; <label>:170:                                    ; preds = %166
  %171 = load i64, i64* %10, align 8
  %172 = icmp eq i64 %171, 3
  br i1 %172, label %173, label %174

; <label>:173:                                    ; preds = %170
  store i64 2, i64* %4, align 8
  br label %178

; <label>:174:                                    ; preds = %170
  br label %175

; <label>:175:                                    ; preds = %174
  br label %176

; <label>:176:                                    ; preds = %175
  br label %177

; <label>:177:                                    ; preds = %176, %161
  store i64 0, i64* %4, align 8
  br label %178

; <label>:178:                                    ; preds = %177, %173, %169, %165, %137, %128, %15
  %179 = load i64, i64* %4, align 8
  ret i64 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
