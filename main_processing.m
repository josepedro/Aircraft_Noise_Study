clear 'all'; close 'all';

% Open datas from NPD_data.csv
npd_data = open('boeing_737_data/NPD_data.csv');
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
xlabel('Altura [ft]')
ylabel('Nivel de Pressao Sonora [EPNdB]');

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
ylabel('Nivel de Pressao Sonora [dBA]');

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
ylabel('Nivel de Pressao Sonora [dBA]');

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
ylabel('Nivel de Pressao Sonora [dBA]');


%------------------------------------------------------
% Calculate Lmax,seg = Lmax(P,d) + deltaI(fi) - /\(beta,l)
% Para esse calculo sera considerado 'P' = 14000[lb] e distancia obliqua 'd' = 25000 ft (7.2 km)
% deltaI(fi) -> Efeito da Implatação: é o efeito da reflexão, refração e dispersão devido ao ângula de depressão
% /\(beta, l) -> Atenuação Lateral: o ruido numa direcao obliqua possui uma atenucao, em baixo da nave ela eh maior
% 
% deltaI(fi) = 10*log[(a*cos^2fi + sin^2fi)^b/(c*sin^2(2*fi)+cos^2(2fi))]
% 'fi' eh o angulo de depressao e, como nesse caso eh o boeing 737 os motores estao nas asas logo:
% a = 0.00384; b = 0.0621; c = 0.8786
%
% /\(beta, l) = Gama(l) * /\(beta)
% Gama(l) é um fator de distancia dado por:
% Gama(l) = 1.089*[1-exp(-0.00274*l)] para 0 <= l <= 3000 ft
% Gama(l) = 1 para l > 3000 ft
% /\(beta) que é atenuacao lateral ar-solo ao longo da distancia eh dado por:
% /\(beta) = 1.137 - 0.0229*beta + 9.72*exp(-0.142*B) para 0 <= beta <= 50
% /\(beta) = 0 para 50 <= beta <= 90
% Consideraremos que a distancia obliqua sera constante, ou seja, 'd' = 25000 ft, portanto:
% beta = cos^-1(l/d). O 'l' ira variar

% Calculo do Lmax,seg considerando que o /\ = 1, ou seja, o aviao esta em cima do observador e ele esta
% variando somente a diretividade lateral deltaI(fi)
fi = [-pi:0.001:pi];
fi = fi + pi/2;
a = 0.00384;
b = 0.0621;
c = 0.8786;
A = (a*((cos(fi)).^2) + (sin(fi)).^2).^b;
B = c*(sin(2*fi).^2) + cos(2*fi).^2;
deltaI_fi = 10*log(A./B);
Lmax_seg = dB_to_plot_6(end) + deltaI_fi;
compare_Lmax_seg(1:length(Lmax_seg)) = dB_to_plot_6(end);
fi_o = (fi*180)/pi - 90;
begin = 0.25*length(fi_o);
ending = 0.75*length(fi_o);

figure;
plot(fi_o(begin:ending), Lmax_seg(begin:ending), 'r', fi_o(begin:ending), compare_Lmax_seg(begin:ending), 'b');
grid on;
grid minor;
legend('Lmax de segmento de vôo', 'Lmax padrão');
title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] pelo Angulo de Depressao');
xlabel('Angulo de Depressao [Graus]')
ylabel('Nível de Pressao Sonora [dBA]');

% Graph in foot, to analyze the efect of lateral distance ------------------------------------
l = [1:1:3937];
% Make in 0 degree
beta = 0;
delta_0(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 0
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_0(pass) = gama*delta;
end

% Graph in foot --------------------------------------
% Make in 2 degree
beta = (2*pi)/180;
delta_2(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 2
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_2(pass) = gama*delta;
end

% Graph in foot --------------------------------------
% Make in 5 degree
beta = (5*pi)/180;
delta_5(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 5
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_5(pass) = gama*delta;
end

% Graph in foot --------------------------------------
% Make in 10 degree
beta = (10*pi)/180;
delta_10(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 10
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_10(pass) = gama*delta;
end

% Graph in foot --------------------------------------
% Make in 20 degree
beta = (20*pi)/180;
delta_20(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 20
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_20(pass) = gama*delta;
end

% Graph in foot --------------------------------------
% Make in 40 degree
beta = (40*pi)/180;
delta_40(1:length(l)) = 0;
gama = 0;
delta = 0;
for pass = 1:length(l)
    % Calculate gama
    if(l(pass) >= 0 && l(pass) <= (914/0.3048))
        gama = 1.089*(1-exp(-0.00274*l(pass)));
    elseif(l(pass)>(914/0.3048))
        gama = 1;
    end
    % Calculate delta with degree = 40
    delta = 1.137 - 0.0229*beta  + 9.72*exp(-0.142*beta);
    delta_40(pass) = gama*delta;
end

figure;
plot(l, delta_0, 'b', ...
l,delta_2, 'r', ...
l,delta_5, 'y', ...
l,delta_10, 'm', ...
l,delta_20, 'c', ...
l,delta_40, 'k' ...
);
grid on;
grid minor;
legend('0 grau', '2 graus', '5 graus', '10 graus', '20 graus', '40 graus');
title('Gráfico de variação da atenuação lateral pelo ângulo de elevação e com distância.');
xlabel('Distância lateral [ft]')
ylabel('Ajustamento acima da superfície [dB]');


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

title('Grafico do SEL (nivel de exposicao sonora) [dBA] por Altura [ft]');
xlabel('Altura [ft]');
ylabel('Nível de Pressao Sonora [dBA]');

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

title('Grafico do SEL (nivel de exposicao sonora) [dBA] por log(Altura [ft])');
xlabel('log(Altura [ft])');
ylabel('Nivel de Pressao Sonora [dBA]');


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

title('Grafico do SEL (nivel de exposicao sonora) [dBA] por log(Altura [ft]) Interpolado');
xlabel('log(Altura [ft])');
ylabel('Nivel de Pressao Sonora [dBA]');

