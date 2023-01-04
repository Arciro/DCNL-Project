close

%% plot 

figure(1)
plot(out.t,out.x1)
grid on
title('\phi')
xlabel("t")
ylabel("x_1 (rad)")

figure(2)
plot(out.t,out.x2)
grid on
t = '$\dot{\phi}$';
title(t,'interpreter','latex')
xlabel("t")
ylabel("x_2 (rad/s)")

figure(3)
plot(out.t,out.u)
grid on
title('legge di controllo')
xlabel("t")
ylabel("u")

figure(4)
plot(out.t,out.e)
grid on
title('errore')
xlabel("t")
ylabel("e")

figure(5)
plot(out.x1,out.x2)
grid on
xlabel("x_1")
ylabel("x_2")
grid on
hold on
plot(out.x1,-(P(1)/P(2))*(out.x1),'--')
legend('x(t)', '\Sigma')

figure(6)
plot(out.t,out.sigma)
grid on
title('\sigma(x)')
xlabel("t")
ylabel("\sigma")