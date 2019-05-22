#!/usr/bin/env python

# Copyright (c) 2019 Sandeep Dasgupta
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

import struct
import traceback
import collections
import itertools
import pprint

# Bring in utility libraries.
from utils import *
#from exception import *

import argparse
import collections
import itertools
import os
import subprocess
import sys
import traceback

try:
    from shlex import quote
except BaseException:
    from pipes import quote


def run_mcsema(args):
    cmd = []
    cmd.append(mcsema - disass)
    cmd.append("--disassembler")
    cmd.append(quote(args.disassembler))
    cmd.append("--os")
    cmd.append(args.os)
    cmd.append("--arch")
    cmd.append(args.arch)
    cmd.append("--output")
    cmd.append(args.binary + ".cfg")
    cmd.append("--binary")
    cmd.append(args.binary)
    cmd.append("--entrypoint")
    cmd.append(args.entrypoint)

    execute(cmd)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()

    parser.add_argument(
        '--arch',
        default="amd64",
        help='Name of the architecture. Valid names are x86, amd64(*)',
        required=True)

    parser.add_argument(
        '--os',
        default="linux",
        help='Name of the operating system. Valid names are linux(*), windows',
        required=True)

    parser.add_argument(
        "--output",
        type=argparse.FileType('wb'),
        default=None,
        help="The output control flow graph recovered from this file",
        required=True)

    parser.add_argument(
        '--entrypoint',
        help="The entrypoint where disassembly should begin",
        required=True)

    parser.add_argument(
        '--tool',
        help='Name of the decompiler. Valid names are mcsema, fcd, revng',
        required=True)

    parser.add_argument(
        '--disassembler',
        default=None,
        help='Path to disassembler binary',
        required=True)

    parser.add_argument(
        '--binary',
        help='Binary to decompile',
        required=True)

    args = parser.parse_args()
