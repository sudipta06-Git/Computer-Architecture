#!/usr/bin/env python3
"""Print progress dashboard from `status:` fields in lesson script.md files."""
import glob, re, collections
ORDER = ["planned","scripted","storyboarded","animated","voiced","edited","published"]
counts = collections.Counter(); per_mod = collections.defaultdict(collections.Counter)
for f in sorted(glob.glob("modules/*/lessons/*/script.md")):
    txt = open(f, encoding="utf-8").read()
    m = re.search(r"^status:\s*(\w+)", txt, re.M)
    s = m.group(1) if m else "planned"
    mod = f.split("/")[1]
    counts[s] += 1; per_mod[mod][s] += 1
total = sum(counts.values())
print(f"Lessons: {total}")
for s in ORDER:
    print(f"  {s:13s} {counts[s]:3d}")
print()
for mod, c in per_mod.items():
    done = c["published"]; n = sum(c.values())
    print(f"{mod:55s} {done}/{n} published")
