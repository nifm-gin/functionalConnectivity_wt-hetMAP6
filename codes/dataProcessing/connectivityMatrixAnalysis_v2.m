% Connectivity matrix analysis

%% First acquisition
close all
clear
clc

dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230213_allMiceExceptM580_firstAcquisition_groupedProcessing/allSubjects_firstAcquisition_25Labels_weightNorm_butterworthFilter";
dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";

subjectArrayWT_wellRegistered = ["F573","F584","F585","M570","M579","M588","M593","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M575","M577","M578","M587","M589","M606"];
suffixTitle = "1^{st} acquisition";

corrMatrixSize = 50;


%% First acquisition - Shift Corrected
close all
clear
clc

%dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/atlas2EPI_inverseTransformationRabies/conectivityMatrices/allSubjects_firstAcquisition_25Labels_weightNorm";
dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230213_allMiceExceptM580_firstAcquisition_groupedProcessing/allSubjects_firstAcquisition_25Labels_weightNorm_butterworthFilter_noEPI2AnatAffine";
dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F573","F584","F585","M570","M579","M588","M593","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M575","M577","M578","M587","M589","M606"];

suffixTitle = "1^{st} acquisition - shift correction (no bold2anat affine)";
corrMatrixSize = 50;

%% Second acquisition
close all
clear
clc

%dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/atlas2EPI_inverseTransformationRabies/conectivityMatrices/allSubjects_firstAcquisition_25Labels_weightNorm";
dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230310_secondAcquisition_groupedProcessing/allSubjects_secondAcquisition_25Labels_weightNorm_butterworthFilter";
dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition";
corrMatrixSize = 50;





%% Second acquisition - Shift Corrected
close all
clear
clc

%dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/atlas2EPI_inverseTransformationRabies/conectivityMatrices/allSubjects_firstAcquisition_25Labels_weightNorm";
dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230310_secondAcquisition_groupedProcessing/allSubjects_secondAcquisition_25Labels_weightNorm_butterworthFilter_noBold2AnatAffine";
dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - shift correction (no bold2)";
corrMatrixSize = 50;



%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask)
close all
clear
clc

%dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/atlas2EPI_inverseTransformationRabies/conectivityMatrices/allSubjects_firstAcquisition_25Labels_weightNorm";
dataPath = "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230310_secondAcquisition_groupedProcessing/allSubjects_secondAcquisition_25Labels_weightNorm_butterworthFilter_allForInputBold";
dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - Raw EPI (Input bold)";
corrMatrixSize = 50;


%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask) - Different parameters for Butterworth filter and resolution of the inverse problem
close all
clear
clc


dataPathArray = ["/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_014621_allSubjects_secondAcquisition_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-0.1_weightNormOption-1_eraseFirstLabelOption-1";...
                 "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_014621_allSubjects_secondAcquisition_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-0.01_weightNormOption-1_eraseFirstLabelOption-1";...
                 "/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_014621_allSubjects_secondAcquisition_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-0.001_weightNormOption-1_eraseFirstLabelOption-1";...
      
];

dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - Raw EPI (Input bold)";
corrMatrixSize = 50;

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

showFigures = 1;
saveFigures = 1;





%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask) - Different parameters for Butterworth filter and resolution of the inverse problem
close all
clear
clc


dataPathArray = [...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230504_233538_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
];

dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - Raw EPI (Input bold)";
corrMatrixSize = 50;

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

showFigures = 1;
saveFigures = 1;








%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask) - Different parameters for Butterworth filter and resolution of the inverse problem
close all
clear
clc


dataPathArray = [...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-1_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-2_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-3_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-4_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-6_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-06_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e-01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+00_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+01_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+02_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+03_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+04_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+05_weightNormOption-1_eraseFirstLabelOption-1";...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230511_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-7_invProblParam-1.0e+06_weightNormOption-1_eraseFirstLabelOption-1";...
];

dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - Raw EPI (Input bold)";
corrMatrixSize = 50;

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

showFigures = 1;
saveFigures = 0;



%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask) - New low and high cut
close all
clear
clc


dataPathArray = [...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230620_024619_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.01_highCut-0.1_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...

];

dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];

suffixTitle = "2^{nd} acquisition - Raw EPI (Input bold)";
corrMatrixSize = 50;

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

showFigures = 1;
saveFigures = 0;



%% Second acquisition - All for raw EPI - "Input bold" (labels + brain mask) - Best case low and high cut
close all
clear
clc


