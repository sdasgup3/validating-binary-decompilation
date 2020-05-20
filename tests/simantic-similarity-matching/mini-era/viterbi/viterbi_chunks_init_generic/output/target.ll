define  void () @viterbi_chunks_init_generic ( ) {
%entry:
;   br label %for.body
%for.body:
;   %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
;   %indvars.iv.tr = trunc i64 %indvars.iv to i32
;   %0 = shl i32 %indvars.iv.tr, 1
;   %and = and i32 %0, 108
;   %idxprom35 = zext i32 %and to i64
;   %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35
;   %1 = load i8, i8* %arrayidx3, align 4, !tbaa !1
;   %tobool = icmp ne i8 %1, 0
;   %conv5 = zext i1 %tobool to i8
;   %arrayidx7 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv
;   store i8 %conv5, i8* %arrayidx7, align 2, !tbaa !1
;   %and14 = and i32 %0, 76
;   %idxprom1536 = zext i32 %and14 to i64
;   %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536
;   %2 = load i8, i8* %arrayidx16, align 4, !tbaa !1
;   %tobool19 = icmp ne i8 %2, 0
;   %conv21 = zext i1 %tobool19 to i8
;   %arrayidx23 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv
;   store i8 %conv21, i8* %arrayidx23, align 2, !tbaa !1
;   %indvars.iv.next = or i64 %indvars.iv, 1
;   %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
;   %3 = shl i32 %indvars.iv.tr.1, 1
;   %and.1 = and i32 %3, 108
;   %idxprom35.1 = zext i32 %and.1 to i64
;   %arrayidx3.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.1
;   %4 = load i8, i8* %arrayidx3.1, align 4, !tbaa !1
;   %tobool.1 = icmp ne i8 %4, 0
;   %conv5.1 = zext i1 %tobool.1 to i8
;   %arrayidx7.1 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next
;   store i8 %conv5.1, i8* %arrayidx7.1, align 1, !tbaa !1
;   %and14.1 = and i32 %3, 78
;   %idxprom1536.1 = zext i32 %and14.1 to i64
;   %arrayidx16.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.1
;   %5 = load i8, i8* %arrayidx16.1, align 2, !tbaa !1
;   %tobool19.1 = icmp ne i8 %5, 0
;   %conv21.1 = zext i1 %tobool19.1 to i8
;   %arrayidx23.1 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next
;   store i8 %conv21.1, i8* %arrayidx23.1, align 1, !tbaa !1
;   %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
;   %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 32
;   br i1 %exitcond.1, label %for.end, label %for.body
%for.end:
;   ret void
}
