# ROSAN System Architecture

## Overview

ROSAN is a prototype thrust vector control system designed to evaluate low-cost control of rocket thrust direction using simulation and embedded hardware.

## Flow

Rocket Body  
↓  
Thrust Vector Mount  
↓  
Servo Actuators  
↓  
Arduino Control Loop  
↓  
Control Algorithm  
↓  
Simulated Dynamics (MATLAB / Simulink)

## Components

### Mechanical Layer
A thrust vector mount allows controlled angular deflection of the thrust direction.

### Control Layer
A closed-loop control system computes actuator commands to maintain target thrust orientation.

### Simulation Layer
MATLAB / Simulink models evaluate stability, response latency, and actuator limits before physical testing.

### Hardware Layer
Arduino-controlled servo actuators apply thrust vector deflection during bench validation.
