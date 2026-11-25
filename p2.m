x = [1 2 3 4];
n = 0:3;

n_shift = n + 2;           % x[n-2] 
x_shift = x;

n_rev = -fliplr(n);        % x[-n] 
x_rev = fliplr(x);

n_scale = n(1:2:end);      % x[2n] 
x_scale = x(1:2:end);

figure;
subplot(2,2,1); stem(n,x,'filled');             title('Original x[n]');     xlabel('n'); grid on;
subplot(2,2,2); stem(n_shift,x_shift,'filled'); title('Shifted x[n-2]');    xlabel('n'); grid on;
subplot(2,2,3); stem(n_rev,x_rev,'filled');     title('Reversed x[-n]');    xlabel('n'); grid on;
subplot(2,2,4); stem(n_scale,x_scale,'filled'); title('Scaled x[2n]');      xlabel('n'); grid on;

disp('Verify x = xe + xo (next problem)');