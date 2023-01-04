clear
clc

%% dati
w0 = 5.278;
alfa1 = w0^2;
alfa3 = -1.402*w0^2;
alfa5 = 0.271*w0^2;
mu1 = 0.086;
mu3 = 0.1080;

%% grafici
figure(1)
subplot(2,1,1)
plot(out.t,out.x1)
grid on
xlabel("t")
ylabel("x_1")
title('\phi')
subplot(2,1,2)
plot(out.t,out.x2)
grid on
xlabel("t")
ylabel("x_2")
t = '$\dot{\phi}$';
title(t,'interpreter','latex')