clc
clear

exec("Lab3_Function.sci")

x = [1 -2 3 6]
xorigin = 3

delay(x,xorigin,1)
advance(x,xorigin,1)
fold(x,xorigin)

add([0 1 3 -2],1,[1 1 2 3],2)
multi([0 1 3 -2],1,[1 1 2 3],2)

convolution([1 2 1],2,[1 -1],1)
