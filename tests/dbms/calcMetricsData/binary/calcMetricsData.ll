; ModuleID = 'calcMetricsData.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

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
declare i64 @getTime() #0

; Function Attrs: noinline nounwind optnone uwtable
define void @calcMetricsData(%struct.Metrics*) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca double, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %4 = call i64 @getTime()
  %5 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %4, %7
  %9 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %12 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %1
  %17 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %18 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %18, i32 0, i32 2
  %20 = load double, double* %19, align 8
  %21 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %22 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to double
  %26 = fdiv double %20, %25
  %27 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %28 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %28, i32 0, i32 6
  store double %26, double* %29, align 8
  %30 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %31 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %31, i32 0, i32 3
  %33 = load double, double* %32, align 8
  %34 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %35 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %35, i32 0, i32 2
  %37 = load double, double* %36, align 8
  %38 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %39 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  %42 = fmul double %37, %41
  %43 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %42, %47
  %49 = fsub double %33, %48
  store double %49, double* %3, align 8
  %50 = load double, double* %3, align 8
  %51 = fcmp olt double %50, 0.000000e+00
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %16
  %53 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %54 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %54, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %55, align 8
  %56 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %57 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %57, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %58, align 8
  br label %71

; <label>:59:                                     ; preds = %16
  %60 = load double, double* %3, align 8
  %61 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to double
  %66 = fdiv double %60, %65
  %67 = call double @sqrt(double %66) #2
  %68 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %69 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %69, i32 0, i32 7
  store double %67, double* %70, align 8
  br label %71

; <label>:71:                                     ; preds = %59, %52
  br label %79

; <label>:72:                                     ; preds = %1
  %73 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %74 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %74, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %75, align 8
  %76 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %77 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %77, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %78, align 8
  br label %79

; <label>:79:                                     ; preds = %72, %71
  %80 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %81 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %141

; <label>:85:                                     ; preds = %79
  %86 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %87 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %87, i32 0, i32 2
  %89 = load double, double* %88, align 8
  %90 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %91 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to double
  %95 = fdiv double %89, %94
  %96 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %97 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %97, i32 0, i32 6
  store double %95, double* %98, align 8
  %99 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %100 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %100, i32 0, i32 3
  %102 = load double, double* %101, align 8
  %103 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %104 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %104, i32 0, i32 2
  %106 = load double, double* %105, align 8
  %107 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %108 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %108, i32 0, i32 2
  %110 = load double, double* %109, align 8
  %111 = fmul double %106, %110
  %112 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %113 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = fdiv double %111, %116
  %118 = fsub double %102, %117
  store double %118, double* %3, align 8
  %119 = load double, double* %3, align 8
  %120 = fcmp olt double %119, 0.000000e+00
  br i1 %120, label %121, label %128

; <label>:121:                                    ; preds = %85
  %122 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %123 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %123, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %124, align 8
  %125 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %126 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %126, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %127, align 8
  br label %140

; <label>:128:                                    ; preds = %85
  %129 = load double, double* %3, align 8
  %130 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %131 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sitofp i64 %133 to double
  %135 = fdiv double %129, %134
  %136 = call double @sqrt(double %135) #2
  %137 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %138 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %138, i32 0, i32 7
  store double %136, double* %139, align 8
  br label %140

; <label>:140:                                    ; preds = %128, %121
  br label %148

; <label>:141:                                    ; preds = %79
  %142 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %143 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %143, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %144, align 8
  %145 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %146 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %146, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %147, align 8
  br label %148

; <label>:148:                                    ; preds = %141, %140
  %149 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %150 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %210

; <label>:154:                                    ; preds = %148
  %155 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %156 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %156, i32 0, i32 2
  %158 = load double, double* %157, align 8
  %159 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %160 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = sitofp i64 %162 to double
  %164 = fdiv double %158, %163
  %165 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %166 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %166, i32 0, i32 6
  store double %164, double* %167, align 8
  %168 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %169 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %169, i32 0, i32 3
  %171 = load double, double* %170, align 8
  %172 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %173 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %173, i32 0, i32 2
  %175 = load double, double* %174, align 8
  %176 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %177 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %177, i32 0, i32 2
  %179 = load double, double* %178, align 8
  %180 = fmul double %175, %179
  %181 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %182 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = sitofp i64 %184 to double
  %186 = fdiv double %180, %185
  %187 = fsub double %171, %186
  store double %187, double* %3, align 8
  %188 = load double, double* %3, align 8
  %189 = fcmp olt double %188, 0.000000e+00
  br i1 %189, label %190, label %197

; <label>:190:                                    ; preds = %154
  %191 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %192 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %192, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %193, align 8
  %194 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %195 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %195, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %196, align 8
  br label %209

; <label>:197:                                    ; preds = %154
  %198 = load double, double* %3, align 8
  %199 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %200 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to double
  %204 = fdiv double %198, %203
  %205 = call double @sqrt(double %204) #2
  %206 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %207 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %207, i32 0, i32 7
  store double %205, double* %208, align 8
  br label %209

; <label>:209:                                    ; preds = %197, %190
  br label %217

; <label>:210:                                    ; preds = %148
  %211 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %212 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %212, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %213, align 8
  %214 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %215 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %215, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %216, align 8
  br label %217

; <label>:217:                                    ; preds = %210, %209
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
