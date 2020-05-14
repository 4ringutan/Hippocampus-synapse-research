for k = 1:1
jpgFilename = sprintf('%d.tif', k);

end
if exist(jpgFilename, 'file')
A1 = imread(jpgFilename);
else
warningMessage = sprintf('Warning: image file does not exist:\n%s', jpgFilename);
uiwait(warndlg(warningMessage)); %reads image '1.tif' and labels it as 'A1'
end

C1=imgaussfilt(A1,'FilterSize',[5 5]);
E1 = adaptthresh(C1, 0.01); 
F1 = imbinarize(C1,E1); %creates a binary image with a specified filter
F1 = bwmorph(F1,'clean',Inf);
G1 = bwareaopen(F1,80);
H1 = bwmorph(G1,'bridge',Inf);
I1 = bwmorph(H1,'thin',Inf);
I1 = bwmorph(I1,'bridge',Inf);
M1 = bwmorph(I1,'branchpoints');
L1=bwlabel(M1);
[a1, val1]=hist(L1(:),1:max(L1(:)));
X1= max(val1); %total BRANCH NUMBER OF DENDRITES TO SPINES