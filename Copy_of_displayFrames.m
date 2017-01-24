function a = displayFrames( frames)
%Displays a sequence of 480x640 grayscale frames 

n = size(frames);
figure
for i = 1:n(3)
    imshow(frames(:,:,i));
    pause(0.5);
end


end

