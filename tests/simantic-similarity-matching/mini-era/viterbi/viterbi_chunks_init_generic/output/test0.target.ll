; ModuleID = './output//test0.target.opt.ll'
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
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %entry
  br i1 undef, label %for.body37.preheader, label %for.body5

for.body37.preheader:                             ; preds = %for.body5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
