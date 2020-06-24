; ModuleID = 'vitebi_hook_impl.c'
source_filename = "vitebi_hook_impl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vitdodec_access = type { %struct.esp_access, i32, i32, i32, i32, i32 }
%struct.esp_access = type { %struct.contig_khandle_struct*, i8, i8, i8, [4 x [64 x i8]], i32, i32, i32, i32, i32, i32 }
%struct.contig_khandle_struct = type { i8 }
%struct.contig_handle_struct = type { i8 }
%struct.esp_accelerator_thread_info = type { i8, i8*, i32, %union.esp_accelerator_descriptor, i32, %struct.contig_handle_struct**, i64 }
%union.esp_accelerator_descriptor = type { %struct.synth_access }
%struct.synth_access = type { %struct.esp_access, %struct.synth_cfg }
%struct.synth_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cbps = constant i32 48, align 4
@ntraceback = constant i32 5, align 4
@data_bits = constant i32 288, align 4
@.str = private unnamed_addr constant [11 x i8] c"vitdodec.0\00", align 1
@cfg_000 = global <{ { i8, i8*, i32, { %struct.vitdodec_access, [24 x i8] }, i32, %struct.contig_handle_struct**, i64 } }> <{ { i8, i8*, i32, { %struct.vitdodec_access, [24 x i8] }, i32, %struct.contig_handle_struct**, i64 } { i8 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 0, { %struct.vitdodec_access, [24 x i8] } { %struct.vitdodec_access { %struct.esp_access zeroinitializer, i32 48, i32 5, i32 288, i32 0, i32 0 }, [24 x i8] undef }, i32 0, %struct.contig_handle_struct** null, i64 0 } }>, align 16
@next = internal global i64 42, align 8
@size = internal global i32 0, align 4
@out_size = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A====== %s ======\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  .cbps = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  .ntraceback = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  .data_bits = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0A  ** START **\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\0A  ** DONE **\0A\00", align 1
@out_offset = internal global i32 0, align 4
@in_words_adj = internal global i32 0, align 4
@out_words_adj = internal global i32 0, align 4
@in_len = internal global i32 0, align 4
@out_len = internal global i32 0, align 4
@in_size = internal global i32 0, align 4
@init_buffer.depunct_ptn = private unnamed_addr constant [6 x i8] c"\01\01\00\00\00\00", align 1
@init_buffer.polys = private unnamed_addr constant [2 x i32] [i32 109, i32 79], align 4
@PARTAB = internal constant [256 x i8] c"\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00\00\01\01\00\01\00\00\01\00\01\01\00\01\00\00\01\01\00\00\01\00\01\01\00", align 16
@.str.7 = private unnamed_addr constant [35 x i8] c"ERROR : imi = %u and should be 32\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ERROR : imi = %u and should be 64\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c" memory in   = \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\0A      brtb1    \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\0A      depnc    \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\0A      depdta   \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Computing Gold output\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @do_decoding(i32 %in_n_data_bits, i32 %in_cbps, i32 %in_ntraceback, i8* %inMemory, i8* %l_decoded) #0 {
entry:
  %in_n_data_bits.addr = alloca i32, align 4
  %in_cbps.addr = alloca i32, align 4
  %in_ntraceback.addr = alloca i32, align 4
  %inMemory.addr = alloca i8*, align 8
  %l_decoded.addr = alloca i8*, align 8
  %in_count = alloca i32, align 4
  %out_count = alloca i32, align 4
  %n_decoded = alloca i32, align 4
  %d_brtab27 = alloca [2 x i8*], align 16
  %in_depuncture_pattern = alloca i8*, align 8
  %depd_data = alloca i8*, align 8
  %l_metric0_generic = alloca [64 x i8], align 16
  %l_metric1_generic = alloca [64 x i8], align 16
  %l_path0_generic = alloca [64 x i8], align 16
  %l_path1_generic = alloca [64 x i8], align 16
  %l_mmresult = alloca [64 x i8], align 16
  %l_ppresult = alloca [11 x [64 x i8]], align 16
  %l_store_pos = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %viterbi_butterfly_calls = alloca i32, align 4
  %mm0 = alloca i8*, align 8
  %mm1 = alloca i8*, align 8
  %pp0 = alloca i8*, align 8
  %pp1 = alloca i8*, align 8
  %symbols = alloca i8*, align 8
  %metric0 = alloca i8*, align 8
  %metric1 = alloca i8*, align 8
  %path0 = alloca i8*, align 8
  %path1 = alloca i8*, align 8
  %m0 = alloca [16 x i8], align 16
  %m1 = alloca [16 x i8], align 16
  %m2 = alloca [16 x i8], align 16
  %m3 = alloca [16 x i8], align 16
  %decision0 = alloca [16 x i8], align 16
  %decision1 = alloca [16 x i8], align 16
  %survivor0 = alloca [16 x i8], align 16
  %survivor1 = alloca [16 x i8], align 16
  %metsv = alloca [16 x i8], align 16
  %metsvm = alloca [16 x i8], align 16
  %shift0 = alloca [16 x i8], align 16
  %shift1 = alloca [16 x i8], align 16
  %tmp0 = alloca [16 x i8], align 16
  %tmp1 = alloca [16 x i8], align 16
  %sym0v = alloca [16 x i8], align 16
  %sym1v = alloca [16 x i8], align 16
  %simd_epi16 = alloca i16, align 2
  %first_symbol = alloca i32, align 4
  %second_symbol = alloca i32, align 4
  %j30 = alloca i32, align 4
  %s = alloca i32, align 4
  %i48 = alloca i32, align 4
  %j57 = alloca i32, align 4
  %j88 = alloca i32, align 4
  %j117 = alloca i32, align 4
  %j157 = alloca i32, align 4
  %j215 = alloca i32, align 4
  %j284 = alloca i32, align 4
  %j346 = alloca i32, align 4
  %j361 = alloca i32, align 4
  %k = alloca i32, align 4
  %j385 = alloca i32, align 4
  %j412 = alloca i32, align 4
  %k413 = alloca i32, align 4
  %j439 = alloca i32, align 4
  %j466 = alloca i32, align 4
  %k467 = alloca i32, align 4
  %j491 = alloca i32, align 4
  %k492 = alloca i32, align 4
  %j522 = alloca i32, align 4
  %c = alloca i8, align 1
  %mm0548 = alloca i8*, align 8
  %pp0550 = alloca i8*, align 8
  %ntraceback = alloca i32, align 4
  %outbuf = alloca i8*, align 8
  %i552 = alloca i32, align 4
  %bestmetric = alloca i32, align 4
  %minmetric = alloca i32, align 4
  %beststate = alloca i32, align 4
  %pos = alloca i32, align 4
  %j553 = alloca i32, align 4
  %i674 = alloca i32, align 4
  store i32 %in_n_data_bits, i32* %in_n_data_bits.addr, align 4
  store i32 %in_cbps, i32* %in_cbps.addr, align 4
  store i32 %in_ntraceback, i32* %in_ntraceback.addr, align 4
  store i8* %inMemory, i8** %inMemory.addr, align 8
  store i8* %l_decoded, i8** %l_decoded.addr, align 8
  store i32 0, i32* %in_count, align 4
  store i32 0, i32* %out_count, align 4
  store i32 0, i32* %n_decoded, align 4
  %arrayinit.begin = getelementptr inbounds [2 x i8*], [2 x i8*]* %d_brtab27, i64 0, i64 0
  %0 = load i8*, i8** %inMemory.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8* %arrayidx, i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  %1 = load i8*, i8** %inMemory.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %1, i64 32
  store i8* %arrayidx1, i8** %arrayinit.element, align 8
  %2 = load i8*, i8** %inMemory.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 64
  store i8* %arrayidx2, i8** %in_depuncture_pattern, align 8
  %3 = load i8*, i8** %inMemory.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 72
  store i8* %arrayidx3, i8** %depd_data, align 8
  store i32 0, i32* %l_store_pos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx4, align 1
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i64 0, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i64 0, i64 %idxprom7
  store i8 0, i8* %arrayidx8, align 1
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i64 0, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom11
  store i8 0, i8* %arrayidx12, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %10, 11
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [11 x [64 x i8]], [11 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom16
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx17, i64 0, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %viterbi_butterfly_calls, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end696, %for.end22
  %15 = load i32, i32* %n_decoded, align 4
  %16 = load i32, i32* %in_n_data_bits.addr, align 4
  %cmp23 = icmp slt i32 %15, %16
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %in_count, align 4
  %rem = srem i32 %17, 4
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then, label %if.end696

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i32 0, i32 0
  store i8* %arraydecay, i8** %mm0, align 8
  %arraydecay25 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric1_generic, i32 0, i32 0
  store i8* %arraydecay25, i8** %mm1, align 8
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i32 0, i32 0
  store i8* %arraydecay26, i8** %pp0, align 8
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path1_generic, i32 0, i32 0
  store i8* %arraydecay27, i8** %pp1, align 8
  %18 = load i8*, i8** %depd_data, align 8
  %19 = load i32, i32* %in_count, align 4
  %and = and i32 %19, -4
  %idxprom28 = zext i32 %and to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 %idxprom28
  store i8* %arrayidx29, i8** %symbols, align 8
  %20 = load i8*, i8** %mm0, align 8
  store i8* %20, i8** %metric0, align 8
  %21 = load i8*, i8** %pp0, align 8
  store i8* %21, i8** %path0, align 8
  %22 = load i8*, i8** %mm1, align 8
  store i8* %22, i8** %metric1, align 8
  %23 = load i8*, i8** %pp1, align 8
  store i8* %23, i8** %path1, align 8
  store i32 0, i32* %first_symbol, align 4
  %24 = load i32, i32* %first_symbol, align 4
  %add = add i32 %24, 1
  store i32 %add, i32* %second_symbol, align 4
  store i32 0, i32* %j30, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %if.then
  %25 = load i32, i32* %j30, align 4
  %cmp32 = icmp slt i32 %25, 16
  br i1 %cmp32, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond31
  %26 = load i8*, i8** %symbols, align 8
  %27 = load i32, i32* %first_symbol, align 4
  %idxprom34 = zext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 %idxprom34
  %28 = load i8, i8* %arrayidx35, align 1
  %29 = load i32, i32* %j30, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %idxprom36
  store i8 %28, i8* %arrayidx37, align 1
  %30 = load i8*, i8** %symbols, align 8
  %31 = load i32, i32* %second_symbol, align 4
  %idxprom38 = zext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  %32 = load i8, i8* %arrayidx39, align 1
  %33 = load i32, i32* %j30, align 4
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %idxprom40
  store i8 %32, i8* %arrayidx41, align 1
  br label %for.inc42

for.inc42:                                        ; preds = %for.body33
  %34 = load i32, i32* %j30, align 4
  %inc43 = add nsw i32 %34, 1
  store i32 %inc43, i32* %j30, align 4
  br label %for.cond31

for.end44:                                        ; preds = %for.cond31
  store i32 0, i32* %s, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc538, %for.end44
  %35 = load i32, i32* %s, align 4
  %cmp46 = icmp slt i32 %35, 2
  br i1 %cmp46, label %for.body47, label %for.end540

for.body47:                                       ; preds = %for.cond45
  store i32 0, i32* %i48, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc518, %for.body47
  %36 = load i32, i32* %i48, align 4
  %cmp50 = icmp slt i32 %36, 2
  br i1 %cmp50, label %for.body51, label %for.end520

for.body51:                                       ; preds = %for.cond49
  %37 = load i8*, i8** %symbols, align 8
  %38 = load i32, i32* %first_symbol, align 4
  %idxprom52 = zext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %37, i64 %idxprom52
  %39 = load i8, i8* %arrayidx53, align 1
  %conv = zext i8 %39 to i32
  %cmp54 = icmp eq i32 %conv, 2
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.body51
  store i32 0, i32* %j57, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc79, %if.then56
  %40 = load i32, i32* %j57, align 4
  %cmp59 = icmp slt i32 %40, 16
  br i1 %cmp59, label %for.body61, label %for.end81

for.body61:                                       ; preds = %for.cond58
  %arrayidx62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %d_brtab27, i64 0, i64 1
  %41 = load i8*, i8** %arrayidx62, align 8
  %42 = load i32, i32* %i48, align 4
  %mul = mul nsw i32 %42, 16
  %43 = load i32, i32* %j57, align 4
  %add63 = add nsw i32 %mul, %43
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %41, i64 %idxprom64
  %44 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %44 to i32
  %45 = load i32, i32* %j57, align 4
  %idxprom67 = sext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %idxprom67
  %46 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %46 to i32
  %xor = xor i32 %conv66, %conv69
  %conv70 = trunc i32 %xor to i8
  %47 = load i32, i32* %j57, align 4
  %idxprom71 = sext i32 %47 to i64
  %arrayidx72 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom71
  store i8 %conv70, i8* %arrayidx72, align 1
  %48 = load i32, i32* %j57, align 4
  %idxprom73 = sext i32 %48 to i64
  %arrayidx74 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom73
  %49 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %49 to i32
  %sub = sub nsw i32 1, %conv75
  %conv76 = trunc i32 %sub to i8
  %50 = load i32, i32* %j57, align 4
  %idxprom77 = sext i32 %50 to i64
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %idxprom77
  store i8 %conv76, i8* %arrayidx78, align 1
  br label %for.inc79

for.inc79:                                        ; preds = %for.body61
  %51 = load i32, i32* %j57, align 4
  %inc80 = add nsw i32 %51, 1
  store i32 %inc80, i32* %j57, align 4
  br label %for.cond58

for.end81:                                        ; preds = %for.cond58
  br label %if.end156

if.else:                                          ; preds = %for.body51
  %52 = load i8*, i8** %symbols, align 8
  %53 = load i32, i32* %second_symbol, align 4
  %idxprom82 = zext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds i8, i8* %52, i64 %idxprom82
  %54 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %54 to i32
  %cmp85 = icmp eq i32 %conv84, 2
  br i1 %cmp85, label %if.then87, label %if.else116

if.then87:                                        ; preds = %if.else
  store i32 0, i32* %j88, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc113, %if.then87
  %55 = load i32, i32* %j88, align 4
  %cmp90 = icmp slt i32 %55, 16
  br i1 %cmp90, label %for.body92, label %for.end115

for.body92:                                       ; preds = %for.cond89
  %arrayidx93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %d_brtab27, i64 0, i64 0
  %56 = load i8*, i8** %arrayidx93, align 16
  %57 = load i32, i32* %i48, align 4
  %mul94 = mul nsw i32 %57, 16
  %58 = load i32, i32* %j88, align 4
  %add95 = add nsw i32 %mul94, %58
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i8, i8* %56, i64 %idxprom96
  %59 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %59 to i32
  %60 = load i32, i32* %j88, align 4
  %idxprom99 = sext i32 %60 to i64
  %arrayidx100 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %idxprom99
  %61 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %61 to i32
  %xor102 = xor i32 %conv98, %conv101
  %conv103 = trunc i32 %xor102 to i8
  %62 = load i32, i32* %j88, align 4
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom104
  store i8 %conv103, i8* %arrayidx105, align 1
  %63 = load i32, i32* %j88, align 4
  %idxprom106 = sext i32 %63 to i64
  %arrayidx107 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom106
  %64 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %64 to i32
  %sub109 = sub nsw i32 1, %conv108
  %conv110 = trunc i32 %sub109 to i8
  %65 = load i32, i32* %j88, align 4
  %idxprom111 = sext i32 %65 to i64
  %arrayidx112 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %idxprom111
  store i8 %conv110, i8* %arrayidx112, align 1
  br label %for.inc113

for.inc113:                                       ; preds = %for.body92
  %66 = load i32, i32* %j88, align 4
  %inc114 = add nsw i32 %66, 1
  store i32 %inc114, i32* %j88, align 4
  br label %for.cond89

for.end115:                                       ; preds = %for.cond89
  br label %if.end

if.else116:                                       ; preds = %if.else
  store i32 0, i32* %j117, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc153, %if.else116
  %67 = load i32, i32* %j117, align 4
  %cmp119 = icmp slt i32 %67, 16
  br i1 %cmp119, label %for.body121, label %for.end155

for.body121:                                      ; preds = %for.cond118
  %arrayidx122 = getelementptr inbounds [2 x i8*], [2 x i8*]* %d_brtab27, i64 0, i64 0
  %68 = load i8*, i8** %arrayidx122, align 16
  %69 = load i32, i32* %i48, align 4
  %mul123 = mul nsw i32 %69, 16
  %70 = load i32, i32* %j117, align 4
  %add124 = add nsw i32 %mul123, %70
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds i8, i8* %68, i64 %idxprom125
  %71 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %71 to i32
  %72 = load i32, i32* %j117, align 4
  %idxprom128 = sext i32 %72 to i64
  %arrayidx129 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %idxprom128
  %73 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %73 to i32
  %xor131 = xor i32 %conv127, %conv130
  %arrayidx132 = getelementptr inbounds [2 x i8*], [2 x i8*]* %d_brtab27, i64 0, i64 1
  %74 = load i8*, i8** %arrayidx132, align 8
  %75 = load i32, i32* %i48, align 4
  %mul133 = mul nsw i32 %75, 16
  %76 = load i32, i32* %j117, align 4
  %add134 = add nsw i32 %mul133, %76
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i8, i8* %74, i64 %idxprom135
  %77 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %77 to i32
  %78 = load i32, i32* %j117, align 4
  %idxprom138 = sext i32 %78 to i64
  %arrayidx139 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %idxprom138
  %79 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %79 to i32
  %xor141 = xor i32 %conv137, %conv140
  %add142 = add nsw i32 %xor131, %xor141
  %conv143 = trunc i32 %add142 to i8
  %80 = load i32, i32* %j117, align 4
  %idxprom144 = sext i32 %80 to i64
  %arrayidx145 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom144
  store i8 %conv143, i8* %arrayidx145, align 1
  %81 = load i32, i32* %j117, align 4
  %idxprom146 = sext i32 %81 to i64
  %arrayidx147 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom146
  %82 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %82 to i32
  %sub149 = sub nsw i32 2, %conv148
  %conv150 = trunc i32 %sub149 to i8
  %83 = load i32, i32* %j117, align 4
  %idxprom151 = sext i32 %83 to i64
  %arrayidx152 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %idxprom151
  store i8 %conv150, i8* %arrayidx152, align 1
  br label %for.inc153

for.inc153:                                       ; preds = %for.body121
  %84 = load i32, i32* %j117, align 4
  %inc154 = add nsw i32 %84, 1
  store i32 %inc154, i32* %j117, align 4
  br label %for.cond118

for.end155:                                       ; preds = %for.cond118
  br label %if.end

if.end:                                           ; preds = %for.end155, %for.end115
  br label %if.end156

if.end156:                                        ; preds = %if.end, %for.end81
  store i32 0, i32* %j157, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc212, %if.end156
  %85 = load i32, i32* %j157, align 4
  %cmp159 = icmp slt i32 %85, 16
  br i1 %cmp159, label %for.body161, label %for.end214

for.body161:                                      ; preds = %for.cond158
  %86 = load i8*, i8** %metric0, align 8
  %87 = load i32, i32* %i48, align 4
  %mul162 = mul nsw i32 %87, 16
  %88 = load i32, i32* %j157, align 4
  %add163 = add nsw i32 %mul162, %88
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds i8, i8* %86, i64 %idxprom164
  %89 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %89 to i32
  %90 = load i32, i32* %j157, align 4
  %idxprom167 = sext i32 %90 to i64
  %arrayidx168 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %idxprom167
  %91 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %91 to i32
  %add170 = add nsw i32 %conv166, %conv169
  %conv171 = trunc i32 %add170 to i8
  %92 = load i32, i32* %j157, align 4
  %idxprom172 = sext i32 %92 to i64
  %arrayidx173 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 %idxprom172
  store i8 %conv171, i8* %arrayidx173, align 1
  %93 = load i8*, i8** %metric0, align 8
  %94 = load i32, i32* %i48, align 4
  %add174 = add nsw i32 %94, 2
  %mul175 = mul nsw i32 %add174, 16
  %95 = load i32, i32* %j157, align 4
  %add176 = add nsw i32 %mul175, %95
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds i8, i8* %93, i64 %idxprom177
  %96 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %96 to i32
  %97 = load i32, i32* %j157, align 4
  %idxprom180 = sext i32 %97 to i64
  %arrayidx181 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom180
  %98 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %98 to i32
  %add183 = add nsw i32 %conv179, %conv182
  %conv184 = trunc i32 %add183 to i8
  %99 = load i32, i32* %j157, align 4
  %idxprom185 = sext i32 %99 to i64
  %arrayidx186 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 %idxprom185
  store i8 %conv184, i8* %arrayidx186, align 1
  %100 = load i8*, i8** %metric0, align 8
  %101 = load i32, i32* %i48, align 4
  %mul187 = mul nsw i32 %101, 16
  %102 = load i32, i32* %j157, align 4
  %add188 = add nsw i32 %mul187, %102
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds i8, i8* %100, i64 %idxprom189
  %103 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %103 to i32
  %104 = load i32, i32* %j157, align 4
  %idxprom192 = sext i32 %104 to i64
  %arrayidx193 = getelementptr inbounds [16 x i8], [16 x i8]* %metsvm, i64 0, i64 %idxprom192
  %105 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %105 to i32
  %add195 = add nsw i32 %conv191, %conv194
  %conv196 = trunc i32 %add195 to i8
  %106 = load i32, i32* %j157, align 4
  %idxprom197 = sext i32 %106 to i64
  %arrayidx198 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 %idxprom197
  store i8 %conv196, i8* %arrayidx198, align 1
  %107 = load i8*, i8** %metric0, align 8
  %108 = load i32, i32* %i48, align 4
  %add199 = add nsw i32 %108, 2
  %mul200 = mul nsw i32 %add199, 16
  %109 = load i32, i32* %j157, align 4
  %add201 = add nsw i32 %mul200, %109
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds i8, i8* %107, i64 %idxprom202
  %110 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %110 to i32
  %111 = load i32, i32* %j157, align 4
  %idxprom205 = sext i32 %111 to i64
  %arrayidx206 = getelementptr inbounds [16 x i8], [16 x i8]* %metsv, i64 0, i64 %idxprom205
  %112 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %112 to i32
  %add208 = add nsw i32 %conv204, %conv207
  %conv209 = trunc i32 %add208 to i8
  %113 = load i32, i32* %j157, align 4
  %idxprom210 = sext i32 %113 to i64
  %arrayidx211 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 %idxprom210
  store i8 %conv209, i8* %arrayidx211, align 1
  br label %for.inc212

for.inc212:                                       ; preds = %for.body161
  %114 = load i32, i32* %j157, align 4
  %inc213 = add nsw i32 %114, 1
  store i32 %inc213, i32* %j157, align 4
  br label %for.cond158

for.end214:                                       ; preds = %for.cond158
  store i32 0, i32* %j215, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc281, %for.end214
  %115 = load i32, i32* %j215, align 4
  %cmp217 = icmp slt i32 %115, 16
  br i1 %cmp217, label %for.body219, label %for.end283

for.body219:                                      ; preds = %for.cond216
  %116 = load i32, i32* %j215, align 4
  %idxprom220 = sext i32 %116 to i64
  %arrayidx221 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 %idxprom220
  %117 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %117 to i32
  %118 = load i32, i32* %j215, align 4
  %idxprom223 = sext i32 %118 to i64
  %arrayidx224 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 %idxprom223
  %119 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %119 to i32
  %sub226 = sub nsw i32 %conv222, %conv225
  %cmp227 = icmp sgt i32 %sub226, 0
  %cond = select i1 %cmp227, i32 255, i32 0
  %conv229 = trunc i32 %cond to i8
  %120 = load i32, i32* %j215, align 4
  %idxprom230 = sext i32 %120 to i64
  %arrayidx231 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %idxprom230
  store i8 %conv229, i8* %arrayidx231, align 1
  %121 = load i32, i32* %j215, align 4
  %idxprom232 = sext i32 %121 to i64
  %arrayidx233 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 %idxprom232
  %122 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %122 to i32
  %123 = load i32, i32* %j215, align 4
  %idxprom235 = sext i32 %123 to i64
  %arrayidx236 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 %idxprom235
  %124 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %124 to i32
  %sub238 = sub nsw i32 %conv234, %conv237
  %cmp239 = icmp sgt i32 %sub238, 0
  %cond241 = select i1 %cmp239, i32 255, i32 0
  %conv242 = trunc i32 %cond241 to i8
  %125 = load i32, i32* %j215, align 4
  %idxprom243 = sext i32 %125 to i64
  %arrayidx244 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %idxprom243
  store i8 %conv242, i8* %arrayidx244, align 1
  %126 = load i32, i32* %j215, align 4
  %idxprom245 = sext i32 %126 to i64
  %arrayidx246 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %idxprom245
  %127 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %127 to i32
  %128 = load i32, i32* %j215, align 4
  %idxprom248 = sext i32 %128 to i64
  %arrayidx249 = getelementptr inbounds [16 x i8], [16 x i8]* %m0, i64 0, i64 %idxprom248
  %129 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %129 to i32
  %and251 = and i32 %conv247, %conv250
  %130 = load i32, i32* %j215, align 4
  %idxprom252 = sext i32 %130 to i64
  %arrayidx253 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %idxprom252
  %131 = load i8, i8* %arrayidx253, align 1
  %conv254 = zext i8 %131 to i32
  %neg = xor i32 %conv254, -1
  %132 = load i32, i32* %j215, align 4
  %idxprom255 = sext i32 %132 to i64
  %arrayidx256 = getelementptr inbounds [16 x i8], [16 x i8]* %m1, i64 0, i64 %idxprom255
  %133 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %133 to i32
  %and258 = and i32 %neg, %conv257
  %or = or i32 %and251, %and258
  %conv259 = trunc i32 %or to i8
  %134 = load i32, i32* %j215, align 4
  %idxprom260 = sext i32 %134 to i64
  %arrayidx261 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %idxprom260
  store i8 %conv259, i8* %arrayidx261, align 1
  %135 = load i32, i32* %j215, align 4
  %idxprom262 = sext i32 %135 to i64
  %arrayidx263 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %idxprom262
  %136 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %136 to i32
  %137 = load i32, i32* %j215, align 4
  %idxprom265 = sext i32 %137 to i64
  %arrayidx266 = getelementptr inbounds [16 x i8], [16 x i8]* %m2, i64 0, i64 %idxprom265
  %138 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %138 to i32
  %and268 = and i32 %conv264, %conv267
  %139 = load i32, i32* %j215, align 4
  %idxprom269 = sext i32 %139 to i64
  %arrayidx270 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %idxprom269
  %140 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %140 to i32
  %neg272 = xor i32 %conv271, -1
  %141 = load i32, i32* %j215, align 4
  %idxprom273 = sext i32 %141 to i64
  %arrayidx274 = getelementptr inbounds [16 x i8], [16 x i8]* %m3, i64 0, i64 %idxprom273
  %142 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %142 to i32
  %and276 = and i32 %neg272, %conv275
  %or277 = or i32 %and268, %and276
  %conv278 = trunc i32 %or277 to i8
  %143 = load i32, i32* %j215, align 4
  %idxprom279 = sext i32 %143 to i64
  %arrayidx280 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %idxprom279
  store i8 %conv278, i8* %arrayidx280, align 1
  br label %for.inc281

for.inc281:                                       ; preds = %for.body219
  %144 = load i32, i32* %j215, align 4
  %inc282 = add nsw i32 %144, 1
  store i32 %inc282, i32* %j215, align 4
  br label %for.cond216

for.end283:                                       ; preds = %for.cond216
  store i32 0, i32* %j284, align 4
  br label %for.cond285

for.cond285:                                      ; preds = %for.inc343, %for.end283
  %145 = load i32, i32* %j284, align 4
  %cmp286 = icmp slt i32 %145, 16
  br i1 %cmp286, label %for.body288, label %for.end345

for.body288:                                      ; preds = %for.cond285
  %146 = load i8*, i8** %path0, align 8
  %147 = load i32, i32* %i48, align 4
  %mul289 = mul nsw i32 %147, 16
  %148 = load i32, i32* %j284, align 4
  %add290 = add nsw i32 %mul289, %148
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds i8, i8* %146, i64 %idxprom291
  %149 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %149 to i16
  store i16 %conv293, i16* %simd_epi16, align 2
  %150 = load i8*, i8** %path0, align 8
  %151 = load i32, i32* %i48, align 4
  %mul294 = mul nsw i32 %151, 16
  %152 = load i32, i32* %j284, align 4
  %add295 = add nsw i32 %152, 1
  %add296 = add nsw i32 %mul294, %add295
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds i8, i8* %150, i64 %idxprom297
  %153 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %153 to i32
  %shl = shl i32 %conv299, 8
  %154 = load i16, i16* %simd_epi16, align 2
  %conv300 = zext i16 %154 to i32
  %or301 = or i32 %conv300, %shl
  %conv302 = trunc i32 %or301 to i16
  store i16 %conv302, i16* %simd_epi16, align 2
  %155 = load i16, i16* %simd_epi16, align 2
  %conv303 = zext i16 %155 to i32
  %shl304 = shl i32 %conv303, 1
  %conv305 = trunc i32 %shl304 to i16
  store i16 %conv305, i16* %simd_epi16, align 2
  %156 = load i16, i16* %simd_epi16, align 2
  %conv306 = trunc i16 %156 to i8
  %157 = load i32, i32* %j284, align 4
  %idxprom307 = sext i32 %157 to i64
  %arrayidx308 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %idxprom307
  store i8 %conv306, i8* %arrayidx308, align 1
  %158 = load i16, i16* %simd_epi16, align 2
  %conv309 = zext i16 %158 to i32
  %shr = ashr i32 %conv309, 8
  %conv310 = trunc i32 %shr to i8
  %159 = load i32, i32* %j284, align 4
  %add311 = add nsw i32 %159, 1
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %idxprom312
  store i8 %conv310, i8* %arrayidx313, align 1
  %160 = load i8*, i8** %path0, align 8
  %161 = load i32, i32* %i48, align 4
  %add314 = add nsw i32 %161, 2
  %mul315 = mul nsw i32 %add314, 16
  %162 = load i32, i32* %j284, align 4
  %add316 = add nsw i32 %mul315, %162
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds i8, i8* %160, i64 %idxprom317
  %163 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %163 to i16
  store i16 %conv319, i16* %simd_epi16, align 2
  %164 = load i8*, i8** %path0, align 8
  %165 = load i32, i32* %i48, align 4
  %add320 = add nsw i32 %165, 2
  %mul321 = mul nsw i32 %add320, 16
  %166 = load i32, i32* %j284, align 4
  %add322 = add nsw i32 %166, 1
  %add323 = add nsw i32 %mul321, %add322
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds i8, i8* %164, i64 %idxprom324
  %167 = load i8, i8* %arrayidx325, align 1
  %conv326 = zext i8 %167 to i32
  %shl327 = shl i32 %conv326, 8
  %168 = load i16, i16* %simd_epi16, align 2
  %conv328 = zext i16 %168 to i32
  %or329 = or i32 %conv328, %shl327
  %conv330 = trunc i32 %or329 to i16
  store i16 %conv330, i16* %simd_epi16, align 2
  %169 = load i16, i16* %simd_epi16, align 2
  %conv331 = zext i16 %169 to i32
  %shl332 = shl i32 %conv331, 1
  %conv333 = trunc i32 %shl332 to i16
  store i16 %conv333, i16* %simd_epi16, align 2
  %170 = load i16, i16* %simd_epi16, align 2
  %conv334 = trunc i16 %170 to i8
  %171 = load i32, i32* %j284, align 4
  %idxprom335 = sext i32 %171 to i64
  %arrayidx336 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom335
  store i8 %conv334, i8* %arrayidx336, align 1
  %172 = load i16, i16* %simd_epi16, align 2
  %conv337 = zext i16 %172 to i32
  %shr338 = ashr i32 %conv337, 8
  %conv339 = trunc i32 %shr338 to i8
  %173 = load i32, i32* %j284, align 4
  %add340 = add nsw i32 %173, 1
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom341
  store i8 %conv339, i8* %arrayidx342, align 1
  br label %for.inc343

for.inc343:                                       ; preds = %for.body288
  %174 = load i32, i32* %j284, align 4
  %add344 = add nsw i32 %174, 2
  store i32 %add344, i32* %j284, align 4
  br label %for.cond285

for.end345:                                       ; preds = %for.cond285
  store i32 0, i32* %j346, align 4
  br label %for.cond347

for.cond347:                                      ; preds = %for.inc358, %for.end345
  %175 = load i32, i32* %j346, align 4
  %cmp348 = icmp slt i32 %175, 16
  br i1 %cmp348, label %for.body350, label %for.end360

for.body350:                                      ; preds = %for.cond347
  %176 = load i32, i32* %j346, align 4
  %idxprom351 = sext i32 %176 to i64
  %arrayidx352 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom351
  %177 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %177 to i32
  %add354 = add nsw i32 %conv353, 1
  %conv355 = trunc i32 %add354 to i8
  %178 = load i32, i32* %j346, align 4
  %idxprom356 = sext i32 %178 to i64
  %arrayidx357 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom356
  store i8 %conv355, i8* %arrayidx357, align 1
  br label %for.inc358

for.inc358:                                       ; preds = %for.body350
  %179 = load i32, i32* %j346, align 4
  %inc359 = add nsw i32 %179, 1
  store i32 %inc359, i32* %j346, align 4
  br label %for.cond347

for.end360:                                       ; preds = %for.cond347
  store i32 0, i32* %j361, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc381, %for.end360
  %180 = load i32, i32* %j361, align 4
  %cmp363 = icmp slt i32 %180, 16
  br i1 %cmp363, label %for.body365, label %for.end384

for.body365:                                      ; preds = %for.cond362
  %181 = load i32, i32* %k, align 4
  %idxprom366 = sext i32 %181 to i64
  %arrayidx367 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %idxprom366
  %182 = load i8, i8* %arrayidx367, align 1
  %183 = load i8*, i8** %metric1, align 8
  %184 = load i32, i32* %i48, align 4
  %mul368 = mul nsw i32 2, %184
  %mul369 = mul nsw i32 %mul368, 16
  %185 = load i32, i32* %j361, align 4
  %add370 = add nsw i32 %mul369, %185
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds i8, i8* %183, i64 %idxprom371
  store i8 %182, i8* %arrayidx372, align 1
  %186 = load i32, i32* %k, align 4
  %idxprom373 = sext i32 %186 to i64
  %arrayidx374 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %idxprom373
  %187 = load i8, i8* %arrayidx374, align 1
  %188 = load i8*, i8** %metric1, align 8
  %189 = load i32, i32* %i48, align 4
  %mul375 = mul nsw i32 2, %189
  %mul376 = mul nsw i32 %mul375, 16
  %190 = load i32, i32* %j361, align 4
  %add377 = add nsw i32 %190, 1
  %add378 = add nsw i32 %mul376, %add377
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i8, i8* %188, i64 %idxprom379
  store i8 %187, i8* %arrayidx380, align 1
  br label %for.inc381

for.inc381:                                       ; preds = %for.body365
  %191 = load i32, i32* %j361, align 4
  %add382 = add nsw i32 %191, 2
  store i32 %add382, i32* %j361, align 4
  %192 = load i32, i32* %k, align 4
  %inc383 = add nsw i32 %192, 1
  store i32 %inc383, i32* %k, align 4
  br label %for.cond362

for.end384:                                       ; preds = %for.cond362
  store i32 0, i32* %j385, align 4
  br label %for.cond386

for.cond386:                                      ; preds = %for.inc409, %for.end384
  %193 = load i32, i32* %j385, align 4
  %cmp387 = icmp slt i32 %193, 16
  br i1 %cmp387, label %for.body389, label %for.end411

for.body389:                                      ; preds = %for.cond386
  %194 = load i32, i32* %j385, align 4
  %idxprom390 = sext i32 %194 to i64
  %arrayidx391 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %idxprom390
  %195 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %195 to i32
  %196 = load i32, i32* %j385, align 4
  %idxprom393 = sext i32 %196 to i64
  %arrayidx394 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %idxprom393
  %197 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %197 to i32
  %and396 = and i32 %conv392, %conv395
  %198 = load i32, i32* %j385, align 4
  %idxprom397 = sext i32 %198 to i64
  %arrayidx398 = getelementptr inbounds [16 x i8], [16 x i8]* %decision0, i64 0, i64 %idxprom397
  %199 = load i8, i8* %arrayidx398, align 1
  %conv399 = zext i8 %199 to i32
  %neg400 = xor i32 %conv399, -1
  %200 = load i32, i32* %j385, align 4
  %idxprom401 = sext i32 %200 to i64
  %arrayidx402 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom401
  %201 = load i8, i8* %arrayidx402, align 1
  %conv403 = zext i8 %201 to i32
  %and404 = and i32 %neg400, %conv403
  %or405 = or i32 %and396, %and404
  %conv406 = trunc i32 %or405 to i8
  %202 = load i32, i32* %j385, align 4
  %idxprom407 = sext i32 %202 to i64
  %arrayidx408 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %idxprom407
  store i8 %conv406, i8* %arrayidx408, align 1
  br label %for.inc409

for.inc409:                                       ; preds = %for.body389
  %203 = load i32, i32* %j385, align 4
  %inc410 = add nsw i32 %203, 1
  store i32 %inc410, i32* %j385, align 4
  br label %for.cond386

for.end411:                                       ; preds = %for.cond386
  store i32 0, i32* %j412, align 4
  store i32 8, i32* %k413, align 4
  br label %for.cond414

for.cond414:                                      ; preds = %for.inc435, %for.end411
  %204 = load i32, i32* %j412, align 4
  %cmp415 = icmp slt i32 %204, 16
  br i1 %cmp415, label %for.body417, label %for.end438

for.body417:                                      ; preds = %for.cond414
  %205 = load i32, i32* %k413, align 4
  %idxprom418 = sext i32 %205 to i64
  %arrayidx419 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor0, i64 0, i64 %idxprom418
  %206 = load i8, i8* %arrayidx419, align 1
  %207 = load i8*, i8** %metric1, align 8
  %208 = load i32, i32* %i48, align 4
  %mul420 = mul nsw i32 2, %208
  %add421 = add nsw i32 %mul420, 1
  %mul422 = mul nsw i32 %add421, 16
  %209 = load i32, i32* %j412, align 4
  %add423 = add nsw i32 %mul422, %209
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i8, i8* %207, i64 %idxprom424
  store i8 %206, i8* %arrayidx425, align 1
  %210 = load i32, i32* %k413, align 4
  %idxprom426 = sext i32 %210 to i64
  %arrayidx427 = getelementptr inbounds [16 x i8], [16 x i8]* %survivor1, i64 0, i64 %idxprom426
  %211 = load i8, i8* %arrayidx427, align 1
  %212 = load i8*, i8** %metric1, align 8
  %213 = load i32, i32* %i48, align 4
  %mul428 = mul nsw i32 2, %213
  %add429 = add nsw i32 %mul428, 1
  %mul430 = mul nsw i32 %add429, 16
  %214 = load i32, i32* %j412, align 4
  %add431 = add nsw i32 %214, 1
  %add432 = add nsw i32 %mul430, %add431
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds i8, i8* %212, i64 %idxprom433
  store i8 %211, i8* %arrayidx434, align 1
  br label %for.inc435

for.inc435:                                       ; preds = %for.body417
  %215 = load i32, i32* %j412, align 4
  %add436 = add nsw i32 %215, 2
  store i32 %add436, i32* %j412, align 4
  %216 = load i32, i32* %k413, align 4
  %inc437 = add nsw i32 %216, 1
  store i32 %inc437, i32* %k413, align 4
  br label %for.cond414

for.end438:                                       ; preds = %for.cond414
  store i32 0, i32* %j439, align 4
  br label %for.cond440

for.cond440:                                      ; preds = %for.inc463, %for.end438
  %217 = load i32, i32* %j439, align 4
  %cmp441 = icmp slt i32 %217, 16
  br i1 %cmp441, label %for.body443, label %for.end465

for.body443:                                      ; preds = %for.cond440
  %218 = load i32, i32* %j439, align 4
  %idxprom444 = sext i32 %218 to i64
  %arrayidx445 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %idxprom444
  %219 = load i8, i8* %arrayidx445, align 1
  %conv446 = zext i8 %219 to i32
  %220 = load i32, i32* %j439, align 4
  %idxprom447 = sext i32 %220 to i64
  %arrayidx448 = getelementptr inbounds [16 x i8], [16 x i8]* %shift0, i64 0, i64 %idxprom447
  %221 = load i8, i8* %arrayidx448, align 1
  %conv449 = zext i8 %221 to i32
  %and450 = and i32 %conv446, %conv449
  %222 = load i32, i32* %j439, align 4
  %idxprom451 = sext i32 %222 to i64
  %arrayidx452 = getelementptr inbounds [16 x i8], [16 x i8]* %decision1, i64 0, i64 %idxprom451
  %223 = load i8, i8* %arrayidx452, align 1
  %conv453 = zext i8 %223 to i32
  %neg454 = xor i32 %conv453, -1
  %224 = load i32, i32* %j439, align 4
  %idxprom455 = sext i32 %224 to i64
  %arrayidx456 = getelementptr inbounds [16 x i8], [16 x i8]* %shift1, i64 0, i64 %idxprom455
  %225 = load i8, i8* %arrayidx456, align 1
  %conv457 = zext i8 %225 to i32
  %and458 = and i32 %neg454, %conv457
  %or459 = or i32 %and450, %and458
  %conv460 = trunc i32 %or459 to i8
  %226 = load i32, i32* %j439, align 4
  %idxprom461 = sext i32 %226 to i64
  %arrayidx462 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %idxprom461
  store i8 %conv460, i8* %arrayidx462, align 1
  br label %for.inc463

for.inc463:                                       ; preds = %for.body443
  %227 = load i32, i32* %j439, align 4
  %inc464 = add nsw i32 %227, 1
  store i32 %inc464, i32* %j439, align 4
  br label %for.cond440

for.end465:                                       ; preds = %for.cond440
  store i32 0, i32* %j466, align 4
  store i32 0, i32* %k467, align 4
  br label %for.cond468

for.cond468:                                      ; preds = %for.inc487, %for.end465
  %228 = load i32, i32* %j466, align 4
  %cmp469 = icmp slt i32 %228, 16
  br i1 %cmp469, label %for.body471, label %for.end490

for.body471:                                      ; preds = %for.cond468
  %229 = load i32, i32* %k467, align 4
  %idxprom472 = sext i32 %229 to i64
  %arrayidx473 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %idxprom472
  %230 = load i8, i8* %arrayidx473, align 1
  %231 = load i8*, i8** %path1, align 8
  %232 = load i32, i32* %i48, align 4
  %mul474 = mul nsw i32 2, %232
  %mul475 = mul nsw i32 %mul474, 16
  %233 = load i32, i32* %j466, align 4
  %add476 = add nsw i32 %mul475, %233
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds i8, i8* %231, i64 %idxprom477
  store i8 %230, i8* %arrayidx478, align 1
  %234 = load i32, i32* %k467, align 4
  %idxprom479 = sext i32 %234 to i64
  %arrayidx480 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %idxprom479
  %235 = load i8, i8* %arrayidx480, align 1
  %236 = load i8*, i8** %path1, align 8
  %237 = load i32, i32* %i48, align 4
  %mul481 = mul nsw i32 2, %237
  %mul482 = mul nsw i32 %mul481, 16
  %238 = load i32, i32* %j466, align 4
  %add483 = add nsw i32 %238, 1
  %add484 = add nsw i32 %mul482, %add483
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds i8, i8* %236, i64 %idxprom485
  store i8 %235, i8* %arrayidx486, align 1
  br label %for.inc487

for.inc487:                                       ; preds = %for.body471
  %239 = load i32, i32* %j466, align 4
  %add488 = add nsw i32 %239, 2
  store i32 %add488, i32* %j466, align 4
  %240 = load i32, i32* %k467, align 4
  %inc489 = add nsw i32 %240, 1
  store i32 %inc489, i32* %k467, align 4
  br label %for.cond468

for.end490:                                       ; preds = %for.cond468
  store i32 0, i32* %j491, align 4
  store i32 8, i32* %k492, align 4
  br label %for.cond493

for.cond493:                                      ; preds = %for.inc514, %for.end490
  %241 = load i32, i32* %j491, align 4
  %cmp494 = icmp slt i32 %241, 16
  br i1 %cmp494, label %for.body496, label %for.end517

for.body496:                                      ; preds = %for.cond493
  %242 = load i32, i32* %k492, align 4
  %idxprom497 = sext i32 %242 to i64
  %arrayidx498 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp0, i64 0, i64 %idxprom497
  %243 = load i8, i8* %arrayidx498, align 1
  %244 = load i8*, i8** %path1, align 8
  %245 = load i32, i32* %i48, align 4
  %mul499 = mul nsw i32 2, %245
  %add500 = add nsw i32 %mul499, 1
  %mul501 = mul nsw i32 %add500, 16
  %246 = load i32, i32* %j491, align 4
  %add502 = add nsw i32 %mul501, %246
  %idxprom503 = sext i32 %add502 to i64
  %arrayidx504 = getelementptr inbounds i8, i8* %244, i64 %idxprom503
  store i8 %243, i8* %arrayidx504, align 1
  %247 = load i32, i32* %k492, align 4
  %idxprom505 = sext i32 %247 to i64
  %arrayidx506 = getelementptr inbounds [16 x i8], [16 x i8]* %tmp1, i64 0, i64 %idxprom505
  %248 = load i8, i8* %arrayidx506, align 1
  %249 = load i8*, i8** %path1, align 8
  %250 = load i32, i32* %i48, align 4
  %mul507 = mul nsw i32 2, %250
  %add508 = add nsw i32 %mul507, 1
  %mul509 = mul nsw i32 %add508, 16
  %251 = load i32, i32* %j491, align 4
  %add510 = add nsw i32 %251, 1
  %add511 = add nsw i32 %mul509, %add510
  %idxprom512 = sext i32 %add511 to i64
  %arrayidx513 = getelementptr inbounds i8, i8* %249, i64 %idxprom512
  store i8 %248, i8* %arrayidx513, align 1
  br label %for.inc514

for.inc514:                                       ; preds = %for.body496
  %252 = load i32, i32* %j491, align 4
  %add515 = add nsw i32 %252, 2
  store i32 %add515, i32* %j491, align 4
  %253 = load i32, i32* %k492, align 4
  %inc516 = add nsw i32 %253, 1
  store i32 %inc516, i32* %k492, align 4
  br label %for.cond493

for.end517:                                       ; preds = %for.cond493
  br label %for.inc518

for.inc518:                                       ; preds = %for.end517
  %254 = load i32, i32* %i48, align 4
  %inc519 = add nsw i32 %254, 1
  store i32 %inc519, i32* %i48, align 4
  br label %for.cond49

for.end520:                                       ; preds = %for.cond49
  %255 = load i8*, i8** %mm1, align 8
  store i8* %255, i8** %metric0, align 8
  %256 = load i8*, i8** %pp1, align 8
  store i8* %256, i8** %path0, align 8
  %257 = load i8*, i8** %mm0, align 8
  store i8* %257, i8** %metric1, align 8
  %258 = load i8*, i8** %pp0, align 8
  store i8* %258, i8** %path1, align 8
  store i32 2, i32* %first_symbol, align 4
  %259 = load i32, i32* %first_symbol, align 4
  %add521 = add i32 %259, 1
  store i32 %add521, i32* %second_symbol, align 4
  store i32 0, i32* %j522, align 4
  br label %for.cond523

for.cond523:                                      ; preds = %for.inc535, %for.end520
  %260 = load i32, i32* %j522, align 4
  %cmp524 = icmp slt i32 %260, 16
  br i1 %cmp524, label %for.body526, label %for.end537

for.body526:                                      ; preds = %for.cond523
  %261 = load i8*, i8** %symbols, align 8
  %262 = load i32, i32* %first_symbol, align 4
  %idxprom527 = zext i32 %262 to i64
  %arrayidx528 = getelementptr inbounds i8, i8* %261, i64 %idxprom527
  %263 = load i8, i8* %arrayidx528, align 1
  %264 = load i32, i32* %j522, align 4
  %idxprom529 = sext i32 %264 to i64
  %arrayidx530 = getelementptr inbounds [16 x i8], [16 x i8]* %sym0v, i64 0, i64 %idxprom529
  store i8 %263, i8* %arrayidx530, align 1
  %265 = load i8*, i8** %symbols, align 8
  %266 = load i32, i32* %second_symbol, align 4
  %idxprom531 = zext i32 %266 to i64
  %arrayidx532 = getelementptr inbounds i8, i8* %265, i64 %idxprom531
  %267 = load i8, i8* %arrayidx532, align 1
  %268 = load i32, i32* %j522, align 4
  %idxprom533 = sext i32 %268 to i64
  %arrayidx534 = getelementptr inbounds [16 x i8], [16 x i8]* %sym1v, i64 0, i64 %idxprom533
  store i8 %267, i8* %arrayidx534, align 1
  br label %for.inc535

for.inc535:                                       ; preds = %for.body526
  %269 = load i32, i32* %j522, align 4
  %inc536 = add nsw i32 %269, 1
  store i32 %inc536, i32* %j522, align 4
  br label %for.cond523

for.end537:                                       ; preds = %for.cond523
  br label %for.inc538

for.inc538:                                       ; preds = %for.end537
  %270 = load i32, i32* %s, align 4
  %inc539 = add nsw i32 %270, 1
  store i32 %inc539, i32* %s, align 4
  br label %for.cond45

for.end540:                                       ; preds = %for.cond45
  %271 = load i32, i32* %viterbi_butterfly_calls, align 4
  %inc541 = add nsw i32 %271, 1
  store i32 %inc541, i32* %viterbi_butterfly_calls, align 4
  %272 = load i32, i32* %in_count, align 4
  %cmp542 = icmp sgt i32 %272, 0
  br i1 %cmp542, label %land.lhs.true, label %if.end695

land.lhs.true:                                    ; preds = %for.end540
  %273 = load i32, i32* %in_count, align 4
  %rem544 = srem i32 %273, 16
  %cmp545 = icmp eq i32 %rem544, 8
  br i1 %cmp545, label %if.then547, label %if.end695

if.then547:                                       ; preds = %land.lhs.true
  %arraydecay549 = getelementptr inbounds [64 x i8], [64 x i8]* %l_metric0_generic, i32 0, i32 0
  store i8* %arraydecay549, i8** %mm0548, align 8
  %arraydecay551 = getelementptr inbounds [64 x i8], [64 x i8]* %l_path0_generic, i32 0, i32 0
  store i8* %arraydecay551, i8** %pp0550, align 8
  %274 = load i32, i32* %in_ntraceback.addr, align 4
  store i32 %274, i32* %ntraceback, align 4
  store i8* %c, i8** %outbuf, align 8
  store i32 0, i32* %beststate, align 4
  store i32 0, i32* %pos, align 4
  %275 = load i32, i32* %l_store_pos, align 4
  %add554 = add nsw i32 %275, 1
  %276 = load i32, i32* %ntraceback, align 4
  %rem555 = srem i32 %add554, %276
  store i32 %rem555, i32* %l_store_pos, align 4
  store i32 0, i32* %i552, align 4
  br label %for.cond556

for.cond556:                                      ; preds = %for.inc585, %if.then547
  %277 = load i32, i32* %i552, align 4
  %cmp557 = icmp slt i32 %277, 4
  br i1 %cmp557, label %for.body559, label %for.end587

for.body559:                                      ; preds = %for.cond556
  store i32 0, i32* %j553, align 4
  br label %for.cond560

for.cond560:                                      ; preds = %for.inc582, %for.body559
  %278 = load i32, i32* %j553, align 4
  %cmp561 = icmp slt i32 %278, 16
  br i1 %cmp561, label %for.body563, label %for.end584

for.body563:                                      ; preds = %for.cond560
  %279 = load i8*, i8** %mm0548, align 8
  %280 = load i32, i32* %i552, align 4
  %mul564 = mul nsw i32 %280, 16
  %281 = load i32, i32* %j553, align 4
  %add565 = add nsw i32 %mul564, %281
  %idxprom566 = sext i32 %add565 to i64
  %arrayidx567 = getelementptr inbounds i8, i8* %279, i64 %idxprom566
  %282 = load i8, i8* %arrayidx567, align 1
  %283 = load i32, i32* %i552, align 4
  %mul568 = mul nsw i32 %283, 16
  %284 = load i32, i32* %j553, align 4
  %add569 = add nsw i32 %mul568, %284
  %idxprom570 = sext i32 %add569 to i64
  %arrayidx571 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom570
  store i8 %282, i8* %arrayidx571, align 1
  %285 = load i8*, i8** %pp0550, align 8
  %286 = load i32, i32* %i552, align 4
  %mul572 = mul nsw i32 %286, 16
  %287 = load i32, i32* %j553, align 4
  %add573 = add nsw i32 %mul572, %287
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx575 = getelementptr inbounds i8, i8* %285, i64 %idxprom574
  %288 = load i8, i8* %arrayidx575, align 1
  %289 = load i32, i32* %l_store_pos, align 4
  %idxprom576 = sext i32 %289 to i64
  %arrayidx577 = getelementptr inbounds [11 x [64 x i8]], [11 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom576
  %290 = load i32, i32* %i552, align 4
  %mul578 = mul nsw i32 %290, 16
  %291 = load i32, i32* %j553, align 4
  %add579 = add nsw i32 %mul578, %291
  %idxprom580 = sext i32 %add579 to i64
  %arrayidx581 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx577, i64 0, i64 %idxprom580
  store i8 %288, i8* %arrayidx581, align 1
  br label %for.inc582

for.inc582:                                       ; preds = %for.body563
  %292 = load i32, i32* %j553, align 4
  %inc583 = add nsw i32 %292, 1
  store i32 %inc583, i32* %j553, align 4
  br label %for.cond560

for.end584:                                       ; preds = %for.cond560
  br label %for.inc585

for.inc585:                                       ; preds = %for.end584
  %293 = load i32, i32* %i552, align 4
  %inc586 = add nsw i32 %293, 1
  store i32 %inc586, i32* %i552, align 4
  br label %for.cond556

for.end587:                                       ; preds = %for.cond556
  %294 = load i32, i32* %beststate, align 4
  %idxprom588 = sext i32 %294 to i64
  %arrayidx589 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom588
  %295 = load i8, i8* %arrayidx589, align 1
  %conv590 = zext i8 %295 to i32
  store i32 %conv590, i32* %bestmetric, align 4
  %296 = load i32, i32* %beststate, align 4
  %idxprom591 = sext i32 %296 to i64
  %arrayidx592 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom591
  %297 = load i8, i8* %arrayidx592, align 1
  %conv593 = zext i8 %297 to i32
  store i32 %conv593, i32* %minmetric, align 4
  store i32 1, i32* %i552, align 4
  br label %for.cond594

for.cond594:                                      ; preds = %for.inc618, %for.end587
  %298 = load i32, i32* %i552, align 4
  %cmp595 = icmp slt i32 %298, 64
  br i1 %cmp595, label %for.body597, label %for.end620

for.body597:                                      ; preds = %for.cond594
  %299 = load i32, i32* %i552, align 4
  %idxprom598 = sext i32 %299 to i64
  %arrayidx599 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom598
  %300 = load i8, i8* %arrayidx599, align 1
  %conv600 = zext i8 %300 to i32
  %301 = load i32, i32* %bestmetric, align 4
  %cmp601 = icmp sgt i32 %conv600, %301
  br i1 %cmp601, label %if.then603, label %if.end607

if.then603:                                       ; preds = %for.body597
  %302 = load i32, i32* %i552, align 4
  %idxprom604 = sext i32 %302 to i64
  %arrayidx605 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom604
  %303 = load i8, i8* %arrayidx605, align 1
  %conv606 = zext i8 %303 to i32
  store i32 %conv606, i32* %bestmetric, align 4
  %304 = load i32, i32* %i552, align 4
  store i32 %304, i32* %beststate, align 4
  br label %if.end607

if.end607:                                        ; preds = %if.then603, %for.body597
  %305 = load i32, i32* %i552, align 4
  %idxprom608 = sext i32 %305 to i64
  %arrayidx609 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom608
  %306 = load i8, i8* %arrayidx609, align 1
  %conv610 = zext i8 %306 to i32
  %307 = load i32, i32* %minmetric, align 4
  %cmp611 = icmp slt i32 %conv610, %307
  br i1 %cmp611, label %if.then613, label %if.end617

if.then613:                                       ; preds = %if.end607
  %308 = load i32, i32* %i552, align 4
  %idxprom614 = sext i32 %308 to i64
  %arrayidx615 = getelementptr inbounds [64 x i8], [64 x i8]* %l_mmresult, i64 0, i64 %idxprom614
  %309 = load i8, i8* %arrayidx615, align 1
  %conv616 = zext i8 %309 to i32
  store i32 %conv616, i32* %minmetric, align 4
  br label %if.end617

if.end617:                                        ; preds = %if.then613, %if.end607
  br label %for.inc618

for.inc618:                                       ; preds = %if.end617
  %310 = load i32, i32* %i552, align 4
  %inc619 = add nsw i32 %310, 1
  store i32 %inc619, i32* %i552, align 4
  br label %for.cond594

for.end620:                                       ; preds = %for.cond594
  store i32 0, i32* %i552, align 4
  %311 = load i32, i32* %l_store_pos, align 4
  store i32 %311, i32* %pos, align 4
  br label %for.cond621

for.cond621:                                      ; preds = %for.inc635, %for.end620
  %312 = load i32, i32* %i552, align 4
  %313 = load i32, i32* %ntraceback, align 4
  %sub622 = sub nsw i32 %313, 1
  %cmp623 = icmp slt i32 %312, %sub622
  br i1 %cmp623, label %for.body625, label %for.end637

for.body625:                                      ; preds = %for.cond621
  %314 = load i32, i32* %pos, align 4
  %idxprom626 = sext i32 %314 to i64
  %arrayidx627 = getelementptr inbounds [11 x [64 x i8]], [11 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom626
  %315 = load i32, i32* %beststate, align 4
  %idxprom628 = sext i32 %315 to i64
  %arrayidx629 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx627, i64 0, i64 %idxprom628
  %316 = load i8, i8* %arrayidx629, align 1
  %conv630 = zext i8 %316 to i32
  %shr631 = ashr i32 %conv630, 2
  store i32 %shr631, i32* %beststate, align 4
  %317 = load i32, i32* %pos, align 4
  %sub632 = sub nsw i32 %317, 1
  %318 = load i32, i32* %ntraceback, align 4
  %add633 = add nsw i32 %sub632, %318
  %319 = load i32, i32* %ntraceback, align 4
  %rem634 = srem i32 %add633, %319
  store i32 %rem634, i32* %pos, align 4
  br label %for.inc635

for.inc635:                                       ; preds = %for.body625
  %320 = load i32, i32* %i552, align 4
  %inc636 = add nsw i32 %320, 1
  store i32 %inc636, i32* %i552, align 4
  br label %for.cond621

for.end637:                                       ; preds = %for.cond621
  %321 = load i32, i32* %pos, align 4
  %idxprom638 = sext i32 %321 to i64
  %arrayidx639 = getelementptr inbounds [11 x [64 x i8]], [11 x [64 x i8]]* %l_ppresult, i64 0, i64 %idxprom638
  %322 = load i32, i32* %beststate, align 4
  %idxprom640 = sext i32 %322 to i64
  %arrayidx641 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx639, i64 0, i64 %idxprom640
  %323 = load i8, i8* %arrayidx641, align 1
  %324 = load i8*, i8** %outbuf, align 8
  store i8 %323, i8* %324, align 1
  store i32 0, i32* %i552, align 4
  br label %for.cond642

for.cond642:                                      ; preds = %for.inc668, %for.end637
  %325 = load i32, i32* %i552, align 4
  %cmp643 = icmp slt i32 %325, 4
  br i1 %cmp643, label %for.body645, label %for.end670

for.body645:                                      ; preds = %for.cond642
  store i32 0, i32* %j553, align 4
  br label %for.cond646

for.cond646:                                      ; preds = %for.inc665, %for.body645
  %326 = load i32, i32* %j553, align 4
  %cmp647 = icmp slt i32 %326, 16
  br i1 %cmp647, label %for.body649, label %for.end667

for.body649:                                      ; preds = %for.cond646
  %327 = load i8*, i8** %pp0550, align 8
  %328 = load i32, i32* %i552, align 4
  %mul650 = mul nsw i32 %328, 16
  %329 = load i32, i32* %j553, align 4
  %add651 = add nsw i32 %mul650, %329
  %idxprom652 = sext i32 %add651 to i64
  %arrayidx653 = getelementptr inbounds i8, i8* %327, i64 %idxprom652
  store i8 0, i8* %arrayidx653, align 1
  %330 = load i8*, i8** %mm0548, align 8
  %331 = load i32, i32* %i552, align 4
  %mul654 = mul nsw i32 %331, 16
  %332 = load i32, i32* %j553, align 4
  %add655 = add nsw i32 %mul654, %332
  %idxprom656 = sext i32 %add655 to i64
  %arrayidx657 = getelementptr inbounds i8, i8* %330, i64 %idxprom656
  %333 = load i8, i8* %arrayidx657, align 1
  %conv658 = zext i8 %333 to i32
  %334 = load i32, i32* %minmetric, align 4
  %sub659 = sub nsw i32 %conv658, %334
  %conv660 = trunc i32 %sub659 to i8
  %335 = load i8*, i8** %mm0548, align 8
  %336 = load i32, i32* %i552, align 4
  %mul661 = mul nsw i32 %336, 16
  %337 = load i32, i32* %j553, align 4
  %add662 = add nsw i32 %mul661, %337
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds i8, i8* %335, i64 %idxprom663
  store i8 %conv660, i8* %arrayidx664, align 1
  br label %for.inc665

for.inc665:                                       ; preds = %for.body649
  %338 = load i32, i32* %j553, align 4
  %inc666 = add nsw i32 %338, 1
  store i32 %inc666, i32* %j553, align 4
  br label %for.cond646

for.end667:                                       ; preds = %for.cond646
  br label %for.inc668

for.inc668:                                       ; preds = %for.end667
  %339 = load i32, i32* %i552, align 4
  %inc669 = add nsw i32 %339, 1
  store i32 %inc669, i32* %i552, align 4
  br label %for.cond642

for.end670:                                       ; preds = %for.cond642
  %340 = load i32, i32* %out_count, align 4
  %341 = load i32, i32* %in_ntraceback.addr, align 4
  %cmp671 = icmp sge i32 %340, %341
  br i1 %cmp671, label %if.then673, label %if.end693

if.then673:                                       ; preds = %for.end670
  store i32 0, i32* %i674, align 4
  br label %for.cond675

for.cond675:                                      ; preds = %for.inc690, %if.then673
  %342 = load i32, i32* %i674, align 4
  %cmp676 = icmp slt i32 %342, 8
  br i1 %cmp676, label %for.body678, label %for.end692

for.body678:                                      ; preds = %for.cond675
  %343 = load i8, i8* %c, align 1
  %conv679 = zext i8 %343 to i32
  %344 = load i32, i32* %i674, align 4
  %sub680 = sub nsw i32 7, %344
  %shr681 = ashr i32 %conv679, %sub680
  %and682 = and i32 %shr681, 1
  %conv683 = trunc i32 %and682 to i8
  %345 = load i8*, i8** %l_decoded.addr, align 8
  %346 = load i32, i32* %out_count, align 4
  %347 = load i32, i32* %in_ntraceback.addr, align 4
  %sub684 = sub nsw i32 %346, %347
  %mul685 = mul nsw i32 %sub684, 8
  %348 = load i32, i32* %i674, align 4
  %add686 = add nsw i32 %mul685, %348
  %idxprom687 = sext i32 %add686 to i64
  %arrayidx688 = getelementptr inbounds i8, i8* %345, i64 %idxprom687
  store i8 %conv683, i8* %arrayidx688, align 1
  %349 = load i32, i32* %n_decoded, align 4
  %inc689 = add nsw i32 %349, 1
  store i32 %inc689, i32* %n_decoded, align 4
  br label %for.inc690

for.inc690:                                       ; preds = %for.body678
  %350 = load i32, i32* %i674, align 4
  %inc691 = add nsw i32 %350, 1
  store i32 %inc691, i32* %i674, align 4
  br label %for.cond675

for.end692:                                       ; preds = %for.cond675
  br label %if.end693

if.end693:                                        ; preds = %for.end692, %for.end670
  %351 = load i32, i32* %out_count, align 4
  %inc694 = add nsw i32 %351, 1
  store i32 %inc694, i32* %out_count, align 4
  br label %if.end695

if.end695:                                        ; preds = %if.end693, %land.lhs.true, %for.end540
  br label %if.end696

if.end696:                                        ; preds = %if.end695, %while.body
  %352 = load i32, i32* %in_count, align 4
  %inc697 = add nsw i32 %352, 1
  store i32 %inc697, i32* %in_count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @irand() #0 {
entry:
  %rand_tmp = alloca i32, align 4
  %0 = load i64, i64* @next, align 8
  %mul = mul i64 %0, 1103515245
  %add = add i64 %mul, 12345
  store i64 %add, i64* @next, align 8
  %1 = load i64, i64* @next, align 8
  %div = udiv i64 %1, 65536
  %conv = trunc i64 %div to i32
  %rem = urem i32 %conv, 32768
  store i32 %rem, i32* %rand_tmp, align 4
  %2 = load i32, i32* %rand_tmp, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define i8* @viterbi_hook() #0 {
entry:
  %errors = alloca i32, align 4
  %gold = alloca i8*, align 8
  %buf = alloca i8*, align 8
  call void @init_parameters()
  %0 = load i32, i32* @size, align 4
  %conv = zext i32 %0 to i64
  %call = call i8* @esp_alloc(i64 %conv)
  store i8* %call, i8** %buf, align 8
  %1 = load i32, i32* @out_size, align 4
  %conv1 = zext i32 %1 to i64
  %call2 = call noalias i8* @malloc(i64 %conv1) #4
  store i8* %call2, i8** %gold, align 8
  %2 = load i8*, i8** %buf, align 8
  %3 = load i8*, i8** %gold, align 8
  call void @init_buffer(i8* %2, i8* %3)
  %4 = load i8*, i8** getelementptr inbounds ([1 x %struct.esp_accelerator_thread_info], [1 x %struct.esp_accelerator_thread_info]* bitcast (<{ { i8, i8*, i32, { %struct.vitdodec_access, [24 x i8] }, i32, %struct.contig_handle_struct**, i64 } }>* @cfg_000 to [1 x %struct.esp_accelerator_thread_info]*), i64 0, i64 0, i32 1), align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 48)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 5)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 288)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  call void @esp_run(%struct.esp_accelerator_thread_info* getelementptr inbounds ([1 x %struct.esp_accelerator_thread_info], [1 x %struct.esp_accelerator_thread_info]* bitcast (<{ { i8, i8*, i32, { %struct.vitdodec_access, [24 x i8] }, i32, %struct.contig_handle_struct**, i64 } }>* @cfg_000 to [1 x %struct.esp_accelerator_thread_info]*), i32 0, i32 0), i32 1)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  %5 = load i8*, i8** %buf, align 8
  %6 = load i32, i32* @out_offset, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8*, i8** %gold, align 8
  %call9 = call i32 @validate_buffer(i8* %arrayidx, i8* %7)
  store i32 %call9, i32* %errors, align 4
  %8 = load i8*, i8** %gold, align 8
  call void @free(i8* %8) #4
  call void (...) @esp_cleanup()
  %9 = load i8*, i8** %buf, align 8
  %10 = load i32, i32* @out_offset, align 4
  %idxprom10 = zext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 %idxprom10
  ret i8* %arrayidx11
}

