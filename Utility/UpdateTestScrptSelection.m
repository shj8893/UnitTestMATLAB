%% Please Set Test script Folder Name
TestFolder = 'Test/';
%% Please Set Excel file Name
TestSecriptSelectorFile = 'TestScriptSelector.xlsx';

%% you don't have to modify below
T = readtable(TestSecriptSelectorFile);

FileExt = '*.m';

proj = currentProject;
% myfile = findFile(proj,"Test1/tBinarize.m");
% addLabel(myfile,"Classification","Test2");

SearchFolder = [TestFolder FileExt]; 
TestFilesList = dir(SearchFolder);

for j = 1:height(T(:,1))
    for i = 1:height(TestFilesList)

        if strcmp(TestFilesList(i).name(1:end-2), T.TestScriptName{j})
            SearchFile = [TestFolder TestFilesList(i).name];
            myfile = findFile(proj,SearchFile);
            if(T.On_1__Off_0_(j) == 1)
                addLabel(myfile,"Classification","Test");
            else
                addLabel(myfile,"Classification","TestOff");
            end
                       
        end
        
        
    end
end