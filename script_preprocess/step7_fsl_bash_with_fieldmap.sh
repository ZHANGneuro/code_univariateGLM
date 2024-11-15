#!/bin/bash

# s1_num_volume and s1_num_voxel include number of volume and voxels for each session and subjects
# s1_num_volume[2] represents subject2


for sub in {7..7}; do

  declare -a s1
  s1_num_volume[$sub]=776
  s1_num_voxel[$sub]=288051200

  declare -a s2
  s2_num_volume[$sub]=802
  s2_num_voxel[$sub]=297702400

  declare -a s3
  s3_num_volume[$sub]=792
  s3_num_voxel[$sub]=293990400

  declare -a s4
  s4_num_volume[$sub]=819
  s4_num_voxel[$sub]=304012800


  for run in {1..4}; do
    if [ $run -eq 1 ];then
      NUM_VOLUME=${s1_num_volume[$sub]}
      NUM_VOXEL=${s1_num_voxel[$sub]}
    fi
    if [ $run -eq 2 ];then
      NUM_VOLUME=${s2_num_volume[$sub]}
      NUM_VOXEL=${s2_num_voxel[$sub]}
    fi
    if [ $run -eq 3 ];then
      NUM_VOLUME=${s3_num_volume[$sub]}
      NUM_VOXEL=${s3_num_voxel[$sub]}
    fi
    if [ $run -eq 4 ];then
      NUM_VOLUME=${s4_num_volume[$sub]}
      NUM_VOXEL=${s4_num_voxel[$sub]}
    fi

    SMOOTH="0"
    TR_INPUT="2"
    root_path=/Users/bo/Desktop/
    TEMPLATE_PATH=$root_path"fsf_template/feat_template_preprocess_with_fieldmap.fsf"
    OUTPUTDIR=$root_path"file_generated/preprocessing_sm"$SMOOTH"_fieldmap_sub"$sub"_run"$run
    
    T1_IMAGE=$root_path"file_generated/P"$sub"_brain/t1/t1.nii.gz"
    BOLD_IMAGE=$root_path"file_generated/P"$sub"_brain/bold_signal_run"$run"/func_bold_task_socmedia_run_"$run".nii.gz"
    Slice_Timing_file=$root_path"file_generated/slice_timing.txt"
    Standard_brain_dir=$root_path"toolbox_3rdParty/MNI152_T1_2mm_brain.nii.gz"

    fieldmap_rads=$root_path"file_generated/fieldmap_fout_sub"$sub"_run"$run"_rads"
    fieldmap_mag=$root_path"file_generated/fieldmap_fout_sub"$sub"_run"$run"_mag_brain"

    sed -e 's@OUTPUTDIR@'$OUTPUTDIR'@g' \
        -e 's@BOLD_IMAGE@'$BOLD_IMAGE'@g' \
        -e 's@TR_INPUT@'$TR_INPUT'@g' \
        -e 's@T1_IMAGE@'$T1_IMAGE'@g' \
        -e 's@SMOOTH@'$SMOOTH'@g' \
        -e 's@Slice_Timing_file@'$Slice_Timing_file'@g' \
        -e 's@Standard_brain_dir@'$Standard_brain_dir'@g' \
        -e 's@fieldmap_rads@'$fieldmap_rads'@g' \
        -e 's@fieldmap_mag@'$fieldmap_mag'@g' \
        -e 's@NUM_VOLUME@'$NUM_VOLUME'@g' \
        -e 's@NUM_VOXEL@'$NUM_VOXEL'@g' <$TEMPLATE_PATH> $root_path"file_generated/fsf_prep_sm"$SMOOTH"_fieldmap_sub"$sub"_s"$run".fsf"

  done
done
