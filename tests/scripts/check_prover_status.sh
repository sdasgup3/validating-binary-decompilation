#!/bin/bash

cat docs/genz3Pass.log | parallel  "echo ; echo -n TEST: ; echo {};  echo =================; cd register-variants/{}; make genz3; cd -" &> run.log
expectedPass=$(wc -l docs/genz3Pass.log | cut -f1 -d ' ')
currentPass=$(grep "GenZ3 Pass" run.log | wc -l)

echo Expected Gen-Z3 Passes: $expectedPass
echo Current Gen-Z3 Passes: $currentPass

if [ $expectedPass -ne $currentPass ] 
then
  grep -i "GenZ3 Fail\|FATAL\|error" run.log
  exit 1
fi


cat docs/genz3Pass.log | parallel  "echo ; echo -n TEST: ; echo {};  echo =================; cd register-variants/{}; make provez3; cd -" &> run.log
pass=$(grep "Test-Pass" run.log | wc -l)
fail=$(grep "Test-Fail" run.log | wc -l)
unknown=$(grep "Test-Unk" run.log | wc -l)
undef=$(grep "undef" run.log | wc -l)
error=$(grep "Error" run.log | wc -l)

echo Prove-Z3 Pass: $pass
echo Prove-Z3 Fail: $fail
echo Prove-Z3 Unkown: $unknown
echo Prove-Z3 Error: $error
echo $pass + $fail + $unknown + $error | bc

echo

echo Undef-instance count: $undef
echo "Fail List"
grep "Test-Fail" run.log

