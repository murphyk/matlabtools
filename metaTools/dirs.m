function d = dirs(p)
% Return list of the directories in the specified directory.

% This file is from matlabtools.googlecode.com


if nargin == 0, p = pwd(); end

dinfo = dir(p);
names = {dinfo.name};
isdir = cell2mat({dinfo.isdir}) & cellfun(@(str)~startswith(str, '.'), names);
d = names(isdir)'; 


end
