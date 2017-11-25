function [wmat] = gal2wmat(file)
% To get the row number of .gal document.
fidd = fopen(file,'r');
row=0;
while ~feof(fidd) 
    [~]=fgets(fidd); 
    row=row+1; 
end
fclose(fidd);
% Read .gal document by rows.
fid = fopen(file,'r');
ww=zeros(row);
for i=1:row
t=fgetl(fid);
rownum=str2num(t);
s=row-max(size(rownum));
ss=zeros(1,s);
tttt= [rownum ss];
ww(i,:)=ww(i,:) + tttt;
end
fclose(fid);
for ii=1:row
    if sum(ww(:,ii)) > 0
        m=ii;
    end
end

www=ww(2:row,1:m);
 % Convert sparse matrix to matrix.
wmatt = size(www);
nn=max(wmatt)/2;
wmattt=zeros(nn,nn);
   for k=1:nn
    l=2*k-1;
    m=2*k;
    n=www(l,2);
     if n > 0
       for ii = 1:n 
        jj = www(m,ii);
        kk = www(l,1);
        wmattt(kk,jj) = 1;
        wmattt(jj,kk) = 1;
       end 
     end 
   end
   wmat = wmattt;
end













