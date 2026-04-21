# Numerical Methods for Nonlinear ODE Systems in MATLAB

A MATLAB/Octave coursework project focused on the numerical solution of ordinary differential equations (ODEs) using:

- Euler's method
- Improved Euler method (Heun's method)

The repository contains two simulation scripts, `Ypol1b.m` and `Ypol1d.m`, which study nonlinear dynamical systems and compare the numerical behavior of the two methods over time.

## Overview

This project was developed in the context of computational mathematics / numerical methods coursework.

Both scripts implement time-domain numerical integration with a fixed time step and generate plots for the evolution of the system states. The main goal is to compare the standard Euler method with the Improved Euler method on nonlinear models.

## Repository Structure

```text
.
├── Ypol1b.m
├── Ypol1d.m
├── README.md
├── LICENSE
└── .gitignore

Script 1: Ypol1b.m

This script simulates a nonlinear dynamical system with translational and rotational behavior.

State variables
x(t): position / displacement
y(t): linear velocity
w(t): angular state
Model characteristics
nonlinear damping terms of the form abs(state)*state
translational and rotational dynamics
simulation interval from 0 to 30
fixed step size h = 0.001
Numerical methods
Euler method
Improved Euler method
Outputs

The script generates plots for:

s
s'
w

for both numerical methods separately.

Script 2: Ypol1d.m

This script simulates a nonlinear second-order dynamical system with a reference target and control-related terms.

State variables
x(t): position
y(t): velocity
Model characteristics
desired reference value sdes
gain terms such as Kps and Kds
nonlinear damping
simulation interval from 0 to 30
fixed step size h = 0.001
Numerical methods
Euler method
Improved Euler method
Outputs

The script generates plots for:

s
s'

for both numerical methods separately.

Topics Covered
Ordinary Differential Equations (ODEs)
Initial value problems
Euler method
Improved Euler / Heun method
Time-domain numerical simulation
Nonlinear dynamical systems
MATLAB/Octave plotting
How to Run
MATLAB

Open each script and run it directly.

GNU Octave

Run each script from the Octave environment.

Example:

run('Ypol1b.m')
run('Ypol1d.m')
Notes
Both scripts use a fixed time step of 0.001.
The project is intended for educational use and numerical experimentation.
The focus is on implementation and comparison of numerical methods rather than closed-form analytical solutions.
Possible Improvements
Refactor repeated logic into reusable functions
Preallocate vectors explicitly for clarity and efficiency
Add combined comparison plots in the same figure
Measure numerical differences between methods
Improve variable naming and documentation
Export plots automatically to image files
Author

MATLAB/Octave coursework project in computational mathematics and numerical methods.
