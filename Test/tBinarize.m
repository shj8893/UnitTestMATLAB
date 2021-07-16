classdef (TestTags = {'Feature_M'})tBinarize < matlab.unittest.TestCase
    properties
        TestImage 
    end
        
    properties (TestParameter)
        ThdData = struct('Case1',[35],...
            'Case2',[41],...
            'Case3',[65]);
    end
    
    methods (TestClassSetup)

        function prepImage(testCase)
            testCase.TestImage = imread('textureCell.tif');
%            testCase.addTeardown(@()delete(testCase.TestImage));
%             testCase.addTeardown(@()delete(testCase));
         end
        
    end
          
    
    methods(Test, TestTags = {'Feature_Binarize'})
        
        function testBinarize(testCase,ThdData)
            tImg = testCase.TestImage;
            actSolution = Binarize(tImg,ThdData);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
        
    end
    
    methods(Test, TestTags = {'Feature_BMa'})
        
        function testBinarize2nd(testCase,ThdData)
            tImg = testCase.TestImage;
            actSolution = Binarize(tImg,ThdData);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
        
    end
    
end