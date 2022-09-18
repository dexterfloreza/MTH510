% MTH510 Lab 1
% Created by: Dexter Ryan Floreza 500946679
% Professor: Dr. Silvana Ilie
% Section: 07
% Examples 1 and 2

A = [sqrt(2) 1/2; sin(pi/4) 1];
B = [1 2; 0 1];
b = [2; 1];
% Example 1a) Compute AB
AB = A*B % This is the matrix multiplication of matrices A and B


% Example 1b) Compute the transpose of Matrix A
Transpose_A = A.'

% Example 1c) Compute the product of Ab.
Ab = A*b 

% Example 1d) Assign the first row of B to a new vector.
B_First_Row = B(1,:) % We take the first row of matrix B, and then we assign it to a new vector 

%% Example 2
% 2a) Input the values for m, vt and A as row vectors
m = [83.6 60.2 72.1 91.1 92.9]; % measured in kilograms
v_t = [53.4 48.5 50.9 55.7 54]; % measured in metres per second
A2 = [0.454 0.401 0.453 0.485 0.532]; % measured in square metres

% 2b) Assign the value 9.81 to g(eg. g = 9.81 m/s^2) and 1.225 to rho (eg. rho
% = 1.225 kg/m^3)
g = 9.81 % measured in m/s^2
rho = 1.225 % measured in kg/m^3

% 2c) Compute the dimensionless drag coefficient C_D
C_D = (2 * m .* g) ./ (rho * A2 .* v_t) % Use the .* for different operands that aren't matrices 

% 2d) Find the average, min and max value of C_D
MeanA = mean(C_D)
minA = min(C_D)
maxA = max(C_D)
% Plot A as a function of m, and C_D as a functoin of A. 
plot(m,A2)
title('Plot of A vs M')
xlabel('Mass [kg]')
ylabel('Area')
