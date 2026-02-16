# Case-Study-1-CEL

Determination of Friction Factor from Implicit Equation (MATLAB Case Study)

📌 Overview

This project demonstrates the computational determination of Darcy friction factor using MATLAB by solving the implicit Colebrook equation.

The case study is designed for:

- Computational Engineering labs
- Numerical Methods courses
- Fluid Mechanics students
- Beginners learning MATLAB root-finding

---

🎯 Objective

To compute the friction factor (f) for turbulent pipe flow by solving the Colebrook equation, which is implicit and cannot be solved analytically.

---

📖 Background

What is Friction Factor?

The Darcy friction factor (f) represents energy loss due to wall friction in pipe flow and is used in the Darcy–Weisbach equation:

hf = f (L/D) (V² / 2g)

Where:

- hf = head loss
- L = pipe length
- D = diameter
- V = velocity

---

⚠️ The Challenge: Implicit Equation

For turbulent flow, friction factor is obtained from the Colebrook equation:

1/sqrt(f) = -2 log10 [ (ε / 3.7D) + (2.51 / (Re sqrt(f))) ]

Why Numerical Methods?

- Friction factor appears on both sides
- No closed-form analytical solution
- Requires iterative computational approach

---

🧠 Concepts Used

- Numerical root finding
- Nonlinear equations
- MATLAB anonymous functions
- Graphical vs numerical solutions

---

🛠️ Methodology

Step 1 — Define Parameters

- Reynolds number (Re)
- Pipe diameter (D)
- Surface roughness (ε)

Step 2 — Rearrange Equation

Convert Colebrook equation into a root-finding form:

F(f) = 0

Step 3 — Solve Using MATLAB

Use:

- "fzero()" for numerical solution
- Plotting for graphical verification

---

💻 MATLAB Implementation

Numerical Solution (fzero)

clc; clear; close all;

% Given values
Re = 1e5;          % Reynolds number
D = 0.05;          % Diameter (m)
eps = 0.00015;     % Roughness (m)

% Colebrook equation
func = @(f) (1/sqrt(f)) + ...
    2*log10((eps/(3.7*D)) + (2.51/(Re*sqrt(f))));

% Initial guess
f_initial = 0.02;

% Solve
f = fzero(func, f_initial);

disp('Friction factor = ')
disp(f)

---

Graphical Solution (Optional)

f = linspace(0.008,0.08,500);

LHS = 1./sqrt(f);
RHS = -2*log10((eps/(3.7*D)) + (2.51./(Re.*sqrt(f))));

plot(f,LHS,'LineWidth',2)
hold on
plot(f,RHS,'LineWidth',2)
grid on

xlabel('Friction Factor (f)')
ylabel('Function Value')
legend('LHS','RHS')
title('Graphical Solution of Colebrook Equation')

---

📊 Results

- The Colebrook equation is highly nonlinear.
- MATLAB efficiently computes friction factor using numerical methods.
- Graphical and numerical methods give consistent results.

---

📚 Learning Outcomes

By completing this case study, you will learn:

- Solving implicit equations numerically
- Applying MATLAB in fluid mechanics
- Root-finding using "fzero()"
- Engineering problem modeling

---

🧪 Applications

- Pipe flow design
- HVAC systems
- Oil & gas pipelines
- Hydraulic engineering
- CFD pre-calculations

---

🚀 How to Run

1. Clone this repository:
   git clone https://github.com/your-username/friction-factor-matlab.git
2. Open MATLAB
3. Run the script:
   friction_factor.m

---

📸 Suggested Figures

You can include:

- Pipe flow diagram
- Colebrook equation illustration
- Moody chart
- MATLAB output plots

---

🤝 Contributions

Feel free to fork and improve:

- Add GUI version
- Python implementation
- Moody chart comparison
- Multiple flow regimes

---

📜 License

This project is open-source and free to use for academic purposes.

---

⭐ Acknowledgment

Created as part of a Computational Engineering Case Study focusing on:

- Numerical methods
- MATLAB fundamentals
- Engineering applications

---

📬 Contact

If you found this useful, consider giving it a ⭐ on GitHub!
