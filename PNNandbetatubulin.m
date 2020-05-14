for k = 1:8
jpgFilename = sprintf('%d.tif', k);

end
if exist(jpgFilename, 'file')
A1 = imread(jpgFilename); %reads wfa image 
else
warningMessage = sprintf('Warning: image file does not exist:\n%s', jpgFilename);
uiwait(warndlg(warningMessage));
end
for k = 1:7
jpgFilename = sprintf('%d.tif', k);

end
if exist(jpgFilename, 'file')
A2 = imread(jpgFilename); %reads beta tubulin image
else
warningMessage = sprintf('Warning: image file does not exist:\n%s', jpgFilename);
uiwait(warndlg(warningMessage));
end

F1 = imbinarize(A1);
F2 = imbinarize(A2);
I1=bwarea(F1) %measures fluorescence intensity of wfa
I2=bwarea(F2) %measures fluorescence intensity of beta tubulin