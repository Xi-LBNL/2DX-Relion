%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rename and move files.
inputMRCFiles = ([fullfolderName,'/','unbent.mrc']);
outputFullfoldername=fullfile(outputFolder)
outputFullMRCFileName=([outputFolder,'/',foldername,'_unbent.mrc'])
copyfile(inputMRCFiles, outputFullMRCFileName)

%inputSTARFiles = fn;
%outputFullSTARFileName=([outputFolder,'/',foldername,'_unbent_manual_pick.star'])
%copyfile(inputSTARFiles, outputFullSTARFileName)


%for k = 1 : length(inputFiles )
%  thisFileName = fileNames{k};
%  % Prepare the input filename.
%  inputFullFileName = fullfile(pwd, thisFileName)
%  % Prepare the output filename.
%  outputBaseFileName = sprintf('%s_T.txt', thisFileName(1:end-4));
%  outputFullFileName = fullfile(outputFolder, outputBaseFileName)
%  % Do the copying and renaming all at once.
%  copyfile(inputFullFileName, outputFullFileName);
%end