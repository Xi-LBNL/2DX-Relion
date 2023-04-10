

    
ccmean=mean(image2dxprofile(:,5));

ccstd=std(image2dxprofile(:,5));

%ccthr_h=ccmean + ccstd;

%ccthr_l=ccmean - 0.5*ccstd;

ccvalue = image2dxprofile(:,5);

profile_CC=image2dxprofile(image2dxprofile(:,5) > ccmean,:)

%profile_CC_h=image2dxprofile(image2dxprofile(:,5) > ccthr_h,:)
%profile_CC_l=image2dxprofile(image2dxprofile(:,5) > ccthr_l,:)



x_pos1=profile_CC(:,3)
y_pos1=profile_CC(:,4)
[m1,n]=size(profile_CC)

rest1=zeros(m1,3)
rest1(:,1)=-999
rest1(:,2)=-999.000000
rest1(:,3)=-999.000000

%fn=sprintf([foldername,'_unbent_manual_pick.star'],k)
fn=sprintf([outputFolder,'/',foldername,'_unbent_manual_pick.star'],k)
fileID=fopen(fn,'wt')


fprintf(fileID,'data_')
fprintf(fileID,'\n')
fprintf(fileID,'\n')
fprintf(fileID,'loop_')
fprintf(fileID,'\n')
fprintf(fileID,'_rlnCoordinateX #1')
fprintf(fileID,'\n')
fprintf(fileID,'_rlnCoordinateY #2')
fprintf(fileID,'\n')
fprintf(fileID,'_rlnClassNumber #3')
fprintf(fileID,'\n')
fprintf(fileID,'_rlnAnglePsi #4')
fprintf(fileID,'\n')
fprintf(fileID,'_rlnAutopickFigureOfMerit #5')
fprintf(fileID,'\n')
fprintf(fileID,'%.2f %.2f %.2f %.6f %.6f\n',[profile_CC(:,3)';profile_CC(:,4)';rest1(:,1)';rest1(:,2)';rest1(:,3)'])
fclose(fileID)
