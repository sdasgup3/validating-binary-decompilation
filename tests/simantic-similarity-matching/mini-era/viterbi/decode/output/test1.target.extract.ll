; ModuleID = './output//test0.target.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }
%struct.frame_param = type { i32, i32, i32, i32, i32 }

@d_decoded = external hidden global [18585 x i8], align 16

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: norecurse nounwind uwtable
define i8* @decode(%struct.ofdm_param* %ofdm, %struct.frame_param* %frame, i8* readonly %in, i32* nocapture %n_dec_char) local_unnamed_addr #1 {
entry:
  %c = alloca i8, align 1
  br i1 undef, label %switch.lookup.i, label %reset.exit

switch.lookup.i:                                  ; preds = %entry
  br label %reset.exit

reset.exit:                                       ; preds = %switch.lookup.i, %entry
  br i1 undef, label %while.body, label %while.end

while.body:                                       ; preds = %if.end19, %reset.exit
  br i1 undef, label %if.then, label %if.end19

if.then:                                          ; preds = %while.body
  br i1 undef, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start(i64 1, i8* nonnull %c)
  br i1 undef, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then5
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %if.then5
  call void @llvm.lifetime.end(i64 1, i8* nonnull %c)
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then, %while.body
  br i1 undef, label %while.body, label %while.end

while.end:                                        ; preds = %if.end19, %reset.exit
  ret i8* getelementptr inbounds ([18585 x i8], [18585 x i8]* @d_decoded, i64 0, i64 0)
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
