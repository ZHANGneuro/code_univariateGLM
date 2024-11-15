#!/bin/bash

# write a for loop for multiple subjects

cur_sub="7"
path_root="/Users/bo/Desktop/"

for cur_run in 1 2 3 4; 
do

    topup --imain=$path_root"file_generated/fieldmap_sub7_ap_pa_run"$cur_run --datain=$path_root"file_generated/fieldmap_datain_sub7_run"$cur_run".txt" --config=b02b0.cnf --fout=$path_root"/file_generated/fieldmap_fout_sub7_run"$cur_run --iout=$path_root"/file_generated/fieldmap_iout_sub7_run"$cur_run

    fslmaths $path_root"file_generated/fieldmap_fout_sub7_run"$cur_run -mul 6.28 $path_root"file_generated/fieldmap_fout_sub7_run"$cur_run"_rads"

    fslmaths $path_root"/file_generated/fieldmap_iout_sub7_run"$cur_run -Tmean $path_root"file_generated/fieldmap_fout_sub7_run"$cur_run"_mag"

    bet2 $path_root"file_generated/fieldmap_fout_sub7_run"$cur_run"_mag" $path_root"file_generated/fieldmap_fout_sub7_run"$cur_run"_mag_brain"

done







