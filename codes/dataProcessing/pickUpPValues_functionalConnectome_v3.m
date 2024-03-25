%% Pick up p values within interval


%% Functional connectivity - WT vs het MAP6
close all
clear
clc

pathConnecNoNorm = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230917_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1/metrics/connectivityMatrixCompilation_matlabWorkspace.mat";
pathConnecNorm = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230917_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1/metrics/connectivityMatrixCompilation_matlabWorkspace.mat";
labelsOrig = ["Right Frontal pole (FP_R)","Right Somatomotor area (SMa_R)","Right Somatosensory area (SSa_R)","Right Gustatory, Visceral and Auditive areas (GVAa_R)","Right Visual area (Va_R)","Right Frontal cortex (FC_R)","Right Temporal, Perrhinal and Ectorhinal areas (TPEa_R)","Right Olfactory areas (Oa_R)","Right Hippocampal formation (HP_R)","Right Parahippocampal region (PHr_R)","Right Ortical subplate (OS_R)","Right Striatum dorsal (SD_R)","Right Striatum ventral (SV_R)","Right Septal regions (Sr_R)","Right Amygdalar areas (Aa_R)","Right Pallidum (PL_R)","Right Thalamus (TH_R)","Right Hypothalamus (HT_R)","Right Colliculi (CO_R)","Right Midbrain (MB_R)","Right Substantia Nigra (SN_R)","Right Pons (PO_R)","Right Medulla (ME_R)","Right Cerebellum vermal regions (CVr_R)","Right Cerebellum hemispheric regions (CHr_R)","Left Frontal pole (FP_L)","Left Somatomotor area (SMa_L)","Left Somatosensory area (SSa_L)","Left Gustatory, Visceral and Auditive areas (GVAa_L)","Left Visual area (Va_L)","Left Frontal cortex (FC_L)","Left Temporal, Perrhinal and Ectorhinal areas (TPEa_L)","Left Olfactory areas (Oa_L)","Left Hippocampal formation (HP_L)","Left Parahippocampal region (PHr_L)","Left Ortical subplate (OS_L)","Left Striatum dorsal (SD_L)","Left Striatum ventral (SV_L)","Left Septal regions (Sr_L)","Left Amygdalar areas (Aa_L)","Left Pallidum (PL_L)","Left Thalamus (TH_L)","Left Hypothalamus (HT_L)","Left Colliculi (CO_L)","Left Midbrain (MB_L)","Left Substantia Nigra (SN_L)","Left Pons (PO_L)","Left Medulla (ME_L)","Left Cerebellum vermal regions (CVr_L)","Left Cerebellum hemispheric regions (CHr_L)"];

%%

load(pathConnecNoNorm);

corrMatrixPValueConnecNoNorm = corrMatrixPValue;

load(pathConnecNorm);

corrMatrixPValueConnecNorm = corrMatrixPValue;

ticksFontSize = 6;
%
%XXX


figure('units','normalized','outerposition',[0 0 1 1]);
subplot(2,3,1)
imshow(corrMatrixPValueConnecNoNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.05])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.05)","Without normalization"],'FontSize',12)

subplot(2,3,2)
imshow(corrMatrixPValueConnecNoNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.01])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.01)","Without normalization"],'FontSize',12)

subplot(2,3,3)
imshow(corrMatrixPValueConnecNoNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.001])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.001)","Without normalization"],'FontSize',12)



subplot(2,3,4)
imshow(corrMatrixPValueConnecNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.05])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.05)","Without normalization"],'FontSize',12)

subplot(2,3,5)
imshow(corrMatrixPValueConnecNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.01])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.01)","Without normalization"],'FontSize',12)

subplot(2,3,6)
imshow(corrMatrixPValueConnecNorm,[])
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.001])
axis on
ax = gca;
ax.FontSize = ticksFontSize; 
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)
title(["p-value matrix (lim. p=0.001)","Without normalization"],'FontSize',12)


%%
clc
for line=1:size(corrMatrixPValueConnecNorm,1)
    for col=1:size(corrMatrixPValueConnecNorm,2)
        
        if (col<line)
            
            if (corrMatrixPValueConnecNoNorm(line,col) < 0.001) && (corrMatrixPValueConnecNorm(line,col) < 0.001)
            
            disp(strcat(labelsOrig(line)," - ",strcat(labelsOrig(col), " (p-value: ",num2str(corrMatrixPValueConnecNoNorm(line,col)),");")))
            
            end
        end
        
        
    
    
    end
    
    
end

%%
clc

for line=1:size(corrMatrixPValueConnecNorm,1)
    for col=1:size(corrMatrixPValueConnecNorm,2)
        
        if (col<line)
            
            if (corrMatrixPValueConnecNoNorm(line,col) < 0.01) && (corrMatrixPValueConnecNorm(line,col) < 0.01) && ((corrMatrixPValueConnecNoNorm(line,col) > 0.001) || (corrMatrixPValueConnecNorm(line,col) > 0.001))
            
            disp(strcat(labelsOrig(line)," - ",strcat(labelsOrig(col), " (p-value: ",num2str(corrMatrixPValueConnecNoNorm(line,col)),"), mean connectivity matrix of WT mice: ",num2str(corrMatrixWTMean(line,col)),", mean connectivity matrix of MAP6 mice: ",num2str(corrMatrixMAP6Mean(line,col)),";")))
            
            end
        end
        
        
    
    
    end
    
    
end


%%
clc

for line=1:size(corrMatrixPValueConnecNorm,1)
    for col=1:size(corrMatrixPValueConnecNorm,2)
        
        if (col<line)
            
            if (corrMatrixPValueConnecNoNorm(line,col) < 0.05) && (corrMatrixPValueConnecNorm(line,col) < 0.05) && ((corrMatrixPValueConnecNoNorm(line,col) > 0.01) || (corrMatrixPValueConnecNorm(line,col) > 0.01))
            
            disp(strcat(labelsOrig(line)," - ",strcat(labelsOrig(col), " (p-value: ",num2str(corrMatrixPValueConnecNoNorm(line,col)),"), mean connectivity matrix of WT mice: ",num2str(corrMatrixWTMean(line,col)),", mean connectivity matrix of MAP6 mice: ",num2str(corrMatrixMAP6Mean(line,col)),";")))
            
            end
        end
        
        
    
    
    end
    
    
end
