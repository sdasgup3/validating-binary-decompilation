; ModuleID = '../src/test.query.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%union.branchtab27_u = type { [32 x i8] }

@d_ofdm = internal unnamed_addr global %struct.ofdm_param* null, align 8
@d_ntraceback = common local_unnamed_addr global i32 0, align 4
@d_frame = internal unnamed_addr global %struct.frame_param* null, align 8
@d_depunctured = internal global [24780 x i8] zeroinitializer, align 16
@d_depuncture_pattern = internal unnamed_addr global i8* null, align 8
@d_k = common local_unnamed_addr global i32 0, align 4
@d_branchtab27_generic = common local_unnamed_addr global [2 x %union.branchtab27_u] zeroinitializer, align 16
@d_decoded = internal global [18585 x i8] zeroinitializer, align 16
@PARTAB = internal unnamed_addr constant [256 x i8] c"\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00", align 16
@PUNCTURE_1_2 = internal constant [2 x i8] c"\01\01", align 1
@PUNCTURE_2_3 = internal constant [4 x i8] c"\01\01\01\00", align 1
@PUNCTURE_3_4 = internal constant [6 x i8] c"\01\01\01\00\00\01", align 1
@d_mmresult = common local_unnamed_addr global [64 x i8] zeroinitializer, align 16
@d_ppresult = common local_unnamed_addr global [24 x [64 x i8]] zeroinitializer, align 16
@switch.table = private unnamed_addr constant [8 x i32] [i32 5, i32 10, i32 5, i32 10, i32 5, i32 10, i32 9, i32 10]
@switch.table.1 = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @PUNCTURE_1_2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @PUNCTURE_2_3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @PUNCTURE_3_4, i32 0, i32 0)]
@switch.table.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 3, i32 1, i32 3, i32 1, i32 3, i32 2, i32 3]

; Function Attrs: norecurse nounwind uwtable
define i8* @depuncture(i8* readonly %in) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  %n_cbps1 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 3
  %1 = load i32, i32* %n_cbps1, align 4, !tbaa !5
  %2 = load i32, i32* @d_ntraceback, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load %struct.frame_param*, %struct.frame_param** @d_frame, align 8, !tbaa !1
  %n_sym268 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %3, i64 0, i32 1
  %4 = load i32, i32* %n_sym268, align 4, !tbaa !9
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
  %.pre = load i32, i32* @d_k, align 4, !tbaa !8
  %mul858 = shl nsw i32 %.pre, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc ]
  %count.165 = phi i32 [ %count.070, %while.cond.preheader.lr.ph ], [ %18, %for.inc ]
  %rem59 = srem i32 %count.165, %mul858
  %idxprom60 = sext i32 %rem59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %5, i64 %idxprom60
  %9 = load i8, i8* %arrayidx61, align 1, !tbaa !11
  %cmp962 = icmp eq i8 %9, 0
  br i1 %cmp962, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = sext i32 %count.165 to i64
  br label %while.body

