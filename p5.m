f = 30;
t = 0:0.001:0.2;
x = sin(2*pi*f*t);

fs_list = [200, 50, 35];

figure;
for k = 1:3
    fn = fs_list(k);
    tn = 0:1/fn:0.2;
    xn = sin(2*pi*f*tn);

    subplot(3,1,k);
    plot(t,x,'b','LineWidth',1.2); hold on;
    stem(tn,xn,'r','LineWidth',1.5,'filled');

    if fn >= 2*f
        f_app = f;
        status = 'No aliasing';
    else
        f_app = abs(f - fn);
        status = ['Aliased to ' num2str(f_app) ' Hz'];
    end

    title(['fs = ' num2str(fn) ' Hz, f = ' num2str(f) ' Hz - ' status]);
    xlabel('t'); ylabel('Amplitude'); grid on;
end