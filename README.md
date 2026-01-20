# 32-bit-pipelining
32-bit pipelining refers to dividing the processing of 32-bit data or instructions into multiple pipeline stages so that different stages operate in parallel on different instructions, improving throughput and performance.
# 32-bit Pipelined Design (Verilog)

## 📌 Overview
This project demonstrates a **basic 32-bit pipelined hardware design** using **Verilog HDL**.  
The design performs multiplication on four 32-bit inputs using **pipeline stages** to improve throughput.

A simple **testbench** is included to verify the functionality.

---

## 🧠 Concept Used
- 32-bit data processing
- Pipelining
- Sequential logic
- Clocked registers
- Verilog testbench

---

## 🏗️ Design Description

### Inputs
- `clk` : Clock signal
- `in1, in2, in3, in4` : 32-bit input operands

### Output
- `out_32` : 64-bit output result

---

## ⏱️ Pipeline Stages

| Stage | Operation |
|------|----------|
| Stage 1 | `reg1 = in1 × in2` |
| Stage 2 | `reg2 = in3 × in4` |
| Stage 3 | `reg3 = reg1 × reg2` |
| Stage 4 | `out_32 = reg3` |

Each stage is triggered on the **positive edge of the clock**.

👉 Because of pipelining, the **final output appears after multiple clock cycles (latency)**, but once filled, the pipeline can process data every clock cycle.

---

## 🧪 Testbench Description

- Generates a clock with **10 ns period**
- Applies constant test values:

