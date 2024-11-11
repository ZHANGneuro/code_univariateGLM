


%% 

path_pe = '/Users/bo/Desktop/file_generated/';
beta_dir = dir(fullfile(path_pe, 'brain_activity_*.nii'));
beta_list = strcat(path_pe,  {beta_dir.name}');

brain_mask = MRIread('/Users/bo/Desktop/toolbox_3rdParty/mask_wholebrain.nii').vol;
index_brain_mask = find(brain_mask==1);
index_nonbrain_mask = find(brain_mask==0);

for ith_ima = 1:length(beta_list(:,1))

    cur_ima_struct = MRIread(beta_list{ith_ima});
    cur_ima = cur_ima_struct.vol;
    % cur_ima(index_brain_mask) = (cur_ima(index_brain_mask)-mean(cur_ima(index_brain_mask)));
    cur_ima(index_nonbrain_mask) = 0;
    sorted_activity = sort(cur_ima(:));

    %%
    if contains(beta_list{ith_ima}, "rewardPunish") | contains(beta_list{ith_ima}, "actor") | contains(beta_list{ith_ima}, "chat")
        upper_bound = sorted_activity(round(length(sorted_activity)*0.975));
        lower_bound = sorted_activity(round(length(sorted_activity)*0.025));
        cur_ima(find(cur_ima<upper_bound & cur_ima>lower_bound)) = 0;
    else
        cur_threshold = sorted_activity(round(length(sorted_activity)*0.95));
        cur_ima(find(cur_ima<cur_threshold)) = 0;
    end
    
    cur_ima_struct.vol = cur_ima;
    new_file_name = strsplit(beta_list{ith_ima}, 'file_generated/');
    MRIwrite(cur_ima_struct, [path_pe, 'centered_' ,new_file_name{2}]);
   
end









% %%
% path_pe = '/Users/bo/Desktop/file_generated/';
% beta_dir = dir(fullfile(path_pe, 'centered*.nii'));
% beta_list = strcat(path_pe,  {beta_dir.name}');
% 
% %
% cur_struct = MRIread('/Users/bo/Documents/data_dean_lab/data_swati_ket/outputs/result_univariate_beta/neg_topic_neg_gpt.nii');
% cur_ima = cur_struct.vol;
% output_table = cur_ima(mask_index);
% fid = fopen([  root_path,  ['/data_swati_ket/outputs/plot_signal_neg_topic_neg_gpt.txt']],'w');
% for ith_trial = 1:length(output_table)
%     fprintf(fid,'%f\n',output_table(ith_trial,:));
% end
% fclose(fid);

