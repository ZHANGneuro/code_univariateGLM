

%% bold signal
file_list = {'P7_brain'};
for ith_sub = 1:1
    for ith_run = 1:4
    folder_of_dicoms = ['/Users/bo/Desktop/',file_list{ith_sub},'/func-bold_task-socmedia_run-',num2str(ith_run),'/run.dicom.zip'];
    folder_of_output = ['/Users/bo/Desktop/file_generated/', file_list{ith_sub}, '/bold_signal_run', num2str(ith_run)];
    dicm2nii(folder_of_dicoms, folder_of_output, '.nii.gz')
    end
end


%% t1
file_list = {'P7_brain'};
for ith_sub = 1:1
    folder_of_dicoms = ['/Users/bo/Desktop/',file_list{ith_sub},'/anat-MEGRE/T1.dicom.zip'];
    folder_of_output = ['/Users/bo/Desktop/file_generated/', file_list{ith_sub}, '/t1'];
    dicm2nii(folder_of_dicoms, folder_of_output, '.nii.gz')
end



