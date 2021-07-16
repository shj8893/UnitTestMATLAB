function [imgOut] = PostTreat(imgIn,opt1,opt2)

    out1 = imdilate(imgIn, ones(7,7));
    out2 = imerode(out1, ones(22,22));
    imgOut = imdilate(out2, ones(11,11));

end

