%Programa para hacer el calculo de la fuerza y aceleración de la gravedad
clear all
close all
clc
G=6.672*10^(-11); %Constante de gravitación universal
%r=6371000;
m=5.972*10^(24); %Masa de la Tierra en Kg
m2=[48,60,48,72,75,90,60,56,84,80,72,70,67,60,110,90,55]; %Masa de los estudiantes
m2=sort(m2);%Ordena la masa de los estudiantes
%m2=45;
%Distancia de la ubicación actual de los estudiantes
r=[6371000,6371000,6371005,6371000,6371003,6371010,6371180,6371010,6371000,6371002,6371000,6371002,6371002,6371882,6371882,6371000,6371007]; 
%r=[6371000:0.2:6371002];
r=sort(r); %Ordena las distancia
f= G*((m.*m2)./(r.^2));%Cálculo de fuerza
a=f./m2; %Cálculo de la aceleración
subplot(2,2,1);
scatter(r,f,'k','fill');
title("Fuerza en función de la distancia");
xlabel ('Distancia');
ylabel('Fuerza');
grid on 
hold on
%Código para hacer el calculo de la fuerza en función de la masa
subplot(2,2,2);
scatter(m2,f,'b','fill');
title("Fuerza en función de la masa");
xlabel('Masa');
ylabel('Fuerza');
grid on 
hold on
%Código para hacer el cálculo de la aceleración en función de la distancia
subplot(2,2,3);
scatter(r,a,'green','fill');
title("Aceleración en función de la distancia");
xlabel('Distancia');
ylabel('Aceleración');
grid on
hold on
%Código para hacer el cálculo de la aceleración en función de la masa
subplot(2,2,4);
scatter(m2,a,'yellow','fill');
title("Aceleración en función de la masa");
xlabel('Masa');
ylabel('Aceleración');
grid on
hold on