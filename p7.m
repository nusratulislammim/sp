f = 2;
t = 0:0.01:1;
x = sin(2*pi*f*t);

L = 8;
xmin = min(x);
xmax = max(x);
delta = (xmax - xmin)/(L-1);

xq = round((x - xmin)/delta)*delta + xmin;

figure;
subplot(3,1,1);
plot(t,x,'b','LineWidth',1.5);
title('Original Signal'); xlabel('t'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
stairs(t,xq,'r','LineWidth',1.5);
title(['Quantized Signal (L = ' num2str(L) ')']); xlabel('t'); ylabel('Amplitude'); grid on;

subplot(3,1,3);
plot(t,x,'b','LineWidth',1.5); hold on;
stairs(t,xq,'r','LineWidth',1.5);
legend('Original','Quantized');
title('Comparison: Original vs Quantized'); xlabel('t'); ylabel('Amplitude'); grid on;