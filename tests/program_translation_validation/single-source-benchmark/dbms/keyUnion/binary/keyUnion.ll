; ModuleID = 'keyUnion.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
define void @keyUnion(%struct.IndexKey*, %struct.IndexKey*, %struct.IndexKey*) #0 {
  %4 = alloca %struct.IndexKey*, align 8
  %5 = alloca %struct.IndexKey*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  store %struct.IndexKey* %0, %struct.IndexKey** %4, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %5, align 8
  store %struct.IndexKey* %2, %struct.IndexKey** %6, align 8
  %7 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %8 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %12 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = fcmp olt float %10, %14
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %3
  %17 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %18 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %18, i32 0, i32 0
  %20 = load float, float* %19, align 4
  br label %26

; <label>:21:                                     ; preds = %3
  %22 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  br label %26

; <label>:26:                                     ; preds = %21, %16
  %27 = phi float [ %20, %16 ], [ %25, %21 ]
  %28 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %29 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %29, i32 0, i32 0
  store float %27, float* %30, align 4
  %31 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 1
  %34 = load float, float* %33, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = fcmp olt float %34, %38
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %26
  %41 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  br label %50

; <label>:45:                                     ; preds = %26
  %46 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  br label %50

; <label>:50:                                     ; preds = %45, %40
  %51 = phi float [ %44, %40 ], [ %49, %45 ]
  %52 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %53 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %53, i32 0, i32 1
  store float %51, float* %54, align 4
  %55 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %56 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %56, i32 0, i32 2
  %58 = load float, float* %57, align 4
  %59 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %60 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %60, i32 0, i32 2
  %62 = load float, float* %61, align 4
  %63 = fcmp olt float %58, %62
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %50
  %65 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %66 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %66, i32 0, i32 2
  %68 = load float, float* %67, align 4
  br label %74

; <label>:69:                                     ; preds = %50
  %70 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %71 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %71, i32 0, i32 2
  %73 = load float, float* %72, align 4
  br label %74

; <label>:74:                                     ; preds = %69, %64
  %75 = phi float [ %68, %64 ], [ %73, %69 ]
  %76 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %77 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %77, i32 0, i32 2
  store float %75, float* %78, align 4
  %79 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %80 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %80, i32 0, i32 3
  %82 = load float, float* %81, align 4
  %83 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %84 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fcmp olt float %82, %86
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %74
  %89 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %90 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  br label %98

; <label>:93:                                     ; preds = %74
  %94 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %95 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %95, i32 0, i32 3
  %97 = load float, float* %96, align 4
  br label %98

; <label>:98:                                     ; preds = %93, %88
  %99 = phi float [ %92, %88 ], [ %97, %93 ]
  %100 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %101 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %101, i32 0, i32 3
  store float %99, float* %102, align 4
  %103 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %104 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %104, i32 0, i32 0
  %106 = load float, float* %105, align 4
  %107 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %108 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %108, i32 0, i32 0
  %110 = load float, float* %109, align 4
  %111 = fcmp ogt float %106, %110
  br i1 %111, label %112, label %117

; <label>:112:                                    ; preds = %98
  %113 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %114 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %114, i32 0, i32 0
  %116 = load float, float* %115, align 4
  br label %122

; <label>:117:                                    ; preds = %98
  %118 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %119 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %119, i32 0, i32 0
  %121 = load float, float* %120, align 4
  br label %122

; <label>:122:                                    ; preds = %117, %112
  %123 = phi float [ %116, %112 ], [ %121, %117 ]
  %124 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %125 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %125, i32 0, i32 0
  store float %123, float* %126, align 4
  %127 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %128 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %128, i32 0, i32 1
  %130 = load float, float* %129, align 4
  %131 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %132 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %132, i32 0, i32 1
  %134 = load float, float* %133, align 4
  %135 = fcmp ogt float %130, %134
  br i1 %135, label %136, label %141

; <label>:136:                                    ; preds = %122
  %137 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %138 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %138, i32 0, i32 1
  %140 = load float, float* %139, align 4
  br label %146

; <label>:141:                                    ; preds = %122
  %142 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %143 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %143, i32 0, i32 1
  %145 = load float, float* %144, align 4
  br label %146

; <label>:146:                                    ; preds = %141, %136
  %147 = phi float [ %140, %136 ], [ %145, %141 ]
  %148 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %149 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %149, i32 0, i32 1
  store float %147, float* %150, align 4
  %151 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %152 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %152, i32 0, i32 2
  %154 = load float, float* %153, align 4
  %155 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %156 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %156, i32 0, i32 2
  %158 = load float, float* %157, align 4
  %159 = fcmp ogt float %154, %158
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %146
  %161 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %162 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %162, i32 0, i32 2
  %164 = load float, float* %163, align 4
  br label %170

; <label>:165:                                    ; preds = %146
  %166 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %167 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %167, i32 0, i32 2
  %169 = load float, float* %168, align 4
  br label %170

; <label>:170:                                    ; preds = %165, %160
  %171 = phi float [ %164, %160 ], [ %169, %165 ]
  %172 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %173 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %173, i32 0, i32 2
  store float %171, float* %174, align 4
  %175 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %176 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %176, i32 0, i32 3
  %178 = load float, float* %177, align 4
  %179 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %180 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %180, i32 0, i32 3
  %182 = load float, float* %181, align 4
  %183 = fcmp ogt float %178, %182
  br i1 %183, label %184, label %189

; <label>:184:                                    ; preds = %170
  %185 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %186 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %186, i32 0, i32 3
  %188 = load float, float* %187, align 4
  br label %194

; <label>:189:                                    ; preds = %170
  %190 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %191 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %191, i32 0, i32 3
  %193 = load float, float* %192, align 4
  br label %194

; <label>:194:                                    ; preds = %189, %184
  %195 = phi float [ %188, %184 ], [ %193, %189 ]
  %196 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %197 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %197, i32 0, i32 3
  store float %195, float* %198, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
