



for ind_subject = 7:7
    for ind_run = 1:4
        cur_image_struct = MRIread(['/Users/bo/Desktop/file_generated/P',num2str(ind_subject),'_brain/bold_signal_run',num2str(ind_run),'/func_bold_task_socmedia_run_',num2str(ind_run),'.nii.gz']);
        cur_image = cur_image_struct.vol;
        image_size = size(cur_image);
        ['sub', num2str(ind_subject), ' run', num2str(ind_run), ' #volume: ', num2str(image_size(4)), ' #voxel: ', num2str(image_size(1) * image_size(2) * image_size(3) * image_size(4))]
    end
end
['Please copy & paste these values into "batch_file_generator"']






