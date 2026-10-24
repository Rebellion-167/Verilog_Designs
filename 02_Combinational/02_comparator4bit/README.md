# 4-Bit Magnitude Comparator

## Description

A 4-bit magnitude comparator is a combinational circuit that compares two 4-bit binary numbers, `A` and `B`, to determine whether A is greater than, less than, or equal to B.

This project implements a 4-bit comparator using **gate-level modelling in Verilog HDL**. The design uses XNOR, NOT, AND, and OR gates. The circuit is simulated using Icarus Verilog, and the output waveforms are viewed using GTKWave.

## Logic

The comparator has two 4-bit inputs (`A[3:0]`, `B[3:0]`) and three outputs:

- `A_gt_B`: HIGH when A is greater than B.
- `A_lt_B`: HIGH when A is less than B.
- `A_eq_B`: HIGH when A is equal to B.

## Boolean Expressions

Let the equality terms be:

- `E3 = A3 XNOR B3`
- `E2 = A2 XNOR B2`
- `E1 = A1 XNOR B1`
- `E0 = A0 XNOR B0`

**1. Greater Than (A > B)**

```text
A_gt_B = (A3 AND NOT B3)
       OR (E3 AND A2 AND NOT B2)
       OR (E3 AND E2 AND A1 AND NOT B1)
       OR (E3 AND E2 AND E1 AND A0 AND NOT B0)
```

**2. Less Than (A < B)**

```text
A_lt_B = (NOT A3 AND B3)
       OR (E3 AND NOT A2 AND B2)
       OR (E3 AND E2 AND NOT A1 AND B1)
       OR (E3 AND E2 AND E1 AND NOT A0 AND B0)
```

**3. Equal To (A = B)**

```text
A_eq_B = E3 AND E2 AND E1 AND E0
```

Here:
- `AND` represents logical AND.
- `OR` represents logical OR.
- `NOT` represents logical inversion.
- `XNOR` outputs 1 when both inputs are equal.

### Gate-Level Implementation

The design uses the following logic gates:

- **XNOR gates:** Compare corresponding bits of A and B.
- **NOT gates:** Generate complemented input bits.
- **AND gates:** Implement the individual greater-than and less-than conditions.
- **OR gates:** Combine the comparison terms to generate the final outputs.

## Files

- `comparator4bit.v` — Gate-level Verilog design.
- `comparator4bit_tb.v` — Testbench for verifying the comparator.
- `waveform.png` — Simulation waveform captured using GTKWave.
- `comparator4bit.svg` - Schematic Diagram

## Logic Schematic

![4-Bit Comparator Schematic](comparator4bit.svg)

## Simulation Waveform

![4-Bit Comparator Simulation Waveform](waveform.png)

## Tools

- Verilog HDL
- Icarus Verilog
- GTKWave

## Simulation

**Compile the design and testbench:**

```bash
iverilog -o comparator4bit_sim comparator4bit.v comparator4bit_tb.v
```

**Run the simulation:**

```bash
vvp comparator4bit_sim
```

**View the waveform:**

```bash
gtkwave comparator4bit.vcd
```
