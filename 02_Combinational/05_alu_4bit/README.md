# 4-Bit Arithmetic Logic Unit (ALU)

## Description

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic, logical, and shift operations on two 4-bit inputs, `A` and `B`.

The design is divided into three functional units:

- **Arithmetic Unit:** Performs addition and subtraction.
- **Logic Unit:** Performs AND, OR, XOR, and NOT operations.
- **Shift Unit:** Performs left and right shifts.

A 3-bit selection input, `sel`, determines the operation. The output `Y` is 5 bits wide to preserve the carry bit during addition.

## Operations

| `sel` | Operation | Description |
|---|---|---|
| `000` | ADD | `A + B` |
| `001` | SUB | `A - B` |
| `010` | AND | `A & B` |
| `011` | OR | `A \| B` |
| `100` | XOR | `A ^ B` |
| `101` | NOT | `~A` |
| `110` | Shift Left | `A << 1` |
| `111` | Shift Right | `A >> 1` |

## Files

- `alu_4bit.v` — Top-level ALU module.
- `alu_4bit_tb.v` — Testbench for verifying ALU operations.
- `arithmetic_unit.v` — Arithmetic unit implementation.
- `logic_unit.v` — Logic unit implementation.
- `shift_unit.v` — Shift unit implementation.
- `schematics/` — Generated JSON and SVG schematic files.

## Schematics

### Top-Level ALU

![4-Bit ALU Schematic](schematics/alu_4bit.svg)

### Arithmetic Unit

![Arithmetic Unit Schematic](schematics/arithmetic_unit.svg)

### Logic Unit

![Logic Unit Schematic](schematics/logic_unit.svg)

### Shift Unit

![Shift Unit Schematic](schematics/shift_unit.svg)

## Simulation

### Compile

Run the following command from the project directory:

```bash
iverilog -o alu_sim alu_4bit.v arithmetic_unit.v logic_unit.v shift_unit.v alu_4bit_tb.v
```

### Run the Simulation

```bash
vvp alu_sim
```

### View the Waveform

If the testbench generates `alu_4bit.vcd`, open it using GTKWave:

```bash
gtkwave alu_4bit.vcd
```

## Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- netlistsvg
