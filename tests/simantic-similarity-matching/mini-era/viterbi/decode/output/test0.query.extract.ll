; ModuleID = 'output/test0.query.opt.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }
%union.branchtab27_u = type { [32 x i8] }

@d_ofdm = external hidden unnamed_addr global %struct.ofdm_param*, align 8
@d_ntraceback = external local_unnamed_addr global i32, align 4
@d_frame = external hidden unnamed_addr global %struct.frame_param*, align 8
@d_depuncture_pattern = external hidden unnamed_addr global i8*, align 8
@d_k = external local_unnamed_addr global i32, align 4
@d_branchtab27_generic = external local_unnamed_addr global [2 x %union.branchtab27_u], align 16
@d_decoded = external hidden global [18585 x i8], align 16
@PARTAB = external hidden unnamed_addr constant [256 x i8], align 16
@switch.table = external hidden unnamed_addr constant [8 x i32]
@switch.table.1 = external hidden unnamed_addr constant [8 x i8*]
@switch.table.2 = external hidden unnamed_addr constant [8 x i32]

; Function Attrs: norecurse nounwind uwtable
declare i8* @depuncture(i8* readonly) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i8* @do_decoding(i32, i32, i8* nocapture readnone, i32, i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #1 {
entry:
  store %struct.ofdm_param* %ofdm, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !1
  store %struct.frame_param* %frame, %struct.frame_param** @d_frame, align 8, !tbaa !1
  store i32 0, i32* %n_dec_char, align 4, !tbaa !5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i.1, %for.body.i.i ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %0 = shl i32 %indvars.iv.tr.i.i, 1
  %and.i.i = and i32 %0, 108
  %idxprom35.i.i = zext i32 %and.i.i to i64
  %arrayidx3.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i
  %1 = load i8, i8* %arrayidx3.i.i, align 4, !tbaa !7
  %tobool.i.i = icmp ne i8 %1, 0
  %conv5.i.i = zext i1 %tobool.i.i to i8
  %arrayidx7.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i.i
  store i8 %conv5.i.i, i8* %arrayidx7.i.i, align 2, !tbaa !7
  %and14.i.i = and i32 %0, 76
  %idxprom1536.i.i = zext i32 %and14.i.i to i64
  %arrayidx16.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i
  %2 = load i8, i8* %arrayidx16.i.i, align 4, !tbaa !7
  %tobool19.i.i = icmp ne i8 %2, 0
  %conv21.i.i = zext i1 %tobool19.i.i to i8
  %arrayidx23.i.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i.i
  store i8 %conv21.i.i, i8* %arrayidx23.i.i, align 2, !tbaa !7
  %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %3 = shl i32 %indvars.iv.tr.i.i.1, 1
  %and.i.i.1 = and i32 %3, 108
  %idxprom35.i.i.1 = zext i32 %and.i.i.1 to i64
  %arrayidx3.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i.1
  %4 = load i8, i8* %arrayidx3.i.i.1, align 4, !tbaa !7
  %tobool.i.i.1 = icmp ne i8 %4, 0
  %conv5.i.i.1 = zext i1 %tobool.i.i.1 to i8
  %arrayidx7.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv5.i.i.1, i8* %arrayidx7.i.i.1, align 1, !tbaa !7
  %and14.i.i.1 = and i32 %3, 78
  %idxprom1536.i.i.1 = zext i32 %and14.i.i.1 to i64
  %arrayidx16.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i.1
  %5 = load i8, i8* %arrayidx16.i.i.1, align 2, !tbaa !7
  %tobool19.i.i.1 = icmp ne i8 %5, 0
  %conv21.i.i.1 = zext i1 %tobool19.i.i.1 to i8
  %arrayidx23.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i.i
  store i8 %conv21.i.i.1, i8* %arrayidx23.i.i.1, align 1, !tbaa !7
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2
  %exitcond.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 32
  br i1 %exitcond.i.i.1, label %viterbi_chunks_init_generic.exit.i, label %for.body.i.i

viterbi_chunks_init_generic.exit.i:               ; preds = %for.body.i.i
  %encoding.i = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %6 = load i32, i32* %encoding.i, align 4, !tbaa !8
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
  store i32 %switch.load.i, i32* @d_ntraceback, align 4, !tbaa !5
  store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
  store i32 %switch.load8.i, i32* @d_k, align 4, !tbaa !5
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %viterbi_chunks_init_generic.exit.i
  %call = tail call i8* @depuncture(i8* %in)
  %10 = load i32, i32* @d_ntraceback, align 4, !tbaa !5
  %n_data_bits = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %11 = load i32, i32* %n_data_bits, align 4, !tbaa !10
  %call1 = tail call i8* @do_decoding(i32 undef, i32 %10, i8* undef, i32 %11, i8* %call)
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"", !3, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!10 = !{!11, !6, i64 16}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
