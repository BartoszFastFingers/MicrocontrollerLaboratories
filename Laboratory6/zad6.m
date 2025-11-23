s = serialport("COM13", 115200);  % dopasuj port
configureTerminator(s,"LF");
flush(s);

time_ms = [];
temp_c = [];

disp('Odczyt danych przez 5 minut...');

t_start = tic;  % start pomiaru czasu
while toc(t_start) < 5*60  % 5 minut
    if s.NumBytesAvailable > 0
        line = readline(s);
        fprintf('Odebrano: %s\n', line);
        data = sscanf(line, '%d,%d');
        if numel(data) == 2
            t = data(1);
            temp = data(2)/100;  % przeliczenie na °C
            time_ms(end+1) = t;
            temp_c(end+1) = temp;
        end
    end
end

% Zapis do pliku CSV
T = table(time_ms', temp_c', 'VariableNames', {'Czas_ms','Temp_C'});
writetable(T, 'temperatura_5min.csv');

% Wykres
figure;
plot(time_ms/1000, temp_c, '-o');
xlabel('Czas [s]');
ylabel('Temperatura [°C]');
grid on;
title('Przebieg temperatury przez 5 minut');
