; ModuleID = 'output/test.query.codegen.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radar_dict_entry_t = type { i32, i32, float, [32768 x float] }
%struct.vit_dict_entry_t = type { i32, i32, %struct.ofdm_param, %struct.frame_param, [24780 x i8] }
%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, %struct.PyAsyncMethods*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyAsyncMethods = type { %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%union.branchtab27 = type { [32 x i8] }
%struct.vehicle_state_t = type { i32, i32, float }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@lane_names = local_unnamed_addr global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)], align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"LHazard\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"RHazard\00", align 1
@message_names = local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)], align 16, !dbg !442
@.str.5 = private unnamed_addr constant [12 x i8] c"Safe_L_or_R\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Safe_R_only\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Safe_L_only\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Unsafe_L_or_R\00", align 1
@object_names = local_unnamed_addr global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)], align 16, !dbg !447
@.str.9 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Car\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Truck\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Person\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Bike\00", align 1
@output_viz_trace = local_unnamed_addr global i32 0, align 4, !dbg !452
@fft_logn_samples = local_unnamed_addr global i32 14, align 4, !dbg !455
@nearest_obj = local_unnamed_addr global [5 x i8] c"NNNNN", align 1, !dbg !457
@nearest_dist = local_unnamed_addr global [5 x float] [float 5.500000e+02, float 5.500000e+02, float 5.500000e+02, float 5.500000e+02, float 5.500000e+02], align 16, !dbg !460
@rand_seed = local_unnamed_addr global i32 0, align 4, !dbg !463
@IMPACT_DISTANCE = local_unnamed_addr global float 5.000000e+01, align 4, !dbg !465
@python_module = local_unnamed_addr global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !467
@.str.14 = private unnamed_addr constant [4 x i8] c"mio\00", align 1
@python_func = local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !469
@.str.15 = private unnamed_addr constant [8 x i8] c"predict\00", align 1
@python_func_load = local_unnamed_addr global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !471
@.str.16 = private unnamed_addr constant [10 x i8] c"loadmodel\00", align 1
@label_match = local_unnamed_addr global [6 x i32] zeroinitializer, align 16, !dbg !473
@label_lookup = local_unnamed_addr global [6 x i32] zeroinitializer, align 16, !dbg !478
@label_mismatch = local_unnamed_addr global [5 x [5 x i32]] zeroinitializer, align 16, !dbg !480
@num_radar_dictionary_items = global i32 0, align 4, !dbg !484
@radar_total_calc = local_unnamed_addr global i32 0, align 4, !dbg !486
@hist_pct_err_label = local_unnamed_addr global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)], align 16, !dbg !488
@.str.17 = private unnamed_addr constant [6 x i8] c"   0%\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"<  1%\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"< 10%\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"<100%\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c">100%\00", align 1
@num_viterbi_dictionary_items = global i32 0, align 4, !dbg !490
@vit_msgs_behavior = local_unnamed_addr global i32 0, align 4, !dbg !492
@total_msgs = local_unnamed_addr global i32 0, align 4, !dbg !494
@bad_decode_msgs = local_unnamed_addr global i32 0, align 4, !dbg !496
@the_radar_return_dict = common local_unnamed_addr global %struct.radar_dict_entry_t* null, align 8, !dbg !558
@hist_distances = common local_unnamed_addr global [12 x i32] zeroinitializer, align 16, !dbg !565
@hist_pct_errs = common local_unnamed_addr global [12 x [5 x i32]] zeroinitializer, align 16, !dbg !560
@the_viterbi_trace_dict = common local_unnamed_addr global %struct.vit_dict_entry_t* null, align 8, !dbg !576
@hist_total_objs = common local_unnamed_addr global [80 x i32] zeroinitializer, align 16, !dbg !511
@pName = common local_unnamed_addr global %struct._object* null, align 8, !dbg !544
@pModule = common local_unnamed_addr global %struct._object* null, align 8, !dbg !546
@pFunc_load = common local_unnamed_addr global %struct._object* null, align 8, !dbg !550
@pFunc = common local_unnamed_addr global %struct._object* null, align 8, !dbg !548
@pArgs = common local_unnamed_addr global %struct._object* null, align 8, !dbg !552
@pValue = common local_unnamed_addr global %struct._object* null, align 8, !dbg !554
@pretValue = common local_unnamed_addr global %struct._object* null, align 8, !dbg !556
@total_obj = common local_unnamed_addr global i32 0, align 4, !dbg !503
@lane_obj = common local_unnamed_addr global [5 x [16 x i8]] zeroinitializer, align 16, !dbg !498
@obj_in_lane = common local_unnamed_addr global [5 x i32] zeroinitializer, align 16, !dbg !505
@lane_dist = common local_unnamed_addr global [5 x [16 x i32]] zeroinitializer, align 16, !dbg !508
@d_ntraceback = common local_unnamed_addr global i32 0, align 4, !dbg !516
@d_k = common local_unnamed_addr global i32 0, align 4, !dbg !519
@d_branchtab27_generic = common local_unnamed_addr global [2 x %union.branchtab27] zeroinitializer, align 16, !dbg !521
@d_metric0_generic = common global [64 x i8] zeroinitializer, align 16, !dbg !533
@d_metric1_generic = common global [64 x i8] zeroinitializer, align 16, !dbg !538
@d_path0_generic = common global [64 x i8] zeroinitializer, align 16, !dbg !540
@d_path1_generic = common global [64 x i8] zeroinitializer, align 16, !dbg !542
@descramble = common local_unnamed_addr global [1600 x i8] zeroinitializer, align 16, !dbg !569
@actual_msg = common local_unnamed_addr global [1600 x i8] zeroinitializer, align 16, !dbg !574
@.str.22 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Error: unable to open dictionary file %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"ERROR : Dictionary contains %u entries, but %u is MAX_RDICT_ENTRIES\0A\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"ERROR : Cannot allocate Radar Trace Dictionary memory space\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%u %f\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"NOTE: Did not hit eof on the radar dictionary file %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"Error: unable to open viterbi dictionary definition file %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"ERROR : Cannot allocate Viterbi Trace Dictionary memory space\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"ERROR : Check Viterbi Dictionary : i = %d but Mnum = %d  (Mid = %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.36 = private unnamed_addr constant [120 x i8] c"Failed to load Python program, perhaps pythonpath needs to be set; export PYTHONPATH=your_mini_era_dir/cv/CNN_MIO_KERAS\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Cannot find python function - loadmodel\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"sh utils/cnn_shell.sh %u\00", align 1
@str = private unnamed_addr constant [25 x i8] c"FAIL to open CV kernel !\00"
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.40 = private unnamed_addr constant [65 x i8] c"Trying to run CNN kernel: Cannot convert C argument into python\0A\00", align 1
@str.63 = private unnamed_addr constant [55 x i8] c"Trying to run CNN kernel : Python function call failed\00"
@.str.42 = private unnamed_addr constant [28 x i8] c"Cannot find python function\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"ERROR : Unknown object type in cv trace: '%c'\0A\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"IDX: %u :: %f vs %f : ERROR : %f   ABS_ERR : %f PCT_ERR : %f\0A\00", align 1
@switch.table = private unnamed_addr constant [5 x i32] [i32 4, i32 0, i32 4, i32 0, i32 4]
@.str.45 = private unnamed_addr constant [53 x i8] c"WHOOPS: We've suffered a collision on time_step %u!\0A\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c" ERROR  In %s with UNDEFINED MESSAGE: %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [67 x i8] c"\0AFinal CV CNN Accuracy: %u correct of %u classifications = %.2f%%\0A\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"  CV CNN Accuracy for %10s : %u correct of %u classifications = %.2f%%\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"\0AAnalysis of the %u mis-identifications:\0A\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"  Mislabeled %10s as %10s on %u occasions\0A\00", align 1
@str.64 = private unnamed_addr constant [31 x i8] c"\0AHistogram of Radar Distances:\00"
@str.65 = private unnamed_addr constant [44 x i8] c"\0AHistogram of Radar Distance ABS-PCT-ERROR:\00"
@.str.52 = private unnamed_addr constant [24 x i8] c"    %3u | %8.3f | %9u \0A\00", align 1
@str.66 = private unnamed_addr constant [53 x i8] c"\0A  TOTALS Histogram of Radar Distance ABS-PCT-ERROR:\00"
@.str.57 = private unnamed_addr constant [14 x i8] c"  %7s | %9u \0A\00", align 1
@.str.54 = private unnamed_addr constant [53 x i8] c"    Entry %u Id %u Distance %f Occurs %u Histogram:\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"    %7s | %9u \0A\00", align 1
@str.67 = private unnamed_addr constant [29 x i8] c"\0AHistogram of Total Objects:\00"
@.str.60 = private unnamed_addr constant [52 x i8] c"There were %.3lf obstacles per time step (average)\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"There were %.3lf messages per time step (average)\0A\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"There were %u bad decodes of the %u messages\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"%3u | %9u \0A\00", align 1
@all_obstacle_lanes_mode = local_unnamed_addr global i32 0, align 4, !dbg !578
@rad_dict = common global [256 x i8] zeroinitializer, align 16, !dbg !593
@vit_dict = common global [256 x i8] zeroinitializer, align 16, !dbg !595
@cv_dict = common global [256 x i8] zeroinitializer, align 16, !dbg !588
@time_step = common local_unnamed_addr global i32 0, align 4, !dbg !597
@.str.39 = private unnamed_addr constant [21 x i8] c"Usage: %s <OPTIONS>\0A\00", align 1
@str.40 = private unnamed_addr constant [10 x i8] c" OPTIONS:\00"
@str.50 = private unnamed_addr constant [48 x i8] c"    -h         : print this helpfule usage info\00"
@str.51 = private unnamed_addr constant [79 x i8] c"    -o         : print the Visualizer output traace information during the run\00"
@str.52 = private unnamed_addr constant [71 x i8] c"    -R <file>  : defines the input Radar dictionary file <file> to use\00"
@str.53 = private unnamed_addr constant [73 x i8] c"    -V <file>  : defines the input Viterbi dictionary file <file> to use\00"
@str.54 = private unnamed_addr constant [72 x i8] c"    -C <file>  : defines the input CV/CNN dictionary file <file> to use\00"
@str.55 = private unnamed_addr constant [61 x i8] c"    -t <trace> : defines the input trace file <trace> to use\00"
@str.56 = private unnamed_addr constant [52 x i8] c"    -f <N>     : defines Log2 number of FFT samples\00"
@str.57 = private unnamed_addr constant [73 x i8] c"               :      14 = 2^14 = 16k samples (default); 10 = 1k samples\00"
@str.58 = private unnamed_addr constant [53 x i8] c"    -v <N>     : defines Viterbi messaging behavior:\00"
@str.59 = private unnamed_addr constant [58 x i8] c"               :      0 = One short message per time step\00"
@str.60 = private unnamed_addr constant [58 x i8] c"               :      1 = One long  message per time step\00"
@str.61 = private unnamed_addr constant [71 x i8] c"               :      2 = One short message per obstacle per time step\00"
@str.62 = private unnamed_addr constant [71 x i8] c"               :      3 = One long  message per obstacle per time step\00"
@str.63.41 = private unnamed_addr constant [71 x i8] c"               :      4 = One short msg per obstacle + 1 per time step\00"
@str.64.42 = private unnamed_addr constant [71 x i8] c"               :      5 = One long  msg per obstacle + 1 per time step\00"
@.str.17.43 = private unnamed_addr constant [23 x i8] c":hAot:v:s:r:W:R:V:C:f:\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19.45 = private unnamed_addr constant [37 x i8] c"Using 2^%u = %u samples for the FFT\0A\00", align 1
@.str.20.46 = private unnamed_addr constant [68 x i8] c"Cannot specify FFT logn samples value %u (Legal values are 10, 14)\0A\00", align 1
@.str.21.47 = private unnamed_addr constant [22 x i8] c"Using trace file: %s\0A\00", align 1
@.str.22.48 = private unnamed_addr constant [27 x i8] c"Using viterbi behavior %u\0A\00", align 1
@str.76 = private unnamed_addr constant [21 x i8] c"option needs a value\00"
@optopt = external local_unnamed_addr global i32, align 4
@.str.24.49 = private unnamed_addr constant [20 x i8] c"unknown option: %c\0A\00", align 1
@.str.25.50 = private unnamed_addr constant [21 x i8] c"extra arguments: %s\0A\00", align 1
@.str.26.51 = private unnamed_addr constant [28 x i8] c"traces/radar_dictionary.dfn\00", align 1
@.str.27.52 = private unnamed_addr constant [26 x i8] c"traces/vit_dictionary.dfn\00", align 1
@.str.28.53 = private unnamed_addr constant [30 x i8] c"traces/objects_dictionary.dfn\00", align 1
@str.65.54 = private unnamed_addr constant [15 x i8] c"\0ADictionaries:\00"
@.str.30.55 = private unnamed_addr constant [16 x i8] c"   CV/CNN : %s\0A\00", align 1
@.str.31.56 = private unnamed_addr constant [16 x i8] c"   Radar  : %s\0A\00", align 1
@.str.32.57 = private unnamed_addr constant [16 x i8] c"   Viterbi: %s\0A\00", align 1
@main.cv_py_file = private unnamed_addr constant [25 x i8] c"../cv/keras_cnn/lenet.py\00", align 16
@str.66.58 = private unnamed_addr constant [30 x i8] c"Doing initialization tasks...\00"
@str.67.59 = private unnamed_addr constant [58 x i8] c"Error: the trace reader couldn't be initialized properly.\00"
@str.68 = private unnamed_addr constant [30 x i8] c"Initializing the CV kernel...\00"
@str.69 = private unnamed_addr constant [68 x i8] c"Error: the computer vision kernel couldn't be initialized properly.\00"
@str.70 = private unnamed_addr constant [33 x i8] c"Initializing the Radar kernel...\00"
@str.71 = private unnamed_addr constant [58 x i8] c"Error: the radar kernel couldn't be initialized properly.\00"
@str.72 = private unnamed_addr constant [35 x i8] c"Initializing the Viterbi kernel...\00"
@str.73 = private unnamed_addr constant [69 x i8] c"Error: the Viterbi decoding kernel couldn't be initialized properly.\00"
@str.74 = private unnamed_addr constant [26 x i8] c"Starting the main loop...\00"
@.str.42.60 = private unnamed_addr constant [44 x i8] c"\0AProgram total execution time     %lu usec\0A\00", align 1
@.str.43.61 = private unnamed_addr constant [43 x i8] c"  iterate_rad_kernel run time    %lu usec\0A\00", align 1
@.str.44.62 = private unnamed_addr constant [43 x i8] c"  iterate_vit_kernel run time    %lu usec\0A\00", align 1
@.str.45.63 = private unnamed_addr constant [43 x i8] c"  iterate_cv_kernel run time     %lu usec\0A\00", align 1
@.str.46.64 = private unnamed_addr constant [43 x i8] c"  execute_rad_kernel run time    %lu usec\0A\00", align 1
@.str.47.65 = private unnamed_addr constant [43 x i8] c"  execute_vit_kernel run time    %lu usec\0A\00", align 1
@.str.48.66 = private unnamed_addr constant [43 x i8] c"  execute_cv_kernel run time     %lu usec\0A\00", align 1
@str.75 = private unnamed_addr constant [7 x i8] c"\0ADone.\00"
@input_trace = local_unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !599
@last_i = local_unnamed_addr global i32 0, align 4, !dbg !606
@in_tok = local_unnamed_addr global i32 0, align 4, !dbg !608
@in_lane = local_unnamed_addr global i32 0, align 4, !dbg !610
@in_line_buf = common global [256 x i8] zeroinitializer, align 16, !dbg !614
@.str.69 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.70 = private unnamed_addr constant [37 x i8] c"Error: unable to open trace file %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@str.9 = private unnamed_addr constant [31 x i8] c"ERROR : trace syntax is weird!\00"
@.str.4.72 = private unnamed_addr constant [12 x i8] c" LINE : %s\0A\00", align 1
@.str.5.73 = private unnamed_addr constant [27 x i8] c" TOKN : %u hit %c from %s\0A\00", align 1
@.str.6.74 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@str.10 = private unnamed_addr constant [60 x i8] c"ERROR : invocation of read_next_trace_record indicates feof\00"
@.str.8.77 = private unnamed_addr constant [19 x i8] c"  VizTrace: %d,%s\0A\00", align 1
@d_ofdm = internal unnamed_addr global %struct.ofdm_param* null, align 8
@d_frame = internal unnamed_addr global %struct.frame_param* null, align 8
@d_depuncture_pattern = internal unnamed_addr global i8* null, align 8
@d_depunctured = internal global [24780 x i8] zeroinitializer, align 16
@d_store_pos = internal unnamed_addr global i32 0, align 4
@d_ppresult = internal unnamed_addr global [24 x [64 x i8]] zeroinitializer, align 16
@d_mmresult = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@switch.table.82 = private unnamed_addr constant [8 x i32] [i32 5, i32 10, i32 5, i32 10, i32 5, i32 10, i32 9, i32 10]
@switch.table.1 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @PUNCTURE_2_3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0)]
@switch.table.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 1, i32 3, i32 1, i32 3, i32 2, i32 3]
@d_decoded = internal global [18585 x i8] zeroinitializer, align 16
@PUNCTURE_1_2 = internal constant [2 x i8] c"\01\01", align 1
@PUNCTURE_3_4 = internal constant [6 x i8] c"\01\01\01\00\00\01", align 1
@PUNCTURE_2_3 = internal constant [4 x i8] c"\01\01\01\00", align 1
@PARTAB = internal unnamed_addr constant [256 x i8] c"\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00", align 16
@str.85 = private unnamed_addr constant [43 x i8] c">>>>>> Descrambler output is here: >>>>>> \00"
@.str.2.86 = private unnamed_addr constant [68 x i8] c">>>>>> Miscompare: descrambler[%d] = %u vs %u = EXPECTED_VALUE[%d]\0A\00", align 1
@str.14 = private unnamed_addr constant [103 x i8] c">>>>>> Mismatch in the descrambler block, please check the inputs and algorithm one last time. >>>>>> \00"
@str.10.87 = private unnamed_addr constant [88 x i8] c"!!!!!! Great Job, descrambler algorithm works fine for the given configuration. !!!!!! \00"
@str.11 = private unnamed_addr constant [45 x i8] c">>>>>> Decoded text message is here: >>>>>> \00"
@.str.7.88 = private unnamed_addr constant [65 x i8] c">>>>>> Miscompare: text_msg[%c] = %c vs %c = EXPECTED_VALUE[%c]\0A\00", align 1
@str.13 = private unnamed_addr constant [98 x i8] c">>>>>> Mismatch in the text message, please check the inputs and algorithm one last time. >>>>>> \00"
@str.12 = private unnamed_addr constant [98 x i8] c"!!!!!! Great Job, text message decoding algorithm works fine for the given configuration. !!!!!! \00"
@RADAR_LOGN = global i32 0, align 4, !dbg !656
@RADAR_N = global i32 0, align 4, !dbg !663
@RADAR_fs = global float 0.000000e+00, align 4, !dbg !665
@RADAR_alpha = global float 0.000000e+00, align 4, !dbg !667
@RADAR_psd_threshold = global float 0x3F7B7CFE60000000, align 4, !dbg !669
@.str.93 = private unnamed_addr constant [49 x i8] c"ERROR : Unsupported Log-N FFT Samples Value: %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @init_rad_kernel(i8* %dict_fn) local_unnamed_addr #0 !dbg !674 {
entry:
  %entry_id = alloca i32, align 4
  %entry_dist = alloca float, align 4
  %fin = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %dict_fn, i64 0, metadata !679, metadata !700), !dbg !701
  %0 = load i32, i32* @fft_logn_samples, align 4, !dbg !702, !tbaa !703
  tail call void (i32, ...) bitcast (void (i32)* @init_calculate_peak_dist to void (i32, ...)*)(i32 %0) #6, !dbg !707
  %call = tail call %struct._IO_FILE* @fopen64(i8* %dict_fn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !708
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, i64 0, metadata !680, metadata !700), !dbg !709
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !710
  br i1 %tobool, label %if.then, label %if.end, !dbg !712

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* %dict_fn), !dbg !713
  br label %cleanup, !dbg !715

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32* nonnull @num_radar_dictionary_items), !dbg !716
  %1 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !718, !tbaa !703
  %cmp = icmp ugt i32 %1, 12, !dbg !720
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !721

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 %1, i32 12), !dbg !722
  tail call void @exit(i32 -2) #13, !dbg !724
  unreachable, !dbg !724

if.end8:                                          ; preds = %if.end
  %conv = zext i32 %1 to i64, !dbg !725
  %call9 = tail call noalias i8* @calloc(i64 %conv, i64 131084) #6, !dbg !726
  store i8* %call9, i8** bitcast (%struct.radar_dict_entry_t** @the_radar_return_dict to i8**), align 8, !dbg !727, !tbaa !728
  %cmp10 = icmp eq i8* %call9, null, !dbg !730
  br i1 %cmp10, label %if.then12, label %for.cond.preheader, !dbg !732

for.cond.preheader:                               ; preds = %if.end8
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !682, metadata !700), !dbg !733
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !681, metadata !700), !dbg !734
  %cmp15107 = icmp eq i32 %1, 0, !dbg !735
  br i1 %cmp15107, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !737

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = bitcast i32* %entry_id to i8*
  %3 = bitcast float* %entry_dist to i8*
  %4 = bitcast float* %entry_dist to i32*
  %5 = bitcast float* %fin to i8*
  %6 = bitcast float* %fin to i32*
  br label %for.body, !dbg !737

if.then12:                                        ; preds = %if.end8
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0)), !dbg !739
  br label %cleanup, !dbg !741

for.cond.cleanup.loopexit:                        ; preds = %for.cond.cleanup28
  br label %for.cond.cleanup, !dbg !742

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %call43 = call i32 @feof(%struct._IO_FILE* nonnull %call) #6, !dbg !742
  %tobool44 = icmp eq i32 %call43, 0, !dbg !742
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !744

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %indvars.iv112 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next113, %for.cond.cleanup28 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #6, !dbg !745
  call void @llvm.lifetime.start(i64 4, i8* nonnull %3) #6, !dbg !746
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !688, metadata !700), !dbg !747
  call void @llvm.dbg.value(metadata i32* %entry_id, i64 0, metadata !684, metadata !748), !dbg !749
  call void @llvm.dbg.value(metadata float* %entry_dist, i64 0, metadata !687, metadata !748), !dbg !750
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32* nonnull %entry_id, float* nonnull %entry_dist), !dbg !751
  %7 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !dbg !753, !tbaa !728
  %index = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %7, i64 %indvars.iv112, i32 0, !dbg !754
  %8 = trunc i64 %indvars.iv112 to i32, !dbg !755
  store i32 %8, i32* %index, align 4, !dbg !755, !tbaa !756
  %9 = load i32, i32* %entry_id, align 4, !dbg !759, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !684, metadata !700), !dbg !749
  %return_id = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %7, i64 %indvars.iv112, i32 1, !dbg !760
  store i32 %9, i32* %return_id, align 4, !dbg !761, !tbaa !762
  %10 = load i32, i32* %4, align 4, !dbg !763, !tbaa !764
  %distance = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %7, i64 %indvars.iv112, i32 2, !dbg !765
  %11 = bitcast float* %distance to i32*, !dbg !766
  store i32 %10, i32* %11, align 4, !dbg !766, !tbaa !767
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !689, metadata !700), !dbg !768
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !689, metadata !700), !dbg !768
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !688, metadata !700), !dbg !747
  %12 = load i32, i32* @RADAR_N, align 4, !dbg !769, !tbaa !703
  %mul103.mask = and i32 %12, 2147483647, !dbg !771
  %cmp26104 = icmp eq i32 %mul103.mask, 0, !dbg !771
  br i1 %cmp26104, label %for.cond.cleanup28, label %for.body29.preheader, !dbg !772

for.body29.preheader:                             ; preds = %for.body
  br label %for.body29, !dbg !774

for.cond.cleanup28.loopexit:                      ; preds = %for.body29
  br label %for.cond.cleanup28, !dbg !775

for.cond.cleanup28:                               ; preds = %for.cond.cleanup28.loopexit, %for.body
  call void @llvm.lifetime.end(i64 4, i8* nonnull %3) #6, !dbg !775
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #6, !dbg !775
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1, !dbg !776
  %13 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !778, !tbaa !703
  %14 = trunc i64 %indvars.iv.next113 to i32, !dbg !735
  %cmp15 = icmp ult i32 %14, %13, !dbg !735
  br i1 %cmp15, label %for.body, label %for.cond.cleanup.loopexit, !dbg !737, !llvm.loop !779

for.body29:                                       ; preds = %for.body29, %for.body29.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ 0, %for.body29.preheader ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #6, !dbg !774
  call void @llvm.dbg.value(metadata float* %fin, i64 0, metadata !691, metadata !748), !dbg !782
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), float* nonnull %fin), !dbg !783
  %15 = load i32, i32* %6, align 4, !dbg !785, !tbaa !764
  %16 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !dbg !786, !tbaa !728
  %arrayidx37 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %16, i64 %indvars.iv112, i32 3, i64 %indvars.iv, !dbg !786
  %17 = bitcast float* %arrayidx37 to i32*, !dbg !787
  store i32 %15, i32* %17, align 4, !dbg !787, !tbaa !764
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #6, !dbg !788
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !789
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !688, metadata !700), !dbg !747
  %18 = load i32, i32* @RADAR_N, align 4, !dbg !769, !tbaa !703
  %mul = shl i32 %18, 1, !dbg !791
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !771
  %cmp26 = icmp ult i32 %19, %mul, !dbg !771
  br i1 %cmp26, label %for.body29, label %for.cond.cleanup28.loopexit, !dbg !772, !llvm.loop !792

if.then45:                                        ; preds = %for.cond.cleanup
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i64 0, i64 0), i8* %dict_fn), !dbg !795
  br label %if.end47, !dbg !797

if.end47:                                         ; preds = %if.then45, %for.cond.cleanup
  %call48 = call i32 @fclose(%struct._IO_FILE* nonnull %call), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !694, metadata !700), !dbg !799
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !694, metadata !700), !dbg !799
  %20 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !800, !tbaa !703
  %cmp51101 = icmp eq i32 %20, 0, !dbg !802
  br i1 %cmp51101, label %cleanup, label %for.body54.lr.ph, !dbg !803

for.body54.lr.ph:                                 ; preds = %if.end47
  %21 = add i32 %20, -1, !dbg !803
  %22 = zext i32 %21 to i64, !dbg !803
  %23 = shl nuw nsw i64 %22, 2, !dbg !803
  %24 = add nuw nsw i64 %23, 4, !dbg !803
  call void @llvm.memset.p0i8.i64(i8* bitcast ([12 x i32]* @hist_distances to i8*), i8 0, i64 %24, i32 16, i1 false), !dbg !805
  %25 = mul nuw nsw i64 %22, 20, !dbg !803
  %26 = add nuw nsw i64 %25, 20, !dbg !803
  call void @llvm.memset.p0i8.i64(i8* bitcast ([12 x [5 x i32]]* @hist_pct_errs to i8*), i8 0, i64 %26, i32 16, i1 false), !dbg !806
  br label %cleanup, !dbg !809

cleanup:                                          ; preds = %for.body54.lr.ph, %if.end47, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.then ], [ 1, %if.end47 ], [ 1, %for.body54.lr.ph ]
  ret i32 %retval.0, !dbg !809
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @init_vit_kernel(i8* %dict_fn) local_unnamed_addr #0 !dbg !811 {
entry:
  %mnum = alloca i32, align 4
  %mid = alloca i32, align 4
  %in_bpsc = alloca i32, align 4
  %in_cbps = alloca i32, align 4
  %in_dbps = alloca i32, align 4
  %in_encoding = alloca i32, align 4
  %in_rate = alloca i32, align 4
  %in_pdsu_size = alloca i32, align 4
  %in_sym = alloca i32, align 4
  %in_pad = alloca i32, align 4
  %in_encoded_bits = alloca i32, align 4
  %in_data_bits = alloca i32, align 4
  %c = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %dict_fn, i64 0, metadata !813, metadata !700), !dbg !839
  %call = tail call %struct._IO_FILE* @fopen64(i8* %dict_fn, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !840
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, i64 0, metadata !814, metadata !700), !dbg !841
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !842
  br i1 %tobool, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i64 0, i64 0), i8* %dict_fn), !dbg !845
  br label %cleanup, !dbg !847

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32* nonnull @num_viterbi_dictionary_items), !dbg !848
  %0 = load i32, i32* @num_viterbi_dictionary_items, align 4, !dbg !850, !tbaa !703
  %conv = zext i32 %0 to i64, !dbg !850
  %call6 = tail call noalias i8* @calloc(i64 %conv, i64 24828) #6, !dbg !851
  store i8* %call6, i8** bitcast (%struct.vit_dict_entry_t** @the_viterbi_trace_dict to i8**), align 8, !dbg !852, !tbaa !728
  %cmp = icmp eq i8* %call6, null, !dbg !853
  br i1 %cmp, label %if.then8, label %for.cond.preheader, !dbg !855

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !815, metadata !700), !dbg !856
  %cmp11127 = icmp eq i32 %0, 0, !dbg !857
  br i1 %cmp11127, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !859

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = bitcast i32* %mnum to i8*
  %2 = bitcast i32* %mid to i8*
  %3 = bitcast i32* %in_bpsc to i8*
  %4 = bitcast i32* %in_cbps to i8*
  %5 = bitcast i32* %in_dbps to i8*
  %6 = bitcast i32* %in_encoding to i8*
  %7 = bitcast i32* %in_rate to i8*
  %8 = bitcast i32* %in_pdsu_size to i8*
  %9 = bitcast i32* %in_sym to i8*
  %10 = bitcast i32* %in_pad to i8*
  %11 = bitcast i32* %in_encoded_bits to i8*
  %12 = bitcast i32* %in_data_bits to i8*
  %13 = bitcast i32* %c to i8*
  br label %for.body, !dbg !859

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0)), !dbg !861
  br label %cleanup, !dbg !863

for.cond.cleanup.loopexit:                        ; preds = %for.cond.cleanup65
  br label %for.cond.cleanup, !dbg !864

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %call79 = call i32 @fclose(%struct._IO_FILE* nonnull %call), !dbg !864
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !837, metadata !700), !dbg !865
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !837, metadata !700), !dbg !865
  call void @llvm.memset.p0i8.i64(i8* bitcast ([80 x i32]* @hist_total_objs to i8*), i8 0, i64 320, i32 16, i1 false), !dbg !866
  br label %cleanup, !dbg !869

for.body:                                         ; preds = %for.cond.cleanup65, %for.body.lr.ph
  %indvars.iv131 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next132, %for.cond.cleanup65 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #6, !dbg !870
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #6, !dbg !870
  call void @llvm.dbg.value(metadata i32* %mnum, i64 0, metadata !817, metadata !748), !dbg !871
  call void @llvm.dbg.value(metadata i32* %mid, i64 0, metadata !820, metadata !748), !dbg !872
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32* nonnull %mnum, i32* nonnull %mid), !dbg !873
  %14 = load i32, i32* %mnum, align 4, !dbg !875, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !817, metadata !700), !dbg !871
  %15 = zext i32 %14 to i64, !dbg !877
  %cmp17 = icmp eq i64 %15, %indvars.iv131, !dbg !877
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !878

if.then19:                                        ; preds = %for.body
  %16 = trunc i64 %indvars.iv131 to i32, !dbg !879
  %17 = load i32, i32* %mid, align 4, !dbg !879, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !820, metadata !700), !dbg !872
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 %16, i32 %14, i32 %17), !dbg !881
  call void @exit(i32 -5) #13, !dbg !882
  unreachable, !dbg !882

if.end21:                                         ; preds = %for.body
  %18 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !883, !tbaa !728
  %msg_id = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %18, i64 %indvars.iv131, i32 1, !dbg !884
  %19 = load i32, i32* %mid, align 4, !dbg !885, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !820, metadata !700), !dbg !872
  store i32 %19, i32* %msg_id, align 4, !dbg !886, !tbaa !887
  call void @llvm.lifetime.start(i64 4, i8* nonnull %3) #6, !dbg !891
  call void @llvm.lifetime.start(i64 4, i8* nonnull %4) #6, !dbg !891
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #6, !dbg !891
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #6, !dbg !891
  call void @llvm.lifetime.start(i64 4, i8* nonnull %7) #6, !dbg !891
  call void @llvm.dbg.value(metadata i32* %in_bpsc, i64 0, metadata !821, metadata !748), !dbg !892
  call void @llvm.dbg.value(metadata i32* %in_cbps, i64 0, metadata !822, metadata !748), !dbg !893
  call void @llvm.dbg.value(metadata i32* %in_dbps, i64 0, metadata !823, metadata !748), !dbg !894
  call void @llvm.dbg.value(metadata i32* %in_encoding, i64 0, metadata !824, metadata !748), !dbg !895
  call void @llvm.dbg.value(metadata i32* %in_rate, i64 0, metadata !825, metadata !748), !dbg !896
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32* nonnull %in_bpsc, i32* nonnull %in_cbps, i32* nonnull %in_dbps, i32* nonnull %in_encoding, i32* nonnull %in_rate), !dbg !897
  %20 = load i32, i32* %in_encoding, align 4, !dbg !899, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !824, metadata !700), !dbg !895
  %21 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !900, !tbaa !728
  %encoding = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %21, i64 %indvars.iv131, i32 2, i32 0, !dbg !901
  store i32 %20, i32* %encoding, align 4, !dbg !902, !tbaa !903
  %22 = load i32, i32* %in_bpsc, align 4, !dbg !904, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !821, metadata !700), !dbg !892
  %n_bpsc = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %21, i64 %indvars.iv131, i32 2, i32 2, !dbg !905
  store i32 %22, i32* %n_bpsc, align 4, !dbg !906, !tbaa !907
  %23 = load i32, i32* %in_cbps, align 4, !dbg !908, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !822, metadata !700), !dbg !893
  %n_cbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %21, i64 %indvars.iv131, i32 2, i32 3, !dbg !909
  store i32 %23, i32* %n_cbps, align 4, !dbg !910, !tbaa !911
  %24 = load i32, i32* %in_dbps, align 4, !dbg !912, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !823, metadata !700), !dbg !894
  %n_dbps = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %21, i64 %indvars.iv131, i32 2, i32 4, !dbg !913
  store i32 %24, i32* %n_dbps, align 4, !dbg !914, !tbaa !915
  %25 = load i32, i32* %in_rate, align 4, !dbg !916, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !825, metadata !700), !dbg !896
  %conv40 = trunc i32 %25 to i8, !dbg !916
  %rate_field = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %21, i64 %indvars.iv131, i32 2, i32 1, !dbg !917
  store i8 %conv40, i8* %rate_field, align 4, !dbg !918, !tbaa !919
  call void @llvm.lifetime.start(i64 4, i8* nonnull %8) #6, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* nonnull %9) #6, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* nonnull %10) #6, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* nonnull %11) #6, !dbg !920
  call void @llvm.lifetime.start(i64 4, i8* nonnull %12) #6, !dbg !920
  call void @llvm.dbg.value(metadata i32* %in_pdsu_size, i64 0, metadata !826, metadata !748), !dbg !921
  call void @llvm.dbg.value(metadata i32* %in_sym, i64 0, metadata !827, metadata !748), !dbg !922
  call void @llvm.dbg.value(metadata i32* %in_pad, i64 0, metadata !828, metadata !748), !dbg !923
  call void @llvm.dbg.value(metadata i32* %in_encoded_bits, i64 0, metadata !829, metadata !748), !dbg !924
  call void @llvm.dbg.value(metadata i32* %in_data_bits, i64 0, metadata !830, metadata !748), !dbg !925
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32* nonnull %in_pdsu_size, i32* nonnull %in_sym, i32* nonnull %in_pad, i32* nonnull %in_encoded_bits, i32* nonnull %in_data_bits), !dbg !926
  %26 = load i32, i32* %in_pdsu_size, align 4, !dbg !928, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !826, metadata !700), !dbg !921
  %27 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !929, !tbaa !728
  %psdu_size = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %27, i64 %indvars.iv131, i32 3, i32 0, !dbg !930
  store i32 %26, i32* %psdu_size, align 4, !dbg !931, !tbaa !932
  %28 = load i32, i32* %in_sym, align 4, !dbg !933, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !827, metadata !700), !dbg !922
  %n_sym = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %27, i64 %indvars.iv131, i32 3, i32 1, !dbg !934
  store i32 %28, i32* %n_sym, align 4, !dbg !935, !tbaa !936
  %29 = load i32, i32* %in_pad, align 4, !dbg !937, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !828, metadata !700), !dbg !923
  %n_pad = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %27, i64 %indvars.iv131, i32 3, i32 2, !dbg !938
  store i32 %29, i32* %n_pad, align 4, !dbg !939, !tbaa !940
  %30 = load i32, i32* %in_encoded_bits, align 4, !dbg !941, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !829, metadata !700), !dbg !924
  %n_encoded_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %27, i64 %indvars.iv131, i32 3, i32 3, !dbg !942
  store i32 %30, i32* %n_encoded_bits, align 4, !dbg !943, !tbaa !944
  %31 = load i32, i32* %in_data_bits, align 4, !dbg !945, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !830, metadata !700), !dbg !925
  %n_data_bits = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %27, i64 %indvars.iv131, i32 3, i32 4, !dbg !946
  store i32 %31, i32* %n_data_bits, align 4, !dbg !947, !tbaa !948
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !829, metadata !700), !dbg !924
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !832, metadata !700), !dbg !949
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !832, metadata !700), !dbg !949
  %cmp63125 = icmp sgt i32 %30, -10, !dbg !950
  br i1 %cmp63125, label %for.body66.preheader, label %for.cond.cleanup65, !dbg !952

for.body66.preheader:                             ; preds = %if.end21
  %32 = add nsw i32 %30, 9
  %33 = sext i32 %32 to i64
  br label %for.body66, !dbg !954

for.cond.cleanup65.loopexit:                      ; preds = %for.body66
  br label %for.cond.cleanup65, !dbg !955

for.cond.cleanup65:                               ; preds = %for.cond.cleanup65.loopexit, %if.end21
  call void @llvm.lifetime.end(i64 4, i8* nonnull %12) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %11) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %10) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %9) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %7) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %4) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %3) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #6, !dbg !955
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #6, !dbg !955
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1, !dbg !956
  %34 = load i32, i32* @num_viterbi_dictionary_items, align 4, !dbg !958, !tbaa !703
  %35 = trunc i64 %indvars.iv.next132 to i32, !dbg !857
  %cmp11 = icmp ult i32 %35, %34, !dbg !857
  br i1 %cmp11, label %for.body, label %for.cond.cleanup.loopexit, !dbg !859, !llvm.loop !959

for.body66:                                       ; preds = %for.body66, %for.body66.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body66 ], [ 0, %for.body66.preheader ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %13) #6, !dbg !954
  call void @llvm.dbg.value(metadata i32* %c, i64 0, metadata !834, metadata !748), !dbg !962
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i32* nonnull %c), !dbg !963
  %36 = load i32, i32* %c, align 4, !dbg !965, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !834, metadata !700), !dbg !962
  %conv71 = trunc i32 %36 to i8, !dbg !966
  %37 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !967, !tbaa !728
  %arrayidx75 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %37, i64 %indvars.iv131, i32 4, i64 %indvars.iv, !dbg !967
  store i8 %conv71, i8* %arrayidx75, align 1, !dbg !968, !tbaa !969
  call void @llvm.lifetime.end(i64 4, i8* nonnull %13) #6, !dbg !970
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !971
  %cmp63 = icmp slt i64 %indvars.iv, %33, !dbg !950
  br i1 %cmp63, label %for.body66, label %for.cond.cleanup65.loopexit, !dbg !952, !llvm.loop !973

cleanup:                                          ; preds = %for.cond.cleanup, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then ], [ 1, %for.cond.cleanup ]
  ret i32 %retval.0, !dbg !869
}

; Function Attrs: nounwind uwtable
define i32 @init_cv_kernel(i8* nocapture readnone %py_file, i8* nocapture readnone %dict_fn) local_unnamed_addr #0 !dbg !976 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %py_file, i64 0, metadata !980, metadata !700), !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %dict_fn, i64 0, metadata !981, metadata !700), !dbg !992
  tail call void @Py_Initialize() #6, !dbg !993
  %0 = load i8*, i8** @python_module, align 8, !dbg !994, !tbaa !728
  %call = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0) #6, !dbg !995
  store %struct._object* %call, %struct._object** @pName, align 8, !dbg !996, !tbaa !728
  %call1 = tail call %struct._object* @PyImport_Import(%struct._object* %call) #6, !dbg !997
  store %struct._object* %call1, %struct._object** @pModule, align 8, !dbg !998, !tbaa !728
  %1 = load %struct._object*, %struct._object** @pName, align 8, !dbg !999, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !982, metadata !700), !dbg !1001
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1002
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1002, !tbaa !1005
  %dec = add nsw i64 %2, -1, !dbg !1002
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1002, !tbaa !1005
  %cmp = icmp eq i64 %dec, 0, !dbg !1002
  br i1 %cmp, label %if.else, label %if.end, !dbg !999

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1008
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1008, !tbaa !1010
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1008
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1008, !tbaa !1011
  tail call void %4(%struct._object* %1) #6, !dbg !1008
  %.pre = load %struct._object*, %struct._object** @pModule, align 8, !tbaa !728
  br label %if.end

if.end:                                           ; preds = %if.else, %entry
  %5 = phi %struct._object* [ %call1, %entry ], [ %.pre, %if.else ], !dbg !1014
  %cmp2 = icmp eq %struct._object* %5, null, !dbg !1015
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !1016

if.then3:                                         ; preds = %if.end
  tail call void @PyErr_Print() #6, !dbg !1017
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.36, i64 0, i64 0)), !dbg !1019
  br label %return, !dbg !1020

if.else5:                                         ; preds = %if.end
  %6 = load i8*, i8** @python_func_load, align 8, !dbg !1021, !tbaa !728
  %call6 = tail call %struct._object* @PyObject_GetAttrString(%struct._object* nonnull %5, i8* %6) #6, !dbg !1022
  store %struct._object* %call6, %struct._object** @pFunc_load, align 8, !dbg !1023, !tbaa !728
  %tobool = icmp eq %struct._object* %call6, null, !dbg !1024
  br i1 %tobool, label %if.else11, label %land.lhs.true, !dbg !1026

land.lhs.true:                                    ; preds = %if.else5
  %call7 = tail call i32 @PyCallable_Check(%struct._object* nonnull %call6) #6, !dbg !1027
  %tobool8 = icmp eq i32 %call7, 0, !dbg !1027
  br i1 %tobool8, label %if.else11, label %if.then9, !dbg !1029

if.then9:                                         ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** @pFunc_load, align 8, !dbg !1031, !tbaa !728
  %call10 = tail call %struct._object* @PyObject_CallObject(%struct._object* %7, %struct._object* null) #6, !dbg !1033
  br label %do.body18, !dbg !1034

if.else11:                                        ; preds = %land.lhs.true, %if.else5
  %call12 = tail call %struct._object* @PyErr_Occurred() #6, !dbg !1035
  %tobool13 = icmp eq %struct._object* %call12, null, !dbg !1035
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1038

if.then14:                                        ; preds = %if.else11
  tail call void @PyErr_Print() #6, !dbg !1039
  br label %if.end15, !dbg !1039

if.end15:                                         ; preds = %if.then14, %if.else11
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0)), !dbg !1040
  br label %do.body18

do.body18:                                        ; preds = %if.end15, %if.then9
  %8 = load %struct._object*, %struct._object** @pFunc_load, align 8, !dbg !1041, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !984, metadata !700), !dbg !1043
  %cmp19 = icmp eq %struct._object* %8, null, !dbg !1044
  br i1 %cmp19, label %return, label %do.body21, !dbg !1041

do.body21:                                        ; preds = %do.body18
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !988, metadata !700), !dbg !1046
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1047
  %9 = load i64, i64* %ob_refcnt23, align 8, !dbg !1047, !tbaa !1005
  %dec24 = add nsw i64 %9, -1, !dbg !1047
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1047, !tbaa !1005
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1047
  br i1 %cmp25, label %if.else27, label %return, !dbg !1050

if.else27:                                        ; preds = %do.body21
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1052
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1052, !tbaa !1010
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1052
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1052, !tbaa !1011
  tail call void %11(%struct._object* nonnull %8) #6, !dbg !1052
  br label %return

return:                                           ; preds = %if.else27, %do.body21, %do.body18, %if.then3
  ret i32 1, !dbg !1054
}

declare void @Py_Initialize() local_unnamed_addr #5

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) local_unnamed_addr #5

declare %struct._object* @PyImport_Import(%struct._object*) local_unnamed_addr #5

declare void @PyErr_Print() local_unnamed_addr #5

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) local_unnamed_addr #5

declare i32 @PyCallable_Check(%struct._object*) local_unnamed_addr #5

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) local_unnamed_addr #5

declare %struct._object* @PyErr_Occurred() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @run_object_classification_syscall(i32 %tr_val) local_unnamed_addr #0 !dbg !1055 {
entry:
  %shell_cmd = alloca [100 x i8], align 16
  %pbuffer = alloca [100 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %tr_val, i64 0, metadata !1059, metadata !700), !dbg !1068
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %shell_cmd, i64 0, i64 0, !dbg !1069
  call void @llvm.lifetime.start(i64 100, i8* nonnull %0) #6, !dbg !1069
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %shell_cmd, metadata !1061, metadata !700), !dbg !1070
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %0, i64 100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i32 %tr_val) #6, !dbg !1071
  %call2 = call %struct._IO_FILE* @popen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !1072
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call2, i64 0, metadata !1065, metadata !700), !dbg !1073
  %cmp = icmp eq %struct._IO_FILE* %call2, null, !dbg !1074
  br i1 %cmp, label %if.then, label %if.end, !dbg !1076

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0)), !dbg !1077
  br label %cleanup, !dbg !1079

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %pbuffer, i64 0, i64 0, !dbg !1080
  call void @llvm.lifetime.start(i64 100, i8* nonnull %1) #6, !dbg !1080
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %pbuffer, metadata !1066, metadata !700), !dbg !1081
  br label %while.cond, !dbg !1082

while.cond:                                       ; preds = %while.cond, %if.end
  %call5 = call i8* @fgets(i8* nonnull %1, i32 100, %struct._IO_FILE* nonnull %call2), !dbg !1083
  %cmp6 = icmp eq i8* %call5, null, !dbg !1085
  br i1 %cmp6, label %while.end, label %while.cond, !dbg !1086, !llvm.loop !1087

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1089, metadata !700) #6, !dbg !1095
  %call.i = call i64 @strtol(i8* nocapture nonnull %1, i8** null, i32 10) #6, !dbg !1097
  %conv.i = trunc i64 %call.i to i32, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !1067, metadata !700), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !1060, metadata !700), !dbg !1100
  %call9 = call i32 @pclose(%struct._IO_FILE* nonnull %call2), !dbg !1101
  call void @llvm.lifetime.end(i64 100, i8* nonnull %1) #6, !dbg !1102
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %conv.i, %while.end ]
  call void @llvm.lifetime.end(i64 100, i8* nonnull %0) #6, !dbg !1102
  ret i32 %retval.0, !dbg !1103
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @popen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @run_object_classification(i32 %tr_val) local_unnamed_addr #0 !dbg !1104 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %tr_val, i64 0, metadata !1106, metadata !700), !dbg !1137
  tail call void @llvm.dbg.value(metadata i32 %tr_val, i64 0, metadata !1107, metadata !700), !dbg !1138
  %0 = load %struct._object*, %struct._object** @pModule, align 8, !dbg !1139, !tbaa !728
  %cmp = icmp eq %struct._object* %0, null, !dbg !1140
  br i1 %cmp, label %cleanup, label %if.then, !dbg !1141

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @python_func, align 8, !dbg !1142, !tbaa !728
  %call = tail call %struct._object* @PyObject_GetAttrString(%struct._object* nonnull %0, i8* %1) #6, !dbg !1143
  store %struct._object* %call, %struct._object** @pFunc, align 8, !dbg !1144, !tbaa !728
  %tobool = icmp eq %struct._object* %call, null, !dbg !1145
  br i1 %tobool, label %if.else101, label %land.lhs.true, !dbg !1146

land.lhs.true:                                    ; preds = %if.then
  %call1 = tail call i32 @PyCallable_Check(%struct._object* nonnull %call) #6, !dbg !1147
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1147
  br i1 %tobool2, label %if.else101, label %if.then3, !dbg !1149

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call %struct._object* @PyTuple_New(i64 1) #6, !dbg !1151
  store %struct._object* %call4, %struct._object** @pArgs, align 8, !dbg !1152, !tbaa !728
  %conv = zext i32 %tr_val to i64, !dbg !1153
  %call5 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #6, !dbg !1154
  store %struct._object* %call5, %struct._object** @pValue, align 8, !dbg !1155, !tbaa !728
  %tobool6 = icmp eq %struct._object* %call5, null, !dbg !1156
  %2 = load %struct._object*, %struct._object** @pArgs, align 8, !tbaa !728
  br i1 %tobool6, label %do.body, label %if.end38, !dbg !1157

do.body:                                          ; preds = %if.then3
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !1108, metadata !700), !dbg !1158
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !1159
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1159, !tbaa !1005
  %dec = add nsw i64 %3, -1, !dbg !1159
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1159, !tbaa !1005
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1159
  br i1 %cmp8, label %if.else, label %if.end, !dbg !1162

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1164
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1164, !tbaa !1010
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1164
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1164, !tbaa !1011
  tail call void %5(%struct._object* nonnull %2) #6, !dbg !1164
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %6 = load %struct._object*, %struct._object** @pFunc, align 8, !dbg !1166, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !1116, metadata !700), !dbg !1168
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1169
  %7 = load i64, i64* %ob_refcnt13, align 8, !dbg !1169, !tbaa !1005
  %dec14 = add nsw i64 %7, -1, !dbg !1169
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1169, !tbaa !1005
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !1169
  br i1 %cmp15, label %if.else18, label %if.end21, !dbg !1166

if.else18:                                        ; preds = %if.end
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1172
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1172, !tbaa !1010
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1172
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1172, !tbaa !1011
  tail call void %9(%struct._object* %6) #6, !dbg !1172
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.end
  %10 = load %struct._object*, %struct._object** @pModule, align 8, !dbg !1174, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !1118, metadata !700), !dbg !1176
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1177
  %11 = load i64, i64* %ob_refcnt26, align 8, !dbg !1177, !tbaa !1005
  %dec27 = add nsw i64 %11, -1, !dbg !1177
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !1177, !tbaa !1005
  %cmp28 = icmp eq i64 %dec27, 0, !dbg !1177
  br i1 %cmp28, label %if.else31, label %if.end34, !dbg !1174

if.else31:                                        ; preds = %if.end21
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !1180
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1180, !tbaa !1010
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1180
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1180, !tbaa !1011
  tail call void %13(%struct._object* %10) #6, !dbg !1180
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.end21
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1182, !tbaa !728
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.40, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %14) #14, !dbg !1183
  br label %cleanup, !dbg !1184

if.end38:                                         ; preds = %if.then3
  %call39 = tail call i32 @PyTuple_SetItem(%struct._object* %2, i64 0, %struct._object* nonnull %call5) #6, !dbg !1185
  %16 = load %struct._object*, %struct._object** @pFunc, align 8, !dbg !1186, !tbaa !728
  %17 = load %struct._object*, %struct._object** @pArgs, align 8, !dbg !1187, !tbaa !728
  %call40 = tail call %struct._object* @PyObject_CallObject(%struct._object* %16, %struct._object* %17) #6, !dbg !1188
  store %struct._object* %call40, %struct._object** @pretValue, align 8, !dbg !1189, !tbaa !728
  %18 = load %struct._object*, %struct._object** @pArgs, align 8, !dbg !1190, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !1120, metadata !700), !dbg !1192
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !1193
  %19 = load i64, i64* %ob_refcnt43, align 8, !dbg !1193, !tbaa !1005
  %dec44 = add nsw i64 %19, -1, !dbg !1193
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1193, !tbaa !1005
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !1193
  br i1 %cmp45, label %if.else48, label %if.end51, !dbg !1190

if.else48:                                        ; preds = %if.end38
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !1196
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1196, !tbaa !1010
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1196
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1196, !tbaa !1011
  tail call void %21(%struct._object* %18) #6, !dbg !1196
  %.pre = load %struct._object*, %struct._object** @pretValue, align 8, !tbaa !728
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.end38
  %22 = phi %struct._object* [ %call40, %if.end38 ], [ %.pre, %if.else48 ], !dbg !1198
  %cmp54 = icmp eq %struct._object* %22, null, !dbg !1199
  br i1 %cmp54, label %do.body73, label %if.then56, !dbg !1200

if.then56:                                        ; preds = %if.end51
  %call57 = tail call i64 @PyLong_AsLong(%struct._object* nonnull %22) #6, !dbg !1201
  %conv58 = trunc i64 %call57 to i32, !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %conv58, i64 0, metadata !1122, metadata !700), !dbg !1202
  tail call void @llvm.dbg.value(metadata i32 %conv58, i64 0, metadata !1107, metadata !700), !dbg !1138
  %23 = load %struct._object*, %struct._object** @pretValue, align 8, !dbg !1203, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !1125, metadata !700), !dbg !1205
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1206
  %24 = load i64, i64* %ob_refcnt61, align 8, !dbg !1206, !tbaa !1005
  %dec62 = add nsw i64 %24, -1, !dbg !1206
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !1206, !tbaa !1005
  %cmp63 = icmp eq i64 %dec62, 0, !dbg !1206
  br i1 %cmp63, label %if.else66, label %do.body108, !dbg !1203

if.else66:                                        ; preds = %if.then56
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1209
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1209, !tbaa !1010
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1209
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1209, !tbaa !1011
  tail call void %26(%struct._object* %23) #6, !dbg !1209
  br label %do.body108

do.body73:                                        ; preds = %if.end51
  %27 = load %struct._object*, %struct._object** @pFunc, align 8, !dbg !1211, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !1127, metadata !700), !dbg !1213
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1214
  %28 = load i64, i64* %ob_refcnt75, align 8, !dbg !1214, !tbaa !1005
  %dec76 = add nsw i64 %28, -1, !dbg !1214
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1214, !tbaa !1005
  %cmp77 = icmp eq i64 %dec76, 0, !dbg !1214
  br i1 %cmp77, label %if.else80, label %if.end83, !dbg !1211

if.else80:                                        ; preds = %do.body73
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1217
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1217, !tbaa !1010
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1217
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1217, !tbaa !1011
  tail call void %30(%struct._object* %27) #6, !dbg !1217
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %do.body73
  %31 = load %struct._object*, %struct._object** @pModule, align 8, !dbg !1219, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !1130, metadata !700), !dbg !1221
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1222
  %32 = load i64, i64* %ob_refcnt88, align 8, !dbg !1222, !tbaa !1005
  %dec89 = add nsw i64 %32, -1, !dbg !1222
  store i64 %dec89, i64* %ob_refcnt88, align 8, !dbg !1222, !tbaa !1005
  %cmp90 = icmp eq i64 %dec89, 0, !dbg !1222
  br i1 %cmp90, label %if.else93, label %if.end96, !dbg !1219

if.else93:                                        ; preds = %if.end83
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 1, !dbg !1225
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8, !dbg !1225, !tbaa !1010
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1225
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8, !dbg !1225, !tbaa !1011
  tail call void %34(%struct._object* %31) #6, !dbg !1225
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %if.end83
  tail call void @PyErr_Print() #6, !dbg !1227
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @str.63, i64 0, i64 0)), !dbg !1228
  br label %cleanup, !dbg !1229

if.else101:                                       ; preds = %land.lhs.true, %if.then
  %call102 = tail call %struct._object* @PyErr_Occurred() #6, !dbg !1230
  %tobool103 = icmp eq %struct._object* %call102, null, !dbg !1230
  br i1 %tobool103, label %if.end105, label %if.then104, !dbg !1233

if.then104:                                       ; preds = %if.else101
  tail call void @PyErr_Print() #6, !dbg !1234
  br label %if.end105, !dbg !1234

if.end105:                                        ; preds = %if.then104, %if.else101
  %call106 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0)), !dbg !1235
  br label %do.body108

do.body108:                                       ; preds = %if.end105, %if.else66, %if.then56
  %object.0 = phi i32 [ %tr_val, %if.end105 ], [ %conv58, %if.then56 ], [ %conv58, %if.else66 ]
  tail call void @llvm.dbg.value(metadata i32 %object.0, i64 0, metadata !1107, metadata !700), !dbg !1138
  %35 = load %struct._object*, %struct._object** @pFunc, align 8, !dbg !1236, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !1132, metadata !700), !dbg !1238
  %cmp109 = icmp eq %struct._object* %35, null, !dbg !1239
  br i1 %cmp109, label %cleanup, label %do.body112, !dbg !1236

do.body112:                                       ; preds = %do.body108
  tail call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !1134, metadata !700), !dbg !1241
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !1242
  %36 = load i64, i64* %ob_refcnt114, align 8, !dbg !1242, !tbaa !1005
  %dec115 = add nsw i64 %36, -1, !dbg !1242
  store i64 %dec115, i64* %ob_refcnt114, align 8, !dbg !1242, !tbaa !1005
  %cmp116 = icmp eq i64 %dec115, 0, !dbg !1242
  br i1 %cmp116, label %if.else119, label %cleanup, !dbg !1245

if.else119:                                       ; preds = %do.body112
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 1, !dbg !1247
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !1247, !tbaa !1010
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !1247
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !1247, !tbaa !1011
  tail call void %38(%struct._object* nonnull %35) #6, !dbg !1247
  br label %cleanup

cleanup:                                          ; preds = %if.else119, %do.body112, %do.body108, %if.end96, %if.end34, %entry
  %retval.0 = phi i32 [ 1, %if.end96 ], [ 1, %if.end34 ], [ %tr_val, %entry ], [ %object.0, %if.else119 ], [ %object.0, %do.body112 ], [ %object.0, %do.body108 ]
  ret i32 %retval.0, !dbg !1249
}

declare %struct._object* @PyTuple_New(i64) local_unnamed_addr #5

declare %struct._object* @PyLong_FromLong(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) local_unnamed_addr #5

declare i64 @PyLong_AsLong(%struct._object*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @iterate_cv_kernel(i64 %vs.coerce0, float %vs.coerce1) local_unnamed_addr #0 !dbg !1250 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %vs.coerce0, i64 0, metadata !1261, metadata !1264), !dbg !1265
  tail call void @llvm.dbg.value(metadata float %vs.coerce1, i64 0, metadata !1261, metadata !1266), !dbg !1265
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1261, metadata !700), !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1262, metadata !700), !dbg !1267
  %vs.sroa.0.4.extract.shift = lshr i64 %vs.coerce0, 32, !dbg !1268
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %vs.sroa.0.4.extract.shift, !dbg !1269
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1269, !tbaa !969
  %conv = sext i8 %0 to i32, !dbg !1269
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.epilog
    i32 66, label %sw.bb1
    i32 67, label %sw.bb2
    i32 80, label %sw.bb3
    i32 84, label %sw.bb4
  ], !dbg !1270

sw.bb1:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1262, metadata !700), !dbg !1267
  br label %sw.epilog, !dbg !1271

sw.bb2:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1262, metadata !700), !dbg !1267
  br label %sw.epilog, !dbg !1273

sw.bb3:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1262, metadata !700), !dbg !1267
  br label %sw.epilog, !dbg !1274

sw.bb4:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1262, metadata !700), !dbg !1267
  br label %sw.epilog, !dbg !1275

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0), i32 %conv), !dbg !1276
  tail call void @exit(i32 -2) #13, !dbg !1277
  unreachable, !dbg !1279

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry
  %tr_val.0 = phi i32 [ 2, %sw.bb4 ], [ 3, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %sw.bb1 ], [ 0, %entry ]
  tail call void @llvm.dbg.value(metadata i32 %tr_val.0, i64 0, metadata !1262, metadata !700), !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %tr_val.0, i64 0, metadata !1263, metadata !700), !dbg !1280
  ret i32 %tr_val.0, !dbg !1281
}

; Function Attrs: nounwind uwtable
define i32 @execute_cv_kernel(i32 %in_tr_val) local_unnamed_addr #0 !dbg !1282 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %in_tr_val, i64 0, metadata !1286, metadata !700), !dbg !1288
  %call = tail call i32 @run_object_classification(i32 %in_tr_val), !dbg !1289
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1287, metadata !700), !dbg !1290
  ret i32 %call, !dbg !1291
}

; Function Attrs: nounwind uwtable
define void @post_execute_cv_kernel(i32 %tr_val, i32 %cv_object) local_unnamed_addr #0 !dbg !1292 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %tr_val, i64 0, metadata !1296, metadata !700), !dbg !1298
  tail call void @llvm.dbg.value(metadata i32 %cv_object, i64 0, metadata !1297, metadata !700), !dbg !1299
  %cmp = icmp eq i32 %cv_object, %tr_val, !dbg !1300
  br i1 %cmp, label %if.then, label %if.else, !dbg !1302

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %cv_object to i64, !dbg !1303
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @label_match, i64 0, i64 %idxprom, !dbg !1303
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1305, !tbaa !703
  %inc = add i32 %0, 1, !dbg !1305
  store i32 %inc, i32* %arrayidx, align 4, !dbg !1305, !tbaa !703
  br label %if.end, !dbg !1306

if.else:                                          ; preds = %entry
  %idxprom2 = sext i32 %tr_val to i64, !dbg !1307
  %idxprom4 = sext i32 %cv_object to i64, !dbg !1307
  %arrayidx5 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %idxprom2, i64 %idxprom4, !dbg !1307
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %idxprom8.pre-phi = phi i64 [ %idxprom4, %if.else ], [ %idxprom, %if.then ], !dbg !1309
  %arrayidx5.sink11 = phi i32* [ %arrayidx5, %if.else ], [ getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), %if.then ]
  %1 = load i32, i32* %arrayidx5.sink11, align 4, !tbaa !703
  %inc6 = add i32 %1, 1
  store i32 %inc6, i32* %arrayidx5.sink11, align 4, !tbaa !703
  %2 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !dbg !1310, !tbaa !703
  %inc7 = add i32 %2, 1, !dbg !1310
  store i32 %inc7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !dbg !1310, !tbaa !703
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* @label_lookup, i64 0, i64 %idxprom8.pre-phi, !dbg !1309
  %3 = load i32, i32* %arrayidx9, align 4, !dbg !1311, !tbaa !703
  %inc10 = add i32 %3, 1, !dbg !1311
  store i32 %inc10, i32* %arrayidx9, align 4, !dbg !1311, !tbaa !703
  ret void, !dbg !1312
}

; Function Attrs: nounwind readonly uwtable
define %struct.radar_dict_entry_t* @iterate_rad_kernel(i64 %vs.coerce0, float %vs.coerce1) local_unnamed_addr #7 !dbg !1313 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %vs.coerce0, i64 0, metadata !1317, metadata !1264), !dbg !1319
  tail call void @llvm.dbg.value(metadata float %vs.coerce1, i64 0, metadata !1317, metadata !1266), !dbg !1319
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1317, metadata !700), !dbg !1319
  %vs.sroa.0.4.extract.shift = lshr i64 %vs.coerce0, 32, !dbg !1320
  %arrayidx = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %vs.sroa.0.4.extract.shift, !dbg !1321
  %0 = load float, float* %arrayidx, align 4, !dbg !1321, !tbaa !764
  %conv = fpext float %0 to double, !dbg !1321
  %div = fdiv double %conv, 5.000000e+01, !dbg !1322
  %conv1 = fptoui double %div to i32, !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %conv1, i64 0, metadata !1318, metadata !700), !dbg !1323
  %1 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !dbg !1324, !tbaa !728
  %idxprom2 = zext i32 %conv1 to i64, !dbg !1324
  %arrayidx3 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %1, i64 %idxprom2, !dbg !1324
  ret %struct.radar_dict_entry_t* %arrayidx3, !dbg !1325
}

; Function Attrs: nounwind uwtable
define float @execute_rad_kernel(float* %inputs) local_unnamed_addr #0 !dbg !1326 {
entry:
  tail call void @llvm.dbg.value(metadata float* %inputs, i64 0, metadata !1332, metadata !700), !dbg !1334
  %call = tail call float @calculate_peak_dist_from_fmcw(float* %inputs) #6, !dbg !1335
  tail call void @llvm.dbg.value(metadata float %call, i64 0, metadata !1333, metadata !700), !dbg !1336
  ret float %call, !dbg !1337
}

; Function Attrs: nounwind uwtable
define void @post_execute_rad_kernel(i32 %index, float %tr_dist, float %dist) local_unnamed_addr #0 !dbg !1338 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !1342, metadata !700), !dbg !1348
  tail call void @llvm.dbg.value(metadata float %tr_dist, i64 0, metadata !1343, metadata !700), !dbg !1349
  tail call void @llvm.dbg.value(metadata float %dist, i64 0, metadata !1344, metadata !700), !dbg !1350
  %0 = load i32, i32* @radar_total_calc, align 4, !dbg !1351, !tbaa !703
  %inc = add i32 %0, 1, !dbg !1351
  store i32 %inc, i32* @radar_total_calc, align 4, !dbg !1351, !tbaa !703
  %idxprom = zext i32 %index to i64, !dbg !1352
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @hist_distances, i64 0, i64 %idxprom, !dbg !1352
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1353, !tbaa !703
  %inc1 = add i32 %1, 1, !dbg !1353
  store i32 %inc1, i32* %arrayidx, align 4, !dbg !1353, !tbaa !703
  %conv = fpext float %tr_dist to double, !dbg !1354
  %cmp = fcmp oge float %tr_dist, 5.000000e+02, !dbg !1356
  %cmp4 = fcmp ogt float %dist, 1.000000e+04, !dbg !1357
  %or.cond = and i1 %cmp, %cmp4, !dbg !1359
  %sub = fsub float %tr_dist, %dist, !dbg !1360
  tail call void @llvm.dbg.value(metadata float %sub, i64 0, metadata !1345, metadata !700), !dbg !1362
  %phitmp = fpext float %sub to double
  %error.0 = select i1 %or.cond, double 0.000000e+00, double %phitmp, !dbg !1359
  %call = tail call double @fabs(double %error.0) #1, !dbg !1363
  %conv7 = fptrunc double %call to float, !dbg !1363
  tail call void @llvm.dbg.value(metadata float %conv7, i64 0, metadata !1346, metadata !700), !dbg !1364
  %cmp9 = fcmp une float %tr_dist, 0.000000e+00, !dbg !1365
  %div = fdiv float %conv7, %tr_dist, !dbg !1367
  tail call void @llvm.dbg.value(metadata float %div, i64 0, metadata !1347, metadata !700), !dbg !1369
  %pct_err.0 = select i1 %cmp9, float %div, float %conv7, !dbg !1370
  tail call void @llvm.dbg.value(metadata float %pct_err.0, i64 0, metadata !1347, metadata !700), !dbg !1369
  %conv15 = fpext float %dist to double, !dbg !1371
  %conv17 = fpext float %conv7 to double, !dbg !1372
  %conv18 = fpext float %pct_err.0 to double, !dbg !1373
  %call19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.44, i64 0, i64 0), i32 %index, double %conv, double %conv15, double %error.0, double %conv17, double %conv18), !dbg !1374
  %cmp21 = fcmp oeq float %pct_err.0, 0.000000e+00, !dbg !1375
  br i1 %cmp21, label %if.then23, label %if.else28, !dbg !1377

if.then23:                                        ; preds = %entry
  %arrayidx26 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %idxprom, i64 0, !dbg !1378
  br label %if.end63, !dbg !1380

if.else28:                                        ; preds = %entry
  %cmp30 = fcmp olt double %conv18, 1.000000e-02, !dbg !1381
  br i1 %cmp30, label %if.then32, label %if.else37, !dbg !1384

if.then32:                                        ; preds = %if.else28
  %arrayidx35 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %idxprom, i64 1, !dbg !1386
  br label %if.end63, !dbg !1388

if.else37:                                        ; preds = %if.else28
  %cmp39 = fcmp olt double %conv18, 1.000000e-01, !dbg !1389
  br i1 %cmp39, label %if.then41, label %if.else46, !dbg !1392

if.then41:                                        ; preds = %if.else37
  %arrayidx44 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %idxprom, i64 2, !dbg !1393
  br label %if.end63, !dbg !1395

if.else46:                                        ; preds = %if.else37
  %cmp48 = fcmp olt float %pct_err.0, 1.000000e+00, !dbg !1396
  %arrayidx58 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %idxprom, i64 4, !dbg !1399
  %arrayidx53 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %idxprom, i64 3, !dbg !1401
  %arrayidx58.sink64 = select i1 %cmp48, i32* %arrayidx53, i32* %arrayidx58, !dbg !1403
  br label %if.end63

if.end63:                                         ; preds = %if.else46, %if.then41, %if.then32, %if.then23
  %arrayidx58.sink64.sink65.sink66.sink67 = phi i32* [ %arrayidx26, %if.then23 ], [ %arrayidx35, %if.then32 ], [ %arrayidx58.sink64, %if.else46 ], [ %arrayidx44, %if.then41 ]
  %2 = load i32, i32* %arrayidx58.sink64.sink65.sink66.sink67, align 4, !tbaa !703
  %inc59 = add i32 %2, 1
  store i32 %inc59, i32* %arrayidx58.sink64.sink65.sink66.sink67, align 4, !tbaa !703
  ret void, !dbg !1404
}

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define %struct.vit_dict_entry_t* @iterate_vit_kernel(i64 %vs.coerce0, float %vs.coerce1) local_unnamed_addr #0 !dbg !1405 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %vs.coerce0, i64 0, metadata !1409, metadata !1264), !dbg !1421
  tail call void @llvm.dbg.value(metadata float %vs.coerce1, i64 0, metadata !1409, metadata !1266), !dbg !1421
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1409, metadata !700), !dbg !1421
  %0 = load i32, i32* @total_obj, align 4, !dbg !1422, !tbaa !703
  %idxprom = zext i32 %0 to i64, !dbg !1423
  %arrayidx = getelementptr inbounds [80 x i32], [80 x i32]* @hist_total_objs, i64 0, i64 %idxprom, !dbg !1423
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1424, !tbaa !703
  %inc = add i32 %1, 1, !dbg !1424
  store i32 %inc, i32* %arrayidx, align 4, !dbg !1424, !tbaa !703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1410, metadata !700), !dbg !1425
  %vs.sroa.0.4.extract.shift = lshr i64 %vs.coerce0, 32, !dbg !1426
  %vs.sroa.0.4.extract.trunc = trunc i64 %vs.sroa.0.4.extract.shift to i32, !dbg !1426
  switch i32 %vs.sroa.0.4.extract.trunc, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb9
    i32 3, label %sw.bb9
    i32 4, label %sw.bb56
  ], !dbg !1427

sw.bb:                                            ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 %mul125, i64 0, metadata !1411, metadata !700), !dbg !1428
  %2 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 1), align 1, !dbg !1429, !tbaa !969
  %cmp = icmp eq i8 %2, 78, !dbg !1431
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1432

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load float, float* getelementptr inbounds ([5 x float], [5 x float]* @nearest_dist, i64 0, i64 1), align 4, !dbg !1433, !tbaa !764
  %conv = fpext float %3 to double, !dbg !1433
  %div = fdiv double %conv, 5.000000e+01, !dbg !1434
  %conv1 = fptoui double %div to i32, !dbg !1435
  %mul125 = mul i32 %conv1, 50, !dbg !1436
  %cmp7 = icmp ult i32 %mul125, 155, !dbg !1437
  br i1 %cmp7, label %sw.epilog, label %if.else, !dbg !1439

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1410, metadata !700), !dbg !1425
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry, %entry
  %add = add nuw nsw i64 %vs.sroa.0.4.extract.shift, 1, !dbg !1441
  %idxprom11 = and i64 %add, 4294967295, !dbg !1442
  %arrayidx12 = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom11, !dbg !1442
  %4 = load float, float* %arrayidx12, align 4, !dbg !1442, !tbaa !764
  %conv13 = fpext float %4 to double, !dbg !1442
  %div14 = fdiv double %conv13, 5.000000e+01, !dbg !1443
  %conv15 = fptoui double %div14 to i32, !dbg !1444
  %mul17124 = mul i32 %conv15, 50, !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 %mul17124, i64 0, metadata !1414, metadata !700), !dbg !1446
  %sub = add nuw nsw i64 %vs.sroa.0.4.extract.shift, 4294967295, !dbg !1447
  %idxprom20 = and i64 %sub, 4294967295, !dbg !1448
  tail call void @llvm.dbg.value(metadata i32 %mul26123, i64 0, metadata !1416, metadata !700), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1410, metadata !700), !dbg !1425
  %arrayidx31 = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom20, !dbg !1450
  %5 = load i8, i8* %arrayidx31, align 1, !dbg !1450, !tbaa !969
  %cmp33 = icmp eq i8 %5, 78, !dbg !1452
  br i1 %cmp33, label %if.end41, label %land.lhs.true35, !dbg !1453

land.lhs.true35:                                  ; preds = %sw.bb9
  %arrayidx21 = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom20, !dbg !1448
  %6 = load float, float* %arrayidx21, align 4, !dbg !1448, !tbaa !764
  %conv22 = fpext float %6 to double, !dbg !1448
  %div23 = fdiv double %conv22, 5.000000e+01, !dbg !1454
  %conv24 = fptoui double %div23 to i32, !dbg !1455
  %mul26123 = mul i32 %conv24, 50, !dbg !1456
  %cmp37 = icmp ult i32 %mul26123, 155, !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1410, metadata !700), !dbg !1425
  %. = zext i1 %cmp37 to i32, !dbg !1459
  br label %if.end41, !dbg !1459

if.end41:                                         ; preds = %land.lhs.true35, %sw.bb9
  %tr_val.1 = phi i32 [ 0, %sw.bb9 ], [ %., %land.lhs.true35 ]
  tail call void @llvm.dbg.value(metadata i32 %tr_val.1, i64 0, metadata !1410, metadata !700), !dbg !1425
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom11, !dbg !1461
  %7 = load i8, i8* %arrayidx45, align 1, !dbg !1461, !tbaa !969
  %cmp47 = icmp ne i8 %7, 78, !dbg !1463
  %cmp51 = icmp ult i32 %mul17124, 155, !dbg !1464
  %or.cond = and i1 %cmp51, %cmp47, !dbg !1466
  %add54 = or i32 %tr_val.1, 2, !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %add54, i64 0, metadata !1410, metadata !700), !dbg !1425
  %tr_val.2 = select i1 %or.cond, i32 %add54, i32 %tr_val.1, !dbg !1466
  br label %sw.epilog, !dbg !1466

sw.bb56:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 %mul61126, i64 0, metadata !1417, metadata !700), !dbg !1469
  %8 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 3), align 1, !dbg !1470, !tbaa !969
  %cmp64 = icmp eq i8 %8, 78, !dbg !1472
  br i1 %cmp64, label %if.else71, label %land.lhs.true66, !dbg !1473

land.lhs.true66:                                  ; preds = %sw.bb56
  %9 = load float, float* getelementptr inbounds ([5 x float], [5 x float]* @nearest_dist, i64 0, i64 3), align 4, !dbg !1474, !tbaa !764
  %conv57 = fpext float %9 to double, !dbg !1474
  %div58 = fdiv double %conv57, 5.000000e+01, !dbg !1475
  %conv59 = fptoui double %div58 to i32, !dbg !1476
  %mul61126 = mul i32 %conv59, 50, !dbg !1477
  %cmp68 = icmp ult i32 %mul61126, 155, !dbg !1478
  br i1 %cmp68, label %sw.epilog, label %if.else71, !dbg !1480

if.else71:                                        ; preds = %land.lhs.true66, %sw.bb56
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1410, metadata !700), !dbg !1425
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else71, %land.lhs.true66, %if.end41, %if.else, %land.lhs.true, %entry
  %tr_val.4 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 3, %land.lhs.true ], [ %tr_val.2, %if.end41 ], [ 2, %if.else71 ], [ 3, %land.lhs.true66 ]
  tail call void @llvm.dbg.value(metadata i32 %tr_val.4, i64 0, metadata !1410, metadata !700), !dbg !1425
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1420, metadata !700), !dbg !1482
  %10 = load i32, i32* @vit_msgs_behavior, align 4, !dbg !1483, !tbaa !703
  %switch.tableidx = add i32 %10, -1, !dbg !1484
  %11 = icmp ult i32 %switch.tableidx, 5, !dbg !1484
  br i1 %11, label %switch.lookup, label %sw.epilog76, !dbg !1484

switch.lookup:                                    ; preds = %sw.epilog
  %12 = sext i32 %switch.tableidx to i64, !dbg !1484
  %switch.gep = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table, i64 0, i64 %12, !dbg !1484
  %switch.load = load i32, i32* %switch.gep, align 4, !dbg !1484
  br label %sw.epilog76, !dbg !1484

sw.epilog76:                                      ; preds = %switch.lookup, %sw.epilog
  %msg_offset.0 = phi i32 [ 0, %sw.epilog ], [ %switch.load, %switch.lookup ]
  tail call void @llvm.dbg.value(metadata i32 %msg_offset.0, i64 0, metadata !1420, metadata !700), !dbg !1482
  switch i32 %tr_val.4, label %sw.epilog93 [
    i32 0, label %sw.bb77
    i32 1, label %sw.bb81
    i32 2, label %sw.bb85
    i32 3, label %sw.bb89
  ], !dbg !1485

sw.bb77:                                          ; preds = %sw.epilog76
  %13 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !1486, !tbaa !728
  %idxprom79122 = zext i32 %msg_offset.0 to i64, !dbg !1486
  %arrayidx80 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %13, i64 %idxprom79122, !dbg !1486
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %arrayidx80, i64 0, metadata !1419, metadata !700), !dbg !1488
  br label %sw.epilog93, !dbg !1489

sw.bb81:                                          ; preds = %sw.epilog76
  %14 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !1490, !tbaa !728
  %add82 = or i32 %msg_offset.0, 1, !dbg !1491
  %idxprom83121 = zext i32 %add82 to i64, !dbg !1490
  %arrayidx84 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %14, i64 %idxprom83121, !dbg !1490
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %arrayidx84, i64 0, metadata !1419, metadata !700), !dbg !1488
  br label %sw.epilog93, !dbg !1492

sw.bb85:                                          ; preds = %sw.epilog76
  %15 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !1493, !tbaa !728
  %add86 = or i32 %msg_offset.0, 2, !dbg !1494
  %idxprom87120 = zext i32 %add86 to i64, !dbg !1493
  %arrayidx88 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %15, i64 %idxprom87120, !dbg !1493
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %arrayidx88, i64 0, metadata !1419, metadata !700), !dbg !1488
  br label %sw.epilog93, !dbg !1495

sw.bb89:                                          ; preds = %sw.epilog76
  %16 = load %struct.vit_dict_entry_t*, %struct.vit_dict_entry_t** @the_viterbi_trace_dict, align 8, !dbg !1496, !tbaa !728
  %add90 = or i32 %msg_offset.0, 3, !dbg !1497
  %idxprom91119 = zext i32 %add90 to i64, !dbg !1496
  %arrayidx92 = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %16, i64 %idxprom91119, !dbg !1496
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %arrayidx92, i64 0, metadata !1419, metadata !700), !dbg !1488
  br label %sw.epilog93, !dbg !1498

sw.epilog93:                                      ; preds = %sw.bb89, %sw.bb85, %sw.bb81, %sw.bb77, %sw.epilog76
  %trace_msg.0 = phi %struct.vit_dict_entry_t* [ undef, %sw.epilog76 ], [ %arrayidx92, %sw.bb89 ], [ %arrayidx88, %sw.bb85 ], [ %arrayidx84, %sw.bb81 ], [ %arrayidx80, %sw.bb77 ]
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %trace_msg.0, i64 0, metadata !1419, metadata !700), !dbg !1488
  ret %struct.vit_dict_entry_t* %trace_msg.0, !dbg !1499
}

; Function Attrs: nounwind uwtable
define i32 @execute_vit_kernel(%struct.vit_dict_entry_t* %trace_msg, i32 %num_msgs) local_unnamed_addr #0 !dbg !1500 {
entry:
  %msg_text = alloca [1600 x i8], align 16
  %n_res_char = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %trace_msg, i64 0, metadata !1505, metadata !700), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %num_msgs, i64 0, metadata !1506, metadata !700), !dbg !1519
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1507, metadata !700), !dbg !1520
  %0 = getelementptr inbounds [1600 x i8], [1600 x i8]* %msg_text, i64 0, i64 0, !dbg !1521
  call void @llvm.lifetime.start(i64 1600, i8* nonnull %0) #6, !dbg !1521
  tail call void @llvm.dbg.declare(metadata [1600 x i8]* %msg_text, metadata !1510, metadata !700), !dbg !1522
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1512, metadata !700), !dbg !1523
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1507, metadata !700), !dbg !1520
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1512, metadata !700), !dbg !1523
  %cmp14 = icmp sgt i32 %num_msgs, 0, !dbg !1524
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1526

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast i32* %n_res_char to i8*
  %ofdm_p = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %trace_msg, i64 0, i32 2
  %frame_p = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %trace_msg, i64 0, i32 3
  %arrayidx = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %trace_msg, i64 0, i32 4, i64 0
  %psdu_size = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame_p, i64 0, i32 0
  %arrayidx2 = getelementptr inbounds [1600 x i8], [1600 x i8]* %msg_text, i64 0, i64 3
  br label %for.body, !dbg !1526

for.cond.for.cond.cleanup_crit_edge:              ; preds = %for.body
  %conv.le = sext i8 %5 to i32, !dbg !1528
  %switch.tableidx.le = add nsw i32 %conv.le, -48, !dbg !1529
  %2 = icmp ult i32 %switch.tableidx.le, 4, !dbg !1529
  %switch.tableidx..le = select i1 %2, i32 %switch.tableidx.le, i32 4, !dbg !1529
  br label %for.cond.cleanup, !dbg !1526

for.cond.cleanup:                                 ; preds = %for.cond.for.cond.cleanup_crit_edge, %entry
  %msg.0.lcssa = phi i32 [ %switch.tableidx..le, %for.cond.for.cond.cleanup_crit_edge ], [ 4, %entry ]
  call void @llvm.lifetime.end(i64 1600, i8* nonnull %0) #6, !dbg !1530
  ret i32 %msg.0.lcssa, !dbg !1531

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %mi.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #6, !dbg !1532
  call void @llvm.dbg.value(metadata i32* %n_res_char, i64 0, metadata !1514, metadata !748), !dbg !1533
  %3 = call i8* @decode_hook(%struct.ofdm_param* %ofdm_p, %struct.frame_param* %frame_p, i8* %arrayidx, i32* %n_res_char)
  call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1508, metadata !700), !dbg !1534
  %4 = load i32, i32* %psdu_size, align 4, !dbg !1535, !tbaa !932
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1517, metadata !700), !dbg !1536
  call void @descrambler(i8* %3, i32 %4, i8* nonnull %0, i8* null, i8* null) #6, !dbg !1537
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !1528, !tbaa !969
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #6, !dbg !1538
  %inc = add nuw nsw i32 %mi.015, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1512, metadata !700), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1512, metadata !700), !dbg !1523
  %exitcond = icmp eq i32 %inc, %num_msgs, !dbg !1524
  br i1 %exitcond, label %for.cond.for.cond.cleanup_crit_edge, label %for.body, !dbg !1526, !llvm.loop !1541
}

; Function Attrs: nounwind uwtable
define void @post_execute_vit_kernel(i32 %tr_msg, i32 %dec_msg) local_unnamed_addr #0 !dbg !1544 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %tr_msg, i64 0, metadata !1548, metadata !700), !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %dec_msg, i64 0, metadata !1549, metadata !700), !dbg !1551
  %0 = load i32, i32* @total_msgs, align 4, !dbg !1552, !tbaa !703
  %inc = add i32 %0, 1, !dbg !1552
  store i32 %inc, i32* @total_msgs, align 4, !dbg !1552, !tbaa !703
  %cmp = icmp eq i32 %dec_msg, %tr_msg, !dbg !1553
  br i1 %cmp, label %if.end, label %if.then, !dbg !1555

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @bad_decode_msgs, align 4, !dbg !1556, !tbaa !703
  %inc1 = add i32 %1, 1, !dbg !1556
  store i32 %inc1, i32* @bad_decode_msgs, align 4, !dbg !1556, !tbaa !703
  br label %if.end, !dbg !1558

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1559
}

; Function Attrs: nounwind uwtable
define { i64, float } @plan_and_control(i32 %label, float %distance, i32 %message, i64 %vehicle_state.coerce0, float %vehicle_state.coerce1) local_unnamed_addr #0 !dbg !1560 {
entry:
  tail call void @llvm.dbg.declare(metadata i64* undef, metadata !1567, metadata !1264), !dbg !1569
  %vehicle_state.sroa.0.sroa.0.0.extract.trunc = trunc i64 %vehicle_state.coerce0 to i32
  tail call void @llvm.dbg.value(metadata i32 %vehicle_state.sroa.0.sroa.0.0.extract.trunc, i64 0, metadata !1567, metadata !1570), !dbg !1569
  %vehicle_state.sroa.0.sroa.4.0.extract.shift = lshr i64 %vehicle_state.coerce0, 32
  %vehicle_state.sroa.0.sroa.4.0.extract.trunc = trunc i64 %vehicle_state.sroa.0.sroa.4.0.extract.shift to i32
  tail call void @llvm.dbg.value(metadata i32 %vehicle_state.sroa.0.sroa.4.0.extract.trunc, i64 0, metadata !1567, metadata !1571), !dbg !1569
  tail call void @llvm.dbg.value(metadata float %vehicle_state.coerce1, i64 0, metadata !1567, metadata !1266), !dbg !1569
  tail call void @llvm.dbg.value(metadata i32 %label, i64 0, metadata !1564, metadata !700), !dbg !1572
  tail call void @llvm.dbg.value(metadata float %distance, i64 0, metadata !1565, metadata !700), !dbg !1573
  tail call void @llvm.dbg.value(metadata i32 %message, i64 0, metadata !1566, metadata !700), !dbg !1574
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1567, metadata !700), !dbg !1569
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1568, metadata !700), !dbg !1575
  tail call void @llvm.dbg.value(metadata i32 %vehicle_state.sroa.0.sroa.0.0.extract.trunc, i64 0, metadata !1568, metadata !1570), !dbg !1575
  tail call void @llvm.dbg.value(metadata i32 %vehicle_state.sroa.0.sroa.4.0.extract.trunc, i64 0, metadata !1568, metadata !1571), !dbg !1575
  tail call void @llvm.dbg.value(metadata float %vehicle_state.coerce1, i64 0, metadata !1568, metadata !1266), !dbg !1575
  %tobool = icmp eq i32 %vehicle_state.sroa.0.sroa.0.0.extract.trunc, 0, !dbg !1576
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1578

if.end:                                           ; preds = %entry
  %cmp = fcmp ugt float %distance, 1.550000e+02, !dbg !1579
  br i1 %cmp, label %if.else24, label %if.then2, !dbg !1581

if.then2:                                         ; preds = %if.end
  %0 = load float, float* @IMPACT_DISTANCE, align 4, !dbg !1582, !tbaa !764
  %cmp3 = fcmp ult float %0, %distance, !dbg !1585
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !1586

if.then5:                                         ; preds = %if.then2
  %1 = load i32, i32* @time_step, align 4, !dbg !1587, !tbaa !703
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.45, i64 0, i64 0), i32 %1), !dbg !1589
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !1568, metadata !1266), !dbg !1575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1568, metadata !1570), !dbg !1575
  %retval.sroa.0.4.insert.shift87 = shl nuw i64 %vehicle_state.sroa.0.sroa.4.0.extract.shift, 32, !dbg !1590
  br label %cleanup, !dbg !1591

if.end7:                                          ; preds = %if.then2
  switch i32 %message, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb17
    i32 3, label %if.end46
  ], !dbg !1592

sw.bb:                                            ; preds = %if.end7
  %cmp8 = icmp ult i32 %vehicle_state.sroa.0.sroa.4.0.extract.trunc, 3, !dbg !1593
  %sub.sink.p = select i1 %cmp8, i64 1, i64 -1, !dbg !1596
  %sub.sink = add nsw i64 %sub.sink.p, %vehicle_state.sroa.0.sroa.4.0.extract.shift, !dbg !1596
  br label %if.end46, !dbg !1597

sw.bb14:                                          ; preds = %if.end7
  %add16 = add nuw nsw i64 %vehicle_state.sroa.0.sroa.4.0.extract.shift, 1, !dbg !1598
  br label %if.end46, !dbg !1599

sw.bb17:                                          ; preds = %if.end7
  %sub19 = add nsw i64 %vehicle_state.sroa.0.sroa.4.0.extract.shift, -1, !dbg !1600
  br label %if.end46, !dbg !1601

sw.default:                                       ; preds = %if.end7
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @lane_names, i64 0, i64 %vehicle_state.sroa.0.sroa.4.0.extract.shift, !dbg !1602
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1602, !tbaa !728
  %call23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.46, i64 0, i64 0), i8* %2, i32 %message), !dbg !1603
  br label %if.end46, !dbg !1604

if.else24:                                        ; preds = %if.end
  switch i32 %vehicle_state.sroa.0.sroa.4.0.extract.trunc, label %if.end46 [
    i32 0, label %sw.bb26
    i32 1, label %sw.bb26
    i32 4, label %sw.bb35
    i32 3, label %sw.bb35
  ], !dbg !1605

sw.bb26:                                          ; preds = %if.else24, %if.else24
  %3 = or i32 %message, 1, !dbg !1607
  %4 = icmp eq i32 %3, 1, !dbg !1607
  %add33 = zext i1 %4 to i64, !dbg !1607
  %add33.vehicle_state.sroa.0.sroa.4.0.extract.shift = add nuw nsw i64 %add33, %vehicle_state.sroa.0.sroa.4.0.extract.shift, !dbg !1607
  br label %if.end46, !dbg !1607

sw.bb35:                                          ; preds = %if.else24, %if.else24
  %5 = or i32 %message, 2, !dbg !1610
  %6 = icmp eq i32 %5, 2, !dbg !1610
  %sub43 = sext i1 %6 to i64, !dbg !1610
  %sub43.vehicle_state.sroa.0.sroa.4.0.extract.shift = add nsw i64 %sub43, %vehicle_state.sroa.0.sroa.4.0.extract.shift, !dbg !1610
  br label %if.end46, !dbg !1610

if.end46:                                         ; preds = %sw.bb35, %sw.bb26, %if.else24, %sw.default, %sw.bb17, %sw.bb14, %sw.bb, %if.end7
  %new_vehicle_state.sroa.16.0 = phi float [ %vehicle_state.coerce1, %sw.default ], [ %vehicle_state.coerce1, %sw.bb17 ], [ %vehicle_state.coerce1, %sw.bb14 ], [ %vehicle_state.coerce1, %sw.bb ], [ %vehicle_state.coerce1, %if.else24 ], [ 0.000000e+00, %if.end7 ], [ %vehicle_state.coerce1, %sw.bb26 ], [ %vehicle_state.coerce1, %sw.bb35 ]
  %new_vehicle_state.sroa.6.0 = phi i64 [ %vehicle_state.sroa.0.sroa.4.0.extract.shift, %sw.default ], [ %sub19, %sw.bb17 ], [ %add16, %sw.bb14 ], [ %sub.sink, %sw.bb ], [ %vehicle_state.sroa.0.sroa.4.0.extract.shift, %if.else24 ], [ %vehicle_state.sroa.0.sroa.4.0.extract.shift, %if.end7 ], [ %add33.vehicle_state.sroa.0.sroa.4.0.extract.shift, %sw.bb26 ], [ %sub43.vehicle_state.sroa.0.sroa.4.0.extract.shift, %sw.bb35 ]
  tail call void @llvm.dbg.value(metadata float %new_vehicle_state.sroa.16.0, i64 0, metadata !1568, metadata !1266), !dbg !1575
  %retval.sroa.0.4.insert.shift = shl i64 %new_vehicle_state.sroa.6.0, 32, !dbg !1612
  %retval.sroa.0.4.insert.mask = and i64 %vehicle_state.coerce0, 4294967295, !dbg !1612
  %retval.sroa.0.4.insert.insert = or i64 %retval.sroa.0.4.insert.shift, %retval.sroa.0.4.insert.mask, !dbg !1612
  br label %cleanup, !dbg !1613

cleanup:                                          ; preds = %if.end46, %if.then5, %entry
  %retval.sroa.0.0 = phi i64 [ %retval.sroa.0.4.insert.shift87, %if.then5 ], [ %retval.sroa.0.4.insert.insert, %if.end46 ], [ %vehicle_state.coerce0, %entry ]
  %retval.sroa.6.0 = phi float [ 0.000000e+00, %if.then5 ], [ %new_vehicle_state.sroa.16.0, %if.end46 ], [ %vehicle_state.coerce1, %entry ]
  %.fca.0.insert = insertvalue { i64, float } undef, i64 %retval.sroa.0.0, 0, !dbg !1614
  %.fca.1.insert = insertvalue { i64, float } %.fca.0.insert, float %retval.sroa.6.0, 1, !dbg !1614
  ret { i64, float } %.fca.1.insert, !dbg !1614
}

; Function Attrs: nounwind uwtable
define void @closeout_cv_kernel() local_unnamed_addr #0 !dbg !1615 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), align 4, !dbg !1633, !tbaa !703
  %conv = uitofp i32 %0 to double, !dbg !1633
  %mul = fmul double %conv, 1.000000e+02, !dbg !1634
  %1 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !dbg !1635, !tbaa !703
  %conv1 = uitofp i32 %1 to double, !dbg !1635
  %div = fdiv double %mul, %conv1, !dbg !1636
  %conv3 = fptrunc double %div to float, !dbg !1637
  tail call void @llvm.dbg.value(metadata float %conv3, i64 0, metadata !1619, metadata !700), !dbg !1638
  %conv4 = fpext float %conv3 to double, !dbg !1639
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.47, i64 0, i64 0), i32 %0, i32 %1, double %conv4), !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1620, metadata !700), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1620, metadata !700), !dbg !1641
  %2 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 0), align 16, !dbg !1642, !tbaa !703
  %conv6 = uitofp i32 %2 to double, !dbg !1642
  %mul7 = fmul double %conv6, 1.000000e+02, !dbg !1645
  %3 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 0), align 16, !dbg !1646, !tbaa !703
  %conv10 = uitofp i32 %3 to double, !dbg !1646
  %div12 = fdiv double %mul7, %conv10, !dbg !1647
  %conv13 = fptrunc double %div12 to float, !dbg !1648
  tail call void @llvm.dbg.value(metadata float %conv13, i64 0, metadata !1619, metadata !700), !dbg !1638
  %4 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 0), align 16, !dbg !1649, !tbaa !728
  %conv20 = fpext float %conv13 to double, !dbg !1650
  %call21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8* %4, i32 %2, i32 %3, double %conv20), !dbg !1651
  %5 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 1), align 4, !dbg !1642, !tbaa !703
  %conv6.1 = uitofp i32 %5 to double, !dbg !1642
  %mul7.1 = fmul double %conv6.1, 1.000000e+02, !dbg !1645
  %6 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 1), align 4, !dbg !1646, !tbaa !703
  %conv10.1 = uitofp i32 %6 to double, !dbg !1646
  %div12.1 = fdiv double %mul7.1, %conv10.1, !dbg !1647
  %conv13.1 = fptrunc double %div12.1 to float, !dbg !1648
  tail call void @llvm.dbg.value(metadata float %conv13, i64 0, metadata !1619, metadata !700), !dbg !1638
  %7 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 1), align 8, !dbg !1649, !tbaa !728
  %conv20.1 = fpext float %conv13.1 to double, !dbg !1650
  %call21.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8* %7, i32 %5, i32 %6, double %conv20.1), !dbg !1651
  %8 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 2), align 8, !dbg !1642, !tbaa !703
  %conv6.2 = uitofp i32 %8 to double, !dbg !1642
  %mul7.2 = fmul double %conv6.2, 1.000000e+02, !dbg !1645
  %9 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 2), align 8, !dbg !1646, !tbaa !703
  %conv10.2 = uitofp i32 %9 to double, !dbg !1646
  %div12.2 = fdiv double %mul7.2, %conv10.2, !dbg !1647
  %conv13.2 = fptrunc double %div12.2 to float, !dbg !1648
  tail call void @llvm.dbg.value(metadata float %conv13, i64 0, metadata !1619, metadata !700), !dbg !1638
  %10 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 2), align 16, !dbg !1649, !tbaa !728
  %conv20.2 = fpext float %conv13.2 to double, !dbg !1650
  %call21.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8* %10, i32 %8, i32 %9, double %conv20.2), !dbg !1651
  %11 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 3), align 4, !dbg !1642, !tbaa !703
  %conv6.3 = uitofp i32 %11 to double, !dbg !1642
  %mul7.3 = fmul double %conv6.3, 1.000000e+02, !dbg !1645
  %12 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 3), align 4, !dbg !1646, !tbaa !703
  %conv10.3 = uitofp i32 %12 to double, !dbg !1646
  %div12.3 = fdiv double %mul7.3, %conv10.3, !dbg !1647
  %conv13.3 = fptrunc double %div12.3 to float, !dbg !1648
  tail call void @llvm.dbg.value(metadata float %conv13, i64 0, metadata !1619, metadata !700), !dbg !1638
  %13 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 3), align 8, !dbg !1649, !tbaa !728
  %conv20.3 = fpext float %conv13.3 to double, !dbg !1650
  %call21.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8* %13, i32 %11, i32 %12, double %conv20.3), !dbg !1651
  %14 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 4), align 16, !dbg !1642, !tbaa !703
  %conv6.4 = uitofp i32 %14 to double, !dbg !1642
  %mul7.4 = fmul double %conv6.4, 1.000000e+02, !dbg !1645
  %15 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 4), align 16, !dbg !1646, !tbaa !703
  %conv10.4 = uitofp i32 %15 to double, !dbg !1646
  %div12.4 = fdiv double %mul7.4, %conv10.4, !dbg !1647
  %conv13.4 = fptrunc double %div12.4 to float, !dbg !1648
  tail call void @llvm.dbg.value(metadata float %conv13, i64 0, metadata !1619, metadata !700), !dbg !1638
  %16 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 4), align 16, !dbg !1649, !tbaa !728
  %conv20.4 = fpext float %conv13.4 to double, !dbg !1650
  %call21.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0), i8* %16, i32 %14, i32 %15, double %conv20.4), !dbg !1651
  %17 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_lookup, i64 0, i64 5), align 4, !dbg !1652, !tbaa !703
  %18 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @label_match, i64 0, i64 5), align 4, !dbg !1653, !tbaa !703
  %sub = sub i32 %17, %18, !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !1622, metadata !700), !dbg !1655
  %cmp22 = icmp eq i32 %sub, 0, !dbg !1656
  br i1 %cmp22, label %do.body, label %if.then, !dbg !1657

if.then:                                          ; preds = %entry
  %call24 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0), i32 %sub), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1623, metadata !700), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1623, metadata !700), !dbg !1659
  br label %for.cond31.preheader, !dbg !1660

for.cond31.preheader:                             ; preds = %for.inc52.4, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc52.4 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1627, metadata !700), !dbg !1662
  %arrayidx44 = getelementptr inbounds [5 x i8*], [5 x i8*]* @object_names, i64 0, i64 %indvars.iv
  %arrayidx39 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv, i64 0, !dbg !1663
  %19 = load i32, i32* %arrayidx39, align 4, !dbg !1663, !tbaa !703
  %cmp40 = icmp eq i32 %19, 0, !dbg !1667
  br i1 %cmp40, label %for.inc52, label %if.then42, !dbg !1668

if.then42:                                        ; preds = %for.cond31.preheader
  %20 = load i8*, i8** %arrayidx44, align 8, !dbg !1669, !tbaa !728
  %21 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 0), align 16, !dbg !1671, !tbaa !728
  %call51 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %20, i8* %21, i32 %19), !dbg !1672
  br label %for.inc52, !dbg !1673

for.inc52:                                        ; preds = %if.then42, %for.cond31.preheader
  %arrayidx39.1 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv, i64 1, !dbg !1663
  %22 = load i32, i32* %arrayidx39.1, align 4, !dbg !1663, !tbaa !703
  %cmp40.1 = icmp eq i32 %22, 0, !dbg !1667
  br i1 %cmp40.1, label %for.inc52.1, label %if.then42.1, !dbg !1668

do.body.loopexit:                                 ; preds = %for.inc52.4
  br label %do.body, !dbg !1674

do.body:                                          ; preds = %do.body.loopexit, %entry
  %23 = load %struct._object*, %struct._object** @pModule, align 8, !dbg !1674, !tbaa !728
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !1631, metadata !700), !dbg !1676
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1677
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !1677, !tbaa !1005
  %dec = add nsw i64 %24, -1, !dbg !1677
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1677, !tbaa !1005
  %cmp59 = icmp eq i64 %dec, 0, !dbg !1677
  br i1 %cmp59, label %if.else, label %if.end62, !dbg !1674

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1680
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1680, !tbaa !1010
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1680
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1680, !tbaa !1011
  tail call void %26(%struct._object* %23) #6, !dbg !1680
  br label %if.end62

if.end62:                                         ; preds = %if.else, %do.body
  tail call void @Py_Finalize() #6, !dbg !1682
  ret void, !dbg !1683

if.then42.1:                                      ; preds = %for.inc52
  %27 = load i8*, i8** %arrayidx44, align 8, !dbg !1669, !tbaa !728
  %28 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 1), align 8, !dbg !1671, !tbaa !728
  %call51.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %27, i8* %28, i32 %22), !dbg !1672
  br label %for.inc52.1, !dbg !1673

for.inc52.1:                                      ; preds = %if.then42.1, %for.inc52
  %arrayidx39.2 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv, i64 2, !dbg !1663
  %29 = load i32, i32* %arrayidx39.2, align 4, !dbg !1663, !tbaa !703
  %cmp40.2 = icmp eq i32 %29, 0, !dbg !1667
  br i1 %cmp40.2, label %for.inc52.2, label %if.then42.2, !dbg !1668

if.then42.2:                                      ; preds = %for.inc52.1
  %30 = load i8*, i8** %arrayidx44, align 8, !dbg !1669, !tbaa !728
  %31 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 2), align 16, !dbg !1671, !tbaa !728
  %call51.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %30, i8* %31, i32 %29), !dbg !1672
  br label %for.inc52.2, !dbg !1673

for.inc52.2:                                      ; preds = %if.then42.2, %for.inc52.1
  %arrayidx39.3 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv, i64 3, !dbg !1663
  %32 = load i32, i32* %arrayidx39.3, align 4, !dbg !1663, !tbaa !703
  %cmp40.3 = icmp eq i32 %32, 0, !dbg !1667
  br i1 %cmp40.3, label %for.inc52.3, label %if.then42.3, !dbg !1668

if.then42.3:                                      ; preds = %for.inc52.2
  %33 = load i8*, i8** %arrayidx44, align 8, !dbg !1669, !tbaa !728
  %34 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 3), align 8, !dbg !1671, !tbaa !728
  %call51.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %33, i8* %34, i32 %32), !dbg !1672
  br label %for.inc52.3, !dbg !1673

for.inc52.3:                                      ; preds = %if.then42.3, %for.inc52.2
  %arrayidx39.4 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @label_mismatch, i64 0, i64 %indvars.iv, i64 4, !dbg !1663
  %35 = load i32, i32* %arrayidx39.4, align 4, !dbg !1663, !tbaa !703
  %cmp40.4 = icmp eq i32 %35, 0, !dbg !1667
  br i1 %cmp40.4, label %for.inc52.4, label %if.then42.4, !dbg !1668

if.then42.4:                                      ; preds = %for.inc52.3
  %36 = load i8*, i8** %arrayidx44, align 8, !dbg !1669, !tbaa !728
  %37 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @object_names, i64 0, i64 4), align 16, !dbg !1671, !tbaa !728
  %call51.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %36, i8* %37, i32 %35), !dbg !1672
  br label %for.inc52.4, !dbg !1673

for.inc52.4:                                      ; preds = %if.then42.4, %for.inc52.3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1684
  %exitcond = icmp eq i64 %indvars.iv.next, 5, !dbg !1686
  br i1 %exitcond, label %do.body.loopexit, label %for.cond31.preheader, !dbg !1660, !llvm.loop !1688
}

declare void @Py_Finalize() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @closeout_rad_kernel() local_unnamed_addr #0 !dbg !1691 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.64, i64 0, i64 0)), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1693, metadata !700), !dbg !1705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1693, metadata !700), !dbg !1705
  %0 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !1706, !tbaa !703
  %cmp88 = icmp eq i32 %0, 0, !dbg !1709
  br i1 %cmp88, label %for.cond.cleanup, label %for.body.preheader, !dbg !1710

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !1712

for.cond.cleanup.loopexit:                        ; preds = %for.body
  br label %for.cond.cleanup, !dbg !1714

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %puts82 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.65, i64 0, i64 0)), !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1696, metadata !700), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1696, metadata !700), !dbg !1715
  %1 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !1716, !tbaa !703
  %cmp786 = icmp eq i32 %1, 0, !dbg !1718
  br i1 %cmp786, label %for.cond.cleanup9, label %for.body10.preheader, !dbg !1719

for.body10.preheader:                             ; preds = %for.cond.cleanup
  br label %for.body10, !dbg !1721

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body ], [ 0, %for.body.preheader ]
  %2 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !dbg !1712, !tbaa !728
  %distance = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %2, i64 %indvars.iv90, i32 2, !dbg !1722
  %3 = load float, float* %distance, align 4, !dbg !1722, !tbaa !767
  %conv = fpext float %3 to double, !dbg !1712
  %arrayidx2 = getelementptr inbounds [12 x i32], [12 x i32]* @hist_distances, i64 0, i64 %indvars.iv90, !dbg !1723
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !1723, !tbaa !703
  %5 = trunc i64 %indvars.iv90 to i32, !dbg !1724
  %call3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i32 %5, double %conv, i32 %4), !dbg !1724
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1, !dbg !1725
  %6 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !1706, !tbaa !703
  %7 = trunc i64 %indvars.iv.next91 to i32, !dbg !1709
  %cmp = icmp ult i32 %7, %6, !dbg !1709
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit, !dbg !1710, !llvm.loop !1727

for.cond.cleanup9.loopexit:                       ; preds = %for.body10
  br label %for.cond.cleanup9, !dbg !1730

for.cond.cleanup9:                                ; preds = %for.cond.cleanup9.loopexit, %for.cond.cleanup
  %8 = phi i32 [ 0, %for.cond.cleanup ], [ %add.4, %for.cond.cleanup9.loopexit ], !dbg !1731
  %9 = phi i32 [ 0, %for.cond.cleanup ], [ %add.3, %for.cond.cleanup9.loopexit ], !dbg !1731
  %10 = phi i32 [ 0, %for.cond.cleanup ], [ %add.2, %for.cond.cleanup9.loopexit ], !dbg !1731
  %11 = phi i32 [ 0, %for.cond.cleanup ], [ %add.1, %for.cond.cleanup9.loopexit ], !dbg !1731
  %12 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.cond.cleanup9.loopexit ], !dbg !1731
  %puts83 = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str.66, i64 0, i64 0)), !dbg !1730
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1702, metadata !700), !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1702, metadata !700), !dbg !1734
  %13 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 0), align 16, !dbg !1735, !tbaa !728
  %call55 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %13, i32 %12), !dbg !1736
  %14 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 1), align 8, !dbg !1735, !tbaa !728
  %call55.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %14, i32 %11), !dbg !1736
  %15 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 2), align 16, !dbg !1735, !tbaa !728
  %call55.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %15, i32 %10), !dbg !1736
  %16 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 3), align 8, !dbg !1735, !tbaa !728
  %call55.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %16, i32 %9), !dbg !1736
  %17 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 4), align 16, !dbg !1735, !tbaa !728
  %call55.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8* %17, i32 %8), !dbg !1736
  ret void, !dbg !1737

for.body10:                                       ; preds = %for.body10, %for.body10.preheader
  %18 = phi i32 [ %add.4, %for.body10 ], [ 0, %for.body10.preheader ], !dbg !1738
  %19 = phi i32 [ %add.3, %for.body10 ], [ 0, %for.body10.preheader ], !dbg !1738
  %20 = phi i32 [ %add.2, %for.body10 ], [ 0, %for.body10.preheader ], !dbg !1738
  %21 = phi i32 [ %add.1, %for.body10 ], [ 0, %for.body10.preheader ], !dbg !1738
  %22 = phi i32 [ %add, %for.body10 ], [ 0, %for.body10.preheader ], !dbg !1738
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.body10.preheader ]
  %23 = load %struct.radar_dict_entry_t*, %struct.radar_dict_entry_t** @the_radar_return_dict, align 8, !dbg !1721, !tbaa !728
  %index = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %23, i64 %indvars.iv, i32 0, !dbg !1741
  %24 = load i32, i32* %index, align 4, !dbg !1741, !tbaa !756
  %distance15 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %23, i64 %indvars.iv, i32 2, !dbg !1742
  %25 = load float, float* %distance15, align 4, !dbg !1742, !tbaa !767
  %conv16 = fpext float %25 to double, !dbg !1743
  %arrayidx18 = getelementptr inbounds [12 x i32], [12 x i32]* @hist_distances, i64 0, i64 %indvars.iv, !dbg !1744
  %26 = load i32, i32* %arrayidx18, align 4, !dbg !1744, !tbaa !703
  %27 = trunc i64 %indvars.iv to i32, !dbg !1745
  %call19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.54, i64 0, i64 0), i32 %27, i32 %24, double %conv16, i32 %26), !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1698, metadata !700), !dbg !1746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1698, metadata !700), !dbg !1746
  %28 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 0), align 16, !dbg !1747, !tbaa !728
  %arrayidx30 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %indvars.iv, i64 0, !dbg !1748
  %29 = load i32, i32* %arrayidx30, align 4, !dbg !1748, !tbaa !703
  %call31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %28, i32 %29), !dbg !1749
  %30 = load i32, i32* %arrayidx30, align 4, !dbg !1750, !tbaa !703
  %add = add i32 %22, %30, !dbg !1738
  %31 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 1), align 8, !dbg !1747, !tbaa !728
  %arrayidx30.1 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %indvars.iv, i64 1, !dbg !1748
  %32 = load i32, i32* %arrayidx30.1, align 4, !dbg !1748, !tbaa !703
  %call31.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %31, i32 %32), !dbg !1749
  %33 = load i32, i32* %arrayidx30.1, align 4, !dbg !1750, !tbaa !703
  %add.1 = add i32 %21, %33, !dbg !1738
  %34 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 2), align 16, !dbg !1747, !tbaa !728
  %arrayidx30.2 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %indvars.iv, i64 2, !dbg !1748
  %35 = load i32, i32* %arrayidx30.2, align 4, !dbg !1748, !tbaa !703
  %call31.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %34, i32 %35), !dbg !1749
  %36 = load i32, i32* %arrayidx30.2, align 4, !dbg !1750, !tbaa !703
  %add.2 = add i32 %20, %36, !dbg !1738
  %37 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 3), align 8, !dbg !1747, !tbaa !728
  %arrayidx30.3 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %indvars.iv, i64 3, !dbg !1748
  %38 = load i32, i32* %arrayidx30.3, align 4, !dbg !1748, !tbaa !703
  %call31.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %37, i32 %38), !dbg !1749
  %39 = load i32, i32* %arrayidx30.3, align 4, !dbg !1750, !tbaa !703
  %add.3 = add i32 %19, %39, !dbg !1738
  %40 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @hist_pct_err_label, i64 0, i64 4), align 16, !dbg !1747, !tbaa !728
  %arrayidx30.4 = getelementptr inbounds [12 x [5 x i32]], [12 x [5 x i32]]* @hist_pct_errs, i64 0, i64 %indvars.iv, i64 4, !dbg !1748
  %41 = load i32, i32* %arrayidx30.4, align 4, !dbg !1748, !tbaa !703
  %call31.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i8* %40, i32 %41), !dbg !1749
  %42 = load i32, i32* %arrayidx30.4, align 4, !dbg !1750, !tbaa !703
  %add.4 = add i32 %18, %42, !dbg !1738
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1751
  %43 = load i32, i32* @num_radar_dictionary_items, align 4, !dbg !1716, !tbaa !703
  %44 = trunc i64 %indvars.iv.next to i32, !dbg !1718
  %cmp7 = icmp ult i32 %44, %43, !dbg !1718
  br i1 %cmp7, label %for.body10, label %for.cond.cleanup9.loopexit, !dbg !1719, !llvm.loop !1753
}

; Function Attrs: nounwind uwtable
define void @closeout_vit_kernel() local_unnamed_addr #0 !dbg !1756 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @str.67, i64 0, i64 0)), !dbg !1764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1758, metadata !700), !dbg !1765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1759, metadata !700), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1758, metadata !700), !dbg !1765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1759, metadata !700), !dbg !1766
  br label %for.body, !dbg !1767

for.cond.cleanup:                                 ; preds = %for.inc
  %conv = uitofp i32 %sum.1 to double, !dbg !1769
  %0 = load i32, i32* @radar_total_calc, align 4, !dbg !1770, !tbaa !703
  %conv8 = uitofp i32 %0 to double, !dbg !1770
  %div = fdiv double %conv, %conv8, !dbg !1771
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !1761, metadata !700), !dbg !1772
  %call10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0), double %div), !dbg !1773
  %1 = load i32, i32* @total_msgs, align 4, !dbg !1774, !tbaa !703
  %conv11 = uitofp i32 %1 to double, !dbg !1774
  %2 = load i32, i32* @radar_total_calc, align 4, !dbg !1775, !tbaa !703
  %conv13 = uitofp i32 %2 to double, !dbg !1775
  %div15 = fdiv double %conv11, %conv13, !dbg !1776
  tail call void @llvm.dbg.value(metadata double %div15, i64 0, metadata !1763, metadata !700), !dbg !1777
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0), double %div15), !dbg !1778
  %3 = load i32, i32* @bad_decode_msgs, align 4, !dbg !1779, !tbaa !703
  %4 = load i32, i32* @total_msgs, align 4, !dbg !1780, !tbaa !703
  %call17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i64 0, i64 0), i32 %3, i32 %4), !dbg !1781
  ret void, !dbg !1782

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %sum.030 = phi i32 [ 0, %entry ], [ %sum.1, %for.inc ]
  %arrayidx = getelementptr inbounds [80 x i32], [80 x i32]* @hist_total_objs, i64 0, i64 %indvars.iv, !dbg !1783
  %5 = load i32, i32* %arrayidx, align 4, !dbg !1783, !tbaa !703
  %cmp1 = icmp eq i32 %5, 0, !dbg !1787
  br i1 %cmp1, label %for.inc, label %if.then, !dbg !1788

if.then:                                          ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32, !dbg !1789
  %call4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 %6, i32 %5), !dbg !1789
  %7 = load i32, i32* %arrayidx, align 4, !dbg !1791, !tbaa !703
  %mul = mul i32 %7, %6, !dbg !1792
  %add = add i32 %mul, %sum.030, !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !1758, metadata !700), !dbg !1765
  br label %for.inc, !dbg !1794

for.inc:                                          ; preds = %if.then, %for.body
  %sum.1 = phi i32 [ %add, %if.then ], [ %sum.030, %for.body ]
  tail call void @llvm.dbg.value(metadata i32 %sum.1, i64 0, metadata !1758, metadata !700), !dbg !1765
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %sum.1, i64 0, metadata !1758, metadata !700), !dbg !1765
  %exitcond = icmp eq i64 %indvars.iv.next, 80, !dbg !1797
  br i1 %exitcond, label %for.cond.cleanup, label %for.body, !dbg !1767, !llvm.loop !1799
}

; Function Attrs: nounwind uwtable
define void @print_usage(i8* %pname) local_unnamed_addr #0 !dbg !1802 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %pname, i64 0, metadata !1806, metadata !700), !dbg !1807
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* %pname), !dbg !1808
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str.40, i64 0, i64 0)), !dbg !1809
  %puts17 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.50, i64 0, i64 0)), !dbg !1810
  %puts18 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @str.51, i64 0, i64 0)), !dbg !1811
  %puts19 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.52, i64 0, i64 0)), !dbg !1812
  %puts20 = tail call i32 @puts(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @str.53, i64 0, i64 0)), !dbg !1813
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @str.54, i64 0, i64 0)), !dbg !1814
  %puts22 = tail call i32 @puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @str.55, i64 0, i64 0)), !dbg !1815
  %puts23 = tail call i32 @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @str.56, i64 0, i64 0)), !dbg !1816
  %puts24 = tail call i32 @puts(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @str.57, i64 0, i64 0)), !dbg !1817
  %puts25 = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str.58, i64 0, i64 0)), !dbg !1818
  %puts26 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.59, i64 0, i64 0)), !dbg !1819
  %puts27 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.60, i64 0, i64 0)), !dbg !1820
  %puts28 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.61, i64 0, i64 0)), !dbg !1821
  %puts29 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.62, i64 0, i64 0)), !dbg !1822
  %puts30 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.63.41, i64 0, i64 0)), !dbg !1823
  %puts31 = tail call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @str.64.42, i64 0, i64 0)), !dbg !1824
  ret void, !dbg !1825
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr #0 !dbg !1826 {
entry:
  tail call void @llvm.dbg.declare(metadata i64* undef, metadata !1832, metadata !1264), !dbg !1937
  %cv_py_file = alloca [25 x i8], align 16
  %stop = alloca %struct.timeval, align 8
  %start = alloca %struct.timeval, align 8
  %stop_iter_rad = alloca %struct.timeval, align 8
  %start_iter_rad = alloca %struct.timeval, align 8
  %stop_iter_vit = alloca %struct.timeval, align 8
  %start_iter_vit = alloca %struct.timeval, align 8
  %stop_iter_cv = alloca %struct.timeval, align 8
  %start_iter_cv = alloca %struct.timeval, align 8
  %stop_exec_rad = alloca %struct.timeval, align 8
  %start_exec_rad = alloca %struct.timeval, align 8
  %stop_exec_vit = alloca %struct.timeval, align 8
  %start_exec_vit = alloca %struct.timeval, align 8
  %stop_exec_cv = alloca %struct.timeval, align 8
  %start_exec_cv = alloca %struct.timeval, align 8
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !1830, metadata !700), !dbg !1938
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !1831, metadata !700), !dbg !1939
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !1832, metadata !700), !dbg !1937
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0), align 16, !dbg !1940, !tbaa !969
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0), align 16, !dbg !1941, !tbaa !969
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0), align 16, !dbg !1942, !tbaa !969
  br label %while.cond, !dbg !1943

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %trace_file.0 = phi i8* [ undef, %entry ], [ %trace_file.0.be, %while.cond.backedge ]
  tail call void @llvm.dbg.value(metadata i8* %trace_file.0, i64 0, metadata !1842, metadata !700), !dbg !1944
  %call = tail call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17.43, i64 0, i64 0)) #6, !dbg !1945
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1843, metadata !700), !dbg !1947
  switch i32 %call, label %while.cond.backedge [
    i32 -1, label %for.cond.preheader
    i32 104, label %sw.bb
    i32 65, label %sw.bb1
    i32 111, label %sw.bb2
    i32 82, label %sw.bb3
    i32 67, label %sw.bb5
    i32 86, label %sw.bb7
    i32 63, label %sw.bb22
    i32 102, label %sw.bb9
    i32 58, label %sw.bb20
    i32 116, label %sw.bb15
    i32 118, label %sw.bb17
  ], !dbg !1948

for.cond.preheader:                               ; preds = %while.cond
  %0 = load i32, i32* @optind, align 4, !dbg !1949, !tbaa !703
  %cmp24391 = icmp slt i32 %0, %argc, !dbg !1953
  br i1 %cmp24391, label %for.body.preheader, label %for.end, !dbg !1954

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1956

sw.bb:                                            ; preds = %while.cond
  %1 = load i8*, i8** %argv, align 8, !dbg !1958, !tbaa !728
  tail call void @print_usage(i8* %1), !dbg !1961
  tail call void @exit(i32 0) #13, !dbg !1962
  unreachable, !dbg !1962

sw.bb1:                                           ; preds = %while.cond
  store i32 1, i32* @all_obstacle_lanes_mode, align 4, !dbg !1963, !tbaa !969
  br label %while.cond.backedge, !dbg !1964

sw.bb2:                                           ; preds = %while.cond
  store i32 1, i32* @output_viz_trace, align 4, !dbg !1965, !tbaa !969
  br label %while.cond.backedge, !dbg !1966

sw.bb3:                                           ; preds = %while.cond
  %2 = load i8*, i8** @optarg, align 8, !dbg !1967, !tbaa !728
  %call4 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0), i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.44, i64 0, i64 0), i8* %2) #6, !dbg !1968
  br label %while.cond.backedge, !dbg !1969

sw.bb5:                                           ; preds = %while.cond
  %3 = load i8*, i8** @optarg, align 8, !dbg !1970, !tbaa !728
  %call6 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0), i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.44, i64 0, i64 0), i8* %3) #6, !dbg !1971
  br label %while.cond.backedge, !dbg !1972

sw.bb7:                                           ; preds = %while.cond
  %4 = load i8*, i8** @optarg, align 8, !dbg !1973, !tbaa !728
  %call8 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0), i64 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.44, i64 0, i64 0), i8* %4) #6, !dbg !1974
  br label %while.cond.backedge, !dbg !1975

sw.bb9:                                           ; preds = %while.cond
  %5 = load i8*, i8** @optarg, align 8, !dbg !1976, !tbaa !728
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1977, metadata !700) #6, !dbg !1980
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %5, i8** null, i32 10) #6, !dbg !1982
  %conv.i = trunc i64 %call.i to i32, !dbg !1983
  store i32 %conv.i, i32* @fft_logn_samples, align 4, !dbg !1984, !tbaa !703
  %6 = or i32 %conv.i, 4, !dbg !1985
  %7 = icmp eq i32 %6, 14, !dbg !1985
  br i1 %7, label %if.then, label %if.else, !dbg !1985

if.then:                                          ; preds = %sw.bb9
  %shl = shl i32 1, %conv.i, !dbg !1987
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19.45, i64 0, i64 0), i32 %conv.i, i32 %shl), !dbg !1989
  br label %while.cond.backedge, !dbg !1990

if.else:                                          ; preds = %sw.bb9
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20.46, i64 0, i64 0), i32 %conv.i), !dbg !1991
  tail call void @exit(i32 -1) #13, !dbg !1993
  unreachable, !dbg !1993

sw.bb15:                                          ; preds = %while.cond
  %8 = load i8*, i8** @optarg, align 8, !dbg !1994, !tbaa !728
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1842, metadata !700), !dbg !1944
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21.47, i64 0, i64 0), i8* %8), !dbg !1995
  br label %while.cond.backedge, !dbg !1996

sw.bb17:                                          ; preds = %while.cond
  %9 = load i8*, i8** @optarg, align 8, !dbg !1997, !tbaa !728
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !1977, metadata !700) #6, !dbg !1998
  %call.i342 = tail call i64 @strtol(i8* nocapture nonnull %9, i8** null, i32 10) #6, !dbg !2000
  %conv.i343 = trunc i64 %call.i342 to i32, !dbg !2001
  store i32 %conv.i343, i32* @vit_msgs_behavior, align 4, !dbg !2002, !tbaa !703
  %call19 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22.48, i64 0, i64 0), i32 %conv.i343), !dbg !2003
  br label %while.cond.backedge, !dbg !2004

sw.bb20:                                          ; preds = %while.cond
  %puts341 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.76, i64 0, i64 0)), !dbg !2005
  br label %while.cond.backedge, !dbg !2006

sw.bb22:                                          ; preds = %while.cond
  %10 = load i32, i32* @optopt, align 4, !dbg !2007, !tbaa !703
  %call23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24.49, i64 0, i64 0), i32 %10), !dbg !2008
  br label %while.cond.backedge, !dbg !2009

while.cond.backedge:                              ; preds = %sw.bb22, %sw.bb20, %sw.bb17, %sw.bb15, %if.then, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %while.cond
  %trace_file.0.be = phi i8* [ %trace_file.0, %sw.bb17 ], [ %8, %sw.bb15 ], [ %trace_file.0, %sw.bb20 ], [ %trace_file.0, %if.then ], [ %trace_file.0, %sw.bb22 ], [ %trace_file.0, %sw.bb7 ], [ %trace_file.0, %sw.bb5 ], [ %trace_file.0, %sw.bb3 ], [ %trace_file.0, %sw.bb2 ], [ %trace_file.0, %sw.bb1 ], [ %trace_file.0, %while.cond ]
  br label %while.cond, !dbg !1944, !llvm.loop !2010

for.body:                                         ; preds = %for.body, %for.body.preheader
  %11 = phi i32 [ %inc, %for.body ], [ %0, %for.body.preheader ]
  %idxprom = sext i32 %11 to i64, !dbg !1956
  %arrayidx25 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !1956
  %12 = load i8*, i8** %arrayidx25, align 8, !dbg !1956, !tbaa !728
  %call26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25.50, i64 0, i64 0), i8* %12), !dbg !2012
  %13 = load i32, i32* @optind, align 4, !dbg !2013, !tbaa !703
  %inc = add nsw i32 %13, 1, !dbg !2013
  store i32 %inc, i32* @optind, align 4, !dbg !2013, !tbaa !703
  %cmp24 = icmp slt i32 %inc, %argc, !dbg !1953
  br i1 %cmp24, label %for.body, label %for.end.loopexit, !dbg !1954, !llvm.loop !2015

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !2018

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %14 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0), align 16, !dbg !2018, !tbaa !969
  %cmp27 = icmp eq i8 %14, 0, !dbg !2020
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !2021

if.then29:                                        ; preds = %for.end
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26.51, i64 0, i64 0), i64 28, i32 1, i1 false), !dbg !2022
  br label %if.end31, !dbg !2024

if.end31:                                         ; preds = %if.then29, %for.end
  %15 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0), align 16, !dbg !2025, !tbaa !969
  %cmp33 = icmp eq i8 %15, 0, !dbg !2027
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !2028

if.then35:                                        ; preds = %if.end31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27.52, i64 0, i64 0), i64 26, i32 1, i1 false), !dbg !2029
  br label %if.end37, !dbg !2031

if.end37:                                         ; preds = %if.then35, %if.end31
  %16 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0), align 16, !dbg !2032, !tbaa !969
  %cmp39 = icmp eq i8 %16, 0, !dbg !2034
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !2035

if.then41:                                        ; preds = %if.end37
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28.53, i64 0, i64 0), i64 30, i32 1, i1 false), !dbg !2036
  br label %if.end43, !dbg !2038

if.end43:                                         ; preds = %if.then41, %if.end37
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str.65.54, i64 0, i64 0)), !dbg !2039
  %call45 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30.55, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0)), !dbg !2040
  %call46 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31.56, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0)), !dbg !2041
  %call47 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32.57, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0)), !dbg !2042
  %17 = getelementptr inbounds [25 x i8], [25 x i8]* %cv_py_file, i64 0, i64 0, !dbg !2043
  call void @llvm.lifetime.start(i64 25, i8* nonnull %17) #6, !dbg !2043
  tail call void @llvm.dbg.declare(metadata [25 x i8]* %cv_py_file, metadata !1844, metadata !700), !dbg !2044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @main.cv_py_file, i64 0, i64 0), i64 25, i32 16, i1 false), !dbg !2044
  %puts331 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.66.58, i64 0, i64 0)), !dbg !2045
  %call49 = tail call i32 @init_trace_reader(i8* %trace_file.0) #6, !dbg !2046
  %tobool = icmp eq i32 %call49, 0, !dbg !2046
  br i1 %tobool, label %if.then50, label %if.end52, !dbg !2048

if.then50:                                        ; preds = %if.end43
  %puts332 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.67.59, i64 0, i64 0)), !dbg !2049
  br label %cleanup, !dbg !2051

if.end52:                                         ; preds = %if.end43
  %puts333 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.68, i64 0, i64 0)), !dbg !2052
  %call54 = call i32 @init_cv_kernel(i8* nonnull %17, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @cv_dict, i64 0, i64 0)) #6, !dbg !2053
  %tobool55 = icmp eq i32 %call54, 0, !dbg !2053
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !2055

if.then56:                                        ; preds = %if.end52
  %puts334 = call i32 @puts(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @str.69, i64 0, i64 0)), !dbg !2056
  br label %cleanup, !dbg !2058

if.end58:                                         ; preds = %if.end52
  %puts335 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.70, i64 0, i64 0)), !dbg !2059
  %call60 = call i32 @init_rad_kernel(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rad_dict, i64 0, i64 0)) #6, !dbg !2060
  %tobool61 = icmp eq i32 %call60, 0, !dbg !2060
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !2062

if.then62:                                        ; preds = %if.end58
  %puts336 = call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @str.71, i64 0, i64 0)), !dbg !2063
  br label %cleanup, !dbg !2065

if.end64:                                         ; preds = %if.end58
  %puts337 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @str.72, i64 0, i64 0)), !dbg !2066
  %call66 = call i32 @init_vit_kernel(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @vit_dict, i64 0, i64 0)) #6, !dbg !2067
  %tobool67 = icmp eq i32 %call66, 0, !dbg !2067
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !2069

if.then68:                                        ; preds = %if.end64
  %puts338 = call i32 @puts(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @str.73, i64 0, i64 0)), !dbg !2070
  br label %cleanup, !dbg !2072

if.end70:                                         ; preds = %if.end64
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1832, metadata !1570), !dbg !1937
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1832, metadata !1571), !dbg !1937
  call void @llvm.dbg.value(metadata float 5.000000e+01, i64 0, metadata !1832, metadata !1266), !dbg !1937
  store i32 0, i32* @time_step, align 4, !dbg !2073, !tbaa !703
  %18 = bitcast %struct.timeval* %stop to i8*, !dbg !2074
  call void @llvm.lifetime.start(i64 16, i8* nonnull %18) #6, !dbg !2074
  %19 = bitcast %struct.timeval* %start to i8*, !dbg !2074
  call void @llvm.lifetime.start(i64 16, i8* nonnull %19) #6, !dbg !2074
  %20 = bitcast %struct.timeval* %stop_iter_rad to i8*, !dbg !2075
  call void @llvm.lifetime.start(i64 16, i8* nonnull %20) #6, !dbg !2075
  %21 = bitcast %struct.timeval* %start_iter_rad to i8*, !dbg !2075
  call void @llvm.lifetime.start(i64 16, i8* nonnull %21) #6, !dbg !2075
  %22 = bitcast %struct.timeval* %stop_iter_vit to i8*, !dbg !2076
  call void @llvm.lifetime.start(i64 16, i8* nonnull %22) #6, !dbg !2076
  %23 = bitcast %struct.timeval* %start_iter_vit to i8*, !dbg !2076
  call void @llvm.lifetime.start(i64 16, i8* nonnull %23) #6, !dbg !2076
  %24 = bitcast %struct.timeval* %stop_iter_cv to i8*, !dbg !2077
  call void @llvm.lifetime.start(i64 16, i8* nonnull %24) #6, !dbg !2077
  %25 = bitcast %struct.timeval* %start_iter_cv to i8*, !dbg !2077
  call void @llvm.lifetime.start(i64 16, i8* nonnull %25) #6, !dbg !2077
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1863, metadata !700), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1864, metadata !700), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1865, metadata !700), !dbg !2080
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1866, metadata !700), !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1867, metadata !700), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1868, metadata !700), !dbg !2083
  %26 = bitcast %struct.timeval* %stop_exec_rad to i8*, !dbg !2084
  call void @llvm.lifetime.start(i64 16, i8* nonnull %26) #6, !dbg !2084
  %27 = bitcast %struct.timeval* %start_exec_rad to i8*, !dbg !2084
  call void @llvm.lifetime.start(i64 16, i8* nonnull %27) #6, !dbg !2084
  %28 = bitcast %struct.timeval* %stop_exec_vit to i8*, !dbg !2085
  call void @llvm.lifetime.start(i64 16, i8* nonnull %28) #6, !dbg !2085
  %29 = bitcast %struct.timeval* %start_exec_vit to i8*, !dbg !2085
  call void @llvm.lifetime.start(i64 16, i8* nonnull %29) #6, !dbg !2085
  %30 = bitcast %struct.timeval* %stop_exec_cv to i8*, !dbg !2086
  call void @llvm.lifetime.start(i64 16, i8* nonnull %30) #6, !dbg !2086
  %31 = bitcast %struct.timeval* %start_exec_cv to i8*, !dbg !2086
  call void @llvm.lifetime.start(i64 16, i8* nonnull %31) #6, !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1875, metadata !700), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1876, metadata !700), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1877, metadata !700), !dbg !2089
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !700), !dbg !2090
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1879, metadata !700), !dbg !2091
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1880, metadata !700), !dbg !2092
  %puts339 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @str.74, i64 0, i64 0)), !dbg !2093
  %call72 = call i32 @read_next_trace_record(i64 8589934593, float 5.000000e+01) #6, !dbg !2094
  call void @llvm.dbg.value(metadata float 5.000000e+01, i64 0, metadata !1832, metadata !1266), !dbg !1937
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1863, metadata !700), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1864, metadata !700), !dbg !2079
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1865, metadata !700), !dbg !2080
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1866, metadata !700), !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1867, metadata !700), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1868, metadata !700), !dbg !2083
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1875, metadata !700), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1876, metadata !700), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1877, metadata !700), !dbg !2089
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1878, metadata !700), !dbg !2090
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1879, metadata !700), !dbg !2091
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1880, metadata !700), !dbg !2092
  %call74363 = call i32 @eof_trace_reader() #6, !dbg !2095
  %lnot364 = icmp eq i32 %call74363, 0, !dbg !2096
  br i1 %lnot364, label %while.body76.lr.ph, label %while.end181, !dbg !2097

while.body76.lr.ph:                               ; preds = %if.end70
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_cv, i64 0, i32 0
  %tv_sec81 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_cv, i64 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_cv, i64 0, i32 1
  %tv_usec82 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_cv, i64 0, i32 1
  %tv_sec89 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_rad, i64 0, i32 0
  %tv_sec90 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_rad, i64 0, i32 0
  %tv_usec93 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_rad, i64 0, i32 1
  %tv_usec94 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_rad, i64 0, i32 1
  %tv_sec115 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_vit, i64 0, i32 0
  %tv_sec116 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_vit, i64 0, i32 0
  %tv_usec119 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_iter_vit, i64 0, i32 1
  %tv_usec120 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_iter_vit, i64 0, i32 1
  %tv_sec133 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_cv, i64 0, i32 0
  %tv_sec134 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_cv, i64 0, i32 0
  %tv_usec137 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_cv, i64 0, i32 1
  %tv_usec138 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_cv, i64 0, i32 1
  %tv_sec144 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_rad, i64 0, i32 0
  %tv_sec145 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_rad, i64 0, i32 0
  %tv_usec148 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_rad, i64 0, i32 1
  %tv_usec149 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_rad, i64 0, i32 1
  %tv_sec155 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_vit, i64 0, i32 0
  %tv_sec156 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_vit, i64 0, i32 0
  %tv_usec159 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop_exec_vit, i64 0, i32 1
  %tv_usec160 = getelementptr inbounds %struct.timeval, %struct.timeval* %start_exec_vit, i64 0, i32 1
  br label %while.body76, !dbg !2097

while.body76:                                     ; preds = %if.end178, %while.body76.lr.ph
  %vehicle_state.sroa.0.sroa.10.0379 = phi i64 [ 8589934592, %while.body76.lr.ph ], [ %vehicle_state.sroa.0.sroa.10.0.extract.shift, %if.end178 ]
  %vehicle_state.sroa.0.sroa.0.0378 = phi i64 [ 1, %while.body76.lr.ph ], [ %call172.fca.0.extract, %if.end178 ]
  %vehicle_state.sroa.11.0377 = phi float [ 5.000000e+01, %while.body76.lr.ph ], [ %call172.fca.1.extract, %if.end178 ]
  %iter_rad_sec.0376 = phi i64 [ 0, %while.body76.lr.ph ], [ %add92, %if.end178 ]
  %iter_vit_sec.0375 = phi i64 [ 0, %while.body76.lr.ph ], [ %add118, %if.end178 ]
  %iter_cv_sec.0374 = phi i64 [ 0, %while.body76.lr.ph ], [ %add, %if.end178 ]
  %iter_rad_usec.0373 = phi i64 [ 0, %while.body76.lr.ph ], [ %add96, %if.end178 ]
  %iter_vit_usec.0372 = phi i64 [ 0, %while.body76.lr.ph ], [ %add122, %if.end178 ]
  %iter_cv_usec.0371 = phi i64 [ 0, %while.body76.lr.ph ], [ %add84, %if.end178 ]
  %exec_rad_sec.0370 = phi i64 [ 0, %while.body76.lr.ph ], [ %add147, %if.end178 ]
  %exec_vit_sec.0369 = phi i64 [ 0, %while.body76.lr.ph ], [ %add158, %if.end178 ]
  %exec_cv_sec.0368 = phi i64 [ 0, %while.body76.lr.ph ], [ %add136, %if.end178 ]
  %exec_rad_usec.0367 = phi i64 [ 0, %while.body76.lr.ph ], [ %add151, %if.end178 ]
  %exec_vit_usec.0366 = phi i64 [ 0, %while.body76.lr.ph ], [ %add162, %if.end178 ]
  %exec_cv_usec.0365 = phi i64 [ 0, %while.body76.lr.ph ], [ %add140, %if.end178 ]
  call void @llvm.dbg.value(metadata %struct.timeval* %start_iter_cv, i64 0, metadata !1862, metadata !748), !dbg !2098
  %call77 = call i32 @gettimeofday(%struct.timeval* nonnull %start_iter_cv, %struct.timezone* null) #6, !dbg !2099
  %vehicle_state.sroa.0.sroa.0.0.insert.ext291 = and i64 %vehicle_state.sroa.0.sroa.0.0378, 4294967295, !dbg !2100
  %vehicle_state.sroa.0.sroa.0.0.insert.insert293 = or i64 %vehicle_state.sroa.0.sroa.10.0379, %vehicle_state.sroa.0.sroa.0.0.insert.ext291, !dbg !2100
  %call79 = call i32 @iterate_cv_kernel(i64 %vehicle_state.sroa.0.sroa.0.0.insert.insert293, float %vehicle_state.sroa.11.0377) #6, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %call79, i64 0, metadata !1881, metadata !700), !dbg !2101
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_iter_cv, i64 0, metadata !1861, metadata !748), !dbg !2102
  %call80 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_iter_cv, %struct.timezone* null) #6, !dbg !2103
  %32 = load i64, i64* %tv_sec, align 8, !dbg !2104, !tbaa !2105
  %33 = load i64, i64* %tv_sec81, align 8, !dbg !2107, !tbaa !2105
  %sub = add i64 %32, %iter_cv_sec.0374, !dbg !2108
  %add = sub i64 %sub, %33, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !1865, metadata !700), !dbg !2080
  %34 = load i64, i64* %tv_usec, align 8, !dbg !2110, !tbaa !2111
  %35 = load i64, i64* %tv_usec82, align 8, !dbg !2112, !tbaa !2111
  %sub83 = add i64 %34, %iter_cv_usec.0371, !dbg !2113
  %add84 = sub i64 %sub83, %35, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %add84, i64 0, metadata !1868, metadata !700), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.timeval* %start_iter_rad, i64 0, metadata !1858, metadata !748), !dbg !2115
  %call85 = call i32 @gettimeofday(%struct.timeval* nonnull %start_iter_rad, %struct.timezone* null) #6, !dbg !2116
  %call87 = call %struct.radar_dict_entry_t* @iterate_rad_kernel(i64 %vehicle_state.sroa.0.sroa.0.0.insert.insert293, float %vehicle_state.sroa.11.0377) #6, !dbg !2117
  call void @llvm.dbg.value(metadata %struct.radar_dict_entry_t* %call87, i64 0, metadata !1883, metadata !700), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_iter_rad, i64 0, metadata !1857, metadata !748), !dbg !2119
  %call88 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_iter_rad, %struct.timezone* null) #6, !dbg !2120
  %36 = load i64, i64* %tv_sec89, align 8, !dbg !2121, !tbaa !2105
  %37 = load i64, i64* %tv_sec90, align 8, !dbg !2122, !tbaa !2105
  %sub91 = add i64 %36, %iter_rad_sec.0376, !dbg !2123
  %add92 = sub i64 %sub91, %37, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %add92, i64 0, metadata !1863, metadata !700), !dbg !2078
  %38 = load i64, i64* %tv_usec93, align 8, !dbg !2125, !tbaa !2111
  %39 = load i64, i64* %tv_usec94, align 8, !dbg !2126, !tbaa !2111
  %sub95 = add i64 %38, %iter_rad_usec.0373, !dbg !2127
  %add96 = sub i64 %sub95, %39, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %add96, i64 0, metadata !1866, metadata !700), !dbg !2081
  %distance97 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 2, !dbg !2129
  %40 = load float, float* %distance97, align 4, !dbg !2129, !tbaa !767
  call void @llvm.dbg.value(metadata float %40, i64 0, metadata !1892, metadata !700), !dbg !2130
  %41 = load i32, i32* @RADAR_N, align 4, !dbg !2131, !tbaa !703
  %mul = shl i32 %41, 1, !dbg !2132
  %42 = zext i32 %mul to i64, !dbg !2133
  %43 = call i8* @llvm.stacksave(), !dbg !2133
  %vla = alloca float, i64 %42, align 16, !dbg !2133
  call void @llvm.dbg.declare(metadata float* %vla, metadata !1894, metadata !748), !dbg !2134
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1898, metadata !700), !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1898, metadata !700), !dbg !2135
  %44 = load i32, i32* @RADAR_N, align 4, !dbg !2136, !tbaa !703
  %mul100358.mask = and i32 %44, 2147483647, !dbg !2139
  %cmp101359 = icmp eq i32 %mul100358.mask, 0, !dbg !2139
  br i1 %cmp101359, label %for.cond.cleanup, label %for.body103.lr.ph, !dbg !2140

for.body103.lr.ph:                                ; preds = %while.body76
  %mul100 = shl i32 %44, 1
  %45 = zext i32 %mul100 to i64, !dbg !2140
  %46 = icmp ugt i64 %45, 1, !dbg !2140
  %umax = select i1 %46, i64 %45, i64 1, !dbg !2140
  %min.iters.check = icmp ult i64 %umax, 8, !dbg !2140
  br i1 %min.iters.check, label %for.body103.preheader, label %min.iters.checked, !dbg !2140

for.body103.preheader:                            ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %for.body103.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %for.body103.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body103, !dbg !2142

min.iters.checked:                                ; preds = %for.body103.lr.ph
  %n.vec = and i64 %umax, 4294967288, !dbg !2140
  %cmp.zero = icmp eq i64 %n.vec, 0, !dbg !2140
  br i1 %cmp.zero, label %for.body103.preheader, label %vector.memcheck, !dbg !2140

vector.memcheck:                                  ; preds = %min.iters.checked
  %47 = icmp ugt i64 %45, 1, !dbg !2140
  %umax408 = select i1 %47, i64 %45, i64 1, !dbg !2140
  %scevgep = getelementptr float, float* %vla, i64 %umax408, !dbg !2140
  %scevgep410 = getelementptr %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 0, !dbg !2140
  %scevgep413 = getelementptr %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %umax408, !dbg !2140
  %bound0 = icmp ult float* %vla, %scevgep413, !dbg !2140
  %bound1 = icmp ult float* %scevgep410, %scevgep, !dbg !2140
  %memcheck.conflict = and i1 %bound0, %bound1, !dbg !2140
  br i1 %memcheck.conflict, label %for.body103.preheader, label %vector.body.preheader, !dbg !2140

vector.body.preheader:                            ; preds = %vector.memcheck
  %48 = add nsw i64 %n.vec, -8, !dbg !2142
  %49 = lshr exact i64 %48, 3, !dbg !2142
  %50 = add nuw nsw i64 %49, 1, !dbg !2142
  %xtraiter = and i64 %50, 3, !dbg !2142
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2142
  br i1 %lcmp.mod, label %vector.body.prol.loopexit, label %vector.body.prol.preheader, !dbg !2142

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol, !dbg !2142

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index415.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ], !dbg !2144
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body.prol ], [ %xtraiter, %vector.body.prol.preheader ]
  %51 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %index415.prol, !dbg !2142
  %52 = bitcast float* %51 to <4 x i32>*, !dbg !2142
  %wide.load.prol = load <4 x i32>, <4 x i32>* %52, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %53 = getelementptr float, float* %51, i64 4, !dbg !2142
  %54 = bitcast float* %53 to <4 x i32>*, !dbg !2142
  %wide.load417.prol = load <4 x i32>, <4 x i32>* %54, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %55 = getelementptr inbounds float, float* %vla, i64 %index415.prol, !dbg !2149
  %56 = bitcast float* %55 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load.prol, <4 x i32>* %56, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %57 = getelementptr float, float* %55, i64 4, !dbg !2150
  %58 = bitcast float* %57 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load417.prol, <4 x i32>* %58, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %index.next.prol = add i64 %index415.prol, 8, !dbg !2144
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !2144
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !2144
  br i1 %prol.iter.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !dbg !2144, !llvm.loop !2153

vector.body.prol.loopexit.unr-lcssa:              ; preds = %vector.body.prol
  br label %vector.body.prol.loopexit, !dbg !2142

vector.body.prol.loopexit:                        ; preds = %vector.body.prol.loopexit.unr-lcssa, %vector.body.preheader
  %index415.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol, %vector.body.prol.loopexit.unr-lcssa ]
  %59 = icmp ult i64 %48, 24, !dbg !2142
  br i1 %59, label %middle.block, label %vector.body.preheader.new, !dbg !2142

vector.body.preheader.new:                        ; preds = %vector.body.prol.loopexit
  br label %vector.body, !dbg !2142

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.new
  %index415 = phi i64 [ %index415.unr, %vector.body.preheader.new ], [ %index.next.3, %vector.body ], !dbg !2144
  %60 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %index415, !dbg !2142
  %61 = bitcast float* %60 to <4 x i32>*, !dbg !2142
  %wide.load = load <4 x i32>, <4 x i32>* %61, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %62 = getelementptr float, float* %60, i64 4, !dbg !2142
  %63 = bitcast float* %62 to <4 x i32>*, !dbg !2142
  %wide.load417 = load <4 x i32>, <4 x i32>* %63, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %64 = getelementptr inbounds float, float* %vla, i64 %index415, !dbg !2149
  %65 = bitcast float* %64 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load, <4 x i32>* %65, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %66 = getelementptr float, float* %64, i64 4, !dbg !2150
  %67 = bitcast float* %66 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load417, <4 x i32>* %67, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %index.next = add i64 %index415, 8, !dbg !2144
  %68 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %index.next, !dbg !2142
  %69 = bitcast float* %68 to <4 x i32>*, !dbg !2142
  %wide.load.1 = load <4 x i32>, <4 x i32>* %69, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %70 = getelementptr float, float* %68, i64 4, !dbg !2142
  %71 = bitcast float* %70 to <4 x i32>*, !dbg !2142
  %wide.load417.1 = load <4 x i32>, <4 x i32>* %71, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %72 = getelementptr inbounds float, float* %vla, i64 %index.next, !dbg !2149
  %73 = bitcast float* %72 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load.1, <4 x i32>* %73, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %74 = getelementptr float, float* %72, i64 4, !dbg !2150
  %75 = bitcast float* %74 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load417.1, <4 x i32>* %75, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %index.next.1 = add i64 %index415, 16, !dbg !2144
  %76 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %index.next.1, !dbg !2142
  %77 = bitcast float* %76 to <4 x i32>*, !dbg !2142
  %wide.load.2 = load <4 x i32>, <4 x i32>* %77, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %78 = getelementptr float, float* %76, i64 4, !dbg !2142
  %79 = bitcast float* %78 to <4 x i32>*, !dbg !2142
  %wide.load417.2 = load <4 x i32>, <4 x i32>* %79, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %80 = getelementptr inbounds float, float* %vla, i64 %index.next.1, !dbg !2149
  %81 = bitcast float* %80 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load.2, <4 x i32>* %81, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %82 = getelementptr float, float* %80, i64 4, !dbg !2150
  %83 = bitcast float* %82 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load417.2, <4 x i32>* %83, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %index.next.2 = add i64 %index415, 24, !dbg !2144
  %84 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %index.next.2, !dbg !2142
  %85 = bitcast float* %84 to <4 x i32>*, !dbg !2142
  %wide.load.3 = load <4 x i32>, <4 x i32>* %85, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %86 = getelementptr float, float* %84, i64 4, !dbg !2142
  %87 = bitcast float* %86 to <4 x i32>*, !dbg !2142
  %wide.load417.3 = load <4 x i32>, <4 x i32>* %87, align 4, !dbg !2142, !tbaa !764, !alias.scope !2146
  %88 = getelementptr inbounds float, float* %vla, i64 %index.next.2, !dbg !2149
  %89 = bitcast float* %88 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load.3, <4 x i32>* %89, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %90 = getelementptr float, float* %88, i64 4, !dbg !2150
  %91 = bitcast float* %90 to <4 x i32>*, !dbg !2150
  store <4 x i32> %wide.load417.3, <4 x i32>* %91, align 16, !dbg !2150, !tbaa !764, !alias.scope !2151, !noalias !2146
  %index.next.3 = add i64 %index415, 32, !dbg !2144
  %92 = icmp eq i64 %index.next.3, %n.vec, !dbg !2144
  br i1 %92, label %middle.block.unr-lcssa, label %vector.body, !dbg !2144, !llvm.loop !2155

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.prol.loopexit
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body103.preheader, !dbg !2140

for.cond.cleanup.loopexit:                        ; preds = %for.body103
  br label %for.cond.cleanup, !dbg !2160

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %middle.block, %while.body76
  call void @llvm.dbg.value(metadata %struct.timeval* %start_iter_vit, i64 0, metadata !1860, metadata !748), !dbg !2160
  %call111 = call i32 @gettimeofday(%struct.timeval* nonnull %start_iter_vit, %struct.timezone* null) #6, !dbg !2161
  %call113 = call %struct.vit_dict_entry_t* @iterate_vit_kernel(i64 %vehicle_state.sroa.0.sroa.0.0.insert.insert293, float %vehicle_state.sroa.11.0377) #6, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.vit_dict_entry_t* %call113, i64 0, metadata !1900, metadata !700), !dbg !2163
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_iter_vit, i64 0, metadata !1859, metadata !748), !dbg !2164
  %call114 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_iter_vit, %struct.timezone* null) #6, !dbg !2165
  %93 = load i64, i64* %tv_sec115, align 8, !dbg !2166, !tbaa !2105
  %94 = load i64, i64* %tv_sec116, align 8, !dbg !2167, !tbaa !2105
  %sub117 = add i64 %93, %iter_vit_sec.0375, !dbg !2168
  %add118 = sub i64 %sub117, %94, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %add118, i64 0, metadata !1864, metadata !700), !dbg !2079
  %95 = load i64, i64* %tv_usec119, align 8, !dbg !2170, !tbaa !2111
  %96 = load i64, i64* %tv_usec120, align 8, !dbg !2171, !tbaa !2111
  %sub121 = add i64 %95, %iter_vit_usec.0372, !dbg !2172
  %add122 = sub i64 %sub121, %96, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %add122, i64 0, metadata !1867, metadata !700), !dbg !2082
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1926, metadata !700), !dbg !2174
  %97 = load i32, i32* @vit_msgs_behavior, align 4, !dbg !2175, !tbaa !703
  switch i32 %97, label %sw.epilog129 [
    i32 2, label %sw.bb123
    i32 3, label %sw.bb124
    i32 4, label %sw.bb125
    i32 5, label %sw.bb127
  ], !dbg !2176

for.body103:                                      ; preds = %for.body103, %for.body103.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body103 ], [ %indvars.iv.ph, %for.body103.preheader ]
  %arrayidx105 = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 3, i64 %indvars.iv, !dbg !2142
  %98 = bitcast float* %arrayidx105 to i32*, !dbg !2142
  %99 = load i32, i32* %98, align 4, !dbg !2142, !tbaa !764
  %arrayidx107 = getelementptr inbounds float, float* %vla, i64 %indvars.iv, !dbg !2149
  %100 = bitcast float* %arrayidx107 to i32*, !dbg !2150
  store i32 %99, i32* %100, align 4, !dbg !2150, !tbaa !764
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2144
  %cmp101 = icmp ult i64 %indvars.iv.next, %45, !dbg !2139
  br i1 %cmp101, label %for.body103, label %for.cond.cleanup.loopexit, !dbg !2140, !llvm.loop !2177

sw.bb123:                                         ; preds = %for.cond.cleanup
  %101 = load i32, i32* @total_obj, align 4, !dbg !2178, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !1926, metadata !700), !dbg !2174
  br label %sw.epilog129, !dbg !2180

sw.bb124:                                         ; preds = %for.cond.cleanup
  %102 = load i32, i32* @total_obj, align 4, !dbg !2181, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !1926, metadata !700), !dbg !2174
  br label %sw.epilog129, !dbg !2182

sw.bb125:                                         ; preds = %for.cond.cleanup
  %103 = load i32, i32* @total_obj, align 4, !dbg !2183, !tbaa !703
  %add126 = add i32 %103, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %add126, i64 0, metadata !1926, metadata !700), !dbg !2174
  br label %sw.epilog129, !dbg !2185

sw.bb127:                                         ; preds = %for.cond.cleanup
  %104 = load i32, i32* @total_obj, align 4, !dbg !2186, !tbaa !703
  %add128 = add i32 %104, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %add128, i64 0, metadata !1926, metadata !700), !dbg !2174
  br label %sw.epilog129, !dbg !2188

sw.epilog129:                                     ; preds = %sw.bb127, %sw.bb125, %sw.bb124, %sw.bb123, %for.cond.cleanup
  %num_vit_msgs.0 = phi i32 [ 1, %for.cond.cleanup ], [ %add128, %sw.bb127 ], [ %add126, %sw.bb125 ], [ %102, %sw.bb124 ], [ %101, %sw.bb123 ]
  call void @llvm.dbg.value(metadata i32 %num_vit_msgs.0, i64 0, metadata !1926, metadata !700), !dbg !2174
  call void @llvm.dbg.value(metadata %struct.timeval* %start_exec_cv, i64 0, metadata !1874, metadata !748), !dbg !2189
  %call130 = call i32 @gettimeofday(%struct.timeval* nonnull %start_exec_cv, %struct.timezone* null) #6, !dbg !2190
  %call131 = call i32 @execute_cv_kernel(i32 %call79) #6, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %call131, i64 0, metadata !1839, metadata !700), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_exec_cv, i64 0, metadata !1873, metadata !748), !dbg !2193
  %call132 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_exec_cv, %struct.timezone* null) #6, !dbg !2194
  %105 = load i64, i64* %tv_sec133, align 8, !dbg !2195, !tbaa !2105
  %106 = load i64, i64* %tv_sec134, align 8, !dbg !2196, !tbaa !2105
  %sub135 = add i64 %105, %exec_cv_sec.0368, !dbg !2197
  %add136 = sub i64 %sub135, %106, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %add136, i64 0, metadata !1877, metadata !700), !dbg !2089
  %107 = load i64, i64* %tv_usec137, align 8, !dbg !2199, !tbaa !2111
  %108 = load i64, i64* %tv_usec138, align 8, !dbg !2200, !tbaa !2111
  %sub139 = add i64 %107, %exec_cv_usec.0365, !dbg !2201
  %add140 = sub i64 %sub139, %108, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %add140, i64 0, metadata !1880, metadata !700), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.timeval* %start_exec_rad, i64 0, metadata !1870, metadata !748), !dbg !2203
  %call141 = call i32 @gettimeofday(%struct.timeval* nonnull %start_exec_rad, %struct.timezone* null) #6, !dbg !2204
  %call142 = call float @execute_rad_kernel(float* nonnull %vla) #6, !dbg !2205
  call void @llvm.dbg.value(metadata float %call142, i64 0, metadata !1840, metadata !700), !dbg !2206
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_exec_rad, i64 0, metadata !1869, metadata !748), !dbg !2207
  %call143 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_exec_rad, %struct.timezone* null) #6, !dbg !2208
  %109 = load i64, i64* %tv_sec144, align 8, !dbg !2209, !tbaa !2105
  %110 = load i64, i64* %tv_sec145, align 8, !dbg !2210, !tbaa !2105
  %sub146 = add i64 %109, %exec_rad_sec.0370, !dbg !2211
  %add147 = sub i64 %sub146, %110, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %add147, i64 0, metadata !1875, metadata !700), !dbg !2087
  %111 = load i64, i64* %tv_usec148, align 8, !dbg !2213, !tbaa !2111
  %112 = load i64, i64* %tv_usec149, align 8, !dbg !2214, !tbaa !2111
  %sub150 = add i64 %111, %exec_rad_usec.0367, !dbg !2215
  %add151 = sub i64 %sub150, %112, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %add151, i64 0, metadata !1878, metadata !700), !dbg !2090
  call void @llvm.dbg.value(metadata %struct.timeval* %start_exec_vit, i64 0, metadata !1872, metadata !748), !dbg !2217
  %call152 = call i32 @gettimeofday(%struct.timeval* nonnull %start_exec_vit, %struct.timezone* null) #6, !dbg !2218
  %call153 = call i32 @execute_vit_kernel(%struct.vit_dict_entry_t* %call113, i32 %num_vit_msgs.0) #6, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %call153, i64 0, metadata !1841, metadata !700), !dbg !2220
  call void @llvm.dbg.value(metadata %struct.timeval* %stop_exec_vit, i64 0, metadata !1871, metadata !748), !dbg !2221
  %call154 = call i32 @gettimeofday(%struct.timeval* nonnull %stop_exec_vit, %struct.timezone* null) #6, !dbg !2222
  %113 = load i64, i64* %tv_sec155, align 8, !dbg !2223, !tbaa !2105
  %114 = load i64, i64* %tv_sec156, align 8, !dbg !2224, !tbaa !2105
  %sub157 = add i64 %113, %exec_vit_sec.0369, !dbg !2225
  %add158 = sub i64 %sub157, %114, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %add158, i64 0, metadata !1876, metadata !700), !dbg !2088
  %115 = load i64, i64* %tv_usec159, align 8, !dbg !2227, !tbaa !2111
  %116 = load i64, i64* %tv_usec160, align 8, !dbg !2228, !tbaa !2111
  %sub161 = add i64 %115, %exec_vit_usec.0366, !dbg !2229
  %add162 = sub i64 %sub161, %116, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %add162, i64 0, metadata !1879, metadata !700), !dbg !2091
  call void @post_execute_cv_kernel(i32 %call79, i32 %call131) #6, !dbg !2231
  %index = getelementptr inbounds %struct.radar_dict_entry_t, %struct.radar_dict_entry_t* %call87, i64 0, i32 0, !dbg !2232
  %117 = load i32, i32* %index, align 4, !dbg !2232, !tbaa !756
  call void @post_execute_rad_kernel(i32 %117, float %40, float %call142) #6, !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1927, metadata !700), !dbg !2234
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1927, metadata !700), !dbg !2234
  %cmp164361 = icmp sgt i32 %num_vit_msgs.0, 0, !dbg !2235
  br i1 %cmp164361, label %for.body167.lr.ph, label %for.cond.cleanup166, !dbg !2238

for.body167.lr.ph:                                ; preds = %sw.epilog129
  %msg_id = getelementptr inbounds %struct.vit_dict_entry_t, %struct.vit_dict_entry_t* %call113, i64 0, i32 1
  br label %for.body167, !dbg !2238

for.cond.cleanup166.loopexit:                     ; preds = %for.body167
  br label %for.cond.cleanup166, !dbg !2240

for.cond.cleanup166:                              ; preds = %for.cond.cleanup166.loopexit, %sw.epilog129
  %call172 = call { i64, float } @plan_and_control(i32 %call131, float %call142, i32 %call153, i64 %vehicle_state.sroa.0.sroa.0.0.insert.insert293, float %vehicle_state.sroa.11.0377) #6, !dbg !2240
  %call172.fca.0.extract = extractvalue { i64, float } %call172, 0, !dbg !2240
  %call172.fca.1.extract = extractvalue { i64, float } %call172, 1, !dbg !2240
  %vehicle_state.sroa.0.sroa.10.0.extract.shift = and i64 %call172.fca.0.extract, -4294967296, !dbg !2100
  call void @llvm.dbg.value(metadata float %call172.fca.1.extract, i64 0, metadata !1832, metadata !1266), !dbg !1937
  %118 = load i32, i32* @time_step, align 4, !dbg !2241, !tbaa !703
  %inc173 = add i32 %118, 1, !dbg !2241
  store i32 %inc173, i32* @time_step, align 4, !dbg !2241, !tbaa !703
  %cmp174 = icmp eq i32 %118, 0, !dbg !2242
  br i1 %cmp174, label %if.then176, label %if.end178, !dbg !2244

for.body167:                                      ; preds = %for.body167, %for.body167.lr.ph
  %mi.0362 = phi i32 [ 0, %for.body167.lr.ph ], [ %inc169, %for.body167 ]
  %119 = load i32, i32* %msg_id, align 4, !dbg !2245, !tbaa !887
  call void @post_execute_vit_kernel(i32 %119, i32 %call153) #6, !dbg !2247
  %inc169 = add nuw nsw i32 %mi.0362, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %inc169, i64 0, metadata !1927, metadata !700), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %inc169, i64 0, metadata !1927, metadata !700), !dbg !2234
  %exitcond = icmp eq i32 %inc169, %num_vit_msgs.0, !dbg !2235
  br i1 %exitcond, label %for.cond.cleanup166.loopexit, label %for.body167, !dbg !2238, !llvm.loop !2250

if.then176:                                       ; preds = %for.cond.cleanup166
  call void @llvm.dbg.value(metadata %struct.timeval* %start, i64 0, metadata !1856, metadata !748), !dbg !2253
  %call177 = call i32 @gettimeofday(%struct.timeval* nonnull %start, %struct.timezone* null) #6, !dbg !2254
  br label %if.end178, !dbg !2256

if.end178:                                        ; preds = %if.then176, %for.cond.cleanup166
  %call180 = call i32 @read_next_trace_record(i64 %call172.fca.0.extract, float %call172.fca.1.extract) #6, !dbg !2257
  call void @llvm.stackrestore(i8* %43), !dbg !2258
  call void @llvm.dbg.value(metadata float %call172.fca.1.extract, i64 0, metadata !1832, metadata !1266), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %add92, i64 0, metadata !1863, metadata !700), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %add118, i64 0, metadata !1864, metadata !700), !dbg !2079
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !1865, metadata !700), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %add96, i64 0, metadata !1866, metadata !700), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %add122, i64 0, metadata !1867, metadata !700), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %add84, i64 0, metadata !1868, metadata !700), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %add147, i64 0, metadata !1875, metadata !700), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %add158, i64 0, metadata !1876, metadata !700), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %add136, i64 0, metadata !1877, metadata !700), !dbg !2089
  call void @llvm.dbg.value(metadata i64 %add151, i64 0, metadata !1878, metadata !700), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %add162, i64 0, metadata !1879, metadata !700), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %add140, i64 0, metadata !1880, metadata !700), !dbg !2092
  %call74 = call i32 @eof_trace_reader() #6, !dbg !2095
  %lnot = icmp eq i32 %call74, 0, !dbg !2096
  br i1 %lnot, label %while.body76, label %while.end181.loopexit, !dbg !2097, !llvm.loop !2259

while.end181.loopexit:                            ; preds = %if.end178
  %tv_sec185.phi.trans.insert = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %.pre = load i64, i64* %tv_sec185.phi.trans.insert, align 8, !tbaa !2105
  %tv_usec189.phi.trans.insert = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %.pre395 = load i64, i64* %tv_usec189.phi.trans.insert, align 8, !tbaa !2111
  %phitmp = mul i64 %add92, 1000000, !dbg !2261
  %phitmp398 = mul i64 %add118, 1000000, !dbg !2261
  %phitmp399 = mul i64 %add, 1000000, !dbg !2261
  %phitmp400 = mul i64 %add147, 1000000, !dbg !2261
  %phitmp401 = mul i64 %add158, 1000000, !dbg !2261
  %phitmp402 = mul i64 %add136, 1000000, !dbg !2261
  br label %while.end181, !dbg !2261

while.end181:                                     ; preds = %while.end181.loopexit, %if.end70
  %120 = phi i64 [ %.pre395, %while.end181.loopexit ], [ undef, %if.end70 ], !dbg !2262
  %121 = phi i64 [ %.pre, %while.end181.loopexit ], [ undef, %if.end70 ], !dbg !2263
  %exec_cv_usec.0.lcssa = phi i64 [ %add140, %while.end181.loopexit ], [ 0, %if.end70 ]
  %exec_vit_usec.0.lcssa = phi i64 [ %add162, %while.end181.loopexit ], [ 0, %if.end70 ]
  %exec_rad_usec.0.lcssa = phi i64 [ %add151, %while.end181.loopexit ], [ 0, %if.end70 ]
  %exec_cv_sec.0.lcssa = phi i64 [ %phitmp402, %while.end181.loopexit ], [ 0, %if.end70 ]
  %exec_vit_sec.0.lcssa = phi i64 [ %phitmp401, %while.end181.loopexit ], [ 0, %if.end70 ]
  %exec_rad_sec.0.lcssa = phi i64 [ %phitmp400, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_cv_usec.0.lcssa = phi i64 [ %add84, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_vit_usec.0.lcssa = phi i64 [ %add122, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_rad_usec.0.lcssa = phi i64 [ %add96, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_cv_sec.0.lcssa = phi i64 [ %phitmp399, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_vit_sec.0.lcssa = phi i64 [ %phitmp398, %while.end181.loopexit ], [ 0, %if.end70 ]
  %iter_rad_sec.0.lcssa = phi i64 [ %phitmp, %while.end181.loopexit ], [ 0, %if.end70 ]
  call void @llvm.dbg.value(metadata %struct.timeval* %stop, i64 0, metadata !1848, metadata !748), !dbg !2261
  %call182 = call i32 @gettimeofday(%struct.timeval* nonnull %stop, %struct.timezone* null) #6, !dbg !2264
  call void @closeout_cv_kernel() #6, !dbg !2265
  call void @closeout_rad_kernel() #6, !dbg !2266
  call void @closeout_vit_kernel() #6, !dbg !2267
  %tv_sec184 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 0, !dbg !2268
  %122 = load i64, i64* %tv_sec184, align 8, !dbg !2268, !tbaa !2105
  %sub186 = sub nsw i64 %122, %121, !dbg !2269
  %mul187 = mul i64 %sub186, 1000000, !dbg !2270
  %tv_usec188 = getelementptr inbounds %struct.timeval, %struct.timeval* %stop, i64 0, i32 1, !dbg !2271
  %123 = load i64, i64* %tv_usec188, align 8, !dbg !2271, !tbaa !2111
  %sub190 = sub i64 %123, %120, !dbg !2272
  %add191 = add i64 %sub190, %mul187, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %add191, i64 0, metadata !1929, metadata !700), !dbg !2274
  %add194 = add i64 %iter_rad_sec.0.lcssa, %iter_rad_usec.0.lcssa, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %add194, i64 0, metadata !1931, metadata !700), !dbg !2276
  %add197 = add i64 %iter_vit_sec.0.lcssa, %iter_vit_usec.0.lcssa, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %add197, i64 0, metadata !1932, metadata !700), !dbg !2278
  %add200 = add i64 %iter_cv_sec.0.lcssa, %iter_cv_usec.0.lcssa, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %add200, i64 0, metadata !1933, metadata !700), !dbg !2280
  %add203 = add i64 %exec_rad_sec.0.lcssa, %exec_rad_usec.0.lcssa, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %add203, i64 0, metadata !1934, metadata !700), !dbg !2282
  %add206 = add i64 %exec_vit_sec.0.lcssa, %exec_vit_usec.0.lcssa, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %add206, i64 0, metadata !1935, metadata !700), !dbg !2284
  %add209 = add i64 %exec_cv_sec.0.lcssa, %exec_cv_usec.0.lcssa, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %add209, i64 0, metadata !1936, metadata !700), !dbg !2286
  %call210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42.60, i64 0, i64 0), i64 %add191), !dbg !2287
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43.61, i64 0, i64 0), i64 %add194), !dbg !2288
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.44.62, i64 0, i64 0), i64 %add197), !dbg !2289
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45.63, i64 0, i64 0), i64 %add200), !dbg !2290
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46.64, i64 0, i64 0), i64 %add203), !dbg !2291
  %call215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47.65, i64 0, i64 0), i64 %add206), !dbg !2292
  %call216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48.66, i64 0, i64 0), i64 %add209), !dbg !2293
  %puts340 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.75, i64 0, i64 0)), !dbg !2294
  call void @llvm.lifetime.end(i64 16, i8* nonnull %31) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %30) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %29) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %28) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %27) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %26) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %25) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %24) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %23) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %22) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %21) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %20) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %19) #6, !dbg !2295
  call void @llvm.lifetime.end(i64 16, i8* nonnull %18) #6, !dbg !2295
  br label %cleanup

cleanup:                                          ; preds = %while.end181, %if.then68, %if.then62, %if.then56, %if.then50
  %retval.0 = phi i32 [ 0, %while.end181 ], [ 1, %if.then68 ], [ 1, %if.then62 ], [ 1, %if.then56 ], [ 1, %if.then50 ]
  call void @llvm.lifetime.end(i64 25, i8* nonnull %17) #6, !dbg !2295
  ret i32 %retval.0, !dbg !2296
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @init_trace_reader(i8* %trace_filename) local_unnamed_addr #0 !dbg !2297 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %trace_filename, i64 0, metadata !2299, metadata !700), !dbg !2300
  %call = tail call %struct._IO_FILE* @fopen(i8* %trace_filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0)), !dbg !2301
  store %struct._IO_FILE* %call, %struct._IO_FILE** @input_trace, align 8, !dbg !2302, !tbaa !728
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !2303
  br i1 %tobool, label %if.then, label %return, !dbg !2305

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.70, i64 0, i64 0), i8* %trace_filename), !dbg !2306
  br label %return, !dbg !2308

return:                                           ; preds = %if.then, %entry
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !2309
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @get_object_token(i8 signext %c) local_unnamed_addr #0 !dbg !2310 {
entry:
  %objc = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2314, metadata !700), !dbg !2318
  %0 = load i32, i32* @in_tok, align 4, !dbg !2319, !tbaa !703
  %cmp = icmp eq i32 %0, 0, !dbg !2320
  br i1 %cmp, label %if.then, label %if.else, !dbg !2321

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* %objc, i64 0, metadata !2315, metadata !748), !dbg !2322
  call void @llvm.lifetime.start(i64 1, i8* nonnull %objc) #6, !dbg !2323
  %1 = load i32, i32* @last_i, align 4, !dbg !2324, !tbaa !703
  %idxprom = sext i32 %1 to i64, !dbg !2325
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %idxprom, !dbg !2325
  tail call void @llvm.dbg.value(metadata i8* %objc, i64 0, metadata !2315, metadata !748), !dbg !2322
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.71, i64 0, i64 0), i8* nonnull %objc) #6, !dbg !2326
  %2 = load i8, i8* %objc, align 1, !dbg !2327, !tbaa !969
  call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2315, metadata !700), !dbg !2322
  %3 = load i32, i32* @in_lane, align 4, !dbg !2328, !tbaa !703
  %idxprom1 = sext i32 %3 to i64, !dbg !2329
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* @obj_in_lane, i64 0, i64 %idxprom1, !dbg !2330
  %4 = load i32, i32* %arrayidx4, align 4, !dbg !2330, !tbaa !703
  %idxprom5 = zext i32 %4 to i64, !dbg !2329
  %arrayidx6 = getelementptr inbounds [5 x [16 x i8]], [5 x [16 x i8]]* @lane_obj, i64 0, i64 %idxprom1, i64 %idxprom5, !dbg !2329
  store i8 %2, i8* %arrayidx6, align 1, !dbg !2331, !tbaa !969
  call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2315, metadata !700), !dbg !2322
  %arrayidx8 = getelementptr inbounds [5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 %idxprom1, !dbg !2332
  store i8 %2, i8* %arrayidx8, align 1, !dbg !2333, !tbaa !969
  call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2315, metadata !700), !dbg !2322
  %cmp9 = icmp eq i8 %2, 78, !dbg !2334
  br i1 %cmp9, label %if.end, label %if.then11, !dbg !2336

if.then11:                                        ; preds = %if.then
  %5 = load i32, i32* @total_obj, align 4, !dbg !2337, !tbaa !703
  %inc = add i32 %5, 1, !dbg !2337
  store i32 %inc, i32* @total_obj, align 4, !dbg !2337, !tbaa !703
  br label %if.end, !dbg !2339

if.end:                                           ; preds = %if.then11, %if.then
  call void @llvm.dbg.value(metadata i8* %objc, i64 0, metadata !2315, metadata !748), !dbg !2322
  call void @llvm.lifetime.end(i64 1, i8* nonnull %objc) #6, !dbg !2340
  %6 = load i32, i32* @in_tok, align 4, !dbg !2341, !tbaa !703
  %sub = sub nsw i32 1, %6, !dbg !2342
  store i32 %sub, i32* @in_tok, align 4, !dbg !2343, !tbaa !703
  ret void, !dbg !2344

if.else:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.9, i64 0, i64 0)), !dbg !2345
  %call13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.72, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0)), !dbg !2347
  %7 = load i32, i32* @last_i, align 4, !dbg !2348, !tbaa !703
  %conv14 = sext i8 %c to i32, !dbg !2349
  %idxprom15 = sext i32 %7 to i64, !dbg !2350
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %idxprom15, !dbg !2350
  %call17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.73, i64 0, i64 0), i32 %7, i32 %conv14, i8* %arrayidx16), !dbg !2351
  tail call void @exit(i32 -3) #13, !dbg !2352
  unreachable, !dbg !2352
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @get_distance_token(i8 signext %c) local_unnamed_addr #0 !dbg !2353 {
entry:
  %distv = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !2355, metadata !700), !dbg !2359
  %0 = load i32, i32* @in_tok, align 4, !dbg !2360, !tbaa !703
  %cmp = icmp eq i32 %0, 1, !dbg !2361
  br i1 %cmp, label %if.then, label %if.else, !dbg !2362

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %distv to i8*, !dbg !2363
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #6, !dbg !2363
  %2 = load i32, i32* @last_i, align 4, !dbg !2364, !tbaa !703
  %idxprom = sext i32 %2 to i64, !dbg !2365
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %idxprom, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32* %distv, i64 0, metadata !2356, metadata !748), !dbg !2366
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.74, i64 0, i64 0), i32* nonnull %distv) #6, !dbg !2367
  %3 = load i32, i32* %distv, align 4, !dbg !2368, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2356, metadata !700), !dbg !2366
  %4 = load i32, i32* @in_lane, align 4, !dbg !2369, !tbaa !703
  %idxprom1 = sext i32 %4 to i64, !dbg !2370
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* @obj_in_lane, i64 0, i64 %idxprom1, !dbg !2371
  %5 = load i32, i32* %arrayidx4, align 4, !dbg !2371, !tbaa !703
  %idxprom5 = zext i32 %5 to i64, !dbg !2370
  %arrayidx6 = getelementptr inbounds [5 x [16 x i32]], [5 x [16 x i32]]* @lane_dist, i64 0, i64 %idxprom1, i64 %idxprom5, !dbg !2370
  store i32 %3, i32* %arrayidx6, align 4, !dbg !2372, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2356, metadata !700), !dbg !2366
  %conv = uitofp i32 %3 to float, !dbg !2373
  %arrayidx8 = getelementptr inbounds [5 x float], [5 x float]* @nearest_dist, i64 0, i64 %idxprom1, !dbg !2374
  store float %conv, float* %arrayidx8, align 4, !dbg !2375, !tbaa !764
  %inc = add i32 %5, 1, !dbg !2376
  store i32 %inc, i32* %arrayidx4, align 4, !dbg !2376, !tbaa !703
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #6, !dbg !2377
  %6 = load i32, i32* @in_tok, align 4, !dbg !2378, !tbaa !703
  %sub = sub nsw i32 1, %6, !dbg !2379
  store i32 %sub, i32* @in_tok, align 4, !dbg !2380, !tbaa !703
  ret void, !dbg !2381

if.else:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str.9, i64 0, i64 0)), !dbg !2382
  %call12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.72, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0)), !dbg !2384
  %7 = load i32, i32* @last_i, align 4, !dbg !2385, !tbaa !703
  %conv13 = sext i8 %c to i32, !dbg !2386
  %idxprom14 = sext i32 %7 to i64, !dbg !2387
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %idxprom14, !dbg !2387
  %call16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.73, i64 0, i64 0), i32 %7, i32 %conv13, i8* %arrayidx15), !dbg !2388
  tail call void @exit(i32 -4) #13, !dbg !2389
  unreachable, !dbg !2389
}

; Function Attrs: nounwind uwtable
define i32 @read_next_trace_record(i64 %vs.coerce0, float %vs.coerce1) local_unnamed_addr #0 !dbg !2390 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %vs.coerce0, i64 0, metadata !2400, metadata !1264), !dbg !2409
  tail call void @llvm.dbg.value(metadata float %vs.coerce1, i64 0, metadata !2400, metadata !1266), !dbg !2409
  tail call void @llvm.dbg.declare(metadata %struct.vehicle_state_t* undef, metadata !2400, metadata !700), !dbg !2409
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @input_trace, align 8, !dbg !2410, !tbaa !728
  %call = tail call i32 @feof(%struct._IO_FILE* %0) #6, !dbg !2412
  %tobool = icmp eq i32 %call, 0, !dbg !2412
  br i1 %tobool, label %if.end, label %if.then, !dbg !2413

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @str.10, i64 0, i64 0)), !dbg !2414
  tail call void @exit(i32 -1) #13, !dbg !2416
  unreachable, !dbg !2416

if.end:                                           ; preds = %entry
  store i32 0, i32* @total_obj, align 4, !dbg !2417, !tbaa !703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2401, metadata !700), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2401, metadata !700), !dbg !2418
  call void @llvm.memset.p0i8.i64(i8* bitcast ([5 x i32]* @obj_in_lane to i8*), i8 0, i64 20, i32 16, i1 false), !dbg !2419
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @nearest_obj, i64 0, i64 0), i8 78, i64 5, i32 1, i1 false), !dbg !2422
  store <4 x float> <float 5.500000e+02, float 5.500000e+02, float 5.500000e+02, float 5.500000e+02>, <4 x float>* bitcast ([5 x float]* @nearest_dist to <4 x float>*), align 16, !dbg !2423, !tbaa !764
  store float 5.500000e+02, float* getelementptr inbounds ([5 x float], [5 x float]* @nearest_dist, i64 0, i64 4), align 16, !dbg !2423, !tbaa !764
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @input_trace, align 8, !dbg !2424, !tbaa !728
  %call6 = tail call i8* @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0), i32 256, %struct._IO_FILE* %1), !dbg !2425
  tail call void @llvm.dbg.value(metadata i8* %call6, i64 0, metadata !2403, metadata !700), !dbg !2426
  %cmp7 = icmp eq i8* %call6, null, !dbg !2427
  br i1 %cmp7, label %cleanup, label %if.end9, !dbg !2429

if.end9:                                          ; preds = %if.end
  %call10 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0)) #15, !dbg !2430
  %cmp11 = icmp eq i64 %call10, 0, !dbg !2432
  br i1 %cmp11, label %if.end20, label %land.lhs.true, !dbg !2433

land.lhs.true:                                    ; preds = %if.end9
  %sub = add i64 %call10, -1, !dbg !2434
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %sub, !dbg !2435
  %2 = load i8, i8* %arrayidx13, align 1, !dbg !2435, !tbaa !969
  %cmp14 = icmp eq i8 %2, 10, !dbg !2436
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !2437

if.then16:                                        ; preds = %land.lhs.true
  store i8 0, i8* %arrayidx13, align 1, !dbg !2439, !tbaa !969
  br label %if.end20, !dbg !2441

if.end20:                                         ; preds = %if.then16, %land.lhs.true, %if.end9
  %3 = load i32, i32* @output_viz_trace, align 4, !dbg !2442, !tbaa !969
  %tobool21 = icmp eq i32 %3, 0, !dbg !2442
  br i1 %tobool21, label %if.end30, label %if.then22, !dbg !2444

if.then22:                                        ; preds = %if.end20
  %vs.sroa.0.0.extract.trunc = trunc i64 %vs.coerce0 to i32, !dbg !2445
  %tobool23 = icmp eq i32 %vs.sroa.0.0.extract.trunc, 0, !dbg !2448
  %vs.sroa.0.4.extract.shift = lshr i64 %vs.coerce0, 32
  %vs.sroa.0.4.extract.trunc = trunc i64 %vs.sroa.0.4.extract.shift to i32
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !2449

if.then24:                                        ; preds = %if.then22
  %sub25 = sub i32 0, %vs.sroa.0.4.extract.trunc, !dbg !2450
  %call26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8.77, i64 0, i64 0), i32 %sub25, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0)), !dbg !2452
  br label %if.end30, !dbg !2453

if.else:                                          ; preds = %if.then22
  %call28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8.77, i64 0, i64 0), i32 %vs.sroa.0.4.extract.trunc, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 0)), !dbg !2454
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24, %if.end20
  store i32 0, i32* @last_i, align 4, !dbg !2456, !tbaa !703
  store i32 0, i32* @in_tok, align 4, !dbg !2457, !tbaa !703
  store i32 1, i32* @in_lane, align 4, !dbg !2458, !tbaa !703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !700), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !700), !dbg !2459
  br label %for.body36, !dbg !2460

for.body36:                                       ; preds = %sw.epilog, %if.end30
  %i31.080 = phi i32 [ 0, %if.end30 ], [ %inc56, %sw.epilog ]
  %idxprom37 = sext i32 %i31.080 to i64, !dbg !2462
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @in_line_buf, i64 0, i64 %idxprom37, !dbg !2462
  %4 = load i8, i8* %arrayidx38, align 1, !dbg !2462, !tbaa !969
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !2406, metadata !700), !dbg !2463
  %conv39 = sext i8 %4 to i32, !dbg !2464
  switch i32 %conv39, label %sw.epilog [
    i32 58, label %sw.bb
    i32 44, label %sw.bb42
    i32 32, label %sw.bb47
    i32 0, label %sw.bb51
    i32 10, label %sw.bb51
  ], !dbg !2465

sw.bb:                                            ; preds = %for.body36
  store i8 0, i8* %arrayidx38, align 1, !dbg !2466, !tbaa !969
  tail call void @get_object_token(i8 signext %4), !dbg !2468
  br label %sw.epilog.sink.split, !dbg !2469

sw.bb42:                                          ; preds = %for.body36
  store i8 0, i8* %arrayidx38, align 1, !dbg !2470, !tbaa !969
  tail call void @get_distance_token(i8 signext %4), !dbg !2471
  %add45 = add nsw i32 %i31.080, 1, !dbg !2472
  store i32 %add45, i32* @last_i, align 4, !dbg !2473, !tbaa !703
  %5 = load i32, i32* @in_lane, align 4, !dbg !2474, !tbaa !703
  br label %sw.epilog.sink.split, !dbg !2475

sw.bb47:                                          ; preds = %for.body36
  store i8 0, i8* %arrayidx38, align 1, !dbg !2476, !tbaa !969
  tail call void @get_distance_token(i8 signext %4), !dbg !2477
  br label %sw.epilog.sink.split, !dbg !2478

sw.bb51:                                          ; preds = %for.body36, %for.body36
  store i8 0, i8* %arrayidx38, align 1, !dbg !2479, !tbaa !969
  tail call void @get_distance_token(i8 signext %4), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !2404, metadata !700), !dbg !2459
  br label %sw.epilog.sink.split, !dbg !2481

sw.epilog.sink.split:                             ; preds = %sw.bb51, %sw.bb47, %sw.bb42, %sw.bb
  %i31.0.sink = phi i32 [ %i31.080, %sw.bb51 ], [ %i31.080, %sw.bb47 ], [ %5, %sw.bb42 ], [ %i31.080, %sw.bb ]
  %last_i.sink = phi i32* [ @last_i, %sw.bb51 ], [ @last_i, %sw.bb47 ], [ @in_lane, %sw.bb42 ], [ @last_i, %sw.bb ]
  %i31.1.ph = phi i32 [ 256, %sw.bb51 ], [ %i31.080, %sw.bb47 ], [ %i31.080, %sw.bb42 ], [ %i31.080, %sw.bb ]
  %add54 = add nsw i32 %i31.0.sink, 1
  store i32 %add54, i32* %last_i.sink, align 4, !tbaa !703
  br label %sw.epilog, !dbg !2459

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body36
  %i31.1 = phi i32 [ %i31.080, %for.body36 ], [ %i31.1.ph, %sw.epilog.sink.split ]
  tail call void @llvm.dbg.value(metadata i32 %i31.1, i64 0, metadata !2404, metadata !700), !dbg !2459
  %inc56 = add nsw i32 %i31.1, 1, !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 %inc56, i64 0, metadata !2404, metadata !700), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 %inc56, i64 0, metadata !2404, metadata !700), !dbg !2459
  %cmp33 = icmp slt i32 %inc56, 256, !dbg !2484
  br i1 %cmp33, label %for.body36, label %cleanup.loopexit, !dbg !2460, !llvm.loop !2486

cleanup.loopexit:                                 ; preds = %sw.epilog
  br label %cleanup, !dbg !2489

cleanup:                                          ; preds = %cleanup.loopexit, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %cleanup.loopexit ]
  ret i32 %retval.0, !dbg !2489
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define i32 @eof_trace_reader() local_unnamed_addr #0 !dbg !2490 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @input_trace, align 8, !dbg !2495, !tbaa !728
  %call = tail call i32 @feof(%struct._IO_FILE* %0) #6, !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !2494, metadata !700), !dbg !2497
  ret i32 %call, !dbg !2498
}

; Function Attrs: nounwind uwtable
define void @closeout_trace_reader() local_unnamed_addr #0 !dbg !2499 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @input_trace, align 8, !dbg !2500, !tbaa !728
  %call = tail call i32 @fclose(%struct._IO_FILE* %0), !dbg !2501
  ret void, !dbg !2502
}

; Function Attrs: norecurse nounwind uwtable
define i8* @depuncture(i8* readonly %in) local_unnamed_addr #10 {
entry:
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !728
  %n_cbps1 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 3
  %1 = load i32, i32* %n_cbps1, align 4, !tbaa !2503
  %2 = load i32, i32* @d_ntraceback, align 4, !tbaa !703
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load %struct.frame_param*, %struct.frame_param** @d_frame, align 8, !tbaa !728
  %n_sym268 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %3, i64 0, i32 1
  %4 = load i32, i32* %n_sym268, align 4, !tbaa !2504
  %cmp369 = icmp sgt i32 %4, 0
  br i1 %cmp369, label %for.cond4.preheader.lr.ph, label %if.end

for.cond4.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp564 = icmp sgt i32 %1, 0
  %5 = load i8*, i8** @d_depuncture_pattern, align 8
  %6 = sext i32 %1 to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond.cleanup6, %for.cond4.preheader.lr.ph
  %7 = phi i32 [ %4, %for.cond4.preheader.lr.ph ], [ %11, %for.cond.cleanup6 ]
  %indvars.iv77 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next78, %for.cond.cleanup6 ]
  %count.070 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %count.1.lcssa, %for.cond.cleanup6 ]
  br i1 %cmp564, label %while.cond.preheader.lr.ph, label %for.cond.cleanup6

while.cond.preheader.lr.ph:                       ; preds = %for.cond4.preheader
  %8 = mul nsw i64 %indvars.iv77, %6
  %.pre = load i32, i32* @d_k, align 4, !tbaa !703
  %mul858 = shl nsw i32 %.pre, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc ]
  %count.165 = phi i32 [ %count.070, %while.cond.preheader.lr.ph ], [ %18, %for.inc ]
  %rem59 = srem i32 %count.165, %mul858
  %idxprom60 = sext i32 %rem59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %5, i64 %idxprom60
  %9 = load i8, i8* %arrayidx61, align 1, !tbaa !969
  %cmp962 = icmp eq i8 %9, 0
  br i1 %cmp962, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = sext i32 %count.165 to i64
  br label %while.body

for.cond.cleanup6.loopexit:                       ; preds = %for.inc
  %.pre80 = load i32, i32* %n_sym268, align 4, !tbaa !2504
  br label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond.cleanup6.loopexit, %for.cond4.preheader
  %11 = phi i32 [ %7, %for.cond4.preheader ], [ %.pre80, %for.cond.cleanup6.loopexit ]
  %count.1.lcssa = phi i32 [ %count.070, %for.cond4.preheader ], [ %18, %for.cond.cleanup6.loopexit ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %12 = sext i32 %11 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next78, %12
  br i1 %cmp3, label %for.cond4.preheader, label %if.end.loopexit

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv = phi i64 [ %10, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx12 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv
  store i8 2, i8* %arrayidx12, align 1, !tbaa !969
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %rem = srem i32 %13, %mul858
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !969
  %cmp9 = icmp eq i8 %14, 0
  br i1 %cmp9, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %count.2.lcssa = phi i32 [ %count.165, %while.cond.preheader ], [ %13, %while.end.loopexit ]
  %15 = add nsw i64 %indvars.iv74, %8
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %15
  %16 = load i8, i8* %arrayidx15, align 1, !tbaa !969
  %17 = sext i32 %count.2.lcssa to i64
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19, %while.end
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %while.cond19 ], [ %17, %while.end ]
  %.sink = phi i8 [ 2, %while.cond19 ], [ %16, %while.end ]
  %arrayidx29 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv72
  store i8 %.sink, i8* %arrayidx29, align 1, !tbaa !969
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %18 = trunc i64 %indvars.iv.next73 to i32
  %rem21 = srem i32 %18, %mul858
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %5, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1, !tbaa !969
  %cmp25 = icmp eq i8 %19, 0
  br i1 %cmp25, label %while.cond19, label %for.inc

for.inc:                                          ; preds = %while.cond19
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup6.loopexit, label %while.cond.preheader

if.end.loopexit:                                  ; preds = %for.cond.cleanup6
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.cond.preheader, %entry
  %depunctured.0 = phi i8* [ %in, %entry ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.preheader ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %if.end.loopexit ]
  ret i8* %depunctured.0
}

; Function Attrs: nounwind uwtable
define void @viterbi_butterfly2_generic(i8* nocapture readonly %symbols, i8* nocapture %mm0, i8* nocapture %mm1, i8* nocapture %pp0, i8* nocapture %pp1) local_unnamed_addr #0 {
entry:
  %m0 = alloca <16 x i8>, align 16
  %m1 = alloca <16 x i8>, align 16
  %m2 = alloca <16 x i8>, align 16
  %m3 = alloca <16 x i8>, align 16
  %decision0 = alloca <16 x i8>, align 16
  %decision1 = alloca <16 x i8>, align 16
  %survivor0 = alloca <16 x i8>, align 16
  %tmpcast917 = bitcast <16 x i8>* %survivor0 to [16 x i8]*
  %survivor1 = alloca <16 x i8>, align 16
  %tmpcast918 = bitcast <16 x i8>* %survivor1 to [16 x i8]*
  %metsv = alloca <16 x i8>, align 16
  %tmpcast912 = bitcast <16 x i8>* %metsv to [16 x i8]*
  %metsvm = alloca <16 x i8>, align 16
  %shift0 = alloca <16 x i8>, align 16
  %tmpcast905 = bitcast <16 x i8>* %shift0 to [16 x i8]*
  %shift1 = alloca <16 x i8>, align 16
  %tmpcast = bitcast <16 x i8>* %shift1 to [16 x i8]*
  %tmp0 = alloca <16 x i8>, align 16
  %tmpcast906 = bitcast <16 x i8>* %tmp0 to [16 x i8]*
  %tmp1 = alloca <16 x i8>, align 16
  %tmpcast908 = bitcast <16 x i8>* %tmp1 to [16 x i8]*
  %sym0v = alloca <16 x i8>, align 16
  %sym0v828 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  %sym1v = alloca <16 x i8>, align 16
  %sym1v829 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  %0 = getelementptr inbounds <16 x i8>, <16 x i8>* %m0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %0) #6
  %1 = getelementptr inbounds <16 x i8>, <16 x i8>* %m1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1) #6
  %2 = getelementptr inbounds <16 x i8>, <16 x i8>* %m2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %2) #6
  %3 = getelementptr inbounds <16 x i8>, <16 x i8>* %m3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %3) #6
  %4 = getelementptr inbounds <16 x i8>, <16 x i8>* %decision0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %4) #6
  %5 = getelementptr inbounds <16 x i8>, <16 x i8>* %decision1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %5) #6
  %6 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #6
  %7 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %7) #6
  %8 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsv, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %8) #6
  %9 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsvm, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %9) #6
  %10 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %10) #6
  %11 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %11) #6
  %12 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %12) #6
  %13 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %13) #6
  %14 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %14) #6
  %15 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %15) #6
  %16 = load i8, i8* %symbols, align 1, !tbaa !969
  %arrayidx4 = getelementptr inbounds i8, i8* %symbols, i64 1
  %17 = load i8, i8* %arrayidx4, align 1, !tbaa !969
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v828, i8 %16, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v829, i8 %17, i64 16, i32 16, i1 false)
  %arrayidx503 = getelementptr inbounds i8, i8* %symbols, i64 2
  %arrayidx507 = getelementptr inbounds i8, i8* %symbols, i64 3
  %arrayidx472 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 8
  %arrayidx336.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 1
  %arrayidx343.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 1
  %arrayidx336.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 2
  %arrayidx343.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 2
  %arrayidx336.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 3
  %arrayidx343.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 3
  %arrayidx336.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 4
  %arrayidx343.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 4
  %arrayidx336.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 5
  %arrayidx343.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 5
  %arrayidx336.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 6
  %arrayidx343.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 6
  %arrayidx336.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 7
  %arrayidx343.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 7
  %arrayidx378.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 1
  %arrayidx378.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 2
  %arrayidx378.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 3
  %arrayidx378.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 4
  %arrayidx378.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 5
  %arrayidx378.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 6
  %arrayidx378.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 7
  %arrayidx378.9 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 9
  %arrayidx378.10 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 10
  %arrayidx378.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 11
  %arrayidx378.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 12
  %arrayidx378.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 13
  %arrayidx378.14 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 14
  %arrayidx378.15 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast906, i64 0, i64 15
  %arrayidx390 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 8
  %arrayidx398 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 8
  %arrayidx390.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 9
  %arrayidx398.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 9
  %arrayidx390.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 10
  %arrayidx398.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 10
  %arrayidx390.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 11
  %arrayidx398.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 11
  %arrayidx390.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 12
  %arrayidx398.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 12
  %arrayidx390.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 13
  %arrayidx398.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 13
  %arrayidx390.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 14
  %arrayidx398.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 14
  %arrayidx390.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast917, i64 0, i64 15
  %arrayidx398.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast918, i64 0, i64 15
  %arrayidx434.1 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 1
  %arrayidx434.2 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 2
  %arrayidx434.3 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 3
  %arrayidx434.4 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 4
  %arrayidx434.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 5
  %arrayidx434.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 6
  %arrayidx434.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 7
  %arrayidx434.8 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 8
  %arrayidx434.9 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 9
  %arrayidx434.10 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 10
  %arrayidx434.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 11
  %arrayidx434.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 12
  %arrayidx434.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast908, i64 0, i64 13
  %arrayidx76.15.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 15
  %arrayidx41.14.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 14
  %arrayidx41.13.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 13
  %arrayidx41.12.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 12
  %arrayidx41.11.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 11
  %arrayidx41.10.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 10
  %arrayidx41.9.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 9
  %arrayidx41.8.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 8
  %arrayidx41.7.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 7
  %arrayidx41.6.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 6
  %arrayidx41.5.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 5
  %arrayidx41.4.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 4
  %arrayidx41.3.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 3
  %arrayidx41.2.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 2
  %arrayidx41.1.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast912, i64 0, i64 1
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond497.preheader, %entry
  %18 = phi i8 [ %16, %entry ], [ %19, %for.cond497.preheader ]
  %s.0741 = phi i32 [ 0, %entry ], [ %inc514, %for.cond497.preheader ]
  %second_symbol.0740 = phi i64 [ 1, %entry ], [ 3, %for.cond497.preheader ]
  %first_symbol.0739 = phi i64 [ 0, %entry ], [ 2, %for.cond497.preheader ]
  %metric0.0738 = phi i8* [ %mm0, %entry ], [ %mm1, %for.cond497.preheader ]
  %path1.0737 = phi i8* [ %pp1, %entry ], [ %pp0, %for.cond497.preheader ]
  %path0.0736 = phi i8* [ %pp0, %entry ], [ %pp1, %for.cond497.preheader ]
  %metric1.0735 = phi i8* [ %mm1, %entry ], [ %mm0, %for.cond497.preheader ]
  %arrayidx16 = getelementptr inbounds i8, i8* %symbols, i64 %first_symbol.0739
  %arrayidx46 = getelementptr inbounds i8, i8* %symbols, i64 %second_symbol.0740
  %wide.load866 = load <16 x i8>, <16 x i8>* %sym0v, align 16
  %wide.load868 = load <16 x i8>, <16 x i8>* %sym1v, align 16
  br label %for.body14

for.cond.cleanup9:                                ; preds = %for.cond497.preheader
  store <16 x i8> %wide.load852919, <16 x i8>* %metsvm, align 1, !tbaa !969
  store <16 x i8> %47, <16 x i8>* %m0, align 16, !tbaa !969
  store <16 x i8> %50, <16 x i8>* %m1, align 16, !tbaa !969
  store <16 x i8> %51, <16 x i8>* %m2, align 16, !tbaa !969
  store <16 x i8> %52, <16 x i8>* %m3, align 16, !tbaa !969
  store <16 x i8> %64, <16 x i8>* %decision0, align 16, !tbaa !969
  store <16 x i8> %66, <16 x i8>* %decision1, align 16, !tbaa !969
  call void @llvm.lifetime.end(i64 16, i8* nonnull %15) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %14) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %13) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %12) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %11) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %10) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %9) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %8) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %7) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %5) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %4) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %2) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1) #6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %0) #6
  ret void

for.cond497.preheader:                            ; preds = %for.body318.preheader
  %19 = load i8, i8* %arrayidx503, align 1, !tbaa !969
  %20 = load i8, i8* %arrayidx507, align 1, !tbaa !969
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v828, i8 %19, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v829, i8 %20, i64 16, i32 16, i1 false)
  %inc514 = add nuw nsw i32 %s.0741, 1
  %exitcond830 = icmp eq i32 %inc514, 2
  br i1 %exitcond830, label %for.cond.cleanup9, label %for.cond11.preheader

for.body14:                                       ; preds = %for.body318.preheader.for.body14_crit_edge, %for.cond11.preheader
  %21 = phi i8 [ %18, %for.cond11.preheader ], [ %.pre, %for.body318.preheader.for.body14_crit_edge ]
  %indvars.iv810 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next811, %for.body318.preheader.for.body14_crit_edge ]
  %cmp17 = icmp eq i8 %21, 2
  br i1 %cmp17, label %for.cond20.preheader, label %if.else

for.cond20.preheader:                             ; preds = %for.body14
  %22 = shl i64 %indvars.iv810, 4
  %arrayidx28 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %22
  br label %for.cond123.preheader.sink.split

for.cond123.preheader.sink.split:                 ; preds = %for.body56.preheader, %for.cond20.preheader
  %arrayidx28.sink = phi i8* [ %arrayidx28, %for.cond20.preheader ], [ %arrayidx61, %for.body56.preheader ]
  %.sink = phi i8* [ %15, %for.cond20.preheader ], [ %14, %for.body56.preheader ]
  %.pre-phi.ph = phi i64 [ %22, %for.cond20.preheader ], [ %54, %for.body56.preheader ]
  %23 = bitcast i8* %arrayidx28.sink to <16 x i8>*
  %24 = load <16 x i8>, <16 x i8>* %23, align 16, !tbaa !969
  %25 = bitcast i8* %.sink to <16 x i8>*
  %26 = load <16 x i8>, <16 x i8>* %25, align 16, !tbaa !969
  %27 = xor <16 x i8> %26, %24
  %28 = extractelement <16 x i8> %27, i32 0
  %sub = sub i8 1, %28
  store i8 %sub, i8* %8, align 16, !tbaa !969
  %29 = extractelement <16 x i8> %27, i32 1
  %sub.1 = sub i8 1, %29
  store i8 %sub.1, i8* %arrayidx41.1.sink, align 1, !tbaa !969
  %30 = extractelement <16 x i8> %27, i32 2
  %sub.2 = sub i8 1, %30
  store i8 %sub.2, i8* %arrayidx41.2.sink, align 2, !tbaa !969
  %31 = extractelement <16 x i8> %27, i32 3
  %sub.3 = sub i8 1, %31
  store i8 %sub.3, i8* %arrayidx41.3.sink, align 1, !tbaa !969
  %32 = extractelement <16 x i8> %27, i32 4
  %sub.4 = sub i8 1, %32
  store i8 %sub.4, i8* %arrayidx41.4.sink, align 4, !tbaa !969
  %33 = extractelement <16 x i8> %27, i32 5
  %sub.5 = sub i8 1, %33
  store i8 %sub.5, i8* %arrayidx41.5.sink, align 1, !tbaa !969
  %34 = extractelement <16 x i8> %27, i32 6
  %sub.6 = sub i8 1, %34
  store i8 %sub.6, i8* %arrayidx41.6.sink, align 2, !tbaa !969
  %35 = extractelement <16 x i8> %27, i32 7
  %sub.7 = sub i8 1, %35
  store i8 %sub.7, i8* %arrayidx41.7.sink, align 1, !tbaa !969
  %36 = extractelement <16 x i8> %27, i32 8
  %sub.8 = sub i8 1, %36
  store i8 %sub.8, i8* %arrayidx41.8.sink, align 8, !tbaa !969
  %37 = extractelement <16 x i8> %27, i32 9
  %sub.9 = sub i8 1, %37
  store i8 %sub.9, i8* %arrayidx41.9.sink, align 1, !tbaa !969
  %38 = extractelement <16 x i8> %27, i32 10
  %sub.10 = sub i8 1, %38
  store i8 %sub.10, i8* %arrayidx41.10.sink, align 2, !tbaa !969
  %39 = extractelement <16 x i8> %27, i32 11
  %sub.11 = sub i8 1, %39
  store i8 %sub.11, i8* %arrayidx41.11.sink, align 1, !tbaa !969
  %40 = extractelement <16 x i8> %27, i32 12
  %sub.12 = sub i8 1, %40
  store i8 %sub.12, i8* %arrayidx41.12.sink, align 4, !tbaa !969
  %41 = extractelement <16 x i8> %27, i32 13
  %sub.13 = sub i8 1, %41
  store i8 %sub.13, i8* %arrayidx41.13.sink, align 1, !tbaa !969
  %42 = extractelement <16 x i8> %27, i32 14
  %sub.14 = sub i8 1, %42
  store i8 %sub.14, i8* %arrayidx41.14.sink, align 2, !tbaa !969
  %43 = extractelement <16 x i8> %27, i32 15
  %sub73.15 = sub i8 1, %43
  store i8 %sub73.15, i8* %arrayidx76.15.sink, align 1, !tbaa !969
  br label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %vector.body853, %for.cond123.preheader.sink.split
  %wide.load852919 = phi <16 x i8> [ %27, %for.cond123.preheader.sink.split ], [ %61, %vector.body853 ]
  %.pre-phi = phi i64 [ %.pre-phi.ph, %for.cond123.preheader.sink.split ], [ %54, %vector.body853 ]
  %44 = add nuw nsw i64 %.pre-phi, 32
  br label %vector.body837

vector.body837:                                   ; preds = %for.cond123.preheader
  %45 = getelementptr inbounds i8, i8* %metric0.0738, i64 %.pre-phi
  %46 = bitcast i8* %45 to <16 x i8>*
  %wide.load849 = load <16 x i8>, <16 x i8>* %46, align 1, !tbaa !969
  %wide.load850 = load <16 x i8>, <16 x i8>* %metsv, align 16, !tbaa !969
  %47 = add <16 x i8> %wide.load850, %wide.load849
  %48 = getelementptr inbounds i8, i8* %metric0.0738, i64 %44
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load851 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !969
  %50 = add <16 x i8> %wide.load852919, %wide.load851
  %51 = add <16 x i8> %wide.load849, %wide.load852919
  %52 = add <16 x i8> %wide.load850, %wide.load851
  br label %vector.body

if.else:                                          ; preds = %for.body14
  %53 = load i8, i8* %arrayidx46, align 1, !tbaa !969
  %cmp48 = icmp eq i8 %53, 2
  %54 = shl i64 %indvars.iv810, 4
  br i1 %cmp48, label %for.body56.preheader, label %vector.body853.preheader

vector.body853.preheader:                         ; preds = %if.else
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853.preheader
  %55 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %54
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load865 = load <16 x i8>, <16 x i8>* %56, align 16, !tbaa !969
  %57 = xor <16 x i8> %wide.load866, %wide.load865
  %58 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %54
  %59 = bitcast i8* %58 to <16 x i8>*
  %wide.load867 = load <16 x i8>, <16 x i8>* %59, align 16, !tbaa !969
  %60 = xor <16 x i8> %wide.load868, %wide.load867
  %61 = add <16 x i8> %60, %57
  %62 = sub <16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>, %61
  store <16 x i8> %62, <16 x i8>* %metsv, align 16, !tbaa !969
  br label %for.cond123.preheader

for.body56.preheader:                             ; preds = %if.else
  %arrayidx61 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %54
  br label %for.cond123.preheader.sink.split

vector.body:                                      ; preds = %vector.body837
  %63 = icmp ugt <16 x i8> %47, %50
  %64 = sext <16 x i1> %63 to <16 x i8>
  %65 = icmp ugt <16 x i8> %51, %52
  %66 = sext <16 x i1> %65 to <16 x i8>
  %67 = select <16 x i1> %63, <16 x i8> %47, <16 x i8> %50
  store <16 x i8> %67, <16 x i8>* %survivor0, align 16, !tbaa !969
  %68 = select <16 x i1> %65, <16 x i8> %51, <16 x i8> %52
  store <16 x i8> %68, <16 x i8>* %survivor1, align 16, !tbaa !969
  br label %for.body255

for.body255:                                      ; preds = %for.body255, %vector.body
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %for.body255 ], [ 0, %vector.body ]
  %69 = add nuw nsw i64 %indvars.iv762, %.pre-phi
  %arrayidx259 = getelementptr inbounds i8, i8* %path0.0736, i64 %69
  %70 = load i8, i8* %arrayidx259, align 1, !tbaa !969
  %71 = or i64 %indvars.iv762, 1
  %72 = add nuw nsw i64 %71, %.pre-phi
  %arrayidx265 = getelementptr inbounds i8, i8* %path0.0736, i64 %72
  %73 = load i8, i8* %arrayidx265, align 1, !tbaa !969
  %conv266 = zext i8 %73 to i16
  %shl = shl nuw i16 %conv266, 8
  %conv267 = zext i8 %70 to i16
  %or268 = or i16 %shl, %conv267
  %shl271 = shl i8 %70, 1
  %arrayidx275 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast905, i64 0, i64 %indvars.iv762
  store i8 %shl271, i8* %arrayidx275, align 2, !tbaa !969
  %74 = lshr i16 %or268, 7
  %conv277 = trunc i16 %74 to i8
  %arrayidx280 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast905, i64 0, i64 %71
  store i8 %conv277, i8* %arrayidx280, align 1, !tbaa !969
  %75 = add nuw nsw i64 %indvars.iv762, %44
  %arrayidx285 = getelementptr inbounds i8, i8* %path0.0736, i64 %75
  %76 = load i8, i8* %arrayidx285, align 1, !tbaa !969
  %77 = add nuw nsw i64 %71, %44
  %arrayidx292 = getelementptr inbounds i8, i8* %path0.0736, i64 %77
  %78 = load i8, i8* %arrayidx292, align 1, !tbaa !969
  %conv293 = zext i8 %78 to i16
  %shl294 = shl nuw i16 %conv293, 8
  %conv295 = zext i8 %76 to i16
  %or296 = or i16 %shl294, %conv295
  %shl299 = shl i8 %76, 1
  %arrayidx303 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %indvars.iv762
  store i8 %shl299, i8* %arrayidx303, align 2, !tbaa !969
  %79 = lshr i16 %or296, 7
  %conv306 = trunc i16 %79 to i8
  %arrayidx309 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %71
  store i8 %conv306, i8* %arrayidx309, align 1, !tbaa !969
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 2
  %cmp252 = icmp slt i64 %indvars.iv.next763, 16
  br i1 %cmp252, label %for.body255, label %for.body318.preheader

for.body318.preheader:                            ; preds = %for.body255
  %80 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !969
  %81 = add <16 x i8> %80, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %81, <16 x i8>* %shift1, align 16, !tbaa !969
  %82 = shl i64 %indvars.iv810, 5
  %83 = load i8, i8* %6, align 16, !tbaa !969
  %arrayidx341 = getelementptr inbounds i8, i8* %metric1.0735, i64 %82
  store i8 %83, i8* %arrayidx341, align 1, !tbaa !969
  %84 = load i8, i8* %7, align 16, !tbaa !969
  %85 = or i64 %82, 1
  %arrayidx349 = getelementptr inbounds i8, i8* %metric1.0735, i64 %85
  store i8 %84, i8* %arrayidx349, align 1, !tbaa !969
  %86 = load i8, i8* %arrayidx336.1, align 1, !tbaa !969
  %87 = or i64 %82, 2
  %arrayidx341.1 = getelementptr inbounds i8, i8* %metric1.0735, i64 %87
  store i8 %86, i8* %arrayidx341.1, align 1, !tbaa !969
  %88 = load i8, i8* %arrayidx343.1, align 1, !tbaa !969
  %89 = or i64 %82, 3
  %arrayidx349.1 = getelementptr inbounds i8, i8* %metric1.0735, i64 %89
  store i8 %88, i8* %arrayidx349.1, align 1, !tbaa !969
  %90 = load i8, i8* %arrayidx336.2, align 2, !tbaa !969
  %91 = or i64 %82, 4
  %arrayidx341.2 = getelementptr inbounds i8, i8* %metric1.0735, i64 %91
  store i8 %90, i8* %arrayidx341.2, align 1, !tbaa !969
  %92 = load i8, i8* %arrayidx343.2, align 2, !tbaa !969
  %93 = or i64 %82, 5
  %arrayidx349.2 = getelementptr inbounds i8, i8* %metric1.0735, i64 %93
  store i8 %92, i8* %arrayidx349.2, align 1, !tbaa !969
  %94 = load i8, i8* %arrayidx336.3, align 1, !tbaa !969
  %95 = or i64 %82, 6
  %arrayidx341.3 = getelementptr inbounds i8, i8* %metric1.0735, i64 %95
  store i8 %94, i8* %arrayidx341.3, align 1, !tbaa !969
  %96 = load i8, i8* %arrayidx343.3, align 1, !tbaa !969
  %97 = or i64 %82, 7
  %arrayidx349.3 = getelementptr inbounds i8, i8* %metric1.0735, i64 %97
  store i8 %96, i8* %arrayidx349.3, align 1, !tbaa !969
  %98 = load i8, i8* %arrayidx336.4, align 4, !tbaa !969
  %99 = or i64 %82, 8
  %arrayidx341.4 = getelementptr inbounds i8, i8* %metric1.0735, i64 %99
  store i8 %98, i8* %arrayidx341.4, align 1, !tbaa !969
  %100 = load i8, i8* %arrayidx343.4, align 4, !tbaa !969
  %101 = or i64 %82, 9
  %arrayidx349.4 = getelementptr inbounds i8, i8* %metric1.0735, i64 %101
  store i8 %100, i8* %arrayidx349.4, align 1, !tbaa !969
  %102 = load i8, i8* %arrayidx336.5, align 1, !tbaa !969
  %103 = or i64 %82, 10
  %arrayidx341.5 = getelementptr inbounds i8, i8* %metric1.0735, i64 %103
  store i8 %102, i8* %arrayidx341.5, align 1, !tbaa !969
  %104 = load i8, i8* %arrayidx343.5, align 1, !tbaa !969
  %105 = or i64 %82, 11
  %arrayidx349.5 = getelementptr inbounds i8, i8* %metric1.0735, i64 %105
  store i8 %104, i8* %arrayidx349.5, align 1, !tbaa !969
  %106 = load i8, i8* %arrayidx336.6, align 2, !tbaa !969
  %107 = or i64 %82, 12
  %arrayidx341.6 = getelementptr inbounds i8, i8* %metric1.0735, i64 %107
  store i8 %106, i8* %arrayidx341.6, align 1, !tbaa !969
  %108 = load i8, i8* %arrayidx343.6, align 2, !tbaa !969
  %109 = or i64 %82, 13
  %arrayidx349.6 = getelementptr inbounds i8, i8* %metric1.0735, i64 %109
  store i8 %108, i8* %arrayidx349.6, align 1, !tbaa !969
  %110 = load i8, i8* %arrayidx336.7, align 1, !tbaa !969
  %111 = or i64 %82, 14
  %arrayidx341.7 = getelementptr inbounds i8, i8* %metric1.0735, i64 %111
  store i8 %110, i8* %arrayidx341.7, align 1, !tbaa !969
  %112 = load i8, i8* %arrayidx343.7, align 1, !tbaa !969
  %113 = or i64 %82, 15
  %arrayidx349.7 = getelementptr inbounds i8, i8* %metric1.0735, i64 %113
  store i8 %112, i8* %arrayidx349.7, align 1, !tbaa !969
  %114 = load <16 x i8>, <16 x i8>* %shift0, align 16, !tbaa !969
  %115 = and <16 x i8> %114, %64
  %116 = xor <16 x i8> %64, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %117 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !969
  %118 = and <16 x i8> %117, %116
  %119 = or <16 x i8> %118, %115
  store <16 x i8> %119, <16 x i8>* %tmp0, align 16, !tbaa !969
  %120 = or i64 %82, 16
  %121 = load i8, i8* %arrayidx390, align 8, !tbaa !969
  %arrayidx396 = getelementptr inbounds i8, i8* %metric1.0735, i64 %120
  store i8 %121, i8* %arrayidx396, align 1, !tbaa !969
  %122 = load i8, i8* %arrayidx398, align 8, !tbaa !969
  %123 = or i64 %82, 17
  %arrayidx405 = getelementptr inbounds i8, i8* %metric1.0735, i64 %123
  store i8 %122, i8* %arrayidx405, align 1, !tbaa !969
  %124 = load i8, i8* %arrayidx390.1, align 1, !tbaa !969
  %125 = or i64 %82, 18
  %arrayidx396.1 = getelementptr inbounds i8, i8* %metric1.0735, i64 %125
  store i8 %124, i8* %arrayidx396.1, align 1, !tbaa !969
  %126 = load i8, i8* %arrayidx398.1, align 1, !tbaa !969
  %127 = or i64 %82, 19
  %arrayidx405.1 = getelementptr inbounds i8, i8* %metric1.0735, i64 %127
  store i8 %126, i8* %arrayidx405.1, align 1, !tbaa !969
  %128 = load i8, i8* %arrayidx390.2, align 2, !tbaa !969
  %129 = or i64 %82, 20
  %arrayidx396.2 = getelementptr inbounds i8, i8* %metric1.0735, i64 %129
  store i8 %128, i8* %arrayidx396.2, align 1, !tbaa !969
  %130 = load i8, i8* %arrayidx398.2, align 2, !tbaa !969
  %131 = or i64 %82, 21
  %arrayidx405.2 = getelementptr inbounds i8, i8* %metric1.0735, i64 %131
  store i8 %130, i8* %arrayidx405.2, align 1, !tbaa !969
  %132 = load i8, i8* %arrayidx390.3, align 1, !tbaa !969
  %133 = or i64 %82, 22
  %arrayidx396.3 = getelementptr inbounds i8, i8* %metric1.0735, i64 %133
  store i8 %132, i8* %arrayidx396.3, align 1, !tbaa !969
  %134 = load i8, i8* %arrayidx398.3, align 1, !tbaa !969
  %135 = or i64 %82, 23
  %arrayidx405.3 = getelementptr inbounds i8, i8* %metric1.0735, i64 %135
  store i8 %134, i8* %arrayidx405.3, align 1, !tbaa !969
  %136 = load i8, i8* %arrayidx390.4, align 4, !tbaa !969
  %137 = or i64 %82, 24
  %arrayidx396.4 = getelementptr inbounds i8, i8* %metric1.0735, i64 %137
  store i8 %136, i8* %arrayidx396.4, align 1, !tbaa !969
  %138 = load i8, i8* %arrayidx398.4, align 4, !tbaa !969
  %139 = or i64 %82, 25
  %arrayidx405.4 = getelementptr inbounds i8, i8* %metric1.0735, i64 %139
  store i8 %138, i8* %arrayidx405.4, align 1, !tbaa !969
  %140 = load i8, i8* %arrayidx390.5, align 1, !tbaa !969
  %141 = or i64 %82, 26
  %arrayidx396.5 = getelementptr inbounds i8, i8* %metric1.0735, i64 %141
  store i8 %140, i8* %arrayidx396.5, align 1, !tbaa !969
  %142 = load i8, i8* %arrayidx398.5, align 1, !tbaa !969
  %143 = or i64 %82, 27
  %arrayidx405.5 = getelementptr inbounds i8, i8* %metric1.0735, i64 %143
  store i8 %142, i8* %arrayidx405.5, align 1, !tbaa !969
  %144 = load i8, i8* %arrayidx390.6, align 2, !tbaa !969
  %145 = or i64 %82, 28
  %arrayidx396.6 = getelementptr inbounds i8, i8* %metric1.0735, i64 %145
  store i8 %144, i8* %arrayidx396.6, align 1, !tbaa !969
  %146 = load i8, i8* %arrayidx398.6, align 2, !tbaa !969
  %147 = or i64 %82, 29
  %arrayidx405.6 = getelementptr inbounds i8, i8* %metric1.0735, i64 %147
  store i8 %146, i8* %arrayidx405.6, align 1, !tbaa !969
  %148 = load i8, i8* %arrayidx390.7, align 1, !tbaa !969
  %149 = or i64 %82, 30
  %arrayidx396.7 = getelementptr inbounds i8, i8* %metric1.0735, i64 %149
  store i8 %148, i8* %arrayidx396.7, align 1, !tbaa !969
  %150 = load i8, i8* %arrayidx398.7, align 1, !tbaa !969
  %151 = or i64 %82, 31
  %arrayidx405.7 = getelementptr inbounds i8, i8* %metric1.0735, i64 %151
  store i8 %150, i8* %arrayidx405.7, align 1, !tbaa !969
  %152 = load <16 x i8>, <16 x i8>* %shift0, align 16, !tbaa !969
  %153 = and <16 x i8> %152, %66
  %154 = xor <16 x i8> %66, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %155 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !969
  %156 = and <16 x i8> %155, %154
  %157 = or <16 x i8> %156, %153
  store <16 x i8> %157, <16 x i8>* %tmp1, align 16, !tbaa !969
  %158 = load i8, i8* %12, align 16, !tbaa !969
  %arrayidx451 = getelementptr inbounds i8, i8* %path1.0737, i64 %82
  store i8 %158, i8* %arrayidx451, align 1, !tbaa !969
  %159 = load i8, i8* %13, align 16, !tbaa !969
  %arrayidx459 = getelementptr inbounds i8, i8* %path1.0737, i64 %85
  store i8 %159, i8* %arrayidx459, align 1, !tbaa !969
  %160 = load i8, i8* %arrayidx378.1, align 1, !tbaa !969
  %arrayidx451.1 = getelementptr inbounds i8, i8* %path1.0737, i64 %87
  store i8 %160, i8* %arrayidx451.1, align 1, !tbaa !969
  %161 = load i8, i8* %arrayidx434.1, align 1, !tbaa !969
  %arrayidx459.1 = getelementptr inbounds i8, i8* %path1.0737, i64 %89
  store i8 %161, i8* %arrayidx459.1, align 1, !tbaa !969
  %162 = load i8, i8* %arrayidx378.2, align 2, !tbaa !969
  %arrayidx451.2 = getelementptr inbounds i8, i8* %path1.0737, i64 %91
  store i8 %162, i8* %arrayidx451.2, align 1, !tbaa !969
  %163 = load i8, i8* %arrayidx434.2, align 2, !tbaa !969
  %arrayidx459.2 = getelementptr inbounds i8, i8* %path1.0737, i64 %93
  store i8 %163, i8* %arrayidx459.2, align 1, !tbaa !969
  %164 = load i8, i8* %arrayidx378.3, align 1, !tbaa !969
  %arrayidx451.3 = getelementptr inbounds i8, i8* %path1.0737, i64 %95
  store i8 %164, i8* %arrayidx451.3, align 1, !tbaa !969
  %165 = load i8, i8* %arrayidx434.3, align 1, !tbaa !969
  %arrayidx459.3 = getelementptr inbounds i8, i8* %path1.0737, i64 %97
  store i8 %165, i8* %arrayidx459.3, align 1, !tbaa !969
  %166 = load i8, i8* %arrayidx378.4, align 4, !tbaa !969
  %arrayidx451.4 = getelementptr inbounds i8, i8* %path1.0737, i64 %99
  store i8 %166, i8* %arrayidx451.4, align 1, !tbaa !969
  %167 = load i8, i8* %arrayidx434.4, align 4, !tbaa !969
  %arrayidx459.4 = getelementptr inbounds i8, i8* %path1.0737, i64 %101
  store i8 %167, i8* %arrayidx459.4, align 1, !tbaa !969
  %168 = load i8, i8* %arrayidx378.5, align 1, !tbaa !969
  %arrayidx451.5 = getelementptr inbounds i8, i8* %path1.0737, i64 %103
  store i8 %168, i8* %arrayidx451.5, align 1, !tbaa !969
  %169 = load i8, i8* %arrayidx434.5, align 1, !tbaa !969
  %arrayidx459.5 = getelementptr inbounds i8, i8* %path1.0737, i64 %105
  store i8 %169, i8* %arrayidx459.5, align 1, !tbaa !969
  %170 = load i8, i8* %arrayidx378.6, align 2, !tbaa !969
  %arrayidx451.6 = getelementptr inbounds i8, i8* %path1.0737, i64 %107
  store i8 %170, i8* %arrayidx451.6, align 1, !tbaa !969
  %171 = load i8, i8* %arrayidx434.6, align 2, !tbaa !969
  %arrayidx459.6 = getelementptr inbounds i8, i8* %path1.0737, i64 %109
  store i8 %171, i8* %arrayidx459.6, align 1, !tbaa !969
  %172 = load i8, i8* %arrayidx378.7, align 1, !tbaa !969
  %arrayidx451.7 = getelementptr inbounds i8, i8* %path1.0737, i64 %111
  store i8 %172, i8* %arrayidx451.7, align 1, !tbaa !969
  %173 = load i8, i8* %arrayidx434.7, align 1, !tbaa !969
  %arrayidx459.7 = getelementptr inbounds i8, i8* %path1.0737, i64 %113
  store i8 %173, i8* %arrayidx459.7, align 1, !tbaa !969
  %174 = load i8, i8* %arrayidx472, align 8, !tbaa !969
  %arrayidx478 = getelementptr inbounds i8, i8* %path1.0737, i64 %120
  store i8 %174, i8* %arrayidx478, align 1, !tbaa !969
  %175 = load i8, i8* %arrayidx434.8, align 8, !tbaa !969
  %arrayidx487 = getelementptr inbounds i8, i8* %path1.0737, i64 %123
  store i8 %175, i8* %arrayidx487, align 1, !tbaa !969
  %176 = load i8, i8* %arrayidx378.9, align 1, !tbaa !969
  %arrayidx478.1 = getelementptr inbounds i8, i8* %path1.0737, i64 %125
  store i8 %176, i8* %arrayidx478.1, align 1, !tbaa !969
  %177 = load i8, i8* %arrayidx434.9, align 1, !tbaa !969
  %arrayidx487.1 = getelementptr inbounds i8, i8* %path1.0737, i64 %127
  store i8 %177, i8* %arrayidx487.1, align 1, !tbaa !969
  %178 = load i8, i8* %arrayidx378.10, align 2, !tbaa !969
  %arrayidx478.2 = getelementptr inbounds i8, i8* %path1.0737, i64 %129
  store i8 %178, i8* %arrayidx478.2, align 1, !tbaa !969
  %179 = load i8, i8* %arrayidx434.10, align 2, !tbaa !969
  %arrayidx487.2 = getelementptr inbounds i8, i8* %path1.0737, i64 %131
  store i8 %179, i8* %arrayidx487.2, align 1, !tbaa !969
  %180 = load i8, i8* %arrayidx378.11, align 1, !tbaa !969
  %arrayidx478.3 = getelementptr inbounds i8, i8* %path1.0737, i64 %133
  store i8 %180, i8* %arrayidx478.3, align 1, !tbaa !969
  %181 = load i8, i8* %arrayidx434.11, align 1, !tbaa !969
  %arrayidx487.3 = getelementptr inbounds i8, i8* %path1.0737, i64 %135
  store i8 %181, i8* %arrayidx487.3, align 1, !tbaa !969
  %182 = load i8, i8* %arrayidx378.12, align 4, !tbaa !969
  %arrayidx478.4 = getelementptr inbounds i8, i8* %path1.0737, i64 %137
  store i8 %182, i8* %arrayidx478.4, align 1, !tbaa !969
  %183 = load i8, i8* %arrayidx434.12, align 4, !tbaa !969
  %arrayidx487.4 = getelementptr inbounds i8, i8* %path1.0737, i64 %139
  store i8 %183, i8* %arrayidx487.4, align 1, !tbaa !969
  %184 = load i8, i8* %arrayidx378.13, align 1, !tbaa !969
  %arrayidx478.5 = getelementptr inbounds i8, i8* %path1.0737, i64 %141
  store i8 %184, i8* %arrayidx478.5, align 1, !tbaa !969
  %185 = load i8, i8* %arrayidx434.13, align 1, !tbaa !969
  %arrayidx487.5 = getelementptr inbounds i8, i8* %path1.0737, i64 %143
  store i8 %185, i8* %arrayidx487.5, align 1, !tbaa !969
  %186 = load i8, i8* %arrayidx378.14, align 2, !tbaa !969
  %arrayidx478.6 = getelementptr inbounds i8, i8* %path1.0737, i64 %145
  store i8 %186, i8* %arrayidx478.6, align 1, !tbaa !969
  %arrayidx487.6 = getelementptr inbounds i8, i8* %path1.0737, i64 %147
  %187 = extractelement <16 x i8> %157, i32 14
  store i8 %187, i8* %arrayidx487.6, align 1, !tbaa !969
  %188 = load i8, i8* %arrayidx378.15, align 1, !tbaa !969
  %arrayidx478.7 = getelementptr inbounds i8, i8* %path1.0737, i64 %149
  store i8 %188, i8* %arrayidx478.7, align 1, !tbaa !969
  %arrayidx487.7 = getelementptr inbounds i8, i8* %path1.0737, i64 %151
  %189 = extractelement <16 x i8> %157, i32 15
  store i8 %189, i8* %arrayidx487.7, align 1, !tbaa !969
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1
  %exitcond824 = icmp eq i64 %indvars.iv.next811, 2
  br i1 %exitcond824, label %for.cond497.preheader, label %for.body318.preheader.for.body14_crit_edge

for.body318.preheader.for.body14_crit_edge:       ; preds = %for.body318.preheader
  %.pre = load i8, i8* %arrayidx16, align 1, !tbaa !969
  br label %for.body14
}

; Function Attrs: norecurse nounwind uwtable
define zeroext i8 @viterbi_get_output_generic(i8* nocapture %mm0, i8* nocapture %pp0, i32 %ntraceback, i8* nocapture %outbuf) local_unnamed_addr #10 {
entry:
  %0 = load i32, i32* @d_store_pos, align 4, !tbaa !703
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, %ntraceback
  store i32 %rem, i32* @d_store_pos, align 4, !tbaa !703
  %idxprom13 = sext i32 %rem to i64
  %scevgep175 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom13, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 0), i8* %mm0, i64 16, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep175, i8* %pp0, i64 16, i32 1, i1 false)
  %scevgep175.1 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom13, i64 16
  %scevgep176.1 = getelementptr i8, i8* %pp0, i64 16
  %scevgep174.1 = getelementptr i8, i8* %mm0, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 16), i8* %scevgep174.1, i64 16, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep175.1, i8* %scevgep176.1, i64 16, i32 1, i1 false)
  %scevgep175.2 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom13, i64 32
  %scevgep176.2 = getelementptr i8, i8* %pp0, i64 32
  %scevgep174.2 = getelementptr i8, i8* %mm0, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 32), i8* %scevgep174.2, i64 16, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep175.2, i8* %scevgep176.2, i64 16, i32 1, i1 false)
  %scevgep175.3 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom13, i64 48
  %scevgep176.3 = getelementptr i8, i8* %pp0, i64 48
  %scevgep174.3 = getelementptr i8, i8* %mm0, i64 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 48), i8* %scevgep174.3, i64 16, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep175.3, i8* %scevgep176.3, i64 16, i32 1, i1 false)
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 0), align 16, !tbaa !969
  %conv = zext i8 %1 to i32
  br label %for.body30

for.body30:                                       ; preds = %for.body30, %entry
  %indvars.iv167 = phi i64 [ 1, %entry ], [ %indvars.iv.next168.2, %for.body30 ]
  %beststate.0159 = phi i32 [ 0, %entry ], [ %i.1.beststate.0.2, %for.body30 ]
  %minmetric.0158 = phi i32 [ %conv, %entry ], [ %minmetric.1.2, %for.body30 ]
  %bestmetric.0157 = phi i32 [ %conv, %entry ], [ %conv33.bestmetric.0.2, %for.body30 ]
  %arrayidx32 = getelementptr inbounds [64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 %indvars.iv167
  %2 = load i8, i8* %arrayidx32, align 1, !tbaa !969
  %conv33 = zext i8 %2 to i32
  %cmp34 = icmp sgt i32 %conv33, %bestmetric.0157
  %conv33.bestmetric.0 = select i1 %cmp34, i32 %conv33, i32 %bestmetric.0157
  %3 = trunc i64 %indvars.iv167 to i32
  %i.1.beststate.0 = select i1 %cmp34, i32 %3, i32 %beststate.0159
  %cmp42 = icmp slt i32 %conv33, %minmetric.0158
  %minmetric.1 = select i1 %cmp42, i32 %conv33, i32 %minmetric.0158
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %arrayidx32.1 = getelementptr inbounds [64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 %indvars.iv.next168
  %4 = load i8, i8* %arrayidx32.1, align 1, !tbaa !969
  %conv33.1 = zext i8 %4 to i32
  %cmp34.1 = icmp sgt i32 %conv33.1, %conv33.bestmetric.0
  %conv33.bestmetric.0.1 = select i1 %cmp34.1, i32 %conv33.1, i32 %conv33.bestmetric.0
  %5 = trunc i64 %indvars.iv.next168 to i32
  %i.1.beststate.0.1 = select i1 %cmp34.1, i32 %5, i32 %i.1.beststate.0
  %cmp42.1 = icmp slt i32 %conv33.1, %minmetric.1
  %minmetric.1.1 = select i1 %cmp42.1, i32 %conv33.1, i32 %minmetric.1
  %indvars.iv.next168.1 = add nsw i64 %indvars.iv167, 2
  %arrayidx32.2 = getelementptr inbounds [64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 %indvars.iv.next168.1
  %6 = load i8, i8* %arrayidx32.2, align 1, !tbaa !969
  %conv33.2 = zext i8 %6 to i32
  %cmp34.2 = icmp sgt i32 %conv33.2, %conv33.bestmetric.0.1
  %conv33.bestmetric.0.2 = select i1 %cmp34.2, i32 %conv33.2, i32 %conv33.bestmetric.0.1
  %7 = trunc i64 %indvars.iv.next168.1 to i32
  %i.1.beststate.0.2 = select i1 %cmp34.2, i32 %7, i32 %i.1.beststate.0.1
  %cmp42.2 = icmp slt i32 %conv33.2, %minmetric.1.1
  %minmetric.1.2 = select i1 %cmp42.2, i32 %conv33.2, i32 %minmetric.1.1
  %indvars.iv.next168.2 = add nsw i64 %indvars.iv167, 3
  %exitcond169.2 = icmp eq i64 %indvars.iv.next168.2, 64
  br i1 %exitcond169.2, label %for.end51, label %for.body30

for.end51:                                        ; preds = %for.body30
  %sub = add i32 %ntraceback, -1
  %cmp53150 = icmp sgt i32 %ntraceback, 1
  %idxprom58152 = sext i32 %i.1.beststate.0.2 to i64
  %arrayidx59153 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom13, i64 %idxprom58152
  %8 = load i8, i8* %arrayidx59153, align 1, !tbaa !969
  br i1 %cmp53150, label %for.body55.preheader, label %for.end66

for.body55.preheader:                             ; preds = %for.end51
  %xtraiter = and i32 %sub, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body55.prol.loopexit, label %for.body55.prol.preheader

for.body55.prol.preheader:                        ; preds = %for.body55.preheader
  br label %for.body55.prol

for.body55.prol:                                  ; preds = %for.body55.prol.preheader
  %conv60.prol = zext i8 %8 to i64
  %shr147.prol = lshr i64 %conv60.prol, 2
  %add62.prol = add i32 %sub, %rem
  %rem63.prol = srem i32 %add62.prol, %ntraceback
  %idxprom56.prol = sext i32 %rem63.prol to i64
  %arrayidx59.prol = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom56.prol, i64 %shr147.prol
  %9 = load i8, i8* %arrayidx59.prol, align 1, !tbaa !969
  br label %for.body55.prol.loopexit

for.body55.prol.loopexit:                         ; preds = %for.body55.prol, %for.body55.preheader
  %.lcssa183.unr = phi i8 [ undef, %for.body55.preheader ], [ %9, %for.body55.prol ]
  %.unr = phi i8 [ %8, %for.body55.preheader ], [ %9, %for.body55.prol ]
  %pos.0155.unr = phi i32 [ %rem, %for.body55.preheader ], [ %rem63.prol, %for.body55.prol ]
  %i.2154.unr = phi i32 [ 0, %for.body55.preheader ], [ 1, %for.body55.prol ]
  %10 = icmp eq i32 %ntraceback, 2
  br i1 %10, label %for.end66.loopexit, label %for.body55.preheader.new

for.body55.preheader.new:                         ; preds = %for.body55.prol.loopexit
  br label %for.body55

for.body55:                                       ; preds = %for.body55, %for.body55.preheader.new
  %11 = phi i8 [ %.unr, %for.body55.preheader.new ], [ %13, %for.body55 ]
  %pos.0155 = phi i32 [ %pos.0155.unr, %for.body55.preheader.new ], [ %rem63.1, %for.body55 ]
  %i.2154 = phi i32 [ %i.2154.unr, %for.body55.preheader.new ], [ %inc65.1, %for.body55 ]
  %conv60 = zext i8 %11 to i64
  %shr147 = lshr i64 %conv60, 2
  %add62 = add i32 %sub, %pos.0155
  %rem63 = srem i32 %add62, %ntraceback
  %idxprom56 = sext i32 %rem63 to i64
  %arrayidx59 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom56, i64 %shr147
  %12 = load i8, i8* %arrayidx59, align 1, !tbaa !969
  %conv60.1 = zext i8 %12 to i64
  %shr147.1 = lshr i64 %conv60.1, 2
  %add62.1 = add i32 %sub, %rem63
  %rem63.1 = srem i32 %add62.1, %ntraceback
  %inc65.1 = add nsw i32 %i.2154, 2
  %idxprom56.1 = sext i32 %rem63.1 to i64
  %arrayidx59.1 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 %idxprom56.1, i64 %shr147.1
  %13 = load i8, i8* %arrayidx59.1, align 1, !tbaa !969
  %exitcond166.1 = icmp eq i32 %inc65.1, %sub
  br i1 %exitcond166.1, label %for.end66.loopexit.unr-lcssa, label %for.body55

for.end66.loopexit.unr-lcssa:                     ; preds = %for.body55
  br label %for.end66.loopexit

for.end66.loopexit:                               ; preds = %for.end66.loopexit.unr-lcssa, %for.body55.prol.loopexit
  %.lcssa183 = phi i8 [ %.lcssa183.unr, %for.body55.prol.loopexit ], [ %13, %for.end66.loopexit.unr-lcssa ]
  br label %for.end66

for.end66:                                        ; preds = %for.end66.loopexit, %for.end51
  %.lcssa = phi i8 [ %8, %for.end51 ], [ %.lcssa183, %for.end66.loopexit ]
  store i8 %.lcssa, i8* %outbuf, align 1, !tbaa !969
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.cond75.preheader, %for.end66
  %indvars.iv = phi i64 [ 0, %for.end66 ], [ %indvars.iv.next, %for.cond75.preheader ]
  %14 = shl i64 %indvars.iv, 4
  %arrayidx82 = getelementptr inbounds i8, i8* %pp0, i64 %14
  store i8 0, i8* %arrayidx82, align 1, !tbaa !969
  %arrayidx86 = getelementptr inbounds i8, i8* %mm0, i64 %14
  %15 = load i8, i8* %arrayidx86, align 1, !tbaa !969
  %conv87 = zext i8 %15 to i32
  %sub88 = sub nsw i32 %conv87, %minmetric.1.2
  %conv89 = trunc i32 %sub88 to i8
  store i8 %conv89, i8* %arrayidx86, align 1, !tbaa !969
  %16 = or i64 %14, 1
  %arrayidx82.1 = getelementptr inbounds i8, i8* %pp0, i64 %16
  store i8 0, i8* %arrayidx82.1, align 1, !tbaa !969
  %arrayidx86.1 = getelementptr inbounds i8, i8* %mm0, i64 %16
  %17 = load i8, i8* %arrayidx86.1, align 1, !tbaa !969
  %conv87.1 = zext i8 %17 to i32
  %sub88.1 = sub nsw i32 %conv87.1, %minmetric.1.2
  %conv89.1 = trunc i32 %sub88.1 to i8
  store i8 %conv89.1, i8* %arrayidx86.1, align 1, !tbaa !969
  %18 = or i64 %14, 2
  %arrayidx82.2 = getelementptr inbounds i8, i8* %pp0, i64 %18
  store i8 0, i8* %arrayidx82.2, align 1, !tbaa !969
  %arrayidx86.2 = getelementptr inbounds i8, i8* %mm0, i64 %18
  %19 = load i8, i8* %arrayidx86.2, align 1, !tbaa !969
  %conv87.2 = zext i8 %19 to i32
  %sub88.2 = sub nsw i32 %conv87.2, %minmetric.1.2
  %conv89.2 = trunc i32 %sub88.2 to i8
  store i8 %conv89.2, i8* %arrayidx86.2, align 1, !tbaa !969
  %20 = or i64 %14, 3
  %arrayidx82.3 = getelementptr inbounds i8, i8* %pp0, i64 %20
  store i8 0, i8* %arrayidx82.3, align 1, !tbaa !969
  %arrayidx86.3 = getelementptr inbounds i8, i8* %mm0, i64 %20
  %21 = load i8, i8* %arrayidx86.3, align 1, !tbaa !969
  %conv87.3 = zext i8 %21 to i32
  %sub88.3 = sub nsw i32 %conv87.3, %minmetric.1.2
  %conv89.3 = trunc i32 %sub88.3 to i8
  store i8 %conv89.3, i8* %arrayidx86.3, align 1, !tbaa !969
  %22 = or i64 %14, 4
  %arrayidx82.4 = getelementptr inbounds i8, i8* %pp0, i64 %22
  store i8 0, i8* %arrayidx82.4, align 1, !tbaa !969
  %arrayidx86.4 = getelementptr inbounds i8, i8* %mm0, i64 %22
  %23 = load i8, i8* %arrayidx86.4, align 1, !tbaa !969
  %conv87.4 = zext i8 %23 to i32
  %sub88.4 = sub nsw i32 %conv87.4, %minmetric.1.2
  %conv89.4 = trunc i32 %sub88.4 to i8
  store i8 %conv89.4, i8* %arrayidx86.4, align 1, !tbaa !969
  %24 = or i64 %14, 5
  %arrayidx82.5 = getelementptr inbounds i8, i8* %pp0, i64 %24
  store i8 0, i8* %arrayidx82.5, align 1, !tbaa !969
  %arrayidx86.5 = getelementptr inbounds i8, i8* %mm0, i64 %24
  %25 = load i8, i8* %arrayidx86.5, align 1, !tbaa !969
  %conv87.5 = zext i8 %25 to i32
  %sub88.5 = sub nsw i32 %conv87.5, %minmetric.1.2
  %conv89.5 = trunc i32 %sub88.5 to i8
  store i8 %conv89.5, i8* %arrayidx86.5, align 1, !tbaa !969
  %26 = or i64 %14, 6
  %arrayidx82.6 = getelementptr inbounds i8, i8* %pp0, i64 %26
  store i8 0, i8* %arrayidx82.6, align 1, !tbaa !969
  %arrayidx86.6 = getelementptr inbounds i8, i8* %mm0, i64 %26
  %27 = load i8, i8* %arrayidx86.6, align 1, !tbaa !969
  %conv87.6 = zext i8 %27 to i32
  %sub88.6 = sub nsw i32 %conv87.6, %minmetric.1.2
  %conv89.6 = trunc i32 %sub88.6 to i8
  store i8 %conv89.6, i8* %arrayidx86.6, align 1, !tbaa !969
  %28 = or i64 %14, 7
  %arrayidx82.7 = getelementptr inbounds i8, i8* %pp0, i64 %28
  store i8 0, i8* %arrayidx82.7, align 1, !tbaa !969
  %arrayidx86.7 = getelementptr inbounds i8, i8* %mm0, i64 %28
  %29 = load i8, i8* %arrayidx86.7, align 1, !tbaa !969
  %conv87.7 = zext i8 %29 to i32
  %sub88.7 = sub nsw i32 %conv87.7, %minmetric.1.2
  %conv89.7 = trunc i32 %sub88.7 to i8
  store i8 %conv89.7, i8* %arrayidx86.7, align 1, !tbaa !969
  %30 = or i64 %14, 8
  %arrayidx82.8 = getelementptr inbounds i8, i8* %pp0, i64 %30
  store i8 0, i8* %arrayidx82.8, align 1, !tbaa !969
  %arrayidx86.8 = getelementptr inbounds i8, i8* %mm0, i64 %30
  %31 = load i8, i8* %arrayidx86.8, align 1, !tbaa !969
  %conv87.8 = zext i8 %31 to i32
  %sub88.8 = sub nsw i32 %conv87.8, %minmetric.1.2
  %conv89.8 = trunc i32 %sub88.8 to i8
  store i8 %conv89.8, i8* %arrayidx86.8, align 1, !tbaa !969
  %32 = or i64 %14, 9
  %arrayidx82.9 = getelementptr inbounds i8, i8* %pp0, i64 %32
  store i8 0, i8* %arrayidx82.9, align 1, !tbaa !969
  %arrayidx86.9 = getelementptr inbounds i8, i8* %mm0, i64 %32
  %33 = load i8, i8* %arrayidx86.9, align 1, !tbaa !969
  %conv87.9 = zext i8 %33 to i32
  %sub88.9 = sub nsw i32 %conv87.9, %minmetric.1.2
  %conv89.9 = trunc i32 %sub88.9 to i8
  store i8 %conv89.9, i8* %arrayidx86.9, align 1, !tbaa !969
  %34 = or i64 %14, 10
  %arrayidx82.10 = getelementptr inbounds i8, i8* %pp0, i64 %34
  store i8 0, i8* %arrayidx82.10, align 1, !tbaa !969
  %arrayidx86.10 = getelementptr inbounds i8, i8* %mm0, i64 %34
  %35 = load i8, i8* %arrayidx86.10, align 1, !tbaa !969
  %conv87.10 = zext i8 %35 to i32
  %sub88.10 = sub nsw i32 %conv87.10, %minmetric.1.2
  %conv89.10 = trunc i32 %sub88.10 to i8
  store i8 %conv89.10, i8* %arrayidx86.10, align 1, !tbaa !969
  %36 = or i64 %14, 11
  %arrayidx82.11 = getelementptr inbounds i8, i8* %pp0, i64 %36
  store i8 0, i8* %arrayidx82.11, align 1, !tbaa !969
  %arrayidx86.11 = getelementptr inbounds i8, i8* %mm0, i64 %36
  %37 = load i8, i8* %arrayidx86.11, align 1, !tbaa !969
  %conv87.11 = zext i8 %37 to i32
  %sub88.11 = sub nsw i32 %conv87.11, %minmetric.1.2
  %conv89.11 = trunc i32 %sub88.11 to i8
  store i8 %conv89.11, i8* %arrayidx86.11, align 1, !tbaa !969
  %38 = or i64 %14, 12
  %arrayidx82.12 = getelementptr inbounds i8, i8* %pp0, i64 %38
  store i8 0, i8* %arrayidx82.12, align 1, !tbaa !969
  %arrayidx86.12 = getelementptr inbounds i8, i8* %mm0, i64 %38
  %39 = load i8, i8* %arrayidx86.12, align 1, !tbaa !969
  %conv87.12 = zext i8 %39 to i32
  %sub88.12 = sub nsw i32 %conv87.12, %minmetric.1.2
  %conv89.12 = trunc i32 %sub88.12 to i8
  store i8 %conv89.12, i8* %arrayidx86.12, align 1, !tbaa !969
  %40 = or i64 %14, 13
  %arrayidx82.13 = getelementptr inbounds i8, i8* %pp0, i64 %40
  store i8 0, i8* %arrayidx82.13, align 1, !tbaa !969
  %arrayidx86.13 = getelementptr inbounds i8, i8* %mm0, i64 %40
  %41 = load i8, i8* %arrayidx86.13, align 1, !tbaa !969
  %conv87.13 = zext i8 %41 to i32
  %sub88.13 = sub nsw i32 %conv87.13, %minmetric.1.2
  %conv89.13 = trunc i32 %sub88.13 to i8
  store i8 %conv89.13, i8* %arrayidx86.13, align 1, !tbaa !969
  %42 = or i64 %14, 14
  %arrayidx82.14 = getelementptr inbounds i8, i8* %pp0, i64 %42
  store i8 0, i8* %arrayidx82.14, align 1, !tbaa !969
  %arrayidx86.14 = getelementptr inbounds i8, i8* %mm0, i64 %42
  %43 = load i8, i8* %arrayidx86.14, align 1, !tbaa !969
  %conv87.14 = zext i8 %43 to i32
  %sub88.14 = sub nsw i32 %conv87.14, %minmetric.1.2
  %conv89.14 = trunc i32 %sub88.14 to i8
  store i8 %conv89.14, i8* %arrayidx86.14, align 1, !tbaa !969
  %44 = or i64 %14, 15
  %arrayidx82.15 = getelementptr inbounds i8, i8* %pp0, i64 %44
  store i8 0, i8* %arrayidx82.15, align 1, !tbaa !969
  %arrayidx86.15 = getelementptr inbounds i8, i8* %mm0, i64 %44
  %45 = load i8, i8* %arrayidx86.15, align 1, !tbaa !969
  %conv87.15 = zext i8 %45 to i32
  %sub88.15 = sub nsw i32 %conv87.15, %minmetric.1.2
  %conv89.15 = trunc i32 %sub88.15 to i8
  store i8 %conv89.15, i8* %arrayidx86.15, align 1, !tbaa !969
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.end99, label %for.cond75.preheader

for.end99:                                        ; preds = %for.cond75.preheader
  %conv100 = trunc i32 %conv33.bestmetric.0.2 to i8
  ret i8 %conv100
}

; Function Attrs: nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #0 {
entry:
  %c = alloca i8, align 1
  store %struct.ofdm_param* %ofdm, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !728
  store %struct.frame_param* %frame, %struct.frame_param** @d_frame, align 8, !tbaa !728
  tail call void @viterbi_chunks_init_generic() #6
  %encoding.i = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %0 = load i32, i32* %encoding.i, align 4, !tbaa !2505
  %1 = icmp ult i32 %0, 8
  br i1 %1, label %switch.lookup.i, label %reset.exit

switch.lookup.i:                                  ; preds = %entry
  %2 = sext i32 %0 to i64
  %switch.gep.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.82, i64 0, i64 %2
  %switch.load.i = load i32, i32* %switch.gep.i, align 4
  %switch.gep5.i = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %2
  %3 = bitcast i8** %switch.gep5.i to i64*
  %switch.load69.i = load i64, i64* %3, align 8
  %switch.gep7.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %2
  %switch.load8.i = load i32, i32* %switch.gep7.i, align 4
  store i32 %switch.load.i, i32* @d_ntraceback, align 4, !tbaa !703
  store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !728
  store i32 %switch.load8.i, i32* @d_k, align 4, !tbaa !703
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %entry
  %call = tail call i8* @depuncture(i8* %in)
  %n_data_bits41 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %4 = load i32, i32* %n_data_bits41, align 4, !tbaa !2506
  %cmp42 = icmp sgt i32 %4, 0
  br i1 %cmp42, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %reset.exit
  br label %while.body

while.body:                                       ; preds = %if.end19, %while.body.preheader
  %n_decoded.045 = phi i32 [ %n_decoded.3, %if.end19 ], [ 0, %while.body.preheader ]
  %out_count.044 = phi i32 [ %out_count.1, %if.end19 ], [ 0, %while.body.preheader ]
  %in_count.043 = phi i32 [ %inc20, %if.end19 ], [ 0, %while.body.preheader ]
  %rem38 = and i32 %in_count.043, 3
  %cmp1 = icmp eq i32 %rem38, 0
  br i1 %cmp1, label %if.then, label %if.end19

if.then:                                          ; preds = %while.body
  %and = and i32 %in_count.043, -4
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %idxprom
  tail call void @viterbi_butterfly2_generic(i8* %arrayidx, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_metric0_generic, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_metric1_generic, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_path0_generic, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_path1_generic, i64 0, i64 0))
  %cmp2 = icmp sgt i32 %in_count.043, 0
  %rem3 = srem i32 %in_count.043, 16
  %cmp4 = icmp eq i32 %rem3, 8
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start(i64 1, i8* nonnull %c) #6
  %5 = load i32, i32* @d_ntraceback, align 4, !tbaa !703
  %call6 = call zeroext i8 @viterbi_get_output_generic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_metric0_generic, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_path0_generic, i64 0, i64 0), i32 %5, i8* nonnull %c)
  %6 = load i32, i32* @d_ntraceback, align 4, !tbaa !703
  %cmp7 = icmp slt i32 %out_count.044, %6
  br i1 %cmp7, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then5
  %7 = load i8, i8* %c, align 1, !tbaa !969
  %sub12 = sub nsw i32 %out_count.044, %6
  %mul = shl i32 %sub12, 3
  %8 = sext i32 %mul to i64
  %shr = lshr i8 %7, 7
  %arrayidx14 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %8
  store i8 %shr, i8* %arrayidx14, align 8, !tbaa !969
  %shr.1 = lshr i8 %7, 6
  %conv11.1 = and i8 %shr.1, 1
  %9 = or i64 %8, 1
  %arrayidx14.1 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %9
  store i8 %conv11.1, i8* %arrayidx14.1, align 1, !tbaa !969
  %shr.2 = lshr i8 %7, 5
  %conv11.2 = and i8 %shr.2, 1
  %10 = or i64 %8, 2
  %arrayidx14.2 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %10
  store i8 %conv11.2, i8* %arrayidx14.2, align 2, !tbaa !969
  %shr.3 = lshr i8 %7, 4
  %conv11.3 = and i8 %shr.3, 1
  %11 = or i64 %8, 3
  %arrayidx14.3 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %11
  store i8 %conv11.3, i8* %arrayidx14.3, align 1, !tbaa !969
  %shr.4 = lshr i8 %7, 3
  %conv11.4 = and i8 %shr.4, 1
  %12 = or i64 %8, 4
  %arrayidx14.4 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %12
  store i8 %conv11.4, i8* %arrayidx14.4, align 4, !tbaa !969
  %shr.5 = lshr i8 %7, 2
  %conv11.5 = and i8 %shr.5, 1
  %13 = or i64 %8, 5
  %arrayidx14.5 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %13
  store i8 %conv11.5, i8* %arrayidx14.5, align 1, !tbaa !969
  %shr.6 = lshr i8 %7, 1
  %conv11.6 = and i8 %shr.6, 1
  %14 = or i64 %8, 6
  %arrayidx14.6 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %14
  store i8 %conv11.6, i8* %arrayidx14.6, align 2, !tbaa !969
  %conv11.7 = and i8 %7, 1
  %15 = or i64 %8, 7
  %arrayidx14.7 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %15
  store i8 %conv11.7, i8* %arrayidx14.7, align 1, !tbaa !969
  %16 = add i32 %n_decoded.045, 8
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %if.then5
  %n_decoded.2 = phi i32 [ %n_decoded.045, %if.then5 ], [ %16, %for.cond.preheader ]
  %inc17 = add nsw i32 %out_count.044, 1
  call void @llvm.lifetime.end(i64 1, i8* nonnull %c) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then, %while.body
  %out_count.1 = phi i32 [ %inc17, %if.end ], [ %out_count.044, %if.then ], [ %out_count.044, %while.body ]
  %n_decoded.3 = phi i32 [ %n_decoded.2, %if.end ], [ %n_decoded.045, %if.then ], [ %n_decoded.045, %while.body ]
  %inc20 = add nuw nsw i32 %in_count.043, 1
  %17 = load i32, i32* %n_data_bits41, align 4, !tbaa !2506
  %cmp = icmp slt i32 %n_decoded.3, %17
  br i1 %cmp, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end19
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %reset.exit
  %n_decoded.0.lcssa = phi i32 [ 0, %reset.exit ], [ %n_decoded.3, %while.end.loopexit ]
  store i32 %n_decoded.0.lcssa, i32* %n_dec_char, align 4, !tbaa !703
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: norecurse nounwind uwtable
define void @viterbi_chunks_init_generic() local_unnamed_addr #10 {
entry:
  store i32 0, i32* bitcast ([64 x i8]* @d_metric0_generic to i32*), align 16
  store i32 0, i32* bitcast ([64 x i8]* @d_path0_generic to i32*), align 16
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %entry
  %indvars.iv81 = phi i64 [ 0, %entry ], [ %indvars.iv.next82.1, %for.body5 ]
  %indvars.iv81.tr = trunc i64 %indvars.iv81 to i32
  %0 = shl i32 %indvars.iv81.tr, 1
  %and = and i32 %0, 108
  %idxprom975 = zext i32 %and to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom975
  %1 = load i8, i8* %arrayidx10, align 4, !tbaa !969
  %tobool = icmp ne i8 %1, 0
  %conv12 = zext i1 %tobool to i8
  %arrayidx14 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv81
  store i8 %conv12, i8* %arrayidx14, align 2, !tbaa !969
  %and21 = and i32 %0, 76
  %idxprom2276 = zext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom2276
  %2 = load i8, i8* %arrayidx23, align 4, !tbaa !969
  %tobool26 = icmp ne i8 %2, 0
  %conv28 = zext i1 %tobool26 to i8
  %arrayidx30 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv81
  store i8 %conv28, i8* %arrayidx30, align 2, !tbaa !969
  %indvars.iv.next82 = or i64 %indvars.iv81, 1
  %indvars.iv81.tr.1 = trunc i64 %indvars.iv.next82 to i32
  %3 = shl i32 %indvars.iv81.tr.1, 1
  %and.1 = and i32 %3, 108
  %idxprom975.1 = zext i32 %and.1 to i64
  %arrayidx10.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom975.1
  %4 = load i8, i8* %arrayidx10.1, align 4, !tbaa !969
  %tobool.1 = icmp ne i8 %4, 0
  %conv12.1 = zext i1 %tobool.1 to i8
  %arrayidx14.1 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next82
  store i8 %conv12.1, i8* %arrayidx14.1, align 1, !tbaa !969
  %and21.1 = and i32 %3, 78
  %idxprom2276.1 = zext i32 %and21.1 to i64
  %arrayidx23.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom2276.1
  %5 = load i8, i8* %arrayidx23.1, align 2, !tbaa !969
  %tobool26.1 = icmp ne i8 %5, 0
  %conv28.1 = zext i1 %tobool26.1 to i8
  %arrayidx30.1 = getelementptr inbounds [2 x %union.branchtab27], [2 x %union.branchtab27]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next82
  store i8 %conv28.1, i8* %arrayidx30.1, align 1, !tbaa !969
  %indvars.iv.next82.1 = add nsw i64 %indvars.iv81, 2
  %exitcond84.1 = icmp eq i64 %indvars.iv.next82.1, 32
  br i1 %exitcond84.1, label %for.body37.preheader, label %for.body5

for.body37.preheader:                             ; preds = %for.body5
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 0), i8 0, i64 64, i32 16, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %for.body37.preheader
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast ([24 x [64 x i8]]* @d_ppresult to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 1, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 2, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 3, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 4, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 5, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 6, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 7, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 8, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 9, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 10, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 11, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 12, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 13, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 14, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 15, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 16, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 17, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 18, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 19, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 20, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 21, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 22, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 23, i64 0) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 0, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 1, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 2, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 3, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 4, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 5, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 6, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 7, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 8, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 9, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 10, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 11, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 12, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 13, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 14, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 15, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 16, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 17, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 18, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 19, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 20, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 21, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 22, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 23, i64 16) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 0, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 1, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 2, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 3, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 4, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 5, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 6, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 7, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 8, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 9, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 10, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 11, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 12, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 13, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 14, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 15, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 16, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 17, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 18, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 19, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 20, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 21, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 22, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 23, i64 32) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 0, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 1, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 2, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 3, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 4, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 5, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 6, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 7, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 8, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 9, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 10, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 11, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 12, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 13, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 14, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 15, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 16, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 17, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 18, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 19, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 20, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 21, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 22, i64 48) to <16 x i8>*), align 16, !tbaa !969
  store <16 x i8> zeroinitializer, <16 x i8>* bitcast (i8* getelementptr inbounds ([24 x [64 x i8]], [24 x [64 x i8]]* @d_ppresult, i64 0, i64 23, i64 48) to <16 x i8>*), align 16, !tbaa !969
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @reset() local_unnamed_addr #10 {
entry:
  tail call void @viterbi_chunks_init_generic()
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !728
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 0
  %1 = load i32, i32* %encoding, align 4, !tbaa !2505
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %3 = sext i32 %1 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.82, i64 0, i64 %3
  %switch.load = load i32, i32* %switch.gep, align 4
  %switch.gep5 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %3
  %4 = bitcast i8** %switch.gep5 to i64*
  %switch.load69 = load i64, i64* %4, align 8
  %switch.gep7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %3
  %switch.load8 = load i32, i32* %switch.gep7, align 4
  store i32 %switch.load, i32* @d_ntraceback, align 4, !tbaa !703
  store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !728
  store i32 %switch.load8, i32* @d_k, align 4, !tbaa !703
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @descrambler(i8* nocapture readonly %in, i32 %psdusize, i8* nocapture %out_msg, i8* readonly %ref, i8* readonly %msg) local_unnamed_addr #0 {
entry:
  %add = add nsw i32 %psdusize, 2
  %0 = zext i32 %add to i64
  %vla = alloca i8, i64 %0, align 16
  %cmp1 = icmp ne i8* %msg, null
  %1 = load i8, i8* %in, align 1, !tbaa !969
  %tobool = icmp eq i8 %1, 0
  %. = select i1 %tobool, i32 0, i32 64
  %add.ptr.1 = getelementptr inbounds i8, i8* %in, i64 1
  %2 = load i8, i8* %add.ptr.1, align 1, !tbaa !969
  %tobool.1 = icmp eq i8 %2, 0
  %or.1 = or i32 %., 32
  %state.1.1 = select i1 %tobool.1, i32 %., i32 %or.1
  %add.ptr.2 = getelementptr inbounds i8, i8* %in, i64 2
  %3 = load i8, i8* %add.ptr.2, align 1, !tbaa !969
  %tobool.2 = icmp eq i8 %3, 0
  %or.2 = or i32 %state.1.1, 16
  %state.1.1.or.2 = select i1 %tobool.2, i32 %state.1.1, i32 %or.2
  %add.ptr.3 = getelementptr inbounds i8, i8* %in, i64 3
  %4 = load i8, i8* %add.ptr.3, align 1, !tbaa !969
  %tobool.3 = icmp eq i8 %4, 0
  %or.3 = or i32 %state.1.1.or.2, 8
  %state.1.3 = select i1 %tobool.3, i32 %state.1.1.or.2, i32 %or.3
  %add.ptr.4 = getelementptr inbounds i8, i8* %in, i64 4
  %5 = load i8, i8* %add.ptr.4, align 1, !tbaa !969
  %tobool.4 = icmp eq i8 %5, 0
  %or.4 = or i32 %state.1.3, 4
  %state.1.3.or.4 = select i1 %tobool.4, i32 %state.1.3, i32 %or.4
  %add.ptr.5 = getelementptr inbounds i8, i8* %in, i64 5
  %6 = load i8, i8* %add.ptr.5, align 1, !tbaa !969
  %tobool.5 = icmp eq i8 %6, 0
  %or.5 = or i32 %state.1.3.or.4, 2
  %state.1.5 = select i1 %tobool.5, i32 %state.1.3.or.4, i32 %or.5
  %add.ptr.6 = getelementptr inbounds i8, i8* %in, i64 6
  %7 = load i8, i8* %add.ptr.6, align 1, !tbaa !969
  %not.tobool.6 = icmp ne i8 %7, 0
  %or.6 = zext i1 %not.tobool.6 to i32
  %state.1.5.or.6 = or i32 %state.1.5, %or.6
  %sub = add nsw i32 %psdusize, -28
  %cmp = icmp ne i8* %ref, null
  %8 = and i1 %cmp, %cmp1
  %cmp6253 = icmp eq i32 %add, 0
  br i1 %cmp6253, label %for.cond.cleanup7.thread, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %entry
  %9 = add i32 %psdusize, 1
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  call void @llvm.memset.p0i8.i64(i8* nonnull %vla, i8 0, i64 %11, i32 16, i1 false)
  %conv = trunc i32 %state.1.5.or.6 to i8
  store i8 %conv, i8* %vla, align 16, !tbaa !969
  %mul = shl i32 %psdusize, 3
  %add15 = add nsw i32 %mul, 16
  %cmp16250 = icmp sgt i32 %add15, 7
  br i1 %cmp16250, label %for.body19.preheader, label %for.cond51.preheader

for.body19.preheader:                             ; preds = %for.cond.cleanup7
  %wide.trip.count272 = zext i32 %add15 to i64
  br label %for.body19

for.cond51.preheader.loopexit:                    ; preds = %for.body19
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.cond.cleanup7.thread, %for.cond51.preheader.loopexit, %for.cond.cleanup7
  %cmp52248 = icmp eq i32 %sub, 0
  br i1 %cmp52248, label %for.cond.cleanup54, label %for.body55.preheader

for.body55.preheader:                             ; preds = %for.cond51.preheader
  %scevgep = getelementptr i8, i8* %vla, i64 26
  %12 = add i32 %psdusize, -29
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %out_msg, i8* %scevgep, i64 %14, i32 1, i1 false)
  br label %for.cond.cleanup54

for.body19:                                       ; preds = %for.body19, %for.body19.preheader
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %for.body19 ], [ 7, %for.body19.preheader ]
  %state.2252 = phi i32 [ %or46, %for.body19 ], [ %state.1.5.or.6, %for.body19.preheader ]
  %and = lshr i32 %state.2252, 6
  %and22 = lshr i32 %state.2252, 3
  %and.lobit237 = xor i32 %and, %and22
  %xor = and i32 %and.lobit237, 1
  %add.ptr29 = getelementptr inbounds i8, i8* %in, i64 %indvars.iv270
  %15 = load i8, i8* %add.ptr29, align 1, !tbaa !969
  %16 = and i8 %15, 1
  %and31 = zext i8 %16 to i32
  %xor32 = xor i32 %and31, %xor
  %17 = trunc i64 %indvars.iv270 to i32
  %div = sdiv i32 %17, 8
  %rem238 = and i32 %17, 7
  %shl33 = shl i32 %xor32, %rem238
  %idxprom34 = sext i32 %div to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %vla, i64 %idxprom34
  %18 = load i8, i8* %arrayidx35, align 1, !tbaa !969
  %conv36 = zext i8 %18 to i32
  %or37 = or i32 %shl33, %conv36
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, i8* %arrayidx35, align 1, !tbaa !969
  %shl44 = shl i32 %state.2252, 1
  %and45 = and i32 %shl44, 126
  %or46 = or i32 %xor, %and45
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1
  %exitcond273 = icmp eq i64 %indvars.iv.next271, %wide.trip.count272
  br i1 %exitcond273, label %for.cond51.preheader.loopexit, label %for.body19

for.cond.cleanup54:                               ; preds = %for.body55.preheader, %for.cond51.preheader
  %idxprom64 = zext i32 %sub to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %out_msg, i64 %idxprom64
  store i8 0, i8* %arrayidx65, align 1, !tbaa !969
  br i1 %8, label %if.then67, label %if.end153

if.then67:                                        ; preds = %for.cond.cleanup54
  %putchar = tail call i32 @putchar(i32 10) #6
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @str.85, i64 0, i64 0))
  br i1 %cmp6253, label %if.else, label %for.body74.preheader

for.body74.preheader:                             ; preds = %if.then67
  br label %for.body74

for.cond.cleanup73:                               ; preds = %for.inc93
  %cmp96 = icmp eq i32 %des_error_count.1, 0
  br i1 %cmp96, label %if.else, label %if.then98

for.body74:                                       ; preds = %for.inc93, %for.body74.preheader
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %for.inc93 ], [ 0, %for.body74.preheader ]
  %des_error_count.0245 = phi i32 [ %des_error_count.1, %for.inc93 ], [ 0, %for.body74.preheader ]
  %arrayidx76 = getelementptr inbounds i8, i8* %vla, i64 %indvars.iv261
  %19 = load i8, i8* %arrayidx76, align 1, !tbaa !969
  %add.ptr79 = getelementptr inbounds i8, i8* %ref, i64 %indvars.iv261
  %20 = load i8, i8* %add.ptr79, align 1, !tbaa !969
  %cmp81 = icmp eq i8 %19, %20
  br i1 %cmp81, label %for.inc93, label %if.then83

if.then83:                                        ; preds = %for.body74
  %conv77 = zext i8 %19 to i32
  %conv80 = zext i8 %20 to i32
  %21 = trunc i64 %indvars.iv261 to i32
  %call90 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2.86, i64 0, i64 0), i32 %21, i32 %conv77, i32 %conv80, i32 %21)
  %inc91 = add nsw i32 %des_error_count.0245, 1
  br label %for.inc93

for.inc93:                                        ; preds = %if.then83, %for.body74
  %des_error_count.1 = phi i32 [ %inc91, %if.then83 ], [ %des_error_count.0245, %for.body74 ]
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  %exitcond264 = icmp eq i64 %indvars.iv.next262, %0
  br i1 %exitcond264, label %for.cond.cleanup73, label %for.body74

if.then98:                                        ; preds = %for.cond.cleanup73
  %puts236 = tail call i32 @puts(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @str.14, i64 0, i64 0))
  br label %if.end101

if.else:                                          ; preds = %for.cond.cleanup73, %if.then67
  %puts228 = tail call i32 @puts(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @str.10.87, i64 0, i64 0))
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.then98
  %putchar229 = tail call i32 @putchar(i32 10) #6
  %puts230 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @str.11, i64 0, i64 0))
  br i1 %cmp52248, label %for.cond.cleanup108.thread, label %for.body109.preheader

for.body109.preheader:                            ; preds = %if.end101
  br label %for.body109

for.cond.cleanup108.thread:                       ; preds = %if.end101
  %putchar231287 = tail call i32 @putchar(i32 10) #6
  br label %if.else149

for.cond.cleanup108:                              ; preds = %for.body109
  %putchar231 = tail call i32 @putchar(i32 10) #6
  br i1 %cmp52248, label %if.else149, label %for.body123.preheader

for.body123.preheader:                            ; preds = %for.cond.cleanup108
  br label %for.body123

for.body109:                                      ; preds = %for.body109, %for.body109.preheader
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %for.body109 ], [ 0, %for.body109.preheader ]
  %arrayidx111 = getelementptr inbounds i8, i8* %out_msg, i64 %indvars.iv257
  %22 = load i8, i8* %arrayidx111, align 1, !tbaa !969
  %conv112 = sext i8 %22 to i32
  %putchar235 = tail call i32 @putchar(i32 %conv112) #6
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %exitcond260 = icmp eq i64 %indvars.iv.next258, %idxprom64
  br i1 %exitcond260, label %for.cond.cleanup108, label %for.body109

for.cond.cleanup122:                              ; preds = %for.inc142
  %cmp145 = icmp eq i32 %msg_error_count.1, 0
  br i1 %cmp145, label %if.else149, label %if.then147

for.body123:                                      ; preds = %for.inc142, %for.body123.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc142 ], [ 0, %for.body123.preheader ]
  %msg_error_count.0240 = phi i32 [ %msg_error_count.1, %for.inc142 ], [ 0, %for.body123.preheader ]
  %arrayidx125 = getelementptr inbounds i8, i8* %out_msg, i64 %indvars.iv
  %23 = load i8, i8* %arrayidx125, align 1, !tbaa !969
  %conv126 = sext i8 %23 to i32
  %add.ptr128 = getelementptr inbounds i8, i8* %msg, i64 %indvars.iv
  %24 = load i8, i8* %add.ptr128, align 1, !tbaa !969
  %conv129 = zext i8 %24 to i32
  %cmp130 = icmp eq i32 %conv126, %conv129
  br i1 %cmp130, label %for.inc142, label %if.then132

if.then132:                                       ; preds = %for.body123
  %25 = trunc i64 %indvars.iv to i32
  %call139 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7.88, i64 0, i64 0), i32 %25, i32 %conv126, i32 %conv129, i32 %25)
  %inc140 = add nsw i32 %msg_error_count.0240, 1
  br label %for.inc142

for.inc142:                                       ; preds = %if.then132, %for.body123
  %msg_error_count.1 = phi i32 [ %inc140, %if.then132 ], [ %msg_error_count.0240, %for.body123 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %idxprom64
  br i1 %exitcond, label %for.cond.cleanup122, label %for.body123

if.then147:                                       ; preds = %for.cond.cleanup122
  %puts234 = tail call i32 @puts(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @str.13, i64 0, i64 0))
  br label %if.end151

if.else149:                                       ; preds = %for.cond.cleanup122, %for.cond.cleanup108, %for.cond.cleanup108.thread
  %puts232 = tail call i32 @puts(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @str.12, i64 0, i64 0))
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %if.then147
  %putchar233 = tail call i32 @putchar(i32 10) #6
  br label %if.end153

if.end153:                                        ; preds = %if.end151, %for.cond.cleanup54
  ret void

for.cond.cleanup7.thread:                         ; preds = %entry
  %conv282 = trunc i32 %state.1.5.or.6 to i8
  store i8 %conv282, i8* %vla, align 16, !tbaa !969
  br label %for.cond51.preheader
}

declare i32 @putchar(i32)

; Function Attrs: noinline nounwind uwtable
define void @init_calculate_peak_dist(i32 %fft_logn_samples) #11 !dbg !2507 {
entry:
  %fft_logn_samples.addr = alloca i32, align 4
  store i32 %fft_logn_samples, i32* %fft_logn_samples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fft_logn_samples.addr, metadata !2510, metadata !700), !dbg !2511
  %0 = load i32, i32* %fft_logn_samples.addr, align 4, !dbg !2512
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb1
  ], !dbg !2513

sw.bb:                                            ; preds = %entry
  store i32 10, i32* @RADAR_LOGN, align 4, !dbg !2514
  store float 2.048000e+05, float* @RADAR_fs, align 4, !dbg !2516
  store float 0x421BF08EC0000000, float* @RADAR_alpha, align 4, !dbg !2517
  store float 0x3F34B599A0000000, float* @RADAR_psd_threshold, align 4, !dbg !2518
  br label %sw.epilog, !dbg !2519

sw.bb1:                                           ; preds = %entry
  store i32 14, i32* @RADAR_LOGN, align 4, !dbg !2520
  store float 3.276800e+07, float* @RADAR_fs, align 4, !dbg !2521
  store float 0x4291765920000000, float* @RADAR_alpha, align 4, !dbg !2522
  %call = call double @pow(double 8.192000e+03, double 2.000000e+00) #6, !dbg !2523
  %mul = fmul double 1.000000e-10, %call, !dbg !2524
  %conv = fptrunc double %mul to float, !dbg !2525
  store float %conv, float* @RADAR_psd_threshold, align 4, !dbg !2526
  br label %sw.epilog, !dbg !2527

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %fft_logn_samples.addr, align 4, !dbg !2528
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.93, i32 0, i32 0), i32 %1), !dbg !2529
  call void @exit(i32 -1) #13, !dbg !2530
  unreachable, !dbg !2530

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %2 = load i32, i32* @RADAR_LOGN, align 4, !dbg !2531
  %shl = shl i32 1, %2, !dbg !2532
  store i32 %shl, i32* @RADAR_N, align 4, !dbg !2533
  ret void, !dbg !2534
}

; Function Attrs: nounwind
declare double @pow(double, double) #12

; Function Attrs: noinline nounwind uwtable
define float @calculate_peak_dist_from_fmcw(float* %data) #11 !dbg !2535 {
entry:
  %retval = alloca float, align 4
  %data.addr = alloca float*, align 8
  %max_psd = alloca float, align 4
  %max_index = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca float, align 4
  %distance = alloca float, align 4
  store float* %data, float** %data.addr, align 8
  call void @llvm.dbg.declare(metadata float** %data.addr, metadata !2538, metadata !700), !dbg !2539
  %0 = load float*, float** %data.addr, align 8, !dbg !2540
  %1 = load i32, i32* @RADAR_N, align 4, !dbg !2541
  %2 = load i32, i32* @RADAR_LOGN, align 4, !dbg !2542
  %call = call i32 @fft(float* %0, i32 %1, i32 %2, i32 -1), !dbg !2543
  call void @llvm.dbg.declare(metadata float* %max_psd, metadata !2544, metadata !700), !dbg !2545
  store float 0.000000e+00, float* %max_psd, align 4, !dbg !2545
  call void @llvm.dbg.declare(metadata i32* %max_index, metadata !2546, metadata !700), !dbg !2547
  store i32 0, i32* %max_index, align 4, !dbg !2547
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2548, metadata !700), !dbg !2549
  call void @llvm.dbg.declare(metadata float* %temp, metadata !2550, metadata !700), !dbg !2551
  store i32 0, i32* %i, align 4, !dbg !2552
  br label %for.cond, !dbg !2554

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !2555
  %4 = load i32, i32* @RADAR_N, align 4, !dbg !2558
  %cmp = icmp ult i32 %3, %4, !dbg !2559
  br i1 %cmp, label %for.body, label %for.end, !dbg !2560

for.body:                                         ; preds = %for.cond
  %5 = load float*, float** %data.addr, align 8, !dbg !2562
  %6 = load i32, i32* %i, align 4, !dbg !2564
  %mul = mul i32 2, %6, !dbg !2565
  %idxprom = zext i32 %mul to i64, !dbg !2562
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom, !dbg !2562
  %7 = load float, float* %arrayidx, align 4, !dbg !2562
  %conv = fpext float %7 to double, !dbg !2562
  %call1 = call double @pow(double %conv, double 2.000000e+00) #6, !dbg !2566
  %8 = load float*, float** %data.addr, align 8, !dbg !2567
  %9 = load i32, i32* %i, align 4, !dbg !2568
  %mul2 = mul i32 2, %9, !dbg !2569
  %add = add i32 %mul2, 1, !dbg !2570
  %idxprom3 = zext i32 %add to i64, !dbg !2567
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 %idxprom3, !dbg !2567
  %10 = load float, float* %arrayidx4, align 4, !dbg !2567
  %conv5 = fpext float %10 to double, !dbg !2567
  %call6 = call double @pow(double %conv5, double 2.000000e+00) #6, !dbg !2571
  %add7 = fadd double %call1, %call6, !dbg !2573
  %div = fdiv double %add7, 1.000000e+02, !dbg !2574
  %conv8 = fptrunc double %div to float, !dbg !2575
  store float %conv8, float* %temp, align 4, !dbg !2576
  %11 = load float, float* %temp, align 4, !dbg !2577
  %12 = load float, float* %max_psd, align 4, !dbg !2579
  %cmp9 = fcmp ogt float %11, %12, !dbg !2580
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2581

if.then:                                          ; preds = %for.body
  %13 = load float, float* %temp, align 4, !dbg !2582
  store float %13, float* %max_psd, align 4, !dbg !2584
  %14 = load i32, i32* %i, align 4, !dbg !2585
  store i32 %14, i32* %max_index, align 4, !dbg !2586
  br label %if.end, !dbg !2587

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2588

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !2589
  %inc = add i32 %15, 1, !dbg !2589
  store i32 %inc, i32* %i, align 4, !dbg !2589
  br label %for.cond, !dbg !2591, !llvm.loop !2592

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata float* %distance, metadata !2595, metadata !700), !dbg !2596
  %16 = load i32, i32* %max_index, align 4, !dbg !2597
  %conv11 = uitofp i32 %16 to float, !dbg !2597
  %17 = load float, float* @RADAR_fs, align 4, !dbg !2598
  %mul12 = fmul float %conv11, %17, !dbg !2599
  %18 = load i32, i32* @RADAR_N, align 4, !dbg !2600
  %conv13 = uitofp i32 %18 to float, !dbg !2601
  %div14 = fdiv float %mul12, %conv13, !dbg !2602
  %conv15 = fpext float %div14 to double, !dbg !2603
  %mul16 = fmul double %conv15, 5.000000e-01, !dbg !2604
  %mul17 = fmul double %mul16, 3.000000e+08, !dbg !2605
  %19 = load float, float* @RADAR_alpha, align 4, !dbg !2606
  %conv18 = fpext float %19 to double, !dbg !2607
  %div19 = fdiv double %mul17, %conv18, !dbg !2608
  %conv20 = fptrunc double %div19 to float, !dbg !2603
  store float %conv20, float* %distance, align 4, !dbg !2596
  %20 = load float, float* %max_psd, align 4, !dbg !2609
  %21 = load float, float* @RADAR_psd_threshold, align 4, !dbg !2611
  %cmp21 = fcmp ogt float %20, %21, !dbg !2612
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !2613

if.then23:                                        ; preds = %for.end
  %22 = load float, float* %distance, align 4, !dbg !2614
  store float %22, float* %retval, align 4, !dbg !2616
  br label %return, !dbg !2616

if.else:                                          ; preds = %for.end
  store float 0x7FF0000000000000, float* %retval, align 4, !dbg !2617
  br label %return, !dbg !2617

return:                                           ; preds = %if.else, %if.then23
  %23 = load float, float* %retval, align 4, !dbg !2619
  ret float %23, !dbg !2619
}

; Function Attrs: noinline nounwind uwtable
define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) #11 {
entry:
  %data.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %logn.addr = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %transform_length = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bit = alloca i32, align 4
  %theta = alloca float, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  %w_real = alloca float, align 4
  %w_imag = alloca float, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %s2 = alloca float, align 4
  %z_real = alloca float, align 4
  %z_imag = alloca float, align 4
  store float* %data, float** %data.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %logn, i32* %logn.addr, align 4
  store i32 %sign, i32* %sign.addr, align 4
  store i32 1, i32* %transform_length, align 4
  %0 = load float*, float** %data.addr, align 8
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %logn.addr, align 4
  %call = call float* @bit_reverse(float* %0, i32 %1, i32 %2)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %entry
  %3 = load i32, i32* %bit, align 4
  %4 = load i32, i32* %logn.addr, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  store float 1.000000e+00, float* %w_real, align 4
  store float 0.000000e+00, float* %w_imag, align 4
  %5 = load i32, i32* %sign.addr, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double 1.000000e+00, %conv
  %mul1 = fmul double %mul, 0x400921FB54442D18
  %6 = load i32, i32* %transform_length, align 4
  %conv2 = uitofp i32 %6 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %theta, align 4
  %7 = load float, float* %theta, align 4
  %conv5 = fpext float %7 to double
  %call6 = call double @sin(double %conv5) #6
  %conv7 = fptrunc double %call6 to float
  store float %conv7, float* %s, align 4
  %8 = load float, float* %theta, align 4
  %conv8 = fpext float %8 to double
  %mul9 = fmul double 5.000000e-01, %conv8
  %call10 = call double @sin(double %mul9) #6
  %conv11 = fptrunc double %call10 to float
  store float %conv11, float* %t, align 4
  %9 = load float, float* %t, align 4
  %conv12 = fpext float %9 to double
  %mul13 = fmul double 2.000000e+00, %conv12
  %10 = load float, float* %t, align 4
  %conv14 = fpext float %10 to double
  %mul15 = fmul double %mul13, %conv14
  %conv16 = fptrunc double %mul15 to float
  store float %conv16, float* %s2, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc72, %for.body
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %transform_length, align 4
  %cmp18 = icmp ult i32 %11, %12
  br i1 %cmp18, label %for.body20, label %for.end73

for.body20:                                       ; preds = %for.cond17
  store i32 0, i32* %b, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body20
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %N.addr, align 4
  %cmp22 = icmp ult i32 %13, %14
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %a, align 4
  %add = add i32 %15, %16
  store i32 %add, i32* %i, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %a, align 4
  %add25 = add i32 %17, %18
  %19 = load i32, i32* %transform_length, align 4
  %add26 = add i32 %add25, %19
  store i32 %add26, i32* %j, align 4
  %20 = load float*, float** %data.addr, align 8
  %21 = load i32, i32* %j, align 4
  %mul27 = mul i32 2, %21
  %idxprom = zext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom
  %22 = load float, float* %arrayidx, align 4
  store float %22, float* %z_real, align 4
  %23 = load float*, float** %data.addr, align 8
  %24 = load i32, i32* %j, align 4
  %mul28 = mul i32 2, %24
  %add29 = add i32 %mul28, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %23, i64 %idxprom30
  %25 = load float, float* %arrayidx31, align 4
  store float %25, float* %z_imag, align 4
  %26 = load float, float* %w_real, align 4
  %27 = load float, float* %z_real, align 4
  %mul32 = fmul float %26, %27
  %28 = load float, float* %w_imag, align 4
  %29 = load float, float* %z_imag, align 4
  %mul33 = fmul float %28, %29
  %sub = fsub float %mul32, %mul33
  store float %sub, float* %t_real, align 4
  %30 = load float, float* %w_real, align 4
  %31 = load float, float* %z_imag, align 4
  %mul34 = fmul float %30, %31
  %32 = load float, float* %w_imag, align 4
  %33 = load float, float* %z_real, align 4
  %mul35 = fmul float %32, %33
  %add36 = fadd float %mul34, %mul35
  store float %add36, float* %t_imag, align 4
  %34 = load float*, float** %data.addr, align 8
  %35 = load i32, i32* %i, align 4
  %mul37 = mul i32 2, %35
  %idxprom38 = zext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %34, i64 %idxprom38
  %36 = load float, float* %arrayidx39, align 4
  %37 = load float, float* %t_real, align 4
  %sub40 = fsub float %36, %37
  %38 = load float*, float** %data.addr, align 8
  %39 = load i32, i32* %j, align 4
  %mul41 = mul i32 2, %39
  %idxprom42 = zext i32 %mul41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %38, i64 %idxprom42
  store float %sub40, float* %arrayidx43, align 4
  %40 = load float*, float** %data.addr, align 8
  %41 = load i32, i32* %i, align 4
  %mul44 = mul i32 2, %41
  %add45 = add i32 %mul44, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, float* %40, i64 %idxprom46
  %42 = load float, float* %arrayidx47, align 4
  %43 = load float, float* %t_imag, align 4
  %sub48 = fsub float %42, %43
  %44 = load float*, float** %data.addr, align 8
  %45 = load i32, i32* %j, align 4
  %mul49 = mul i32 2, %45
  %add50 = add i32 %mul49, 1
  %idxprom51 = zext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, float* %44, i64 %idxprom51
  store float %sub48, float* %arrayidx52, align 4
  %46 = load float, float* %t_real, align 4
  %47 = load float*, float** %data.addr, align 8
  %48 = load i32, i32* %i, align 4
  %mul53 = mul i32 2, %48
  %idxprom54 = zext i32 %mul53 to i64
  %arrayidx55 = getelementptr inbounds float, float* %47, i64 %idxprom54
  %49 = load float, float* %arrayidx55, align 4
  %add56 = fadd float %49, %46
  store float %add56, float* %arrayidx55, align 4
  %50 = load float, float* %t_imag, align 4
  %51 = load float*, float** %data.addr, align 8
  %52 = load i32, i32* %i, align 4
  %mul57 = mul i32 2, %52
  %add58 = add i32 %mul57, 1
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds float, float* %51, i64 %idxprom59
  %53 = load float, float* %arrayidx60, align 4
  %add61 = fadd float %53, %50
  store float %add61, float* %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %54 = load i32, i32* %transform_length, align 4
  %mul62 = mul i32 2, %54
  %55 = load i32, i32* %b, align 4
  %add63 = add i32 %55, %mul62
  store i32 %add63, i32* %b, align 4
  br label %for.cond21

for.end:                                          ; preds = %for.cond21
  %56 = load float, float* %w_real, align 4
  %57 = load float, float* %s, align 4
  %58 = load float, float* %w_imag, align 4
  %mul64 = fmul float %57, %58
  %59 = load float, float* %s2, align 4
  %60 = load float, float* %w_real, align 4
  %mul65 = fmul float %59, %60
  %add66 = fadd float %mul64, %mul65
  %sub67 = fsub float %56, %add66
  store float %sub67, float* %t_real, align 4
  %61 = load float, float* %w_imag, align 4
  %62 = load float, float* %s, align 4
  %63 = load float, float* %w_real, align 4
  %mul68 = fmul float %62, %63
  %64 = load float, float* %s2, align 4
  %65 = load float, float* %w_imag, align 4
  %mul69 = fmul float %64, %65
  %sub70 = fsub float %mul68, %mul69
  %add71 = fadd float %61, %sub70
  store float %add71, float* %t_imag, align 4
  %66 = load float, float* %t_real, align 4
  store float %66, float* %w_real, align 4
  %67 = load float, float* %t_imag, align 4
  store float %67, float* %w_imag, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.end
  %68 = load i32, i32* %a, align 4
  %inc = add i32 %68, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond17

for.end73:                                        ; preds = %for.cond17
  %69 = load i32, i32* %transform_length, align 4
  %mul74 = mul i32 %69, 2
  store i32 %mul74, i32* %transform_length, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.end73
  %70 = load i32, i32* %bit, align 4
  %inc76 = add i32 %70, 1
  store i32 %inc76, i32* %bit, align 4
  br label %for.cond

for.end77:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal float* @bit_reverse(float* %w, i32 %N, i32 %bits) #11 {
entry:
  %w.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  store float* %w, float** %w.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %bits, i32* %bits.addr, align 4
  store i32 31, i32* %s, align 4
  %0 = load i32, i32* %s, align 4
  %1 = load i32, i32* %bits.addr, align 4
  %sub = sub i32 %0, %1
  %add = add i32 %sub, 1
  store i32 %add, i32* %shift, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %call = call i32 @_rev(i32 %4)
  store i32 %call, i32* %r, align 4
  %5 = load i32, i32* %shift, align 4
  %6 = load i32, i32* %r, align 4
  %shr = lshr i32 %6, %5
  store i32 %shr, i32* %r, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %r, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load float*, float** %w.addr, align 8
  %10 = load i32, i32* %i, align 4
  %mul = mul i32 2, %10
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  store float %11, float* %t_real, align 4
  %12 = load float*, float** %w.addr, align 8
  %13 = load i32, i32* %i, align 4
  %mul2 = mul i32 2, %13
  %add3 = add i32 %mul2, 1
  %idxprom4 = zext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  %14 = load float, float* %arrayidx5, align 4
  store float %14, float* %t_imag, align 4
  %15 = load float*, float** %w.addr, align 8
  %16 = load i32, i32* %r, align 4
  %mul6 = mul i32 2, %16
  %idxprom7 = zext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %15, i64 %idxprom7
  %17 = load float, float* %arrayidx8, align 4
  %18 = load float*, float** %w.addr, align 8
  %19 = load i32, i32* %i, align 4
  %mul9 = mul i32 2, %19
  %idxprom10 = zext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  store float %17, float* %arrayidx11, align 4
  %20 = load float*, float** %w.addr, align 8
  %21 = load i32, i32* %r, align 4
  %mul12 = mul i32 2, %21
  %add13 = add i32 %mul12, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %20, i64 %idxprom14
  %22 = load float, float* %arrayidx15, align 4
  %23 = load float*, float** %w.addr, align 8
  %24 = load i32, i32* %i, align 4
  %mul16 = mul i32 2, %24
  %add17 = add i32 %mul16, 1
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, float* %23, i64 %idxprom18
  store float %22, float* %arrayidx19, align 4
  %25 = load float, float* %t_real, align 4
  %26 = load float*, float** %w.addr, align 8
  %27 = load i32, i32* %r, align 4
  %mul20 = mul i32 2, %27
  %idxprom21 = zext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %26, i64 %idxprom21
  store float %25, float* %arrayidx22, align 4
  %28 = load float, float* %t_imag, align 4
  %29 = load float*, float** %w.addr, align 8
  %30 = load i32, i32* %r, align 4
  %mul23 = mul i32 2, %30
  %add24 = add i32 %mul23, 1
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %29, i64 %idxprom25
  store float %28, float* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load float*, float** %w.addr, align 8
  ret float* %32
}

; Function Attrs: nounwind
declare double @sin(double) #12

; Function Attrs: noinline nounwind uwtable
define internal i32 @_rev(i32 %v) #11 {
entry:
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  store i32 %0, i32* %r, align 4
  store i32 31, i32* %s, align 4
  %1 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %v.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %r, align 4
  %4 = load i32, i32* %v.addr, align 4
  %and = and i32 %4, 1
  %5 = load i32, i32* %r, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %r, align 4
  %6 = load i32, i32* %s, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %v.addr, align 4
  %shr1 = lshr i32 %7, 1
  store i32 %shr1, i32* %v.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %r, align 4
  %shl2 = shl i32 %9, %8
  store i32 %shl2, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  ret i32 %10
}

declare i8* @decode_hook(%struct.ofdm_param*, %struct.frame_param*, i8*, i32*)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind readonly }

!llvm.dbg.cu = !{!2, !580, !601, !658}
!llvm.ident = !{!671, !671, !671, !671, !671, !671, !671}
!llvm.module.flags = !{!672, !673}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "lane_names", scope: !2, file: !3, line: 35, type: !449, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !441)
!3 = !DIFile(filename: "kernels_api.c", directory: "/home/sdasgup3/Github/epochs/mini-era")
!4 = !{!5, !10, !14, !25, !33, !40}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 31, size: 32, elements: !7)
!6 = !DIFile(filename: "./kernels_api.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!7 = !{!8, !9}
!8 = !DIEnumerator(name: "false", value: 0)
!9 = !DIEnumerator(name: "true", value: 1)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 32, size: 32, elements: !11)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "error", value: 0)
!13 = !DIEnumerator(name: "success", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Encoding", file: !15, line: 20, size: 32, elements: !16)
!15 = !DIFile(filename: "./viterbi/utils.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24}
!17 = !DIEnumerator(name: "BPSK_1_2", value: 0)
!18 = !DIEnumerator(name: "BPSK_3_4", value: 1)
!19 = !DIEnumerator(name: "QPSK_1_2", value: 2)
!20 = !DIEnumerator(name: "QPSK_3_4", value: 3)
!21 = !DIEnumerator(name: "QAM16_1_2", value: 4)
!22 = !DIEnumerator(name: "QAM16_3_4", value: 5)
!23 = !DIEnumerator(name: "QAM64_2_3", value: 6)
!24 = !DIEnumerator(name: "QAM64_3_4", value: 7)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 78, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIEnumerator(name: "myself", value: -1)
!28 = !DIEnumerator(name: "no_label", value: 0)
!29 = !DIEnumerator(name: "car", value: 1)
!30 = !DIEnumerator(name: "truck", value: 2)
!31 = !DIEnumerator(name: "pedestrian", value: 3)
!32 = !DIEnumerator(name: "bicycle", value: 4)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 89, size: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "lhazard", value: 0)
!36 = !DIEnumerator(name: "left", value: 1)
!37 = !DIEnumerator(name: "center", value: 2)
!38 = !DIEnumerator(name: "right", value: 3)
!39 = !DIEnumerator(name: "rhazard", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 109, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "safe_to_move_right_or_left", value: 0)
!43 = !DIEnumerator(name: "safe_to_move_right_only", value: 1)
!44 = !DIEnumerator(name: "safe_to_move_left_only", value: 2)
!45 = !DIEnumerator(name: "unsafe_to_move_left_or_right", value: 3)
!46 = !DIEnumerator(name: "num_message_t", value: 4)
!47 = !{!48, !61, !62, !90, !95, !439, !53, !76, !440}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "radar_dict_entry_t", file: !6, line: 43, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 38, size: 1048672, elements: !51)
!51 = !{!52, !54, !55, !57}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !50, file: !6, line: 39, baseType: !53, size: 32)
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "return_id", scope: !50, file: !6, line: 40, baseType: !53, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !50, file: !6, line: 41, baseType: !56, size: 32, offset: 64)
!56 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "return_data", scope: !50, file: !6, line: 42, baseType: !58, size: 1048576, offset: 96)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1048576, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 32768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "vit_dict_entry_t", file: !6, line: 52, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 46, size: 198624, elements: !65)
!65 = !{!66, !67, !68, !79, !88}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "msg_num", scope: !64, file: !6, line: 47, baseType: !53, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "msg_id", scope: !64, file: !6, line: 48, baseType: !53, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm_p", scope: !64, file: !6, line: 49, baseType: !69, size: 160, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "ofdm_param", file: !15, line: 59, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 44, size: 160, elements: !71)
!71 = !{!72, !73, !75, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !70, file: !15, line: 48, baseType: !14, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rate_field", scope: !70, file: !15, line: 50, baseType: !74, size: 8, offset: 32)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "n_bpsc", scope: !70, file: !15, line: 52, baseType: !76, size: 32, offset: 64)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n_cbps", scope: !70, file: !15, line: 54, baseType: !76, size: 32, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "n_dbps", scope: !70, file: !15, line: 56, baseType: !76, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "frame_p", scope: !64, file: !6, line: 50, baseType: !80, size: 160, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_param", file: !15, line: 77, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 64, size: 160, elements: !82)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "psdu_size", scope: !81, file: !15, line: 67, baseType: !76, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "n_sym", scope: !81, file: !15, line: 69, baseType: !76, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "n_pad", scope: !81, file: !15, line: 71, baseType: !76, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "n_encoded_bits", scope: !81, file: !15, line: 72, baseType: !76, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "n_data_bits", scope: !81, file: !15, line: 74, baseType: !76, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "in_bits", scope: !64, file: !6, line: 51, baseType: !89, size: 198240, offset: 384)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 198240, elements: !93)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !91, line: 48, baseType: !92)
!91 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!94}
!94 = !DISubrange(count: 24780)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !97, line: 110, baseType: !98)
!97 = !DIFile(filename: "/usr/include/python3.5m/object.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !97, line: 106, size: 128, elements: !99)
!99 = !{!100, !108}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !98, file: !97, line: 108, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !102, line: 177, baseType: !103)
!102 = !DIFile(filename: "/usr/include/python3.5m/pyport.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !104, line: 104, baseType: !105)
!104 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !106, line: 172, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !98, file: !97, line: 109, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !97, line: 343, size: 3200, elements: !111)
!111 = !{!112, !118, !121, !122, !123, !128, !190, !195, !200, !212, !214, !267, !298, !310, !316, !317, !318, !320, !322, !353, !354, !355, !364, !365, !370, !371, !373, !375, !385, !388, !406, !407, !408, !410, !412, !413, !415, !420, !425, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !110, file: !97, line: 344, baseType: !113, size: 192)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !97, line: 115, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 112, size: 192, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !114, file: !97, line: 113, baseType: !96, size: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !114, file: !97, line: 114, baseType: !101, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !110, file: !97, line: 345, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !110, file: !97, line: 346, baseType: !101, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !110, file: !97, line: 346, baseType: !101, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !110, file: !97, line: 350, baseType: !124, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !97, line: 317, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !95}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !110, file: !97, line: 351, baseType: !129, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !97, line: 323, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!76, !95, !133, !76}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 48, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !136, line: 241, size: 1728, elements: !137)
!136 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!137 = !{!138, !139, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !159, !160, !161, !162, !164, !166, !168, !172, !175, !177, !178, !179, !180, !181, !185, !186}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !135, file: !136, line: 242, baseType: !76, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !135, file: !136, line: 247, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !135, file: !136, line: 248, baseType: !140, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !135, file: !136, line: 249, baseType: !140, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !135, file: !136, line: 250, baseType: !140, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !135, file: !136, line: 251, baseType: !140, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !135, file: !136, line: 252, baseType: !140, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !135, file: !136, line: 253, baseType: !140, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !135, file: !136, line: 254, baseType: !140, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !135, file: !136, line: 256, baseType: !140, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !135, file: !136, line: 257, baseType: !140, size: 64, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !135, file: !136, line: 258, baseType: !140, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !135, file: !136, line: 260, baseType: !152, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !136, line: 156, size: 192, elements: !154)
!154 = !{!155, !156, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !153, file: !136, line: 157, baseType: !152, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !153, file: !136, line: 158, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !153, file: !136, line: 162, baseType: !76, size: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !135, file: !136, line: 262, baseType: !157, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !135, file: !136, line: 264, baseType: !76, size: 32, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !135, file: !136, line: 268, baseType: !76, size: 32, offset: 928)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !135, file: !136, line: 270, baseType: !163, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 131, baseType: !107)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !135, file: !136, line: 274, baseType: !165, size: 16, offset: 1024)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !135, file: !136, line: 275, baseType: !167, size: 8, offset: 1040)
!167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !135, file: !136, line: 276, baseType: !169, size: 8, offset: 1048)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 8, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 1)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !135, file: !136, line: 280, baseType: !173, size: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !136, line: 150, baseType: null)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !135, file: !136, line: 289, baseType: !176, size: 64, offset: 1152)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 132, baseType: !107)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !135, file: !136, line: 297, baseType: !61, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !135, file: !136, line: 298, baseType: !61, size: 64, offset: 1280)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !135, file: !136, line: 299, baseType: !61, size: 64, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !135, file: !136, line: 300, baseType: !61, size: 64, offset: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !135, file: !136, line: 302, baseType: !182, size: 64, offset: 1472)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !183, line: 62, baseType: !184)
!183 = !DIFile(filename: "/home/sdasgup3/Install/llvm/llvm.4.0.0.install/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!184 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !135, file: !136, line: 303, baseType: !76, size: 32, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !135, file: !136, line: 305, baseType: !187, size: 160, offset: 1568)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 20)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !110, file: !97, line: 352, baseType: !191, size: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !97, line: 325, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!95, !95, !140}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !110, file: !97, line: 353, baseType: !196, size: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !97, line: 327, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!76, !95, !140, !95}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_async", scope: !110, file: !97, line: 354, baseType: !201, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyAsyncMethods", file: !97, line: 308, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 304, size: 192, elements: !204)
!204 = !{!205, !210, !211}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "am_await", scope: !203, file: !97, line: 305, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !97, line: 166, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!95, !95}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "am_aiter", scope: !203, file: !97, line: 306, baseType: !206, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "am_anext", scope: !203, file: !97, line: 307, baseType: !206, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !110, file: !97, line: 356, baseType: !213, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !97, line: 329, baseType: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !110, file: !97, line: 360, baseType: !215, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !97, line: 282, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 237, size: 2304, elements: !218)
!218 = !{!219, !224, !225, !226, !227, !228, !233, !234, !235, !236, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !217, file: !97, line: 242, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !97, line: 167, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!95, !95, !95}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !217, file: !97, line: 243, baseType: !220, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !217, file: !97, line: 244, baseType: !220, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !217, file: !97, line: 245, baseType: !220, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !217, file: !97, line: 246, baseType: !220, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !217, file: !97, line: 247, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !97, line: 168, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!95, !95, !95, !95}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !217, file: !97, line: 248, baseType: !206, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !217, file: !97, line: 249, baseType: !206, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !217, file: !97, line: 250, baseType: !206, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !217, file: !97, line: 251, baseType: !237, size: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !97, line: 169, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!76, !95}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !217, file: !97, line: 252, baseType: !206, size: 64, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !217, file: !97, line: 253, baseType: !220, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !217, file: !97, line: 254, baseType: !220, size: 64, offset: 768)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !217, file: !97, line: 255, baseType: !220, size: 64, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !217, file: !97, line: 256, baseType: !220, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !217, file: !97, line: 257, baseType: !220, size: 64, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !217, file: !97, line: 258, baseType: !206, size: 64, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !217, file: !97, line: 259, baseType: !61, size: 64, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !217, file: !97, line: 260, baseType: !206, size: 64, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !217, file: !97, line: 262, baseType: !220, size: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !217, file: !97, line: 263, baseType: !220, size: 64, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !217, file: !97, line: 264, baseType: !220, size: 64, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !217, file: !97, line: 265, baseType: !220, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !217, file: !97, line: 266, baseType: !229, size: 64, offset: 1472)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !217, file: !97, line: 267, baseType: !220, size: 64, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !217, file: !97, line: 268, baseType: !220, size: 64, offset: 1600)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !217, file: !97, line: 269, baseType: !220, size: 64, offset: 1664)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !217, file: !97, line: 270, baseType: !220, size: 64, offset: 1728)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !217, file: !97, line: 271, baseType: !220, size: 64, offset: 1792)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !217, file: !97, line: 273, baseType: !220, size: 64, offset: 1856)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !217, file: !97, line: 274, baseType: !220, size: 64, offset: 1920)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !217, file: !97, line: 275, baseType: !220, size: 64, offset: 1984)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !217, file: !97, line: 276, baseType: !220, size: 64, offset: 2048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !217, file: !97, line: 278, baseType: !206, size: 64, offset: 2112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "nb_matrix_multiply", scope: !217, file: !97, line: 280, baseType: !220, size: 64, offset: 2176)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_matrix_multiply", scope: !217, file: !97, line: 281, baseType: !220, size: 64, offset: 2240)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !110, file: !97, line: 361, baseType: !268, size: 64, offset: 832)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !97, line: 296, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 284, size: 640, elements: !271)
!271 = !{!272, !277, !278, !283, !284, !285, !290, !291, !296, !297}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !270, file: !97, line: 285, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !97, line: 170, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!101, !95}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !270, file: !97, line: 286, baseType: !220, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !270, file: !97, line: 287, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !97, line: 171, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!95, !95, !101}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !270, file: !97, line: 288, baseType: !279, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !270, file: !97, line: 289, baseType: !61, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !270, file: !97, line: 290, baseType: !286, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !97, line: 173, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!76, !95, !101, !95}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !270, file: !97, line: 291, baseType: !61, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !270, file: !97, line: 292, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !97, line: 232, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!76, !95, !95}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !270, file: !97, line: 294, baseType: !220, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !270, file: !97, line: 295, baseType: !279, size: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !110, file: !97, line: 362, baseType: !299, size: 64, offset: 896)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !97, line: 302, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 298, size: 192, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !301, file: !97, line: 299, baseType: !273, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !301, file: !97, line: 300, baseType: !220, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !301, file: !97, line: 301, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !97, line: 175, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!76, !95, !95, !95}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !110, file: !97, line: 366, baseType: !311, size: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !97, line: 330, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !95}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !102, line: 186, baseType: !101)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !110, file: !97, line: 367, baseType: !229, size: 64, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !110, file: !97, line: 368, baseType: !213, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !110, file: !97, line: 369, baseType: !319, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !97, line: 326, baseType: !221)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !110, file: !97, line: 370, baseType: !321, size: 64, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !97, line: 328, baseType: !307)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !110, file: !97, line: 373, baseType: !323, size: 64, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !97, line: 313, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 310, size: 128, elements: !326)
!326 = !{!327, !348}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !325, file: !97, line: 311, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !97, line: 194, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!76, !95, !332, !76}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !97, line: 192, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !97, line: 179, size: 640, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !345, !346, !347}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !334, file: !97, line: 180, baseType: !61, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !334, file: !97, line: 181, baseType: !95, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !334, file: !97, line: 182, baseType: !101, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !334, file: !97, line: 183, baseType: !101, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !334, file: !97, line: 185, baseType: !76, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !334, file: !97, line: 186, baseType: !76, size: 32, offset: 288)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !334, file: !97, line: 187, baseType: !140, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !334, file: !97, line: 188, baseType: !344, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !334, file: !97, line: 189, baseType: !344, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !334, file: !97, line: 190, baseType: !344, size: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !334, file: !97, line: 191, baseType: !61, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !325, file: !97, line: 312, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !97, line: 195, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !95, !332}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !110, file: !97, line: 376, baseType: !184, size: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !110, file: !97, line: 378, baseType: !119, size: 64, offset: 1408)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !110, file: !97, line: 382, baseType: !356, size: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !97, line: 234, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!76, !95, !360, !61}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !97, line: 233, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!76, !95, !61}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !110, file: !97, line: 385, baseType: !237, size: 64, offset: 1536)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !110, file: !97, line: 389, baseType: !366, size: 64, offset: 1600)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !97, line: 331, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!95, !95, !95, !76}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !110, file: !97, line: 392, baseType: !101, size: 64, offset: 1664)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !110, file: !97, line: 395, baseType: !372, size: 64, offset: 1728)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !97, line: 332, baseType: !207)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !110, file: !97, line: 396, baseType: !374, size: 64, offset: 1792)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !97, line: 333, baseType: !207)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !110, file: !97, line: 399, baseType: !376, size: 64, offset: 1856)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !378, line: 40, size: 256, elements: !379)
!378 = !DIFile(filename: "/usr/include/python3.5m/methodobject.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!379 = !{!380, !381, !383, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !377, file: !378, line: 41, baseType: !119, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !377, file: !378, line: 42, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !378, line: 18, baseType: !221)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !377, file: !378, line: 43, baseType: !76, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !377, file: !378, line: 45, baseType: !119, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !110, file: !97, line: 400, baseType: !386, size: 64, offset: 1920)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !97, line: 400, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !110, file: !97, line: 401, baseType: !389, size: 64, offset: 1984)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !391, line: 11, size: 320, elements: !392)
!391 = !DIFile(filename: "/usr/include/python3.5m/descrobject.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!392 = !{!393, !394, !399, !404, !405}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !391, line: 12, baseType: !140, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !390, file: !391, line: 13, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !391, line: 8, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!95, !95, !61}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !390, file: !391, line: 14, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !391, line: 9, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!76, !95, !95, !61}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !390, file: !391, line: 15, baseType: !140, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !390, file: !391, line: 16, baseType: !61, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !110, file: !97, line: 402, baseType: !109, size: 64, offset: 2048)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !110, file: !97, line: 403, baseType: !95, size: 64, offset: 2112)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !110, file: !97, line: 404, baseType: !409, size: 64, offset: 2176)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !97, line: 334, baseType: !230)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !110, file: !97, line: 405, baseType: !411, size: 64, offset: 2240)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !97, line: 335, baseType: !307)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !110, file: !97, line: 406, baseType: !101, size: 64, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !110, file: !97, line: 407, baseType: !414, size: 64, offset: 2368)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !97, line: 336, baseType: !307)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !110, file: !97, line: 408, baseType: !416, size: 64, offset: 2432)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !97, line: 338, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!95, !109, !101}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !110, file: !97, line: 409, baseType: !421, size: 64, offset: 2496)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !97, line: 337, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!95, !109, !95, !95}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !110, file: !97, line: 410, baseType: !426, size: 64, offset: 2560)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !97, line: 316, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !61}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !110, file: !97, line: 411, baseType: !237, size: 64, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !110, file: !97, line: 412, baseType: !95, size: 64, offset: 2688)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !110, file: !97, line: 413, baseType: !95, size: 64, offset: 2752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !110, file: !97, line: 414, baseType: !95, size: 64, offset: 2816)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !110, file: !97, line: 415, baseType: !95, size: 64, offset: 2880)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !110, file: !97, line: 416, baseType: !95, size: 64, offset: 2944)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !110, file: !97, line: 417, baseType: !124, size: 64, offset: 3008)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !110, file: !97, line: 420, baseType: !53, size: 32, offset: 3072)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !110, file: !97, line: 422, baseType: !124, size: 64, offset: 3136)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "label_t", file: !6, line: 85, baseType: !25)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!441 = !{!0, !442, !447, !452, !455, !457, !460, !463, !465, !467, !469, !471, !473, !478, !480, !484, !486, !488, !490, !492, !494, !496, !498, !503, !505, !508, !511, !516, !519, !521, !533, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !565, !569, !574, !576}
!442 = !DIGlobalVariableExpression(var: !443)
!443 = distinct !DIGlobalVariable(name: "message_names", scope: !2, file: !3, line: 36, type: !444, isLocal: false, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 4)
!447 = !DIGlobalVariableExpression(var: !448)
!448 = distinct !DIGlobalVariable(name: "object_names", scope: !2, file: !3, line: 37, type: !449, isLocal: false, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 320, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 5)
!452 = !DIGlobalVariableExpression(var: !453)
!453 = distinct !DIGlobalVariable(name: "output_viz_trace", scope: !2, file: !3, line: 43, type: !454, isLocal: false, isDefinition: true)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !6, line: 31, baseType: !5)
!455 = !DIGlobalVariableExpression(var: !456)
!456 = distinct !DIGlobalVariable(name: "fft_logn_samples", scope: !2, file: !3, line: 45, type: !53, isLocal: false, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458)
!458 = distinct !DIGlobalVariable(name: "nearest_obj", scope: !2, file: !3, line: 52, type: !459, isLocal: false, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 40, elements: !450)
!460 = !DIGlobalVariableExpression(var: !461)
!461 = distinct !DIGlobalVariable(name: "nearest_dist", scope: !2, file: !3, line: 53, type: !462, isLocal: false, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !450)
!463 = !DIGlobalVariableExpression(var: !464)
!464 = distinct !DIGlobalVariable(name: "rand_seed", scope: !2, file: !3, line: 57, type: !53, isLocal: false, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466)
!466 = distinct !DIGlobalVariable(name: "IMPACT_DISTANCE", scope: !2, file: !3, line: 59, type: !56, isLocal: false, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468)
!468 = distinct !DIGlobalVariable(name: "python_module", scope: !2, file: !3, line: 73, type: !140, isLocal: false, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470)
!470 = distinct !DIGlobalVariable(name: "python_func", scope: !2, file: !3, line: 74, type: !140, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472)
!472 = distinct !DIGlobalVariable(name: "python_func_load", scope: !2, file: !3, line: 75, type: !140, isLocal: false, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474)
!474 = distinct !DIGlobalVariable(name: "label_match", scope: !2, file: !3, line: 91, type: !475, isLocal: false, isDefinition: true)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 6)
!478 = !DIGlobalVariableExpression(var: !479)
!479 = distinct !DIGlobalVariable(name: "label_lookup", scope: !2, file: !3, line: 92, type: !475, isLocal: false, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481)
!481 = distinct !DIGlobalVariable(name: "label_mismatch", scope: !2, file: !3, line: 93, type: !482, isLocal: false, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 800, elements: !483)
!483 = !{!451, !451}
!484 = !DIGlobalVariableExpression(var: !485)
!485 = distinct !DIGlobalVariable(name: "num_radar_dictionary_items", scope: !2, file: !3, line: 105, type: !53, isLocal: false, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487)
!487 = distinct !DIGlobalVariable(name: "radar_total_calc", scope: !2, file: !3, line: 108, type: !53, isLocal: false, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489)
!489 = distinct !DIGlobalVariable(name: "hist_pct_err_label", scope: !2, file: !3, line: 111, type: !449, isLocal: false, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491)
!491 = distinct !DIGlobalVariable(name: "num_viterbi_dictionary_items", scope: !2, file: !3, line: 125, type: !53, isLocal: false, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493)
!493 = distinct !DIGlobalVariable(name: "vit_msgs_behavior", scope: !2, file: !3, line: 128, type: !53, isLocal: false, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495)
!495 = distinct !DIGlobalVariable(name: "total_msgs", scope: !2, file: !3, line: 129, type: !53, isLocal: false, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497)
!497 = distinct !DIGlobalVariable(name: "bad_decode_msgs", scope: !2, file: !3, line: 130, type: !53, isLocal: false, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499)
!499 = distinct !DIGlobalVariable(name: "lane_obj", scope: !2, file: !3, line: 50, type: !500, isLocal: false, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !501)
!501 = !{!451, !502}
!502 = !DISubrange(count: 16)
!503 = !DIGlobalVariableExpression(var: !504)
!504 = distinct !DIGlobalVariable(name: "total_obj", scope: !2, file: !3, line: 47, type: !53, isLocal: false, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506)
!506 = distinct !DIGlobalVariable(name: "obj_in_lane", scope: !2, file: !3, line: 48, type: !507, isLocal: false, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !450)
!508 = !DIGlobalVariableExpression(var: !509)
!509 = distinct !DIGlobalVariable(name: "lane_dist", scope: !2, file: !3, line: 49, type: !510, isLocal: false, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2560, elements: !501)
!511 = !DIGlobalVariableExpression(var: !512)
!512 = distinct !DIGlobalVariable(name: "hist_total_objs", scope: !2, file: !3, line: 55, type: !513, isLocal: false, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2560, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 80)
!516 = !DIGlobalVariableExpression(var: !517)
!517 = distinct !DIGlobalVariable(name: "d_ntraceback", scope: !2, file: !518, line: 30, type: !76, isLocal: false, isDefinition: true)
!518 = !DIFile(filename: "./viterbi/base.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!519 = !DIGlobalVariableExpression(var: !520)
!520 = distinct !DIGlobalVariable(name: "d_k", scope: !2, file: !518, line: 31, type: !76, isLocal: false, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522)
!522 = distinct !DIGlobalVariable(name: "d_branchtab27_generic", scope: !2, file: !523, line: 32, type: !524, isLocal: false, isDefinition: true)
!523 = !DIFile(filename: "./viterbi/viterbi_decoder_generic.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 512, elements: !531)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "branchtab27", file: !523, line: 30, size: 256, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !525, file: !523, line: 31, baseType: !528, size: 256)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 32)
!531 = !{!532}
!532 = !DISubrange(count: 2)
!533 = !DIGlobalVariableExpression(var: !534)
!534 = distinct !DIGlobalVariable(name: "d_metric0_generic", scope: !2, file: !523, line: 34, type: !535, isLocal: false, isDefinition: true, align: 128)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 64)
!538 = !DIGlobalVariableExpression(var: !539)
!539 = distinct !DIGlobalVariable(name: "d_metric1_generic", scope: !2, file: !523, line: 35, type: !535, isLocal: false, isDefinition: true, align: 128)
!540 = !DIGlobalVariableExpression(var: !541)
!541 = distinct !DIGlobalVariable(name: "d_path0_generic", scope: !2, file: !523, line: 36, type: !535, isLocal: false, isDefinition: true, align: 128)
!542 = !DIGlobalVariableExpression(var: !543)
!543 = distinct !DIGlobalVariable(name: "d_path1_generic", scope: !2, file: !523, line: 37, type: !535, isLocal: false, isDefinition: true, align: 128)
!544 = !DIGlobalVariableExpression(var: !545)
!545 = distinct !DIGlobalVariable(name: "pName", scope: !2, file: !3, line: 69, type: !95, isLocal: false, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547)
!547 = distinct !DIGlobalVariable(name: "pModule", scope: !2, file: !3, line: 69, type: !95, isLocal: false, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549)
!549 = distinct !DIGlobalVariable(name: "pFunc", scope: !2, file: !3, line: 69, type: !95, isLocal: false, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551)
!551 = distinct !DIGlobalVariable(name: "pFunc_load", scope: !2, file: !3, line: 69, type: !95, isLocal: false, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553)
!553 = distinct !DIGlobalVariable(name: "pArgs", scope: !2, file: !3, line: 70, type: !95, isLocal: false, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555)
!555 = distinct !DIGlobalVariable(name: "pValue", scope: !2, file: !3, line: 70, type: !95, isLocal: false, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557)
!557 = distinct !DIGlobalVariable(name: "pretValue", scope: !2, file: !3, line: 70, type: !95, isLocal: false, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559)
!559 = distinct !DIGlobalVariable(name: "the_radar_return_dict", scope: !2, file: !3, line: 106, type: !48, isLocal: false, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561)
!561 = distinct !DIGlobalVariable(name: "hist_pct_errs", scope: !2, file: !3, line: 109, type: !562, isLocal: false, isDefinition: true)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1920, elements: !563)
!563 = !{!564, !451}
!564 = !DISubrange(count: 12)
!565 = !DIGlobalVariableExpression(var: !566)
!566 = distinct !DIGlobalVariable(name: "hist_distances", scope: !2, file: !3, line: 110, type: !567, isLocal: false, isDefinition: true)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, elements: !568)
!568 = !{!564}
!569 = !DIGlobalVariableExpression(var: !570)
!570 = distinct !DIGlobalVariable(name: "descramble", scope: !2, file: !3, line: 122, type: !571, isLocal: false, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 12800, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1600)
!574 = !DIGlobalVariableExpression(var: !575)
!575 = distinct !DIGlobalVariable(name: "actual_msg", scope: !2, file: !3, line: 123, type: !571, isLocal: false, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577)
!577 = distinct !DIGlobalVariable(name: "the_viterbi_trace_dict", scope: !2, file: !3, line: 126, type: !62, isLocal: false, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579)
!579 = distinct !DIGlobalVariable(name: "all_obstacle_lanes_mode", scope: !580, file: !581, line: 53, type: !454, isLocal: false, isDefinition: true)
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !582, retainedTypes: !583, globals: !585)
!581 = !DIFile(filename: "main.c", directory: "/home/sdasgup3/Github/epochs/mini-era")
!582 = !{!5, !33, !25, !40, !14}
!583 = !{!584, !76, !440, !61}
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !91, line: 55, baseType: !184)
!585 = !{!578, !586, !588, !593, !595, !597}
!586 = !DIGlobalVariableExpression(var: !587)
!587 = distinct !DIGlobalVariable(name: "lane_obj", scope: !580, file: !6, line: 131, type: !500, isLocal: false, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589)
!589 = distinct !DIGlobalVariable(name: "cv_dict", scope: !580, file: !581, line: 46, type: !590, isLocal: false, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 256)
!593 = !DIGlobalVariableExpression(var: !594)
!594 = distinct !DIGlobalVariable(name: "rad_dict", scope: !580, file: !581, line: 47, type: !590, isLocal: false, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596)
!596 = distinct !DIGlobalVariable(name: "vit_dict", scope: !580, file: !581, line: 48, type: !590, isLocal: false, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598)
!598 = distinct !DIGlobalVariable(name: "time_step", scope: !580, file: !581, line: 54, type: !53, isLocal: false, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600)
!600 = distinct !DIGlobalVariable(name: "input_trace", scope: !601, file: !602, line: 25, type: !616, isLocal: false, isDefinition: true)
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !603, retainedTypes: !604, globals: !605)
!602 = !DIFile(filename: "read_trace.c", directory: "/home/sdasgup3/Github/epochs/mini-era")
!603 = !{!10, !5, !33}
!604 = !{!61}
!605 = !{!599, !606, !608, !610, !612, !614}
!606 = !DIGlobalVariableExpression(var: !607)
!607 = distinct !DIGlobalVariable(name: "last_i", scope: !601, file: !602, line: 31, type: !76, isLocal: false, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609)
!609 = distinct !DIGlobalVariable(name: "in_tok", scope: !601, file: !602, line: 32, type: !76, isLocal: false, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611)
!611 = distinct !DIGlobalVariable(name: "in_lane", scope: !601, file: !602, line: 33, type: !76, isLocal: false, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613)
!613 = distinct !DIGlobalVariable(name: "lane_obj", scope: !601, file: !6, line: 131, type: !500, isLocal: false, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615)
!615 = distinct !DIGlobalVariable(name: "in_line_buf", scope: !601, file: !602, line: 30, type: !590, isLocal: false, isDefinition: true)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !104, line: 48, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !136, line: 241, size: 1728, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !618, file: !136, line: 242, baseType: !76, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !618, file: !136, line: 247, baseType: !140, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !618, file: !136, line: 248, baseType: !140, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !618, file: !136, line: 249, baseType: !140, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !618, file: !136, line: 250, baseType: !140, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !618, file: !136, line: 251, baseType: !140, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !618, file: !136, line: 252, baseType: !140, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !618, file: !136, line: 253, baseType: !140, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !618, file: !136, line: 254, baseType: !140, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !618, file: !136, line: 256, baseType: !140, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !618, file: !136, line: 257, baseType: !140, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !618, file: !136, line: 258, baseType: !140, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !618, file: !136, line: 260, baseType: !633, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !136, line: 156, size: 192, elements: !635)
!635 = !{!636, !637, !639}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !634, file: !136, line: 157, baseType: !633, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !634, file: !136, line: 158, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !634, file: !136, line: 162, baseType: !76, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !618, file: !136, line: 262, baseType: !638, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !618, file: !136, line: 264, baseType: !76, size: 32, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !618, file: !136, line: 268, baseType: !76, size: 32, offset: 928)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !618, file: !136, line: 270, baseType: !163, size: 64, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !618, file: !136, line: 274, baseType: !165, size: 16, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !618, file: !136, line: 275, baseType: !167, size: 8, offset: 1040)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !618, file: !136, line: 276, baseType: !169, size: 8, offset: 1048)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !618, file: !136, line: 280, baseType: !173, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !618, file: !136, line: 289, baseType: !176, size: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !618, file: !136, line: 297, baseType: !61, size: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !618, file: !136, line: 298, baseType: !61, size: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !618, file: !136, line: 299, baseType: !61, size: 64, offset: 1344)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !618, file: !136, line: 300, baseType: !61, size: 64, offset: 1408)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !618, file: !136, line: 302, baseType: !182, size: 64, offset: 1472)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !618, file: !136, line: 303, baseType: !76, size: 32, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !618, file: !136, line: 305, baseType: !187, size: 160, offset: 1568)
!656 = !DIGlobalVariableExpression(var: !657)
!657 = distinct !DIGlobalVariable(name: "RADAR_LOGN", scope: !658, file: !659, line: 21, type: !53, isLocal: false, isDefinition: true)
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !660, retainedTypes: !661, globals: !662)
!659 = !DIFile(filename: "calculate_dist_from_fmcw.c", directory: "/home/sdasgup3/Github/epochs/mini-era/radar")
!660 = !{}
!661 = !{!56}
!662 = !{!656, !663, !665, !667, !669}
!663 = !DIGlobalVariableExpression(var: !664)
!664 = distinct !DIGlobalVariable(name: "RADAR_N", scope: !658, file: !659, line: 22, type: !53, isLocal: false, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666)
!666 = distinct !DIGlobalVariable(name: "RADAR_fs", scope: !658, file: !659, line: 23, type: !56, isLocal: false, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668)
!668 = distinct !DIGlobalVariable(name: "RADAR_alpha", scope: !658, file: !659, line: 24, type: !56, isLocal: false, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670)
!670 = distinct !DIGlobalVariable(name: "RADAR_psd_threshold", scope: !658, file: !659, line: 30, type: !56, isLocal: false, isDefinition: true)
!671 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!672 = !{i32 2, !"Dwarf Version", i32 4}
!673 = !{i32 2, !"Debug Info Version", i32 3}
!674 = distinct !DISubprogram(name: "init_rad_kernel", scope: !3, file: !3, line: 137, type: !675, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !678)
!675 = !DISubroutineType(types: !676)
!676 = !{!677, !140}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "status_t", file: !6, line: 32, baseType: !10)
!678 = !{!679, !680, !681, !682, !684, !687, !688, !689, !691, !694, !696}
!679 = !DILocalVariable(name: "dict_fn", arg: 1, scope: !674, file: !3, line: 137, type: !140)
!680 = !DILocalVariable(name: "dictF", scope: !674, file: !3, line: 144, type: !133)
!681 = !DILocalVariable(name: "tot_dict_values", scope: !674, file: !3, line: 166, type: !53)
!682 = !DILocalVariable(name: "di", scope: !683, file: !3, line: 167, type: !76)
!683 = distinct !DILexicalBlock(scope: !674, file: !3, line: 167, column: 3)
!684 = !DILocalVariable(name: "entry_id", scope: !685, file: !3, line: 168, type: !53)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 167, column: 59)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 167, column: 3)
!687 = !DILocalVariable(name: "entry_dist", scope: !685, file: !3, line: 169, type: !56)
!688 = !DILocalVariable(name: "entry_dict_values", scope: !685, file: !3, line: 170, type: !53)
!689 = !DILocalVariable(name: "i", scope: !690, file: !3, line: 178, type: !76)
!690 = distinct !DILexicalBlock(scope: !685, file: !3, line: 178, column: 5)
!691 = !DILocalVariable(name: "fin", scope: !692, file: !3, line: 179, type: !56)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 178, column: 41)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 178, column: 5)
!694 = !DILocalVariable(name: "di", scope: !695, file: !3, line: 195, type: !76)
!695 = distinct !DILexicalBlock(scope: !674, file: !3, line: 195, column: 3)
!696 = !DILocalVariable(name: "i", scope: !697, file: !3, line: 197, type: !76)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 197, column: 5)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 195, column: 59)
!699 = distinct !DILexicalBlock(scope: !695, file: !3, line: 195, column: 3)
!700 = !DIExpression()
!701 = !DILocation(line: 137, column: 32, scope: !674)
!702 = !DILocation(line: 141, column: 28, scope: !674)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !705, i64 0}
!705 = !{!"omnipotent char", !706, i64 0}
!706 = !{!"Simple C/C++ TBAA"}
!707 = !DILocation(line: 141, column: 3, scope: !674)
!708 = !DILocation(line: 144, column: 17, scope: !674)
!709 = !DILocation(line: 144, column: 9, scope: !674)
!710 = !DILocation(line: 145, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !674, file: !3, line: 145, column: 7)
!712 = !DILocation(line: 145, column: 7, scope: !674)
!713 = !DILocation(line: 147, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !3, line: 146, column: 3)
!715 = !DILocation(line: 148, column: 5, scope: !714)
!716 = !DILocation(line: 151, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !674, file: !3, line: 151, column: 7)
!718 = !DILocation(line: 153, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !674, file: !3, line: 153, column: 7)
!720 = !DILocation(line: 153, column: 34, scope: !719)
!721 = !DILocation(line: 153, column: 7, scope: !674)
!722 = !DILocation(line: 154, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 153, column: 55)
!724 = !DILocation(line: 155, column: 5, scope: !723)
!725 = !DILocation(line: 159, column: 55, scope: !674)
!726 = !DILocation(line: 159, column: 48, scope: !674)
!727 = !DILocation(line: 159, column: 25, scope: !674)
!728 = !{!729, !729, i64 0}
!729 = !{!"any pointer", !705, i64 0}
!730 = !DILocation(line: 160, column: 29, scope: !731)
!731 = distinct !DILexicalBlock(scope: !674, file: !3, line: 160, column: 7)
!732 = !DILocation(line: 160, column: 7, scope: !674)
!733 = !DILocation(line: 167, column: 12, scope: !683)
!734 = !DILocation(line: 166, column: 12, scope: !674)
!735 = !DILocation(line: 167, column: 23, scope: !736)
!736 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 1)
!737 = !DILocation(line: 167, column: 3, scope: !738)
!738 = !DILexicalBlockFile(scope: !683, file: !3, discriminator: 1)
!739 = !DILocation(line: 162, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !731, file: !3, line: 161, column: 3)
!741 = !DILocation(line: 163, column: 5, scope: !740)
!742 = !DILocation(line: 189, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !674, file: !3, line: 189, column: 7)
!744 = !DILocation(line: 189, column: 7, scope: !674)
!745 = !DILocation(line: 168, column: 5, scope: !685)
!746 = !DILocation(line: 169, column: 5, scope: !685)
!747 = !DILocation(line: 170, column: 14, scope: !685)
!748 = !DIExpression(DW_OP_deref)
!749 = !DILocation(line: 168, column: 14, scope: !685)
!750 = !DILocation(line: 169, column: 11, scope: !685)
!751 = !DILocation(line: 171, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !685, file: !3, line: 171, column: 9)
!753 = !DILocation(line: 174, column: 5, scope: !685)
!754 = !DILocation(line: 174, column: 31, scope: !685)
!755 = !DILocation(line: 174, column: 37, scope: !685)
!756 = !{!757, !704, i64 0}
!757 = !{!"", !704, i64 0, !704, i64 4, !758, i64 8, !705, i64 12}
!758 = !{!"float", !705, i64 0}
!759 = !DILocation(line: 175, column: 43, scope: !685)
!760 = !DILocation(line: 175, column: 31, scope: !685)
!761 = !DILocation(line: 175, column: 41, scope: !685)
!762 = !{!757, !704, i64 4}
!763 = !DILocation(line: 176, column: 43, scope: !685)
!764 = !{!758, !758, i64 0}
!765 = !DILocation(line: 176, column: 31, scope: !685)
!766 = !DILocation(line: 176, column: 40, scope: !685)
!767 = !{!757, !758, i64 8}
!768 = !DILocation(line: 178, column: 14, scope: !690)
!769 = !DILocation(line: 178, column: 27, scope: !770)
!770 = !DILexicalBlockFile(scope: !693, file: !3, discriminator: 1)
!771 = !DILocation(line: 178, column: 23, scope: !770)
!772 = !DILocation(line: 178, column: 5, scope: !773)
!773 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!774 = !DILocation(line: 179, column: 7, scope: !692)
!775 = !DILocation(line: 187, column: 3, scope: !686)
!776 = !DILocation(line: 167, column: 55, scope: !777)
!777 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 3)
!778 = !DILocation(line: 167, column: 25, scope: !736)
!779 = distinct !{!779, !780, !781}
!780 = !DILocation(line: 167, column: 3, scope: !683)
!781 = !DILocation(line: 187, column: 3, scope: !683)
!782 = !DILocation(line: 179, column: 13, scope: !692)
!783 = !DILocation(line: 180, column: 11, scope: !784)
!784 = distinct !DILexicalBlock(scope: !692, file: !3, line: 180, column: 11)
!785 = !DILocation(line: 182, column: 50, scope: !692)
!786 = !DILocation(line: 182, column: 7, scope: !692)
!787 = !DILocation(line: 182, column: 48, scope: !692)
!788 = !DILocation(line: 185, column: 5, scope: !693)
!789 = !DILocation(line: 178, column: 37, scope: !790)
!790 = !DILexicalBlockFile(scope: !693, file: !3, discriminator: 3)
!791 = !DILocation(line: 178, column: 26, scope: !770)
!792 = distinct !{!792, !793, !794}
!793 = !DILocation(line: 178, column: 5, scope: !690)
!794 = !DILocation(line: 185, column: 5, scope: !690)
!795 = !DILocation(line: 190, column: 5, scope: !796)
!796 = distinct !DILexicalBlock(scope: !743, file: !3, line: 189, column: 21)
!797 = !DILocation(line: 191, column: 3, scope: !796)
!798 = !DILocation(line: 192, column: 3, scope: !674)
!799 = !DILocation(line: 195, column: 12, scope: !695)
!800 = !DILocation(line: 195, column: 25, scope: !801)
!801 = !DILexicalBlockFile(scope: !699, file: !3, discriminator: 1)
!802 = !DILocation(line: 195, column: 23, scope: !801)
!803 = !DILocation(line: 195, column: 3, scope: !804)
!804 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 1)
!805 = !DILocation(line: 196, column: 24, scope: !698)
!806 = !DILocation(line: 198, column: 28, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 197, column: 33)
!808 = distinct !DILexicalBlock(scope: !697, file: !3, line: 197, column: 5)
!809 = !DILocation(line: 203, column: 1, scope: !810)
!810 = !DILexicalBlockFile(scope: !674, file: !3, discriminator: 1)
!811 = distinct !DISubprogram(name: "init_vit_kernel", scope: !3, file: !3, line: 215, type: !675, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !812)
!812 = !{!813, !814, !815, !817, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !834, !837}
!813 = !DILocalVariable(name: "dict_fn", arg: 1, scope: !811, file: !3, line: 215, type: !140)
!814 = !DILocalVariable(name: "dictF", scope: !811, file: !3, line: 219, type: !133)
!815 = !DILocalVariable(name: "i", scope: !816, file: !3, line: 239, type: !76)
!816 = distinct !DILexicalBlock(scope: !811, file: !3, line: 239, column: 3)
!817 = !DILocalVariable(name: "mnum", scope: !818, file: !3, line: 243, type: !76)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 240, column: 3)
!819 = distinct !DILexicalBlock(scope: !816, file: !3, line: 239, column: 3)
!820 = !DILocalVariable(name: "mid", scope: !818, file: !3, line: 243, type: !76)
!821 = !DILocalVariable(name: "in_bpsc", scope: !818, file: !3, line: 254, type: !76)
!822 = !DILocalVariable(name: "in_cbps", scope: !818, file: !3, line: 254, type: !76)
!823 = !DILocalVariable(name: "in_dbps", scope: !818, file: !3, line: 254, type: !76)
!824 = !DILocalVariable(name: "in_encoding", scope: !818, file: !3, line: 254, type: !76)
!825 = !DILocalVariable(name: "in_rate", scope: !818, file: !3, line: 254, type: !76)
!826 = !DILocalVariable(name: "in_pdsu_size", scope: !818, file: !3, line: 264, type: !76)
!827 = !DILocalVariable(name: "in_sym", scope: !818, file: !3, line: 264, type: !76)
!828 = !DILocalVariable(name: "in_pad", scope: !818, file: !3, line: 264, type: !76)
!829 = !DILocalVariable(name: "in_encoded_bits", scope: !818, file: !3, line: 264, type: !76)
!830 = !DILocalVariable(name: "in_data_bits", scope: !818, file: !3, line: 264, type: !76)
!831 = !DILocalVariable(name: "num_in_bits", scope: !818, file: !3, line: 274, type: !76)
!832 = !DILocalVariable(name: "ci", scope: !833, file: !3, line: 276, type: !76)
!833 = distinct !DILexicalBlock(scope: !818, file: !3, line: 276, column: 5)
!834 = !DILocalVariable(name: "c", scope: !835, file: !3, line: 277, type: !53)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 276, column: 46)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 276, column: 5)
!837 = !DILocalVariable(name: "i", scope: !838, file: !3, line: 289, type: !76)
!838 = distinct !DILexicalBlock(scope: !811, file: !3, line: 289, column: 3)
!839 = !DILocation(line: 215, column: 32, scope: !811)
!840 = !DILocation(line: 219, column: 17, scope: !811)
!841 = !DILocation(line: 219, column: 9, scope: !811)
!842 = !DILocation(line: 220, column: 8, scope: !843)
!843 = distinct !DILexicalBlock(scope: !811, file: !3, line: 220, column: 7)
!844 = !DILocation(line: 220, column: 7, scope: !811)
!845 = !DILocation(line: 222, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !3, line: 221, column: 3)
!847 = !DILocation(line: 223, column: 5, scope: !846)
!848 = !DILocation(line: 228, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !811, file: !3, line: 228, column: 7)
!850 = !DILocation(line: 231, column: 54, scope: !811)
!851 = !DILocation(line: 231, column: 47, scope: !811)
!852 = !DILocation(line: 231, column: 26, scope: !811)
!853 = !DILocation(line: 232, column: 30, scope: !854)
!854 = distinct !DILexicalBlock(scope: !811, file: !3, line: 232, column: 7)
!855 = !DILocation(line: 232, column: 7, scope: !811)
!856 = !DILocation(line: 239, column: 12, scope: !816)
!857 = !DILocation(line: 239, column: 21, scope: !858)
!858 = !DILexicalBlockFile(scope: !819, file: !3, discriminator: 1)
!859 = !DILocation(line: 239, column: 3, scope: !860)
!860 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 1)
!861 = !DILocation(line: 234, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !854, file: !3, line: 233, column: 3)
!863 = !DILocation(line: 235, column: 5, scope: !862)
!864 = !DILocation(line: 287, column: 3, scope: !811)
!865 = !DILocation(line: 289, column: 12, scope: !838)
!866 = !DILocation(line: 290, column: 24, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 289, column: 57)
!868 = distinct !DILexicalBlock(scope: !838, file: !3, line: 289, column: 3)
!869 = !DILocation(line: 295, column: 1, scope: !811)
!870 = !DILocation(line: 243, column: 5, scope: !818)
!871 = !DILocation(line: 243, column: 9, scope: !818)
!872 = !DILocation(line: 243, column: 15, scope: !818)
!873 = !DILocation(line: 244, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !818, file: !3, line: 244, column: 9)
!875 = !DILocation(line: 247, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !818, file: !3, line: 247, column: 9)
!877 = !DILocation(line: 247, column: 14, scope: !876)
!878 = !DILocation(line: 247, column: 9, scope: !818)
!879 = !DILocation(line: 248, column: 96, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 247, column: 20)
!881 = !DILocation(line: 248, column: 7, scope: !880)
!882 = !DILocation(line: 249, column: 7, scope: !880)
!883 = !DILocation(line: 251, column: 5, scope: !818)
!884 = !DILocation(line: 251, column: 31, scope: !818)
!885 = !DILocation(line: 252, column: 40, scope: !818)
!886 = !DILocation(line: 252, column: 38, scope: !818)
!887 = !{!888, !704, i64 4}
!888 = !{!"", !704, i64 0, !704, i64 4, !889, i64 8, !890, i64 28, !705, i64 48}
!889 = !{!"", !705, i64 0, !705, i64 4, !704, i64 8, !704, i64 12, !704, i64 16}
!890 = !{!"", !704, i64 0, !704, i64 4, !704, i64 8, !704, i64 12, !704, i64 16}
!891 = !DILocation(line: 254, column: 5, scope: !818)
!892 = !DILocation(line: 254, column: 9, scope: !818)
!893 = !DILocation(line: 254, column: 18, scope: !818)
!894 = !DILocation(line: 254, column: 27, scope: !818)
!895 = !DILocation(line: 254, column: 36, scope: !818)
!896 = !DILocation(line: 254, column: 49, scope: !818)
!897 = !DILocation(line: 255, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !818, file: !3, line: 255, column: 9)
!899 = !DILocation(line: 258, column: 51, scope: !818)
!900 = !DILocation(line: 258, column: 5, scope: !818)
!901 = !DILocation(line: 258, column: 38, scope: !818)
!902 = !DILocation(line: 258, column: 49, scope: !818)
!903 = !{!888, !705, i64 8}
!904 = !DILocation(line: 259, column: 51, scope: !818)
!905 = !DILocation(line: 259, column: 38, scope: !818)
!906 = !DILocation(line: 259, column: 49, scope: !818)
!907 = !{!888, !704, i64 16}
!908 = !DILocation(line: 260, column: 51, scope: !818)
!909 = !DILocation(line: 260, column: 38, scope: !818)
!910 = !DILocation(line: 260, column: 49, scope: !818)
!911 = !{!888, !704, i64 20}
!912 = !DILocation(line: 261, column: 51, scope: !818)
!913 = !DILocation(line: 261, column: 38, scope: !818)
!914 = !DILocation(line: 261, column: 49, scope: !818)
!915 = !{!888, !704, i64 24}
!916 = !DILocation(line: 262, column: 51, scope: !818)
!917 = !DILocation(line: 262, column: 38, scope: !818)
!918 = !DILocation(line: 262, column: 49, scope: !818)
!919 = !{!888, !705, i64 12}
!920 = !DILocation(line: 264, column: 5, scope: !818)
!921 = !DILocation(line: 264, column: 9, scope: !818)
!922 = !DILocation(line: 264, column: 23, scope: !818)
!923 = !DILocation(line: 264, column: 31, scope: !818)
!924 = !DILocation(line: 264, column: 39, scope: !818)
!925 = !DILocation(line: 264, column: 56, scope: !818)
!926 = !DILocation(line: 265, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !818, file: !3, line: 265, column: 9)
!928 = !DILocation(line: 268, column: 56, scope: !818)
!929 = !DILocation(line: 268, column: 5, scope: !818)
!930 = !DILocation(line: 268, column: 39, scope: !818)
!931 = !DILocation(line: 268, column: 54, scope: !818)
!932 = !{!888, !704, i64 28}
!933 = !DILocation(line: 269, column: 56, scope: !818)
!934 = !DILocation(line: 269, column: 39, scope: !818)
!935 = !DILocation(line: 269, column: 54, scope: !818)
!936 = !{!888, !704, i64 32}
!937 = !DILocation(line: 270, column: 56, scope: !818)
!938 = !DILocation(line: 270, column: 39, scope: !818)
!939 = !DILocation(line: 270, column: 54, scope: !818)
!940 = !{!888, !704, i64 36}
!941 = !DILocation(line: 271, column: 56, scope: !818)
!942 = !DILocation(line: 271, column: 39, scope: !818)
!943 = !DILocation(line: 271, column: 54, scope: !818)
!944 = !{!888, !704, i64 40}
!945 = !DILocation(line: 272, column: 56, scope: !818)
!946 = !DILocation(line: 272, column: 39, scope: !818)
!947 = !DILocation(line: 272, column: 54, scope: !818)
!948 = !{!888, !704, i64 44}
!949 = !DILocation(line: 276, column: 14, scope: !833)
!950 = !DILocation(line: 276, column: 25, scope: !951)
!951 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 1)
!952 = !DILocation(line: 276, column: 5, scope: !953)
!953 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!954 = !DILocation(line: 277, column: 7, scope: !835)
!955 = !DILocation(line: 286, column: 3, scope: !819)
!956 = !DILocation(line: 239, column: 54, scope: !957)
!957 = !DILexicalBlockFile(scope: !819, file: !3, discriminator: 3)
!958 = !DILocation(line: 239, column: 23, scope: !858)
!959 = distinct !{!959, !960, !961}
!960 = !DILocation(line: 239, column: 3, scope: !816)
!961 = !DILocation(line: 286, column: 3, scope: !816)
!962 = !DILocation(line: 277, column: 16, scope: !835)
!963 = !DILocation(line: 278, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !835, file: !3, line: 278, column: 11)
!965 = !DILocation(line: 283, column: 56, scope: !835)
!966 = !DILocation(line: 283, column: 47, scope: !835)
!967 = !DILocation(line: 283, column: 7, scope: !835)
!968 = !DILocation(line: 283, column: 45, scope: !835)
!969 = !{!705, !705, i64 0}
!970 = !DILocation(line: 284, column: 5, scope: !836)
!971 = !DILocation(line: 276, column: 42, scope: !972)
!972 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 3)
!973 = distinct !{!973, !974, !975}
!974 = !DILocation(line: 276, column: 5, scope: !833)
!975 = !DILocation(line: 284, column: 5, scope: !833)
!976 = distinct !DISubprogram(name: "init_cv_kernel", scope: !3, file: !3, line: 297, type: !977, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!677, !140, !140}
!979 = !{!980, !981, !982, !984, !988}
!980 = !DILocalVariable(name: "py_file", arg: 1, scope: !976, file: !3, line: 297, type: !140)
!981 = !DILocalVariable(name: "dict_fn", arg: 2, scope: !976, file: !3, line: 297, type: !140)
!982 = !DILocalVariable(name: "_py_decref_tmp", scope: !983, file: !3, line: 338, type: !95)
!983 = distinct !DILexicalBlock(scope: !976, file: !3, line: 338, column: 3)
!984 = !DILocalVariable(name: "_py_xdecref_tmp", scope: !985, file: !3, line: 355, type: !95)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 355, column: 5)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 344, column: 10)
!987 = distinct !DILexicalBlock(scope: !976, file: !3, line: 340, column: 7)
!988 = !DILocalVariable(name: "_py_decref_tmp", scope: !989, file: !3, line: 355, type: !95)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 355, column: 5)
!990 = distinct !DILexicalBlock(scope: !985, file: !3, line: 355, column: 5)
!991 = !DILocation(line: 297, column: 31, scope: !976)
!992 = !DILocation(line: 297, column: 46, scope: !976)
!993 = !DILocation(line: 335, column: 3, scope: !976)
!994 = !DILocation(line: 336, column: 37, scope: !976)
!995 = !DILocation(line: 336, column: 11, scope: !976)
!996 = !DILocation(line: 336, column: 9, scope: !976)
!997 = !DILocation(line: 337, column: 13, scope: !976)
!998 = !DILocation(line: 337, column: 11, scope: !976)
!999 = !DILocation(line: 338, column: 3, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 1)
!1001 = !DILocation(line: 338, column: 3, scope: !983)
!1002 = !DILocation(line: 338, column: 3, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 1)
!1004 = distinct !DILexicalBlock(scope: !983, file: !3, line: 338, column: 3)
!1005 = !{!1006, !1007, i64 0}
!1006 = !{!"_object", !1007, i64 0, !729, i64 8}
!1007 = !{!"long", !705, i64 0}
!1008 = !DILocation(line: 338, column: 3, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 3)
!1010 = !{!1006, !729, i64 8}
!1011 = !{!1012, !729, i64 48}
!1012 = !{!"_typeobject", !1013, i64 0, !729, i64 24, !1007, i64 32, !1007, i64 40, !729, i64 48, !729, i64 56, !729, i64 64, !729, i64 72, !729, i64 80, !729, i64 88, !729, i64 96, !729, i64 104, !729, i64 112, !729, i64 120, !729, i64 128, !729, i64 136, !729, i64 144, !729, i64 152, !729, i64 160, !1007, i64 168, !729, i64 176, !729, i64 184, !729, i64 192, !729, i64 200, !1007, i64 208, !729, i64 216, !729, i64 224, !729, i64 232, !729, i64 240, !729, i64 248, !729, i64 256, !729, i64 264, !729, i64 272, !729, i64 280, !1007, i64 288, !729, i64 296, !729, i64 304, !729, i64 312, !729, i64 320, !729, i64 328, !729, i64 336, !729, i64 344, !729, i64 352, !729, i64 360, !729, i64 368, !729, i64 376, !704, i64 384, !729, i64 392}
!1013 = !{!"", !1006, i64 0, !1007, i64 16}
!1014 = !DILocation(line: 340, column: 7, scope: !987)
!1015 = !DILocation(line: 340, column: 15, scope: !987)
!1016 = !DILocation(line: 340, column: 7, scope: !976)
!1017 = !DILocation(line: 341, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !987, file: !3, line: 340, column: 24)
!1019 = !DILocation(line: 342, column: 6, scope: !1018)
!1020 = !DILocation(line: 343, column: 6, scope: !1018)
!1021 = !DILocation(line: 345, column: 50, scope: !986)
!1022 = !DILocation(line: 345, column: 18, scope: !986)
!1023 = !DILocation(line: 345, column: 16, scope: !986)
!1024 = !DILocation(line: 347, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !986, file: !3, line: 347, column: 9)
!1026 = !DILocation(line: 347, column: 20, scope: !1025)
!1027 = !DILocation(line: 347, column: 23, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1025, file: !3, discriminator: 1)
!1029 = !DILocation(line: 347, column: 9, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !986, file: !3, discriminator: 1)
!1031 = !DILocation(line: 348, column: 28, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 347, column: 53)
!1033 = !DILocation(line: 348, column: 8, scope: !1032)
!1034 = !DILocation(line: 349, column: 5, scope: !1032)
!1035 = !DILocation(line: 351, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 351, column: 13)
!1037 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 350, column: 10)
!1038 = !DILocation(line: 351, column: 13, scope: !1037)
!1039 = !DILocation(line: 352, column: 9, scope: !1036)
!1040 = !DILocation(line: 353, column: 9, scope: !1037)
!1041 = !DILocation(line: 355, column: 5, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 1)
!1043 = !DILocation(line: 355, column: 5, scope: !985)
!1044 = !DILocation(line: 355, column: 5, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !990, file: !3, discriminator: 1)
!1046 = !DILocation(line: 355, column: 5, scope: !989)
!1047 = !DILocation(line: 355, column: 5, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 3)
!1049 = distinct !DILexicalBlock(scope: !989, file: !3, line: 355, column: 5)
!1050 = !DILocation(line: 355, column: 5, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !989, file: !3, discriminator: 3)
!1052 = !DILocation(line: 355, column: 5, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 5)
!1054 = !DILocation(line: 360, column: 1, scope: !976)
!1055 = distinct !DISubprogram(name: "run_object_classification_syscall", scope: !3, file: !3, line: 365, type: !1056, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!439, !53}
!1058 = !{!1059, !1060, !1061, !1065, !1066, !1067}
!1059 = !DILocalVariable(name: "tr_val", arg: 1, scope: !1055, file: !3, line: 365, type: !53)
!1060 = !DILocalVariable(name: "object", scope: !1055, file: !3, line: 368, type: !439)
!1061 = !DILocalVariable(name: "shell_cmd", scope: !1055, file: !3, line: 372, type: !1062)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 800, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 100)
!1065 = !DILocalVariable(name: "testing", scope: !1055, file: !3, line: 375, type: !133)
!1066 = !DILocalVariable(name: "pbuffer", scope: !1055, file: !3, line: 381, type: !1062)
!1067 = !DILocalVariable(name: "val", scope: !1055, file: !3, line: 388, type: !76)
!1068 = !DILocation(line: 365, column: 52, scope: !1055)
!1069 = !DILocation(line: 372, column: 3, scope: !1055)
!1070 = !DILocation(line: 372, column: 8, scope: !1055)
!1071 = !DILocation(line: 373, column: 3, scope: !1055)
!1072 = !DILocation(line: 375, column: 19, scope: !1055)
!1073 = !DILocation(line: 375, column: 9, scope: !1055)
!1074 = !DILocation(line: 376, column: 15, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 376, column: 7)
!1076 = !DILocation(line: 376, column: 7, scope: !1055)
!1077 = !DILocation(line: 378, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 377, column: 3)
!1079 = !DILocation(line: 379, column: 5, scope: !1078)
!1080 = !DILocation(line: 381, column: 3, scope: !1055)
!1081 = !DILocation(line: 381, column: 8, scope: !1055)
!1082 = !DILocation(line: 382, column: 3, scope: !1055)
!1083 = !DILocation(line: 382, column: 10, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1055, file: !3, discriminator: 1)
!1085 = !DILocation(line: 382, column: 39, scope: !1084)
!1086 = !DILocation(line: 382, column: 3, scope: !1084)
!1087 = distinct !{!1087, !1082, !1088}
!1088 = !DILocation(line: 385, column: 3, scope: !1055)
!1089 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1090, file: !1091, line: 239, type: !119)
!1090 = distinct !DISubprogram(name: "atoi", scope: !1091, file: !1091, line: 239, type: !1092, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1094)
!1091 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!76, !119}
!1094 = !{!1089}
!1095 = !DILocation(line: 239, column: 1, scope: !1090, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 388, column: 13, scope: !1055)
!1097 = !DILocation(line: 241, column: 16, scope: !1090, inlinedAt: !1096)
!1098 = !DILocation(line: 241, column: 10, scope: !1090, inlinedAt: !1096)
!1099 = !DILocation(line: 388, column: 7, scope: !1055)
!1100 = !DILocation(line: 368, column: 11, scope: !1055)
!1101 = !DILocation(line: 390, column: 3, scope: !1055)
!1102 = !DILocation(line: 394, column: 1, scope: !1055)
!1103 = !DILocation(line: 394, column: 1, scope: !1084)
!1104 = distinct !DISubprogram(name: "run_object_classification", scope: !3, file: !3, line: 396, type: !1056, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1105)
!1105 = !{!1106, !1107, !1108, !1116, !1118, !1120, !1122, !1125, !1127, !1130, !1132, !1134}
!1106 = !DILocalVariable(name: "tr_val", arg: 1, scope: !1104, file: !3, line: 396, type: !53)
!1107 = !DILocalVariable(name: "object", scope: !1104, file: !3, line: 399, type: !439)
!1108 = !DILocalVariable(name: "_py_decref_tmp", scope: !1109, file: !3, line: 409, type: !95)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 409, column: 2)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 408, column: 20)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 408, column: 11)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 405, column: 43)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 405, column: 9)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 401, column: 24)
!1115 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 401, column: 7)
!1116 = !DILocalVariable(name: "_py_decref_tmp", scope: !1117, file: !3, line: 410, type: !95)
!1117 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 410, column: 2)
!1118 = !DILocalVariable(name: "_py_decref_tmp", scope: !1119, file: !3, line: 411, type: !95)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 411, column: 2)
!1120 = !DILocalVariable(name: "_py_decref_tmp", scope: !1121, file: !3, line: 417, type: !95)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 417, column: 7)
!1122 = !DILocalVariable(name: "val", scope: !1123, file: !3, line: 420, type: !76)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 418, column: 30)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 418, column: 11)
!1125 = !DILocalVariable(name: "_py_decref_tmp", scope: !1126, file: !3, line: 423, type: !95)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 423, column: 2)
!1127 = !DILocalVariable(name: "_py_decref_tmp", scope: !1128, file: !3, line: 426, type: !95)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 426, column: 2)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 425, column: 12)
!1130 = !DILocalVariable(name: "_py_decref_tmp", scope: !1131, file: !3, line: 427, type: !95)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 427, column: 2)
!1132 = !DILocalVariable(name: "_py_xdecref_tmp", scope: !1133, file: !3, line: 438, type: !95)
!1133 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 438, column: 5)
!1134 = !DILocalVariable(name: "_py_decref_tmp", scope: !1135, file: !3, line: 438, type: !95)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 438, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 438, column: 5)
!1137 = !DILocation(line: 396, column: 44, scope: !1104)
!1138 = !DILocation(line: 399, column: 11, scope: !1104)
!1139 = !DILocation(line: 401, column: 7, scope: !1115)
!1140 = !DILocation(line: 401, column: 15, scope: !1115)
!1141 = !DILocation(line: 401, column: 7, scope: !1104)
!1142 = !DILocation(line: 403, column: 45, scope: !1114)
!1143 = !DILocation(line: 403, column: 13, scope: !1114)
!1144 = !DILocation(line: 403, column: 11, scope: !1114)
!1145 = !DILocation(line: 405, column: 9, scope: !1113)
!1146 = !DILocation(line: 405, column: 15, scope: !1113)
!1147 = !DILocation(line: 405, column: 18, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1113, file: !3, discriminator: 1)
!1149 = !DILocation(line: 405, column: 9, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1114, file: !3, discriminator: 1)
!1151 = !DILocation(line: 406, column: 15, scope: !1112)
!1152 = !DILocation(line: 406, column: 13, scope: !1112)
!1153 = !DILocation(line: 407, column: 32, scope: !1112)
!1154 = !DILocation(line: 407, column: 16, scope: !1112)
!1155 = !DILocation(line: 407, column: 14, scope: !1112)
!1156 = !DILocation(line: 408, column: 12, scope: !1111)
!1157 = !DILocation(line: 408, column: 11, scope: !1112)
!1158 = !DILocation(line: 409, column: 2, scope: !1109)
!1159 = !DILocation(line: 409, column: 2, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !3, discriminator: 1)
!1161 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 409, column: 2)
!1162 = !DILocation(line: 409, column: 2, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 1)
!1164 = !DILocation(line: 409, column: 2, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1161, file: !3, discriminator: 3)
!1166 = !DILocation(line: 410, column: 2, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1117, file: !3, discriminator: 1)
!1168 = !DILocation(line: 410, column: 2, scope: !1117)
!1169 = !DILocation(line: 410, column: 2, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 1)
!1171 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 410, column: 2)
!1172 = !DILocation(line: 410, column: 2, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 3)
!1174 = !DILocation(line: 411, column: 2, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1119, file: !3, discriminator: 1)
!1176 = !DILocation(line: 411, column: 2, scope: !1119)
!1177 = !DILocation(line: 411, column: 2, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 411, column: 2)
!1180 = !DILocation(line: 411, column: 2, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 3)
!1182 = !DILocation(line: 412, column: 10, scope: !1110)
!1183 = !DILocation(line: 412, column: 2, scope: !1110)
!1184 = !DILocation(line: 413, column: 2, scope: !1110)
!1185 = !DILocation(line: 415, column: 7, scope: !1112)
!1186 = !DILocation(line: 416, column: 39, scope: !1112)
!1187 = !DILocation(line: 416, column: 46, scope: !1112)
!1188 = !DILocation(line: 416, column: 19, scope: !1112)
!1189 = !DILocation(line: 416, column: 17, scope: !1112)
!1190 = !DILocation(line: 417, column: 7, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1121, file: !3, discriminator: 1)
!1192 = !DILocation(line: 417, column: 7, scope: !1121)
!1193 = !DILocation(line: 417, column: 7, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1195, file: !3, discriminator: 1)
!1195 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 417, column: 7)
!1196 = !DILocation(line: 417, column: 7, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1195, file: !3, discriminator: 3)
!1198 = !DILocation(line: 418, column: 11, scope: !1124)
!1199 = !DILocation(line: 418, column: 21, scope: !1124)
!1200 = !DILocation(line: 418, column: 11, scope: !1112)
!1201 = !DILocation(line: 420, column: 12, scope: !1123)
!1202 = !DILocation(line: 420, column: 6, scope: !1123)
!1203 = !DILocation(line: 423, column: 2, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1126, file: !3, discriminator: 1)
!1205 = !DILocation(line: 423, column: 2, scope: !1126)
!1206 = !DILocation(line: 423, column: 2, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1208, file: !3, discriminator: 1)
!1208 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 423, column: 2)
!1209 = !DILocation(line: 423, column: 2, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1208, file: !3, discriminator: 3)
!1211 = !DILocation(line: 426, column: 2, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1128, file: !3, discriminator: 1)
!1213 = !DILocation(line: 426, column: 2, scope: !1128)
!1214 = !DILocation(line: 426, column: 2, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !3, discriminator: 1)
!1216 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 426, column: 2)
!1217 = !DILocation(line: 426, column: 2, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1216, file: !3, discriminator: 3)
!1219 = !DILocation(line: 427, column: 2, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1131, file: !3, discriminator: 1)
!1221 = !DILocation(line: 427, column: 2, scope: !1131)
!1222 = !DILocation(line: 427, column: 2, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1224, file: !3, discriminator: 1)
!1224 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 427, column: 2)
!1225 = !DILocation(line: 427, column: 2, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1224, file: !3, discriminator: 3)
!1227 = !DILocation(line: 428, column: 2, scope: !1129)
!1228 = !DILocation(line: 429, column: 2, scope: !1129)
!1229 = !DILocation(line: 430, column: 2, scope: !1129)
!1230 = !DILocation(line: 434, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 434, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 433, column: 10)
!1233 = !DILocation(line: 434, column: 11, scope: !1232)
!1234 = !DILocation(line: 435, column: 2, scope: !1231)
!1235 = !DILocation(line: 436, column: 7, scope: !1232)
!1236 = !DILocation(line: 438, column: 5, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1133, file: !3, discriminator: 1)
!1238 = !DILocation(line: 438, column: 5, scope: !1133)
!1239 = !DILocation(line: 438, column: 5, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1136, file: !3, discriminator: 1)
!1241 = !DILocation(line: 438, column: 5, scope: !1135)
!1242 = !DILocation(line: 438, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !3, discriminator: 3)
!1244 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 438, column: 5)
!1245 = !DILocation(line: 438, column: 5, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1135, file: !3, discriminator: 3)
!1247 = !DILocation(line: 438, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1244, file: !3, discriminator: 5)
!1249 = !DILocation(line: 443, column: 1, scope: !1104)
!1250 = distinct !DISubprogram(name: "iterate_cv_kernel", scope: !3, file: !3, line: 446, type: !1251, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1260)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!439, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "vehicle_state_t", file: !6, line: 103, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 98, size: 96, elements: !1255)
!1255 = !{!1256, !1257, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1254, file: !6, line: 100, baseType: !454, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !1254, file: !6, line: 101, baseType: !1258, size: 32, offset: 32)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "lane_t", file: !6, line: 95, baseType: !33)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !1254, file: !6, line: 102, baseType: !56, size: 32, offset: 64)
!1260 = !{!1261, !1262, !1263}
!1261 = !DILocalVariable(name: "vs", arg: 1, scope: !1250, file: !3, line: 446, type: !1253)
!1262 = !DILocalVariable(name: "tr_val", scope: !1250, file: !3, line: 450, type: !53)
!1263 = !DILocalVariable(name: "d_object", scope: !1250, file: !3, line: 459, type: !439)
!1264 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1265 = !DILocation(line: 446, column: 43, scope: !1250)
!1266 = !DIExpression(DW_OP_LLVM_fragment, 64, 32)
!1267 = !DILocation(line: 450, column: 12, scope: !1250)
!1268 = !DILocation(line: 451, column: 25, scope: !1250)
!1269 = !DILocation(line: 451, column: 10, scope: !1250)
!1270 = !DILocation(line: 451, column: 3, scope: !1250)
!1271 = !DILocation(line: 453, column: 34, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 451, column: 32)
!1273 = !DILocation(line: 454, column: 30, scope: !1272)
!1274 = !DILocation(line: 455, column: 37, scope: !1272)
!1275 = !DILocation(line: 456, column: 32, scope: !1272)
!1276 = !DILocation(line: 457, column: 14, scope: !1272)
!1277 = !DILocation(line: 457, column: 95, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1272, file: !3, discriminator: 1)
!1279 = !DILocation(line: 457, column: 95, scope: !1272)
!1280 = !DILocation(line: 459, column: 11, scope: !1250)
!1281 = !DILocation(line: 461, column: 3, scope: !1250)
!1282 = distinct !DISubprogram(name: "execute_cv_kernel", scope: !3, file: !3, line: 465, type: !1283, isLocal: false, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!439, !439}
!1285 = !{!1286, !1287}
!1286 = !DILocalVariable(name: "in_tr_val", arg: 1, scope: !1282, file: !3, line: 465, type: !439)
!1287 = !DILocalVariable(name: "object", scope: !1282, file: !3, line: 470, type: !439)
!1288 = !DILocation(line: 465, column: 35, scope: !1282)
!1289 = !DILocation(line: 470, column: 20, scope: !1282)
!1290 = !DILocation(line: 470, column: 11, scope: !1282)
!1291 = !DILocation(line: 474, column: 3, scope: !1282)
!1292 = distinct !DISubprogram(name: "post_execute_cv_kernel", scope: !3, file: !3, line: 477, type: !1293, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !439, !439}
!1295 = !{!1296, !1297}
!1296 = !DILocalVariable(name: "tr_val", arg: 1, scope: !1292, file: !3, line: 477, type: !439)
!1297 = !DILocalVariable(name: "cv_object", arg: 2, scope: !1292, file: !3, line: 477, type: !439)
!1298 = !DILocation(line: 477, column: 37, scope: !1292)
!1299 = !DILocation(line: 477, column: 53, scope: !1292)
!1300 = !DILocation(line: 479, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 479, column: 7)
!1302 = !DILocation(line: 479, column: 7, scope: !1292)
!1303 = !DILocation(line: 480, column: 5, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 479, column: 28)
!1305 = !DILocation(line: 480, column: 27, scope: !1304)
!1306 = !DILocation(line: 482, column: 3, scope: !1304)
!1307 = !DILocation(line: 483, column: 5, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 482, column: 10)
!1309 = !DILocation(line: 486, column: 3, scope: !1292)
!1310 = !DILocation(line: 485, column: 28, scope: !1292)
!1311 = !DILocation(line: 486, column: 26, scope: !1292)
!1312 = !DILocation(line: 487, column: 1, scope: !1292)
!1313 = distinct !DISubprogram(name: "iterate_rad_kernel", scope: !3, file: !3, line: 491, type: !1314, isLocal: false, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!48, !1253}
!1316 = !{!1317, !1318}
!1317 = !DILocalVariable(name: "vs", arg: 1, scope: !1313, file: !3, line: 491, type: !1253)
!1318 = !DILocalVariable(name: "tr_val", scope: !1313, file: !3, line: 495, type: !53)
!1319 = !DILocation(line: 491, column: 56, scope: !1313)
!1320 = !DILocation(line: 495, column: 37, scope: !1313)
!1321 = !DILocation(line: 495, column: 21, scope: !1313)
!1322 = !DILocation(line: 495, column: 43, scope: !1313)
!1323 = !DILocation(line: 495, column: 12, scope: !1313)
!1324 = !DILocation(line: 497, column: 12, scope: !1313)
!1325 = !DILocation(line: 497, column: 3, scope: !1313)
!1326 = distinct !DISubprogram(name: "execute_rad_kernel", scope: !3, file: !3, line: 501, type: !1327, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1331)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "distance_t", file: !6, line: 30, baseType: !56)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1331 = !{!1332, !1333}
!1332 = !DILocalVariable(name: "inputs", arg: 1, scope: !1326, file: !3, line: 501, type: !1330)
!1333 = !DILocalVariable(name: "dist", scope: !1326, file: !3, line: 507, type: !1329)
!1334 = !DILocation(line: 501, column: 39, scope: !1326)
!1335 = !DILocation(line: 507, column: 21, scope: !1326)
!1336 = !DILocation(line: 507, column: 14, scope: !1326)
!1337 = !DILocation(line: 510, column: 3, scope: !1326)
!1338 = distinct !DISubprogram(name: "post_execute_rad_kernel", scope: !3, file: !3, line: 514, type: !1339, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !53, !1329, !1329}
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347}
!1342 = !DILocalVariable(name: "index", arg: 1, scope: !1338, file: !3, line: 514, type: !53)
!1343 = !DILocalVariable(name: "tr_dist", arg: 2, scope: !1338, file: !3, line: 514, type: !1329)
!1344 = !DILocalVariable(name: "dist", arg: 3, scope: !1338, file: !3, line: 514, type: !1329)
!1345 = !DILocalVariable(name: "error", scope: !1338, file: !3, line: 517, type: !56)
!1346 = !DILocalVariable(name: "abs_err", scope: !1338, file: !3, line: 525, type: !56)
!1347 = !DILocalVariable(name: "pct_err", scope: !1338, file: !3, line: 526, type: !56)
!1348 = !DILocation(line: 514, column: 39, scope: !1338)
!1349 = !DILocation(line: 514, column: 57, scope: !1338)
!1350 = !DILocation(line: 514, column: 77, scope: !1338)
!1351 = !DILocation(line: 518, column: 19, scope: !1338)
!1352 = !DILocation(line: 519, column: 3, scope: !1338)
!1353 = !DILocation(line: 519, column: 24, scope: !1338)
!1354 = !DILocation(line: 520, column: 8, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 520, column: 7)
!1356 = !DILocation(line: 520, column: 16, scope: !1355)
!1357 = !DILocation(line: 520, column: 35, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1355, file: !3, discriminator: 1)
!1359 = !DILocation(line: 520, column: 26, scope: !1355)
!1360 = !DILocation(line: 523, column: 22, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 522, column: 10)
!1362 = !DILocation(line: 517, column: 9, scope: !1338)
!1363 = !DILocation(line: 525, column: 19, scope: !1338)
!1364 = !DILocation(line: 525, column: 9, scope: !1338)
!1365 = !DILocation(line: 527, column: 15, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 527, column: 7)
!1367 = !DILocation(line: 528, column: 22, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 527, column: 23)
!1369 = !DILocation(line: 526, column: 9, scope: !1338)
!1370 = !DILocation(line: 527, column: 7, scope: !1338)
!1371 = !DILocation(line: 534, column: 92, scope: !1338)
!1372 = !DILocation(line: 534, column: 105, scope: !1338)
!1373 = !DILocation(line: 534, column: 114, scope: !1338)
!1374 = !DILocation(line: 534, column: 3, scope: !1338)
!1375 = !DILocation(line: 535, column: 15, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 535, column: 7)
!1377 = !DILocation(line: 535, column: 7, scope: !1338)
!1378 = !DILocation(line: 536, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 535, column: 23)
!1380 = !DILocation(line: 537, column: 3, scope: !1379)
!1381 = !DILocation(line: 537, column: 22, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1383, file: !3, discriminator: 1)
!1383 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 537, column: 14)
!1384 = !DILocation(line: 537, column: 14, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1376, file: !3, discriminator: 1)
!1386 = !DILocation(line: 539, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 537, column: 30)
!1388 = !DILocation(line: 540, column: 3, scope: !1387)
!1389 = !DILocation(line: 540, column: 22, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1391, file: !3, discriminator: 1)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 540, column: 14)
!1392 = !DILocation(line: 540, column: 14, scope: !1382)
!1393 = !DILocation(line: 542, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 540, column: 29)
!1395 = !DILocation(line: 543, column: 3, scope: !1394)
!1396 = !DILocation(line: 543, column: 22, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !3, discriminator: 1)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 543, column: 14)
!1399 = !DILocation(line: 548, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 546, column: 10)
!1401 = !DILocation(line: 545, column: 5, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 543, column: 30)
!1403 = !DILocation(line: 543, column: 14, scope: !1390)
!1404 = !DILocation(line: 550, column: 1, scope: !1338)
!1405 = distinct !DISubprogram(name: "iterate_vit_kernel", scope: !3, file: !3, line: 558, type: !1406, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!62, !1253}
!1408 = !{!1409, !1410, !1411, !1414, !1416, !1417, !1419, !1420}
!1409 = !DILocalVariable(name: "vs", arg: 1, scope: !1405, file: !3, line: 558, type: !1253)
!1410 = !DILocalVariable(name: "tr_val", scope: !1405, file: !3, line: 562, type: !53)
!1411 = !DILocalVariable(name: "nd_1", scope: !1412, file: !3, line: 566, type: !53)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 565, column: 5)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 563, column: 20)
!1414 = !DILocalVariable(name: "ndp1", scope: !1415, file: !3, line: 580, type: !53)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 579, column: 5)
!1416 = !DILocalVariable(name: "ndm1", scope: !1415, file: !3, line: 581, type: !53)
!1417 = !DILocalVariable(name: "nd_3", scope: !1418, file: !3, line: 600, type: !53)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 599, column: 5)
!1419 = !DILocalVariable(name: "trace_msg", scope: !1405, file: !3, line: 614, type: !62)
!1420 = !DILocalVariable(name: "msg_offset", scope: !1405, file: !3, line: 617, type: !76)
!1421 = !DILocation(line: 558, column: 54, scope: !1405)
!1422 = !DILocation(line: 561, column: 19, scope: !1405)
!1423 = !DILocation(line: 561, column: 3, scope: !1405)
!1424 = !DILocation(line: 561, column: 29, scope: !1405)
!1425 = !DILocation(line: 562, column: 12, scope: !1405)
!1426 = !DILocation(line: 563, column: 14, scope: !1405)
!1427 = !DILocation(line: 563, column: 3, scope: !1405)
!1428 = !DILocation(line: 566, column: 16, scope: !1412)
!1429 = !DILocation(line: 568, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 568, column: 11)
!1431 = !DILocation(line: 568, column: 27, scope: !1430)
!1432 = !DILocation(line: 568, column: 35, scope: !1430)
!1433 = !DILocation(line: 566, column: 58, scope: !1412)
!1434 = !DILocation(line: 566, column: 74, scope: !1412)
!1435 = !DILocation(line: 566, column: 47, scope: !1412)
!1436 = !DILocation(line: 566, column: 45, scope: !1412)
!1437 = !DILocation(line: 568, column: 44, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1430, file: !3, discriminator: 1)
!1439 = !DILocation(line: 568, column: 11, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1412, file: !3, discriminator: 1)
!1441 = !DILocation(line: 580, column: 78, scope: !1415)
!1442 = !DILocation(line: 580, column: 58, scope: !1415)
!1443 = !DILocation(line: 580, column: 82, scope: !1415)
!1444 = !DILocation(line: 580, column: 47, scope: !1415)
!1445 = !DILocation(line: 580, column: 45, scope: !1415)
!1446 = !DILocation(line: 580, column: 16, scope: !1415)
!1447 = !DILocation(line: 581, column: 78, scope: !1415)
!1448 = !DILocation(line: 581, column: 58, scope: !1415)
!1449 = !DILocation(line: 581, column: 16, scope: !1415)
!1450 = !DILocation(line: 586, column: 12, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 586, column: 11)
!1452 = !DILocation(line: 586, column: 35, scope: !1451)
!1453 = !DILocation(line: 586, column: 43, scope: !1451)
!1454 = !DILocation(line: 581, column: 82, scope: !1415)
!1455 = !DILocation(line: 581, column: 47, scope: !1415)
!1456 = !DILocation(line: 581, column: 45, scope: !1415)
!1457 = !DILocation(line: 586, column: 52, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1451, file: !3, discriminator: 1)
!1459 = !DILocation(line: 586, column: 11, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1415, file: !3, discriminator: 1)
!1461 = !DILocation(line: 591, column: 12, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 591, column: 11)
!1463 = !DILocation(line: 591, column: 35, scope: !1462)
!1464 = !DILocation(line: 591, column: 52, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1462, file: !3, discriminator: 1)
!1466 = !DILocation(line: 591, column: 43, scope: !1462)
!1467 = !DILocation(line: 594, column: 9, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 591, column: 76)
!1469 = !DILocation(line: 600, column: 16, scope: !1418)
!1470 = !DILocation(line: 602, column: 12, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 602, column: 11)
!1472 = !DILocation(line: 602, column: 27, scope: !1471)
!1473 = !DILocation(line: 602, column: 35, scope: !1471)
!1474 = !DILocation(line: 600, column: 58, scope: !1418)
!1475 = !DILocation(line: 600, column: 74, scope: !1418)
!1476 = !DILocation(line: 600, column: 47, scope: !1418)
!1477 = !DILocation(line: 600, column: 45, scope: !1418)
!1478 = !DILocation(line: 602, column: 44, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1471, file: !3, discriminator: 1)
!1480 = !DILocation(line: 602, column: 11, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 1)
!1482 = !DILocation(line: 617, column: 7, scope: !1405)
!1483 = !DILocation(line: 618, column: 10, scope: !1405)
!1484 = !DILocation(line: 618, column: 3, scope: !1405)
!1485 = !DILocation(line: 627, column: 3, scope: !1405)
!1486 = !DILocation(line: 629, column: 19, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 627, column: 18)
!1488 = !DILocation(line: 614, column: 21, scope: !1405)
!1489 = !DILocation(line: 630, column: 5, scope: !1487)
!1490 = !DILocation(line: 632, column: 19, scope: !1487)
!1491 = !DILocation(line: 632, column: 44, scope: !1487)
!1492 = !DILocation(line: 633, column: 5, scope: !1487)
!1493 = !DILocation(line: 635, column: 19, scope: !1487)
!1494 = !DILocation(line: 635, column: 44, scope: !1487)
!1495 = !DILocation(line: 636, column: 5, scope: !1487)
!1496 = !DILocation(line: 638, column: 19, scope: !1487)
!1497 = !DILocation(line: 638, column: 44, scope: !1487)
!1498 = !DILocation(line: 639, column: 5, scope: !1487)
!1499 = !DILocation(line: 642, column: 3, scope: !1405)
!1500 = distinct !DISubprogram(name: "execute_vit_kernel", scope: !3, file: !3, line: 645, type: !1501, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1504)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!1503, !62, !76}
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "message_t", file: !6, line: 115, baseType: !40)
!1504 = !{!1505, !1506, !1507, !1508, !1510, !1512, !1514, !1517}
!1505 = !DILocalVariable(name: "trace_msg", arg: 1, scope: !1500, file: !3, line: 645, type: !62)
!1506 = !DILocalVariable(name: "num_msgs", arg: 2, scope: !1500, file: !3, line: 645, type: !76)
!1507 = !DILocalVariable(name: "msg", scope: !1500, file: !3, line: 648, type: !1503)
!1508 = !DILocalVariable(name: "result", scope: !1500, file: !3, line: 649, type: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1510 = !DILocalVariable(name: "msg_text", scope: !1500, file: !3, line: 650, type: !1511)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 12800, elements: !572)
!1512 = !DILocalVariable(name: "mi", scope: !1513, file: !3, line: 651, type: !76)
!1513 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 651, column: 3)
!1514 = !DILocalVariable(name: "n_res_char", scope: !1515, file: !3, line: 653, type: !76)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 651, column: 41)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 651, column: 3)
!1517 = !DILocalVariable(name: "psdusize", scope: !1515, file: !3, line: 656, type: !76)
!1518 = !DILocation(line: 645, column: 48, scope: !1500)
!1519 = !DILocation(line: 645, column: 63, scope: !1500)
!1520 = !DILocation(line: 648, column: 13, scope: !1500)
!1521 = !DILocation(line: 650, column: 3, scope: !1500)
!1522 = !DILocation(line: 650, column: 12, scope: !1500)
!1523 = !DILocation(line: 651, column: 12, scope: !1513)
!1524 = !DILocation(line: 651, column: 23, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1516, file: !3, discriminator: 1)
!1526 = !DILocation(line: 651, column: 3, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1513, file: !3, discriminator: 1)
!1528 = !DILocation(line: 668, column: 12, scope: !1515)
!1529 = !DILocation(line: 668, column: 5, scope: !1515)
!1530 = !DILocation(line: 680, column: 1, scope: !1500)
!1531 = !DILocation(line: 679, column: 3, scope: !1500)
!1532 = !DILocation(line: 653, column: 5, scope: !1515)
!1533 = !DILocation(line: 653, column: 9, scope: !1515)
!1534 = !DILocation(line: 649, column: 12, scope: !1500)
!1535 = !DILocation(line: 656, column: 39, scope: !1515)
!1536 = !DILocation(line: 656, column: 9, scope: !1515)
!1537 = !DILocation(line: 658, column: 5, scope: !1515)
!1538 = !DILocation(line: 675, column: 3, scope: !1516)
!1539 = !DILocation(line: 651, column: 37, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1516, file: !3, discriminator: 3)
!1541 = distinct !{!1541, !1542, !1543}
!1542 = !DILocation(line: 651, column: 3, scope: !1513)
!1543 = !DILocation(line: 675, column: 3, scope: !1513)
!1544 = distinct !DISubprogram(name: "post_execute_vit_kernel", scope: !3, file: !3, line: 682, type: !1545, isLocal: false, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1503, !1503}
!1547 = !{!1548, !1549}
!1548 = !DILocalVariable(name: "tr_msg", arg: 1, scope: !1544, file: !3, line: 682, type: !1503)
!1549 = !DILocalVariable(name: "dec_msg", arg: 2, scope: !1544, file: !3, line: 682, type: !1503)
!1550 = !DILocation(line: 682, column: 40, scope: !1544)
!1551 = !DILocation(line: 682, column: 58, scope: !1544)
!1552 = !DILocation(line: 684, column: 13, scope: !1544)
!1553 = !DILocation(line: 685, column: 15, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 685, column: 7)
!1555 = !DILocation(line: 685, column: 7, scope: !1544)
!1556 = !DILocation(line: 686, column: 20, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 685, column: 26)
!1558 = !DILocation(line: 687, column: 3, scope: !1557)
!1559 = !DILocation(line: 688, column: 1, scope: !1544)
!1560 = distinct !DISubprogram(name: "plan_and_control", scope: !3, file: !3, line: 694, type: !1561, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1253, !439, !1329, !1503, !1253}
!1563 = !{!1564, !1565, !1566, !1567, !1568}
!1564 = !DILocalVariable(name: "label", arg: 1, scope: !1560, file: !3, line: 694, type: !439)
!1565 = !DILocalVariable(name: "distance", arg: 2, scope: !1560, file: !3, line: 694, type: !1329)
!1566 = !DILocalVariable(name: "message", arg: 3, scope: !1560, file: !3, line: 694, type: !1503)
!1567 = !DILocalVariable(name: "vehicle_state", arg: 4, scope: !1560, file: !3, line: 694, type: !1253)
!1568 = !DILocalVariable(name: "new_vehicle_state", scope: !1560, file: !3, line: 698, type: !1253)
!1569 = !DILocation(line: 694, column: 105, scope: !1560)
!1570 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1571 = !DIExpression(DW_OP_LLVM_fragment, 32, 32)
!1572 = !DILocation(line: 694, column: 42, scope: !1560)
!1573 = !DILocation(line: 694, column: 60, scope: !1560)
!1574 = !DILocation(line: 694, column: 80, scope: !1560)
!1575 = !DILocation(line: 698, column: 19, scope: !1560)
!1576 = !DILocation(line: 699, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 699, column: 7)
!1578 = !DILocation(line: 699, column: 7, scope: !1560)
!1579 = !DILocation(line: 705, column: 18, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 705, column: 7)
!1581 = !DILocation(line: 705, column: 7, scope: !1560)
!1582 = !DILocation(line: 710, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 710, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 709, column: 11)
!1585 = !DILocation(line: 710, column: 18, scope: !1583)
!1586 = !DILocation(line: 710, column: 9, scope: !1584)
!1587 = !DILocation(line: 711, column: 71, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 710, column: 38)
!1589 = !DILocation(line: 711, column: 7, scope: !1588)
!1590 = !DILocation(line: 715, column: 14, scope: !1588)
!1591 = !DILocation(line: 715, column: 7, scope: !1588)
!1592 = !DILocation(line: 720, column: 5, scope: !1584)
!1593 = !DILocation(line: 723, column: 25, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 723, column: 6)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 720, column: 22)
!1596 = !DILocation(line: 723, column: 6, scope: !1595)
!1597 = !DILocation(line: 730, column: 2, scope: !1595)
!1598 = !DILocation(line: 733, column: 25, scope: !1595)
!1599 = !DILocation(line: 734, column: 2, scope: !1595)
!1600 = !DILocation(line: 737, column: 25, scope: !1595)
!1601 = !DILocation(line: 738, column: 2, scope: !1595)
!1602 = !DILocation(line: 754, column: 60, scope: !1595)
!1603 = !DILocation(line: 754, column: 7, scope: !1595)
!1604 = !DILocation(line: 756, column: 5, scope: !1595)
!1605 = !DILocation(line: 759, column: 5, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 757, column: 10)
!1607 = !DILocation(line: 762, column: 51, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 762, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 759, column: 33)
!1610 = !DILocation(line: 773, column: 51, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 773, column: 11)
!1612 = !DILocation(line: 795, column: 10, scope: !1560)
!1613 = !DILocation(line: 795, column: 3, scope: !1560)
!1614 = !DILocation(line: 796, column: 1, scope: !1560)
!1615 = distinct !DISubprogram(name: "closeout_cv_kernel", scope: !3, file: !3, line: 801, type: !1616, isLocal: false, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null}
!1618 = !{!1619, !1620, !1622, !1623, !1627, !1631}
!1619 = !DILocalVariable(name: "label_correct_pctg", scope: !1615, file: !3, line: 803, type: !56)
!1620 = !DILocalVariable(name: "i", scope: !1621, file: !3, line: 805, type: !76)
!1621 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 805, column: 3)
!1622 = !DILocalVariable(name: "errs", scope: !1615, file: !3, line: 810, type: !53)
!1623 = !DILocalVariable(name: "i", scope: !1624, file: !3, line: 813, type: !76)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 813, column: 5)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 811, column: 17)
!1626 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 811, column: 7)
!1627 = !DILocalVariable(name: "j", scope: !1628, file: !3, line: 814, type: !76)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 814, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 813, column: 43)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 813, column: 5)
!1631 = !DILocalVariable(name: "_py_decref_tmp", scope: !1632, file: !3, line: 823, type: !95)
!1632 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 823, column: 5)
!1633 = !DILocation(line: 803, column: 37, scope: !1615)
!1634 = !DILocation(line: 803, column: 36, scope: !1615)
!1635 = !DILocation(line: 803, column: 68, scope: !1615)
!1636 = !DILocation(line: 803, column: 62, scope: !1615)
!1637 = !DILocation(line: 803, column: 30, scope: !1615)
!1638 = !DILocation(line: 803, column: 9, scope: !1615)
!1639 = !DILocation(line: 804, column: 135, scope: !1615)
!1640 = !DILocation(line: 804, column: 3, scope: !1615)
!1641 = !DILocation(line: 805, column: 12, scope: !1621)
!1642 = !DILocation(line: 806, column: 33, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 805, column: 41)
!1644 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 805, column: 3)
!1645 = !DILocation(line: 806, column: 32, scope: !1643)
!1646 = !DILocation(line: 806, column: 54, scope: !1643)
!1647 = !DILocation(line: 806, column: 48, scope: !1643)
!1648 = !DILocation(line: 806, column: 26, scope: !1643)
!1649 = !DILocation(line: 807, column: 88, scope: !1643)
!1650 = !DILocation(line: 807, column: 138, scope: !1643)
!1651 = !DILocation(line: 807, column: 5, scope: !1643)
!1652 = !DILocation(line: 810, column: 19, scope: !1615)
!1653 = !DILocation(line: 810, column: 47, scope: !1615)
!1654 = !DILocation(line: 810, column: 45, scope: !1615)
!1655 = !DILocation(line: 810, column: 12, scope: !1615)
!1656 = !DILocation(line: 811, column: 12, scope: !1626)
!1657 = !DILocation(line: 811, column: 7, scope: !1615)
!1658 = !DILocation(line: 812, column: 5, scope: !1625)
!1659 = !DILocation(line: 813, column: 14, scope: !1624)
!1660 = !DILocation(line: 813, column: 5, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1624, file: !3, discriminator: 1)
!1662 = !DILocation(line: 814, column: 16, scope: !1628)
!1663 = !DILocation(line: 815, column: 6, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 815, column: 6)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 814, column: 45)
!1666 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 814, column: 7)
!1667 = !DILocation(line: 815, column: 27, scope: !1664)
!1668 = !DILocation(line: 815, column: 6, scope: !1665)
!1669 = !DILocation(line: 816, column: 58, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 815, column: 33)
!1671 = !DILocation(line: 816, column: 75, scope: !1670)
!1672 = !DILocation(line: 816, column: 4, scope: !1670)
!1673 = !DILocation(line: 817, column: 2, scope: !1670)
!1674 = !DILocation(line: 823, column: 5, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1632, file: !3, discriminator: 1)
!1676 = !DILocation(line: 823, column: 5, scope: !1632)
!1677 = !DILocation(line: 823, column: 5, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 1)
!1679 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 823, column: 5)
!1680 = !DILocation(line: 823, column: 5, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 3)
!1682 = !DILocation(line: 824, column: 5, scope: !1615)
!1683 = !DILocation(line: 826, column: 1, scope: !1615)
!1684 = !DILocation(line: 813, column: 39, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1630, file: !3, discriminator: 3)
!1686 = !DILocation(line: 813, column: 23, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1630, file: !3, discriminator: 1)
!1688 = distinct !{!1688, !1689, !1690}
!1689 = !DILocation(line: 813, column: 5, scope: !1624)
!1690 = !DILocation(line: 819, column: 5, scope: !1624)
!1691 = distinct !DISubprogram(name: "closeout_rad_kernel", scope: !3, file: !3, line: 828, type: !1616, isLocal: false, isDefinition: true, scopeLine: 829, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1692)
!1692 = !{!1693, !1695, !1696, !1698, !1702}
!1693 = !DILocalVariable(name: "di", scope: !1694, file: !3, line: 831, type: !76)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 831, column: 3)
!1695 = !DILocalVariable(name: "totals", scope: !1691, file: !3, line: 836, type: !507)
!1696 = !DILocalVariable(name: "di", scope: !1697, file: !3, line: 838, type: !76)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 838, column: 3)
!1698 = !DILocalVariable(name: "i", scope: !1699, file: !3, line: 840, type: !76)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 840, column: 5)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 838, column: 59)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 838, column: 3)
!1702 = !DILocalVariable(name: "i", scope: !1703, file: !3, line: 847, type: !76)
!1703 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 847, column: 3)
!1704 = !DILocation(line: 830, column: 3, scope: !1691)
!1705 = !DILocation(line: 831, column: 12, scope: !1694)
!1706 = !DILocation(line: 831, column: 25, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !3, discriminator: 1)
!1708 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 831, column: 3)
!1709 = !DILocation(line: 831, column: 23, scope: !1707)
!1710 = !DILocation(line: 831, column: 3, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1694, file: !3, discriminator: 1)
!1712 = !DILocation(line: 832, column: 44, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 831, column: 59)
!1714 = !DILocation(line: 835, column: 3, scope: !1691)
!1715 = !DILocation(line: 838, column: 12, scope: !1697)
!1716 = !DILocation(line: 838, column: 25, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1701, file: !3, discriminator: 1)
!1718 = !DILocation(line: 838, column: 23, scope: !1717)
!1719 = !DILocation(line: 838, column: 3, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1697, file: !3, discriminator: 1)
!1721 = !DILocation(line: 839, column: 73, scope: !1700)
!1722 = !DILocation(line: 832, column: 70, scope: !1713)
!1723 = !DILocation(line: 832, column: 80, scope: !1713)
!1724 = !DILocation(line: 832, column: 5, scope: !1713)
!1725 = !DILocation(line: 831, column: 55, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1708, file: !3, discriminator: 3)
!1727 = distinct !{!1727, !1728, !1729}
!1728 = !DILocation(line: 831, column: 3, scope: !1694)
!1729 = !DILocation(line: 833, column: 3, scope: !1694)
!1730 = !DILocation(line: 846, column: 3, scope: !1691)
!1731 = !DILocation(line: 848, column: 53, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 847, column: 31)
!1733 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 847, column: 3)
!1734 = !DILocation(line: 847, column: 12, scope: !1703)
!1735 = !DILocation(line: 848, column: 30, scope: !1732)
!1736 = !DILocation(line: 848, column: 5, scope: !1732)
!1737 = !DILocation(line: 850, column: 1, scope: !1691)
!1738 = !DILocation(line: 842, column: 17, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 840, column: 33)
!1740 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 840, column: 5)
!1741 = !DILocation(line: 839, column: 99, scope: !1700)
!1742 = !DILocation(line: 839, column: 132, scope: !1700)
!1743 = !DILocation(line: 839, column: 106, scope: !1700)
!1744 = !DILocation(line: 839, column: 142, scope: !1700)
!1745 = !DILocation(line: 839, column: 5, scope: !1700)
!1746 = !DILocation(line: 840, column: 14, scope: !1699)
!1747 = !DILocation(line: 841, column: 34, scope: !1739)
!1748 = !DILocation(line: 841, column: 57, scope: !1739)
!1749 = !DILocation(line: 841, column: 7, scope: !1739)
!1750 = !DILocation(line: 842, column: 20, scope: !1739)
!1751 = !DILocation(line: 838, column: 55, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1701, file: !3, discriminator: 3)
!1753 = distinct !{!1753, !1754, !1755}
!1754 = !DILocation(line: 838, column: 3, scope: !1697)
!1755 = !DILocation(line: 844, column: 3, scope: !1697)
!1756 = distinct !DISubprogram(name: "closeout_vit_kernel", scope: !3, file: !3, line: 852, type: !1616, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1757)
!1757 = !{!1758, !1759, !1761, !1763}
!1758 = !DILocalVariable(name: "sum", scope: !1756, file: !3, line: 857, type: !53)
!1759 = !DILocalVariable(name: "i", scope: !1760, file: !3, line: 858, type: !76)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 858, column: 3)
!1761 = !DILocalVariable(name: "avg_objs", scope: !1756, file: !3, line: 864, type: !1762)
!1762 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1763 = !DILocalVariable(name: "avg_msgs", scope: !1756, file: !3, line: 866, type: !1762)
!1764 = !DILocation(line: 856, column: 3, scope: !1756)
!1765 = !DILocation(line: 857, column: 12, scope: !1756)
!1766 = !DILocation(line: 858, column: 12, scope: !1760)
!1767 = !DILocation(line: 858, column: 3, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1760, file: !3, discriminator: 1)
!1769 = !DILocation(line: 864, column: 28, scope: !1756)
!1770 = !DILocation(line: 864, column: 40, scope: !1756)
!1771 = !DILocation(line: 864, column: 32, scope: !1756)
!1772 = !DILocation(line: 864, column: 10, scope: !1756)
!1773 = !DILocation(line: 865, column: 3, scope: !1756)
!1774 = !DILocation(line: 866, column: 28, scope: !1756)
!1775 = !DILocation(line: 866, column: 47, scope: !1756)
!1776 = !DILocation(line: 866, column: 39, scope: !1756)
!1777 = !DILocation(line: 866, column: 10, scope: !1756)
!1778 = !DILocation(line: 867, column: 3, scope: !1756)
!1779 = !DILocation(line: 868, column: 60, scope: !1756)
!1780 = !DILocation(line: 868, column: 77, scope: !1756)
!1781 = !DILocation(line: 868, column: 3, scope: !1756)
!1782 = !DILocation(line: 870, column: 1, scope: !1756)
!1783 = !DILocation(line: 859, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 859, column: 9)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 858, column: 57)
!1786 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 858, column: 3)
!1787 = !DILocation(line: 859, column: 28, scope: !1784)
!1788 = !DILocation(line: 859, column: 9, scope: !1785)
!1789 = !DILocation(line: 860, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 859, column: 34)
!1791 = !DILocation(line: 861, column: 16, scope: !1790)
!1792 = !DILocation(line: 861, column: 15, scope: !1790)
!1793 = !DILocation(line: 861, column: 11, scope: !1790)
!1794 = !DILocation(line: 862, column: 5, scope: !1790)
!1795 = !DILocation(line: 858, column: 53, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1786, file: !3, discriminator: 3)
!1797 = !DILocation(line: 858, column: 21, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1786, file: !3, discriminator: 1)
!1799 = distinct !{!1799, !1800, !1801}
!1800 = !DILocation(line: 858, column: 3, scope: !1760)
!1801 = !DILocation(line: 863, column: 3, scope: !1760)
!1802 = distinct !DISubprogram(name: "print_usage", scope: !581, file: !581, line: 56, type: !1803, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !140}
!1805 = !{!1806}
!1806 = !DILocalVariable(name: "pname", arg: 1, scope: !1802, file: !581, line: 56, type: !140)
!1807 = !DILocation(line: 56, column: 25, scope: !1802)
!1808 = !DILocation(line: 57, column: 3, scope: !1802)
!1809 = !DILocation(line: 58, column: 3, scope: !1802)
!1810 = !DILocation(line: 59, column: 3, scope: !1802)
!1811 = !DILocation(line: 60, column: 3, scope: !1802)
!1812 = !DILocation(line: 61, column: 3, scope: !1802)
!1813 = !DILocation(line: 62, column: 3, scope: !1802)
!1814 = !DILocation(line: 63, column: 3, scope: !1802)
!1815 = !DILocation(line: 70, column: 3, scope: !1802)
!1816 = !DILocation(line: 72, column: 3, scope: !1802)
!1817 = !DILocation(line: 73, column: 3, scope: !1802)
!1818 = !DILocation(line: 74, column: 3, scope: !1802)
!1819 = !DILocation(line: 75, column: 3, scope: !1802)
!1820 = !DILocation(line: 76, column: 3, scope: !1802)
!1821 = !DILocation(line: 77, column: 3, scope: !1802)
!1822 = !DILocation(line: 78, column: 3, scope: !1802)
!1823 = !DILocation(line: 79, column: 3, scope: !1802)
!1824 = !DILocation(line: 80, column: 3, scope: !1802)
!1825 = !DILocation(line: 81, column: 1, scope: !1802)
!1826 = distinct !DISubprogram(name: "main", scope: !581, file: !581, line: 84, type: !1827, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!76, !76, !440}
!1829 = !{!1830, !1831, !1832, !1839, !1840, !1841, !1842, !1843, !1844, !1848, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1883, !1892, !1893, !1894, !1898, !1900, !1926, !1927, !1929, !1931, !1932, !1933, !1934, !1935, !1936}
!1830 = !DILocalVariable(name: "argc", arg: 1, scope: !1826, file: !581, line: 84, type: !76)
!1831 = !DILocalVariable(name: "argv", arg: 2, scope: !1826, file: !581, line: 84, type: !440)
!1832 = !DILocalVariable(name: "vehicle_state", scope: !1826, file: !581, line: 86, type: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "vehicle_state_t", file: !6, line: 103, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 98, size: 96, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1834, file: !6, line: 100, baseType: !454, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !1834, file: !6, line: 101, baseType: !1258, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !1834, file: !6, line: 102, baseType: !56, size: 32, offset: 64)
!1839 = !DILocalVariable(name: "label", scope: !1826, file: !581, line: 87, type: !439)
!1840 = !DILocalVariable(name: "distance", scope: !1826, file: !581, line: 88, type: !1329)
!1841 = !DILocalVariable(name: "message", scope: !1826, file: !581, line: 89, type: !1503)
!1842 = !DILocalVariable(name: "trace_file", scope: !1826, file: !581, line: 93, type: !140)
!1843 = !DILocalVariable(name: "opt", scope: !1826, file: !581, line: 95, type: !76)
!1844 = !DILocalVariable(name: "cv_py_file", scope: !1826, file: !581, line: 209, type: !1845)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 200, elements: !1846)
!1846 = !{!1847}
!1847 = !DISubrange(count: 25)
!1848 = !DILocalVariable(name: "stop", scope: !1826, file: !581, line: 261, type: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1850, line: 30, size: 128, elements: !1851)
!1850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/sdasgup3/Github/epochs/mini-era")
!1851 = !{!1852, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1849, file: !1850, line: 32, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !106, line: 139, baseType: !107)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1849, file: !1850, line: 33, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !106, line: 141, baseType: !107)
!1856 = !DILocalVariable(name: "start", scope: !1826, file: !581, line: 261, type: !1849)
!1857 = !DILocalVariable(name: "stop_iter_rad", scope: !1826, file: !581, line: 263, type: !1849)
!1858 = !DILocalVariable(name: "start_iter_rad", scope: !1826, file: !581, line: 263, type: !1849)
!1859 = !DILocalVariable(name: "stop_iter_vit", scope: !1826, file: !581, line: 264, type: !1849)
!1860 = !DILocalVariable(name: "start_iter_vit", scope: !1826, file: !581, line: 264, type: !1849)
!1861 = !DILocalVariable(name: "stop_iter_cv", scope: !1826, file: !581, line: 265, type: !1849)
!1862 = !DILocalVariable(name: "start_iter_cv", scope: !1826, file: !581, line: 265, type: !1849)
!1863 = !DILocalVariable(name: "iter_rad_sec", scope: !1826, file: !581, line: 267, type: !584)
!1864 = !DILocalVariable(name: "iter_vit_sec", scope: !1826, file: !581, line: 268, type: !584)
!1865 = !DILocalVariable(name: "iter_cv_sec", scope: !1826, file: !581, line: 269, type: !584)
!1866 = !DILocalVariable(name: "iter_rad_usec", scope: !1826, file: !581, line: 271, type: !584)
!1867 = !DILocalVariable(name: "iter_vit_usec", scope: !1826, file: !581, line: 272, type: !584)
!1868 = !DILocalVariable(name: "iter_cv_usec", scope: !1826, file: !581, line: 273, type: !584)
!1869 = !DILocalVariable(name: "stop_exec_rad", scope: !1826, file: !581, line: 275, type: !1849)
!1870 = !DILocalVariable(name: "start_exec_rad", scope: !1826, file: !581, line: 275, type: !1849)
!1871 = !DILocalVariable(name: "stop_exec_vit", scope: !1826, file: !581, line: 276, type: !1849)
!1872 = !DILocalVariable(name: "start_exec_vit", scope: !1826, file: !581, line: 276, type: !1849)
!1873 = !DILocalVariable(name: "stop_exec_cv", scope: !1826, file: !581, line: 277, type: !1849)
!1874 = !DILocalVariable(name: "start_exec_cv", scope: !1826, file: !581, line: 277, type: !1849)
!1875 = !DILocalVariable(name: "exec_rad_sec", scope: !1826, file: !581, line: 279, type: !584)
!1876 = !DILocalVariable(name: "exec_vit_sec", scope: !1826, file: !581, line: 280, type: !584)
!1877 = !DILocalVariable(name: "exec_cv_sec", scope: !1826, file: !581, line: 281, type: !584)
!1878 = !DILocalVariable(name: "exec_rad_usec", scope: !1826, file: !581, line: 283, type: !584)
!1879 = !DILocalVariable(name: "exec_vit_usec", scope: !1826, file: !581, line: 284, type: !584)
!1880 = !DILocalVariable(name: "exec_cv_usec", scope: !1826, file: !581, line: 285, type: !584)
!1881 = !DILocalVariable(name: "cv_tr_label", scope: !1882, file: !581, line: 308, type: !439)
!1882 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 298, column: 3)
!1883 = !DILocalVariable(name: "rdentry_p", scope: !1882, file: !581, line: 321, type: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "radar_dict_entry_t", file: !6, line: 43, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 38, size: 1048672, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1886, file: !6, line: 39, baseType: !53, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "return_id", scope: !1886, file: !6, line: 40, baseType: !53, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !1886, file: !6, line: 41, baseType: !56, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "return_data", scope: !1886, file: !6, line: 42, baseType: !58, size: 1048576, offset: 96)
!1892 = !DILocalVariable(name: "rdict_dist", scope: !1882, file: !581, line: 327, type: !1329)
!1893 = !DILocalVariable(name: "ref_in", scope: !1882, file: !581, line: 328, type: !1330)
!1894 = !DILocalVariable(name: "radar_inputs", scope: !1882, file: !581, line: 329, type: !1895)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: -1)
!1898 = !DILocalVariable(name: "ii", scope: !1899, file: !581, line: 330, type: !76)
!1899 = distinct !DILexicalBlock(scope: !1882, file: !581, line: 330, column: 5)
!1900 = !DILocalVariable(name: "vdentry_p", scope: !1882, file: !581, line: 344, type: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "vit_dict_entry_t", file: !6, line: 52, baseType: !1903)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 46, size: 198624, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1916, !1925}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "msg_num", scope: !1903, file: !6, line: 47, baseType: !53, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "msg_id", scope: !1903, file: !6, line: 48, baseType: !53, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm_p", scope: !1903, file: !6, line: 49, baseType: !1908, size: 160, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "ofdm_param", file: !15, line: 59, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 44, size: 160, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1909, file: !15, line: 48, baseType: !14, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rate_field", scope: !1909, file: !15, line: 50, baseType: !74, size: 8, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "n_bpsc", scope: !1909, file: !15, line: 52, baseType: !76, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "n_cbps", scope: !1909, file: !15, line: 54, baseType: !76, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "n_dbps", scope: !1909, file: !15, line: 56, baseType: !76, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "frame_p", scope: !1903, file: !6, line: 50, baseType: !1917, size: 160, offset: 224)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_param", file: !15, line: 77, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 64, size: 160, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "psdu_size", scope: !1918, file: !15, line: 67, baseType: !76, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "n_sym", scope: !1918, file: !15, line: 69, baseType: !76, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "n_pad", scope: !1918, file: !15, line: 71, baseType: !76, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "n_encoded_bits", scope: !1918, file: !15, line: 72, baseType: !76, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "n_data_bits", scope: !1918, file: !15, line: 74, baseType: !76, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "in_bits", scope: !1903, file: !6, line: 51, baseType: !89, size: 198240, offset: 384)
!1926 = !DILocalVariable(name: "num_vit_msgs", scope: !1882, file: !581, line: 352, type: !76)
!1927 = !DILocalVariable(name: "mi", scope: !1928, file: !581, line: 391, type: !76)
!1928 = distinct !DILexicalBlock(scope: !1882, file: !581, line: 391, column: 5)
!1929 = !DILocalVariable(name: "total_exec", scope: !1930, file: !581, line: 425, type: !584)
!1930 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 424, column: 3)
!1931 = !DILocalVariable(name: "iter_rad", scope: !1930, file: !581, line: 426, type: !584)
!1932 = !DILocalVariable(name: "iter_vit", scope: !1930, file: !581, line: 427, type: !584)
!1933 = !DILocalVariable(name: "iter_cv", scope: !1930, file: !581, line: 428, type: !584)
!1934 = !DILocalVariable(name: "exec_rad", scope: !1930, file: !581, line: 429, type: !584)
!1935 = !DILocalVariable(name: "exec_vit", scope: !1930, file: !581, line: 430, type: !584)
!1936 = !DILocalVariable(name: "exec_cv", scope: !1930, file: !581, line: 431, type: !584)
!1937 = !DILocation(line: 86, column: 19, scope: !1826)
!1938 = !DILocation(line: 84, column: 14, scope: !1826)
!1939 = !DILocation(line: 84, column: 26, scope: !1826)
!1940 = !DILocation(line: 97, column: 15, scope: !1826)
!1941 = !DILocation(line: 98, column: 15, scope: !1826)
!1942 = !DILocation(line: 99, column: 14, scope: !1826)
!1943 = !DILocation(line: 104, column: 3, scope: !1826)
!1944 = !DILocation(line: 93, column: 9, scope: !1826)
!1945 = !DILocation(line: 104, column: 16, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1826, file: !581, discriminator: 1)
!1947 = !DILocation(line: 95, column: 7, scope: !1826)
!1948 = !DILocation(line: 104, column: 3, scope: !1946)
!1949 = !DILocation(line: 172, column: 9, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !581, discriminator: 1)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !581, line: 172, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 172, column: 3)
!1953 = !DILocation(line: 172, column: 16, scope: !1950)
!1954 = !DILocation(line: 172, column: 3, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1952, file: !581, discriminator: 1)
!1956 = !DILocation(line: 173, column: 37, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !581, line: 172, column: 33)
!1958 = !DILocation(line: 107, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !581, line: 105, column: 17)
!1960 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 104, column: 69)
!1961 = !DILocation(line: 107, column: 7, scope: !1959)
!1962 = !DILocation(line: 108, column: 7, scope: !1959)
!1963 = !DILocation(line: 110, column: 31, scope: !1959)
!1964 = !DILocation(line: 111, column: 7, scope: !1959)
!1965 = !DILocation(line: 113, column: 24, scope: !1959)
!1966 = !DILocation(line: 114, column: 7, scope: !1959)
!1967 = !DILocation(line: 116, column: 37, scope: !1959)
!1968 = !DILocation(line: 116, column: 7, scope: !1959)
!1969 = !DILocation(line: 117, column: 7, scope: !1959)
!1970 = !DILocation(line: 119, column: 36, scope: !1959)
!1971 = !DILocation(line: 119, column: 7, scope: !1959)
!1972 = !DILocation(line: 120, column: 7, scope: !1959)
!1973 = !DILocation(line: 122, column: 37, scope: !1959)
!1974 = !DILocation(line: 122, column: 7, scope: !1959)
!1975 = !DILocation(line: 123, column: 7, scope: !1959)
!1976 = !DILocation(line: 132, column: 31, scope: !1959)
!1977 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1978, file: !1091, line: 239, type: !119)
!1978 = distinct !DISubprogram(name: "atoi", scope: !1091, file: !1091, line: 239, type: !1092, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1979)
!1979 = !{!1977}
!1980 = !DILocation(line: 239, column: 1, scope: !1978, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 132, column: 26, scope: !1959)
!1982 = !DILocation(line: 241, column: 16, scope: !1978, inlinedAt: !1981)
!1983 = !DILocation(line: 241, column: 10, scope: !1978, inlinedAt: !1981)
!1984 = !DILocation(line: 132, column: 24, scope: !1959)
!1985 = !DILocation(line: 133, column: 36, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1959, file: !581, line: 133, column: 11)
!1987 = !DILocation(line: 134, column: 70, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !581, line: 133, column: 65)
!1989 = !DILocation(line: 134, column: 2, scope: !1988)
!1990 = !DILocation(line: 139, column: 7, scope: !1959)
!1991 = !DILocation(line: 136, column: 2, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !581, line: 135, column: 14)
!1993 = !DILocation(line: 137, column: 2, scope: !1992)
!1994 = !DILocation(line: 147, column: 20, scope: !1959)
!1995 = !DILocation(line: 148, column: 7, scope: !1959)
!1996 = !DILocation(line: 150, column: 7, scope: !1959)
!1997 = !DILocation(line: 152, column: 32, scope: !1959)
!1998 = !DILocation(line: 239, column: 1, scope: !1978, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 152, column: 27, scope: !1959)
!2000 = !DILocation(line: 241, column: 16, scope: !1978, inlinedAt: !1999)
!2001 = !DILocation(line: 241, column: 10, scope: !1978, inlinedAt: !1999)
!2002 = !DILocation(line: 152, column: 25, scope: !1959)
!2003 = !DILocation(line: 153, column: 7, scope: !1959)
!2004 = !DILocation(line: 154, column: 7, scope: !1959)
!2005 = !DILocation(line: 162, column: 7, scope: !1959)
!2006 = !DILocation(line: 163, column: 7, scope: !1959)
!2007 = !DILocation(line: 165, column: 38, scope: !1959)
!2008 = !DILocation(line: 165, column: 7, scope: !1959)
!2009 = !DILocation(line: 166, column: 5, scope: !1959)
!2010 = distinct !{!2010, !1943, !2011}
!2011 = !DILocation(line: 168, column: 3, scope: !1826)
!2012 = !DILocation(line: 173, column: 5, scope: !1957)
!2013 = !DILocation(line: 172, column: 30, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1951, file: !581, discriminator: 2)
!2015 = distinct !{!2015, !2016, !2017}
!2016 = !DILocation(line: 172, column: 3, scope: !1952)
!2017 = !DILocation(line: 174, column: 3, scope: !1952)
!2018 = !DILocation(line: 177, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 177, column: 7)
!2020 = !DILocation(line: 177, column: 19, scope: !2019)
!2021 = !DILocation(line: 177, column: 7, scope: !1826)
!2022 = !DILocation(line: 178, column: 5, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !581, line: 177, column: 28)
!2024 = !DILocation(line: 179, column: 3, scope: !2023)
!2025 = !DILocation(line: 180, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 180, column: 7)
!2027 = !DILocation(line: 180, column: 19, scope: !2026)
!2028 = !DILocation(line: 180, column: 7, scope: !1826)
!2029 = !DILocation(line: 181, column: 5, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !581, line: 180, column: 28)
!2031 = !DILocation(line: 182, column: 3, scope: !2030)
!2032 = !DILocation(line: 183, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 183, column: 7)
!2034 = !DILocation(line: 183, column: 18, scope: !2033)
!2035 = !DILocation(line: 183, column: 7, scope: !1826)
!2036 = !DILocation(line: 184, column: 5, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !581, line: 183, column: 27)
!2038 = !DILocation(line: 185, column: 3, scope: !2037)
!2039 = !DILocation(line: 187, column: 3, scope: !1826)
!2040 = !DILocation(line: 188, column: 3, scope: !1826)
!2041 = !DILocation(line: 189, column: 3, scope: !1826)
!2042 = !DILocation(line: 190, column: 3, scope: !1826)
!2043 = !DILocation(line: 209, column: 3, scope: !1826)
!2044 = !DILocation(line: 209, column: 8, scope: !1826)
!2045 = !DILocation(line: 211, column: 3, scope: !1826)
!2046 = !DILocation(line: 218, column: 8, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 218, column: 7)
!2048 = !DILocation(line: 218, column: 7, scope: !1826)
!2049 = !DILocation(line: 220, column: 5, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !581, line: 219, column: 3)
!2051 = !DILocation(line: 221, column: 5, scope: !2050)
!2052 = !DILocation(line: 225, column: 3, scope: !1826)
!2053 = !DILocation(line: 226, column: 8, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 226, column: 7)
!2055 = !DILocation(line: 226, column: 7, scope: !1826)
!2056 = !DILocation(line: 228, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !581, line: 227, column: 3)
!2058 = !DILocation(line: 229, column: 5, scope: !2057)
!2059 = !DILocation(line: 231, column: 3, scope: !1826)
!2060 = !DILocation(line: 232, column: 8, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 232, column: 7)
!2062 = !DILocation(line: 232, column: 7, scope: !1826)
!2063 = !DILocation(line: 234, column: 5, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !581, line: 233, column: 3)
!2065 = !DILocation(line: 235, column: 5, scope: !2064)
!2066 = !DILocation(line: 237, column: 3, scope: !1826)
!2067 = !DILocation(line: 238, column: 8, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1826, file: !581, line: 238, column: 7)
!2069 = !DILocation(line: 238, column: 7, scope: !1826)
!2070 = !DILocation(line: 240, column: 5, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !581, line: 239, column: 3)
!2072 = !DILocation(line: 241, column: 5, scope: !2071)
!2073 = !DILocation(line: 259, column: 13, scope: !1826)
!2074 = !DILocation(line: 261, column: 3, scope: !1826)
!2075 = !DILocation(line: 263, column: 3, scope: !1826)
!2076 = !DILocation(line: 264, column: 3, scope: !1826)
!2077 = !DILocation(line: 265, column: 3, scope: !1826)
!2078 = !DILocation(line: 267, column: 12, scope: !1826)
!2079 = !DILocation(line: 268, column: 12, scope: !1826)
!2080 = !DILocation(line: 269, column: 12, scope: !1826)
!2081 = !DILocation(line: 271, column: 12, scope: !1826)
!2082 = !DILocation(line: 272, column: 12, scope: !1826)
!2083 = !DILocation(line: 273, column: 12, scope: !1826)
!2084 = !DILocation(line: 275, column: 3, scope: !1826)
!2085 = !DILocation(line: 276, column: 3, scope: !1826)
!2086 = !DILocation(line: 277, column: 3, scope: !1826)
!2087 = !DILocation(line: 279, column: 12, scope: !1826)
!2088 = !DILocation(line: 280, column: 12, scope: !1826)
!2089 = !DILocation(line: 281, column: 12, scope: !1826)
!2090 = !DILocation(line: 283, column: 12, scope: !1826)
!2091 = !DILocation(line: 284, column: 12, scope: !1826)
!2092 = !DILocation(line: 285, column: 12, scope: !1826)
!2093 = !DILocation(line: 289, column: 3, scope: !1826)
!2094 = !DILocation(line: 295, column: 3, scope: !1826)
!2095 = !DILocation(line: 296, column: 11, scope: !1946)
!2096 = !DILocation(line: 296, column: 10, scope: !1946)
!2097 = !DILocation(line: 296, column: 3, scope: !1946)
!2098 = !DILocation(line: 265, column: 33, scope: !1826)
!2099 = !DILocation(line: 306, column: 5, scope: !1882)
!2100 = !DILocation(line: 308, column: 27, scope: !1882)
!2101 = !DILocation(line: 308, column: 13, scope: !1882)
!2102 = !DILocation(line: 265, column: 18, scope: !1826)
!2103 = !DILocation(line: 310, column: 5, scope: !1882)
!2104 = !DILocation(line: 311, column: 34, scope: !1882)
!2105 = !{!2106, !1007, i64 0}
!2106 = !{!"timeval", !1007, i64 0, !1007, i64 8}
!2107 = !DILocation(line: 311, column: 58, scope: !1882)
!2108 = !DILocation(line: 311, column: 42, scope: !1882)
!2109 = !DILocation(line: 311, column: 18, scope: !1882)
!2110 = !DILocation(line: 312, column: 34, scope: !1882)
!2111 = !{!2106, !1007, i64 8}
!2112 = !DILocation(line: 312, column: 58, scope: !1882)
!2113 = !DILocation(line: 312, column: 42, scope: !1882)
!2114 = !DILocation(line: 312, column: 18, scope: !1882)
!2115 = !DILocation(line: 263, column: 33, scope: !1826)
!2116 = !DILocation(line: 319, column: 5, scope: !1882)
!2117 = !DILocation(line: 321, column: 37, scope: !1882)
!2118 = !DILocation(line: 321, column: 25, scope: !1882)
!2119 = !DILocation(line: 263, column: 18, scope: !1826)
!2120 = !DILocation(line: 323, column: 5, scope: !1882)
!2121 = !DILocation(line: 324, column: 36, scope: !1882)
!2122 = !DILocation(line: 324, column: 61, scope: !1882)
!2123 = !DILocation(line: 324, column: 44, scope: !1882)
!2124 = !DILocation(line: 324, column: 19, scope: !1882)
!2125 = !DILocation(line: 325, column: 36, scope: !1882)
!2126 = !DILocation(line: 325, column: 61, scope: !1882)
!2127 = !DILocation(line: 325, column: 44, scope: !1882)
!2128 = !DILocation(line: 325, column: 19, scope: !1882)
!2129 = !DILocation(line: 327, column: 40, scope: !1882)
!2130 = !DILocation(line: 327, column: 16, scope: !1882)
!2131 = !DILocation(line: 329, column: 26, scope: !1882)
!2132 = !DILocation(line: 329, column: 25, scope: !1882)
!2133 = !DILocation(line: 329, column: 5, scope: !1882)
!2134 = !DILocation(line: 329, column: 11, scope: !1882)
!2135 = !DILocation(line: 330, column: 14, scope: !1899)
!2136 = !DILocation(line: 330, column: 29, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !581, discriminator: 1)
!2138 = distinct !DILexicalBlock(scope: !1899, file: !581, line: 330, column: 5)
!2139 = !DILocation(line: 330, column: 25, scope: !2137)
!2140 = !DILocation(line: 330, column: 5, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !1899, file: !581, discriminator: 1)
!2142 = !DILocation(line: 331, column: 26, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !581, line: 330, column: 44)
!2144 = !DILocation(line: 330, column: 40, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2138, file: !581, discriminator: 3)
!2146 = !{!2147}
!2147 = distinct !{!2147, !2148}
!2148 = distinct !{!2148, !"LVerDomain"}
!2149 = !DILocation(line: 331, column: 7, scope: !2143)
!2150 = !DILocation(line: 331, column: 24, scope: !2143)
!2151 = !{!2152}
!2152 = distinct !{!2152, !2148}
!2153 = distinct !{!2153, !2154}
!2154 = !{!"llvm.loop.unroll.disable"}
!2155 = distinct !{!2155, !2156, !2157, !2158, !2159}
!2156 = !DILocation(line: 330, column: 5, scope: !1899)
!2157 = !DILocation(line: 332, column: 5, scope: !1899)
!2158 = !{!"llvm.loop.vectorize.width", i32 1}
!2159 = !{!"llvm.loop.interleave.count", i32 1}
!2160 = !DILocation(line: 264, column: 33, scope: !1826)
!2161 = !DILocation(line: 342, column: 5, scope: !1882)
!2162 = !DILocation(line: 344, column: 35, scope: !1882)
!2163 = !DILocation(line: 344, column: 23, scope: !1882)
!2164 = !DILocation(line: 264, column: 18, scope: !1826)
!2165 = !DILocation(line: 346, column: 5, scope: !1882)
!2166 = !DILocation(line: 347, column: 36, scope: !1882)
!2167 = !DILocation(line: 347, column: 61, scope: !1882)
!2168 = !DILocation(line: 347, column: 44, scope: !1882)
!2169 = !DILocation(line: 347, column: 19, scope: !1882)
!2170 = !DILocation(line: 348, column: 36, scope: !1882)
!2171 = !DILocation(line: 348, column: 61, scope: !1882)
!2172 = !DILocation(line: 348, column: 44, scope: !1882)
!2173 = !DILocation(line: 348, column: 19, scope: !1882)
!2174 = !DILocation(line: 352, column: 9, scope: !1882)
!2175 = !DILocation(line: 353, column: 12, scope: !1882)
!2176 = !DILocation(line: 353, column: 5, scope: !1882)
!2177 = distinct !{!2177, !2156, !2157, !2158, !2159}
!2178 = !DILocation(line: 354, column: 28, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1882, file: !581, line: 353, column: 31)
!2180 = !DILocation(line: 354, column: 39, scope: !2179)
!2181 = !DILocation(line: 355, column: 28, scope: !2179)
!2182 = !DILocation(line: 355, column: 39, scope: !2179)
!2183 = !DILocation(line: 356, column: 28, scope: !2179)
!2184 = !DILocation(line: 356, column: 38, scope: !2179)
!2185 = !DILocation(line: 356, column: 43, scope: !2179)
!2186 = !DILocation(line: 357, column: 28, scope: !2179)
!2187 = !DILocation(line: 357, column: 38, scope: !2179)
!2188 = !DILocation(line: 357, column: 43, scope: !2179)
!2189 = !DILocation(line: 277, column: 33, scope: !1826)
!2190 = !DILocation(line: 363, column: 5, scope: !1882)
!2191 = !DILocation(line: 365, column: 13, scope: !1882)
!2192 = !DILocation(line: 87, column: 11, scope: !1826)
!2193 = !DILocation(line: 277, column: 18, scope: !1826)
!2194 = !DILocation(line: 367, column: 5, scope: !1882)
!2195 = !DILocation(line: 368, column: 34, scope: !1882)
!2196 = !DILocation(line: 368, column: 58, scope: !1882)
!2197 = !DILocation(line: 368, column: 42, scope: !1882)
!2198 = !DILocation(line: 368, column: 18, scope: !1882)
!2199 = !DILocation(line: 369, column: 34, scope: !1882)
!2200 = !DILocation(line: 369, column: 58, scope: !1882)
!2201 = !DILocation(line: 369, column: 42, scope: !1882)
!2202 = !DILocation(line: 369, column: 18, scope: !1882)
!2203 = !DILocation(line: 275, column: 33, scope: !1826)
!2204 = !DILocation(line: 371, column: 5, scope: !1882)
!2205 = !DILocation(line: 373, column: 16, scope: !1882)
!2206 = !DILocation(line: 88, column: 14, scope: !1826)
!2207 = !DILocation(line: 275, column: 18, scope: !1826)
!2208 = !DILocation(line: 375, column: 5, scope: !1882)
!2209 = !DILocation(line: 376, column: 36, scope: !1882)
!2210 = !DILocation(line: 376, column: 61, scope: !1882)
!2211 = !DILocation(line: 376, column: 44, scope: !1882)
!2212 = !DILocation(line: 376, column: 19, scope: !1882)
!2213 = !DILocation(line: 377, column: 36, scope: !1882)
!2214 = !DILocation(line: 377, column: 61, scope: !1882)
!2215 = !DILocation(line: 377, column: 44, scope: !1882)
!2216 = !DILocation(line: 377, column: 19, scope: !1882)
!2217 = !DILocation(line: 276, column: 33, scope: !1826)
!2218 = !DILocation(line: 379, column: 5, scope: !1882)
!2219 = !DILocation(line: 381, column: 15, scope: !1882)
!2220 = !DILocation(line: 89, column: 13, scope: !1826)
!2221 = !DILocation(line: 276, column: 18, scope: !1826)
!2222 = !DILocation(line: 383, column: 5, scope: !1882)
!2223 = !DILocation(line: 384, column: 36, scope: !1882)
!2224 = !DILocation(line: 384, column: 61, scope: !1882)
!2225 = !DILocation(line: 384, column: 44, scope: !1882)
!2226 = !DILocation(line: 384, column: 19, scope: !1882)
!2227 = !DILocation(line: 385, column: 36, scope: !1882)
!2228 = !DILocation(line: 385, column: 61, scope: !1882)
!2229 = !DILocation(line: 385, column: 44, scope: !1882)
!2230 = !DILocation(line: 385, column: 19, scope: !1882)
!2231 = !DILocation(line: 389, column: 5, scope: !1882)
!2232 = !DILocation(line: 390, column: 40, scope: !1882)
!2233 = !DILocation(line: 390, column: 5, scope: !1882)
!2234 = !DILocation(line: 391, column: 14, scope: !1928)
!2235 = !DILocation(line: 391, column: 25, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2237, file: !581, discriminator: 1)
!2237 = distinct !DILexicalBlock(scope: !1928, file: !581, line: 391, column: 5)
!2238 = !DILocation(line: 391, column: 5, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !1928, file: !581, discriminator: 1)
!2240 = !DILocation(line: 399, column: 21, scope: !1882)
!2241 = !DILocation(line: 403, column: 14, scope: !1882)
!2242 = !DILocation(line: 404, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1882, file: !581, line: 404, column: 9)
!2244 = !DILocation(line: 404, column: 9, scope: !1882)
!2245 = !DILocation(line: 392, column: 42, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2237, file: !581, line: 391, column: 47)
!2247 = !DILocation(line: 392, column: 7, scope: !2246)
!2248 = !DILocation(line: 391, column: 43, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2237, file: !581, discriminator: 3)
!2250 = distinct !{!2250, !2251, !2252}
!2251 = !DILocation(line: 391, column: 5, scope: !1928)
!2252 = !DILocation(line: 393, column: 5, scope: !1928)
!2253 = !DILocation(line: 261, column: 24, scope: !1826)
!2254 = !DILocation(line: 405, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2243, file: !581, line: 404, column: 25)
!2256 = !DILocation(line: 406, column: 5, scope: !2255)
!2257 = !DILocation(line: 410, column: 5, scope: !1882)
!2258 = !DILocation(line: 412, column: 3, scope: !1826)
!2259 = distinct !{!2259, !2260, !2258}
!2260 = !DILocation(line: 296, column: 3, scope: !1826)
!2261 = !DILocation(line: 261, column: 18, scope: !1826)
!2262 = !DILocation(line: 425, column: 112, scope: !1930)
!2263 = !DILocation(line: 425, column: 59, scope: !1930)
!2264 = !DILocation(line: 415, column: 4, scope: !1826)
!2265 = !DILocation(line: 419, column: 3, scope: !1826)
!2266 = !DILocation(line: 420, column: 3, scope: !1826)
!2267 = !DILocation(line: 421, column: 3, scope: !1826)
!2268 = !DILocation(line: 425, column: 44, scope: !1930)
!2269 = !DILocation(line: 425, column: 51, scope: !1930)
!2270 = !DILocation(line: 425, column: 67, scope: !1930)
!2271 = !DILocation(line: 425, column: 96, scope: !1930)
!2272 = !DILocation(line: 425, column: 104, scope: !1930)
!2273 = !DILocation(line: 425, column: 77, scope: !1930)
!2274 = !DILocation(line: 425, column: 14, scope: !1930)
!2275 = !DILocation(line: 426, column: 63, scope: !1930)
!2276 = !DILocation(line: 426, column: 14, scope: !1930)
!2277 = !DILocation(line: 427, column: 63, scope: !1930)
!2278 = !DILocation(line: 427, column: 14, scope: !1930)
!2279 = !DILocation(line: 428, column: 63, scope: !1930)
!2280 = !DILocation(line: 428, column: 14, scope: !1930)
!2281 = !DILocation(line: 429, column: 63, scope: !1930)
!2282 = !DILocation(line: 429, column: 14, scope: !1930)
!2283 = !DILocation(line: 430, column: 63, scope: !1930)
!2284 = !DILocation(line: 430, column: 14, scope: !1930)
!2285 = !DILocation(line: 431, column: 63, scope: !1930)
!2286 = !DILocation(line: 431, column: 14, scope: !1930)
!2287 = !DILocation(line: 432, column: 5, scope: !1930)
!2288 = !DILocation(line: 433, column: 5, scope: !1930)
!2289 = !DILocation(line: 434, column: 5, scope: !1930)
!2290 = !DILocation(line: 435, column: 5, scope: !1930)
!2291 = !DILocation(line: 436, column: 5, scope: !1930)
!2292 = !DILocation(line: 437, column: 5, scope: !1930)
!2293 = !DILocation(line: 438, column: 5, scope: !1930)
!2294 = !DILocation(line: 458, column: 3, scope: !1826)
!2295 = !DILocation(line: 460, column: 1, scope: !1826)
!2296 = !DILocation(line: 460, column: 1, scope: !1946)
!2297 = distinct !DISubprogram(name: "init_trace_reader", scope: !602, file: !602, line: 36, type: !675, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !2298)
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "trace_filename", arg: 1, scope: !2297, file: !602, line: 36, type: !140)
!2300 = !DILocation(line: 36, column: 34, scope: !2297)
!2301 = !DILocation(line: 40, column: 17, scope: !2297)
!2302 = !DILocation(line: 40, column: 15, scope: !2297)
!2303 = !DILocation(line: 41, column: 8, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2297, file: !602, line: 41, column: 7)
!2305 = !DILocation(line: 41, column: 7, scope: !2297)
!2306 = !DILocation(line: 43, column: 5, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !602, line: 42, column: 3)
!2308 = !DILocation(line: 44, column: 5, scope: !2307)
!2309 = !DILocation(line: 48, column: 1, scope: !2297)
!2310 = distinct !DISubprogram(name: "get_object_token", scope: !602, file: !602, line: 51, type: !2311, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !74}
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "c", arg: 1, scope: !2310, file: !602, line: 51, type: !74)
!2315 = !DILocalVariable(name: "objc", scope: !2316, file: !602, line: 55, type: !74)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !602, line: 54, column: 20)
!2317 = distinct !DILexicalBlock(scope: !2310, file: !602, line: 54, column: 7)
!2318 = !DILocation(line: 51, column: 23, scope: !2310)
!2319 = !DILocation(line: 54, column: 7, scope: !2317)
!2320 = !DILocation(line: 54, column: 14, scope: !2317)
!2321 = !DILocation(line: 54, column: 7, scope: !2310)
!2322 = !DILocation(line: 55, column: 10, scope: !2316)
!2323 = !DILocation(line: 55, column: 5, scope: !2316)
!2324 = !DILocation(line: 56, column: 25, scope: !2316)
!2325 = !DILocation(line: 56, column: 13, scope: !2316)
!2326 = !DILocation(line: 56, column: 5, scope: !2316)
!2327 = !DILocation(line: 57, column: 47, scope: !2316)
!2328 = !DILocation(line: 57, column: 14, scope: !2316)
!2329 = !DILocation(line: 57, column: 5, scope: !2316)
!2330 = !DILocation(line: 57, column: 23, scope: !2316)
!2331 = !DILocation(line: 57, column: 45, scope: !2316)
!2332 = !DILocation(line: 59, column: 5, scope: !2316)
!2333 = !DILocation(line: 59, column: 26, scope: !2316)
!2334 = !DILocation(line: 60, column: 14, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2316, file: !602, line: 60, column: 9)
!2336 = !DILocation(line: 60, column: 9, scope: !2316)
!2337 = !DILocation(line: 61, column: 16, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !602, line: 60, column: 22)
!2339 = !DILocation(line: 62, column: 5, scope: !2338)
!2340 = !DILocation(line: 63, column: 3, scope: !2317)
!2341 = !DILocation(line: 69, column: 16, scope: !2310)
!2342 = !DILocation(line: 69, column: 14, scope: !2310)
!2343 = !DILocation(line: 69, column: 10, scope: !2310)
!2344 = !DILocation(line: 70, column: 1, scope: !2310)
!2345 = !DILocation(line: 64, column: 5, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2317, file: !602, line: 63, column: 10)
!2347 = !DILocation(line: 65, column: 5, scope: !2346)
!2348 = !DILocation(line: 66, column: 43, scope: !2346)
!2349 = !DILocation(line: 66, column: 51, scope: !2346)
!2350 = !DILocation(line: 66, column: 55, scope: !2346)
!2351 = !DILocation(line: 66, column: 5, scope: !2346)
!2352 = !DILocation(line: 67, column: 5, scope: !2346)
!2353 = distinct !DISubprogram(name: "get_distance_token", scope: !602, file: !602, line: 73, type: !2311, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !2354)
!2354 = !{!2355, !2356}
!2355 = !DILocalVariable(name: "c", arg: 1, scope: !2353, file: !602, line: 73, type: !74)
!2356 = !DILocalVariable(name: "distv", scope: !2357, file: !602, line: 77, type: !53)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !602, line: 76, column: 20)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !602, line: 76, column: 7)
!2359 = !DILocation(line: 73, column: 25, scope: !2353)
!2360 = !DILocation(line: 76, column: 7, scope: !2358)
!2361 = !DILocation(line: 76, column: 14, scope: !2358)
!2362 = !DILocation(line: 76, column: 7, scope: !2353)
!2363 = !DILocation(line: 77, column: 5, scope: !2357)
!2364 = !DILocation(line: 78, column: 25, scope: !2357)
!2365 = !DILocation(line: 78, column: 13, scope: !2357)
!2366 = !DILocation(line: 77, column: 14, scope: !2357)
!2367 = !DILocation(line: 78, column: 5, scope: !2357)
!2368 = !DILocation(line: 79, column: 48, scope: !2357)
!2369 = !DILocation(line: 79, column: 15, scope: !2357)
!2370 = !DILocation(line: 79, column: 5, scope: !2357)
!2371 = !DILocation(line: 79, column: 24, scope: !2357)
!2372 = !DILocation(line: 79, column: 46, scope: !2357)
!2373 = !DILocation(line: 81, column: 29, scope: !2357)
!2374 = !DILocation(line: 81, column: 5, scope: !2357)
!2375 = !DILocation(line: 81, column: 27, scope: !2357)
!2376 = !DILocation(line: 82, column: 25, scope: !2357)
!2377 = !DILocation(line: 83, column: 3, scope: !2358)
!2378 = !DILocation(line: 89, column: 16, scope: !2353)
!2379 = !DILocation(line: 89, column: 14, scope: !2353)
!2380 = !DILocation(line: 89, column: 10, scope: !2353)
!2381 = !DILocation(line: 90, column: 1, scope: !2353)
!2382 = !DILocation(line: 84, column: 5, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2358, file: !602, line: 83, column: 10)
!2384 = !DILocation(line: 85, column: 5, scope: !2383)
!2385 = !DILocation(line: 86, column: 43, scope: !2383)
!2386 = !DILocation(line: 86, column: 51, scope: !2383)
!2387 = !DILocation(line: 86, column: 55, scope: !2383)
!2388 = !DILocation(line: 86, column: 5, scope: !2383)
!2389 = !DILocation(line: 87, column: 5, scope: !2383)
!2390 = distinct !DISubprogram(name: "read_next_trace_record", scope: !602, file: !602, line: 93, type: !2391, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !2399)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!454, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "vehicle_state_t", file: !6, line: 103, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 98, size: 96, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2394, file: !6, line: 100, baseType: !454, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !2394, file: !6, line: 101, baseType: !1258, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2394, file: !6, line: 102, baseType: !56, size: 32, offset: 64)
!2399 = !{!2400, !2401, !2403, !2404, !2406}
!2400 = !DILocalVariable(name: "vs", arg: 1, scope: !2390, file: !602, line: 93, type: !2393)
!2401 = !DILocalVariable(name: "i", scope: !2402, file: !602, line: 102, type: !76)
!2402 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 102, column: 3)
!2403 = !DILocalVariable(name: "fres", scope: !2390, file: !602, line: 109, type: !61)
!2404 = !DILocalVariable(name: "i", scope: !2405, file: !602, line: 131, type: !76)
!2405 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 131, column: 3)
!2406 = !DILocalVariable(name: "c", scope: !2407, file: !602, line: 133, type: !74)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !602, line: 131, column: 33)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !602, line: 131, column: 3)
!2409 = !DILocation(line: 93, column: 47, scope: !2390)
!2410 = !DILocation(line: 96, column: 12, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 96, column: 7)
!2412 = !DILocation(line: 96, column: 7, scope: !2411)
!2413 = !DILocation(line: 96, column: 7, scope: !2390)
!2414 = !DILocation(line: 97, column: 5, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !602, line: 96, column: 26)
!2416 = !DILocation(line: 98, column: 5, scope: !2415)
!2417 = !DILocation(line: 101, column: 13, scope: !2390)
!2418 = !DILocation(line: 102, column: 12, scope: !2402)
!2419 = !DILocation(line: 103, column: 20, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !602, line: 102, column: 39)
!2421 = distinct !DILexicalBlock(scope: !2402, file: !602, line: 102, column: 3)
!2422 = !DILocation(line: 104, column: 21, scope: !2420)
!2423 = !DILocation(line: 105, column: 21, scope: !2420)
!2424 = !DILocation(line: 109, column: 51, scope: !2390)
!2425 = !DILocation(line: 109, column: 16, scope: !2390)
!2426 = !DILocation(line: 109, column: 9, scope: !2390)
!2427 = !DILocation(line: 110, column: 12, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 110, column: 7)
!2429 = !DILocation(line: 110, column: 7, scope: !2390)
!2430 = !DILocation(line: 115, column: 8, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 115, column: 7)
!2432 = !DILocation(line: 115, column: 28, scope: !2431)
!2433 = !DILocation(line: 115, column: 33, scope: !2431)
!2434 = !DILocation(line: 116, column: 41, scope: !2431)
!2435 = !DILocation(line: 116, column: 8, scope: !2431)
!2436 = !DILocation(line: 116, column: 46, scope: !2431)
!2437 = !DILocation(line: 115, column: 7, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2390, file: !602, discriminator: 1)
!2439 = !DILocation(line: 117, column: 43, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2431, file: !602, line: 116, column: 56)
!2441 = !DILocation(line: 118, column: 3, scope: !2440)
!2442 = !DILocation(line: 120, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2390, file: !602, line: 120, column: 7)
!2444 = !DILocation(line: 120, column: 7, scope: !2390)
!2445 = !DILocation(line: 121, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !602, line: 121, column: 9)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !602, line: 120, column: 25)
!2448 = !DILocation(line: 121, column: 10, scope: !2446)
!2449 = !DILocation(line: 121, column: 9, scope: !2447)
!2450 = !DILocation(line: 122, column: 37, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2446, file: !602, line: 121, column: 21)
!2452 = !DILocation(line: 122, column: 7, scope: !2451)
!2453 = !DILocation(line: 123, column: 5, scope: !2451)
!2454 = !DILocation(line: 124, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2446, file: !602, line: 123, column: 12)
!2456 = !DILocation(line: 128, column: 10, scope: !2390)
!2457 = !DILocation(line: 129, column: 10, scope: !2390)
!2458 = !DILocation(line: 130, column: 11, scope: !2390)
!2459 = !DILocation(line: 131, column: 12, scope: !2405)
!2460 = !DILocation(line: 131, column: 3, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2405, file: !602, discriminator: 1)
!2462 = !DILocation(line: 133, column: 14, scope: !2407)
!2463 = !DILocation(line: 133, column: 10, scope: !2407)
!2464 = !DILocation(line: 135, column: 12, scope: !2407)
!2465 = !DILocation(line: 135, column: 5, scope: !2407)
!2466 = !DILocation(line: 137, column: 22, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2407, file: !602, line: 135, column: 15)
!2468 = !DILocation(line: 138, column: 7, scope: !2467)
!2469 = !DILocation(line: 140, column: 7, scope: !2467)
!2470 = !DILocation(line: 142, column: 22, scope: !2467)
!2471 = !DILocation(line: 143, column: 7, scope: !2467)
!2472 = !DILocation(line: 144, column: 17, scope: !2467)
!2473 = !DILocation(line: 144, column: 14, scope: !2467)
!2474 = !DILocation(line: 145, column: 14, scope: !2467)
!2475 = !DILocation(line: 146, column: 7, scope: !2467)
!2476 = !DILocation(line: 148, column: 22, scope: !2467)
!2477 = !DILocation(line: 149, column: 7, scope: !2467)
!2478 = !DILocation(line: 151, column: 7, scope: !2467)
!2479 = !DILocation(line: 154, column: 22, scope: !2467)
!2480 = !DILocation(line: 155, column: 7, scope: !2467)
!2481 = !DILocation(line: 158, column: 7, scope: !2467)
!2482 = !DILocation(line: 131, column: 29, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2408, file: !602, discriminator: 3)
!2484 = !DILocation(line: 131, column: 21, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2408, file: !602, discriminator: 1)
!2486 = distinct !{!2486, !2487, !2488}
!2487 = !DILocation(line: 131, column: 3, scope: !2405)
!2488 = !DILocation(line: 160, column: 3, scope: !2405)
!2489 = !DILocation(line: 180, column: 1, scope: !2390)
!2490 = distinct !DISubprogram(name: "eof_trace_reader", scope: !602, file: !602, line: 182, type: !2491, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!454}
!2493 = !{!2494}
!2494 = !DILocalVariable(name: "res", scope: !2490, file: !602, line: 184, type: !454)
!2495 = !DILocation(line: 184, column: 21, scope: !2490)
!2496 = !DILocation(line: 184, column: 16, scope: !2490)
!2497 = !DILocation(line: 184, column: 10, scope: !2490)
!2498 = !DILocation(line: 186, column: 3, scope: !2490)
!2499 = distinct !DISubprogram(name: "closeout_trace_reader", scope: !602, file: !602, line: 189, type: !1616, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !660)
!2500 = !DILocation(line: 191, column: 10, scope: !2499)
!2501 = !DILocation(line: 191, column: 3, scope: !2499)
!2502 = !DILocation(line: 192, column: 1, scope: !2499)
!2503 = !{!889, !704, i64 12}
!2504 = !{!890, !704, i64 4}
!2505 = !{!889, !705, i64 0}
!2506 = !{!890, !704, i64 16}
!2507 = distinct !DISubprogram(name: "init_calculate_peak_dist", scope: !659, file: !659, line: 34, type: !2508, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !658, variables: !660)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !53}
!2510 = !DILocalVariable(name: "fft_logn_samples", arg: 1, scope: !2507, file: !659, line: 34, type: !53)
!2511 = !DILocation(line: 34, column: 40, scope: !2507)
!2512 = !DILocation(line: 36, column: 11, scope: !2507)
!2513 = !DILocation(line: 36, column: 3, scope: !2507)
!2514 = !DILocation(line: 38, column: 17, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2507, file: !659, line: 36, column: 29)
!2516 = !DILocation(line: 39, column: 17, scope: !2515)
!2517 = !DILocation(line: 40, column: 17, scope: !2515)
!2518 = !DILocation(line: 41, column: 25, scope: !2515)
!2519 = !DILocation(line: 42, column: 5, scope: !2515)
!2520 = !DILocation(line: 44, column: 17, scope: !2515)
!2521 = !DILocation(line: 45, column: 17, scope: !2515)
!2522 = !DILocation(line: 46, column: 17, scope: !2515)
!2523 = !DILocation(line: 47, column: 33, scope: !2515)
!2524 = !DILocation(line: 47, column: 32, scope: !2515)
!2525 = !DILocation(line: 47, column: 27, scope: !2515)
!2526 = !DILocation(line: 47, column: 25, scope: !2515)
!2527 = !DILocation(line: 48, column: 5, scope: !2515)
!2528 = !DILocation(line: 50, column: 65, scope: !2515)
!2529 = !DILocation(line: 50, column: 5, scope: !2515)
!2530 = !DILocation(line: 51, column: 5, scope: !2515)
!2531 = !DILocation(line: 53, column: 19, scope: !2507)
!2532 = !DILocation(line: 53, column: 16, scope: !2507)
!2533 = !DILocation(line: 53, column: 11, scope: !2507)
!2534 = !DILocation(line: 54, column: 1, scope: !2507)
!2535 = distinct !DISubprogram(name: "calculate_peak_dist_from_fmcw", scope: !659, file: !659, line: 58, type: !2536, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !658, variables: !660)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!56, !1330}
!2538 = !DILocalVariable(name: "data", arg: 1, scope: !2535, file: !659, line: 58, type: !1330)
!2539 = !DILocation(line: 58, column: 44, scope: !2535)
!2540 = !DILocation(line: 63, column: 7, scope: !2535)
!2541 = !DILocation(line: 63, column: 13, scope: !2535)
!2542 = !DILocation(line: 63, column: 22, scope: !2535)
!2543 = !DILocation(line: 63, column: 3, scope: !2535)
!2544 = !DILocalVariable(name: "max_psd", scope: !2535, file: !659, line: 71, type: !56)
!2545 = !DILocation(line: 71, column: 9, scope: !2535)
!2546 = !DILocalVariable(name: "max_index", scope: !2535, file: !659, line: 72, type: !53)
!2547 = !DILocation(line: 72, column: 16, scope: !2535)
!2548 = !DILocalVariable(name: "i", scope: !2535, file: !659, line: 73, type: !53)
!2549 = !DILocation(line: 73, column: 16, scope: !2535)
!2550 = !DILocalVariable(name: "temp", scope: !2535, file: !659, line: 74, type: !56)
!2551 = !DILocation(line: 74, column: 9, scope: !2535)
!2552 = !DILocation(line: 76, column: 9, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2535, file: !659, line: 76, column: 3)
!2554 = !DILocation(line: 76, column: 8, scope: !2553)
!2555 = !DILocation(line: 76, column: 13, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2557, file: !659, discriminator: 1)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !659, line: 76, column: 3)
!2558 = !DILocation(line: 76, column: 17, scope: !2556)
!2559 = !DILocation(line: 76, column: 15, scope: !2556)
!2560 = !DILocation(line: 76, column: 3, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2553, file: !659, discriminator: 1)
!2562 = !DILocation(line: 78, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !659, line: 76, column: 31)
!2564 = !DILocation(line: 78, column: 24, scope: !2563)
!2565 = !DILocation(line: 78, column: 23, scope: !2563)
!2566 = !DILocation(line: 78, column: 13, scope: !2563)
!2567 = !DILocation(line: 78, column: 36, scope: !2563)
!2568 = !DILocation(line: 78, column: 43, scope: !2563)
!2569 = !DILocation(line: 78, column: 42, scope: !2563)
!2570 = !DILocation(line: 78, column: 44, scope: !2563)
!2571 = !DILocation(line: 78, column: 32, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2563, file: !659, discriminator: 1)
!2573 = !DILocation(line: 78, column: 30, scope: !2563)
!2574 = !DILocation(line: 78, column: 51, scope: !2563)
!2575 = !DILocation(line: 78, column: 12, scope: !2563)
!2576 = !DILocation(line: 78, column: 10, scope: !2563)
!2577 = !DILocation(line: 79, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2563, file: !659, line: 79, column: 9)
!2579 = !DILocation(line: 79, column: 16, scope: !2578)
!2580 = !DILocation(line: 79, column: 14, scope: !2578)
!2581 = !DILocation(line: 79, column: 9, scope: !2563)
!2582 = !DILocation(line: 80, column: 17, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !659, line: 79, column: 25)
!2584 = !DILocation(line: 80, column: 15, scope: !2583)
!2585 = !DILocation(line: 81, column: 19, scope: !2583)
!2586 = !DILocation(line: 81, column: 17, scope: !2583)
!2587 = !DILocation(line: 82, column: 5, scope: !2583)
!2588 = !DILocation(line: 83, column: 3, scope: !2563)
!2589 = !DILocation(line: 76, column: 27, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2557, file: !659, discriminator: 2)
!2591 = !DILocation(line: 76, column: 3, scope: !2590)
!2592 = distinct !{!2592, !2593, !2594}
!2593 = !DILocation(line: 76, column: 3, scope: !2553)
!2594 = !DILocation(line: 83, column: 3, scope: !2553)
!2595 = !DILocalVariable(name: "distance", scope: !2535, file: !659, line: 84, type: !56)
!2596 = !DILocation(line: 84, column: 9, scope: !2535)
!2597 = !DILocation(line: 84, column: 29, scope: !2535)
!2598 = !DILocation(line: 84, column: 47, scope: !2535)
!2599 = !DILocation(line: 84, column: 38, scope: !2535)
!2600 = !DILocation(line: 84, column: 66, scope: !2535)
!2601 = !DILocation(line: 84, column: 58, scope: !2535)
!2602 = !DILocation(line: 84, column: 56, scope: !2535)
!2603 = !DILocation(line: 84, column: 20, scope: !2535)
!2604 = !DILocation(line: 84, column: 77, scope: !2535)
!2605 = !DILocation(line: 84, column: 81, scope: !2535)
!2606 = !DILocation(line: 84, column: 99, scope: !2535)
!2607 = !DILocation(line: 84, column: 90, scope: !2535)
!2608 = !DILocation(line: 84, column: 89, scope: !2535)
!2609 = !DILocation(line: 92, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2535, file: !659, line: 92, column: 7)
!2611 = !DILocation(line: 92, column: 17, scope: !2610)
!2612 = !DILocation(line: 92, column: 15, scope: !2610)
!2613 = !DILocation(line: 92, column: 7, scope: !2535)
!2614 = !DILocation(line: 93, column: 12, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2610, file: !659, line: 92, column: 38)
!2616 = !DILocation(line: 93, column: 5, scope: !2615)
!2617 = !DILocation(line: 95, column: 5, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2610, file: !659, line: 94, column: 10)
!2619 = !DILocation(line: 97, column: 1, scope: !2535)
