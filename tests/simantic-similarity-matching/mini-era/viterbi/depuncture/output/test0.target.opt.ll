; ModuleID = './output//test0.target.extract.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }

@d_ofdm = external hidden unnamed_addr global %struct.ofdm_param*, align 8
@d_ntraceback = external local_unnamed_addr global i32, align 4
@d_frame = external hidden unnamed_addr global %struct.frame_param*, align 8
@d_depunctured = external hidden global [24780 x i8], align 16
@d_depuncture_pattern = external hidden unnamed_addr global i8*, align 8
@d_k = external local_unnamed_addr global i32, align 4

; Function Attrs: norecurse nounwind uwtable
define i8* @depuncture(i8* readonly %in) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8
  %n_cbps1 = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 3
  %1 = load i32, i32* %n_cbps1, align 4
  %2 = load i32, i32* @d_ntraceback, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load %struct.frame_param*, %struct.frame_param** @d_frame, align 8
  %n_sym268 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %3, i64 0, i32 1
  %4 = load i32, i32* %n_sym268, align 4
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
  %.pre = load i32, i32* @d_k, align 4
  %mul858 = shl nsw i32 %.pre, 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc, %while.cond.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc ]
  %count.165 = phi i32 [ %count.070, %while.cond.preheader.lr.ph ], [ %18, %for.inc ]
  %rem59 = srem i32 %count.165, %mul858
  %idxprom60 = sext i32 %rem59 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %5, i64 %idxprom60
  %9 = load i8, i8* %arrayidx61, align 1
  %cmp962 = icmp eq i8 %9, 0
  br i1 %cmp962, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = sext i32 %count.165 to i64
  br label %while.body

for.cond.cleanup6.loopexit:                       ; preds = %for.inc
  %.pre80 = load i32, i32* %n_sym268, align 4
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
  store i8 2, i8* %arrayidx12, align 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %rem = srem i32 %13, %mul858
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %cmp9 = icmp eq i8 %14, 0
  br i1 %cmp9, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %count.2.lcssa = phi i32 [ %count.165, %while.cond.preheader ], [ %13, %while.body ]
  %15 = add nsw i64 %indvars.iv74, %8
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %15
  %16 = load i8, i8* %arrayidx15, align 1
  %17 = sext i32 %count.2.lcssa to i64
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19, %while.end
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %while.cond19 ], [ %17, %while.end ]
  %.sink = phi i8 [ 2, %while.cond19 ], [ %16, %while.end ]
  %arrayidx29 = getelementptr inbounds [24780 x i8], [24780 x i8]* @d_depunctured, i64 0, i64 %indvars.iv72
  store i8 %.sink, i8* %arrayidx29, align 1
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %18 = trunc i64 %indvars.iv.next73 to i32
  %rem21 = srem i32 %18, %mul858
  %idxprom22 = sext i32 %rem21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %5, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1
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

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
