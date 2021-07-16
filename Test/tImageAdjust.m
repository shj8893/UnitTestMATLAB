classdef tImageAdjust < matlab.unittest.TestCase
    properties
        TestImage
    end
        
    methods (TestClassSetup)

        function prepImage(testCase)
            testCase.TestImage = imread('textureCell.tif');
%            testCase.addTeardown(@()delete(testCase.TestImage));
 %            testCase.addTeardown(@()delete(testCase));
         end
        
    end
    
    methods(Test, TestTags = {'Feature_ImageAdjust2','Feature_T1'})
        function testImageAdjust(testCase)
            tImg = testCase.TestImage;
            actSolution = MyImadjust(tImg);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
    end
    
    
    methods(Test,  TestTags = {'Feature_ImageAdjust','Feature_T1'})
        function testImageAdjust2nd(testCase)
            tImg = testCase.TestImage;
            actSolution = MyImadjust(tImg);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
    end
    
end