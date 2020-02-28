function PhoneNum = dtmfdial(KeyNames, fs)
% DTMFDIAL      Create a signal vector of tones which will dial a DTMF
%               telephone system.
%
%  usage: PhoneNum = dtmfdial(KeyNames, fs)
%  KeyNames = a vector of characters containing valid key names
%  fs = sampling frequency
%  PhoneNum = signal vector that is the concatenation of DTMF tones
%
tone = [0:(1/fs):.5-(1/fs)];
silence = [0:(1/fs):.05-(1/fs)];
dtmf.Keys = ['1', '2', '3';
             '4', '5', '6';
             '7', '8', '9';
             '*', '0', '#'];
         
dtmf.colTones = ones(4,1)*[1209, 1336, 1477];
dtmf.rowTones = [697; 770; 852; 941]*ones(1,3);
PhoneNum = [];
for i = 1:length(KeyNames)
    RC = find(dtmf.Keys == KeyNames(i));
    curRowFreq = dtmf.rowTones(RC);
    curColFreq = dtmf.colTones(RC);
    % Create the tones
    CurNum = sin(2*pi*curRowFreq.*(tone))+ sin(2*pi*curColFreq.*(tone));
    % Add in the space
    CurNum = [CurNum, 0.*silence];
    PhoneNum = [PhoneNum, CurNum];
end