declare i8* @esp_alloc(i64) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_buffer(i8* %in, i8* %gold) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %gold.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %imi = alloca i32, align 4
  %depunct_ptn = alloca [6 x i8], align 1
  %polys = alloca [2 x i32], align 4
  %i1 = alloca i32, align 4
  %ti = alloca i32, align 4
  %j65 = alloca i32, align 4
  %bval = alloca i32, align 4
  %limi = alloca i32, align 4
  %li = alloca i32, align 4
  %li97 = alloca i32, align 4
  %li117 = alloca i32, align 4
  %li131 = alloca i32, align 4
  %limi171 = alloca i32, align 4
  %li172 = alloca i32, align 4
  %li192 = alloca i32, align 4
  %li212 = alloca i32, align 4
  %li226 = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %gold, i8** %gold.addr, align 8
  store i32 0, i32* %imi, align 4
  %0 = bitcast [6 x i8]* %depunct_ptn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @init_buffer.depunct_ptn, i32 0, i32 0), i64 6, i32 1, i1 false)
  %1 = bitcast [2 x i32]* %polys to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i32]* @init_buffer.polys to i8*), i64 8, i32 4, i1 false)
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp slt i32 %3, 0
  %conv = zext i1 %cmp2 to i32
  %4 = load i32, i32* %i1, align 4
  %mul = mul nsw i32 2, %4
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 0
  %6 = load i32, i32* %arrayidx6, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 0
  %7 = load i32, i32* %arrayidx7, align 4
  %sub = sub nsw i32 0, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %sub, %cond.false ]
  %and = and i32 %mul, %cond
  %idxprom = sext i32 %and to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %xor = xor i32 %conv, %conv9
  %tobool = icmp ne i32 %xor, 0
  %cond10 = select i1 %tobool, i32 1, i32 0
  %conv11 = trunc i32 %cond10 to i8
  %9 = load i8*, i8** %in.addr, align 8
  %10 = load i32, i32* %imi, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 1
  %11 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %11, 0
  %conv16 = zext i1 %cmp15 to i32
  %12 = load i32, i32* %i1, align 4
  %mul17 = mul nsw i32 2, %12
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 1
  %13 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp sgt i32 %13, 0
  br i1 %cmp19, label %cond.true21, label %cond.false23

