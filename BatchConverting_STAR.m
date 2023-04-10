%%%%%%%Batch converting 2DX coordinats into Relion STAR files%%%%%%%
%List all folder paths
%Read dat file in folder into maxtrix
%Write maxtrix into STAR
%Change STAR file name as same as folder name, SAVE to other folder
%Change Unbent file name as same as STAR file, SAVE to other folder
%Clear all & Loop

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%List all folder names into matrix%
%myFolder = uigetdir()
myFolder = '/Users/xijiang/Desktop/Matlab_script_test/test/'; 
folderlist=dir;%list all 
folderlist=folderlist(~ismember({folderlist.name},{'.','..','.DS_Store'}));%first 3 excluded

for k = 1 : length(folderlist)
  
  foldername = folderlist(k).name;
  
  fullfolderName = fullfile(myFolder, foldername);
  
  Coor_filename=fullfile([fullfolderName,'/','image_2dx_profile.dat'])
  
  % First create the folder B, if necessary.
  outputFolder = fullfile(myFolder, 'relion')
if ~exist(outputFolder, 'dir')
  mkdir(outputFolder);
end

  Import2dx
  
  Pickup_STAR
  
  Rename
  
  
end 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
