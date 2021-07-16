function imageOut = processCellImage(imageIn)
    % Constrast processing
    imgAdj = MyImadjust(imageIn);

    % Filtering
    imgFil = MyImfilter(imgAdj, ones(2,2)/4);

    % Texture filtering
    imgText = MyRangefilt(imgFil);

    % Threshold
    imgBin = Binarize(imgText,45);
    
    %imgBin = imgText > 45;

    % Post treatment
    imageOut = PostTreat(imgBin);
    %out1 = imdilate(imgBin, ones(7,7));
    %out2 = imerode(out1, ones(22,22));
    %imageOut = imdilate(out2, ones(11,11));
    
end