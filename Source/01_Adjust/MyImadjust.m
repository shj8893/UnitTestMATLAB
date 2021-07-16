function [imageOut] = MyImadjust(imageIn)
%MYIMADJUST Summary of this function goes here
%   Detailed explanation goes here

a=imageIn;
b = a+1;
imageOut = imadjust(b) ;

end

