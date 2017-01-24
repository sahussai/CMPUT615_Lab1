function tempDerivatives = imageDifference(images, threshold)
%Computes the temporal image differences between each successive image. If
%the difference is larger than a threshold, it is classified as a motion,
%and shows up in the output image.
n = size(images);
tempDerivatives = ones(480,640,n(3));
%tempImage = images(:,:,1);
for i= 2 : n(3)
    for y = 1: 480
        for x = 1 : 640
            
            diff = images(y,x,i-1) - images(y,x,i);
            if(diff > threshold)
                tempDerivatives(y,x,i) = diff;
            else
                tempDerivatives(y,x,i) = 0;
            %tempDerivatives(:,:,i)(y,x) = images(:,:,i-1)(y,x) - images(:,:,i)(y,x);
            %fprintf('%d',i)
            end
        end
    end
end

tempDerivatives = uint8(tempDerivatives);
end

