function [speed,acceleration] = SpeedAcceleration(vectorx,vectory,vectorz)
%Finding speed from three dimensional position vectors
%   Detailed explanation goes here
syms t ;
a = diff(vectorx);
b = diff(vectory);
c = diff(vectorz);
 speed = sqrt(a^2 + b^2 + c^2)

 d = diff(a);
 e = diff(b);
 f = diff(c);
 acceleration = sqrt(d^2 + e^2 + f^2)
 
end

