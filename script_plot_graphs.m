clear 'all'; close 'all';

% Open datas from NPD_data.csv
npd_data = open('NPD_data.csv');
height_in_ft = [200, 400, 630, 1000, 2000, 4000, 6300, 10000, 16000, 25000];

%-----------------------------------------------------------------------------
% Plot EPNL (Effective Perceived Noise Level)
epnl_data = npd_data.data(1:6, :);
% Power in foot-pound (lb) (libra-pe)
powers_setting = epnl_data(1:6, 1);
struct_powers_dB = {};
for power = 1:length(powers_setting)
    struct_powers_dB{power} = {powers_setting(power), epnl_data(power, 2:end)};
end
dB_to_plot = struct_powers_dB{1};
dB_to_plot_1 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{2};
dB_to_plot_2 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{3};
dB_to_plot_3 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{4};
dB_to_plot_4 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{5};
dB_to_plot_5 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{6};
dB_to_plot_6 = dB_to_plot{2};

% Interpolations -------------------------------


% Plot Graphs ----------------------------------
figure;
plot(height_in_ft, dB_to_plot_1, 'b--*', ... 
height_in_ft, dB_to_plot_2, 'r--*', ...
height_in_ft, dB_to_plot_3, 'y--*', ...
height_in_ft, dB_to_plot_4, 'm--*', ...
height_in_ft, dB_to_plot_5, 'c--*', ...
height_in_ft, dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('EPNL para potencia de 3000 libra-pe [lb]', ...
'EPNL para potencia de 6000 libra-pe [lb]', ...
'EPNL para potencia de 8000 libra-pe [lb]', ...
'EPNL para potencia de 10000 libra-pe [lb]', ...
'EPNL para potencia de 12000 libra-pe [lb]', ...
'EPNL para potencia de 14000 libra-pe [lb]');

title('Grafico do EPNL (Effective Perceived Noise Level) [EPNdB] por Altura [ft]');
xlabel('Altura (ft)')
ylabel('Pressao Sonora [EPNdB]');

% Plot Graphs ---------------------------------
figure;
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('EPNL para potencia de 3000 libra-pe [lb]', ...
'EPNL para potencia de 6000 libra-pe [lb]', ...
'EPNL para potencia de 8000 libra-pe [lb]', ...
'EPNL para potencia de 10000 libra-pe [lb]', ...
'EPNL para potencia de 12000 libra-pe [lb]', ...
'EPNL para potencia de 14000 libra-pe [lb]');

title('Grafico do EPNL (Effective Perceived Noise Level) [EPNdB] por Log(Altura [ft])');
xlabel('Log(Altura [ft])')
ylabel('Pressao Sonora [EPNdB]');

%-----------------------------------------------------------------------------
% Plot LAmax (Nivel pressao instantanea maxima com a ponderacao do filtro
% para simular a audicao humana)
lamax_data = npd_data.data(7:12, :);
% Power in foot-pound (lb) (libra-pe)
powers_setting = lamax_data(1:6, 1);
struct_powers_dB = {};
for power = 1:length(powers_setting)
    struct_powers_dB{power} = {powers_setting(power), lamax_data(power, 2:end)};
end
dB_to_plot = struct_powers_dB{1};
dB_to_plot_1 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{2};
dB_to_plot_2 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{3};
dB_to_plot_3 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{4};
dB_to_plot_4 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{5};
dB_to_plot_5 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{6};
dB_to_plot_6 = dB_to_plot{2};


% Plot Graph ----------------------------
figure;
plot(height_in_ft, dB_to_plot_1, 'b--*', ... 
height_in_ft, dB_to_plot_2, 'r--*', ...
height_in_ft, dB_to_plot_3, 'y--*', ...
height_in_ft, dB_to_plot_4, 'm--*', ...
height_in_ft, dB_to_plot_5, 'c--*', ...
height_in_ft, dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('LAmax para potencia de 3000 libra-pe [lb]', ...
'LAmax para potencia de 6000 libra-pe [lb]', ...
'LAmax para potencia de 8000 libra-pe [lb]', ...
'LAmax para potencia de 10000 libra-pe [lb]', ...
'LAmax para potencia de 12000 libra-pe [lb]', ...
'LAmax para potencia de 14000 libra-pe [lb]');

title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] por Altura [ft]');
xlabel('Altura [ft]')
ylabel('Pressao Sonora [dBA]');

% Plot Graph ----------------------------
figure;
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('LAmax para potencia de 3000 libra-pe [lb]', ...
'LAmax para potencia de 6000 libra-pe [lb]', ...
'LAmax para potencia de 8000 libra-pe [lb]', ...
'LAmax para potencia de 10000 libra-pe [lb]', ...
'LAmax para potencia de 12000 libra-pe [lb]', ...
'LAmax para potencia de 14000 libra-pe [lb]');

title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] por Log(Altura [ft])');
xlabel('Log(Altura [ft])')
ylabel('Pressao Sonora [dBA]');


%-----------------------------------------------------------------------------
% Plot SEL (Nivel de Exposicao Sonora)
lamax_data = npd_data.data(13:end, :);
% Power in foot-pound (lb) (libra-pe)
powers_setting = lamax_data(1:6, 1);
struct_powers_dB = {};
for power = 1:length(powers_setting)
    struct_powers_dB{power} = {powers_setting(power), lamax_data(power, 2:end)};
end
dB_to_plot = struct_powers_dB{1};
dB_to_plot_1 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{2};
dB_to_plot_2 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{3};
dB_to_plot_3 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{4};
dB_to_plot_4 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{5};
dB_to_plot_5 = dB_to_plot{2};
dB_to_plot = struct_powers_dB{6};
dB_to_plot_6 = dB_to_plot{2};

% Plot graph --------------------------------
figure;
plot(height_in_ft, dB_to_plot_1, 'b--*', ... 
height_in_ft, dB_to_plot_2, 'r--*', ...
height_in_ft, dB_to_plot_3, 'y--*', ...
height_in_ft, dB_to_plot_4, 'm--*', ...
height_in_ft, dB_to_plot_5, 'c--*', ...
height_in_ft, dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('SEL para potencia de 3000 libra-pe [lb]', ...
'SEL para potencia de 6000 libra-pe [lb]', ...
'SEL para potencia de 8000 libra-pe [lb]', ...
'SEL para potencia de 10000 libra-pe [lb]', ...
'SEL para potencia de 12000 libra-pe [lb]', ...
'SEL para potencia de 14000 libra-pe [lb]');

title('Grafico do SEL (nivel de exposicao sonora) [dba] por Altura [ft]');
xlabel('Altura [ft]');
ylabel('Pressao sonora [dba]');

% Plot graph --------------------------------
figure;
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('SEL para potencia de 3000 libra-pe [lb]', ...
'SEL para potencia de 6000 libra-pe [lb]', ...
'SEL para potencia de 8000 libra-pe [lb]', ...
'SEL para potencia de 10000 libra-pe [lb]', ...
'SEL para potencia de 12000 libra-pe [lb]', ...
'SEL para potencia de 14000 libra-pe [lb]');

title('Grafico do SEL (nivel de exposicao sonora) [dba] por log(Altura [ft])');
xlabel('log(Altura [ft])');
ylabel('Pressao sonora [dba]');