dataPathArray = [...
"/data_network/summer_projects/alvesrod/Share/2022_mouse-rsfMRI/outputs/conectivityMatrices/20230917_025735_secondAcquisition-groupedProcessing_allSubjects_nLabels-25_butterworthFilter_lowCut-0.0625_highCut-0.125_fs-1.0_filterOrder-5_invProblParam-1.0e-04_weightNormOption-1_eraseFirstLabelOption-1";...

];

dataExt = ".mat";
dataCommonName = "connectivityMatrix_";
dataCommonSufix = "_25Labels_weightNorm";


%subjectArrayWT_wellRegistered = ["F573","F584","F585","F601","F603","M570","M571","M579","M588","M590","M607"];
%subjectArrayWT_wellRegistered = ["F585","F601","F603","M570","M571","M579","M588","M590","M607"];
%subjectArrayMAP6_wellRegistered = ["F572","F574","F582","F583","F596","F597","F602","M577","M578","M580"];
subjectArrayWT_wellRegistered = ["F585","F601","M570","M571","M579","M588","M590","M607"];
subjectArrayMAP6_wellRegistered = ["F574","F582","F583","F596","F597","F602","M578","M580"];

suffixTitle = "";
corrMatrixSize = 50;

labels = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"];

showFigures = 1;
saveFigures = 1;
%%

ticksArray = [1:1:corrMatrixSize];
ticksLabels = strrep(labels,'_', '\_');
ticksFontSize = 3;

corrMatrixMAP6VarMeanAcrossSubjects = zeros(size(dataPathArray,1),1);
corrMatrixWTVarMeanAcrossSubjects = zeros(size(dataPathArray,1),1);

