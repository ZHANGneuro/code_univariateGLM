

struct_template = MRIread('/Users/bo/Desktop/toolbox_3rdParty/mask_wholebrain.nii');
ima_template = struct_template.vol;
index_template = find(ima_template==0);

sub_id = '7';
root_path = '/Users/bo/Desktop/file_generated/';


struct1 = MRIread([root_path, 'standard_sub7_run1_pe1.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe1.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe1.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe1.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_chat.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe2.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe2.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe2.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe2.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_actor.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe3.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe3.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe3.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe3.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_likesReceived.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe4.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe4.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe4.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe4.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_dislikesReceived.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe5.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe5.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe5.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe5.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_LikesGiven.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe6.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe6.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe6.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe6.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_DislikesGiven.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe7.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe7.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe7.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe7.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_rewardPunish.nii'])



struct1 = MRIread([root_path, 'standard_sub7_run1_pe8.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe8.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe8.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe8.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_likability.nii'])


struct1 = MRIread([root_path, 'standard_sub7_run1_pe9.nii.gz']);
struct2 = MRIread([root_path, 'standard_sub7_run2_pe9.nii.gz']);
struct3 = MRIread([root_path, 'standard_sub7_run3_pe9.nii.gz']);
struct4 = MRIread([root_path, 'standard_sub7_run4_pe9.nii.gz']);
cur_ima = (struct1.vol+struct2.vol+struct3.vol+struct4.vol)/4;
cur_ima(index_template) = 0;
struct1.vol = cur_ima;
MRIwrite(struct1, [root_path, 'brain_activity_likabilityRev.nii'])






