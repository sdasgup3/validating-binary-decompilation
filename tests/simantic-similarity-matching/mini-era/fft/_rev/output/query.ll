define  float* (float*, i32, i32) @bit_reverse (float* %w, i32 %N, i32 %bits ) {
%entry:
;   %sub = sub i32 31, %bits
;   %add = add i32 %sub, 1
;;   br label %for.cond
%for.cond:
;   %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
;   %cmp = icmp ult i32 %i.0, %N
;   br i1 %cmp, label %for.body, label %for.end
%for.body:
;   %call = tail call i32 @_rev(i32 %i.0)
;   %shr = lshr i32 %call, %add
;   %cmp1 = icmp ult i32 %i.0, %shr
;   br i1 %cmp1, label %if.then, label %if.end
%if.then:
;   %mul = shl i32 %i.0, 1
;   %idxprom = zext i32 %mul to i64
;   %arrayidx = getelementptr inbounds float, float* %w, i64 %idxprom
;   %0 = bitcast float* %arrayidx to i32*
;   %1 = load i32, i32* %0, align 4
;   %add3 = or i32 %mul, 1
;   %idxprom4 = zext i32 %add3 to i64
;   %arrayidx5 = getelementptr inbounds float, float* %w, i64 %idxprom4
;   %2 = bitcast float* %arrayidx5 to i32*
;   %3 = load i32, i32* %2, align 4
;   %mul6 = shl i32 %shr, 1
;   %idxprom7 = zext i32 %mul6 to i64
;   %arrayidx8 = getelementptr inbounds float, float* %w, i64 %idxprom7
;   %4 = bitcast float* %arrayidx8 to i32*
;   %5 = load i32, i32* %4, align 4
;   store i32 %5, i32* %0, align 4
;   %add13 = or i32 %mul6, 1
;   %idxprom14 = zext i32 %add13 to i64
;   %arrayidx15 = getelementptr inbounds float, float* %w, i64 %idxprom14
;   %6 = bitcast float* %arrayidx15 to i32*
;   %7 = load i32, i32* %6, align 4
;   store i32 %7, i32* %2, align 4
;   store i32 %1, i32* %4, align 4
;   store i32 %3, i32* %6, align 4
;   br label %if.end
%if.end:
;   %inc = add i32 %i.0, 1
;;   br label %for.cond
%for.end:
;   ret float* %w
}
