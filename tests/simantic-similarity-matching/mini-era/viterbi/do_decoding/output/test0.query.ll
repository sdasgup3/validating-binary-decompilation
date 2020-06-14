; ModuleID = 'output/test0.query.extract.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.branchtab27_u = type { [32 x i8] }

@d_branchtab27_generic = external local_unnamed_addr global [2 x %union.branchtab27_u], align 16
@d_decoded = external hidden global [18585 x i8], align 16

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: nounwind uwtable
define i8* @do_decoding(i32 %in_cbps, i32 %in_ntraceback, i8* nocapture readnone %in_depuncture_pattern, i32 %in_n_data_bits, i8* nocapture readonly %depd_data) local_unnamed_addr #1 {
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
  %shift0 = alloca <16 x i8>, align 16
  %shift1 = alloca <16 x i8>, align 16
  %tmp0 = alloca <16 x i8>, align 16
  %tmpcast1294 = bitcast <16 x i8>* %tmp0 to [16 x i8]*
  %tmp1 = alloca <16 x i8>, align 16
  %tmpcast1296 = bitcast <16 x i8>* %tmp1 to [16 x i8]*
  %sym0v = alloca <16 x i8>, align 16
  %sym1v = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_metric0_generic1180) #2
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_metric1_generic1181) #2
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_path0_generic1168) #2
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_path1_generic1182) #2
  call void @llvm.lifetime.start(i64 64, i8* nonnull %l_mmresult1183) #2
  %0 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1536, i8* nonnull %0) #2
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric0_generic1180, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path0_generic1168, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_metric1_generic1181, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_path1_generic1182, i8 0, i64 64, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull %l_mmresult1183, i8 0, i64 64, i32 16, i1 false)
  %1 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 16
  %2 = bitcast i8* %1 to <16 x i8>*
  %3 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 32
  %4 = bitcast i8* %3 to <16 x i8>*
  %5 = getelementptr inbounds [24 x [64 x i8]], [24 x [64 x i8]]* %l_ppresult, i64 0, i64 0, i64 48
  %6 = bitcast i8* %5 to <16 x i8>*
  %sym0v1058 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym0v, i64 0, i64 0
  %sym1v1059 = getelementptr inbounds <16 x i8>, <16 x i8>* %sym1v, i64 0, i64 0
  br i1 undef, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tmpcast1307 = bitcast <16 x i8>* %survivor1 to [16 x i8]*
  %7 = getelementptr inbounds <16 x i8>, <16 x i8>* %survivor1, i64 0, i64 0
  %8 = getelementptr inbounds <16 x i8>, <16 x i8>* %metsv, i64 0, i64 0
  %9 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift0, i64 0, i64 0
  %10 = getelementptr inbounds <16 x i8>, <16 x i8>* %shift1, i64 0, i64 0
  %11 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp0, i64 0, i64 0
  %12 = getelementptr inbounds <16 x i8>, <16 x i8>* %tmp1, i64 0, i64 0
  %arrayidx417.5 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 5
  %arrayidx417.6 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 6
  %arrayidx417.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1294, i64 0, i64 7
  %arrayidx437.7 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1307, i64 0, i64 15
  %arrayidx473.11 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 11
  %arrayidx473.12 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 12
  %arrayidx473.13 = getelementptr inbounds [16 x i8], [16 x i8]* %tmpcast1296, i64 0, i64 13
  %scevgep.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 16
  %scevgep1148.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 16
  %scevgep.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 32
  %scevgep1148.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 32
  %scevgep.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 48
  %scevgep1148.3 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 48
  br label %while.body

while.body:                                       ; preds = %if.end711, %while.body.lr.ph
  %in_count.01050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc712, %if.end711 ]
  br i1 undef, label %if.then, label %if.end711

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start(i64 16, i8* nonnull %7) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %8) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %9) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %10) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %11) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %12) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %sym0v1058) #2
  call void @llvm.lifetime.start(i64 16, i8* nonnull %sym1v1059) #2
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.body540.preheader.for.cond48.preheader_crit_edge, %if.then
  %s.01028 = phi i32 [ 0, %if.then ], [ %inc553, %for.body540.preheader.for.cond48.preheader_crit_edge ]
  br label %for.body51

for.cond.cleanup45:                               ; preds = %for.body540.preheader
  call void @llvm.lifetime.end(i64 16, i8* nonnull %sym1v1059) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %sym0v1058) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %12) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %11) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %10) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %9) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %8) #2
  call void @llvm.lifetime.end(i64 16, i8* nonnull %7) #2
  br i1 undef, label %if.then561, label %if.end711

for.body51:                                       ; preds = %for.body357.preheader, %for.cond48.preheader
  %indvars.iv1125 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next1126, %for.body357.preheader ]
  br i1 undef, label %for.cond58.preheader, label %if.else

for.cond58.preheader:                             ; preds = %for.body51
  %13 = shl i64 %indvars.iv1125, 4
  br label %for.cond161.preheader.sink.split

for.cond161.preheader.sink.split:                 ; preds = %if.else, %for.cond58.preheader
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %vector.body1241.preheader, %for.cond161.preheader.sink.split
  br label %for.body294

if.else:                                          ; preds = %for.body51
  %14 = shl i64 %indvars.iv1125, 4
  br i1 undef, label %for.cond161.preheader.sink.split, label %vector.body1241.preheader

