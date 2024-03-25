% Analyse Bold signal within ROIs

close all
clear 
clc

pathInputBoldArray = [...
%"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_29_MAP6_rs-fMRI_mouse_F572-2022-11-29081351-09-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_29_MAP6_rs-fMRI_mouse_F573-2022-11-29102918-09-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_29_MAP6_rs-fMRI_mouse_F574-2022-11-29133126-07-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_29_MAP6_rs-fMRI_mouse_F582-2022-11-29154748-10-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_F583-2022-11-30084128-10-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_F584-2022-11-30104908-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_F585-2022-11-30135023-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_M575-2022-11-30161606-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_M577-2022-12-01083227-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_11_30_MAP6_rs-fMRI_mouse_M578-2022-12-01105722-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_01_MAP6_rs-fMRI_mouse_M579-2022-12-01133612-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_01_MAP6_rs-fMRI_mouse_M580-2022-12-01155008-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_02_MAP6_rs-fMRI_mouse_M587-2022-12-02082857-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_02_MAP6_rs-fMRI_mouse_M588-2022-12-02111137-10-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_02_MAP6_rs-fMRI_mouse_M589-2022-12-02130032-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_02_MAP6_rs-fMRI_mouse_M590-2022-12-02153556-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_05_MAP6_rs-fMRI_mouse_F596-2022-12-05085011-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_05_MAP6_rs-fMRI_mouse_F597-2022-12-05110346-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
 "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_05_MAP6_rs-fMRI_mouse_F601-2022-12-05132147-10-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_05_MAP6_rs-fMRI_mouse_F602-2022-12-05153710-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_06_MAP6_rs-fMRI_mouse_F603-2022-12-06083027-10-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_06_MAP6_rs-fMRI_mouse_F604-2022-12-06110412-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_06_MAP6_rs-fMRI_mouse_M606-2022-12-06132718-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_06_MAP6_rs-fMRI_mouse_M607-2022-12-06154511-15-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_12_MAP6_rs-fMRI_mouse_M570-2022-12-12110827-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_12_MAP6_rs-fMRI_mouse_M571-2022-12-12132351-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
% "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/rabiesPreProcessing/20230310_output_secondAcquisition_groupedProcessing/bold_datasink/input_bold/MAP6_rs-fMRI_mouse-2022_12_12_MAP6_rs-fMRI_mouse_M593-2022-12-12084954-11-GE_EPI-BrukerEPI-003000_000_mrLinTrans_fslSwapDim-RAS_bold.nii.gz",...
];

pathSubjectsAtlasMask = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/atlas2EPI_inverseTransformationRabies/20230310_secondAcquisition_groupedProcessing/";
nameRegAtlas = "p56_smallRegionsGrouped_v5_leftRight_4D_resampled_template2CommonInverseWarpAffine_anat2TemplateInverseWarpAffine_bold2AnatInverseWarp_corrBold2InputBold_";
nameBrainMask = "brainMask4CorrectedBold_corrBold2InputBold_";

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

fs = 1;

xSlice = 32;
ySlice = 20;
zSlice = 37;
roiVol = 17;

nameSubjectPosStrInputBold = 218;

showResults = 1;
saveData = 0;

thresholdWeightROI = 0.7;
parInvProb = 1e-4;

fcLow = 0.0625;
fcHigh = 0.125;
order = 5;

corrNormAmplSignals = 6;
corrNormAmplSignalsFiltered = 6;
corrBiasAmplSignals = 25;
posCutSignalLSQR = 31;