for.cond.cleanup6.loopexit:                       ; preds = %for.inc
  %.pre80 = load i32, i32* %n_sym268, align 4, !tbaa !9
  br label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond.cleanup6.loopexit, %for.cond4.preheader
  %11 = phi i32 [ %7, %for.cond4.preheader ], [ %.pre80, %for.cond.cleanup6.loopexit ]
  %count.1.lcssa = phi i32 [ %count.070, %for.cond4.preheader ], [ %18, %for.cond.cleanup6.loopexit ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %12 = sext i32 %11 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next78, %12
  br i1 %cmp3, label %for.cond4.preheader, label %if.end

while.body:                                       ; preds = %while.body, %while.body.preheader
  %indvars.iv = phi i64 [ %10, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx12 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv
  store i8 2, i8* %arrayidx12, align 1, !tbaa !11
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %rem = srem i32 %13, %mul858
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp9 = icmp eq i8 %14, 0
  br i1 %cmp9, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %count.2.lcssa = phi i32 [ %count.165, %while.cond.preheader ], [ %13, %while.body ]
  %15 = add nsw i64 %indvars.iv74, %8
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %15
  %16 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %17 = sext i32 %count.2.lcssa to i64
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19, %while.end
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %while.cond19 ], [ %17, %while.end ]
  %.sink = phi i8 [ 2, %while.cond19 ], [ %16, %while.end ]
  %arrayidx29 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv72
  store i8 %.sink, i8* %arrayidx29, align 1, !tbaa !11
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %18 = trunc i64 %indvars.iv.next73 to i32
  %rem21 = srem i32 %18, %mul858
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %5, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1, !tbaa !11
  %cmp25 = icmp eq i8 %19, 0
  br i1 %cmp25, label %while.cond19, label %for.inc

for.inc:                                          ; preds = %while.cond19
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup6.loopexit, label %while.cond.preheader

if.end:                                           ; preds = %for.cond.cleanup6, %for.cond.preheader, %entry
  %depunctured.0 = phi i8* [ %in, %entry ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.preheader ], [ getelementptr inbounds ([24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 0), %for.cond.cleanup6 ]
  ret i8* %depunctured.0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @do_decoding(i32 %in_cbps, i32 %in_ntraceback, i8* nocapture readnone %in_depuncture_pattern, i32 %in_n_data_bits, i8* nocapture readonly %depd_data) local_unnamed_addr #2 {
entry:
  %l_metric0_generic = alloca [64 x i8], align 16
  %l_metric0_generic1180 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 0
  %l_metric1_generic = alloca [64 x i8], align 16
  %l_metric1_generic1181 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 0
  %l_path0_generic = alloca [64 x i8], align 16
  %l_path0_generic1168 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 0
  %l_path1_generic = alloca [64 x i8], align 16
  %l_path1_generic1182 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 0
  %l_mmresult = alloca [64 x i8], align 16
  %l_mmresult1183 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 0
  %l_ppresult = alloca [24 x [64 x i8]], align 16
  %survivor1 = alloca <16 x i8>, align 16
  %metsv = alloca <16 x i8>, align 16
  %tmpcast1301 = bitcast <16 x i8>* %metsv to [16 x i8]*
  %shift0 = alloca <16 x i8>, align 16
  %tmpcast1293 = bitcast <16 x i8>* %shift0 to [16 x i8]*
  %shift1 = alloca <16 x i8>, align 16
  %tmpcast = bitcast <16 x i8>* %shift1 to [16 x i8]*
  %tmp0 = alloca <16 x i8>, align 16
  %tmpcast1294 = bitcast <16 x i8>* %tmp0 to [16 x i8]*
  %tmp1 = alloca <16 x i8>, align 16
  %tmpcast1296 = bitcast <16 x i8>* %tmp1 to [16 x i8]*
  %sym0v = alloca <16 x i8>, align 16
  %sym1v = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_metric0_generic1180) #3
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_metric1_generic1181) #3
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_path0_generic1168) #3
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_path1_generic1182) #3
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_mmresult1183) #3
  %0 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1536, i8* nonnull %0) #3
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric0_generic1180, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path0_generic1168, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric1_generic1181, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path1_generic1182, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_mmresult1183, i8 0, i64 64, i32 16, i1 false)
  %1 = bitcast [24 x [64 x i8]]* %l_ppresult to <16 x i8>*
  %2 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 0
  %3 = bitcast i8* %2 to <16 x i8>*
  %4 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 0
  %5 = bitcast i8* %4 to <16 x i8>*
  %6 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 0
  %7 = bitcast i8* %6 to <16 x i8>*
  %8 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 0
  %9 = bitcast i8* %8 to <16 x i8>*
  %10 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 0
  %11 = bitcast i8* %10 to <16 x i8>*
  %12 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 0
  %13 = bitcast i8* %12 to <16 x i8>*
  %14 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 0
  %15 = bitcast i8* %14 to <16 x i8>*
  %16 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 0
  %17 = bitcast i8* %16 to <16 x i8>*
  %18 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 0
  %19 = bitcast i8* %18 to <16 x i8>*
  %20 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 0
  %21 = bitcast i8* %20 to <16 x i8>*
  %22 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 0
  %23 = bitcast i8* %22 to <16 x i8>*
  %24 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 0
  %25 = bitcast i8* %24 to <16 x i8>*
  %26 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 0
  %27 = bitcast i8* %26 to <16 x i8>*
  %28 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 0
  %29 = bitcast i8* %28 to <16 x i8>*
  %30 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 0
  %31 = bitcast i8* %30 to <16 x i8>*
  %32 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 0
  %33 = bitcast i8* %32 to <16 x i8>*
  %34 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 0
  %35 = bitcast i8* %34 to <16 x i8>*
  %36 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 0
  %37 = bitcast i8* %36 to <16 x i8>*
  %38 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 0
  %39 = bitcast i8* %38 to <16 x i8>*
  %40 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 0
  %41 = bitcast i8* %40 to <16 x i8>*
  %42 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 0
  %43 = bitcast i8* %42 to <16 x i8>*
  %44 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 0
  %45 = bitcast i8* %44 to <16 x i8>*
  %46 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 0
  %47 = bitcast i8* %46 to <16 x i8>*
  %48 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %50 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 16
  %51 = bitcast i8* %50 to <16 x i8>*
  %52 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  %54 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 16
  %55 = bitcast i8* %54 to <16 x i8>*
  %56 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 16
  %57 = bitcast i8* %56 to <16 x i8>*
  %58 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  %60 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  %62 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 16
  %63 = bitcast i8* %62 to <16 x i8>*
  %64 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 16
  %65 = bitcast i8* %64 to <16 x i8>*
  %66 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 16
  %67 = bitcast i8* %66 to <16 x i8>*
  %68 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  %70 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 16
  %71 = bitcast i8* %70 to <16 x i8>*
  %72 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 16
  %73 = bitcast i8* %72 to <16 x i8>*
  %74 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 16
  %75 = bitcast i8* %74 to <16 x i8>*
  %76 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 16
  %77 = bitcast i8* %76 to <16 x i8>*
  %78 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %80 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 16
  %81 = bitcast i8* %80 to <16 x i8>*
  %82 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  %84 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 16
  %85 = bitcast i8* %84 to <16 x i8>*
  %86 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 16
  %87 = bitcast i8* %86 to <16 x i8>*
  %88 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 16
  %89 = bitcast i8* %88 to <16 x i8>*
  %90 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  %92 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 16
  %93 = bitcast i8* %92 to <16 x i8>*
  %94 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 16
  %95 = bitcast i8* %94 to <16 x i8>*
  %96 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 32
  %97 = bitcast i8* %96 to <16 x i8>*
  %98 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 32
  %99 = bitcast i8* %98 to <16 x i8>*
  %100 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 32
  %101 = bitcast i8* %100 to <16 x i8>*
  %102 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 32
  %103 = bitcast i8* %102 to <16 x i8>*
  %104 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 32
  %105 = bitcast i8* %104 to <16 x i8>*
  %106 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 32
  %107 = bitcast i8* %106 to <16 x i8>*
  %108 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 32
  %109 = bitcast i8* %108 to <16 x i8>*
  %110 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 32
  %111 = bitcast i8* %110 to <16 x i8>*
  %112 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 32
  %113 = bitcast i8* %112 to <16 x i8>*
  %114 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 32
  %115 = bitcast i8* %114 to <16 x i8>*
  %116 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 32
  %117 = bitcast i8* %116 to <16 x i8>*
  %118 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 32
  %119 = bitcast i8* %118 to <16 x i8>*
  %120 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 32
  %121 = bitcast i8* %120 to <16 x i8>*
  %122 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 32
  %123 = bitcast i8* %122 to <16 x i8>*
  %124 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 32
  %125 = bitcast i8* %124 to <16 x i8>*
  %126 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 32
  %127 = bitcast i8* %126 to <16 x i8>*
  %128 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 32
  %129 = bitcast i8* %128 to <16 x i8>*
  %130 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 32
  %131 = bitcast i8* %130 to <16 x i8>*
  %132 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 32
  %133 = bitcast i8* %132 to <16 x i8>*
  %134 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 32
  %135 = bitcast i8* %134 to <16 x i8>*
  %136 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 32
  %137 = bitcast i8* %136 to <16 x i8>*
  %138 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 32
  %139 = bitcast i8* %138 to <16 x i8>*
  %140 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 32
  %141 = bitcast i8* %140 to <16 x i8>*
  %142 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 32
  %143 = bitcast i8* %142 to <16 x i8>*
  %144 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 48
  %145 = bitcast i8* %144 to <16 x i8>*
  %146 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 1, i64 48
  %147 = bitcast i8* %146 to <16 x i8>*
  %148 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 2, i64 48
  %149 = bitcast i8* %148 to <16 x i8>*
  %150 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 3, i64 48
  %151 = bitcast i8* %150 to <16 x i8>*
  %152 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 4, i64 48
  %153 = bitcast i8* %152 to <16 x i8>*
  %154 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 5, i64 48
  %155 = bitcast i8* %154 to <16 x i8>*
  %156 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 6, i64 48
  %157 = bitcast i8* %156 to <16 x i8>*
  %158 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 7, i64 48
  %159 = bitcast i8* %158 to <16 x i8>*
  %160 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 8, i64 48
  %161 = bitcast i8* %160 to <16 x i8>*
  %162 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 9, i64 48
  %163 = bitcast i8* %162 to <16 x i8>*
  %164 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 10, i64 48
  %165 = bitcast i8* %164 to <16 x i8>*
  %166 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 11, i64 48
  %167 = bitcast i8* %166 to <16 x i8>*
  %168 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 12, i64 48
  %169 = bitcast i8* %168 to <16 x i8>*
  %170 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 13, i64 48
  %171 = bitcast i8* %170 to <16 x i8>*
  %172 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 14, i64 48
  %173 = bitcast i8* %172 to <16 x i8>*
  %174 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 15, i64 48
  %175 = bitcast i8* %174 to <16 x i8>*
  %176 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 16, i64 48
  %177 = bitcast i8* %176 to <16 x i8>*
  %178 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 17, i64 48
  %179 = bitcast i8* %178 to <16 x i8>*
  %180 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 18, i64 48
  %181 = bitcast i8* %180 to <16 x i8>*
  %182 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 19, i64 48
  %183 = bitcast i8* %182 to <16 x i8>*
  %184 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 20, i64 48
  %185 = bitcast i8* %184 to <16 x i8>*
  %186 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 21, i64 48
  %187 = bitcast i8* %186 to <16 x i8>*
  %188 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 22, i64 48
  %189 = bitcast i8* %188 to <16 x i8>*
  %190 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 23, i64 48
  %191 = bitcast i8* %190 to <16 x i8>*
  %sym0v1058 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  %sym1v1059 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  %cmp201045 = icmp sgt i32 %in_n_data_bits, 0
  %192 = bitcast <16 x i8>* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %192, i8 0, i64 1536, i32 16, i1 false)
  br i1 %cmp201045, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tmpcast1307 = bitcast <16 x i8>* %survivor1 to [16 x i8]*
  %193 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor1, i64 0, i64 0
  %194 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsv, i64 0, i64 0
  %195 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift0, i64 0, i64 0
  %196 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift1, i64 0, i64 0
  %197 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp0, i64 0, i64 0
  %198 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp1, i64 0, i64 0
  %sub636 = add i32 %in_ntraceback, -1
  %cmp6371035 = icmp sgt i32 %in_ntraceback, 1
  %arrayidx511 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 8
  %arrayidx417.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 5
  %arrayidx417.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 6
  %arrayidx417.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 7
  %arrayidx417.9 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 9
  %arrayidx417.10 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 10
  %arrayidx417.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 11
  %arrayidx417.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 12
  %arrayidx417.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 13
  %arrayidx417.14 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 14
  %arrayidx417.15 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 15
  %arrayidx437.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 15
  %arrayidx473.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 11
  %arrayidx473.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 12
  %arrayidx473.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 13
  %scevgep1150.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 16
  %scevgep.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 16
  %scevgep1148.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 16
  %scevgep1150.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 32
  %scevgep.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 32
  %scevgep1148.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 32
  %scevgep1150.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 48
  %scevgep.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 48
  %scevgep1148.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 48
  %arrayidx114.15.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 15
  %arrayidx79.14.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 14
  %arrayidx79.13.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 13
  %arrayidx79.12.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 12
  %arrayidx79.11.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 11
  %arrayidx79.10.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 10
  %arrayidx79.9.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 9
  %arrayidx79.8.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 8
  %arrayidx79.7.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 7
  %arrayidx79.6.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 6
  %arrayidx79.5.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 5
  %arrayidx79.4.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 4
  %arrayidx79.3.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 3
  %arrayidx79.2.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 2
  %arrayidx79.1.sink = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1301, i64 0, i64 1
  %xtraiter = and i32 %sub636, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  %199 = icmp eq i32 %in_ntraceback, 2
  %200 = bitcast [64 x i8]* %l_metric0_generic to <16 x i8>*
  %201 = bitcast i8* %scevgep1148.1 to <16 x i8>*
  %202 = bitcast i8* %scevgep1148.2 to <16 x i8>*
  %203 = bitcast i8* %scevgep1148.3 to <16 x i8>*
  br label %while.body

while.body:                                       ; preds = %if.end711, %while.body.lr.ph
  %in_count.01050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc712, %if.end711 ]
  %out_count.01049 = phi i32 [ 0, %while.body.lr.ph ], [ %out_count.1, %if.end711 ]
  %n_decoded.01048 = phi i32 [ 0, %while.body.lr.ph ], [ %n_decoded.3, %if.end711 ]
  %l_store_pos.01047 = phi i32 [ 0, %while.body.lr.ph ], [ %l_store_pos.1, %if.end711 ]
  %rem988 = and i32 %in_count.01050, 3
  %cmp21 = icmp eq i32 %rem988, 0
  br i1 %cmp21, label %if.then, label %if.end711

