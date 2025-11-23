%% Skrypt do rysowania charakterystyki czasowej temperatury

% Wczytanie danych z pliku CSV
T = readtable('temperatura_5min.csv');  % dopasuj nazwę pliku

% Wyciągnięcie kolumn
time_ms = T.Czas_ms;
temp_C = T.Temp_C;

% Konwersja czasu na sekundy
time_s = time_ms / 1000;

% Rysowanie przebiegu temperatury w czasie
figure;
plot(time_s, temp_C, '-o', 'MarkerSize', 4);
xlabel('Czas [s]');
ylabel('Temperatura [°C]');
title('Charakterystyka czasowa układu grzałka-czujnik temperatury');
grid on;

% Opcjonalnie: zaznaczenie temperatury ustalonej
T_ust = temp_C(end);
yline(T_ust, '--r', sprintf('T_{ust} = %.2f °C', T_ust));
