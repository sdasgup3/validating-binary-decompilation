; ModuleID = './output//test0.target.opt.ll'
source_filename = "viterbi_flat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdm_param = type { i32, i8, i32, i32, i32 }

@d_ofdm = external hidden unnamed_addr global %struct.ofdm_param*, align 8
@d_ntraceback = external local_unnamed_addr global i32, align 4
@d_depuncture_pattern = external hidden unnamed_addr global i8*, align 8
@d_k = external local_unnamed_addr global i32, align 4
@switch.table.82 = external hidden unnamed_addr constant [8 x i32]
@switch.table.1 = external hidden unnamed_addr constant [8 x i8*]
@switch.table.2 = external hidden unnamed_addr constant [8 x i32]

define void @reset() local_unnamed_addr {
entry:
  br i1 undef, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  ret void
}

declare void @viterbi_chunks_init_generic() local_unnamed_addr

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
