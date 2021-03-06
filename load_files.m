function load_files(programdir)

% this script simply loads the file(s) to be denoised and passes the
% information to run_control.m

% Get handle structure from GUI
MLEshort = guihandles(MLE_short);

% Browse for files to denoise
[filelist,datadir] = uigetfile({'*.mat';'*.dat'},'Select ascii files','multiselect','on');

% Suppress error in the case that file select is canceled
if ~datadir
    return
end

% Call run control to start processing the inputs
run_control(filelist,datadir,MLEshort,programdir);
