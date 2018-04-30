function [Directional] = DirectDeriv(funct,X,Y,C,D)
%Directional Derivative
%  Funct is the function
%  X and Y are the coordinate
%  C and D are the vector values (Direction)
syms x;
syms y;
f = funct
a = diff(f,x)
b = diff(f,y)
gradient = [a,b]'
G = subs(gradient,x,X)
H = subs(G,y,Y)

vector = [C,D]
unit = vector / sqrt(C^2 + D^2)
Directional = dot(H,unit)



end

