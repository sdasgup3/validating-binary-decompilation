define  i8* (%struct.ofdm_param.0*, %struct.frame_param.1*, i8*, i32*) @decode (%struct.ofdm_param.0* %ofdm, %struct.frame_param.1* %frame, i8* %in, i32* %n_dec_char ) {
%entry:
;   store %struct.ofdm_param.0* %ofdm, %struct.ofdm_param.0** @d_ofdm, align 8, !tbaa !1
;   store %struct.frame_param.1* %frame, %struct.frame_param.1** @d_frame, align 8, !tbaa !1
;   store i32 0, i32* %n_dec_char, align 4, !tbaa !5
;   br label %for.body.i.i
%for.body.i.i:
;   %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i.1, %for.body.i.i ]
;   %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
;   %0 = shl i32 %indvars.iv.tr.i.i, 1
;   %and.i.i = and i32 %0, 108
;   %idxprom35.i.i = zext i32 %and.i.i to i64
;   %arrayidx3.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i
;   %1 = load i8, i8* %arrayidx3.i.i, align 4, !tbaa !7
;   %tobool.i.i = icmp ne i8 %1, 0
;   %conv5.i.i = zext i1 %tobool.i.i to i8
;   %arrayidx7.i.i = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.i.i
;   store i8 %conv5.i.i, i8* %arrayidx7.i.i, align 2, !tbaa !7
;   %and14.i.i = and i32 %0, 76
;   %idxprom1536.i.i = zext i32 %and14.i.i to i64
;   %arrayidx16.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i
;   %2 = load i8, i8* %arrayidx16.i.i, align 4, !tbaa !7
;   %tobool19.i.i = icmp ne i8 %2, 0
;   %conv21.i.i = zext i1 %tobool19.i.i to i8
;   %arrayidx23.i.i = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.i.i
;   store i8 %conv21.i.i, i8* %arrayidx23.i.i, align 2, !tbaa !7
;   %indvars.iv.next.i.i = or i64 %indvars.iv.i.i, 1
;   %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
;   %3 = shl i32 %indvars.iv.tr.i.i.1, 1
;   %and.i.i.1 = and i32 %3, 108
;   %idxprom35.i.i.1 = zext i32 %and.i.i.1 to i64
;   %arrayidx3.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom35.i.i.1
;   %4 = load i8, i8* %arrayidx3.i.i.1, align 4, !tbaa !7
;   %tobool.i.i.1 = icmp ne i8 %4, 0
;   %conv5.i.i.1 = zext i1 %tobool.i.i.1 to i8
;   %arrayidx7.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 0, i32 0, i64 %indvars.iv.next.i.i
;   store i8 %conv5.i.i.1, i8* %arrayidx7.i.i.1, align 1, !tbaa !7
;   %and14.i.i.1 = and i32 %3, 78
;   %idxprom1536.i.i.1 = zext i32 %and14.i.i.1 to i64
;   %arrayidx16.i.i.1 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom1536.i.i.1
;   %5 = load i8, i8* %arrayidx16.i.i.1, align 2, !tbaa !7
;   %tobool19.i.i.1 = icmp ne i8 %5, 0
;   %conv21.i.i.1 = zext i1 %tobool19.i.i.1 to i8
;   %arrayidx23.i.i.1 = getelementptr inbounds [2 x %union.branchtab27_u.2], [2 x %union.branchtab27_u.2]* @d_branchtab27_generic, i64 0, i64 1, i32 0, i64 %indvars.iv.next.i.i
;   store i8 %conv21.i.i.1, i8* %arrayidx23.i.i.1, align 1, !tbaa !7
;   %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2
;   %exitcond.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 32
;   br i1 %exitcond.i.i.1, label %viterbi_chunks_init_generic.exit.i, label %for.body.i.i
%viterbi_chunks_init_generic.exit.i:
;   %encoding.i = getelementptr inbounds %struct.ofdm_param.0, %struct.ofdm_param.0* %ofdm, i64 0, i32 0
;   %6 = load i32, i32* %encoding.i, align 4, !tbaa !8
;   %7 = icmp ult i32 %6, 8
;   br i1 %7, label %switch.lookup.i, label %reset.exit
%switch.lookup.i:
;   %8 = sext i32 %6 to i64
;   %switch.gep.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table, i64 0, i64 %8
;   %switch.load.i = load i32, i32* %switch.gep.i, align 4
;   %switch.gep5.i = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %8
;   %9 = bitcast i8** %switch.gep5.i to i64*
;   %switch.load69.i = load i64, i64* %9, align 8
;   %switch.gep7.i = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %8
;   %switch.load8.i = load i32, i32* %switch.gep7.i, align 4
;   store i32 %switch.load.i, i32* @d_ntraceback, align 4, !tbaa !5
;   store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8, !tbaa !1
;   store i32 %switch.load8.i, i32* @d_k, align 4, !tbaa !5
;   br label %reset.exit
%reset.exit:
;   %call = tail call i8* @depuncture(i8* %in)
  %10 = load i32, i32* @d_ntraceback, align 4, !tbaa !5
;   %n_data_bits = getelementptr inbounds %struct.frame_param.1, %struct.frame_param.1* %frame, i64 0, i32 4
;   %11 = load i32, i32* %n_data_bits, align 4, !tbaa !10
;   %call1 = tail call i8* @do_decoding(i32 undef, i32 %10, i8* undef, i32 %11, i8* %call)
;   ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}
