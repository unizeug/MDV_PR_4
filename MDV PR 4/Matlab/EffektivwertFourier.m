function RMSIf = EffektivwertFourier(xt)
% function RMSIf = EffektivwertFourie(xt)
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% filename:EffektivwertFourier.m
% author: Dirk Babendererde (321 836), Thomas Kapa (325 219), Magdalene
% Busuru (319 433)
% organisation: TU Berlin
% project: MDV PR
% date: 10.05.2012
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% description: Bestimmt im Frequenzbereich den Effektivwert
% eines Signals
% input: xt: Signal im Zeitbereich
%
% output: RMSIf: Effektivwert des Signals, berechnet
% aus den Fourierkoeffizienten

RMSIf = sqrt(mean(abs(fftshift(fft(xt))).^2)/length(xt));