cond.true21:                                      ; preds = %cond.end
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 1
  %14 = load i32, i32* %arrayidx22, align 4
  br label %cond.end26

cond.false23:                                     ; preds = %cond.end
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %polys, i64 0, i64 1
  %15 = load i32, i32* %arrayidx24, align 4
  %sub25 = sub nsw i32 0, %15
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false23, %cond.true21
  %cond27 = phi i32 [ %14, %cond.true21 ], [ %sub25, %cond.false23 ]
  %and28 = and i32 %mul17, %cond27
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], [256 x i8]* @PARTAB, i64 0, i64 %idxprom29
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  %xor32 = xor i32 %conv16, %conv31
  %tobool33 = icmp ne i32 %xor32, 0
  %cond34 = select i1 %tobool33, i32 1, i32 0
  %conv35 = trunc i32 %cond34 to i8
  %17 = load i8*, i8** %in.addr, align 8
  %18 = load i32, i32* %imi, align 4
  %add = add nsw i32 %18, 32
  %idxprom36 = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %17, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1
  %19 = load i32, i32* %imi, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %imi, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end26
  %20 = load i32, i32* %i1, align 4
  %inc38 = add nsw i32 %20, 1
  store i32 %inc38, i32* %i1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %imi, align 4
  %cmp39 = icmp ne i32 %21, 32
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %22 = load i32, i32* %imi, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load i32, i32* %imi, align 4
  %add41 = add nsw i32 %23, 32
  store i32 %add41, i32* %imi, align 4
  %24 = load i32, i32* %imi, align 4
  %cmp42 = icmp ne i32 %24, 64
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end
  %25 = load i32, i32* %imi, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %25)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end
  store i32 0, i32* %ti, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc56, %if.end46
  %26 = load i32, i32* %ti, align 4
  %cmp48 = icmp slt i32 %26, 6
  br i1 %cmp48, label %for.body50, label %for.end58

