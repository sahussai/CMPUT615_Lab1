function im = imageCapture(n, delay)
%imageCapture: Captures n frames, with delay seconds between each frame
%captured. Frames have to be 480x640.

im = zeros(480,640,n);
for i = 1 : n
    im(:,:,i) = rgb2gray(MexVision('frame'));
    pause(delay);
end

im = uint8(im);

end

