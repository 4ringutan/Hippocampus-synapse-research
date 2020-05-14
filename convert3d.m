
b=im2double(a); %3D reconstruction of spines
shading interp
colormap(gray)
mesh(b)

%d=rgb2gray(c) %if image is rgb
%d=im2double(d);
%shading interp
%colormap(gray)
%mesh(d)