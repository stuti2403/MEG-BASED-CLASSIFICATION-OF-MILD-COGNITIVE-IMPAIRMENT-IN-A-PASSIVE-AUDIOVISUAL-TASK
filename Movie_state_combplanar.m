clear; 
close all;

%addpath(genpath('D:\internship_ulster_university\MEG_Data\fieldtrip-20220310\fieldtrip-20220310\fieldtrip-20220310')); % Local path to your fieldtrip toolbox
%addpath('D:\internship_ulster_university\MEG_Data\fieldtrip-20220310\fieldtrip-20220310\fieldtrip-20220310');
pwd
data_path = 'D:\internship_ulster_university\movie_state\'; % Local path to your data
save_path = 'D:\internship_ulster_university\combined_grad_movie_state\'; % Local path where you want to save your pre-processed data

mat_files = dir([data_path,'*.mat']);
mat_files
numel(mat_files)
for idx = 1:numel(mat_files)
    idx
    %% Reading raw MEG signals and temporal filtering
    load([mat_files(idx).folder,'\',mat_files(idx).name]);
    cfg                     = [];
    cfg.method = 'sum'; % Combine the gradiometers using Pythagoras theorem
    MEG        = ft_combineplanar(cfg,Filt_MEG_Data);
    save([save_path,'Combined_grad_',mat_files(idx).name],'MEG','-v7.3','-nocompression');
   end
