import itertools
import os
import subprocess
import tempfile
import shutil
import re
import multiprocessing as mp
from multiprocessing import Lock
import argparse

help_str = """
This is a program to help find the best number and type of passes to use for the matcher
"""

parser = argparse.ArgumentParser(help_str)
parser.add_argument(
    "-j",
    "--cores",
    default=mp.cpu_count(),
    type=int,
    help="Number of cores to run matcher on")


O3_pipeline = ["-tti", "-tbaa", "-scoped-noalias", "-assumption-cache-tracker", "-targetlibinfo", "-verify", "-simplifycfg", "-domtree", "-sroa", "-early-cse", "-lower-expect", "-targetlibinfo", "-tti", "-tbaa", "-scoped-noalias", "-assumption-cache-tracker", "-profile-summary-info", "-forceattrs", "-inferattrs", "-ipsccp", "-globalopt", "-domtree", "-mem2reg", "-deadargelim", "-domtree", "-basicaa", "-aa", "-instcombine", "-simplifycfg", "-pgo-icall-prom", "-basiccg", "-globals-aa", "-prune-eh", "-inline", "-functionattrs", "-argpromotion", "-domtree", "-sroa", "-early-cse", "-speculative-execution", "-lazy-value-info", "-jump-threading", "-correlated-propagation", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-libcalls-shrinkwrap", "-tailcallelim", "-simplifycfg", "-reassociate", "-domtree", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-basicaa", "-aa", "-scalar-evolution", "-loop-rotate", "-licm", "-loop-unswitch", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-indvars", "-loop-idiom", "-loop-deletion", "-loop-unroll", "-mldst-motion", "-aa", "-memdep", "-lazy-branch-prob", "-lazy-block-freq", "-opt-remark-emitter", "-gvn", "-basicaa", "-aa", "-memdep", "-memcpyopt", "-sccp", "-domtree", "-demanded-bits", "-bdce", "-basicaa", "-aa", "-instcombine", "-lazy-value-info", "-jump-threading", "-correlated-propagation", "-domtree", "-basicaa", "-aa", "-memdep", "-dse", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-aa", "-scalar-evolution", "-licm", "-postdomtree", "-adce", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-barrier", "-elim-avail-extern", "-basiccg", "-rpo-functionattrs", "-globals-aa", "-float2int", "-domtree", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-basicaa", "-aa", "-scalar-evolution", "-loop-rotate", "-loop-accesses", "-lazy-branch-prob", "-lazy-block-freq", "-opt-remark-emitter", "-loop-distribute", "-loop-simplify", "-lcssa-verification", "-lcssa", "-branch-prob", "-block-freq", "-scalar-evolution", "-basicaa", "-aa", "-loop-accesses", "-demanded-bits", "-lazy-branch-prob", "-lazy-block-freq", "-opt-remark-emitter", "-loop-vectorize", "-loop-simplify", "-scalar-evolution", "-aa", "-loop-accesses", "-loop-load-elim", "-basicaa", "-aa", "-instcombine", "-scalar-evolution", "-demanded-bits", "-slp-vectorizer", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-loop-unroll", "-instcombine", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-licm", "-alignment-from-assumptions", "-strip-dead-prototypes", "-globaldce", "-constmerge", "-domtree", "-loops", "-branch-prob", "-block-freq", "-loop-simplify", "-lcssa-verification", "-lcssa", "-basicaa", "-aa", "-scalar-evolution", "-branch-prob", "-block-freq", "-loop-sink", "-instsimplify", "-verify", "-domtree"]






required_passes = ["-licm", "-gvn", "-early-cse", "-globalopt", "-mem2reg", "-inline", "-simplifycfg", "-memdep", "-dse", "-memdep", "-memcpyopt",
                   "-deadargelim", "-libcalls-shrinkwrap","-tailcallelim", "-simplifycfg", "-instcombine"]





