; ModuleID = 'salsa20/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptr = global i32 0, align 4
@outbuf = common global [16 x i32] zeroinitializer, align 16
@STATE = common global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"got:       %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"should be: %x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @salsa20(i32* %out, i32* %in) #0 {
entry:
  %out.addr = alloca i32*, align 8
  %in.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %x = alloca [16 x i32], align 16
  store i32* %out, i32** %out.addr, align 8
  store i32* %in, i32** %in.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %in.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 20, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc353, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp ugt i32 %6, 0
  br i1 %cmp4, label %for.body5, label %for.end354

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %7 = load i32, i32* %arrayidx6, align 16
  %arrayidx7 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %8 = load i32, i32* %arrayidx7, align 16
  %add = add i32 %7, %8
  %shl = shl i32 %add, 7
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %9 = load i32, i32* %arrayidx8, align 16
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %10 = load i32, i32* %arrayidx9, align 16
  %add10 = add i32 %9, %10
  %shr = lshr i32 %add10, 25
  %or = or i32 %shl, %shr
  %arrayidx11 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %11 = load i32, i32* %arrayidx11, align 16
  %xor = xor i32 %11, %or
  store i32 %xor, i32* %arrayidx11, align 16
  %arrayidx12 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %12 = load i32, i32* %arrayidx12, align 16
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %13 = load i32, i32* %arrayidx13, align 16
  %add14 = add i32 %12, %13
  %shl15 = shl i32 %add14, 9
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %14 = load i32, i32* %arrayidx16, align 16
  %arrayidx17 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %15 = load i32, i32* %arrayidx17, align 16
  %add18 = add i32 %14, %15
  %shr19 = lshr i32 %add18, 23
  %or20 = or i32 %shl15, %shr19
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %16 = load i32, i32* %arrayidx21, align 16
  %xor22 = xor i32 %16, %or20
  store i32 %xor22, i32* %arrayidx21, align 16
  %arrayidx23 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %17 = load i32, i32* %arrayidx23, align 16
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %18 = load i32, i32* %arrayidx24, align 16
  %add25 = add i32 %17, %18
  %shl26 = shl i32 %add25, 13
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %19 = load i32, i32* %arrayidx27, align 16
  %arrayidx28 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %20 = load i32, i32* %arrayidx28, align 16
  %add29 = add i32 %19, %20
  %shr30 = lshr i32 %add29, 19
  %or31 = or i32 %shl26, %shr30
  %arrayidx32 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %21 = load i32, i32* %arrayidx32, align 16
  %xor33 = xor i32 %21, %or31
  store i32 %xor33, i32* %arrayidx32, align 16
  %arrayidx34 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %22 = load i32, i32* %arrayidx34, align 16
  %arrayidx35 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %23 = load i32, i32* %arrayidx35, align 16
  %add36 = add i32 %22, %23
  %shl37 = shl i32 %add36, 18
  %arrayidx38 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %24 = load i32, i32* %arrayidx38, align 16
  %arrayidx39 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %25 = load i32, i32* %arrayidx39, align 16
  %add40 = add i32 %24, %25
  %shr41 = lshr i32 %add40, 14
  %or42 = or i32 %shl37, %shr41
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %26 = load i32, i32* %arrayidx43, align 16
  %xor44 = xor i32 %26, %or42
  store i32 %xor44, i32* %arrayidx43, align 16
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %27 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %28 = load i32, i32* %arrayidx46, align 4
  %add47 = add i32 %27, %28
  %shl48 = shl i32 %add47, 7
  %arrayidx49 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %29 = load i32, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %30 = load i32, i32* %arrayidx50, align 4
  %add51 = add i32 %29, %30
  %shr52 = lshr i32 %add51, 25
  %or53 = or i32 %shl48, %shr52
  %arrayidx54 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %31 = load i32, i32* %arrayidx54, align 4
  %xor55 = xor i32 %31, %or53
  store i32 %xor55, i32* %arrayidx54, align 4
  %arrayidx56 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %32 = load i32, i32* %arrayidx56, align 4
  %arrayidx57 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %33 = load i32, i32* %arrayidx57, align 4
  %add58 = add i32 %32, %33
  %shl59 = shl i32 %add58, 9
  %arrayidx60 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %34 = load i32, i32* %arrayidx60, align 4
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %35 = load i32, i32* %arrayidx61, align 4
  %add62 = add i32 %34, %35
  %shr63 = lshr i32 %add62, 23
  %or64 = or i32 %shl59, %shr63
  %arrayidx65 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %36 = load i32, i32* %arrayidx65, align 4
  %xor66 = xor i32 %36, %or64
  store i32 %xor66, i32* %arrayidx65, align 4
  %arrayidx67 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %37 = load i32, i32* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %38 = load i32, i32* %arrayidx68, align 4
  %add69 = add i32 %37, %38
  %shl70 = shl i32 %add69, 13
  %arrayidx71 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %39 = load i32, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %40 = load i32, i32* %arrayidx72, align 4
  %add73 = add i32 %39, %40
  %shr74 = lshr i32 %add73, 19
  %or75 = or i32 %shl70, %shr74
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %41 = load i32, i32* %arrayidx76, align 4
  %xor77 = xor i32 %41, %or75
  store i32 %xor77, i32* %arrayidx76, align 4
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %42 = load i32, i32* %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %43 = load i32, i32* %arrayidx79, align 4
  %add80 = add i32 %42, %43
  %shl81 = shl i32 %add80, 18
  %arrayidx82 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %44 = load i32, i32* %arrayidx82, align 4
  %arrayidx83 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %45 = load i32, i32* %arrayidx83, align 4
  %add84 = add i32 %44, %45
  %shr85 = lshr i32 %add84, 14
  %or86 = or i32 %shl81, %shr85
  %arrayidx87 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %46 = load i32, i32* %arrayidx87, align 4
  %xor88 = xor i32 %46, %or86
  store i32 %xor88, i32* %arrayidx87, align 4
  %arrayidx89 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %47 = load i32, i32* %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %48 = load i32, i32* %arrayidx90, align 8
  %add91 = add i32 %47, %48
  %shl92 = shl i32 %add91, 7
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %49 = load i32, i32* %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %50 = load i32, i32* %arrayidx94, align 8
  %add95 = add i32 %49, %50
  %shr96 = lshr i32 %add95, 25
  %or97 = or i32 %shl92, %shr96
  %arrayidx98 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %51 = load i32, i32* %arrayidx98, align 8
  %xor99 = xor i32 %51, %or97
  store i32 %xor99, i32* %arrayidx98, align 8
  %arrayidx100 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %52 = load i32, i32* %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %53 = load i32, i32* %arrayidx101, align 8
  %add102 = add i32 %52, %53
  %shl103 = shl i32 %add102, 9
  %arrayidx104 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %54 = load i32, i32* %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %55 = load i32, i32* %arrayidx105, align 8
  %add106 = add i32 %54, %55
  %shr107 = lshr i32 %add106, 23
  %or108 = or i32 %shl103, %shr107
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %56 = load i32, i32* %arrayidx109, align 8
  %xor110 = xor i32 %56, %or108
  store i32 %xor110, i32* %arrayidx109, align 8
  %arrayidx111 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %57 = load i32, i32* %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %58 = load i32, i32* %arrayidx112, align 8
  %add113 = add i32 %57, %58
  %shl114 = shl i32 %add113, 13
  %arrayidx115 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %59 = load i32, i32* %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %60 = load i32, i32* %arrayidx116, align 8
  %add117 = add i32 %59, %60
  %shr118 = lshr i32 %add117, 19
  %or119 = or i32 %shl114, %shr118
  %arrayidx120 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %61 = load i32, i32* %arrayidx120, align 8
  %xor121 = xor i32 %61, %or119
  store i32 %xor121, i32* %arrayidx120, align 8
  %arrayidx122 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %62 = load i32, i32* %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %63 = load i32, i32* %arrayidx123, align 8
  %add124 = add i32 %62, %63
  %shl125 = shl i32 %add124, 18
  %arrayidx126 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %64 = load i32, i32* %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %65 = load i32, i32* %arrayidx127, align 8
  %add128 = add i32 %64, %65
  %shr129 = lshr i32 %add128, 14
  %or130 = or i32 %shl125, %shr129
  %arrayidx131 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %66 = load i32, i32* %arrayidx131, align 8
  %xor132 = xor i32 %66, %or130
  store i32 %xor132, i32* %arrayidx131, align 8
  %arrayidx133 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %67 = load i32, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %68 = load i32, i32* %arrayidx134, align 4
  %add135 = add i32 %67, %68
  %shl136 = shl i32 %add135, 7
  %arrayidx137 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %69 = load i32, i32* %arrayidx137, align 4
  %arrayidx138 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %70 = load i32, i32* %arrayidx138, align 4
  %add139 = add i32 %69, %70
  %shr140 = lshr i32 %add139, 25
  %or141 = or i32 %shl136, %shr140
  %arrayidx142 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %71 = load i32, i32* %arrayidx142, align 4
  %xor143 = xor i32 %71, %or141
  store i32 %xor143, i32* %arrayidx142, align 4
  %arrayidx144 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %72 = load i32, i32* %arrayidx144, align 4
  %arrayidx145 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %73 = load i32, i32* %arrayidx145, align 4
  %add146 = add i32 %72, %73
  %shl147 = shl i32 %add146, 9
  %arrayidx148 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %74 = load i32, i32* %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %75 = load i32, i32* %arrayidx149, align 4
  %add150 = add i32 %74, %75
  %shr151 = lshr i32 %add150, 23
  %or152 = or i32 %shl147, %shr151
  %arrayidx153 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %76 = load i32, i32* %arrayidx153, align 4
  %xor154 = xor i32 %76, %or152
  store i32 %xor154, i32* %arrayidx153, align 4
  %arrayidx155 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %77 = load i32, i32* %arrayidx155, align 4
  %arrayidx156 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %78 = load i32, i32* %arrayidx156, align 4
  %add157 = add i32 %77, %78
  %shl158 = shl i32 %add157, 13
  %arrayidx159 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %79 = load i32, i32* %arrayidx159, align 4
  %arrayidx160 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %80 = load i32, i32* %arrayidx160, align 4
  %add161 = add i32 %79, %80
  %shr162 = lshr i32 %add161, 19
  %or163 = or i32 %shl158, %shr162
  %arrayidx164 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %81 = load i32, i32* %arrayidx164, align 4
  %xor165 = xor i32 %81, %or163
  store i32 %xor165, i32* %arrayidx164, align 4
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %82 = load i32, i32* %arrayidx166, align 4
  %arrayidx167 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %83 = load i32, i32* %arrayidx167, align 4
  %add168 = add i32 %82, %83
  %shl169 = shl i32 %add168, 18
  %arrayidx170 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %84 = load i32, i32* %arrayidx170, align 4
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %85 = load i32, i32* %arrayidx171, align 4
  %add172 = add i32 %84, %85
  %shr173 = lshr i32 %add172, 14
  %or174 = or i32 %shl169, %shr173
  %arrayidx175 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %86 = load i32, i32* %arrayidx175, align 4
  %xor176 = xor i32 %86, %or174
  store i32 %xor176, i32* %arrayidx175, align 4
  %arrayidx177 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %87 = load i32, i32* %arrayidx177, align 16
  %arrayidx178 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %88 = load i32, i32* %arrayidx178, align 4
  %add179 = add i32 %87, %88
  %shl180 = shl i32 %add179, 7
  %arrayidx181 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %89 = load i32, i32* %arrayidx181, align 16
  %arrayidx182 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %90 = load i32, i32* %arrayidx182, align 4
  %add183 = add i32 %89, %90
  %shr184 = lshr i32 %add183, 25
  %or185 = or i32 %shl180, %shr184
  %arrayidx186 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %91 = load i32, i32* %arrayidx186, align 4
  %xor187 = xor i32 %91, %or185
  store i32 %xor187, i32* %arrayidx186, align 4
  %arrayidx188 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %92 = load i32, i32* %arrayidx188, align 4
  %arrayidx189 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %93 = load i32, i32* %arrayidx189, align 16
  %add190 = add i32 %92, %93
  %shl191 = shl i32 %add190, 9
  %arrayidx192 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %94 = load i32, i32* %arrayidx192, align 4
  %arrayidx193 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %95 = load i32, i32* %arrayidx193, align 16
  %add194 = add i32 %94, %95
  %shr195 = lshr i32 %add194, 23
  %or196 = or i32 %shl191, %shr195
  %arrayidx197 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %96 = load i32, i32* %arrayidx197, align 8
  %xor198 = xor i32 %96, %or196
  store i32 %xor198, i32* %arrayidx197, align 8
  %arrayidx199 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %97 = load i32, i32* %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %98 = load i32, i32* %arrayidx200, align 4
  %add201 = add i32 %97, %98
  %shl202 = shl i32 %add201, 13
  %arrayidx203 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %99 = load i32, i32* %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 1
  %100 = load i32, i32* %arrayidx204, align 4
  %add205 = add i32 %99, %100
  %shr206 = lshr i32 %add205, 19
  %or207 = or i32 %shl202, %shr206
  %arrayidx208 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %101 = load i32, i32* %arrayidx208, align 4
  %xor209 = xor i32 %101, %or207
  store i32 %xor209, i32* %arrayidx208, align 4
  %arrayidx210 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %102 = load i32, i32* %arrayidx210, align 4
  %arrayidx211 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %103 = load i32, i32* %arrayidx211, align 8
  %add212 = add i32 %102, %103
  %shl213 = shl i32 %add212, 18
  %arrayidx214 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 3
  %104 = load i32, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 2
  %105 = load i32, i32* %arrayidx215, align 8
  %add216 = add i32 %104, %105
  %shr217 = lshr i32 %add216, 14
  %or218 = or i32 %shl213, %shr217
  %arrayidx219 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 0
  %106 = load i32, i32* %arrayidx219, align 16
  %xor220 = xor i32 %106, %or218
  store i32 %xor220, i32* %arrayidx219, align 16
  %arrayidx221 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %107 = load i32, i32* %arrayidx221, align 4
  %arrayidx222 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %108 = load i32, i32* %arrayidx222, align 16
  %add223 = add i32 %107, %108
  %shl224 = shl i32 %add223, 7
  %arrayidx225 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %109 = load i32, i32* %arrayidx225, align 4
  %arrayidx226 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %110 = load i32, i32* %arrayidx226, align 16
  %add227 = add i32 %109, %110
  %shr228 = lshr i32 %add227, 25
  %or229 = or i32 %shl224, %shr228
  %arrayidx230 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %111 = load i32, i32* %arrayidx230, align 8
  %xor231 = xor i32 %111, %or229
  store i32 %xor231, i32* %arrayidx230, align 8
  %arrayidx232 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %112 = load i32, i32* %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %113 = load i32, i32* %arrayidx233, align 4
  %add234 = add i32 %112, %113
  %shl235 = shl i32 %add234, 9
  %arrayidx236 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %114 = load i32, i32* %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %115 = load i32, i32* %arrayidx237, align 4
  %add238 = add i32 %114, %115
  %shr239 = lshr i32 %add238, 23
  %or240 = or i32 %shl235, %shr239
  %arrayidx241 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %116 = load i32, i32* %arrayidx241, align 4
  %xor242 = xor i32 %116, %or240
  store i32 %xor242, i32* %arrayidx241, align 4
  %arrayidx243 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %117 = load i32, i32* %arrayidx243, align 4
  %arrayidx244 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %118 = load i32, i32* %arrayidx244, align 8
  %add245 = add i32 %117, %118
  %shl246 = shl i32 %add245, 13
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %119 = load i32, i32* %arrayidx247, align 4
  %arrayidx248 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 6
  %120 = load i32, i32* %arrayidx248, align 8
  %add249 = add i32 %119, %120
  %shr250 = lshr i32 %add249, 19
  %or251 = or i32 %shl246, %shr250
  %arrayidx252 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %121 = load i32, i32* %arrayidx252, align 16
  %xor253 = xor i32 %121, %or251
  store i32 %xor253, i32* %arrayidx252, align 16
  %arrayidx254 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %122 = load i32, i32* %arrayidx254, align 16
  %arrayidx255 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %123 = load i32, i32* %arrayidx255, align 4
  %add256 = add i32 %122, %123
  %shl257 = shl i32 %add256, 18
  %arrayidx258 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 4
  %124 = load i32, i32* %arrayidx258, align 16
  %arrayidx259 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 7
  %125 = load i32, i32* %arrayidx259, align 4
  %add260 = add i32 %124, %125
  %shr261 = lshr i32 %add260, 14
  %or262 = or i32 %shl257, %shr261
  %arrayidx263 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 5
  %126 = load i32, i32* %arrayidx263, align 4
  %xor264 = xor i32 %126, %or262
  store i32 %xor264, i32* %arrayidx263, align 4
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %127 = load i32, i32* %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %128 = load i32, i32* %arrayidx266, align 4
  %add267 = add i32 %127, %128
  %shl268 = shl i32 %add267, 7
  %arrayidx269 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %129 = load i32, i32* %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %130 = load i32, i32* %arrayidx270, align 4
  %add271 = add i32 %129, %130
  %shr272 = lshr i32 %add271, 25
  %or273 = or i32 %shl268, %shr272
  %arrayidx274 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %131 = load i32, i32* %arrayidx274, align 4
  %xor275 = xor i32 %131, %or273
  store i32 %xor275, i32* %arrayidx274, align 4
  %arrayidx276 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %132 = load i32, i32* %arrayidx276, align 4
  %arrayidx277 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %133 = load i32, i32* %arrayidx277, align 8
  %add278 = add i32 %132, %133
  %shl279 = shl i32 %add278, 9
  %arrayidx280 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %134 = load i32, i32* %arrayidx280, align 4
  %arrayidx281 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %135 = load i32, i32* %arrayidx281, align 8
  %add282 = add i32 %134, %135
  %shr283 = lshr i32 %add282, 23
  %or284 = or i32 %shl279, %shr283
  %arrayidx285 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %136 = load i32, i32* %arrayidx285, align 16
  %xor286 = xor i32 %136, %or284
  store i32 %xor286, i32* %arrayidx285, align 16
  %arrayidx287 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %137 = load i32, i32* %arrayidx287, align 16
  %arrayidx288 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %138 = load i32, i32* %arrayidx288, align 4
  %add289 = add i32 %137, %138
  %shl290 = shl i32 %add289, 13
  %arrayidx291 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %139 = load i32, i32* %arrayidx291, align 16
  %arrayidx292 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 11
  %140 = load i32, i32* %arrayidx292, align 4
  %add293 = add i32 %139, %140
  %shr294 = lshr i32 %add293, 19
  %or295 = or i32 %shl290, %shr294
  %arrayidx296 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %141 = load i32, i32* %arrayidx296, align 4
  %xor297 = xor i32 %141, %or295
  store i32 %xor297, i32* %arrayidx296, align 4
  %arrayidx298 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %142 = load i32, i32* %arrayidx298, align 4
  %arrayidx299 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %143 = load i32, i32* %arrayidx299, align 16
  %add300 = add i32 %142, %143
  %shl301 = shl i32 %add300, 18
  %arrayidx302 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 9
  %144 = load i32, i32* %arrayidx302, align 4
  %arrayidx303 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 8
  %145 = load i32, i32* %arrayidx303, align 16
  %add304 = add i32 %144, %145
  %shr305 = lshr i32 %add304, 14
  %or306 = or i32 %shl301, %shr305
  %arrayidx307 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 10
  %146 = load i32, i32* %arrayidx307, align 8
  %xor308 = xor i32 %146, %or306
  store i32 %xor308, i32* %arrayidx307, align 8
  %arrayidx309 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %147 = load i32, i32* %arrayidx309, align 4
  %arrayidx310 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %148 = load i32, i32* %arrayidx310, align 8
  %add311 = add i32 %147, %148
  %shl312 = shl i32 %add311, 7
  %arrayidx313 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %149 = load i32, i32* %arrayidx313, align 4
  %arrayidx314 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %150 = load i32, i32* %arrayidx314, align 8
  %add315 = add i32 %149, %150
  %shr316 = lshr i32 %add315, 25
  %or317 = or i32 %shl312, %shr316
  %arrayidx318 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %151 = load i32, i32* %arrayidx318, align 16
  %xor319 = xor i32 %151, %or317
  store i32 %xor319, i32* %arrayidx318, align 16
  %arrayidx320 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %152 = load i32, i32* %arrayidx320, align 16
  %arrayidx321 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %153 = load i32, i32* %arrayidx321, align 4
  %add322 = add i32 %152, %153
  %shl323 = shl i32 %add322, 9
  %arrayidx324 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %154 = load i32, i32* %arrayidx324, align 16
  %arrayidx325 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %155 = load i32, i32* %arrayidx325, align 4
  %add326 = add i32 %154, %155
  %shr327 = lshr i32 %add326, 23
  %or328 = or i32 %shl323, %shr327
  %arrayidx329 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %156 = load i32, i32* %arrayidx329, align 4
  %xor330 = xor i32 %156, %or328
  store i32 %xor330, i32* %arrayidx329, align 4
  %arrayidx331 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %157 = load i32, i32* %arrayidx331, align 4
  %arrayidx332 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %158 = load i32, i32* %arrayidx332, align 16
  %add333 = add i32 %157, %158
  %shl334 = shl i32 %add333, 13
  %arrayidx335 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %159 = load i32, i32* %arrayidx335, align 4
  %arrayidx336 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 12
  %160 = load i32, i32* %arrayidx336, align 16
  %add337 = add i32 %159, %160
  %shr338 = lshr i32 %add337, 19
  %or339 = or i32 %shl334, %shr338
  %arrayidx340 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %161 = load i32, i32* %arrayidx340, align 8
  %xor341 = xor i32 %161, %or339
  store i32 %xor341, i32* %arrayidx340, align 8
  %arrayidx342 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %162 = load i32, i32* %arrayidx342, align 8
  %arrayidx343 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %163 = load i32, i32* %arrayidx343, align 4
  %add344 = add i32 %162, %163
  %shl345 = shl i32 %add344, 18
  %arrayidx346 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 14
  %164 = load i32, i32* %arrayidx346, align 8
  %arrayidx347 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 13
  %165 = load i32, i32* %arrayidx347, align 4
  %add348 = add i32 %164, %165
  %shr349 = lshr i32 %add348, 14
  %or350 = or i32 %shl345, %shr349
  %arrayidx351 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 15
  %166 = load i32, i32* %arrayidx351, align 4
  %xor352 = xor i32 %166, %or350
  store i32 %xor352, i32* %arrayidx351, align 4
  br label %for.inc353

