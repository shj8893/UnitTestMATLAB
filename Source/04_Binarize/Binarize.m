function [imgOut] = Binarize(imgIn,Thd)
%BINARIZE Summary of this function goes here
%   Detailed explanation goes here
imgOut = imgIn > Thd;
end

