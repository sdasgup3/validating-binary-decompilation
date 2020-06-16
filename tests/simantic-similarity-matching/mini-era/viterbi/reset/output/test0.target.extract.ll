; ModuleID = './output//test0.target.opt.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%union.branchtab27_u = type { [32 x i8] }

@d_ofdm = external hidden unnamed_addr global %struct.ofdm_param*, align 8
@d_ntraceback = external local_unnamed_addr global i32, align 4
@d_depuncture_pattern = external hidden unnamed_addr global i8*, align 8
@d_k = external local_unnamed_addr global i32, align 4
@d_branchtab27_generic = external local_unnamed_addr global [2 x %union.branchtab27_u], align 16
@PARTAB = external hidden unnamed_addr constant [256 x i8], align 16
@switch.table = external hidden unnamed_addr constant [8 x i32]
@switch.table.1 = external hidden unnamed_addr constant [8 x i8*]
@switch.table.2 = external hidden unnamed_addr constant [8 x i32]

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
  %1 = load i8, i8* %arrayidx3.i, align 4, !tbaa !1
  %tobool.i = icmp ne i8 %1, 0
  %conv5.i = zext i1 %tobool.i to i8
  %arrayidx7.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i
  store i8 %conv5.i, i8* %arrayidx7.i, align 2, !tbaa !1
  %and14.i = and i32 %0, 76
  %idxprom1536.i = zext i32 %and14.i to i64
  %arrayidx16.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i
  %2 = load i8, i8* %arrayidx16.i, align 4, !tbaa !1
  %tobool19.i = icmp ne i8 %2, 0
  %conv21.i = zext i1 %tobool19.i to i8
  %arrayidx23.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i
  store i8 %conv21.i, i8* %arrayidx23.i, align 2, !tbaa !1
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
  %3 = shl i32 %indvars.iv.tr.i.1, 1
  %and.i.1 = and i32 %3, 108
  %idxprom35.i.1 = zext i32 %and.i.1 to i64
  %arrayidx3.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.1
  %4 = load i8, i8* %arrayidx3.i.1, align 4, !tbaa !1
  %tobool.i.1 = icmp ne i8 %4, 0
  %conv5.i.1 = zext i1 %tobool.i.1 to i8
  %arrayidx7.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i
  store i8 %conv5.i.1, i8* %arrayidx7.i.1, align 1, !tbaa !1
  %and14.i.1 = and i32 %3, 78
  %idxprom1536.i.1 = zext i32 %and14.i.1 to i64
  %arrayidx16.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.1
  %5 = load i8, i8* %arrayidx16.i.1, align 2, !tbaa !1
  %tobool19.i.1 = icmp ne i8 %5, 0
  %conv21.i.1 = zext i1 %tobool19.i.1 to i8
  %arrayidx23.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i
  store i8 %conv21.i.1, i8* %arrayidx23.i.1, align 1, !tbaa !1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
  br i1 %exitcond.i.1, label %viterbi_chunks_init_generic.exit, label %for.body.i

viterbi_chunks_init_generic.exit:                 ; preds = %for.body.i
  %6 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !4
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %6, i64 0, i32 0
  %7 = load i32, i32* %encoding, align 4, !tbaa !6
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
  store i32 %switch.load, i32* @d_ntraceback, align 4, !tbaa !9
  store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !4
  store i32 %switch.load8, i32* @d_k, align 4, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %viterbi_chunks_init_generic.exit
  ret void
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !2, i64 0}
!6 = !{!7, !2, i64 0}
!7 = !{!"", !2, i64 0, !2, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!8 = !{!"int", !2, i64 0}
!9 = !{!8, !8, i64 0}
