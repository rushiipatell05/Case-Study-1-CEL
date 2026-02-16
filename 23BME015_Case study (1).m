clc; clear; close all;

% Given values
Re = 1e5;         
D = 0.05;                   
eps = 0.00015;   % Roughness(m) 

% Colebrook equation
func = @(f) (1/sqrt(f)) + ...
    2*log10((eps/(3.7*D)) + (2.51/(Re*sqrt(f))));

% Initial guess                                                      
f_initial = 0.03;

f = fzero(func, f_initial);

disp('Friction factor = ')
disp(f)