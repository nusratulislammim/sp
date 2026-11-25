x = [1 2 3 4 5];
n = -2:2;                     

x_flip = fliplr(x);           % x[-n]
xe = (x + x_flip)/2;          % Even part
xo = (x - x_flip)/2;          % Odd part

figure;
subplot(3,1,1); stem(n,x,'filled');  title('Original x[n]'); xlabel('n'); grid on;
subplot(3,1,2); stem(n,xe,'filled'); title('Even xe[n]');    xlabel('n'); grid on;
subplot(3,1,3); stem(n,xo,'filled'); title('Odd xo[n]');     xlabel('n'); grid on;

disp('Check x = xe + xo:'); disp(xe + xo);   % = x 