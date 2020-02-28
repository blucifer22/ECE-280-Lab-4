%% Generate our signal
fs = 8000;
tone = [0:(1/fs):.5-(1/fs)];
x = UnknownKey;
%% 697
sig697 = sin(2*pi*697.*(tone));
corr697 = xcorr(x, sig697); 
%% 770
sig770 = sin(2*pi*770.*(tone));
corr770 = xcorr(x, sig770);
%% 852
sig852 = sin(2*pi*852.*(tone));
corr852 = xcorr(x, sig852);
%% 941
sig941 = sin(2*pi*941.*(tone));
corr941 = xcorr(x, sig941);
%% 1209
sig1209 = sin(2*pi*1209.*(tone));
corr1209 = xcorr(x, sig1209);
%% 1336
sig1336 = sin(2*pi*1336.*(tone));
corr1336 = xcorr(x, sig1336);
%% 1477
sig1477 = sin(2*pi*1477.*(tone));
corr1477 = xcorr(x, sig1477);

%% Make the subplots
x = linspace(1,8799,8799);
subplot(7,1,1);
plot(x,corr697)
title("697");

subplot(7,1,2);
plot(x,corr770)
title("770");

subplot(7,1,3);
plot(x,corr852)
title("852");

subplot(7,1,4);
plot(x,corr941)
title("941");

subplot(7,1,5);
plot(x,corr1209)
title("1209");

subplot(7,1,6);
plot(x,corr1336)
title("1336");

subplot(7,1,7);
plot(x,corr1477)
title("1477");