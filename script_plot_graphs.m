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

% Calculo do Lmax,seg considerando que o aviao esta variando so a distancia projetada no solo 'l' e
% e com angulo de depressao = 0
beta = [-pi:0.001:pi];
beta = beta;
delta_beta(1:length(beta)) = 0;
for angle = 1:length(beta)
    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l >= 0 && l <= 3000)
        gama = 1.089*[1-exp(-0.00274*l)];
    elseif(l > 3000)
        gama = 1;
    end
    if(beta(angle) <= 0 && beta(angle) <= 0.8727)
        delta_beta(angle) = gama*(1.137 - 0.0229*beta(angle) + ...
        9.72*exp(-0.142*beta(angle)));
    elseif(beta(angle) > 0.8727 && beta(angle) <= pi/2)
        delta_beta(angle) = 0;
    end
end
Lmax_seg_2 = dB_to_plot_6(end) - delta_beta;
beta_o = (beta*180)/pi;
begin = 1;
ending = 1*length(beta);

figure;
plot(beta_o(begin:ending), Lmax_seg_2(begin:ending), 'r', beta_o(begin:ending), compare_Lmax_seg(begin:ending), 'b');
grid on;
grid minor;
legend('Lmax de segmento de vôo', 'Lmax padrão');
title('Grafico do LAmax (Nivel de pressao maxima instantanea ponderada) [dBA] pelo Angulo de Elevação');
xlabel('Angulo de Elevação [Graus]')
ylabel('Nível de Pressao Sonora [dBA]');

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_30  = delta_l;

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass)/cos((2/180)*pi);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_31  = delta_l;

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass)/cos((5/180)*pi);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_32  = delta_l;

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass)/cos((10/180)*pi);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_33  = delta_l;

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass)/cos((20/180)*pi);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_34  = delta_l;

l = [0:1:3937]; % em pes
delta_l(2:length(l)) = 0;
for pass = 2:length(l)
%    l = cos(beta(angle))*height_in_ft(end);
    gama = 0;
    if(l(pass) >= 0 && l(pass) <= 3000)
        gama = 1.089*[1-exp(-0.00274*l(pass))];
    elseif(l(pass) > 3000)
        gama = 1;
    end
%    beta = acos(l(pass)/height_in_ft(end))
    beta = 0;
    if(beta <= 0 && beta <= 0.8727)
        delta_l(pass) = gama*(1.137 - 0.0229*beta + ...
        9.72*exp(-0.142*beta));
    elseif(beta > 0.8727 && beta <= pi/2)
        delta_l(pass) = 0;
    end
    % Interpolate dB reference
    slot_db_reference = 0;
    common_tx = 9999;
    distance = l(pass)/cos((40/180)*pi);
    for pass_2 = 1:length(height_in_ft_interpolated)
        if((log(distance) - height_in_ft_interpolated(pass_2)).^2 < common_tx)
            slot_db_reference = pass_2;
        end
    end
    delta_l(pass) = dB_to_plot_6_interpolated(slot_db_reference) - delta_l(pass);
end
Lmax_seg_35  = delta_l;

figure;
plot(l, Lmax_seg_30, 'b',... 
l, Lmax_seg_31, 'r',...
l,Lmax_seg_32, 'y',...
l, Lmax_seg_33, 'm',...
l, Lmax_seg_34, 'c',...
l, Lmax_seg_35, 'k');

grid on;
grid minor;


% Calculo com a variacao dos 2, tanto angulo de depressao (fi) como angulo de elevacao (beta)
















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




