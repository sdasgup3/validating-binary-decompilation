#! /usr/bin/python

import binary_analysis_data_pb2
import sys

# Main procedure:  Reads the entire address book from a file and prints all
#   the information inside.
if len(sys.argv) != 2:
  print "Usage:", sys.argv[0], "CFG FILE"
  sys.exit(-1)

M = binary_analysis_data_pb2.Module()

# Read the existing address book.
f = open(sys.argv[1], "rb")
M.ParseFromString(f.read())
f.close()

print("Recovering module {}".format(M.name))

# Iterates though all people in the AddressBook and prints info about them.
for F in M.funcs:
  print("Function (ea={:x}), name: {}, is Entry: {}".format(F.ea, F.name, F.is_entrypoint))
  for B in F.blocks:
    print("Block (ea={:x})".format(B.ea))
    for SB in B.successor_eas:
      print("succ_ea={:x}".format(SB))
