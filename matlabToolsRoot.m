function r = matlabToolsRoot()
%% Return the root matlabTools directory
w = which(mfilename());
if w(1) == '.'
    w = fullfile(pwd, w(3:end));
end
r = fileparts(w);
end