for.body50:                                       ; preds = %for.cond47
  %27 = load i32, i32* %ti, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds [6 x i8], [6 x i8]* %depunct_ptn, i64 0, i64 %idxprom51
  %28 = load i8, i8* %arrayidx52, align 1
  %29 = load i8*, i8** %in.addr, align 8
  %30 = load i32, i32* %imi, align 4
  %inc53 = add nsw i32 %30, 1
  store i32 %inc53, i32* %imi, align 4
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %29, i64 %idxprom54
  store i8 %28, i8* %arrayidx55, align 1
  br label %for.inc56

for.inc56:                                        ; preds = %for.body50
  %31 = load i32, i32* %ti, align 4
  %inc57 = add nsw i32 %31, 1
  store i32 %inc57, i32* %ti, align 4
  br label %for.cond47

for.end58:                                        ; preds = %for.cond47
  %32 = load i8*, i8** %in.addr, align 8
  %33 = load i32, i32* %imi, align 4
  %inc59 = add nsw i32 %33, 1
  store i32 %inc59, i32* %imi, align 4
  %idxprom60 = sext i32 %33 to i64
  %arrayidx61 = getelementptr inbounds i8, i8* %32, i64 %idxprom60
  store i8 0, i8* %arrayidx61, align 1
  %34 = load i8*, i8** %in.addr, align 8
  %35 = load i32, i32* %imi, align 4
  %inc62 = add nsw i32 %35, 1
  store i32 %inc62, i32* %imi, align 4
  %idxprom63 = sext i32 %35 to i64
  %arrayidx64 = getelementptr inbounds i8, i8* %34, i64 %idxprom63
  store i8 0, i8* %arrayidx64, align 1
  %36 = load i32, i32* %imi, align 4
  store i32 %36, i32* %j65, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc75, %for.end58
  %37 = load i32, i32* %j65, align 4
  %38 = load i32, i32* @in_size, align 4
  %cmp67 = icmp ult i32 %37, %38
  br i1 %cmp67, label %for.body69, label %for.end77