for indexFolder=1:size(dataPathArray,1)
    
    dataPath = dataPathArray(indexFolder)
    [filepath, name, ext] = fileparts(dataPath)
    
    dataPathMetrics = strcat(dataPath,"/metrics");
    
    mkdir(dataPathMetrics)
    
    corrMatrixWT = zeros(corrMatrixSize,corrMatrixSize,size(subjectArrayWT_wellRegistered,2));
    corrMatrixMAP6 = zeros(corrMatrixSize,corrMatrixSize,size(subjectArrayMAP6_wellRegistered,2));

    
    figure('units','normalized','outerposition',[0 0 1 1]);
    for index=1:size(corrMatrixWT,3)

    dataPathSubject = dataPath + "/" + dataCommonName + subjectArrayWT_wellRegistered(index) + dataCommonSufix + dataExt;
    fprintf("Subject number: %d, subject name: %s, path %s\n", index, subjectArrayWT_wellRegistered(index), dataPathSubject);

    corrMatrixWT(:,:,index) = load(dataPathSubject,'cormat').cormat;

    if showFigures
    subplot(3,4,index)
    imshow(squeeze(corrMatrixWT(:,:,index)),[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    caxis([-1 1])
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(strcat("Subject: ", subjectArrayWT_wellRegistered(index)),'FontSize',12)
    hold on
    end

    end
    
    if showFigures
    sgtitle([strrep(strcat(name,ext), '_', '\_'),"","Connectivity matrices of WT mice",suffixTitle,""])
    pause(2)
    
    if saveFigures
    saveas(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_wtMice.fig'))
    exportgraphics(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_wtMice.png'),'Resolution',600)
    end
    end
    

    figure('units','normalized','outerposition',[0 0 1 1]);
    for index=1:size(corrMatrixMAP6,3)

    dataPathSubject = dataPath + "/" + dataCommonName + subjectArrayMAP6_wellRegistered(index) + dataCommonSufix + dataExt;
    fprintf("Subject number: %d, subject name: %s, path %s\n", index, subjectArrayMAP6_wellRegistered(index), dataPathSubject);

    corrMatrixMAP6(:,:,index) = load(dataPathSubject,'cormat').cormat;

    if showFigures
    subplot(3,4,index)
    imshow(squeeze(corrMatrixMAP6(:,:,index)),[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    caxis([-1 1])
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(strcat("Subject: ", subjectArrayMAP6_wellRegistered(index)),'FontSize',12)
    hold on
    end
    end
    
    if showFigures
    sgtitle([strrep(strcat(name,ext), '_', '\_'),"","Connectivity matrices of MAP6^{+/-} mice",suffixTitle,""])
    pause(2)
    
    if saveFigures
    saveas(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_hetMAP6Mice.fig'))
    exportgraphics(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_hetMAP6Mice.png'),'Resolution',600)
    end
    end
    
    %
    corrMatrixWTMean = mean(corrMatrixWT,3);
    corrMatrixMAP6Mean = mean(corrMatrixMAP6,3);

    corrMatrixMeanDiff = corrMatrixMAP6Mean - corrMatrixWTMean;
    corrMatrixMeanDiffPerc = (corrMatrixMAP6Mean - corrMatrixWTMean)./corrMatrixWTMean*100;

    corrMatrixPValue = zeros(size(corrMatrixWT,1),size(corrMatrixWT,2));
    for indexLine=1:size(corrMatrixWT,1)
        for indexCol=1:size(corrMatrixWT,2)

            [h,p] = ttest2(squeeze(corrMatrixWT(indexLine,indexCol,:)),squeeze(corrMatrixMAP6(indexLine,indexCol,:)));
            corrMatrixPValue(indexLine,indexCol) = p;

        end
    end
    
    corrMatrixWTVar = var(corrMatrixWT,0,3);
    corrMatrixMAP6Var = var(corrMatrixMAP6,0,3);
    
    corrMatrixWTVarMean = mean(corrMatrixWTVar(:));
    corrMatrixMAP6VarMean = mean(corrMatrixMAP6Var(:));
    
    corrMatrixWTVarMeanAcrossSubjects(indexFolder) = corrMatrixWTVarMean;
    corrMatrixMAP6VarMeanAcrossSubjects(indexFolder) = corrMatrixMAP6VarMean;

    if showFigures
    figure('units','normalized','outerposition',[0 0 1 1]);
    subplot(3,3,1)
    imshow(corrMatrixWTMean,[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    caxis([-1 1])
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(["Mean connectivity matrix","WT mice",suffixTitle],'FontSize',12)

    subplot(3,3,2)
    imshow(corrMatrixMAP6Mean,[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    caxis([-1 1])
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(["Mean connectivity matrix","MAP6^{+/-} mice",suffixTitle],'FontSize',12)


    subplot(3,3,4)
    imshow(corrMatrixMeanDiff,[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(["Difference mean conn. matrix","MAP6^{+/-} - WT mice"],'FontSize',12)

    subplot(3,3,5)
    imshow(corrMatrixMeanDiffPerc,[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    caxis([-100 100])
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(["Difference mean conn. matrix [%]","MAP6^{+/-} - WT mice"],'FontSize',12)

    subplot(3,3,6)
    imshow(corrMatrixPValue,[])
    colormap 'jet'
    c = colorbar;
    c.FontSize = 10;
    axis on
    ax = gca;
    ax.FontSize = ticksFontSize; 
    xticks(ticksArray)
    xticklabels(ticksLabels)
    xtickangle(90)
    yticks(ticksArray)
    yticklabels(ticksLabels)
    title(["p-value matrix","MAP6^{+/-} vs WT mice"],'FontSize',12)

    subplot(3,3,7)
    imshow(corrMatrixPValue,[])
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
    title(["p-value matrix (lim. p=0.05)","MAP6^{+/-} vs WT mice"],'FontSize',12)

    subplot(3,3,8)
    imshow(corrMatrixPValue,[])
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
    title(["p-value matrix (lim. p=0.01)","MAP6^{+/-} vs WT mice"],'FontSize',12)

    subplot(3,3,9)
    imshow(corrMatrixPValue,[])
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
    title(["p-value matrix (lim. p=0.001)","MAP6^{+/-} vs WT mice"],'FontSize',12)
  
    
    sgtitle([strrep(strcat(name,ext), '_', '\_'),"","Summary of the main results",strcat("Mean variance of the connec. matrices across subjects - WT group: ",num2str(corrMatrixWTVarMean),", MAP6^{+/-} group: ",num2str(corrMatrixMAP6VarMean)),""])
    pause(2)
    
    
    if saveFigures
    saveas(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_wtVshetMAP6Mice.fig'))
    exportgraphics(gcf,strcat(dataPathMetrics,'/connectivityMatrixCompilation_wtVshetMAP6Mice.png'),'Resolution',600)
    
    save(strcat(dataPathMetrics,'/connectivityMatrixCompilation_matlabWorkspace.mat'))
    end
    end
    
    pause(2)
    %close all
end
%

xAxisArray = [1:1:size(corrMatrixWTVarMeanAcrossSubjects,1)];
[minMeanVarWT, subjectMinMeanVarWT] = min(corrMatrixWTVarMeanAcrossSubjects)
[minMeanVarMAP6, subjectMinMeanVarMAP6] = min(corrMatrixMAP6VarMeanAcrossSubjects)

[maxMeanVarWT, subjectMaxMeanVarWT] = max(corrMatrixWTVarMeanAcrossSubjects);
[maxMeanVarMAP6, subjectMaxMeanVarMAP6] = max(corrMatrixMAP6VarMeanAcrossSubjects);


figure('units','normalized','outerposition',[0 0 1 1]);
yyaxis left
plot(xAxisArray,corrMatrixWTVarMeanAcrossSubjects,'ob')
set(gca,'FontSize', 18,'FontWeight','bold')
ylim([0.98*minMeanVarWT maxMeanVarWT*1.02])
ylabel("Mean variance of conn. matr. across WT mice [a.u.]", 'FontSize', 18, 'FontWeight', 'bold')

yyaxis right
plot(xAxisArray,corrMatrixMAP6VarMeanAcrossSubjects,'*r')
set(gca,'FontSize', 18,'FontWeight','bold')
ylim([0.98*minMeanVarWT maxMeanVarWT*1.02])
xlim([0 92])
ylabel("Mean variance of conn. matr. across MAP6^{+/-} mice [a.u.]", 'FontSize', 18, 'FontWeight', 'bold')
xlabel("# Combination", 'FontSize', 18, 'FontWeight', 'bold')
title("Mean variance of the connectivity matrices across subjects for filter order and inv. prob. par. (WT and MAP6^{+/-})", 'FontSize', 18, 'FontWeight', 'bold')
xticks(1:size(corrMatrixWTVarMeanAcrossSubjects,1));

if saveFigures
saveas(gcf,strcat(dataPathMetrics,'/evolutionMeanVarianceConnectivityMatrixAcrossSubjectsDiffSetParameters_wt-MAP6Mice.fig'))
exportgraphics(gcf,strcat(dataPathMetrics,'/evolutionMeanVarianceConnectivityMatrixAcrossSubjectsDiffSetParameters_wt-MAP6Mice.png'),'Resolution',600)
end





%%
figure('units','normalized','outerposition',[0 0 1 1]);
subplot(2,2,1)
imshow(squeeze(corrMatrixPValue(1:corrMatrixSize,1:corrMatrixSize)),[])
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
title("Test")


subplot(2,2,2)
imagesc(squeeze(corrMatrixPValue(1:corrMatrixSize,1:corrMatrixSize)))
colormap 'jet'
c = colorbar;
c.FontSize = 10;
caxis([0 0.001])

xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)

title("Test")





sgtitle("Test")
%%
figure('units','normalized','outerposition',[0 0 1 1]);
imagesc(squeeze(corrMatrixPValue(1:corrMatrixSize,1:corrMatrixSize)))
colormap 'jet'
colorbar
caxis([0 0.001])


ticksArray = [1:1:corrMatrixSize];
ticksLabels = strrep(["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"],'_', '\_');
xticks(ticksArray)
xticklabels(ticksLabels)
xtickangle(90)
yticks(ticksArray)
yticklabels(ticksLabels)



%%
figure('units','normalized','outerposition',[0 0 1 1]);
imagesc(squeeze(corrMatrixPValue(1:50,1:50)))
colormap 'jet'
colorbar
caxis([0 0.001])
%names = {'CRHS'; 'ELLY'; 'LGWD'; 'ECFS'; 'THMS'};
%set(gca,'xtick',[1:5],'xticklabel',names)
%xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50])

xticksArray = [1:1:50]
yticksArray = ["FP_R","SMa_R","SSa_R","GVAa_R","Va_R","FC_R","TPEa_R","Oa_R","HP_R","PHr_R","OS_R","SD_R","SV_R","Sr_R","Aa_R","PL_R","TH_R","HT_R","CO_R","MB_R","SN_R","PO_R","ME_R","CVr_R","CHr_R","FP_L","SMa_L","SSa_L","GVAa_L","Va_L","FC_L","TPEa_L","Oa_L","HP_L","PHr_L","OS_L","SD_L","SV_L","Sr_L","Aa_L","PL_L","TH_L","HT_L","CO_L","MB_L","SN_L","PO_L","ME_L","CVr_L","CHr_L"]
xticks(xticksArray)
%xticklabels({'XXX','YYY','ZZZ','0','\pi','2\pi','3\pi'})
xticklabels(yticksArray)
xtickangle(90)
yticks(xticksArray)
%yticklabels({'XXX','YYY','ZZZ','0','\pi','2\pi','3\pi'})
yticklabels(yticksArray)
