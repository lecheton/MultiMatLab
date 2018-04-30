function [Heartbeat,t] = Heartbeat(HR,pulse_width,Amp,duration)
%UNTITLED3 Summary of this function goes here
%   Heartbeat is measured in beats per minute
%   Pulse width is the time for the QRS wave
%   Amp in in microVolts 
%   Duration is the intended time of the program
Fs = 48000;

delay = (60/HR);
t = 0 : 1/Fs : duration; 
d = 0 : delay : duration; 
Heartbeat = Amp*pulstran(t,d,'tripuls',pulse_width);
plot(Heartbeat);
end

