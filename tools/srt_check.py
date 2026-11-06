#!/usr/bin/env python3
"""Basic .srt sanity check: line length and overlap. Usage: srt_check.py file.srt"""
import re, sys
def t(x):
    h,m,s = x.replace(",",".").split(":"); return int(h)*3600+int(m)*60+float(s)
blocks = open(sys.argv[1], encoding="utf-8").read().strip().split("\n\n")
prev_end = 0; bad = 0
for b in blocks:
    L = b.split("\n")
    if len(L) < 3: continue
    a, z = [t(x.strip()) for x in L[1].split("-->")]
    if a < prev_end: print("overlap at", L[0]); bad += 1
    if any(len(x) > 42 for x in L[2:]): print("long line at", L[0]); bad += 1
    prev_end = z
print("OK" if not bad else f"{bad} issue(s)")
