

for ith_block = 0:3

    root_path = '/Users/bo/Desktop';
    [NUM,TXT,block] = xlsread([root_path, '/P7_CSVs/new_par07_events_block',num2str(ith_block),'.xlsx']);
    block = block(2:end, :);
    
    for ith_col = 1:5
        for ith_row = 1:length(block)
            block{ith_row, ith_col} = num2str(block{ith_row, ith_col});
        end
    end


    % message chat
    mess_onset = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 8);
    mess_end = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 9);
    mess_value = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 3);
    % mess_value(find(mess_value==0))=-1;
    output_table = [mess_onset, mess_end-mess_onset, mess_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_chat.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    

    % message actor 
    mess_onset = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 8);
    mess_end = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 9);
    mess_value = NUM(cellfun(@(x) strcmp(x, 'msgReceived'), block(:, 6)), 4);
    % mess_value(find(mess_value==0))=-1;
    output_table = [mess_onset, mess_end-mess_onset, mess_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_actor.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);


    % likesReceivedTotal
    likesReceivedTotal_onset = NUM(cellfun(@(x) strcmp(x, 'likesReceivedTotal'), block(:, 6)), 8);
    likesReceivedTotal_end = NUM(cellfun(@(x) strcmp(x, 'likesReceivedTotal'), block(:, 6)), 9);
    likesReceivedTotal_value = NUM(cellfun(@(x) strcmp(x, 'likesReceivedTotal'), block(:, 6)), 7);
    output_table = [likesReceivedTotal_onset, likesReceivedTotal_end-likesReceivedTotal_onset, likesReceivedTotal_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_likesReceived.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    % dislikesReceived
    dislikesReceived_onset = NUM(cellfun(@(x) strcmp(x, 'dislikesReceived'), block(:, 6)), 8);
    dislikesReceived_end = NUM(cellfun(@(x) strcmp(x, 'dislikesReceived'), block(:, 6)), 9);
    dislikesReceived_value = NUM(cellfun(@(x) strcmp(x, 'dislikesReceived'), block(:, 6)), 7);
    output_table = [dislikesReceived_onset, dislikesReceived_end-dislikesReceived_onset, dislikesReceived_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_dislikesReceived.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % LikesGiven
    LikesGiven_onset = NUM(cellfun(@(x) strcmp(x, 'totalLikesGiven'), block(:, 6)), 8);
    LikesGiven_end = NUM(cellfun(@(x) strcmp(x, 'totalLikesGiven'), block(:, 6)), 9);
    LikesGiven_value = NUM(cellfun(@(x) strcmp(x, 'totalLikesGiven'), block(:, 6)), 7);
    output_table = [LikesGiven_onset, LikesGiven_end-LikesGiven_onset, LikesGiven_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_LikesGiven.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % totalDislikesGiven
    DislikesGiven_onset = NUM(cellfun(@(x) strcmp(x, 'totalDislikesGiven'), block(:, 6)), 8);
    DislikesGiven_end = NUM(cellfun(@(x) strcmp(x, 'totalDislikesGiven'), block(:, 6)), 9);
    DislikesGiven_value = NUM(cellfun(@(x) strcmp(x, 'totalDislikesGiven'), block(:, 6)), 7);
    output_table = [DislikesGiven_onset, DislikesGiven_end-DislikesGiven_onset, DislikesGiven_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_DislikesGiven.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % rewardPunish
    rewardPunish_onset = NUM(cellfun(@(x) strcmp(x, 'rewardPunish'), block(:, 6)), 8);
    rewardPunish_end = NUM(cellfun(@(x) strcmp(x, 'rewardPunish'), block(:, 6)), 9);
    rewardPunish_value = NUM(cellfun(@(x) strcmp(x, 'rewardPunish'), block(:, 6)), 7);
    output_table = [rewardPunish_onset, rewardPunish_end-rewardPunish_onset, rewardPunish_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_rewardPunish.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    
    
    % likabilityRev
    likabilityRev_onset = NUM(cellfun(@(x) strcmp(x, 'likabilityRev'), block(:, 6)), 8);
    likabilityRev_end = NUM(cellfun(@(x) strcmp(x, 'likabilityRev'), block(:, 6)), 9);
    likabilityRev_value = NUM(cellfun(@(x) strcmp(x, 'likabilityRev'), block(:, 6)), 7);
    output_table = [likabilityRev_onset, likabilityRev_end-likabilityRev_onset, likabilityRev_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_likabilityRev.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % likability
    likability_onset = NUM(cellfun(@(x) strcmp(x, 'likability'), block(:, 6)), 8);
    likability_end = NUM(cellfun(@(x) strcmp(x, 'likability'), block(:, 6)), 9);
    likability_value = NUM(cellfun(@(x) strcmp(x, 'likability'), block(:, 6)), 7);
    output_table = [likability_onset, likability_end-likability_onset, likability_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_likability.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % feelings - confounding factor, number of samples is too small
    feelings_onset = NUM(cellfun(@(x) strcmp(x, 'feelings'), block(:, 6)), 8);
    feelings_end = NUM(cellfun(@(x) strcmp(x, 'feelings'), block(:, 6)), 9);
    feelings_value = ones(length(feelings_onset), 1);
    output_table = [feelings_onset, feelings_end-feelings_onset, feelings_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_feelings.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    
    % fixate - confounding factor
    fixate_onset = NUM(cellfun(@(x) strcmp(x, 'fixate'), block(:, 6)), 8);
    fixate_end = NUM(cellfun(@(x) strcmp(x, 'fixate'), block(:, 6)), 9);
    fixate_value = ones(length(fixate_onset), 1);
    output_table = [fixate_onset, fixate_end-fixate_onset, fixate_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_fixate.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);
    
    % prompt - confounding factor, number of samples is too small
    prompt_onset = NUM(cellfun(@(x) strcmp(x, 'prompt'), block(:, 6)), 8);
    prompt_end = NUM(cellfun(@(x) strcmp(x, 'prompt'), block(:, 6)), 9);
    prompt_value = ones(length(prompt_onset), 1);
    output_table = [prompt_onset, prompt_end-prompt_onset, prompt_value];
    fid = fopen([  root_path,  ['/file_generated/event_txt_files/univariate_run',num2str(ith_block+1),'_prompt.txt']],'w');
    for n = 1:length(output_table(:,1))
        fprintf(fid,'%f\t  %f\t  %d\n',output_table(n,:));
    end
    fclose(fid);


end










