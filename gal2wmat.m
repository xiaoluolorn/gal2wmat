function [wmat] = gal2wmat(file)
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
aa = textread(file);
wmatt = size(aa);
nn=max(wmatt)/2;
wmattt=zeros(nn,nn);
   for k=1:nn
    l=2*k-1;
    m=2*k;
    n=aa(l,2);
     if n > 0
       for ii = 1:n 
        jj = aa(m,ii);
        kk = aa(l,1);
        wmattt(kk,jj) = 1;
        wmattt(jj,kk) = 1;
       end 
     end 
   end
   wmat = wmattt;
end

