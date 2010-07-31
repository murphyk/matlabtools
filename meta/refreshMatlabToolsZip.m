function refreshMatlabToolsZip()
%% Refresh the Matlab tools zip file
% Requires an svn installation, (not just e.g. tortoise svn)
% All files must be checked into svn
%%
fprintf('removing old zip file...'); 
destZip = fullfile(matlabToolsRoot(), 'matlabTools.zip'); 
if exist(destZip, 'file')
    delete(destZip); 
end
fprintf('done\n');
tmpRoot = tempname();
mkdir(tmpRoot); 
tmpPath = fullfile(tmpRoot, 'matlabTools');
fprintf('Exporting code..........'); 
system(sprintf('svn export %s %s', matlabToolsRoot(), tmpPath));

fprintf('zipping.................');
zip(destZip, fullfile(tmpRoot, 'matlabTools', '*.*')); 
fprintf('done\ncleaning up.............'); 
system(sprintf('rmdir /Q /S %s', tmpPath));
fprintf('done\nrefresh complete\n'); 
end