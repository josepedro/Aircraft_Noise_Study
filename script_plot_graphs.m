clear 'all'; close 'all';

% Open datas from NPD_data.csv
npd_data = open('NPD_data.csv');
height_in_ft = [200, 400, 630, 1000, 2000, 4000, 6300, 10000, 16000, 25000];

%-----------------------------------------------------------------------------
% Plot EPNL (Effective Perceived Noise Level)
epnl_data = npd_data.data(1:6, :);
% Power in foot-pound (lb) ( )
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
height_in_ft_interpolated = [...
height_in_ft(1):(height_in_ft(2)-height_in_ft(1))/10:height_in_ft(2), ...
height_in_ft(2):(height_in_ft(3)-height_in_ft(2))/10:height_in_ft(3), ...
height_in_ft(3):(height_in_ft(4)-height_in_ft(3))/10:height_in_ft(4), ...
height_in_ft(4):(height_in_ft(5)-height_in_ft(4))/10:height_in_ft(5), ...
height_in_ft(5):(height_in_ft(6)-height_in_ft(5))/10:height_in_ft(6), ...
height_in_ft(6):(height_in_ft(7)-height_in_ft(6))/10:height_in_ft(7), ...
height_in_ft(7):(height_in_ft(8)-height_in_ft(7))/10:height_in_ft(8), ...
height_in_ft(8):(height_in_ft(9)-height_in_ft(8))/10:height_in_ft(9), ...
height_in_ft(9):(height_in_ft(10)-height_in_ft(9))/10:height_in_ft(10) ...
];
height_in_ft_interpolated = log(height_in_ft_interpolated);