saveFigures = 0;
pathSave = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/results/images/signalAnalysis";
%%
clc
close all
for pathSubj=pathInputBoldArray
    pathSubjChar = convertStringsToChars(pathSubj);
    subject = pathSubjChar(218:221);
    brainMaskPath = strcat(pathSubjectsAtlasMask,nameBrainMask,subject,".nii");
    regAtlasPath = strcat(pathSubjectsAtlasMask,nameRegAtlas,subject,".nii");
    fprintf("\n\n####################################################\nProcessing subject: %s...\n%s\n%s\n%s\n\n",subject,pathSubj,brainMaskPath,regAtlasPath)
    
    image = niftiread(pathSubj);
    brainMask = niftiread(brainMaskPath);
    regAtlas = niftiread(regAtlasPath);
    regAtlasCorr = bsxfun(@times,regAtlas,brainMask);
    
    if (showResults)
        figure('units','normalized','outerposition',[0 0 1 1]);
        subplot(3,4,1)
        imshow(squeeze(image(:,:,zSlice,roiVol)),[])
        colormap 'jet'
        colorbar
        title("Brain image")

        subplot(3,4,2)
        imshow(squeeze(brainMask(:,:,zSlice)),[])
        colormap 'gray'
        colorbar
        title("Brain mask")

        subplot(3,4,3)
        imshow(squeeze(regAtlas(:,:,zSlice,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Original registered atlas")

        subplot(3,4,4)
        imshow(squeeze(regAtlasCorr(:,:,zSlice,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Corrected registered atlas")
        
        
        subplot(3,4,5)
        imshow(squeeze(image(:,ySlice,:,roiVol)),[])
        colormap 'jet'
        colorbar
        title("Brain image")

        subplot(3,4,6)
        imshow(squeeze(brainMask(:,ySlice,:)),[])
        colormap 'gray'
        colorbar
        title("Brain mask")

        subplot(3,4,7)
        imshow(squeeze(regAtlas(:,ySlice,:,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Original registered atlas")

        subplot(3,4,8)
        imshow(squeeze(regAtlasCorr(:,ySlice,:,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Corrected registered atlas")
        
        
        subplot(3,4,9)
        imshow(squeeze(image(xSlice,:,:,roiVol)),[])
        colormap 'jet'
        colorbar
        title("Brain image")

        subplot(3,4,10)
        imshow(squeeze(brainMask(xSlice,:,:)),[])
        colormap 'gray'
        colorbar
        title("Brain mask")

        subplot(3,4,11)
        imshow(squeeze(regAtlas(xSlice,:,:,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Original registered atlas")

        subplot(3,4,12)
        imshow(squeeze(regAtlasCorr(xSlice,:,:,roiVol)),[])
        colormap 'gray'
        colorbar
        title("Corrected registered atlas")
    end
    
    [idx] = find(squeeze(regAtlasCorr(:,:,:,roiVol)) > thresholdWeightROI);
    
    signalsROI = zeros(size(idx,1),size(image,4));
    weightSignalROI = zeros(size(idx,1));
    for vol=1:size(image,4)
        image3D = squeeze(image(:,:,:,vol));
        signalsROI(:,vol) = squeeze(image3D(idx));
        
        weight3D = squeeze(regAtlasCorr(:,:,:,roiVol));
        weightSignalROI = squeeze(weight3D(idx));
        
    end
    
    signalsROISpectrum = fftshift(fft(signalsROI,[],2),2);
    
    close all
    
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(2,2,1)
    for signal=1:size(signalsROI,1)
        plot(squeeze(signalsROI(signal,:)), 'b')
        hold on
        
    end
    
    signalsROILSQR = lsqr(signalsROI,weightSignalROI,parInvProb);
    norm = (max(signalsROI(signal,:))/max(signalsROILSQR(:)))/corrNormAmplSignals;
    
    plot(signalsROILSQR*norm+corrBiasAmplSignals,'r')
    set(gca,'FontSize', 14,'FontWeight','bold')
    xlabel("t [s]", 'FontSize', 16, 'FontWeight', 'bold')
    ylabel("s(t) [a.u.]", 'FontSize', 16, 'FontWeight', 'bold')
    legend("Signals","LMS signal", 'FontSize', 16, 'FontWeight', 'bold','Location','southeast')
    %ylim([0 fdDisplacThres*1.60])
    xlim([0 1800])
    title("Signals in time domain (without filtering)", 'FontSize', 18, 'FontWeight', 'bold')
    
    
    
    [signalsROISpectrum, freqArray] = ApplyFFT(signalsROI,fs);
    
    subplot(2,2,3)
    for signal=1:size(signalsROISpectrum,1)
        plot(freqArray,(squeeze(signalsROISpectrum(signal,:))), 'k')
        hold on
        
    end

    %signalsROISpectrumLSQR = fftshift(fft(signalsROILSQR,[],1),1);
    [signalsROISpectrumLSQR, freqArray] = ApplyFFT(signalsROILSQR',fs);
    norm = max(signalsROISpectrum(:))/max(signalsROISpectrumLSQR(:));
    
    plot(freqArray,signalsROISpectrumLSQR*norm,'r')
    set(gca,'FontSize', 14,'FontWeight','bold')
    xlabel("f [Hz]", 'FontSize', 16, 'FontWeight', 'bold')
    ylabel("|S(f)| [a.u.]", 'FontSize', 16, 'FontWeight', 'bold')
    legend("FT signals","FT LMS signal", 'FontSize', 16, 'FontWeight', 'bold','Location','northeast')
    %ylim([0 fdDisplacThres*1.60])
    %xlim([0 1800])
    title("Fourier spectrum (without filtering)", 'FontSize', 18, 'FontWeight', 'bold')
    
    
    
    
    [b,a] = butter(order,[fcLow fcHigh]/(fs/2),'bandpass');
    %signalsROILSQRFiltered = filter(b,a,signalsROILSQR);
    signalsROIFiltered = filter(b,a,signalsROI,[],2);
    tArrayOrig = [1:1:size(signalsROIFiltered,2)];
    
    signalsROILSQRFiltered = lsqr(signalsROIFiltered,weightSignalROI,parInvProb);
    signalsROILSQRFiltered = signalsROILSQRFiltered(posCutSignalLSQR:end);
    tArrayLSQR = [posCutSignalLSQR:1:size(signalsROIFiltered,2)];
    
    subplot(2,2,2)
    for signal=1:size(signalsROI,1)
        plot(tArrayOrig,squeeze(signalsROIFiltered(signal,:)), 'b')
        hold on
        
    end
    
    %signalsROILSQR = lsqr(signalsROI,weightSignalROI,1e-01);
    norm = (max(signalsROIFiltered(signal,:))/max(signalsROILSQRFiltered(:)))/corrNormAmplSignalsFiltered;
    
    plot(tArrayLSQR,signalsROILSQRFiltered*norm,'r')
    set(gca,'FontSize', 14,'FontWeight','bold')
    xlabel("t [s]", 'FontSize', 16, 'FontWeight', 'bold')
    ylabel("s(t) [a.u.]", 'FontSize', 16, 'FontWeight', 'bold')
    legend("Signals","LMS signal", 'FontSize', 16, 'FontWeight', 'bold','Location','northeast')
    %ylim([0 fdDisplacThres*1.60])
    xlim([0 1800])
    title("Signals in time domain (after filtering)", 'FontSize', 18, 'FontWeight', 'bold')
    
    
    
    [signalsROIFilteredSpectrum, freqArray] = ApplyFFT(signalsROIFiltered,fs);
    
    subplot(2,2,4)
    for signal=1:size(signalsROIFilteredSpectrum,1)
        plot(freqArray,(squeeze(signalsROIFilteredSpectrum(signal,:))), 'k')
        hold on
        
    end

    %signalsROISpectrumLSQR = fftshift(fft(signalsROILSQR,[],1),1);
    [signalsROILSQRFilteredSpectrum, freqArray] = ApplyFFT(signalsROILSQRFiltered',fs);
    norm = max(signalsROIFilteredSpectrum(:))/max(signalsROILSQRFilteredSpectrum(:));
    
    plot(freqArray,signalsROILSQRFilteredSpectrum*norm,'r')
    set(gca,'FontSize', 14,'FontWeight','bold')
    xlabel("f [Hz]", 'FontSize', 16, 'FontWeight', 'bold')
    ylabel("|S(f)| [a.u.]", 'FontSize', 16, 'FontWeight', 'bold')
    legend("FT signals","FT LMS signal", 'FontSize', 16, 'FontWeight', 'bold','Location','northeast')
    %ylim([0 fdDisplacThres*1.60])
    %xlim([0 1800])
    title("Fourier spectrum (after filtering)", 'FontSize', 18, 'FontWeight', 'bold')
    
    
    fprintf("\n\n####################################################\n")
    
    sgtitle(strcat("Signal analysis for subject: ",subject," and altas regions: ", labels(roiVol)," (num: ", num2str(roiVol),")"),'FontSize', 18, 'FontWeight', 'bold')
   
    if saveFigures
        saveas(gcf,strcat(pathSave,'/signalsSpectrumBeforeAfterFiltering_',subject,'_labelNum-',num2str(roiVol),'_',labels(roiVol),'.fig'))    
        exportgraphics(gcf,strcat(pathSave,'/signalsSpectrumBeforeAfterFiltering_',subject,'_labelNum-',num2str(roiVol),'_',labels(roiVol),'.png'),'Resolution',600) 
    end
end

function [p1Array,f] = ApplyFFT(xArray,Fs)

    p1Array = zeros(size(xArray,1),size(xArray,2)/2+1);
    for index=1:size(xArray,1)
        X = squeeze(xArray(index,:));

        %Fs = 1000;            % Sampling frequency                    
        T = 1/Fs;             % Sampling period       
        %L = 1500;             % Length of signal
        L = size(X,2);
        Y = fft(X);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        f = Fs*(0:(L/2))/L;
        %plot(f,P1) 
        p1Array(index,:) = P1;
    end
end


%%