vector.body1241.preheader:                        ; preds = %if.else
  br label %for.cond161.preheader

for.body294:                                      ; preds = %for.body294, %for.cond161.preheader
  br i1 undef, label %for.body294, label %for.body357.preheader

for.body357.preheader:                            ; preds = %for.body294
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  br i1 undef, label %for.body540.preheader, label %for.body51

for.body540.preheader:                            ; preds = %for.body357.preheader
  %inc553 = add nuw nsw i32 %s.01028, 1
  br i1 undef, label %for.cond.cleanup45, label %for.body540.preheader.for.cond48.preheader_crit_edge

for.body540.preheader.for.cond48.preheader_crit_edge: ; preds = %for.body540.preheader
  br label %for.cond48.preheader

if.then561:                                       ; preds = %for.cond.cleanup45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %l_mmresult1183, i8* nonnull %l_metric0_generic1180, i64 16, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep.3, i8* %scevgep1148.3, i64 16, i32 16, i1 false)
  %15 = load i8, i8* %l_mmresult1183, align 16, !tbaa !1
  %conv604 = zext i8 %15 to i32
  br label %for.body611

for.cond635.preheader:                            ; preds = %for.body611
  br i1 undef, label %for.body639.preheader, label %for.cond656.preheader

for.body639.preheader:                            ; preds = %for.cond635.preheader
  br i1 undef, label %for.body639.prol.loopexit.unr-lcssa, label %for.body639.prol.preheader

for.body639.prol.preheader:                       ; preds = %for.body639.preheader
  br label %for.body639.prol.loopexit.unr-lcssa

for.body639.prol.loopexit.unr-lcssa:              ; preds = %for.body639.prol.preheader, %for.body639.preheader
  br i1 undef, label %for.cond656.preheader, label %for.body639

for.body611:                                      ; preds = %for.body611, %if.then561
  %indvars.iv1155 = phi i64 [ 1, %if.then561 ], [ %indvars.iv.next1156.2, %for.body611 ]
  %minmetric.01033 = phi i32 [ %conv604, %if.then561 ], [ %minmetric.1.2, %for.body611 ]
  %bestmetric.01032 = phi i32 [ %conv604, %if.then561 ], [ %conv614.bestmetric.0.2, %for.body611 ]
  %arrayidx613 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv1155
  %16 = load i8, i8* %arrayidx613, align 1, !tbaa !1
  %conv614 = zext i8 %16 to i32
  %cmp615 = icmp sgt i32 %conv614, %bestmetric.01032
  %conv614.bestmetric.0 = select i1 %cmp615, i32 %conv614, i32 %bestmetric.01032
  %cmp625 = icmp slt i32 %conv614, %minmetric.01033
  %minmetric.1 = select i1 %cmp625, i32 %conv614, i32 %minmetric.01033
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1
  %arrayidx613.1 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156
  %17 = load i8, i8* %arrayidx613.1, align 1, !tbaa !1
  %conv614.1 = zext i8 %17 to i32
  %cmp615.1 = icmp sgt i32 %conv614.1, %conv614.bestmetric.0
  %conv614.bestmetric.0.1 = select i1 %cmp615.1, i32 %conv614.1, i32 %conv614.bestmetric.0
  %cmp625.1 = icmp slt i32 %conv614.1, %minmetric.1
  %minmetric.1.1 = select i1 %cmp625.1, i32 %conv614.1, i32 %minmetric.1
  %indvars.iv.next1156.1 = add nsw i64 %indvars.iv1155, 2
  %arrayidx613.2 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %indvars.iv.next1156.1
  %18 = load i8, i8* %arrayidx613.2, align 1, !tbaa !1
  %conv614.2 = zext i8 %18 to i32
  %cmp615.2 = icmp sgt i32 %conv614.2, %conv614.bestmetric.0.1
  %conv614.bestmetric.0.2 = select i1 %cmp615.2, i32 %conv614.2, i32 %conv614.bestmetric.0.1
  %cmp625.2 = icmp slt i32 %conv614.2, %minmetric.1.1
  %minmetric.1.2 = select i1 %cmp625.2, i32 %conv614.2, i32 %minmetric.1.1
  %indvars.iv.next1156.2 = add nsw i64 %indvars.iv1155, 3
  br i1 undef, label %for.cond635.preheader, label %for.body611

for.cond656.preheader:                            ; preds = %for.body639, %for.body639.prol.loopexit.unr-lcssa, %for.cond635.preheader
  br i1 undef, label %if.end708, label %for.cond689.preheader

for.body639:                                      ; preds = %for.body639, %for.body639.prol.loopexit.unr-lcssa
  br i1 undef, label %for.cond656.preheader, label %for.body639

for.cond689.preheader:                            ; preds = %for.cond656.preheader
  br label %if.end708

if.end708:                                        ; preds = %for.cond689.preheader, %for.cond656.preheader
  br label %if.end711

if.end711:                                        ; preds = %if.end708, %for.cond.cleanup45, %while.body
  %inc712 = add nuw nsw i32 %in_count.01050, 1
  br i1 undef, label %while.body, label %while.end

while.end:                                        ; preds = %if.end711, %entry
  call void @llvm.lifetime.end(i64 1536, i8* nonnull %0) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_mmresult1183) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_path1_generic1182) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_path0_generic1168) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_metric1_generic1181) #2
  call void @llvm.lifetime.end(i64 64, i8* nonnull %l_metric0_generic1180) #2
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