if.then:                                          ; preds = %while.body
  %and = and i32 %in_count.01050, -4
  %idxprom25 = zext i32 %and to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %depd_data, i64 %idxprom25
  call void @llvm.lifetime.start(i64 16, i8* nonnull %193) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %194) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %195) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %196) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %197) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %198) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %sym0v1058) #3
  call void @llvm.lifetime.start(i64 16, i8* nonnull %sym1v1059) #3
  %204 = load i8, i8* %arrayidx26, align 1, !tbaa !11
  %arrayidx37 = getelementptr inbounds i8, i8* %arrayidx26, i64 1
  %205 = load i8, i8* %arrayidx37, align 1, !tbaa !11
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v1058, i8 %204, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v1059, i8 %205, i64 16, i32 16, i1 false)
  %arrayidx542 = getelementptr inbounds i8, i8* %arrayidx26, i64 2
  %206 = load i8, i8* %arrayidx542, align 1, !tbaa !11
  %arrayidx546 = getelementptr inbounds i8, i8* %arrayidx26, i64 3
  %207 = load i8, i8* %arrayidx546, align 1, !tbaa !11
  %208 = zext i8 %204 to i128
  %209 = shl nuw nsw i128 %208, 8
  %210 = or i128 %208, %209
  %211 = shl nuw nsw i128 %210, 16
  %212 = or i128 %210, %211
  %213 = shl nuw nsw i128 %212, 32
  %214 = or i128 %212, %213
  %215 = shl i128 %214, 64
  %216 = or i128 %214, %215
  %217 = zext i8 %205 to i128
  %218 = shl nuw nsw i128 %217, 8
  %219 = or i128 %217, %218
  %220 = shl nuw nsw i128 %219, 16
  %221 = or i128 %219, %220
  %222 = shl nuw nsw i128 %221, 32
  %223 = or i128 %221, %222
  %224 = shl i128 %223, 64
  %225 = or i128 %223, %224
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.body540.preheader.for.cond48.preheader_crit_edge, %if.then
  %wide.load1256.in = phi i128 [ %225, %if.then ], [ %409, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %wide.load1254.in = phi i128 [ %216, %if.then ], [ %411, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %226 = phi i8 [ %204, %if.then ], [ %.pre, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %s.01028 = phi i32 [ 0, %if.then ], [ %inc553, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %second_symbol.01027 = phi i64 [ 1, %if.then ], [ 3, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %path1.01025 = phi i8* [ %l_path1_generic1182, %if.then ], [ %l_path0_generic1168, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %path0.01024 = phi i8* [ %l_path0_generic1168, %if.then ], [ %l_path1_generic1182, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %metric1.01023 = phi i8* [ %l_metric1_generic1181, %if.then ], [ %l_metric0_generic1180, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %metric0.01022 = phi i8* [ %l_metric0_generic1180, %if.then ], [ %l_metric1_generic1181, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  %wide.load1254 = bitcast i128 %wide.load1254.in to <16 x i8>
  %wide.load1256 = bitcast i128 %wide.load1256.in to <16 x i8>
  %cmp54 = icmp eq i8 %226, 2
  %arrayidx84 = getelementptr inbounds i8, i8* %arrayidx26, i64 %second_symbol.01027
  br label %for.body51

for.cond.cleanup45:                               ; preds = %for.body540.preheader
  call void @llvm.lifetime.end(i64 16, i8* nonnull %sym1v1059) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %sym0v1058) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %198) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %197) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %196) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %195) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %194) #3
  call void @llvm.lifetime.end(i64 16, i8* nonnull %193) #3
  %cmp556 = icmp sgt i32 %in_count.01050, 0
  %rem558 = srem i32 %in_count.01050, 16
  %cmp559 = icmp eq i32 %rem558, 8
  %or.cond = and i1 %cmp556, %cmp559
  br i1 %or.cond, label %if.then561, label %if.end711

for.body51:                                       ; preds = %for.body357.preheader, %for.cond48.preheader
  %indvars.iv1125 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next1126, %for.body357.preheader ]
  br i1 %cmp54, label %for.cond58.preheader, label %if.else

for.cond58.preheader:                             ; preds = %for.body51
  %227 = shl i64 %indvars.iv1125, 4
  %arrayidx66 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %227
  br label %for.cond161.preheader.sink.split

for.cond161.preheader.sink.split:                 ; preds = %if.else, %for.cond58.preheader
  %arrayidx66.sink = phi i8* [ %arrayidx66, %for.cond58.preheader ], [ %arrayidx99, %if.else ]
  %.sink = phi i8* [ %sym1v1059, %for.cond58.preheader ], [ %sym0v1058, %if.else ]
  %.pre-phi.ph = phi i64 [ %227, %for.cond58.preheader ], [ %297, %if.else ]
  %228 = bitcast i8* %arrayidx66.sink to <16 x i8>*
  %229 = load <16 x i8>, <16 x i8>* %228, align 16, !tbaa !11
  %230 = bitcast i8* %.sink to <16 x i8>*
  %231 = load <16 x i8>, <16 x i8>* %230, align 16, !tbaa !11
  %232 = xor <16 x i8> %231, %229
  %233 = extractelement <16 x i8> %232, i32 0
  %sub = sub i8 1, %233
  store i8 %sub, i8* %194, align 16, !tbaa !11
  %234 = extractelement <16 x i8> %232, i32 1
  %sub.1 = sub i8 1, %234
  store i8 %sub.1, i8* %arrayidx79.1.sink, align 1, !tbaa !11
  %235 = extractelement <16 x i8> %232, i32 2
  %sub.2 = sub i8 1, %235
  store i8 %sub.2, i8* %arrayidx79.2.sink, align 2, !tbaa !11
  %236 = extractelement <16 x i8> %232, i32 3
  %sub.3 = sub i8 1, %236
  store i8 %sub.3, i8* %arrayidx79.3.sink, align 1, !tbaa !11
  %237 = extractelement <16 x i8> %232, i32 4
  %sub.4 = sub i8 1, %237
  store i8 %sub.4, i8* %arrayidx79.4.sink, align 4, !tbaa !11
  %238 = extractelement <16 x i8> %232, i32 5
  %sub.5 = sub i8 1, %238
  store i8 %sub.5, i8* %arrayidx79.5.sink, align 1, !tbaa !11
  %239 = extractelement <16 x i8> %232, i32 6
  %sub.6 = sub i8 1, %239
  store i8 %sub.6, i8* %arrayidx79.6.sink, align 2, !tbaa !11
  %240 = extractelement <16 x i8> %232, i32 7
  %sub.7 = sub i8 1, %240
  store i8 %sub.7, i8* %arrayidx79.7.sink, align 1, !tbaa !11
  %241 = extractelement <16 x i8> %232, i32 8
  %sub.8 = sub i8 1, %241
  store i8 %sub.8, i8* %arrayidx79.8.sink, align 8, !tbaa !11
  %242 = extractelement <16 x i8> %232, i32 9
  %sub.9 = sub i8 1, %242
  store i8 %sub.9, i8* %arrayidx79.9.sink, align 1, !tbaa !11
  %243 = extractelement <16 x i8> %232, i32 10
  %sub.10 = sub i8 1, %243
  store i8 %sub.10, i8* %arrayidx79.10.sink, align 2, !tbaa !11
  %244 = extractelement <16 x i8> %232, i32 11
  %sub.11 = sub i8 1, %244
  store i8 %sub.11, i8* %arrayidx79.11.sink, align 1, !tbaa !11
  %245 = extractelement <16 x i8> %232, i32 12
  %sub.12 = sub i8 1, %245
  store i8 %sub.12, i8* %arrayidx79.12.sink, align 4, !tbaa !11
  %246 = extractelement <16 x i8> %232, i32 13
  %sub.13 = sub i8 1, %246
  store i8 %sub.13, i8* %arrayidx79.13.sink, align 1, !tbaa !11
  %247 = extractelement <16 x i8> %232, i32 14
  %sub.14 = sub i8 1, %247
  store i8 %sub.14, i8* %arrayidx79.14.sink, align 2, !tbaa !11
  %248 = extractelement <16 x i8> %232, i32 15
  %sub111.15 = sub i8 1, %248
  store i8 %sub111.15, i8* %arrayidx114.15.sink, align 1, !tbaa !11
  %wide.load1238.pre = load <16 x i8>, <16 x i8>* %metsv, align 16, !tbaa !11
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %vector.body1241.preheader, %for.cond161.preheader.sink.split
  %wide.load1238 = phi <16 x i8> [ %wide.load1238.pre, %for.cond161.preheader.sink.split ], [ %304, %vector.body1241.preheader ]
  %wide.load12401309 = phi <16 x i8> [ %232, %for.cond161.preheader.sink.split ], [ %303, %vector.body1241.preheader ]
  %.pre-phi = phi i64 [ %.pre-phi.ph, %for.cond161.preheader.sink.split ], [ %297, %vector.body1241.preheader ]
  %249 = add nuw nsw i64 %.pre-phi, 32
  %250 = getelementptr inbounds i8, i8* %metric0.01022, i64 %.pre-phi
  %251 = bitcast i8* %250 to <16 x i8>*
  %wide.load1237 = load <16 x i8>, <16 x i8>* %251, align 1, !tbaa !11
  %252 = add <16 x i8> %wide.load1238, %wide.load1237
  %253 = getelementptr inbounds i8, i8* %metric0.01022, i64 %249
  %254 = bitcast i8* %253 to <16 x i8>*
  %wide.load1239 = load <16 x i8>, <16 x i8>* %254, align 1, !tbaa !11
  %255 = add <16 x i8> %wide.load12401309, %wide.load1239
  %256 = add <16 x i8> %wide.load1237, %wide.load12401309
  %257 = add <16 x i8> %wide.load1238, %wide.load1239
  %258 = icmp ugt <16 x i8> %252, %255
  %259 = icmp ugt <16 x i8> %256, %257
  %260 = select <16 x i1> %258, <16 x i8> %252, <16 x i8> %255
  %261 = select <16 x i1> %259, <16 x i8> %256, <16 x i8> %257
  store <16 x i8> %261, <16 x i8>* %survivor1, align 16, !tbaa !11
  %262 = extractelement <16 x i8> %260, i32 0
  %263 = extractelement <16 x i8> %261, i32 0
  %264 = extractelement <16 x i8> %260, i32 1
  %265 = extractelement <16 x i8> %261, i32 1
  %266 = extractelement <16 x i8> %260, i32 2
  %267 = extractelement <16 x i8> %261, i32 2
  %268 = extractelement <16 x i8> %260, i32 3
  %269 = extractelement <16 x i8> %261, i32 3
  %270 = extractelement <16 x i8> %260, i32 4
  %271 = extractelement <16 x i8> %261, i32 4
  %272 = extractelement <16 x i8> %260, i32 5
  %273 = extractelement <16 x i8> %261, i32 5
  %274 = extractelement <16 x i8> %260, i32 6
  %275 = extractelement <16 x i8> %261, i32 6
  %276 = extractelement <16 x i8> %260, i32 7
  %277 = extractelement <16 x i8> %261, i32 7
  %278 = extractelement <16 x i8> %260, i32 8
  %279 = extractelement <16 x i8> %261, i32 8
  %280 = extractelement <16 x i8> %260, i32 9
  %281 = extractelement <16 x i8> %261, i32 9
  %282 = extractelement <16 x i8> %260, i32 10
  %283 = extractelement <16 x i8> %261, i32 10
  %284 = extractelement <16 x i8> %260, i32 11
  %285 = extractelement <16 x i8> %261, i32 11
  %286 = extractelement <16 x i8> %260, i32 12
  %287 = extractelement <16 x i8> %261, i32 12
  %288 = extractelement <16 x i8> %260, i32 13
  %289 = extractelement <16 x i8> %261, i32 13
  %290 = extractelement <16 x i8> %260, i32 14
  %291 = extractelement <16 x i8> %261, i32 14
  %292 = extractelement <16 x i8> %260, i32 15
  %293 = bitcast <16 x i8> %261 to i128
  %294 = lshr i128 %293, 120
  %295 = trunc i128 %294 to i8
  br label %for.body294

if.else:                                          ; preds = %for.body51
  %296 = load i8, i8* %arrayidx84, align 1, !tbaa !11
  %cmp86 = icmp eq i8 %296, 2
  %297 = shl i64 %indvars.iv1125, 4
  %arrayidx99 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %297
  br i1 %cmp86, label %for.cond161.preheader.sink.split, label %vector.body1241.preheader

vector.body1241.preheader:                        ; preds = %if.else
  %298 = bitcast i8* %arrayidx99 to <16 x i8>*
  %wide.load1253 = load <16 x i8>, <16 x i8>* %298, align 16, !tbaa !11
  %299 = xor <16 x i8> %wide.load1254, %wide.load1253
  %300 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %297
  %301 = bitcast i8* %300 to <16 x i8>*
  %wide.load1255 = load <16 x i8>, <16 x i8>* %301, align 16, !tbaa !11
  %302 = xor <16 x i8> %wide.load1256, %wide.load1255
  %303 = add <16 x i8> %302, %299
  %304 = sub <16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>, %303
  store <16 x i8> %304, <16 x i8>* %metsv, align 16, !tbaa !11
  br label %for.cond161.preheader

for.body294:                                      ; preds = %for.body294, %for.cond161.preheader
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %for.body294 ], [ 0, %for.cond161.preheader ]
  %305 = add nuw nsw i64 %indvars.iv1077, %.pre-phi
  %arrayidx298 = getelementptr inbounds i8, i8* %path0.01024, i64 %305
  %306 = load i8, i8* %arrayidx298, align 1, !tbaa !11
  %307 = or i64 %indvars.iv1077, 1
  %308 = add nuw nsw i64 %307, %.pre-phi
  %arrayidx304 = getelementptr inbounds i8, i8* %path0.01024, i64 %308
  %309 = load i8, i8* %arrayidx304, align 1, !tbaa !11
  %conv305 = zext i8 %309 to i16
  %shl = shl nuw i16 %conv305, 8
  %conv306 = zext i8 %306 to i16
  %or307 = or i16 %shl, %conv306
  %shl310 = shl i8 %306, 1
  %arrayidx314 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1293, i64 0, i64 %indvars.iv1077
  store i8 %shl310, i8* %arrayidx314, align 2, !tbaa !11
  %310 = lshr i16 %or307, 7
  %conv316 = trunc i16 %310 to i8
  %arrayidx319 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1293, i64 0, i64 %307
  store i8 %conv316, i8* %arrayidx319, align 1, !tbaa !11
  %311 = add nuw nsw i64 %indvars.iv1077, %249
  %arrayidx324 = getelementptr inbounds i8, i8* %path0.01024, i64 %311
  %312 = load i8, i8* %arrayidx324, align 1, !tbaa !11
  %313 = add nuw nsw i64 %307, %249
  %arrayidx331 = getelementptr inbounds i8, i8* %path0.01024, i64 %313
  %314 = load i8, i8* %arrayidx331, align 1, !tbaa !11
  %conv332 = zext i8 %314 to i16
  %shl333 = shl nuw i16 %conv332, 8
  %conv334 = zext i8 %312 to i16
  %or335 = or i16 %shl333, %conv334
  %shl338 = shl i8 %312, 1
  %arrayidx342 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %indvars.iv1077
  store i8 %shl338, i8* %arrayidx342, align 2, !tbaa !11
  %315 = lshr i16 %or335, 7
  %conv345 = trunc i16 %315 to i8
  %arrayidx348 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast, i64 0, i64 %307
  store i8 %conv345, i8* %arrayidx348, align 1, !tbaa !11
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 2
  %cmp291 = icmp slt i64 %indvars.iv.next1078, 16
  br i1 %cmp291, label %for.body294, label %for.body357.preheader

for.body357.preheader:                            ; preds = %for.body294
  %316 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !11
  %317 = add <16 x i8> %316, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %317, <16 x i8>* %shift1, align 16, !tbaa !11
  %318 = shl i64 %indvars.iv1125, 5
  %arrayidx380 = getelementptr inbounds i8, i8* %metric1.01023, i64 %318
  store i8 %262, i8* %arrayidx380, align 1, !tbaa !11
  %319 = or i64 %318, 1
  %arrayidx388 = getelementptr inbounds i8, i8* %metric1.01023, i64 %319
  store i8 %263, i8* %arrayidx388, align 1, !tbaa !11
  %320 = or i64 %318, 2
  %arrayidx380.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %320
  store i8 %264, i8* %arrayidx380.1, align 1, !tbaa !11
  %321 = or i64 %318, 3
  %arrayidx388.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %321
  store i8 %265, i8* %arrayidx388.1, align 1, !tbaa !11
  %322 = or i64 %318, 4
  %arrayidx380.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %322
  store i8 %266, i8* %arrayidx380.2, align 1, !tbaa !11
  %323 = or i64 %318, 5
  %arrayidx388.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %323
  store i8 %267, i8* %arrayidx388.2, align 1, !tbaa !11
  %324 = or i64 %318, 6
  %arrayidx380.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %324
  store i8 %268, i8* %arrayidx380.3, align 1, !tbaa !11
  %325 = or i64 %318, 7
  %arrayidx388.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %325
  store i8 %269, i8* %arrayidx388.3, align 1, !tbaa !11
  %326 = or i64 %318, 8
  %arrayidx380.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %326
  store i8 %270, i8* %arrayidx380.4, align 1, !tbaa !11
  %327 = or i64 %318, 9
  %arrayidx388.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %327
  store i8 %271, i8* %arrayidx388.4, align 1, !tbaa !11
  %328 = or i64 %318, 10
  %arrayidx380.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %328
  store i8 %272, i8* %arrayidx380.5, align 1, !tbaa !11
  %329 = or i64 %318, 11
  %arrayidx388.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %329
  store i8 %273, i8* %arrayidx388.5, align 1, !tbaa !11
  %330 = or i64 %318, 12
  %arrayidx380.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %330
  store i8 %274, i8* %arrayidx380.6, align 1, !tbaa !11
  %331 = or i64 %318, 13
  %arrayidx388.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %331
  store i8 %275, i8* %arrayidx388.6, align 1, !tbaa !11
  %332 = or i64 %318, 14
  %arrayidx380.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %332
  store i8 %276, i8* %arrayidx380.7, align 1, !tbaa !11
  %333 = or i64 %318, 15
  %arrayidx388.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %333
  store i8 %277, i8* %arrayidx388.7, align 1, !tbaa !11
  %334 = load <16 x i8>, <16 x i8>* %shift0, align 16, !tbaa !11
  %335 = select <16 x i1> %258, <16 x i8> %334, <16 x i8> %317
  store <16 x i8> %335, <16 x i8>* %tmp0, align 16, !tbaa !11
  %336 = or i64 %318, 16
  %arrayidx435 = getelementptr inbounds i8, i8* %metric1.01023, i64 %336
  store i8 %278, i8* %arrayidx435, align 1, !tbaa !11
  %337 = or i64 %318, 17
  %arrayidx444 = getelementptr inbounds i8, i8* %metric1.01023, i64 %337
  store i8 %279, i8* %arrayidx444, align 1, !tbaa !11
  %338 = or i64 %318, 18
  %arrayidx435.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %338
  store i8 %280, i8* %arrayidx435.1, align 1, !tbaa !11
  %339 = or i64 %318, 19
  %arrayidx444.1 = getelementptr inbounds i8, i8* %metric1.01023, i64 %339
  store i8 %281, i8* %arrayidx444.1, align 1, !tbaa !11
  %340 = or i64 %318, 20
  %arrayidx435.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %340
  store i8 %282, i8* %arrayidx435.2, align 1, !tbaa !11
  %341 = or i64 %318, 21
  %arrayidx444.2 = getelementptr inbounds i8, i8* %metric1.01023, i64 %341
  store i8 %283, i8* %arrayidx444.2, align 1, !tbaa !11
  %342 = or i64 %318, 22
  %arrayidx435.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %342
  store i8 %284, i8* %arrayidx435.3, align 1, !tbaa !11
  %343 = or i64 %318, 23
  %arrayidx444.3 = getelementptr inbounds i8, i8* %metric1.01023, i64 %343
  store i8 %285, i8* %arrayidx444.3, align 1, !tbaa !11
  %344 = or i64 %318, 24
  %arrayidx435.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %344
  store i8 %286, i8* %arrayidx435.4, align 1, !tbaa !11
  %345 = or i64 %318, 25
  %arrayidx444.4 = getelementptr inbounds i8, i8* %metric1.01023, i64 %345
  store i8 %287, i8* %arrayidx444.4, align 1, !tbaa !11
  %346 = or i64 %318, 26
  %arrayidx435.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %346
  store i8 %288, i8* %arrayidx435.5, align 1, !tbaa !11
  %347 = or i64 %318, 27
  %arrayidx444.5 = getelementptr inbounds i8, i8* %metric1.01023, i64 %347
  store i8 %289, i8* %arrayidx444.5, align 1, !tbaa !11
  %348 = or i64 %318, 28
  %arrayidx435.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %348
  store i8 %290, i8* %arrayidx435.6, align 1, !tbaa !11
  %349 = or i64 %318, 29
  %arrayidx444.6 = getelementptr inbounds i8, i8* %metric1.01023, i64 %349
  store i8 %291, i8* %arrayidx444.6, align 1, !tbaa !11
  %350 = or i64 %318, 30
  %arrayidx435.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %350
  store i8 %292, i8* %arrayidx435.7, align 1, !tbaa !11
  %351 = or i64 %318, 31
  %arrayidx444.7 = getelementptr inbounds i8, i8* %metric1.01023, i64 %351
  store i8 %295, i8* %arrayidx444.7, align 1, !tbaa !11
  %352 = load <16 x i8>, <16 x i8>* %shift1, align 16, !tbaa !11
  %353 = select <16 x i1> %259, <16 x i8> %334, <16 x i8> %352
  store <16 x i8> %353, <16 x i8>* %tmp1, align 16, !tbaa !11
  %354 = extractelement <16 x i8> %335, i32 0
  %arrayidx490 = getelementptr inbounds i8, i8* %path1.01025, i64 %318
  store i8 %354, i8* %arrayidx490, align 1, !tbaa !11
  %355 = extractelement <16 x i8> %353, i32 0
  %arrayidx498 = getelementptr inbounds i8, i8* %path1.01025, i64 %319
  store i8 %355, i8* %arrayidx498, align 1, !tbaa !11
  %356 = extractelement <16 x i8> %335, i32 1
  %arrayidx490.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %320
  store i8 %356, i8* %arrayidx490.1, align 1, !tbaa !11
  %357 = extractelement <16 x i8> %353, i32 1
  %arrayidx498.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %321
  store i8 %357, i8* %arrayidx498.1, align 1, !tbaa !11
  %358 = extractelement <16 x i8> %335, i32 2
  %arrayidx490.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %322
  store i8 %358, i8* %arrayidx490.2, align 1, !tbaa !11
  %359 = extractelement <16 x i8> %353, i32 2
  %arrayidx498.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %323
  store i8 %359, i8* %arrayidx498.2, align 1, !tbaa !11
  %360 = extractelement <16 x i8> %335, i32 3
  %arrayidx490.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %324
  store i8 %360, i8* %arrayidx490.3, align 1, !tbaa !11
  %361 = extractelement <16 x i8> %353, i32 3
  %arrayidx498.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %325
  store i8 %361, i8* %arrayidx498.3, align 1, !tbaa !11
  %362 = extractelement <16 x i8> %335, i32 4
  %arrayidx490.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %326
  store i8 %362, i8* %arrayidx490.4, align 1, !tbaa !11
  %363 = extractelement <16 x i8> %353, i32 4
  %arrayidx498.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %327
  store i8 %363, i8* %arrayidx498.4, align 1, !tbaa !11
  %364 = bitcast <16 x i8> %335 to i128
  %365 = lshr i128 %364, 40
  %366 = trunc i128 %365 to i8
  %arrayidx490.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %328
  store i8 %366, i8* %arrayidx490.5, align 1, !tbaa !11
  %367 = extractelement <16 x i8> %353, i32 5
  %arrayidx498.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %329
  store i8 %367, i8* %arrayidx498.5, align 1, !tbaa !11
  %368 = lshr i128 %364, 48
  %369 = trunc i128 %368 to i8
  %arrayidx490.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %330
  store i8 %369, i8* %arrayidx490.6, align 1, !tbaa !11
  %370 = extractelement <16 x i8> %353, i32 6
  %arrayidx498.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %331
  store i8 %370, i8* %arrayidx498.6, align 1, !tbaa !11
  %371 = lshr i128 %364, 56
  %372 = trunc i128 %371 to i8
  %arrayidx490.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %332
  store i8 %372, i8* %arrayidx490.7, align 1, !tbaa !11
  %373 = extractelement <16 x i8> %353, i32 7
  %arrayidx498.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %333
  store i8 %373, i8* %arrayidx498.7, align 1, !tbaa !11
  %374 = load i8, i8* %arrayidx511, align 8, !tbaa !11
  %arrayidx517 = getelementptr inbounds i8, i8* %path1.01025, i64 %336
  store i8 %374, i8* %arrayidx517, align 1, !tbaa !11
  %375 = extractelement <16 x i8> %353, i32 8
  %arrayidx526 = getelementptr inbounds i8, i8* %path1.01025, i64 %337
  store i8 %375, i8* %arrayidx526, align 1, !tbaa !11
  %376 = load i8, i8* %arrayidx417.9, align 1, !tbaa !11
  %arrayidx517.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %338
  store i8 %376, i8* %arrayidx517.1, align 1, !tbaa !11
  %377 = extractelement <16 x i8> %353, i32 9
  %arrayidx526.1 = getelementptr inbounds i8, i8* %path1.01025, i64 %339
  store i8 %377, i8* %arrayidx526.1, align 1, !tbaa !11
  %378 = load i8, i8* %arrayidx417.10, align 2, !tbaa !11
  %arrayidx517.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %340
  store i8 %378, i8* %arrayidx517.2, align 1, !tbaa !11
  %379 = extractelement <16 x i8> %353, i32 10
  %arrayidx526.2 = getelementptr inbounds i8, i8* %path1.01025, i64 %341
  store i8 %379, i8* %arrayidx526.2, align 1, !tbaa !11
  %380 = load i8, i8* %arrayidx417.11, align 1, !tbaa !11
  %arrayidx517.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %342
  store i8 %380, i8* %arrayidx517.3, align 1, !tbaa !11
  %381 = bitcast <16 x i8> %353 to i128
  %382 = lshr i128 %381, 88
  %383 = trunc i128 %382 to i8
  %arrayidx526.3 = getelementptr inbounds i8, i8* %path1.01025, i64 %343
  store i8 %383, i8* %arrayidx526.3, align 1, !tbaa !11
  %384 = load i8, i8* %arrayidx417.12, align 4, !tbaa !11
  %arrayidx517.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %344
  store i8 %384, i8* %arrayidx517.4, align 1, !tbaa !11
  %385 = lshr i128 %381, 96
  %386 = trunc i128 %385 to i8
  %arrayidx526.4 = getelementptr inbounds i8, i8* %path1.01025, i64 %345
  store i8 %386, i8* %arrayidx526.4, align 1, !tbaa !11
  %387 = load i8, i8* %arrayidx417.13, align 1, !tbaa !11
  %arrayidx517.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %346
  store i8 %387, i8* %arrayidx517.5, align 1, !tbaa !11
  %388 = lshr i128 %381, 104
  %389 = trunc i128 %388 to i8
  %arrayidx526.5 = getelementptr inbounds i8, i8* %path1.01025, i64 %347
  store i8 %389, i8* %arrayidx526.5, align 1, !tbaa !11
  %390 = load i8, i8* %arrayidx417.14, align 2, !tbaa !11
  %arrayidx517.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %348
  store i8 %390, i8* %arrayidx517.6, align 1, !tbaa !11
  %arrayidx526.6 = getelementptr inbounds i8, i8* %path1.01025, i64 %349
  %391 = extractelement <16 x i8> %353, i32 14
  store i8 %391, i8* %arrayidx526.6, align 1, !tbaa !11
  %392 = load i8, i8* %arrayidx417.15, align 1, !tbaa !11
  %arrayidx517.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %350
  store i8 %392, i8* %arrayidx517.7, align 1, !tbaa !11
  %arrayidx526.7 = getelementptr inbounds i8, i8* %path1.01025, i64 %351
  %393 = extractelement <16 x i8> %353, i32 15
  store i8 %393, i8* %arrayidx526.7, align 1, !tbaa !11
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %exitcond1139 = icmp eq i64 %indvars.iv.next1126, 2
  br i1 %exitcond1139, label %for.body540.preheader, label %for.body51

for.body540.preheader:                            ; preds = %for.body357.preheader
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym0v1058, i8 %206, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %sym1v1059, i8 %207, i64 16, i32 16, i1 false)
  %inc553 = add nuw nsw i32 %s.01028, 1
  %exitcond1143 = icmp eq i32 %inc553, 2
  %394 = zext i8 %206 to i128
  %395 = shl nuw nsw i128 %394, 8
  %396 = or i128 %394, %395
  %397 = shl nuw nsw i128 %396, 16
  %398 = or i128 %396, %397
  %399 = shl nuw nsw i128 %398, 32
  %400 = or i128 %398, %399
  %401 = zext i8 %207 to i128
  %402 = shl nuw nsw i128 %401, 8
  %403 = or i128 %401, %402
  %404 = shl nuw nsw i128 %403, 16
  %405 = or i128 %403, %404
  %406 = shl nuw nsw i128 %405, 32
  %407 = or i128 %405, %406
  br i1 %exitcond1143, label %for.cond.cleanup45, label %for.body540.preheader.for.cond48.preheader_crit_edge

