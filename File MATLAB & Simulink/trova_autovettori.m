clear
clc

w0 = 5.278;
alfa1 = w0^2;
alfa3 = -1.402*w0^2;
alfa5 = 0.271*w0^2;
mu1 = 0.086;
mu3 = 0.1080;

poly = [alfa5 0 alfa3 0 alfa1 0];
p_roots = roots(poly);

x1_eq = p_roots;
max = length(x1_eq);
M = zeros(2,2*max);
X = zeros(2,2*max);
%Jacobiano
j = 1;
for i=1:max
    J = [0 1; -alfa1-3*alfa3*x1_eq(i)^2-5*alfa5*x1_eq(i)^4 -2*mu1];
    [V,D] = eig(J);
    M(:,j) = V(:,1);
    M(:,j+1) = V(:,2);
    X(:,j) = D(:,1);
    X(:,j+1) = D(:,2);
    j = j +2;
end
