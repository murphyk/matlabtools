function R = matlabToolsRoot()
%% Return the root matlabTools directory
R = fileparts(which(mfilename()));	
end