for.body540.preheader.for.cond48.preheader_crit_edge: ; preds = %for.body540.preheader
  %408 = shl i128 %407, 64
  %409 = or i128 %407, %408
  %410 = shl i128 %400, 64
  %411 = or i128 %400, %410
  %.pre = load i8, i8* %arrayidx542, align 1, !tbaa !11
  br label %for.cond48.preheader

if.then561:                                       ; preds = %for.cond.cleanup45
  %add568 = add nsw i32 %l_store_pos.01047, 1
  %rem569 = srem i32 %add568, %in_ntraceback
  %idxprom590 = sext i32 %rem569 to i64
  %scevgep1149 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %l_mmresult1183, i8* nonnull %l_metric0_generic1180, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149, i8* nonnull %l_path0_generic1168, i64 16, i32 16, i1 false)
  %scevgep1149.1 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.1, i8* %scevgep1148.1, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.1, i8* %scevgep1150.1, i64 16, i32 16, i1 false)
  %scevgep1149.2 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.2, i8* %scevgep1148.2, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.2, i8* %scevgep1150.2, i64 16, i32 16, i1 false)
  %scevgep1149.3 = getelementptr [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.3, i8* %scevgep1148.3, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep1149.3, i8* %scevgep1150.3, i64 16, i32 16, i1 false)
  %412 = load i8, i8* %l_mmresult1183, align 16, !tbaa !11
  %conv604 = zext i8 %412 to i32
  br label %for.body611

