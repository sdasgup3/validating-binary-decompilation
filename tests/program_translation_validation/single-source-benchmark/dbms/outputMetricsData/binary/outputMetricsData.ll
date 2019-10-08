; ModuleID = 'outputMetricsData.bc'
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: noinline nounwind optnone uwtable
declare void @calcMetricsData(%struct.Metrics*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @outputMetricsData(%struct._IO_FILE*, %struct.Metrics*) #1 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.Metrics*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.Metrics* %1, %struct.Metrics** %4, align 8
  %5 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  call void @calcMetricsData(%struct.Metrics* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.109, i32 0, i32 0), i64 %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.110, i32 0, i32 0), i64 %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.111, i32 0, i32 0), i64 %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.112, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.113, i32 0, i32 0), i64 %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6.114, i32 0, i32 0), i64 %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %38 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %39 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %39, i32 0, i32 6
  %41 = load double, double* %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7.115, i32 0, i32 0), double %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %44 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %45 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %45, i32 0, i32 7
  %47 = load double, double* %46, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8.116, i32 0, i32 0), double %47)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.117, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %52 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %53 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.113, i32 0, i32 0), i64 %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %58 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6.114, i32 0, i32 0), i64 %61)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %64 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %65 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %65, i32 0, i32 6
  %67 = load double, double* %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7.115, i32 0, i32 0), double %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %70 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %71 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %71, i32 0, i32 7
  %73 = load double, double* %72, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8.116, i32 0, i32 0), double %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10.118, i32 0, i32 0))
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %78 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %79 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.113, i32 0, i32 0), i64 %81)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %84 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %85 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6.114, i32 0, i32 0), i64 %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %90 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %91 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %91, i32 0, i32 6
  %93 = load double, double* %92, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7.115, i32 0, i32 0), double %93)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %96 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %97 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %97, i32 0, i32 7
  %99 = load double, double* %98, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8.116, i32 0, i32 0), double %99)
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