for.body69:                                       ; preds = %for.cond66
  %call70 = call i32 @irand()
  %and71 = and i32 %call70, 1
  store i32 %and71, i32* %bval, align 4
  %39 = load i32, i32* %bval, align 4
  %conv72 = trunc i32 %39 to i8
  %40 = load i8*, i8** %in.addr, align 8
  %41 = load i32, i32* %j65, align 4
  %idxprom73 = sext i32 %41 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %40, i64 %idxprom73
  store i8 %conv72, i8* %arrayidx74, align 1
  br label %for.inc75

for.inc75:                                        ; preds = %for.body69
  %42 = load i32, i32* %j65, align 4
  %inc76 = add nsw i32 %42, 1
  store i32 %inc76, i32* %j65, align 4
  br label %for.cond66

for.end77:                                        ; preds = %for.cond66
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %limi, align 4
  store i32 0, i32* %li, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc93, %for.end77
  %43 = load i32, i32* %li, align 4
  %cmp80 = icmp slt i32 %43, 32
  br i1 %cmp80, label %for.body82, label %for.end95

for.body82:                                       ; preds = %for.cond79
  %44 = load i8*, i8** %in.addr, align 8
  %45 = load i32, i32* %limi, align 4
  %inc83 = add nsw i32 %45, 1
  store i32 %inc83, i32* %limi, align 4
  %idxprom84 = sext i32 %45 to i64
  %arrayidx85 = getelementptr inbounds i8, i8* %44, i64 %idxprom84
  %46 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %46 to i32
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv86)
  %47 = load i32, i32* %li, align 4
  %rem = srem i32 %47, 8
  %cmp88 = icmp eq i32 %rem, 7
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %for.body82
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %for.body82
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %48 = load i32, i32* %li, align 4
  %inc94 = add nsw i32 %48, 1
  store i32 %inc94, i32* %li, align 4
  br label %for.cond79

