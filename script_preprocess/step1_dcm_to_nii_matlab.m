
%% define root path
root_path = '/Users/bo/Desktop/';
sub_list = {'7'};


%% convert bold image from DICOM to NII format
file_list = {'P7_brain'};
for ith_sub = 1:1
    for ith_run = 1:4
    folder_of_dicoms = [root_path,file_list{ith_sub},'/func-bold_task-socmedia_run-',num2str(ith_run),'/run.dicom.zip'];
    folder_of_output = [root_path, 'file_generated/', file_list{ith_sub}, '/bold_signal_run', num2str(ith_run)];
    dicm2nii(folder_of_dicoms, folder_of_output, '.nii.gz')
    end
end


%% convert t1 image from DICOM to NII format
file_list = {'P7_brain'};
for ith_sub = 1:1
    folder_of_dicoms = [root_path,file_list{ith_sub},'/anat-MEGRE/T1.dicom.zip'];
    folder_of_output = [root_path, 'file_generated/', file_list{ith_sub}, '/t1'];
    dicm2nii(folder_of_dicoms, folder_of_output, '.nii.gz')
end


%% convert PA & AP fieldmap into NII format
file_list = {'P7_brain'};
for ith_sub = 1:1
    for ap_or_pa = ["AP", "PA"]
        for ith_run = 1:4
            folder_of_dicoms = convertStringsToChars(strcat(root_path,file_list{ith_sub},'/fmap-epi_acq-socmedia_dir-',ap_or_pa,'_run-',num2str(ith_run),'/fmap-epi_acq-socmedia_dir-',ap_or_pa,'_run-',num2str(ith_run),'.dcm'));
            folder_of_output = convertStringsToChars(strcat(root_path, 'file_generated/fieldmap_sub', sub_list{ith_sub}, '_',ap_or_pa,'_run_',num2str(ith_run), '.nii.gz'));
            dicm2nii(folder_of_dicoms, folder_of_output, '.nii.gz')
        end
    end
end

%% generate txt file for FSL "TOPUP" argument "datain" 
%https://lcni.uoregon.edu/wiki/acquiring-and-using-field-maps/
for ith_sub = 1:1
    for ith_run = 1:4
        dicom_header_ap = load(convertStringsToChars(strcat(root_path,'file_generated','/fieldmap_sub',sub_list{ith_sub},'_AP_run_',num2str(ith_run),'.nii.gz/dcmHeaders.mat')));
        dicom_header_pa = load(convertStringsToChars(strcat(root_path, 'file_generated','/fieldmap_sub',sub_list{ith_sub},'_PA_run_',num2str(ith_run),'.nii.gz/dcmHeaders.mat')));
        dicom_header_ap = dicom_header_ap.h;
        dicom_header_ap = struct2cell(dicom_header_ap);
        dicom_header_ap = dicom_header_ap{1};
        dicom_header_pa = dicom_header_pa.h;
        dicom_header_pa = struct2cell(dicom_header_pa);
        dicom_header_pa = dicom_header_pa{1};

        ap_readoutSec = dicom_header_ap.ReadoutSeconds
        pa_readoutSec = dicom_header_pa.ReadoutSeconds
        ap_dir = dicom_header_ap.UnwarpDirection
        pa_dir = dicom_header_pa.UnwarpDirection

        fid = fopen( ['/Users/bo/Desktop/file_generated/fieldmap_datain_sub',sub_list{ith_sub},'_run', num2str(ith_run), '.txt'], 'wt' );
        fprintf( fid, '%d\t %d\t %d \t %f\n', 0, -1, 0, ap_readoutSec);
        fprintf( fid, '%d\t %d\t %d \t %f\n', 0, 1, 0, pa_readoutSec);
        fclose(fid);

    end
end

