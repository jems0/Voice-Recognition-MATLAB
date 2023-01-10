function [audio,audio2,integralSect] = MakeData(audio)
%Create needed data for CodeCatcher

%audio is the sound

%audio2 is the absolute value of the sound > 0.002, which then has 0's
%added to it to make it length Fs (1s)

%audioSect is audio2 divided into 20 arrays

load('P3data');

%Scale audio
[audioMax] = MaxArray(abs(audio));
audio = audio(abs(audio)>0);
audio = audio/audioMax;

%Make audio2 the absolute value of audio
audio2 = abs(audio);

%Cut values below 0.002 out of audio2
audio2 = audio2(audio2>0.002);


%Make audio2 length 1 sec
%If length is longer than 1 sec, trim
%If length is shorter than 1 sec, add 0's
len = length(audio2);
if(len>Fs)
    audio2 = audio2(1:Fs);
else
rem = Fs-len;
z = zeros(rem,1);
audio2 = [audio2; z];
end

%Convert audio to frequency domain
[integral] = Transform(sigma,audio,Fs);
integral = abs(integral);

% integral(integral>0.01) = 0;

%Divide integral into 20 sections
len = length(integral);
sections = 20;
sectLen = len/sections;
sum0 = 0;
sum1 = 0;
sum2 = 0;
sum3 = 0;
sum4 = 0;
sum5 = 0;
sum6 = 0;
sum7 = 0;
sum8 = 0;
sum9 = 0;
sum10 = 0;
sum11 = 0;
sum12 = 0;
sum13 = 0;
sum14 = 0;
sum15 = 0;
sum16 = 0;
sum17 = 0;
sum18 = 0;
sum19 = 0;
for n = 1:sectLen
    n0 = n;
    n1 = n0 + sectLen;
    n2 = n1 + sectLen;
    n3 = n2 + sectLen;
    n4 = n3 + sectLen;
    n5 = n4 + sectLen;
    n6 = n5 + sectLen;
    n7 = n6 + sectLen;
    n8 = n7 + sectLen;
    n9 = n8 + sectLen;
    n10 = n9 + sectLen;
    n11 = n10 + sectLen;
    n12 = n11 + sectLen;
    n13 = n12 + sectLen;
    n14 = n13 + sectLen;
    n15 = n14 + sectLen;
    n16 = n15 + sectLen;
    n17 = n16 + sectLen;
    n18 = n17 + sectLen;
    n19 = n18 + sectLen;
    sum0 = sum0 + integral(n0);
    sum1 = sum1 + integral(n1);
    sum2 = sum2 + integral(n2);
    sum3 = sum3 + integral(n3);
    sum4 = sum4 + integral(n4);
    sum5 = sum5 + integral(n5);
    sum6 = sum6 + integral(n6);
    sum7 = sum7 + integral(n7);
    sum8 = sum8 + integral(n8);
    sum9 = sum9 + integral(n9);
    sum10 = sum10 + integral(n10);
    sum11 = sum11 + integral(n11);
    sum12 = sum12 + integral(n12);
    sum13 = sum13 + integral(n13);
    sum14 = sum14 + integral(n14);
    sum15 = sum15 + integral(n15);
    sum16 = sum16 + integral(n16);
    sum17 = sum17 + integral(n17);
    sum18 = sum18 + integral(n18);
    sum19 = sum19 + integral(n19);
end

%Divide audio2 into 20 sections
len = length(audio2);
sections = 20;
sectLen = len/sections;
Sum0 = 0;
Sum1 = 0;
Sum2 = 0;
Sum3 = 0;
Sum4 = 0;
Sum5 = 0;
Sum6 = 0;
Sum7 = 0;
Sum8 = 0;
Sum9 = 0;
Sum10 = 0;
Sum11 = 0;
Sum12 = 0;
Sum13 = 0;
Sum14 = 0;
Sum15 = 0;
Sum16 = 0;
Sum17 = 0;
Sum18 = 0;
Sum19 = 0;
% Sum20 = 0;
% Sum21 = 0;
% Sum22 = 0;
% Sum23 = 0;
% Sum24 = 0;
for n = 1:sectLen
    n0 = n;
    n1 = n0 + sectLen;
    n2 = n1 + sectLen;
    n3 = n2 + sectLen;
    n4 = n3 + sectLen;
    n5 = n4 + sectLen;
    n6 = n5 + sectLen;
    n7 = n6 + sectLen;
    n8 = n7 + sectLen;
    n9 = n8 + sectLen;
    n10 = n9 + sectLen;
    n11 = n10 + sectLen;
    n12 = n11 + sectLen;
    n13 = n12 + sectLen;
    n14 = n13 + sectLen;
    n15 = n14 + sectLen;
    n16 = n15 + sectLen;
    n17 = n16 + sectLen;
    n18 = n17 + sectLen;
    n19 = n18 + sectLen;
%     n20 = n19 + sectLen;
%     n21 = n20 + sectLen;
%     n22 = n21 + sectLen;
%     n23 = n22 + sectLen;
%     n24 = n23 + sectLen;
    Sum0 = Sum0 + audio2(n0);
    Sum1 = Sum1 + audio2(n1);
    Sum2 = Sum2 + audio2(n2);
    Sum3 = Sum3 + audio2(n3);
    Sum4 = Sum4 + audio2(n4);
    Sum5 = Sum5 + audio2(n5);
    Sum6 = Sum6 + audio2(n6);
    Sum7 = Sum7 + audio2(n7);
    Sum8 = Sum8 + audio2(n8);
    Sum9 = Sum9 + audio2(n9);
    Sum10 = Sum10 + audio2(n10);
    Sum11 = Sum11 + audio2(n11);
    Sum12 = Sum12 + audio2(n12);
    Sum13 = Sum13 + audio2(n13);
    Sum14 = Sum14 + audio2(n14);
    Sum15 = Sum15 + audio2(n15);
    Sum16 = Sum16 + audio2(n16);
    Sum17 = Sum17 + audio2(n17);
    Sum18 = Sum18 + audio2(n18);
    Sum19 = Sum19 + audio2(n19);
%     Sum20 = Sum20 + audio2(n20);
%     Sum21 = Sum21 + audio2(n21);
%     Sum22 = Sum22 + audio2(n22);
%     Sum23 = Sum23 + audio2(n23);
%     Sum24 = Sum24 + audio2(n23);
end

%Make an array with all of this data
    integralSect = [sum0 sum1 sum2 sum3 sum4 sum5 sum6 sum7 sum8 sum9 sum10 sum11 sum12 sum13 sum14 sum15 sum16 sum17 sum18 sum19];
%     audio2Sect = [Sum0 Sum1 Sum2 Sum3 Sum4 Sum5 Sum6 Sum7 Sum8 Sum9 Sum10 Sum11 Sum12 Sum13 Sum14 Sum15 Sum16 Sum17 Sum18 Sum19];
%     Sect = [integralSect audio2Sect];

% Sect = [Sum0 Sum1 Sum2 Sum3 Sum4 Sum5 Sum6 Sum7 Sum8 Sum9 Sum10 Sum11 Sum12 Sum13 Sum14 Sum15 Sum16 Sum17 Sum18 Sum19];
end
