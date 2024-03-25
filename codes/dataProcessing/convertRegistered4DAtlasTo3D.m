% Convert registered atlas 4D in 3D


%% Test with 3 mice
close all
clear
clc



atlasImagePathArray = [...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230314_testRegisteringRabies_anatDTI_invTrans/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M672.nii";... 
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230314_testRegisteringRabies_anatDTI_invTrans/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M872.nii";... 
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230314_testRegisteringRabies_anatDTI_invTrans/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarp_Affine__bold2AnatInverseWarp__corrBold2InputBold_M8876.nii";... 
    ];


atlasAnnoPath = "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/atlasesTemplates/p56_original_smallRegionsGrouped/p56_smallRegionsGrouped_idAndLabels_v5_leftRight.txt";


threshold = 0.1;


atlasSuffix = "_conv3D";
atlasExt = ".nii";

showX = 67;
showY = 100;
showZ = 50;



%% Study with 6 WT and 6 MAP6+/- mice
close all
clear
clc



atlasImagePathArray = [...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M672.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M872.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M874.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M875.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M886.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarp_Affine__bold2AnatInverseWarp__corrBold2InputBold_M8876.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M757.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M857.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M866.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarp_Affine__bold2AnatInverseWarp__corrBold2InputBold_M867b.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_M877.nii";...
    "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/postProcessing/atlas2DTI_inverseTransform/20230526_output_manipDTI-20181210_wt-hetMAP6Mice_nRepB0-5_atlas2DTI-invT/atlas4D/p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarp_Affine__bold2AnatInverseWarp__corrBold2InputBold_M881b.nii";...
    ];


atlasAnnoPath = "/data_network/summer_projects/alvesrod/Share/2023_mouse-dMRI/atlasesTemplates/p56_original_smallRegionsGrouped/p56_smallRegionsGrouped_idAndLabels_v5_leftRight.txt";


threshold = 0.1;


atlasSuffix = "_conv3D";
atlasExt = ".nii";

showX = 67;
showY = 100;
showZ = 50;

%%

fileID = fopen(atlasAnnoPath,'r');
    formatSpec = '%d\t%s';
   
    %labels = fscanf(fileID, formatSpec);
    labels = textscan(fileID, '%d\t%s','delimiter','\n');
    
    fclose(fileID);
    
%
for subIdx=1:size(atlasImagePathArray,1)
    subIdx
    
    atlasImage = niftiread(atlasImagePathArray(subIdx));
    atlasImageInfo = niftiinfo(atlasImagePathArray(subIdx));
        
    
    [filepath,name,ext] = fileparts(atlasImagePathArray(subIdx));

    %refImage = niftiread(refAffineImagePathArray(subIdx));
    %refImageInfo = niftiinfo(refAffineImagePathArray(subIdx));
    
    
    sizeX = size(atlasImage,1);
    sizeY = size(atlasImage,2);
    sizeZ = size(atlasImage,3);
    
    atlasImageConv3D = zeros(sizeX,sizeY,sizeZ);
    atlasImageConv3DCont = atlasImageConv3D;
    
    atlasImageInfoConv3D = atlasImageInfo;
    atlasImageInfoConv3D.ImageSize = size(atlasImageConv3D);
    atlasImageInfoConv3D.PixelDimensions = atlasImageInfoConv3D.PixelDimensions(1:3);
    atlasImageInfoConv3D.raw.dim(1)=size(size(atlasImageConv3D),2);
    atlasImageInfoConv3D.raw.dim(5)=1;
    atlasImageInfoConv3D.raw.pixdim(5)=0;
    
    for xPos=1:sizeX
        for yPos=1:sizeY
            for zPos=1:sizeZ
                
                [maxValue, maxIndex] = max(atlasImage(xPos,yPos,zPos,:));
                
                if maxValue > threshold
                    atlasImageConv3D(xPos,yPos,zPos) = labels{1,1}(maxIndex + 1);  
                    atlasImageConv3DCont(xPos,yPos,zPos) = maxIndex;
                else
                    atlasImageConv3D(xPos,yPos,zPos) = 0;
                    atlasImageConv3DCont(xPos,yPos,zPos) = 0;
                end
            end
        end            
    end
    
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(2,3,1)
    imshow(abs(squeeze(atlasImageConv3D(:,:,showZ))),[]);
    colormap 'jet'
    
    subplot(2,3,2)
    imshow(abs(squeeze(atlasImageConv3D(:,showY,:))),[]);
    colormap 'jet'
    
    subplot(2,3,3)
    imshow(abs(squeeze(atlasImageConv3D(showX,:,:))),[]);
    colormap 'jet'
    
    subplot(2,3,4)
    imshow(abs(squeeze(atlasImageConv3DCont(:,:,showZ))),[]);
    colormap 'jet'
    
    subplot(2,3,5)
    imshow(abs(squeeze(atlasImageConv3DCont(:,showY,:))),[]);
    colormap 'jet'
    
    subplot(2,3,6)
    imshow(abs(squeeze(atlasImageConv3DCont(showX,:,:))),[]);
    colormap 'jet'
    
    fprintf("\nSaving images...\n")
    niftiwrite(atlasImageConv3D,strcat(filepath,"/",name,atlasSuffix,"_originalLabels_minThres-",num2str(threshold),atlasExt),atlasImageInfoConv3D);
    niftiwrite(atlasImageConv3DCont,strcat(filepath,"/",name,atlasSuffix,"_continuousLabels_minThres-",num2str(threshold),atlasExt),atlasImageInfoConv3D);
    fprintf("Images saved.\n")
end

