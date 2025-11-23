port = serialport("COM13", 115200);  
configureTerminator(port, "LF");      

numSamples = 200;     
data = zeros(numSamples, 2);

for k = 1:numSamples
    line = readline(port);            
    values = sscanf(line, "%f,%f");   

    if length(values) == 2
        data(k,1) = values(1);       
        data(k,2) = values(2);        
    end

    fprintf("PWM=%d   LUX=%.1f\n", data(k,1), data(k,2));
end

disp("Odbiór zakończony.");

writematrix(data, "pwm_lux.csv");
disp("Zapisano jako pwm_lux.csv");

figure;
plot(data(:,1), data(:,2), "-o");
xlabel("PWM");
ylabel("LUX");
title("Charakterystyka PWM → LUX");
grid on;

clear port