for.inc353:                                       ; preds = %for.body5
  %167 = load i32, i32* %i, align 4
  %sub = sub i32 %167, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond3

for.end354:                                       ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond355

for.cond355:                                      ; preds = %for.inc365, %for.end354
  %168 = load i32, i32* %i, align 4
  %cmp356 = icmp ult i32 %168, 16
  br i1 %cmp356, label %for.body357, label %for.end367

for.body357:                                      ; preds = %for.cond355
  %169 = load i32, i32* %i, align 4
  %idxprom358 = zext i32 %169 to i64
  %arrayidx359 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i64 0, i64 %idxprom358
  %170 = load i32, i32* %arrayidx359, align 4
  %171 = load i32*, i32** %in.addr, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom360 = zext i32 %172 to i64
  %arrayidx361 = getelementptr inbounds i32, i32* %171, i64 %idxprom360
  %173 = load i32, i32* %arrayidx361, align 4
  %add362 = add i32 %170, %173
  %174 = load i32*, i32** %out.addr, align 8
  %175 = load i32, i32* %i, align 4
  %idxprom363 = zext i32 %175 to i64
  %arrayidx364 = getelementptr inbounds i32, i32* %174, i64 %idxprom363
  store i32 %add362, i32* %arrayidx364, align 4
  br label %for.inc365

