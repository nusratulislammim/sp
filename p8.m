f = 2;
t = 0:0.01:1;
x = sin(2*pi*f*t);

L = 8;
xmin = min(x);
xmax = max(x);
delta = (xmax - xmin)/(L-1);

xq = round((x - xmin)/delta)*delta + xmin;

error = x - xq;
MSE = mean(error.^2);

figure;

subplot(3,1,1);
plot(t,x,'b','LineWidth',1.5); hold on;
stairs(t,xq,'r','LineWidth',1.5);
legend('Original','Quantized');
title('Original vs Quantized'); xlabel('t'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
plot(t,error,'m','LineWidth',1.5);
title(['Error (MSE = ' num2str(MSE) ')']); xlabel('t'); ylabel('Error'); grid on;

subplot(3,1,3);
histogram(error,20);
title('Error Distribution'); xlabel('Error'); ylabel('Count'); grid on;

disp(['MSE = ', num2str(MSE)]);
disp(['Max error = ', num2str(max(abs(error)))]);