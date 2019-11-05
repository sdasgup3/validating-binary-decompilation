compd fail
==========
test_22/timespi: R1
test_23/main: R2
test_23_1/main: R2

R1: 
Could not encode 'fmulp  %st,%st(1)' within 2 bytes.

R2: Jump table for switch statement



Tips
========
test_20/main
test_24/read_bytes

there is a call like
retMEM = call sub_4004f0.switches(... ,%2), which we do not have the definition 
hence the opt thinks that retMem is modified and created PHIs which do not match.

However, Mcsmea knows that the called function is not going to modify %2 and it
is returned as is . hence does not create PHIs.

Soln:
The compd has to declare the function like this:
declare %struct.Memory* @sub_4004f0.switches(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

Mcsema can do interprocedural opt which we cannot do. Hence we need to give the
minimal inperprocedural opt information, required to perform the same opt.



test_20/switches : need to shorten the case
test_22/DoDemoFpu1: not inlined
test_22/main: not inlined
