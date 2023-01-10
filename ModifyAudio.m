function [audio,audio0,audio1,audio2] = ModifyAudio(audio,Fs)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[audioMax] = MaxArray(abs(audio));
audioOrig = audio(abs(audio)>0);
audio = audioOrig/audioMax;
audio0 = abs(audio);
audio1 = audio0(audio0>0.002);
audio2 = audio0(audio0>0.01);
% sound(audio,Fs,24)
end
