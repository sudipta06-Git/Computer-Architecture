# Final Professional Project

## Goal
Design, simulate and evaluate a small processor, then document and present it.

## Option A: 8-bit / 16-bit CPU in a simulator
1. Define an ISA (instruction formats, addressing modes, 16-32 instructions).
2. Build the datapath and control unit (hardwired or microprogrammed) in Logisim Evolution or Verilog.
3. Add a small cache (direct-mapped) and measure hit rate.
4. Write an assembler (Python) and run test programs (sum, factorial, bubble sort).
5. Add a 5-stage pipeline with hazard handling and compare CPI vs. non-pipelined.

## Option B: Analysis project
Benchmark two real systems (e.g., ARM vs x86) with a suite of workloads, explain results using cache, pipeline and memory concepts.

## Deliverables
- Architecture report (PDF)
- Source files and test programs
- Performance evaluation (CPI, speedup, hit rate, Amdahl's law analysis)
- 10-minute demo video

## Rubric
| Criterion | Weight |
|-----------|--------|
| Correctness | 30% |
| Architecture design quality | 25% |
| Performance analysis | 25% |
| Documentation and presentation | 20% |
