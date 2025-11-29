# MLP Neuron Cell Layout (Physical Design)

A neural network neuron implementation at the transistor level using Cadence Virtuoso and the ASAP 7nm FinFET PDK.

## Overview

This project implements the physical design (layout) of a neuron cell for a Multi-Layer Perceptron (MLP) neural network. The design includes gate-level submodules including multipliers, adders, and multiplexers, all built using FinFET transistors in ASAP 7nm technology.

## Key Results

| Metric | Improvement |
|--------|-------------|
| Area | 30% reduction |
| Power | 13% lower |
| Critical Path Delay | 10% reduction |
| Final Area | 4.75 µm² |
| Parasitic Capacitance | Reduced from 1.746e-16 F to 1.55e-16 F |

## Tools & Technology

- **EDA Tool**: Cadence Virtuoso
- **Process**: ASAP 7nm FinFET PDK
- **Verification**: Calibre DRC/LVS

## Design Architecture

The neuron consists of the following submodules:
- **Multiplier** - Handles weight × input computation
- **2-Bit Adders** - Intermediate summation
- **3-Bit Adders** - Final accumulation  
- **MUX** - Output selection

## Layout Optimization

### Before Optimization

The original layout had several inefficiencies:
- Long M2 and M3 metal routes
- Excessive M3 metal layer usage
- Poor floorplanning (non-rectangular shape)
- Critical path from Adder 3-bit to MUX spanning both M3 and M2 layers

![Old Layout](images/image8.png)

### After Optimization

The optimized design features:
- Reduced metal layer usage
- Shortened route lengths
- Streamlined critical paths
- Rectangular floorplan for better area utilization

![Optimized Neuron Layout](images/image3.png)

## Verification

### DRC and LVS Results

All submodules and the top-level neuron pass DRC (Design Rule Check) and LVS (Layout vs. Schematic) verification.

![Neuron DRC/LVS Verification](images/image12.png)

### Parasitic Extraction

![Parasitic Analysis 1](images/image16.png)

![Parasitic Analysis 2](images/image1.png)

## Submodule Verification

### MUX

![MUX Layout](images/image7.png)
![MUX Verification 1](images/image5.png)
![MUX Verification 2](images/image14.png)

### Multiplier

![Multiplier Layout](images/image6.png)
![Multiplier Verification 1](images/image9.png)
![Multiplier Verification 2](images/image2.png)

### 2-Bit Adders

![2-Bit Adder Layout](images/image4.png)
![2-Bit Adder Verification 1](images/image13.png)
![2-Bit Adder Verification 2](images/image11.png)

### 3-Bit Adders

![3-Bit Adder Layout](images/image10.png)
![3-Bit Adder Verification 1](images/image17.png)
![3-Bit Adder Verification 2](images/image15.png)