for.cond635.preheader:                            ; preds = %for.body611
  %idxprom6421037 = sext i32 %i566.1.beststate.0.2 to i64
  %arrayidx6431038 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom590, i64 %idxprom6421037
  %413 = load i8, i8* %arrayidx6431038, align 1, !tbaa !11
  br i1 %cmp6371035, label %for.body639.preheader, label %for.cond656.preheader

for.body639.preheader:                            ; preds = %for.cond635.preheader
  br i1 %lcmp.mod, label %for.body639.prol.loopexit.unr-lcssa, label %for.body639.prol.preheader

for.body639.prol.preheader:                       ; preds = %for.body639.preheader
  %conv644.prol = zext i8 %413 to i64
  %shr645989.prol = lshr i64 %conv644.prol, 2
  %add647.prol = add i32 %sub636, %rem569
  %rem648.prol = srem i32 %add647.prol, %in_ntraceback
  %idxprom640.prol = sext i32 %rem648.prol to i64
  %arrayidx643.prol = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640.prol, i64 %shr645989.prol
  %414 = load i8, i8* %arrayidx643.prol, align 1, !tbaa !11
  br label %for.body639.prol.loopexit.unr-lcssa

for.body639.prol.loopexit.unr-lcssa:              ; preds = %for.body639.prol.preheader, %for.body639.preheader
  %.lcssa1298.unr.ph = phi i8 [ %414, %for.body639.prol.preheader ], [ undef, %for.body639.preheader ]
  %.unr.ph = phi i8 [ %414, %for.body639.prol.preheader ], [ %413, %for.body639.preheader ]
  %pos.01040.unr.ph = phi i32 [ %rem648.prol, %for.body639.prol.preheader ], [ %rem569, %for.body639.preheader ]
  %i566.21039.unr.ph = phi i32 [ 1, %for.body639.prol.preheader ], [ 0, %for.body639.preheader ]
  br i1 %199, label %for.cond656.preheader, label %for.body639

for.body611:                                      ; preds = %for.body611, %if.then561
  %indvars.iv1155 = phi i64 [ 1, %if.then561 ], [ %indvars.iv.next1156.2, %for.body611 ]
  %beststate.01034 = phi i32 [ 0, %if.then561 ], [ %i566.1.beststate.0.2, %for.body611 ]
  %minmetric.01033 = phi i32 [ %conv604, %if.then561 ], [ %minmetric.1.2, %for.body611 ]
  %bestmetric.01032 = phi i32 [ %conv604, %if.then561 ], [ %conv614.bestmetric.0.2, %for.body611 ]
  %arrayidx613 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv1155
  %415 = load i8, i8* %arrayidx613, align 1, !tbaa !11
  %conv614 = zext i8 %415 to i32
  %cmp615 = icmp sgt i32 %conv614, %bestmetric.01032
  %conv614.bestmetric.0 = select i1 %cmp615, i32 %conv614, i32 %bestmetric.01032
  %416 = trunc i64 %indvars.iv1155 to i32
  %i566.1.beststate.0 = select i1 %cmp615, i32 %416, i32 %beststate.01034
  %cmp625 = icmp slt i32 %conv614, %minmetric.01033
  %minmetric.1 = select i1 %cmp625, i32 %conv614, i32 %minmetric.01033
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1
  %arrayidx613.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156
  %417 = load i8, i8* %arrayidx613.1, align 1, !tbaa !11
  %conv614.1 = zext i8 %417 to i32
  %cmp615.1 = icmp sgt i32 %conv614.1, %conv614.bestmetric.0
  %conv614.bestmetric.0.1 = select i1 %cmp615.1, i32 %conv614.1, i32 %conv614.bestmetric.0
  %418 = trunc i64 %indvars.iv.next1156 to i32
  %i566.1.beststate.0.1 = select i1 %cmp615.1, i32 %418, i32 %i566.1.beststate.0
  %cmp625.1 = icmp slt i32 %conv614.1, %minmetric.1
  %minmetric.1.1 = select i1 %cmp625.1, i32 %conv614.1, i32 %minmetric.1
  %indvars.iv.next1156.1 = add nsw i64 %indvars.iv1155, 2
  %arrayidx613.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156.1
  %419 = load i8, i8* %arrayidx613.2, align 1, !tbaa !11
  %conv614.2 = zext i8 %419 to i32
  %cmp615.2 = icmp sgt i32 %conv614.2, %conv614.bestmetric.0.1
  %conv614.bestmetric.0.2 = select i1 %cmp615.2, i32 %conv614.2, i32 %conv614.bestmetric.0.1
  %420 = trunc i64 %indvars.iv.next1156.1 to i32
  %i566.1.beststate.0.2 = select i1 %cmp615.2, i32 %420, i32 %i566.1.beststate.0.1
  %cmp625.2 = icmp slt i32 %conv614.2, %minmetric.1.1
  %minmetric.1.2 = select i1 %cmp625.2, i32 %conv614.2, i32 %minmetric.1.1
  %indvars.iv.next1156.2 = add nsw i64 %indvars.iv1155, 3
  %exitcond1157.2 = icmp eq i64 %indvars.iv.next1156.2, 64
  br i1 %exitcond1157.2, label %for.cond635.preheader, label %for.body611

