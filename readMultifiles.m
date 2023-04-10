% Specify the folder where the files live.
myFolder = '/Users/xijiang/Desktop/Matlab_Relion/profile_matlab/2DX/'; 

% Check to make sure that folder actually exists.  Warn user if it doesn't.

if ~isdir(myFolder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end

% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.dat');
theFiles = dir(filePattern);

for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);
  fileID=fopen(baseFileName,'r')
  POSarray=textscan(fileID,'%f %f %f %f %f','Delimiter','','HeaderLines',7)
  fclose(fileID)
  %store X Y CC into new dat file with sequence number    
  fn=sprintf('10D_%02d_unbent.dat',k)
  fileID=fopen(fn,'wt')
  fprintf(fileID,'%.2f %.2f %.2f \n',[POSarray{3}';POSarray{4}';POSarray{5}'])
  fclose(fileID)
end

