f = 5;
t = 0:0.001:1;
xa = sin(2*pi*f*t);

fs_nyq   = 2*f;     % Nyquist = 10 Hz
fs_above = 10*f;    % Above   = 50 Hz
fs_below = 1.2*f;   % Below   = 6 Hz

figure;
% Nyquist
subplot(3,1,1);
plot(t,xa,'k','LineWidth',1); hold on;
tn = 0:1/fs_nyq:1; stem(tn,sin(2*pi*f*tn),'r','filled');
title(['Nyquist Rate (fs = ' num2str(fs_nyq) ' Hz)']); xlabel('t'); ylabel('Amplitude'); grid on;

% Above
subplot(3,1,2);
plot(t,xa,'k','LineWidth',1); hold on;
ta = 0:1/fs_above:1; stem(ta,sin(2*pi*f*ta),'g','filled');
title(['Above Nyquist (fs = ' num2str(fs_above) ' Hz)']); xlabel('t'); ylabel('Amplitude'); grid on;

% Below
subplot(3,1,3);
plot(t,xa,'k','LineWidth',1); hold on;
tb = 0:1/fs_below:1; stem(tb,sin(2*pi*f*tb),'b','filled');
title(['Below Nyquist (fs = ' num2str(fs_below) ' Hz) - Aliasing']); xlabel('t'); ylabel('Amplitude'); grid on;