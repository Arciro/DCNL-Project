close all

%% Plot
figure(1)
plot(out.t,out.x1)
grid on
title('\phi')
xlabel("t")
ylabel("x_1 (rad)")
legend('lineare', 'non lineare')

figure(2)
plot(out.t,out.x2)
grid on
t = '$\dot{\phi}$';
title(t,'interpreter','latex')
xlabel("t")
ylabel("x_2 (rad/s)")
legend('lineare', 'non lineare')

figure(3)
plot(out.t,out.u)
grid on
title('legge di controllo')
xlabel("t")
ylabel("u")
legend('lineare', 'non lineare')

figure(4)
plot(out.t,out.e)
grid on
title('errore')
xlabel("t")
ylabel("e")
legend('lineare', 'non lineare')

