; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/evalloop/evalloop.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = global i32 0, align 4
@eval.dispatch = internal global [32 x i8*] [i8* blockaddress(@eval, %L0), i8* blockaddress(@eval, %L1), i8* blockaddress(@eval, %L2), i8* blockaddress(@eval, %L3), i8* blockaddress(@eval, %L4), i8* blockaddress(@eval, %L5), i8* blockaddress(@eval, %L6), i8* blockaddress(@eval, %L7), i8* blockaddress(@eval, %L8), i8* blockaddress(@eval, %L9), i8* blockaddress(@eval, %L10), i8* blockaddress(@eval, %L11), i8* blockaddress(@eval, %L12), i8* blockaddress(@eval, %L13), i8* blockaddress(@eval, %L14), i8* blockaddress(@eval, %L15), i8* blockaddress(@eval, %L16), i8* blockaddress(@eval, %L17), i8* blockaddress(@eval, %L18), i8* blockaddress(@eval, %L19), i8* blockaddress(@eval, %L20), i8* blockaddress(@eval, %L21), i8* blockaddress(@eval, %L22), i8* blockaddress(@eval, %L23), i8* blockaddress(@eval, %L24), i8* blockaddress(@eval, %L25), i8* blockaddress(@eval, %L26), i8* blockaddress(@eval, %L27), i8* blockaddress(@eval, %L28), i8* blockaddress(@eval, %L29), i8* blockaddress(@eval, %L30), i8* blockaddress(@eval, %L31)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @execute(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* @sum, align 4
  %add = add i32 %1, %0
  store i32 %add, i32* @sum, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @eval(i32* %p) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %opcode = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 0, i32* %opcode, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load i32*, i32** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1
  store i32* %incdec.ptr, i32** %p.addr, align 8
  %1 = load i32, i32* %0, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 4, label %sw.bb11
    i32 5, label %sw.bb15
    i32 6, label %sw.bb19
    i32 7, label %sw.bb23
    i32 8, label %sw.bb27
    i32 9, label %sw.bb31
    i32 10, label %sw.bb35
    i32 11, label %sw.bb39
    i32 12, label %sw.bb43
    i32 13, label %sw.bb47
    i32 14, label %sw.bb51
    i32 15, label %sw.bb55
    i32 16, label %sw.bb59
    i32 17, label %sw.bb63
    i32 18, label %sw.bb67
    i32 19, label %sw.bb71
    i32 20, label %sw.bb75
    i32 21, label %sw.bb79
    i32 22, label %sw.bb83
    i32 23, label %sw.bb87
    i32 24, label %sw.bb91
    i32 25, label %sw.bb95
    i32 26, label %sw.bb99
    i32 27, label %sw.bb103
    i32 28, label %sw.bb107
    i32 29, label %sw.bb111
    i32 30, label %sw.bb115
    i32 31, label %sw.bb119
  ]

L0:                                               ; preds = %indirectgoto
  store i32 0, i32* %opcode, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %while.body, %L0
  ret void

indirectgoto:                                     ; preds = %sw.bb119, %sw.bb115, %sw.bb111, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb1
  %indirect.goto.dest = phi i8* [ %5, %sw.bb1 ], [ %9, %sw.bb3 ], [ %13, %sw.bb7 ], [ %17, %sw.bb11 ], [ %21, %sw.bb15 ], [ %25, %sw.bb19 ], [ %29, %sw.bb23 ], [ %33, %sw.bb27 ], [ %37, %sw.bb31 ], [ %41, %sw.bb35 ], [ %45, %sw.bb39 ], [ %49, %sw.bb43 ], [ %53, %sw.bb47 ], [ %57, %sw.bb51 ], [ %61, %sw.bb55 ], [ %65, %sw.bb59 ], [ %69, %sw.bb63 ], [ %73, %sw.bb67 ], [ %77, %sw.bb71 ], [ %81, %sw.bb75 ], [ %85, %sw.bb79 ], [ %89, %sw.bb83 ], [ %93, %sw.bb87 ], [ %97, %sw.bb91 ], [ %101, %sw.bb95 ], [ %105, %sw.bb99 ], [ %109, %sw.bb103 ], [ %113, %sw.bb107 ], [ %117, %sw.bb111 ], [ %121, %sw.bb115 ], [ %125, %sw.bb119 ]
  indirectbr i8* %indirect.goto.dest, [label %L0, label %L1, label %L2, label %L3, label %L4, label %L5, label %L6, label %L7, label %L8, label %L9, label %L10, label %L11, label %L12, label %L13, label %L14, label %L15, label %L16, label %L17, label %L18, label %L19, label %L20, label %L21, label %L22, label %L23, label %L24, label %L25, label %L26, label %L27, label %L28, label %L29, label %L30, label %L31]

L1:                                               ; preds = %indirectgoto
  store i32 1, i32* %opcode, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %while.body, %L1
  %2 = load i32, i32* %opcode, align 4
  call void @execute(i32 %2)
  %3 = load i32*, i32** %p.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr2, i32** %p.addr, align 8
  %4 = load i32, i32* %3, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  br label %indirectgoto

L2:                                               ; preds = %indirectgoto
  store i32 2, i32* %opcode, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %while.body, %L2
  %6 = load i32, i32* %opcode, align 4
  call void @execute(i32 %6)
  %7 = load i32*, i32** %p.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr4, i32** %p.addr, align 8
  %8 = load i32, i32* %7, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8
  br label %indirectgoto

L3:                                               ; preds = %indirectgoto
  store i32 3, i32* %opcode, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %while.body, %L3
  %10 = load i32, i32* %opcode, align 4
  call void @execute(i32 %10)
  %11 = load i32*, i32** %p.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr8, i32** %p.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  br label %indirectgoto

L4:                                               ; preds = %indirectgoto
  store i32 4, i32* %opcode, align 4
  br label %sw.bb11

sw.bb11:                                          ; preds = %while.body, %L4
  %14 = load i32, i32* %opcode, align 4
  call void @execute(i32 %14)
  %15 = load i32*, i32** %p.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr12, i32** %p.addr, align 8
  %16 = load i32, i32* %15, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom13
  %17 = load i8*, i8** %arrayidx14, align 8
  br label %indirectgoto

L5:                                               ; preds = %indirectgoto
  store i32 5, i32* %opcode, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %while.body, %L5
  %18 = load i32, i32* %opcode, align 4
  call void @execute(i32 %18)
  %19 = load i32*, i32** %p.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr16, i32** %p.addr, align 8
  %20 = load i32, i32* %19, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom17
  %21 = load i8*, i8** %arrayidx18, align 8
  br label %indirectgoto

L6:                                               ; preds = %indirectgoto
  store i32 6, i32* %opcode, align 4
  br label %sw.bb19

sw.bb19:                                          ; preds = %while.body, %L6
  %22 = load i32, i32* %opcode, align 4
  call void @execute(i32 %22)
  %23 = load i32*, i32** %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr20, i32** %p.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8
  br label %indirectgoto

L7:                                               ; preds = %indirectgoto
  store i32 7, i32* %opcode, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %while.body, %L7
  %26 = load i32, i32* %opcode, align 4
  call void @execute(i32 %26)
  %27 = load i32*, i32** %p.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %incdec.ptr24, i32** %p.addr, align 8
  %28 = load i32, i32* %27, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom25
  %29 = load i8*, i8** %arrayidx26, align 8
  br label %indirectgoto

L8:                                               ; preds = %indirectgoto
  store i32 8, i32* %opcode, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %while.body, %L8
  %30 = load i32, i32* %opcode, align 4
  call void @execute(i32 %30)
  %31 = load i32*, i32** %p.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr28, i32** %p.addr, align 8
  %32 = load i32, i32* %31, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom29
  %33 = load i8*, i8** %arrayidx30, align 8
  br label %indirectgoto

L9:                                               ; preds = %indirectgoto
  store i32 9, i32* %opcode, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %while.body, %L9
  %34 = load i32, i32* %opcode, align 4
  call void @execute(i32 %34)
  %35 = load i32*, i32** %p.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %incdec.ptr32, i32** %p.addr, align 8
  %36 = load i32, i32* %35, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom33
  %37 = load i8*, i8** %arrayidx34, align 8
  br label %indirectgoto

L10:                                              ; preds = %indirectgoto
  store i32 10, i32* %opcode, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %while.body, %L10
  %38 = load i32, i32* %opcode, align 4
  call void @execute(i32 %38)
  %39 = load i32*, i32** %p.addr, align 8
  %incdec.ptr36 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %incdec.ptr36, i32** %p.addr, align 8
  %40 = load i32, i32* %39, align 4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom37
  %41 = load i8*, i8** %arrayidx38, align 8
  br label %indirectgoto

L11:                                              ; preds = %indirectgoto
  store i32 11, i32* %opcode, align 4
  br label %sw.bb39

sw.bb39:                                          ; preds = %while.body, %L11
  %42 = load i32, i32* %opcode, align 4
  call void @execute(i32 %42)
  %43 = load i32*, i32** %p.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr40, i32** %p.addr, align 8
  %44 = load i32, i32* %43, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom41
  %45 = load i8*, i8** %arrayidx42, align 8
  br label %indirectgoto

L12:                                              ; preds = %indirectgoto
  store i32 12, i32* %opcode, align 4
  br label %sw.bb43

sw.bb43:                                          ; preds = %while.body, %L12
  %46 = load i32, i32* %opcode, align 4
  call void @execute(i32 %46)
  %47 = load i32*, i32** %p.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %incdec.ptr44, i32** %p.addr, align 8
  %48 = load i32, i32* %47, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom45
  %49 = load i8*, i8** %arrayidx46, align 8
  br label %indirectgoto

L13:                                              ; preds = %indirectgoto
  store i32 13, i32* %opcode, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %while.body, %L13
  %50 = load i32, i32* %opcode, align 4
  call void @execute(i32 %50)
  %51 = load i32*, i32** %p.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %incdec.ptr48, i32** %p.addr, align 8
  %52 = load i32, i32* %51, align 4
  %idxprom49 = sext i32 %52 to i64
  %arrayidx50 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom49
  %53 = load i8*, i8** %arrayidx50, align 8
  br label %indirectgoto

L14:                                              ; preds = %indirectgoto
  store i32 14, i32* %opcode, align 4
  br label %sw.bb51

sw.bb51:                                          ; preds = %while.body, %L14
  %54 = load i32, i32* %opcode, align 4
  call void @execute(i32 %54)
  %55 = load i32*, i32** %p.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %incdec.ptr52, i32** %p.addr, align 8
  %56 = load i32, i32* %55, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom53
  %57 = load i8*, i8** %arrayidx54, align 8
  br label %indirectgoto

L15:                                              ; preds = %indirectgoto
  store i32 15, i32* %opcode, align 4
  br label %sw.bb55

sw.bb55:                                          ; preds = %while.body, %L15
  %58 = load i32, i32* %opcode, align 4
  call void @execute(i32 %58)
  %59 = load i32*, i32** %p.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %incdec.ptr56, i32** %p.addr, align 8
  %60 = load i32, i32* %59, align 4
  %idxprom57 = sext i32 %60 to i64
  %arrayidx58 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom57
  %61 = load i8*, i8** %arrayidx58, align 8
  br label %indirectgoto

L16:                                              ; preds = %indirectgoto
  store i32 16, i32* %opcode, align 4
  br label %sw.bb59

sw.bb59:                                          ; preds = %while.body, %L16
  %62 = load i32, i32* %opcode, align 4
  call void @execute(i32 %62)
  %63 = load i32*, i32** %p.addr, align 8
  %incdec.ptr60 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %incdec.ptr60, i32** %p.addr, align 8
  %64 = load i32, i32* %63, align 4
  %idxprom61 = sext i32 %64 to i64
  %arrayidx62 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom61
  %65 = load i8*, i8** %arrayidx62, align 8
  br label %indirectgoto

L17:                                              ; preds = %indirectgoto
  store i32 17, i32* %opcode, align 4
  br label %sw.bb63

sw.bb63:                                          ; preds = %while.body, %L17
  %66 = load i32, i32* %opcode, align 4
  call void @execute(i32 %66)
  %67 = load i32*, i32** %p.addr, align 8
  %incdec.ptr64 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %incdec.ptr64, i32** %p.addr, align 8
  %68 = load i32, i32* %67, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom65
  %69 = load i8*, i8** %arrayidx66, align 8
  br label %indirectgoto

L18:                                              ; preds = %indirectgoto
  store i32 18, i32* %opcode, align 4
  br label %sw.bb67

sw.bb67:                                          ; preds = %while.body, %L18
  %70 = load i32, i32* %opcode, align 4
  call void @execute(i32 %70)
  %71 = load i32*, i32** %p.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr68, i32** %p.addr, align 8
  %72 = load i32, i32* %71, align 4
  %idxprom69 = sext i32 %72 to i64
  %arrayidx70 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom69
  %73 = load i8*, i8** %arrayidx70, align 8
  br label %indirectgoto

L19:                                              ; preds = %indirectgoto
  store i32 19, i32* %opcode, align 4
  br label %sw.bb71

sw.bb71:                                          ; preds = %while.body, %L19
  %74 = load i32, i32* %opcode, align 4
  call void @execute(i32 %74)
  %75 = load i32*, i32** %p.addr, align 8
  %incdec.ptr72 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %incdec.ptr72, i32** %p.addr, align 8
  %76 = load i32, i32* %75, align 4
  %idxprom73 = sext i32 %76 to i64
  %arrayidx74 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom73
  %77 = load i8*, i8** %arrayidx74, align 8
  br label %indirectgoto

L20:                                              ; preds = %indirectgoto
  store i32 20, i32* %opcode, align 4
  br label %sw.bb75

sw.bb75:                                          ; preds = %while.body, %L20
  %78 = load i32, i32* %opcode, align 4
  call void @execute(i32 %78)
  %79 = load i32*, i32** %p.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %incdec.ptr76, i32** %p.addr, align 8
  %80 = load i32, i32* %79, align 4
  %idxprom77 = sext i32 %80 to i64
  %arrayidx78 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom77
  %81 = load i8*, i8** %arrayidx78, align 8
  br label %indirectgoto

L21:                                              ; preds = %indirectgoto
  store i32 21, i32* %opcode, align 4
  br label %sw.bb79

sw.bb79:                                          ; preds = %while.body, %L21
  %82 = load i32, i32* %opcode, align 4
  call void @execute(i32 %82)
  %83 = load i32*, i32** %p.addr, align 8
  %incdec.ptr80 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %incdec.ptr80, i32** %p.addr, align 8
  %84 = load i32, i32* %83, align 4
  %idxprom81 = sext i32 %84 to i64
  %arrayidx82 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom81
  %85 = load i8*, i8** %arrayidx82, align 8
  br label %indirectgoto

L22:                                              ; preds = %indirectgoto
  store i32 22, i32* %opcode, align 4
  br label %sw.bb83

sw.bb83:                                          ; preds = %while.body, %L22
  %86 = load i32, i32* %opcode, align 4
  call void @execute(i32 %86)
  %87 = load i32*, i32** %p.addr, align 8
  %incdec.ptr84 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %incdec.ptr84, i32** %p.addr, align 8
  %88 = load i32, i32* %87, align 4
  %idxprom85 = sext i32 %88 to i64
  %arrayidx86 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom85
  %89 = load i8*, i8** %arrayidx86, align 8
  br label %indirectgoto

L23:                                              ; preds = %indirectgoto
  store i32 23, i32* %opcode, align 4
  br label %sw.bb87

sw.bb87:                                          ; preds = %while.body, %L23
  %90 = load i32, i32* %opcode, align 4
  call void @execute(i32 %90)
  %91 = load i32*, i32** %p.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %incdec.ptr88, i32** %p.addr, align 8
  %92 = load i32, i32* %91, align 4
  %idxprom89 = sext i32 %92 to i64
  %arrayidx90 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom89
  %93 = load i8*, i8** %arrayidx90, align 8
  br label %indirectgoto

L24:                                              ; preds = %indirectgoto
  store i32 24, i32* %opcode, align 4
  br label %sw.bb91

sw.bb91:                                          ; preds = %while.body, %L24
  %94 = load i32, i32* %opcode, align 4
  call void @execute(i32 %94)
  %95 = load i32*, i32** %p.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %incdec.ptr92, i32** %p.addr, align 8
  %96 = load i32, i32* %95, align 4
  %idxprom93 = sext i32 %96 to i64
  %arrayidx94 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom93
  %97 = load i8*, i8** %arrayidx94, align 8
  br label %indirectgoto

L25:                                              ; preds = %indirectgoto
  store i32 25, i32* %opcode, align 4
  br label %sw.bb95

sw.bb95:                                          ; preds = %while.body, %L25
  %98 = load i32, i32* %opcode, align 4
  call void @execute(i32 %98)
  %99 = load i32*, i32** %p.addr, align 8
  %incdec.ptr96 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %incdec.ptr96, i32** %p.addr, align 8
  %100 = load i32, i32* %99, align 4
  %idxprom97 = sext i32 %100 to i64
  %arrayidx98 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom97
  %101 = load i8*, i8** %arrayidx98, align 8
  br label %indirectgoto

L26:                                              ; preds = %indirectgoto
  store i32 26, i32* %opcode, align 4
  br label %sw.bb99

sw.bb99:                                          ; preds = %while.body, %L26
  %102 = load i32, i32* %opcode, align 4
  call void @execute(i32 %102)
  %103 = load i32*, i32** %p.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %incdec.ptr100, i32** %p.addr, align 8
  %104 = load i32, i32* %103, align 4
  %idxprom101 = sext i32 %104 to i64
  %arrayidx102 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom101
  %105 = load i8*, i8** %arrayidx102, align 8
  br label %indirectgoto

L27:                                              ; preds = %indirectgoto
  store i32 27, i32* %opcode, align 4
  br label %sw.bb103

sw.bb103:                                         ; preds = %while.body, %L27
  %106 = load i32, i32* %opcode, align 4
  call void @execute(i32 %106)
  %107 = load i32*, i32** %p.addr, align 8
  %incdec.ptr104 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %incdec.ptr104, i32** %p.addr, align 8
  %108 = load i32, i32* %107, align 4
  %idxprom105 = sext i32 %108 to i64
  %arrayidx106 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom105
  %109 = load i8*, i8** %arrayidx106, align 8
  br label %indirectgoto

L28:                                              ; preds = %indirectgoto
  store i32 28, i32* %opcode, align 4
  br label %sw.bb107

sw.bb107:                                         ; preds = %while.body, %L28
  %110 = load i32, i32* %opcode, align 4
  call void @execute(i32 %110)
  %111 = load i32*, i32** %p.addr, align 8
  %incdec.ptr108 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr108, i32** %p.addr, align 8
  %112 = load i32, i32* %111, align 4
  %idxprom109 = sext i32 %112 to i64
  %arrayidx110 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom109
  %113 = load i8*, i8** %arrayidx110, align 8
  br label %indirectgoto

L29:                                              ; preds = %indirectgoto
  store i32 29, i32* %opcode, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %while.body, %L29
  %114 = load i32, i32* %opcode, align 4
  call void @execute(i32 %114)
  %115 = load i32*, i32** %p.addr, align 8
  %incdec.ptr112 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %incdec.ptr112, i32** %p.addr, align 8
  %116 = load i32, i32* %115, align 4
  %idxprom113 = sext i32 %116 to i64
  %arrayidx114 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom113
  %117 = load i8*, i8** %arrayidx114, align 8
  br label %indirectgoto

L30:                                              ; preds = %indirectgoto
  store i32 30, i32* %opcode, align 4
  br label %sw.bb115

sw.bb115:                                         ; preds = %while.body, %L30
  %118 = load i32, i32* %opcode, align 4
  call void @execute(i32 %118)
  %119 = load i32*, i32** %p.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %incdec.ptr116, i32** %p.addr, align 8
  %120 = load i32, i32* %119, align 4
  %idxprom117 = sext i32 %120 to i64
  %arrayidx118 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom117
  %121 = load i8*, i8** %arrayidx118, align 8
  br label %indirectgoto

L31:                                              ; preds = %indirectgoto
  store i32 31, i32* %opcode, align 4
  br label %sw.bb119

sw.bb119:                                         ; preds = %while.body, %L31
  %122 = load i32, i32* %opcode, align 4
  call void @execute(i32 %122)
  %123 = load i32*, i32** %p.addr, align 8
  %incdec.ptr120 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %incdec.ptr120, i32** %p.addr, align 8
  %124 = load i32, i32* %123, align 4
  %idxprom121 = sext i32 %124 to i64
  %arrayidx122 = getelementptr inbounds [32 x i8*], [32 x i8*]* @eval.dispatch, i64 0, i64 %idxprom121
  %125 = load i8*, i8** %arrayidx122, align 8
  br label %indirectgoto

sw.epilog:                                        ; preds = %while.body
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BUFSIZE = alloca i32, align 4
  %cmds = alloca [2048 x i32], align 16
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2048, i32* %BUFSIZE, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2047
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 31
  %add = add nsw i32 %rem, 1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2048 x i32], [2048 x i32]* %cmds, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [2048 x i32], [2048 x i32]* %cmds, i64 0, i64 2047
  store i32 0, i32* %arrayidx1, align 4
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc6, %for.end
  %4 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %4, 100000
  br i1 %cmp4, label %for.body5, label %for.end8

for.body5:                                        ; preds = %for.cond3
  %arraydecay = getelementptr inbounds [2048 x i32], [2048 x i32]* %cmds, i32 0, i32 0
  call void @eval(i32* %arraydecay)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5
  %5 = load i32, i32* %i2, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i2, align 4
  br label %for.cond3

for.end8:                                         ; preds = %for.cond3
  %6 = load i32, i32* @sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 %6)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