for.end95:                                        ; preds = %for.cond79
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %li97, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc113, %for.end95
  %49 = load i32, i32* %li97, align 4
  %cmp99 = icmp slt i32 %49, 32
  br i1 %cmp99, label %for.body101, label %for.end115

for.body101:                                      ; preds = %for.cond98
  %50 = load i8*, i8** %in.addr, align 8
  %51 = load i32, i32* %limi, align 4
  %inc102 = add nsw i32 %51, 1
  store i32 %inc102, i32* %limi, align 4
  %idxprom103 = sext i32 %51 to i64
  %arrayidx104 = getelementptr inbounds i8, i8* %50, i64 %idxprom103
  %52 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %52 to i32
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv105)
  %53 = load i32, i32* %li97, align 4
  %rem107 = srem i32 %53, 8
  %cmp108 = icmp eq i32 %rem107, 7
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %for.body101
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %for.body101
  br label %for.inc113

for.inc113:                                       ; preds = %if.end112
  %54 = load i32, i32* %li97, align 4
  %inc114 = add nsw i32 %54, 1
  store i32 %inc114, i32* %li97, align 4
  br label %for.cond98

for.end115:                                       ; preds = %for.cond98
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %li117, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc127, %for.end115
  %55 = load i32, i32* %li117, align 4
  %cmp119 = icmp slt i32 %55, 8
  br i1 %cmp119, label %for.body121, label %for.end129

