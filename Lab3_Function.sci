clc
clear

// FUNCTION 1: DELAY
function [yn, yorigin] = delay(xn, xorigin, k)

yn = xn
yorigin = xorigin + k

n1 = -(xorigin-1):(length(xn)-xorigin)
n2 = -(yorigin-1):(length(yn)-yorigin)

figure()

subplot(2,1,1)
plot2d3(n1,xn)
title("Original signal x(n)")
xlabel("n")
ylabel("Amplitude")

subplot(2,1,2)
plot2d3(n2,yn)
title("Delayed signal y(n)=x(n-k)")
xlabel("n")
ylabel("Amplitude")

endfunction

// FUNCTION 2: ADVANCE

function [yn, yorigin] = advance(xn, xorigin, k)

yn = xn
yorigin = xorigin - k
n1 = -(xorigin-1):(length(xn)-xorigin)
n2 = -(yorigin-1):(length(yn)-yorigin)

figure()

subplot(2,1,1)
plot2d3(n1,xn)
title("Original signal")
xlabel("n")

subplot(2,1,2)
plot2d3(n2,yn)
title("Advanced signal y(n)=x(n+k)")
xlabel("n")

endfunction



// ============================
// FUNCTION 3: FOLD
// ============================

function [yn, yorigin] = fold(xn, xorigin)

yn = xn($:-1:1)
yorigin = length(xn) - xorigin + 1

n1 = -(xorigin-1):(length(xn)-xorigin)
n2 = -(yorigin-1):(length(yn)-yorigin)

figure()

subplot(2,1,1)
plot2d3(n1,xn)
title("Original signal")
xlabel("n")

subplot(2,1,2)
plot2d3(n2,yn)
title("Folded signal y(n)=x(-n)")
xlabel("n")

endfunction

// FUNCTION 4: ADD (chuẩn origin)
function [yn,yorigin] = add(x1n,x1origin,x2n,x2origin)

shift = x1origin - x2origin

if shift > 0 then
    x2n = [zeros(1,shift) x2n]
elseif shift < 0 then
    x1n = [zeros(1,-shift) x1n]
end

len = max(length(x1n),length(x2n))

x1n($+1:len)=0
x2n($+1:len)=0

yn = x1n + x2n
yorigin = max(x1origin,x2origin)

n = -(yorigin-1):(length(yn)-yorigin)

figure()

subplot(3,1,1)
plot2d3(n,x1n)
title("x1(n)")
xlabel("n")

subplot(3,1,2)
plot2d3(n,x2n)
title("x2(n)")
xlabel("n")

subplot(3,1,3)
plot2d3(n,yn)
title("y(n)=x1(n)+x2(n)")
xlabel("n")

endfunction


// FUNCTION 5: MULTIPLICATION

function [yn,yorigin] = multi(x1n,x1origin,x2n,x2origin)

shift = x1origin - x2origin

if shift > 0 then
    x2n = [zeros(1,shift) x2n]
elseif shift < 0 then
    x1n = [zeros(1,-shift) x1n]
end

len = max(length(x1n),length(x2n))

x1n($+1:len)=0
x2n($+1:len)=0

yn = x1n .* x2n
yorigin = max(x1origin,x2origin)

n = -(yorigin-1):(length(yn)-yorigin)

figure()

subplot(3,1,1)
plot2d3(n,x1n)
title("x1(n)")
xlabel("n")

subplot(3,1,2)
plot2d3(n,x2n)
title("x2(n)")
xlabel("n")

subplot(3,1,3)
plot2d3(n,yn)
title("y(n)=x1(n)x2(n)")
xlabel("n")

endfunction

// FUNCTION 6: CONVOLUTION
function [yn,yorigin] = convolution(xn,xorigin,hn,horigin)

yn = conv(xn,hn)
yorigin = xorigin + horigin - 1

n = -(yorigin-1):(length(yn)-yorigin)

figure()

plot2d3(n,yn)
title("Convolution y(n)=x(n)*h(n)")
xlabel("n")
ylabel("Amplitude")

endfunction