for.cond656.preheader:                            ; preds = %for.body639.prol.loopexit.unr-lcssa, %for.body639, %for.cond635.preheader
  %.lcssa = phi i8 [ %413, %for.cond635.preheader ], [ %.lcssa1298.unr.ph, %for.body639.prol.loopexit.unr-lcssa ], [ %441, %for.body639 ]
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path0_generic1168, i8 0, i64 64, i32 16, i1 false)
  %421 = insertelement <16 x i32> undef, i32 %minmetric.1.2, i32 0
  %422 = shufflevector <16 x i32> %421, <16 x i32> undef, <16 x i32> zeroinitializer
  %423 = load <16 x i8>, <16 x i8>* %200, align 16, !tbaa !11
  %424 = zext <16 x i8> %423 to <16 x i32>
  %425 = sub nsw <16 x i32> %424, %422
  %426 = trunc <16 x i32> %425 to <16 x i8>
  store <16 x i8> %426, <16 x i8>* %200, align 16, !tbaa !11
  %427 = load <16 x i8>, <16 x i8>* %201, align 16, !tbaa !11
  %428 = zext <16 x i8> %427 to <16 x i32>
  %429 = sub nsw <16 x i32> %428, %422
  %430 = trunc <16 x i32> %429 to <16 x i8>
  store <16 x i8> %430, <16 x i8>* %201, align 16, !tbaa !11
  %431 = load <16 x i8>, <16 x i8>* %202, align 16, !tbaa !11
  %432 = zext <16 x i8> %431 to <16 x i32>
  %433 = sub nsw <16 x i32> %432, %422
  %434 = trunc <16 x i32> %433 to <16 x i8>
  store <16 x i8> %434, <16 x i8>* %202, align 16, !tbaa !11
  %435 = load <16 x i8>, <16 x i8>* %203, align 16, !tbaa !11
  %436 = zext <16 x i8> %435 to <16 x i32>
  %437 = sub nsw <16 x i32> %436, %422
  %438 = trunc <16 x i32> %437 to <16 x i8>
  store <16 x i8> %438, <16 x i8>* %203, align 16, !tbaa !11
  %cmp685 = icmp slt i32 %out_count.01049, %in_ntraceback
  br i1 %cmp685, label %if.end708, label %for.cond689.preheader

for.body639:                                      ; preds = %for.body639.prol.loopexit.unr-lcssa, %for.body639
  %439 = phi i8 [ %441, %for.body639 ], [ %.unr.ph, %for.body639.prol.loopexit.unr-lcssa ]
  %pos.01040 = phi i32 [ %rem648.1, %for.body639 ], [ %pos.01040.unr.ph, %for.body639.prol.loopexit.unr-lcssa ]
  %i566.21039 = phi i32 [ %inc650.1, %for.body639 ], [ %i566.21039.unr.ph, %for.body639.prol.loopexit.unr-lcssa ]
  %conv644 = zext i8 %439 to i64
  %shr645989 = lshr i64 %conv644, 2
  %add647 = add i32 %sub636, %pos.01040
  %rem648 = srem i32 %add647, %in_ntraceback
  %idxprom640 = sext i32 %rem648 to i64
  %arrayidx643 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640, i64 %shr645989
  %440 = load i8, i8* %arrayidx643, align 1, !tbaa !11
  %conv644.1 = zext i8 %440 to i64
  %shr645989.1 = lshr i64 %conv644.1, 2
  %add647.1 = add i32 %sub636, %rem648
  %rem648.1 = srem i32 %add647.1, %in_ntraceback
  %inc650.1 = add nsw i32 %i566.21039, 2
  %idxprom640.1 = sext i32 %rem648.1 to i64
  %arrayidx643.1 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom640.1, i64 %shr645989.1
  %441 = load i8, i8* %arrayidx643.1, align 1, !tbaa !11
  %exitcond1158.1 = icmp eq i32 %inc650.1, %sub636
  br i1 %exitcond1158.1, label %for.cond656.preheader, label %for.body639

for.cond689.preheader:                            ; preds = %for.cond656.preheader
  %sub699 = sub nsw i32 %out_count.01049, %in_ntraceback
  %mul700 = shl i32 %sub699, 3
  %442 = sext i32 %mul700 to i64
  %shr696 = lshr i8 %.lcssa, 7
  %arrayidx703 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %442
  store i8 %shr696, i8* %arrayidx703, align 8, !tbaa !11
  %shr696.1 = lshr i8 %.lcssa, 6
  %conv698.1 = and i8 %shr696.1, 1
  %443 = or i64 %442, 1
  %arrayidx703.1 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %443
  store i8 %conv698.1, i8* %arrayidx703.1, align 1, !tbaa !11
  %shr696.2 = lshr i8 %.lcssa, 5
  %conv698.2 = and i8 %shr696.2, 1
  %444 = or i64 %442, 2
  %arrayidx703.2 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %444
  store i8 %conv698.2, i8* %arrayidx703.2, align 2, !tbaa !11
  %shr696.3 = lshr i8 %.lcssa, 4
  %conv698.3 = and i8 %shr696.3, 1
  %445 = or i64 %442, 3
  %arrayidx703.3 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %445
  store i8 %conv698.3, i8* %arrayidx703.3, align 1, !tbaa !11
  %shr696.4 = lshr i8 %.lcssa, 3
  %conv698.4 = and i8 %shr696.4, 1
  %446 = or i64 %442, 4
  %arrayidx703.4 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %446
  store i8 %conv698.4, i8* %arrayidx703.4, align 4, !tbaa !11
  %shr696.5 = lshr i8 %.lcssa, 2
  %conv698.5 = and i8 %shr696.5, 1
  %447 = or i64 %442, 5
  %arrayidx703.5 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %447
  store i8 %conv698.5, i8* %arrayidx703.5, align 1, !tbaa !11
  %shr696.6 = lshr i8 %.lcssa, 1
  %conv698.6 = and i8 %shr696.6, 1
  %448 = or i64 %442, 6
  %arrayidx703.6 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %448
  store i8 %conv698.6, i8* %arrayidx703.6, align 2, !tbaa !11
  %conv698.7 = and i8 %.lcssa, 1
  %449 = or i64 %442, 7
  %arrayidx703.7 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %449
  store i8 %conv698.7, i8* %arrayidx703.7, align 1, !tbaa !11
  %450 = add i32 %n_decoded.01048, 8
  br label %if.end708

if.end708:                                        ; preds = %for.cond689.preheader, %for.cond656.preheader
  %n_decoded.2 = phi i32 [ %n_decoded.01048, %for.cond656.preheader ], [ %450, %for.cond689.preheader ]
  %inc709 = add nsw i32 %out_count.01049, 1
  br label %if.end711

if.end711:                                        ; preds = %if.end708, %for.cond.cleanup45, %while.body
  %l_store_pos.1 = phi i32 [ %rem569, %if.end708 ], [ %l_store_pos.01047, %for.cond.cleanup45 ], [ %l_store_pos.01047, %while.body ]
  %n_decoded.3 = phi i32 [ %n_decoded.2, %if.end708 ], [ %n_decoded.01048, %for.cond.cleanup45 ], [ %n_decoded.01048, %while.body ]
  %out_count.1 = phi i32 [ %inc709, %if.end708 ], [ %out_count.01049, %for.cond.cleanup45 ], [ %out_count.01049, %while.body ]
  %inc712 = add nuw nsw i32 %in_count.01050, 1
  %cmp20 = icmp slt i32 %n_decoded.3, %in_n_data_bits
  br i1 %cmp20, label %while.body, label %while.end