for.body121:                                      ; preds = %for.cond118
  %56 = load i8*, i8** %in.addr, align 8
  %57 = load i32, i32* %limi, align 4
  %inc122 = add nsw i32 %57, 1
  store i32 %inc122, i32* %limi, align 4
  %idxprom123 = sext i32 %57 to i64
  %arrayidx124 = getelementptr inbounds i8, i8* %56, i64 %idxprom123
  %58 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %58 to i32
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv125)
  br label %for.inc127

for.inc127:                                       ; preds = %for.body121
  %59 = load i32, i32* %li117, align 4
  %inc128 = add nsw i32 %59, 1
  store i32 %inc128, i32* %li117, align 4
  br label %for.cond118

for.end129:                                       ; preds = %for.cond118
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %li131, align 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc147, %for.end129
  %60 = load i32, i32* %li131, align 4
  %cmp133 = icmp slt i32 %60, 32
  br i1 %cmp133, label %for.body135, label %for.end149

for.body135:                                      ; preds = %for.cond132
  %61 = load i8*, i8** %in.addr, align 8
  %62 = load i32, i32* %limi, align 4
  %inc136 = add nsw i32 %62, 1
  store i32 %inc136, i32* %limi, align 4
  %idxprom137 = sext i32 %62 to i64
  %arrayidx138 = getelementptr inbounds i8, i8* %61, i64 %idxprom137
  %63 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %63 to i32
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv139)
  %64 = load i32, i32* %li131, align 4
  %rem141 = srem i32 %64, 8
  %cmp142 = icmp eq i32 %rem141, 7
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %for.body135
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %for.body135
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %65 = load i32, i32* %li131, align 4
  %inc148 = add nsw i32 %65, 1
  store i32 %inc148, i32* %li131, align 4
  br label %for.cond132

