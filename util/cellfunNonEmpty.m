function C = cellfunNonEmpty(fn, C)
%% Apply a function to the non-empty elements of C
% always returns a cell array

ndx = ~cellfun('isempty', C); 

C(ndx) = cellfuncell(fn, C(ndx)); 
end