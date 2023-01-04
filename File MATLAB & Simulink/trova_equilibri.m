clear
clc

simbolico = "no";

if simbolico=="si"
    syms alfa1 alfa3 alfa5 real;

else
    w0 = 5.278;
    alfa1 = w0^2;
    alfa3 = -1.402*w0^2;
    alfa5 = 0.271*w0^2;
    mu1 = 0.086;
    mu3 = 0.1080;
end

syms x1 
poly = alfa5*x1^5 + alfa3*x1^3 + alfa1*x1 == 0;
p_roots = solve(poly,x1);

if simbolico=="no"
    p_roots = vpa(p_roots,4);
end
