# ROSAN

Low-cost thrust vector control system for small rocket platforms.

This project explores the design, simulation, and experimental validation of a thrust vector control (TVC) system using MATLAB/Simulink modeling and Arduino-driven hardware testing.

## Problem

Small rocket platforms often lack affordable thrust vector control systems. Commercial solutions are expensive and difficult to prototype for research or educational environments.

## Solution

ROSAN is a low-cost thrust vector control system designed to demonstrate closed-loop control of thrust direction using inexpensive actuators and embedded controllers.

The system combines simulation-based modeling with hardware validation to evaluate system stability, actuator limits, and response time.

## Architecture

The system consists of three primary components:

### Simulation Layer

MATLAB / Simulink models simulate control system dynamics and actuator behavior.

### Control System

The control algorithm computes actuator commands to maintain target thrust orientation.

### Hardware Layer

Arduino-based control hardware drives servos responsible for thrust vector deflection.

## Experimental Results

Bench testing measured the system's response using high-speed video analysis.

Key results:

- ±5° thrust deflection capability
- ±0.2° control accuracy
- 44.5 ms average response time
- 120 FPS validation testing

## Tech Stack

MATLAB  
Simulink  
Arduino  
C++

## Research

Full research paper:

https://arxiv.org/abs/2509.00061

## Repository Structure

```
rosan-thrust-vector-control/
├ README.md
├ LICENSE
├ simulations/
├ firmware/
├ experiments/
└ docs/
```

## Notes

This repository represents a prototype thrust vector control system developed for simulation and experimental validation.
