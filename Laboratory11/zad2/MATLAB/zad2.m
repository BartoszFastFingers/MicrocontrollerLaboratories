close all; clc; clear variables;

%% 1. Parametry Filtra dla Potencjometru
% Próbkowanie co 10ms -> fs = 100 Hz
fs = 100;       
% Odcięcie 5 Hz (usuwamy drgania ręki i szum sieci 50Hz)
fc = 5;         
% Rząd 2 (wystarczy jedna sekcja Biquad)
N = 2;          

%% 2. Projektowanie Filtra (Butterworth)
% Wn to znormalizowana częstotliwość (0.0 - 1.0, gdzie 1.0 to Nyquist)
Wn = fc / (fs/2);
[b, a] = butter(N, Wn, 'low');

%% 3. Wizualizacja (Dla Raportu)
figure;
freqz(b, a, 512, fs);
title('Charakterystyka Filtra Potencjometru (Butterworth 2 rząd)');

%% 4. Generowanie kodu C dla STM32
% Nazwiemy instancję 'POT_FILTER'
% Funkcja wygeneruje pliki: POT_FILTER_biquad_df1.c / .h / .csv
generate_biquad_df1('POT_FILTER', b, a);

disp('Gotowe! Skopiuj pliki POT_FILTER... do projektu STM32.');