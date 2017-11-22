# gal2wmat
% 'file' is the name of the .gal document.
% To use this function, you need to reshape the .gal document:
% At first, delete the first line of the .gal document;
% then, add a 0 to the next line if the district have no neighbors.
% eg: Invert this kind of format
%   0 34 map DZM   %
%   8 2            %
%   7 5            %
%   30 0           %
%                  %
%   to the format like this:
%   8 2            %
%   7 5            %
%   30 0           %
%   0              %
