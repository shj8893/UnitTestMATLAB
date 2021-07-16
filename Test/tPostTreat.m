classdef tPostTreat < matlab.unittest.TestCase
    properties
        TestImage
    end
        
    properties (TestParameter)
        opt1 = struct('Case1',ones(7,7),...
            'Case2',ones(8,8),...
            'Case3',ones(6,6));
        
        opt2 = struct('Case1',ones(20,20),...
            'Case2',ones(21,21),...
            'Case3',ones(22,22));       
    end
    
    
    methods (TestClassSetup)

        function prepImage(testCase)
            testCase.TestImage = imread('textureCell.tif');
%            testCase.addTeardown(@()delete(testCase.TestImage));
%             testCase.addTeardown(@()delete(testCase));
         end
        
    end
          
    
    methods(Test, TestTags = {'Feature_PostTrt','Feature_T2'})
        function testPostTreat(testCase,opt1,opt2)
            tImg = testCase.TestImage;
            actSolution = PostTreat(tImg,opt1,opt2);
            expSolution = [480 641 1];
            testCase.verifySize(actSolution, expSolution);   
        end
        
    end
end
