; ModuleID = './output//test.target.ll'
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
  tail call void @viterbi_chunks_init_generic()
  %0 = load %struct.ofdm_param*, %struct.ofdm_param** @d_ofdm, align 8
  %encoding = getelementptr inbounds %struct.ofdm_param, %struct.ofdm_param* %0, i64 0, i32 0
  %1 = load i32, i32* %encoding, align 4
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %3 = sext i32 %1 to i64
  %switch.gep = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.82, i64 0, i64 %3
  %switch.load = load i32, i32* %switch.gep, align 4
  %switch.gep5 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.1, i64 0, i64 %3
  %4 = bitcast i8** %switch.gep5 to i64*
  %switch.load69 = load i64, i64* %4, align 8
  %switch.gep7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.2, i64 0, i64 %3
  %switch.load8 = load i32, i32* %switch.gep7, align 4
  store i32 %switch.load, i32* @d_ntraceback, align 4
  store i64 %switch.load69, i64* bitcast (i8** @d_depuncture_pattern to i64*), align 8
  store i32 %switch.load8, i32* @d_k, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  ret void
}

declare void @viterbi_chunks_init_generic() local_unnamed_addr

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