for.end149:                                       ; preds = %for.cond132
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc166, %for.end149
  %66 = load i32, i32* %i, align 4
  %cmp152 = icmp slt i32 %66, 1
  br i1 %cmp152, label %for.body154, label %for.end168

for.body154:                                      ; preds = %for.cond151
  store i32 0, i32* %j, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc163, %for.body154
  %67 = load i32, i32* %j, align 4
  %cmp156 = icmp slt i32 %67, 18585
  br i1 %cmp156, label %for.body158, label %for.end165

for.body158:                                      ; preds = %for.cond155
  %68 = load i8*, i8** %gold.addr, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* @out_words_adj, align 4
  %mul159 = mul i32 %69, %70
  %71 = load i32, i32* %j, align 4
  %add160 = add i32 %mul159, %71
  %idxprom161 = zext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds i8, i8* %68, i64 %idxprom161
  store i8 0, i8* %arrayidx162, align 1
  br label %for.inc163

for.inc163:                                       ; preds = %for.body158
  %72 = load i32, i32* %j, align 4
  %inc164 = add nsw i32 %72, 1
  store i32 %inc164, i32* %j, align 4
  br label %for.cond155

for.end165:                                       ; preds = %for.cond155
  br label %for.inc166

for.inc166:                                       ; preds = %for.end165
  %73 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %73, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond151

for.end168:                                       ; preds = %for.cond151
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  %74 = load i8*, i8** %in.addr, align 8
  %75 = load i8*, i8** %gold.addr, align 8
  call void @do_decoding(i32 288, i32 48, i32 5, i8* %74, i8* %75)
  %call170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %limi171, align 4
  store i32 0, i32* %li172, align 4
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc188, %for.end168
  %76 = load i32, i32* %li172, align 4
  %cmp174 = icmp slt i32 %76, 32
  br i1 %cmp174, label %for.body176, label %for.end190

for.body176:                                      ; preds = %for.cond173
  %77 = load i8*, i8** %in.addr, align 8
  %78 = load i32, i32* %limi171, align 4
  %inc177 = add nsw i32 %78, 1
  store i32 %inc177, i32* %limi171, align 4
  %idxprom178 = sext i32 %78 to i64
  %arrayidx179 = getelementptr inbounds i8, i8* %77, i64 %idxprom178
  %79 = load i8, i8* %arrayidx179, align 1
  %conv180 = sext i8 %79 to i32
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv180)
  %80 = load i32, i32* %li172, align 4
  %rem182 = srem i32 %80, 8
  %cmp183 = icmp eq i32 %rem182, 7
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %for.body176
  %call186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %for.body176
  br label %for.inc188

for.inc188:                                       ; preds = %if.end187
  %81 = load i32, i32* %li172, align 4
  %inc189 = add nsw i32 %81, 1
  store i32 %inc189, i32* %li172, align 4
  br label %for.cond173

for.end190:                                       ; preds = %for.cond173
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %li192, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc208, %for.end190
  %82 = load i32, i32* %li192, align 4
  %cmp194 = icmp slt i32 %82, 32
  br i1 %cmp194, label %for.body196, label %for.end210

for.body196:                                      ; preds = %for.cond193
  %83 = load i8*, i8** %in.addr, align 8
  %84 = load i32, i32* %limi171, align 4
  %inc197 = add nsw i32 %84, 1
  store i32 %inc197, i32* %limi171, align 4
  %idxprom198 = sext i32 %84 to i64
  %arrayidx199 = getelementptr inbounds i8, i8* %83, i64 %idxprom198
  %85 = load i8, i8* %arrayidx199, align 1
  %conv200 = sext i8 %85 to i32
  %call201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv200)
  %86 = load i32, i32* %li192, align 4
  %rem202 = srem i32 %86, 8
  %cmp203 = icmp eq i32 %rem202, 7
  br i1 %cmp203, label %if.then205, label %if.end207

if.then205:                                       ; preds = %for.body196
  %call206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %for.body196
  br label %for.inc208

for.inc208:                                       ; preds = %if.end207
  %87 = load i32, i32* %li192, align 4
  %inc209 = add nsw i32 %87, 1
  store i32 %inc209, i32* %li192, align 4
  br label %for.cond193

for.end210:                                       ; preds = %for.cond193
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %li212, align 4
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc222, %for.end210
  %88 = load i32, i32* %li212, align 4
  %cmp214 = icmp slt i32 %88, 8
  br i1 %cmp214, label %for.body216, label %for.end224

for.body216:                                      ; preds = %for.cond213
  %89 = load i8*, i8** %in.addr, align 8
  %90 = load i32, i32* %limi171, align 4
  %inc217 = add nsw i32 %90, 1
  store i32 %inc217, i32* %limi171, align 4
  %idxprom218 = sext i32 %90 to i64
  %arrayidx219 = getelementptr inbounds i8, i8* %89, i64 %idxprom218
  %91 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %91 to i32
  %call221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv220)
  br label %for.inc222

for.inc222:                                       ; preds = %for.body216
  %92 = load i32, i32* %li212, align 4
  %inc223 = add nsw i32 %92, 1
  store i32 %inc223, i32* %li212, align 4
  br label %for.cond213

for.end224:                                       ; preds = %for.cond213
  %call225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %li226, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc242, %for.end224
  %93 = load i32, i32* %li226, align 4
  %cmp228 = icmp slt i32 %93, 32
  br i1 %cmp228, label %for.body230, label %for.end244

for.body230:                                      ; preds = %for.cond227
  %94 = load i8*, i8** %in.addr, align 8
  %95 = load i32, i32* %limi171, align 4
  %inc231 = add nsw i32 %95, 1
  store i32 %inc231, i32* %limi171, align 4
  %idxprom232 = sext i32 %95 to i64
  %arrayidx233 = getelementptr inbounds i8, i8* %94, i64 %idxprom232
  %96 = load i8, i8* %arrayidx233, align 1
  %conv234 = sext i8 %96 to i32
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv234)
  %97 = load i32, i32* %li226, align 4
  %rem236 = srem i32 %97, 8
  %cmp237 = icmp eq i32 %rem236, 7
  br i1 %cmp237, label %if.then239, label %if.end241

if.then239:                                       ; preds = %for.body230
  %call240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %for.body230
  br label %for.inc242

for.inc242:                                       ; preds = %if.end241
  %98 = load i32, i32* %li226, align 4
  %inc243 = add nsw i32 %98, 1
  store i32 %inc243, i32* %li226, align 4
  br label %for.cond227

for.end244:                                       ; preds = %for.cond227
  %call245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @esp_run(%struct.esp_accelerator_thread_info*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @validate_buffer(i8* %out, i8* %gold) #0 {
entry:
  %out.addr = alloca i8*, align 8
  %gold.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %errors = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8
  store i8* %gold, i8** %gold.addr, align 8
  store i32 0, i32* %errors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 18585
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i8*, i8** %gold.addr, align 8
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @out_words_adj, align 4
  %mul = mul i32 %3, %4
  %5 = load i32, i32* %j, align 4
  %add = add i32 %mul, %5
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %out.addr, align 8
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @out_words_adj, align 4
  %mul4 = mul i32 %8, %9
  %10 = load i32, i32* %j, align 4
  %add5 = add i32 %mul4, %10
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 %idxprom6
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %12 = load i32, i32* %errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %15 = load i32, i32* %errors, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @esp_cleanup(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_parameters() #0 {
entry:
  %call = call i32 @DMA_WORD_PER_BEAT(i32 1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 24852, i32* @in_words_adj, align 4
  store i32 18585, i32* @out_words_adj, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 @DMA_WORD_PER_BEAT(i32 1)
  %sub = sub i32 %call1, 1
  %or = or i32 24851, %sub
  %add = add i32 %or, 1
  store i32 %add, i32* @in_words_adj, align 4
  %call2 = call i32 @DMA_WORD_PER_BEAT(i32 1)
  %sub3 = sub i32 %call2, 1
  %or4 = or i32 18584, %sub3
  %add5 = add i32 %or4, 1
  store i32 %add5, i32* @out_words_adj, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* @in_words_adj, align 4
  %mul = mul i32 %0, 1
  store i32 %mul, i32* @in_len, align 4
  %1 = load i32, i32* @out_words_adj, align 4
  %mul6 = mul i32 %1, 1
  store i32 %mul6, i32* @out_len, align 4
  %2 = load i32, i32* @in_len, align 4
  %conv = zext i32 %2 to i64
  %mul7 = mul i64 %conv, 1
  %conv8 = trunc i64 %mul7 to i32
  store i32 %conv8, i32* @in_size, align 4
  %3 = load i32, i32* @out_len, align 4
  %conv9 = zext i32 %3 to i64
  %mul10 = mul i64 %conv9, 1
  %conv11 = trunc i64 %mul10 to i32
  store i32 %conv11, i32* @out_size, align 4
  %4 = load i32, i32* @in_len, align 4
  store i32 %4, i32* @out_offset, align 4
  %5 = load i32, i32* @out_offset, align 4
  %conv12 = zext i32 %5 to i64
  %mul13 = mul i64 %conv12, 1
  %6 = load i32, i32* @out_size, align 4
  %conv14 = zext i32 %6 to i64
  %add15 = add i64 %mul13, %conv14
  %conv16 = trunc i64 %add15 to i32
  store i32 %conv16, i32* @size, align 4
  ret void
}

declare i32 @DMA_WORD_PER_BEAT(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
