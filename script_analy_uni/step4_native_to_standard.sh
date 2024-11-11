# #!/bin/bash

for ith_run in {1..4}; do

    for ith_pe in {1..12}; do

        flirt -in "/Users/bo/Desktop/file_generated/univariate_sub7_run"$ith_run".feat/stats/pe"$ith_pe".nii.gz" -ref "/Users/bo/Desktop/toolbox_3rdParty/MNI152_T1_2mm_brain.nii.gz" -out "/Users/bo/Desktop/file_generated/standard_sub7_run"$ith_run"_pe"$ith_pe".nii.gz" -init "/Users/bo/Desktop/file_generated/preprocessing_sm0_sub7_run"$ith_run".feat/reg/example_func2standard.mat" -applyxfm

    done 

done 
