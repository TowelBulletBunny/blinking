%% Blink the on-board LED 10 times on Arduino Uno

% Clear workspace and command window
clear;
clc;

%% Connect to Arduino
% Replace "COM4" with your Arduino's COM port
a = arduino("COM4", "Uno");

%% Blink the LED 10 times
for k = 1:10
    writeDigitalPin(a, "D13", 1);  % Turn LED on
    pause(0.5);                     % Wait 0.5 seconds
    writeDigitalPin(a, "D13", 0);  % Turn LED off
    pause(0.5);                     % Wait 0.5 seconds
end

%% Clean up
clear a;  % Disconnect Arduino
