classdef  (TestTags = {'Feature_MR1'}) tMyRangefilt < matlab.unittest.TestCase
    properties
        TestImage
    end
        
    methods (TestClassSetup)

        function prepImage(testCase)
            testCase.TestImage = imread('textureCell.tif');
%            testCase.addTeardown(@()delete(testCase.TestImage));
%             testCase.addTeardown(@()delete(testCase));
         end
        
    end
             
    methods(Test, TestTags = {'Feature_RngFltrT','Feature_T23'})
        function testMyRangefilt(testCase)
            tImg = testCase.TestImage;
            actSolution = MyRangefilt(tImg);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
    end
    
    methods(Test,TestTags = {'Feature_RngFltr2','Feature_T2'})
        function testMyRangefilt2nd(testCase)
            tImg = testCase.TestImage;
            actSolution = MyRangefilt(tImg);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
    end
end