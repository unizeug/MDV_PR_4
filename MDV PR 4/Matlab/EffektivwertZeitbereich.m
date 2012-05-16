function RMSxt = EffektivwertZeitbereich(xt)
% function RMSxt = EffektivwertZeitbereich(xt)
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% filename:EffektivwertZeitbereich.m
% author: Dirk Babendererde (321 836), Thomas Kapa (325 219), Magdalene
% Busuru (319 433)
% organisation: TU Berlin
% project: MDV PR
% date: 10.05.2012
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% description: Bestimmt den Effektivwert im Zeitbereich
% eines Signals xt
% input: xt: Signalim Zeitbereich
%
% output: RMSxt: Effektivwert des Signals


RMSxt = sqrt(mean(xt.^2));