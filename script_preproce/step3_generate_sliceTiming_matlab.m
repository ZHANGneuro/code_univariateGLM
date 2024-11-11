

% docs
% The transformed units are in TRs, the range of values is between -0.5 and
% 0.5 (1TR) as required below
% https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FEAT/UserGuide


header_file = load('/Users/bo/Desktop/file_generated/P7_brain/bold_signal_run1/dcmHeaders.mat');
header_file = header_file.h;
list_slice_timging = header_file.func_bold_task_socmedia_run_1.SliceTiming;

list_slice_timging = (list_slice_timging-min(list_slice_timging))/(max(list_slice_timging-mean(list_slice_timging)) - min(list_slice_timging-mean(list_slice_timging))) - 0.5;

% save to txt
% here 72 means 72 slices in z axis of BOLD images
fid = fopen('/Users/bo/Desktop/file_generated/slice_timing.txt','w');
for n = 1:length(list_slice_timging(:,1))
    fprintf(fid,'%f\n', list_slice_timging(n,:));
end
fclose(fid);




