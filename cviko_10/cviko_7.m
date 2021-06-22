clear all, close all, clc

load('estSys.mat');

%% Vstupne data

Ad = DestSys.A;
Bd = DestSys.B;
Cd = [1 0];
dx0 = [0.01; 0];
% penalizacne matice
R = 0.3e-8;
Q = Cd' * Cd;

np = 5;

%% Predikcia
[H,G,Ac,Bx,M,N] = MPC_INPUT(Ad,Bd,Q,R,np,0);

