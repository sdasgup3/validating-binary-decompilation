; ModuleID = 'getString.bc'
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
declare void @flushErrorMessage() #0

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @getString(%struct._IO_FILE*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @fgetc(%struct._IO_FILE* %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  br label %10

; <label>:10:                                     ; preds = %32, %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, -1
  br i1 %12, label %13, label %30

; <label>:13:                                     ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 10
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 13
  br i1 %18, label %19, label %30

; <label>:19:                                     ; preds = %16
  %20 = call i16** @__ctype_b_loc() #3
  %21 = load i16*, i16** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %21, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 8192
  %29 = icmp ne i32 %28, 0
  br label %30

; <label>:30:                                     ; preds = %19, %16, %13, %10
  %31 = phi i1 [ false, %16 ], [ false, %13 ], [ false, %10 ], [ %29, %19 ]
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %30
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i32 @fgetc(%struct._IO_FILE* %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %10

; <label>:36:                                     ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i8* null, i8** %2, align 8
  br label %112

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %41, 10
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 13
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %43, %40
  %47 = load i64, i64* %4, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %50 = call i32 @ungetc(i32 %48, %struct._IO_FILE* %49)
  store i8* null, i8** %2, align 8
  br label %112

; <label>:51:                                     ; preds = %43
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i8
  store i8 %54, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), align 16
  store i64 1, i64* %5, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %56 = call i32 @fgetc(%struct._IO_FILE* %55)
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  br label %58

; <label>:58:                                     ; preds = %82, %52
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, -1
  br i1 %60, label %61, label %73

; <label>:61:                                     ; preds = %58
  %62 = call i16** @__ctype_b_loc() #3
  %63 = load i16*, i16** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 8192
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

; <label>:73:                                     ; preds = %61, %58
  %74 = phi i1 [ false, %58 ], [ %72, %61 ]
  br i1 %74, label %75, label %92

; <label>:75:                                     ; preds = %73
  %76 = load i64, i64* %5, align 8
  %77 = icmp sge i64 %76, 1024
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %75
  call void @errorMessage(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.92, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i32 0, i32 0), i8 signext 1)
  call void @flushErrorMessage()
  %79 = load i64, i64* %5, align 8
  %80 = add nsw i64 %79, 1
  %81 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i32 0), i8** %2, align 8
  br label %112

; <label>:82:                                     ; preds = %75
  %83 = load i64, i64* %4, align 8
  %84 = trunc i64 %83 to i8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %85
  store i8 %84, i8* %86, align 1
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %5, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %90 = call i32 @fgetc(%struct._IO_FILE* %89)
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %58

; <label>:92:                                     ; preds = %73
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, -1
  br i1 %96, label %97, label %111

; <label>:97:                                     ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %101 = call i32 @ungetc(i32 %99, %struct._IO_FILE* %100)
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %4, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %109, label %106

; <label>:106:                                    ; preds = %97
  %107 = load i64, i64* %6, align 8
  %108 = icmp eq i64 %107, -1
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %106, %97
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.93, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i32 0, i32 0), i8 signext 1)
  call void @flushErrorMessage()
  store i8* null, i8** %2, align 8
  br label %112

; <label>:110:                                    ; preds = %106
  br label %111

; <label>:111:                                    ; preds = %110, %92
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i32 0, i32 0), i8** %2, align 8
  br label %112

; <label>:112:                                    ; preds = %111, %109, %78, %46, %39
  %113 = load i8*, i8** %2, align 8
  ret i8* %113
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
