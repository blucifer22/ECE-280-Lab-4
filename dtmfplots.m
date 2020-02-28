%% This script plots the values of various DTMF key-presses on a subplot
%% Plot 1
subplot(3,1,1);
x = linspace(0, 100, 100);
y1 = dtmfdial('1', 8000);
y1 = y1(1:100);
plot(x, y1)
title("DTMF 1");
xlabel("Samples, n");
ylabel("y[n]");

%% Plot 5
subplot(3,1,2);
y2 = dtmfdial('5', 8000);
y2 = y2(1:100);
plot(x, y2)
title("DTMF 5");
xlabel("Samples, n");
ylabel("y[n]");
%% Plot 9
subplot(3,1,3);
y3 = dtmfdial('9', 8000);
y3 = y3(1:100);
plot(x, y3)
title("DTMF 9");
xlabel("Samples, n");
ylabel("y[n]");
