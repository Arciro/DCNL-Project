close all

%% Plot
figure(1)
plot(out.t,out.x1)
grid on
title('\phi')
xlabel("t")
ylabel("x_1 (rad)")
legend('Reference model', 'Plant')

figure(2)
plot(out.t,out.x2)
grid on
t = '$\dot{\phi}$';
title(t,'interpreter','latex')
xlabel("t")
ylabel("x_2 (rad/s)")
legend('Reference model', 'Plant')

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
plot(out.t,out.Kx)
grid on
title('Adaptive control gain')
xlabel("t")
ylabel("Kx")
legend('Kx(1)', 'Kx(2)')

figure(6)
plot(out.t,out.Ke)
grid on
title('EMCS Adaptive control gain')
xlabel("t")
ylabel("Ke")