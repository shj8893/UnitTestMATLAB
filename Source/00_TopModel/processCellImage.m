function imageOut = processCellImage(imageIn)
    % Constrast processing
    imgAdj = MyImadjust(imageIn);

    % Filtering
    imgFil = MyImfilter(imgAdj, ones(2,2)/4);

    % Texture filtering
    imgText = MyRangefilt(imgFil);

    % Threshold
    imgBin = Binarize(imgText,45);

    % Post treatment
    imageOut = PostTreat(imgBin,ones(7,7),ones(22,22));
    
    
end