function i=stromPhasSchnitt(id,f,alpha,t)
% functioni=stromPhasSchnitt(id, f, alpha, t)
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% filename:stromPhasSchnitt.m
% author: Dirk Babendererde (321 836), Thomas Kapa (325 219), Magdalene
% Busuru (319 433)
% organisation: TU Berlin
% project: MDV PR
% date: 10.05.2012
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
% description: simuliert einen mit dem Winkel alpha
% angeschnittenen Strom
% input: id    − Amplitude des Stroms
%        f     − frequenz des Stroms
%        alpha − Anschnittswinkel [rad]
%        t     − Vektor mit den Zeitpunkten, zu denen der Strom
%                  simuliert wird
% output: [i] zeitlicher Verlauf des Stromes
% −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

% alpha in [0,1]
a = alpha/pi;

% Periode
T = 1/f;

% erst einmal ein Sinus ausgeben
i = id * sin(2*pi*f*t);


% der Sinus wird auf numm gesetzt an den Stellen wo die Phase
% angeschnitten ist
k = 1;
while (k < length(t))
    if (mod(t(k),T/2) < a*T/2)
        i(k) = 0;
        
    end
    k= k + 1;
end