dB_to_plot_1_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_1_interpolated(index) = ...
            dB_to_plot_1(point)+(dB_to_plot_1(point+1)-dB_to_plot_1(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_1_interpolated(index) = dB_to_plot_1(point);
    end
end

dB_to_plot_2_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_2_interpolated(index) = ...
            dB_to_plot_2(point)+(dB_to_plot_2(point+1)-dB_to_plot_2(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_2_interpolated(index) = dB_to_plot_2(point);
    end
end

dB_to_plot_3_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_3_interpolated(index) = ...
            dB_to_plot_3(point)+(dB_to_plot_3(point+1)-dB_to_plot_3(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_3_interpolated(index) = dB_to_plot_3(point);
    end
end

dB_to_plot_4_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_4_interpolated(index) = ...
            dB_to_plot_4(point)+(dB_to_plot_4(point+1)-dB_to_plot_4(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_4_interpolated(index) = dB_to_plot_4(point);
    end
end

dB_to_plot_5_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_5_interpolated(index) = ...
            dB_to_plot_5(point)+(dB_to_plot_5(point+1)-dB_to_plot_5(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_5_interpolated(index) = dB_to_plot_5(point);
    end
end

dB_to_plot_6_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_6_interpolated(index) = ...
            dB_to_plot_6(point)+(dB_to_plot_6(point+1)-dB_to_plot_6(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_6_interpolated(index) = dB_to_plot_6(point);
    end
end

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
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do EPNL (Effective Perceived Noise Level) [EPNdB] por Altura [ft]');
xlabel('Altura (ft)')
ylabel('Pressao Sonora [EPNdB]');

% Plot Graphs ---------------------------------
figure;
subplot(1,2,1);
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do EPNL (Effective Perceived Noise Level) [EPNdB] por Log(Altura [ft])');
xlabel('Log(Altura [ft])')
ylabel('Nível de Pressao Sonora [EPNdB]');

% Plot Graphs ---------------------------------
subplot(1,2,2);
plot(height_in_ft_interpolated, dB_to_plot_1_interpolated, 'b--*',... 
height_in_ft_interpolated, dB_to_plot_2_interpolated, 'r--*',...
height_in_ft_interpolated, dB_to_plot_3_interpolated, 'y--*',...
height_in_ft_interpolated, dB_to_plot_4_interpolated, 'm--*',...
height_in_ft_interpolated, dB_to_plot_5_interpolated, 'c--*',...
height_in_ft_interpolated, dB_to_plot_6_interpolated, 'k--*');

grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');


title('Grafico do EPNL (Effective Perceived Noise Level) [EPNdB] por Log(Altura [ft])');
xlabel('Log(Altura [ft])')
ylabel('Nível de Pressao Sonora [EPNdB]');



%-----------------------------------------------------------------------------
% Plot LAmax (Nivel pressao instantanea maxima com a ponderacao do filtro
% para simular a audicao humana)
lamax_data = npd_data.data(7:12, :);
% Power in foot-pound (lb) ( )
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

% Interpolations -------------------------------
height_in_ft_interpolated = [...
height_in_ft(1):(height_in_ft(2)-height_in_ft(1))/10:height_in_ft(2), ...
height_in_ft(2):(height_in_ft(3)-height_in_ft(2))/10:height_in_ft(3), ...
height_in_ft(3):(height_in_ft(4)-height_in_ft(3))/10:height_in_ft(4), ...
height_in_ft(4):(height_in_ft(5)-height_in_ft(4))/10:height_in_ft(5), ...
height_in_ft(5):(height_in_ft(6)-height_in_ft(5))/10:height_in_ft(6), ...
height_in_ft(6):(height_in_ft(7)-height_in_ft(6))/10:height_in_ft(7), ...
height_in_ft(7):(height_in_ft(8)-height_in_ft(7))/10:height_in_ft(8), ...
height_in_ft(8):(height_in_ft(9)-height_in_ft(8))/10:height_in_ft(9), ...
height_in_ft(9):(height_in_ft(10)-height_in_ft(9))/10:height_in_ft(10) ...
];
height_in_ft_interpolated = log(height_in_ft_interpolated);

dB_to_plot_1_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_1_interpolated(index) = ...
            dB_to_plot_1(point)+(dB_to_plot_1(point+1)-dB_to_plot_1(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_1_interpolated(index) = dB_to_plot_1(point);
    end
end

dB_to_plot_2_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_2_interpolated(index) = ...
            dB_to_plot_2(point)+(dB_to_plot_2(point+1)-dB_to_plot_2(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_2_interpolated(index) = dB_to_plot_2(point);
    end
end

dB_to_plot_3_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_3_interpolated(index) = ...
            dB_to_plot_3(point)+(dB_to_plot_3(point+1)-dB_to_plot_3(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_3_interpolated(index) = dB_to_plot_3(point);
    end
end

dB_to_plot_4_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_4_interpolated(index) = ...
            dB_to_plot_4(point)+(dB_to_plot_4(point+1)-dB_to_plot_4(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_4_interpolated(index) = dB_to_plot_4(point);
    end
end

dB_to_plot_5_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_5_interpolated(index) = ...
            dB_to_plot_5(point)+(dB_to_plot_5(point+1)-dB_to_plot_5(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_5_interpolated(index) = dB_to_plot_5(point);
    end
end

dB_to_plot_6_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_6_interpolated(index) = ...
            dB_to_plot_6(point)+(dB_to_plot_6(point+1)-dB_to_plot_6(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_6_interpolated(index) = dB_to_plot_6(point);
    end
end


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
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] por Altura [ft]');
xlabel('Altura [ft]')
ylabel('Pressao Sonora [dBA]');

% Plot Graph ----------------------------
figure;
subplot(1,2,1);
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] por Log(Altura [ft])');
xlabel('Log(Altura [ft])')
ylabel('Pressao Sonora [dBA]');

% Plot Graph ----------------------------
subplot(1,2,2);

plot(height_in_ft_interpolated, dB_to_plot_1_interpolated, 'b--*',... 
height_in_ft_interpolated, dB_to_plot_2_interpolated, 'r--*',...
height_in_ft_interpolated, dB_to_plot_3_interpolated, 'y--*',...
height_in_ft_interpolated, dB_to_plot_4_interpolated, 'm--*',...
height_in_ft_interpolated, dB_to_plot_5_interpolated, 'c--*',...
height_in_ft_interpolated, dB_to_plot_6_interpolated, 'k--*');

grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] por Log(Altura [ft]) Interpolado');
xlabel('Log(Altura [ft])')
ylabel('Pressao Sonora [dBA]');



%-----------------------------------------------------------------------------
% Plot SEL (Nivel de Exposicao Sonora)
lamax_data = npd_data.data(13:end, :);
% Power in foot-pound (lb) ( )
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


% Interpolations -------------------------------
height_in_ft_interpolated = [...
height_in_ft(1):(height_in_ft(2)-height_in_ft(1))/10:height_in_ft(2), ...
height_in_ft(2):(height_in_ft(3)-height_in_ft(2))/10:height_in_ft(3), ...
height_in_ft(3):(height_in_ft(4)-height_in_ft(3))/10:height_in_ft(4), ...
height_in_ft(4):(height_in_ft(5)-height_in_ft(4))/10:height_in_ft(5), ...
height_in_ft(5):(height_in_ft(6)-height_in_ft(5))/10:height_in_ft(6), ...
height_in_ft(6):(height_in_ft(7)-height_in_ft(6))/10:height_in_ft(7), ...
height_in_ft(7):(height_in_ft(8)-height_in_ft(7))/10:height_in_ft(8), ...
height_in_ft(8):(height_in_ft(9)-height_in_ft(8))/10:height_in_ft(9), ...
height_in_ft(9):(height_in_ft(10)-height_in_ft(9))/10:height_in_ft(10) ...
];
height_in_ft_interpolated = log(height_in_ft_interpolated);

dB_to_plot_1_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_1_interpolated(index) = ...
            dB_to_plot_1(point)+(dB_to_plot_1(point+1)-dB_to_plot_1(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_1_interpolated(index) = dB_to_plot_1(point);
    end
end

dB_to_plot_2_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_2_interpolated(index) = ...
            dB_to_plot_2(point)+(dB_to_plot_2(point+1)-dB_to_plot_2(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_2_interpolated(index) = dB_to_plot_2(point);
    end
end

dB_to_plot_3_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_3_interpolated(index) = ...
            dB_to_plot_3(point)+(dB_to_plot_3(point+1)-dB_to_plot_3(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_3_interpolated(index) = dB_to_plot_3(point);
    end
end

dB_to_plot_4_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_4_interpolated(index) = ...
            dB_to_plot_4(point)+(dB_to_plot_4(point+1)-dB_to_plot_4(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_4_interpolated(index) = dB_to_plot_4(point);
    end
end

dB_to_plot_5_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_5_interpolated(index) = ...
            dB_to_plot_5(point)+(dB_to_plot_5(point+1)-dB_to_plot_5(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_5_interpolated(index) = dB_to_plot_5(point);
    end
end

dB_to_plot_6_interpolated(1:length(height_in_ft_interpolated)) = 0;
for index = 1:length(height_in_ft_interpolated)
    point = fix(index/10) + 1;
    if point == 10
        point = 9;
    end
    if(isempty(find(height_in_ft == height_in_ft_interpolated(index))))
        dB_to_plot_6_interpolated(index) = ...
            dB_to_plot_6(point)+(dB_to_plot_6(point+1)-dB_to_plot_6(point))*...
            ((height_in_ft_interpolated(index))-log(height_in_ft(point)))/...
            (log(height_in_ft(point+1)) - log(height_in_ft(point)));
    else
        dB_to_plot_6_interpolated(index) = dB_to_plot_6(point);
    end
end

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
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do SEL (nivel de exposicao sonora) [dba] por Altura [ft]');
xlabel('Altura [ft]');
ylabel('Pressao sonora [dba]');

% Plot graph --------------------------------
figure;
subplot(1,2,1);
plot(log(height_in_ft), dB_to_plot_1, 'b--*', ... 
log(height_in_ft), dB_to_plot_2, 'r--*', ...
log(height_in_ft), dB_to_plot_3, 'y--*', ...
log(height_in_ft), dB_to_plot_4, 'm--*', ...
log(height_in_ft), dB_to_plot_5, 'c--*', ...
log(height_in_ft), dB_to_plot_6, 'k--*');
grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do SEL (nivel de exposicao sonora) [dba] por log(Altura [ft])');
xlabel('log(Altura [ft])');
ylabel('Pressao sonora [dba]');


% Plot graph --------------------------------
subplot(1,2,2);
plot(height_in_ft_interpolated, dB_to_plot_1_interpolated, 'b--*',... 
height_in_ft_interpolated, dB_to_plot_2_interpolated, 'r--*',...
height_in_ft_interpolated, dB_to_plot_3_interpolated, 'y--*',...
height_in_ft_interpolated, dB_to_plot_4_interpolated, 'm--*',...
height_in_ft_interpolated, dB_to_plot_5_interpolated, 'c--*',...
height_in_ft_interpolated, dB_to_plot_6_interpolated, 'k--*');

grid on;
grid minor;
legend('potencia de 3000 [lb]', ...
'potencia de 6000 [lb]', ...
'potencia de 8000 [lb]', ...
'potencia de 10000 [lb]', ...
'potencia de 12000 [lb]', ...
'potencia de 14000 [lb]');

title('Grafico do SEL (nivel de exposicao sonora) [dba] por log(Altura [ft]) Interpolado');
xlabel('log(Altura [ft])');
ylabel('Pressao sonora [dba]');




