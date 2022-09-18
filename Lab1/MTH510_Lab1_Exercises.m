% MTH510 Lab 1
% Created by: Dexter Ryan Floreza 500946679
% Professor: Dr. Silvana Ilie
% Section: 07
% Exercises 1 and 2

%% Exercise 1
C = [sqrt(2) cos(pi/4) 1; 0 1 2; 1 sqrt(2) 3^2];
D = [1 2 3; 0 1 2; 3 0 1];
e = [2 1 0];

% 1a)
CD = C*D

% 1b)
e_Transpose = e'

% 1c)
De_Transpose = D*e'

% 1d)
C_FirstColumn = C(:,1)

%% Exercise 2
% n is The roughness coefficient
n = [0.035 0.020 0.015 0.030 0.022];

% S is The channel slope
S = [0.0001 0.0002 0.0010 0.0007 0.0003];

% B is the width measured in metres
B = [10 8 20 24 15];

% H is the depth measured in metres
H = [2 1 1.5 3 2.5];

% Manning's Equation (in metric units)
U = (sqrt(S) ./ n ).*((B.*H)./(B + (2*H))).^(2/3)

% average value of U
avg_U = mean(U)
% Min value of U
min_U = min(U)
% Max value of U
max_U = max(U)

% Plotting U vs n.
plot(n,U)
xlabel("The roughness coefficient, n")
ylabel("The velocity, U [m/s]")
title("The Roughness Coefficient, n vs the Velocity, U [m/s]")

