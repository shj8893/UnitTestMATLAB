classdef tMyImfilter < matlab.unittest.TestCase
    properties
        TestImage
    end
    
    properties (TestParameter)
        MskData = struct('Case1',ones(2,2)/4,...
            'Case2',ones(3,3)/9,...
            'Case3',ones(4,4)/16);
    end      
    
    methods (TestClassSetup)

        function prepImage(testCase)
            testCase.TestImage = imread('textureCell.tif');
%            testCase.addTeardown(@()delete(testCase.TestImage));
%             testCase.addTeardown(@()delete(testCase));
         end
        
    end
    
    methods(Test, TestTags = {'Feature_ImFltr','Feature_T1'})
        function testImfilter(testCase,MskData)
            tImg = testCase.TestImage;
            actSolution = MyImfilter(tImg,MskData);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
        
    end
    
    
    methods(Test, TestTags = {'Feature_ImFltr','Feature_T1'})
        function testImfilter2nd(testCase,MskData)
            tImg = testCase.TestImage;
            actSolution = MyImfilter(tImg,MskData);
            expSolution = [480 640 1];
            testCase.verifySize(actSolution, expSolution);   
        end
        
    end
end