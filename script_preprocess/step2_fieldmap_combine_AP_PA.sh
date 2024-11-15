#!/bin/bash
# https://open.win.ox.ac.uk/pages/fslcourse/lectures/Reg_P1E5.pdf


# write a for loop for multiple subjects

cur_sub="7"

fslmerge -t "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_ap_pa_run1" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_AP_run_1.nii.gz/fmap_epi_acq_socmedia_dir_AP_run_1.nii.gz" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_PA_run_1.nii.gz/fmap_epi_acq_socmedia_dir_PA_run_1.nii.gz"

fslmerge -t "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_ap_pa_run2" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_AP_run_2.nii.gz/fmap_epi_acq_socmedia_dir_AP_run_2.nii.gz" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_PA_run_2.nii.gz/fmap_epi_acq_socmedia_dir_PA_run_2.nii.gz"

fslmerge -t "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_ap_pa_run3" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_AP_run_3.nii.gz/fmap_epi_acq_socmedia_dir_AP_run_3.nii.gz" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_PA_run_3.nii.gz/fmap_epi_acq_socmedia_dir_PA_run_3.nii.gz"

fslmerge -t "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_ap_pa_run4" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_AP_run_4.nii.gz/fmap_epi_acq_socmedia_dir_AP_run_4.nii.gz" "/Users/bo/Desktop/file_generated/fieldmap_sub"$cur_sub"_PA_run_4.nii.gz/fmap_epi_acq_socmedia_dir_PA_run_4.nii.gz"






