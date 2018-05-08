function [Heartbeat,t] = Heartbeat(HR,Freq,pulse_width,Amp,duration)
%UNTITLED3 Summary of this function goes here
%   Heartbeat is measured in beats per minute
%   Sample frequency (fs) sets the sample frequency in Hertz. (Generally
%    100-500 Hz
%   Pulse width is the time for the QRS wave
%   Amp in in microVolts 
%   Duration is the intended time of the program
Fs = Freq;

delay = (60/HR);
t = 0 : 1/Fs : duration; 
d = 0 : delay : duration; 
Heartbeat = Amp*pulstran(t,d,'tripuls',pulse_width);
plot(t,Heartbeat);
title('QRS Wave');
xlabel('Time (s)');
ylabel('Voltage (mV)');
end

