
clc;
clear;
close all;


A = 1;
fm = 5;

t = 0:0.001:1;
x = A*sin(2*pi*fm*t);


Fs = 20;
Ts = 1/Fs;

ts = 0:Ts:1;
xs = A*sin(2*pi*fm*ts);


xr = interp1(ts, xs, t, 'spline');


figure;

subplot(2,1,1);
plot(t,x,'b');
hold on;
stem(ts,xs,'r','filled');
title('Original Signal and Sampled Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal','Samples');
grid on;

subplot(2,1,2);
plot(t,x,'b','LineWidth',1.5);
hold on;
plot(t,xr,'r--','LineWidth',1.5);
title('Original vs Reconstructed Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal','Reconstructed Signal');
grid on;
