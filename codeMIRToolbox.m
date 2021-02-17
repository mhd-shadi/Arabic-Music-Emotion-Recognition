%This MATLAB code is to extract 7 acoustic features from the given dataset of music audio files.
%The features to be extracted are Low Energy, Pulse Clarity, Zero Crossing, Roll Off, Brightness, Centroid, and Mode.
%The code uses MIRToolbox.

path = '' %add path to TXT file that contains the paths to the music audio files (each on a separate line)

%Low Energy
rms = mirrms(path,'Frame');
lowEnergy = mirlowenergy(rms)

%Pulse Clarity
autocorr = mirautocor(path);
pulseClarity = mirpulseclarity(autocorr)

%Zero Crossing
zeroCross = mirzerocross(path)

%Roll Off
rollOff = mirrolloff(path)

%Brightness
brightness = mirbrightness(path)

%Centroid
centroid = mircentroid(path)

%Mode
mode = mirmode(path)