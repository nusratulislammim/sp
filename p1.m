n = -10:10;

x1 = sin(2*pi*0.1*n);      % Sine
x2 = cos(2*pi*0.1*n);      % Cosine
x3 = (n >= 0);             % Unit step u[n]
x4 = (n == 0);             % Unit impulse δ[n]
x5 = n .* (n >= 0);        % Ramp

figure;
subplot(3,2,1); stem(n,x1,'filled'); title('Sine');        xlabel('n'); ylabel('x[n]'); grid on;
subplot(3,2,2); stem(n,x2,'filled'); title('Cosine');      xlabel('n'); ylabel('x[n]'); grid on;
subplot(3,2,3); stem(n,x3,'filled'); title('Unit Step');   xlabel('n'); ylabel('u[n]'); grid on;
subplot(3,2,4); stem(n,x4,'filled'); title('Unit Impulse');xlabel('n'); ylabel('\delta[n]'); grid on;
subplot(3,2,5); stem(n,x5,'filled'); title('Ramp');        xlabel('n'); ylabel('x[n]'); grid on;