clear

t1 = 0:0.0001:1;

U = 325%230*sqrt(2);
R = 1320;
f = 50;
T = 1/f;
alpha = 0 *pi;


t1 = [0:0.0001:2*T];

strom = stromPhasSchnitt(U/R,f,alpha,t1);

figure(1)
plot(t1,strom)




%Dauer des Signals:
T_ges = 2*T;
%Abtastfrequenz:
f_T = 2*f;



% RMS
RMSt = EffektivwertZeitbereich(strom)
RMSf = EffektivwertFourier(strom)






figure(1)
y = strom;
%Berechnung des Spektrums
y_DFT = fft(y);
y_DFT = fftshift(y_DFT);
N = length(y);
%Betragsspektrum
y_DFT_abs = abs(y_DFT)/N;
[val, min] = min(y_DFT_abs);
y_DFT_abs(min) = 0;
%Phasenspektrum
y_DFT_phase = unwrap(angle(y_DFT)/N);
%Zeitachse
t = T_ges*(0:(N-1))/(N-1);
%Frequenzachse
f_DFT = f_T*(0:(N-1))/(N-1);
%neues Fenster zur Darstellung
figure(1);
%Darstellung des Zeitsignals
subplot(3,1,1);
plot(t,y);
% ylim([-3 3]);
% xlim([0 0.05]);
title(['Zeitsignal, RMSt = ',num2str(RMSt),'V'])
xlabel('t/s');
ylabel('i(t)');
%Darstellung des Amplitudenspektrums
subplot(3,1,2);
semilogy(f_DFT, y_DFT_abs,'.-'); 
title(['Amplitudenspektrum, RMSf = ',num2str(RMSf),'V']);
% xlim([99.5 100.5]);
% ylim([10^(-3) max(y)]);
xlabel('f/Hz');
ylabel('A(f)');    
%Darstellung des Phasenspektrums
subplot(3,1,3);
plot(f_DFT, y_DFT_phase);
%xlim([99.5 100.5]);
title('Phasenspektrum');
xlabel('f/Hz');
ylabel('phi(f)');