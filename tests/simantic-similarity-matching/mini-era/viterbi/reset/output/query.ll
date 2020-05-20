define  void () @reset ( ) {
%entry:
;   br label %for.body.i
%for.body.i:
;   %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
;   %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
;   %0 = shl i32 %indvars.iv.tr.i, 1
;   %and.i = and i32 %0, 108
;   %idxprom35.i = zext i32 %and.i to i64
;   %arrayidx3.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i
;   %1 = load i8, i8* %arrayidx3.i, align 4, !tbaa !1
;   %tobool.i = icmp ne i8 %1, 0
;   %conv5.i = zext i1 %tobool.i to i8
;   %arrayidx7.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i
;   store i8 %conv5.i, i8* %arrayidx7.i, align 2, !tbaa !1
;   %and14.i = and i32 %0, 76
;   %idxprom1536.i = zext i32 %and14.i to i64
;   %arrayidx16.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i
;   %2 = load i8, i8* %arrayidx16.i, align 4, !tbaa !1
;   %tobool19.i = icmp ne i8 %2, 0
;   %conv21.i = zext i1 %tobool19.i to i8
;   %arrayidx23.i = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i
;   store i8 %conv21.i, i8* %arrayidx23.i, align 2, !tbaa !1
;   %indvars.iv.next.i = or i64 %indvars.iv.i, 1
;   %indvars.iv.tr.i.1 = trunc i64 %indvars.iv.next.i to i32
;   %3 = shl i32 %indvars.iv.tr.i.1, 1
;   %and.i.1 = and i32 %3, 108
;   %idxprom35.i.1 = zext i32 %and.i.1 to i64
;   %arrayidx3.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.1
;   %4 = load i8, i8* %arrayidx3.i.1, align 4, !tbaa !1
;   %tobool.i.1 = icmp ne i8 %4, 0
;   %conv5.i.1 = zext i1 %tobool.i.1 to i8
;   %arrayidx7.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i
;   store i8 %conv5.i.1, i8* %arrayidx7.i.1, align 1, !tbaa !1
;   %and14.i.1 = and i32 %3, 78
;   %idxprom1536.i.1 = zext i32 %and14.i.1 to i64
;   %arrayidx16.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.1
;   %5 = load i8, i8* %arrayidx16.i.1, align 2, !tbaa !1
;   %tobool19.i.1 = icmp ne i8 %5, 0
;   %conv21.i.1 = zext i1 %tobool19.i.1 to i8
;   %arrayidx23.i.1 = getelementptr inbounds [2 x %union.branchtab27_u], [2 x %union.branchtab27_u]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i
;   store i8 %conv21.i.1, i8* %arrayidx23.i.1, align 1, !tbaa !1
;   %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
;   %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, 32
;   br i1 %exitcond.i.1, label %viterbi_chunks_init_generic.exit, label %for.body.i
%viterbi_chunks_init_generic.exit:
;   %6 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8, !tbaa !4
;   %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %6, i64 0, i32 0
;   %7 = load i32, i32* %encoding, align 4, !tbaa !6
;   %8 = icmp ult i32 %7, 8
;   br i1 %8, label %switch.lookup, label %sw.epilog
%switch.lookup:
;   %9 = sext i32 %7 to i64
;   %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %9
;   %switch.load = load i32, i32* %switch.gep, align 4
;   %switch.gep5 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %9
;   %10 = bitcast i8** %switch.gep5 to i64*
;   %switch.load69 = load i64, i64* %10, align 8
;   %switch.gep7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %9
;   %switch.load8 = load i32, i32* %switch.gep7, align 4
;   store i32 %switch.load, i32* @d_ntraceback, align 4, !tbaa !9
;   store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !4
;   store i32 %switch.load8, i32* @d_k, align 4, !tbaa !9
;   br label %sw.epilog
%sw.epilog:
;   ret void
}
