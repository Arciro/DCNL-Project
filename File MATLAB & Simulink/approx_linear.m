close
clear
clc

%% dati
w0 = 5.278;
alfa1 = w0^2;
alfa3 = -1.402*w0^2;
alfa5 = 0.271*w0^2;
mu1 = 0.086;
mu3 = 0.1080;


%% funzioni
x = -1.5:0.01:1.5;
y1 = -mu1*x;
y2 = -mu3*x.^3;
y3 = -alfa1*x;
y4 = -alfa3*x.^3;
y5 = -alfa5*x.^5;

%% figure
figure(1)
plot(x,y1)
grid on
hold on
plot(x,y2)
xlabel("x")
ylabel("y")
legend("-\mu_1x_2","-\mu_3x_2^3")

figure(2)
plot(x,y3)
grid on
hold on
plot(x,y4)
hold on
plot(x,y5)
xlabel("x")
ylabel("y")
legend("-\alpha_1x_1","-\alpha_3x_1^3","-\alpha_5x_1^5")