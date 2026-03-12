clc
clear

// Exercise 2 – Unit Step

n = -5:5;
msignal = bool2s(n >= 0);

figure()
plot2d3(n,msignal)
title("Unit Step Signal u(n)")
xlabel("n")
ylabel("Amplitude")

// Exercise 3 – Unit Impulse

n = -5:5;
msignal = bool2s(n == 0);

figure()
plot2d3(n,msignal)
title("Unit Impulse Signal δ(n)")
xlabel("n")
ylabel("Amplitude")

// Exercise 4 – Unit Ramp

n = -5:5;
ur = n .* bool2s(n>=0);

figure()
plot2d3(n,ur)
title("Unit Ramp Signal r(n)")
xlabel("n")
ylabel("Amplitude")

// Exercise 5 – Even & Odd

x = [1 3 -2];
n = -1:1;

x_rev = x($:-1:1);

xe = (x + x_rev)/2;
xo = (x - x_rev)/2;

figure()

subplot(3,1,1)
plot2d3(n,x)
title("Original signal x(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,2)
plot2d3(n,xe)
title("Even component xe(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,3)
plot2d3(n,xo)
title("Odd component xo(n)")
xlabel("n")
ylabel("Amplitude")



// =========================
// Exercise 6 – Addition
// =========================

x1 = [0 1 3 -2];
x2 = [0 1 2 3];
n = 0:3;

y = x1 + x2;

figure()

subplot(3,1,1)
plot2d3(n,x1)
title("x1(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,2)
plot2d3(n,x2)
title("x2(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,3)
plot2d3(n,y)
title("y(n) = x1(n) + x2(n)")
xlabel("n")
ylabel("Amplitude")



// =========================
// Exercise 7 – Multiplication
// =========================

x1 = [0 1 3 -2];
x2 = [0 1 2 3];
n = 0:3;

y = x1 .* x2;

figure()

subplot(3,1,1)
plot2d3(n,x1)
title("x1(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,2)
plot2d3(n,x2)
title("x2(n)")
xlabel("n")
ylabel("Amplitude")

subplot(3,1,3)
plot2d3(n,y)
title("y(n) = x1(n) * x2(n)")
xlabel("n")
ylabel("Amplitude")


// Exercise 8 – Signal manipulation

x = [1 -2 3 6];
n = -2:1;

figure()

subplot(2,1,1)
plot2d3(n,x)
title("Original signal x(n)")
xlabel("n")
ylabel("Amplitude")


y = [0 x(1:$-1)];

subplot(2,1,2)
plot2d3(n,y)
title("Delayed signal")
xlabel("n")
ylabel("Amplitude")