for.inc365:                                       ; preds = %for.body357
  %176 = load i32, i32* %i, align 4
  %inc366 = add i32 %176, 1
  store i32 %inc366, i32* %i, align 4
  br label %for.cond355

for.end367:                                       ; preds = %for.cond355
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @salsa() #0 {
entry:
  %0 = load i32, i32* @ptr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @salsa20(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @outbuf, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i32 0, i32 0))
  %1 = load i32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i64 0, i64 0), align 16
  %inc = add i32 %1, 1
  store i32 %inc, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @STATE, i64 0, i64 0), align 16
  %conv = zext i32 %1 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @ptr, align 4
  %add = add i32 %2, 1
  %and = and i32 %add, 15
  store i32 %and, i32* @ptr, align 4
  %3 = load i32, i32* @ptr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @outbuf, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 537919488, i32* %count, align 4
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add i32 %1, 13
  %add1 = add i32 -307516443, %add
  %2 = load i32, i32* %i, align 4
  %sub = sub i32 -559038737, %2
  %xor = xor i32 %add1, %sub
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @STATE, i64 0, i64 %idxprom
  store i32 %xor, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %count, align 4
  %cmp3 = icmp ult i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end7

for.body4:                                        ; preds = %for.cond2
  %call = call i32 @salsa()
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond2

for.end7:                                         ; preds = %for.cond2
  %call8 = call i32 @salsa()
  store i32 %call8, i32* %val, align 4
  %8 = load i32, i32* %offset, align 4
  %9 = load i32, i32* %val, align 4
  %add9 = add i32 %9, %8
  store i32 %add9, i32* %val, align 4
  %10 = load i32, i32* %val, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %10)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 -162172867)
  %11 = load i32, i32* %val, align 4
  %cmp12 = icmp ne i32 %11, -162172867
  %conv = zext i1 %cmp12 to i32
  ret i32 %conv
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
