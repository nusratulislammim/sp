f = 5;
t = 0:0.001:1;
xa = sin(2*pi*f*t);

fs = 20;                       % fs > 2f,  reconstruction
ts = 0:1/fs:1;
xs = sin(2*pi*f*ts);

tr = 0:0.001:1;
xr = interp1(ts, xs, tr, 'spline');    % spline interpolation

figure;
subplot(3,1,1);
plot(t,xa,'b','LineWidth',1.5);
title('Original Analog Signal'); xlabel('t'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
stem(ts,xs,'r','LineWidth',1.5,'filled');
title(['Sampled Signal (fs = ' num2str(fs) ' Hz)']); xlabel('t'); ylabel('Amplitude'); grid on;

subplot(3,1,3);
plot(t,xa,'b','LineWidth',1.5); hold on;
plot(tr,xr,'r--','LineWidth',1.5);
legend('Original','Reconstructed');
title('Original vs Reconstructed (spline)'); xlabel('t'); ylabel('Amplitude'); grid on;