function text = removeNonPrintedChars(text)
%% Remove all non-printing characters, (except regular blank space)
% and replace them with blanks. Remove superfluous blanks. 

% This file is from matlabtools.googlecode.com


if iscell(text)
    text = cellfuncell(@removeNonPrintedChars, text); 
    return
end

text(~isstrprop(text, 'print') ) = ' ';
text = removeExtraSpaces(text);
end


