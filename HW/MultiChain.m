function [dw] = MultiChain(w,A,B)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
syms x y t;

a = diff(w,x);
b = diff(w,y);
c = diff(A);
d = diff(B);
e = subs(a,x,A);
f = subs(e,y,B);
g = subs(b,x,A);
h = subs(g,y,B);
dw = f*c + h*d

end

