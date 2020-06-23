; ModuleID = './output//test.target.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }

@d_ofdm = external hidden unnamed_addr global %struct.ofdm_param*, align 8
@d_ntraceback = external local_unnamed_addr global i32, align 4
@d_frame = external hidden unnamed_addr global %struct.frame_param*, align 8
@d_depuncture_pattern = external hidden unnamed_addr global i8*, align 8
@d_k = external local_unnamed_addr global i32, align 4
@d_decoded = external hidden global [18585 x i8], align 16
@switch.table.82 = external hidden unnamed_addr constant [8 x i32]
@switch.table.1 = external hidden unnamed_addr constant [8 x i8*]
@switch.table.2 = external hidden unnamed_addr constant [8 x i32]
@d_metric0_generic = external global [64 x i8], align 16
@d_metric1_generic = external global [64 x i8], align 16
@d_path0_generic = external global [64 x i8], align 16
@d_path1_generic = external global [64 x i8], align 16

; Function Attrs: norecurse nounwind uwtable
declare i8* @depuncture(i8* readonly) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @viterbi_chunks_init_generic() local_unnamed_addr

declare zeroext i8 @viterbi_get_output_generic(i8* nocapture, i8* nocapture, i32, i8* nocapture) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
declare void @viterbi_butterfly2_generic(i8* nocapture readonly, i8* nocapture, i8* nocapture, i8* nocapture, i8* nocapture) local_unnamed_addr #0

; Function Attrs: norecurse nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #0 {
entry:
  %c = alloca i8, align 1
  store %struct.ofdm_param* %ofdm, %struct.ofdm_param** @d_ofdm, align 8
  store %struct.frame_param* %frame, %struct.frame_param** @d_frame, align 8
  tail call void @viterbi_chunks_init_generic()
  %encoding.i = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %ofdm, i64 0, i32 0
  %0 = load i32, i32* %encoding.i, align 4
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
  store i32 %switch.load.i, i32* @d_ntraceback, align 4
  store i64 %switch.load69.i, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8
  store i32 %switch.load8.i, i32* @d_k, align 4
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %entry
  %call = tail call i8* @depuncture(i8* %in)
  %n_data_bits41 = getelementptr inbounds %struct.frame_param, %struct.frame_param* %frame, i64 0, i32 4
  %4 = load i32, i32* %n_data_bits41, align 4
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
  call void @llvm.lifetime.start(i64 1, i8* nonnull %c)
  %5 = load i32, i32* @d_ntraceback, align 4
  %call6 = call zeroext i8 @viterbi_get_output_generic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_metric0_generic, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_path0_generic, i64 0, i64 0), i32 %5, i8* nonnull %c)
  %6 = load i32, i32* @d_ntraceback, align 4
  %cmp7 = icmp slt i32 %out_count.044, %6
  br i1 %cmp7, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then5
  %7 = load i8, i8* %c, align 1
  %sub12 = sub nsw i32 %out_count.044, %6
  %mul = shl i32 %sub12, 3
  %8 = sext i32 %mul to i64
  %shr = lshr i8 %7, 7
  %arrayidx14 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %8
  store i8 %shr, i8* %arrayidx14, align 8
  %shr.1 = lshr i8 %7, 6
  %conv11.1 = and i8 %shr.1, 1
  %9 = or i64 %8, 1
  %arrayidx14.1 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %9
  store i8 %conv11.1, i8* %arrayidx14.1, align 1
  %shr.2 = lshr i8 %7, 5
  %conv11.2 = and i8 %shr.2, 1
  %10 = or i64 %8, 2
  %arrayidx14.2 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %10
  store i8 %conv11.2, i8* %arrayidx14.2, align 2
  %shr.3 = lshr i8 %7, 4
  %conv11.3 = and i8 %shr.3, 1
  %11 = or i64 %8, 3
  %arrayidx14.3 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %11
  store i8 %conv11.3, i8* %arrayidx14.3, align 1
  %shr.4 = lshr i8 %7, 3
  %conv11.4 = and i8 %shr.4, 1
  %12 = or i64 %8, 4
  %arrayidx14.4 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %12
  store i8 %conv11.4, i8* %arrayidx14.4, align 4
  %shr.5 = lshr i8 %7, 2
  %conv11.5 = and i8 %shr.5, 1
  %13 = or i64 %8, 5
  %arrayidx14.5 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %13
  store i8 %conv11.5, i8* %arrayidx14.5, align 1
  %shr.6 = lshr i8 %7, 1
  %conv11.6 = and i8 %shr.6, 1
  %14 = or i64 %8, 6
  %arrayidx14.6 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %14
  store i8 %conv11.6, i8* %arrayidx14.6, align 2
  %conv11.7 = and i8 %7, 1
  %15 = or i64 %8, 7
  %arrayidx14.7 = getelementptr inbounds [18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 %15
  store i8 %conv11.7, i8* %arrayidx14.7, align 1
  %16 = add i32 %n_decoded.045, 8
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %if.then5
  %n_decoded.2 = phi i32 [ %n_decoded.045, %if.then5 ], [ %16, %for.cond.preheader ]
  %inc17 = add nsw i32 %out_count.044, 1
  call void @llvm.lifetime.end(i64 1, i8* nonnull %c)
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then, %while.body
  %out_count.1 = phi i32 [ %inc17, %if.end ], [ %out_count.044, %if.then ], [ %out_count.044, %while.body ]
  %n_decoded.3 = phi i32 [ %n_decoded.2, %if.end ], [ %n_decoded.045, %if.then ], [ %n_decoded.045, %while.body ]
  %inc20 = add nuw nsw i32 %in_count.043, 1
  %17 = load i32, i32* %n_data_bits41, align 4
  %cmp = icmp slt i32 %n_decoded.3, %17
  br i1 %cmp, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end19
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %reset.exit
  %n_decoded.0.lcssa = phi i32 [ 0, %reset.exit ], [ %n_decoded.3, %while.end.loopexit ]
  store i32 %n_decoded.0.lcssa, i32* %n_dec_char, align 4
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
