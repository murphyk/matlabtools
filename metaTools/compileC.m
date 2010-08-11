function compileC(root, excludedDirs)
% Try and compile all mexable c-files in the directory structure that
% have not already been compiled. 
% PMTKneedsMatlab 
%%
if nargin < 1, root = pmtk3Root(); end

if nargin < 2
    excludedDirs = {'lightspeed2.3'  % use install_lightspeed or installLightspeedPMTK
                    'fastfit'        % use install_fastfit
                   };
end
cfiles = cfilelist(root);
for i=1:numel(excludedDirs)
   ex = cellfun(@(c)isSubstring(excludedDirs{i}, c), cfiles); 
   cfiles(ex) = []; 
end


for j=1:numel(cfiles)
    try
        cfile = cfiles{j};
        fname = fnameOnly(cfile);
        if ~exist(fname, 'file') == 3
            cd(fileparts(cfile));
            fprintf('Compiling %s\n',cfile);
            mex(cfile);
        end
    catch ME
        fprintf('Could not compile %s\n', cfile);
    end
end
end
