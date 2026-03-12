
// Analog signal
f = 5;
t = 0:0.001:1;
xa = sin(2*%pi*f*t);

// Sampling
Fs = 300;
n = 0:300;
xn = sin(2*%pi*f*n/Fs);

// Quantization
xq = floor(xn*10)/10;

// Plot signals
figure()

subplot(3,1,1)
plot(t,xa)
title("Analog signal xa(t)")
xlabel("Time")
ylabel("Amplitude")

subplot(3,1,2)
plot2d3(n,xn)
title("Sampled signal x(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,3)
plot2d3(n,xq)
title("Quantized signal xq(n)")
xlabel("n")
ylabel("Amplitude")