while.end:                                        ; preds = %if.end711, %entry
  call void @llvm.lifetime.end(i64 1536, i8* nonnull %0) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_mmresult1183) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_path1_generic1182) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_path0_generic1168) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_metric1_generic1181) #3
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_metric0_generic1180) #3
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: norecurse nounwind uwtable
define void @viterbi_chunks_init_generic() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %0 = shl i32 %indvars.iv.tr, 1
  %and = and i32 %0, 108
  %idxprom35 = zext i32 %and to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35
  %1 = load i8, i8* %arrayidx3, align 4, !tbaa !11
  %tobool = icmp ne i8 %1, 0
  %conv5 = zext i1 %tobool to i8
  %arrayidx7 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv
  store i8 %conv5, i8* %arrayidx7, align 2, !tbaa !11
  %and14 = and i32 %0, 76
  %idxprom1536 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536
  %2 = load i8, i8* %arrayidx16, align 4, !tbaa !11
  %tobool19 = icmp ne i8 %2, 0
  %conv21 = zext i1 %tobool19 to i8
  %arrayidx23 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv
  store i8 %conv21, i8* %arrayidx23, align 2, !tbaa !11
  %indvars.iv.next = or i64 %indvars.iv, 1
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %3 = shl i32 %indvars.iv.tr.1, 1
  %and.1 = and i32 %3, 108
  %idxprom35.1 = zext i32 %and.1 to i64
  %arrayidx3.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.1
  %4 = load i8, i8* %arrayidx3.1, align 4, !tbaa !11
  %tobool.1 = icmp ne i8 %4, 0
  %conv5.1 = zext i1 %tobool.1 to i8
  %arrayidx7.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next
  store i8 %conv5.1, i8* %arrayidx7.1, align 1, !tbaa !11
  %and14.1 = and i32 %3, 78
  %idxprom1536.1 = zext i32 %and14.1 to i64
  %arrayidx16.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.1
  %5 = load i8, i8* %arrayidx16.1, align 2, !tbaa !11
  %tobool19.1 = icmp ne i8 %5, 0
  %conv21.1 = zext i1 %tobool19.1 to i8
  %arrayidx23.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next
  store i8 %conv21.1, i8* %arrayidx23.1, align 1, !tbaa !11
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @reset() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %0 = shl i32 %indvars.iv.tr.i, 1
  %and.i = and i32 %0, 108
  %idxprom35.i = zext i32 %and.i to i64
  %arrayidx3.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i
  %1 = load i8, i8* %arrayidx3.i, align 4, !tbaa !11
  %tobool.i = icmp ne i8 %1, 0
  %conv5.i = zext i1 %tobool.i to i8
  %arrayidx7.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i
  store i8 %conv5.i, i8* %arrayidx7.i, align 2, !tbaa !11
  %and14.i = and i32 %0, 76
  %idxprom1536.i = zext i32 %and14.i to i64
  %arrayidx16.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i
  %2 = load i8, i8* %arrayidx16.i, align 4, !tbaa !11
  %tobool19.i = icmp ne i8 %2, 0
  %conv21.i = zext i1 %tobool19.i to i8
  %arrayidx23.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i
  store i8 %conv21.i, i8* %arrayidx23.i, align 2, !tbaa !11
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %3 = shl i32 %indvars.iv.tr.i.1, 1
  %and.i.1 = and i32 %3, 108
  %idxprom35.i.1 = zext i32 %and.i.1 to i64
  %arrayidx3.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.1
  %4 = load i8, i8* %arrayidx3.i.1, align 4, !tbaa !11
  %tobool.i.1 = icmp ne i8 %4, 0
  %conv5.i.1 = zext i1 %tobool.i.1 to i8
  %arrayidx7.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i
  store i8 %conv5.i.1, i8* %arrayidx7.i.1, align 1, !tbaa !11
  %and14.i.1 = and i32 %3, 78
  %idxprom1536.i.1 = zext i32 %and14.i.1 to i64
  %arrayidx16.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.1
  %5 = load i8, i8* %arrayidx16.i.1, align 2, !tbaa !11
  %tobool19.i.1 = icmp ne i8 %5, 0
  %conv21.i.1 = zext i1 %tobool19.i.1 to i8
  %arrayidx23.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i
  store i8 %conv21.i.1, i8* %arrayidx23.i.1, align 1, !tbaa !11
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
  br i1 %exitcond.i.1, label %viterbi_chunks_init_generic.exit, label %for.body.i

viterbi_chunks_init_generic.exit:                 ; preds = %for.body.i
  %6 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %6, i64 0, i32 0
  %7 = load i32, i32* %encoding, align 4, !tbaa !12
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %viterbi_chunks_init_generic.exit
  %9 = sext i32 %7 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %9
  %switch.load = load i32, i32* %switch.gep, align 4
  %switch.gep5 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %9
  %10 = bitcast i8** %switch.gep5 to i64*
  %switch.load69 = load i64, i64* %10, align 8
  %switch.gep7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %9
  %switch.load8 = load i32, i32* %switch.gep7, align 4
  store i32 %switch.load, i32* @d_ntraceback, align 4, !tbaa !8
  store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
  store i32 %switch.load8, i32* @d_k, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %viterbi_chunks_init_generic.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #2 {
entry:
  store %struct.ofdm_param* %ofdm, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  store %struct.frame_param* %frame, %struct.frame_param** @d_frame, align 8, !tbaa !1
  store i32 0, i32* %n_dec_char, align 4, !tbaa !8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i.1, %for.body.i.i ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %0 = shl i32 %indvars.iv.tr.i.i, 1
  %and.i.i = and i32 %0, 108
  %idxprom35.i.i = zext i32 %and.i.i to i64
  %arrayidx3.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i
  %1 = load i8, i8* %arrayidx3.i.i, align 4, !tbaa !11
  %tobool.i.i = icmp ne i8 %1, 0
  %conv5.i.i = zext i1 %tobool.i.i to i8
  %arrayidx7.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i.i
  store i8 %conv5.i.i, i8* %arrayidx7.i.i, align 2, !tbaa !11
  %and14.i.i = and i32 %0, 76
  %idxprom1536.i.i = zext i32 %and14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i
  %2 = load i8, i8* %arrayidx16.i.i, align 4, !tbaa !11
  %tobool19.i.i = icmp ne i8 %2, 0
  %conv21.i.i = zext i1 %tobool19.i.i to i8
  %arrayidx23.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i.i
  store i8 %conv21.i.i, i8* %arrayidx23.i.i, align 2, !tbaa !11
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %3 = shl i32 %indvars.iv.tr.i.i.1, 1
  %and.i.i.1 = and i32 %3, 108
  %idxprom35.i.i.1 = zext i32 %and.i.i.1 to i64
  %arrayidx3.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i.1
  %4 = load i8, i8* %arrayidx3.i.i.1, align 4, !tbaa !11
  %tobool.i.i.1 = icmp ne i8 %4, 0
  %conv5.i.i.1 = zext i1 %tobool.i.i.1 to i8
  %arrayidx7.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv5.i.i.1, i8* %arrayidx7.i.i.1, align 1, !tbaa !11
  %and14.i.i.1 = and i32 %3, 78
  %idxprom1536.i.i.1 = zext i32 %and14.i.i.1 to i64
  %arrayidx16.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i.1
  %5 = load i8, i8* %arrayidx16.i.i.1, align 2, !tbaa !11
  %tobool19.i.i.1 = icmp ne i8 %5, 0
  %conv21.i.i.1 = zext i1 %tobool19.i.i.1 to i8
  %arrayidx23.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv21.i.i.1, i8* %arrayidx23.i.i.1, align 1, !tbaa !11
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2
  %exitcond.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 32
  br i1 %exitcond.i.i.1, label %viterbi_chunks_init_generic.exit.i, label %for.body.i.i

viterbi_chunks_init_generic.exit.i:               ; preds = %for.body.i.i
  %encoding.i = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %6 = load i32, i32* %encoding.i, align 4, !tbaa !12
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %switch.lookup.i, label %reset.exit

switch.lookup.i:                                  ; preds = %viterbi_chunks_init_generic.exit.i
  %8 = sext i32 %6 to i64
  %switch.gep.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %8
  %switch.load.i = load i32, i32* %switch.gep.i, align 4
  %switch.gep5.i = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %8
  %9 = bitcast i8** %switch.gep5.i to i64*
  %switch.load69.i = load i64, i64* %9, align 8
  %switch.gep7.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %8
  %switch.load8.i = load i32, i32* %switch.gep7.i, align 4
  store i32 %switch.load.i, i32* @d_ntraceback, align 4, !tbaa !8
  store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
  store i32 %switch.load8.i, i32* @d_k, align 4, !tbaa !8
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %viterbi_chunks_init_generic.exit.i
  %call = tail call i8* @depuncture(i8* %in)
  %10 = load i32, i32* @d_ntraceback, align 4, !tbaa !8
  %n_data_bits = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %11 = load i32, i32* %n_data_bits, align 4, !tbaa !13
  %call1 = tail call i8* @do_decoding(i32 undef, i32 %10, i8* undef, i32 %11, i8* %call)
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 12}
!6 = !{!"", !3, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!7 = !{!"int", !3, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !7, i64 4}
!10 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!11 = !{!3, !3, i64 0}
!12 = !{!6, !3, i64 0}
!13 = !{!10, !7, i64 16}