test = ["-licm"] + required_passes
test5= ["-instcombine", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-indvars", "-loop-idiom", "-loop-deletion", "-loop-unroll", "-mldst-motion", "-aa", "-memdep", "-lazy-branch-prob", "-lazy-block-freq"]  + required_passes
passl = ["-domtree", "-demanded-bits", "-bdce", "-basicaa", "-aa", "-instcombine", "-lazy-value-info", "-jump-threading"] + required_passes
test3 = ["-correlated-propagation", "-domtree", "-basicaa", "-aa", "-memdep", "-dse", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-aa"] + required_passes
test2 = ["-scalar-evolution", "-licm", "-postdomtree", "-adce", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-barrier", "-elim-avail-extern", "-basiccg", "-rpo-functionattrs", "-globals-aa", "-float2int", "-domtree", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-basicaa", "-aa", "-scalar-evolution", "-loop-rotate", "-loop-accesses", "-lazy-branch-prob", "-lazy-block-freq", "-opt-remark-emitter", "-loop-distribute", "-loop-simplify", "-lcssa-verification", "-lcssa", "-branch-prob", "-block-freq", "-scalar-evolution", "-basicaa", "-aa", "-loop-accesses", "-demanded-bits", "-lazy-branch-prob", "-lazy-block-freq", "-opt-remark-emitter", "-loop-vectorize", "-loop-simplify", "-scalar-evolution", "-aa", "-loop-accesses", "-loop-load-elim", "-basicaa", "-aa", "-instcombine", "-scalar-evolution", "-demanded-bits", "-slp-vectorizer", "-simplifycfg", "-domtree", "-basicaa", "-aa", "-instcombine", "-loops", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-loop-unroll", "-instcombine", "-loop-simplify", "-lcssa-verification", "-lcssa", "-scalar-evolution", "-licm", "-alignment-from-assumptions", "-strip-dead-prototypes", "-globaldce", "-constmerge", "-domtree", "-loops", "-branch-prob", "-block-freq", "-loop-simplify", "-lcssa-verification", "-lcssa", "-basicaa", "-aa", "-scalar-evolution", "-branch-prob", "-block-freq", "-loop-sink", "-instsimplify", "-verify", "-domtree"] + required_passes



# SimplifyCFG needed because some unnecessary Basic Blocks existed (basic block only contained unconditional branch to another BB)
# Memdep and DSE needed because redundant stores to state struct occurred
# GVN because redundant loads from state struct occurred (test_3/main)
# DeadArgElim needed because of argument in function call for memcpy not matching (test_3/main)
# Moved GVN to start of pass due to PC not matching (test_4/main)
# LibCalls-ShrinkWrap with TailCalElim to make tail calls occur (test_4/main)
# Memcpyopt needed to make memcpy calls not need PC (fastcc) (test_4/main)
# LICM at start of pass: Basic block containing RCX calculation in compd code not in entry block so it was pruned out (test_6/foo)
# Do we need instsimplify?

tooldir = '/home/deepanv2/Github/validating-binary-decompilation/source/build/bin/'

def lock_init(l):
    global lock
    lock = l

# Copies a file to a temp file
# Returns the path of the temp file
def copy_to_temp(filepath, ending):
    temp = tempfile.NamedTemporaryFile(suffix=ending)
    shutil.copy2(filepath, temp.name)
    return temp


# Copies a temp file back to its filepath
# No return
def return_to_file(temp, filepath):
    shutil.copy2(temp.name, filepath)
    temp.close()

def run_pass(filename, temp_name):
    opt = ["opt", "-S", filename, "-o", temp_name]
    opt[2:2] = O3_pipeline
    #opt[2:2] = test
    #opt[2:2] = required_passes
    if subprocess.check_output(opt) != b'':
        return False
    #with open(temp_name, 'r') as f:
    #    lock.acquire()
    #    print(f.read())
    #    print('=====================================================')
    #    lock.release()
    return True


def run_matcher(mcsema, compd, funcname):
    matcher_command = [
                       tooldir + 'matcher',
                       '--file1',
                       mcsema + ":" + funcname,
                       '--file2',
                       compd + ":" + funcname
                       ]
    match_log = ""
    try:
        match_log = subprocess.check_output(matcher_command, stderr=subprocess.STDOUT).decode('utf-8')
    except subprocess.CalledProcessError as e:
        with open("match_fail.log", 'w') as save:
            save.write(str(e.output))
        return 2
    m = re.search("Iso Match Found\n", match_log)
    if m:
        return 0
    m = re.search("Iso Match NOT Found\n", match_log)
    if m:
        return 1
    return 2


def full_match_run(func):
    os.chdir(func)
    temp_mcsema = tempfile.NamedTemporaryFile(suffix='mcsema')
    temp_compd = tempfile.NamedTemporaryFile(suffix='proposed')
    ret = 2

    if not run_pass("../binary/test.mcsema.inline.ll", temp_mcsema.name):
        lock.acquire()
        print("Mcsema Opt Fail: {}".format(func))
        lock.release()
        temp_mcsema.close()
        temp_compd.close()
        os.chdir("../../")
        return ret

    if not run_pass("./mcsema/test.proposed.inline.ll", temp_compd.name):
        lock.acquire()
        print("Mcsema Opt Fail: {}".format(func))
        lock.release()
        temp_mcsema.close()
        temp_compd.close()
        os.chdir("../../")
        return ret

    funcname = os.path.basename(os.getcwd())
    if(os.path.lexists('match_fail.log')):
        os.remove('match_fail.log')

    m2p = run_matcher(temp_mcsema.name, temp_compd.name, funcname)
    if m2p == 2:
        lock.acquire()
        print("Match Fail: {}".format(func))
        lock.release()
        temp_mcsema.close()
        temp_compd.close()
        os.chdir("../../")
        return 2
    p2m = run_matcher(temp_compd.name, temp_mcsema.name, funcname)
    if p2m == 2:
        lock.acquire()
        print("Match Fail: {}".format(func))
        lock.release()
        temp_mcsema.close()
        temp_compd.close()
        os.chdir("../../")
        return 2

    if m2p == 0 and p2m == 0:
        lock.acquire()
        print("Match Pass:both-exact-match: {}".format(func))
        lock.release()
        ret = 0
    elif m2p == 1:
        lock.acquire()
        print("Match Pass:m2p-multi-match: {}".format(func))
        lock.release()
        ret = 1
    else:
        lock.acquire()
        print("Match Pass:p2m-multi-match: {}".format(func))
        lock.release()
        ret = 1
    
    temp_mcsema.close()
    temp_compd.close()
    os.chdir("../../")
    return ret

def main():
    # Match Pass, Match Multi-Match, Match Fail
    args = parser.parse_args()
    cores = args.cores
    if(cores > mp.cpu_count()):
        cores = mp.cpu_count()

    os.chdir(os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "program_translation_validation", "toy-examples"))
    with open("docs/makefilelist.txt", 'r') as f:
        function_list = f.read().splitlines()
    #function_list = ['test_2/main']
    l = Lock()
    pool = mp.Pool(initializer=lock_init, initargs=(l,), processes=40)
    results = pool.map(full_match_run, function_list)
    pool.close()
    pool.join()
    print("Match Pass Total: {}\nMatch Pass:multi-matches Total: {}\nMatch Fail Total: {}".format(results.count(0), results.count(1), results.count(2)))


if __name__ == '__main__':
    main()
