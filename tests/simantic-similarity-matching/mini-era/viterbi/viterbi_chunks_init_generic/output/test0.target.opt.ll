; ModuleID = './output//test0.target.extract.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.branchtab27_u = type { [32 x i8] }

@d_branchtab27_generic = external local_unnamed_addr global [2 x %union.branchtab27_u], align 16
@PARTAB = external hidden unnamed_addr constant [256 x i8], align 16
@d_mmresult = external local_unnamed_addr global [64 x i8], align 16
@d_ppresult = external local_unnamed_addr global [24 x [64 x i8]], align 16
@d_metric0_generic = external local_unnamed_addr global [64 x i8], align 16
@d_path0_generic = external local_unnamed_addr global [64 x i8], align 16

define void @viterbi_chunks_init_generic() local_unnamed_addr {
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
  %1 = load i8, i8* %arrayidx10, align 4
  %tobool = icmp ne i8 %1, 0
  %conv12 = zext i1 %tobool to i8
  %arrayidx14 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv81
  store i8 %conv12, i8* %arrayidx14, align 2
  %and21 = and i32 %0, 76
  %idxprom2276 = zext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom2276
  %2 = load i8, i8* %arrayidx23, align 4
  %tobool26 = icmp ne i8 %2, 0
  %conv28 = zext i1 %tobool26 to i8
  %arrayidx30 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv81
  store i8 %conv28, i8* %arrayidx30, align 2
  %indvars.iv.next82 = or i64 %indvars.iv81, 1
  %indvars.iv81.tr.1 = trunc i64 %indvars.iv.next82 to i32
  %3 = shl i32 %indvars.iv81.tr.1, 1
  %and.1 = and i32 %3, 108
  %idxprom975.1 = zext i32 %and.1 to i64
  %arrayidx10.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom975.1
  %4 = load i8, i8* %arrayidx10.1, align 4
  %tobool.1 = icmp ne i8 %4, 0
  %conv12.1 = zext i1 %tobool.1 to i8
  %arrayidx14.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next82
  store i8 %conv12.1, i8* %arrayidx14.1, align 1
  %and21.1 = and i32 %3, 78
  %idxprom2276.1 = zext i32 %and21.1 to i64
  %arrayidx23.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom2276.1
  %5 = load i8, i8* %arrayidx23.1, align 2
  %tobool26.1 = icmp ne i8 %5, 0
  %conv28.1 = zext i1 %tobool26.1 to i8
  %arrayidx30.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next82
  store i8 %conv28.1, i8* %arrayidx30.1, align 1
  %indvars.iv.next82.1 = add nsw i64 %indvars.iv81, 2
  %exitcond84.1 = icmp eq i64 %indvars.iv.next82.1, 32
  br i1 %exitcond84.1, label %for.body37.preheader, label %for.body5

for.body37.preheader:                             ; preds = %for.body5
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_mmresult, i64 0, i64 0), i8 0, i64 64, i32 16, i1 false)
  %6 = bitcast <16 x i8>* bitcast ([24 x [64 x i8]]* @d_ppresult to <16 x i8>*) to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1536, i32 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
