clc; 
clear all;
close all;

%Extraccion de la imagen
img=imread('IMG/1.jpg');
[f c]=size(img);
figure()
imshow(img)
title('Imagen Original')

for i=1:5
    imgRot=imrotate(img,i);
    [fr cr]=size(imgRot);
    if (f<fr) || (c<cr/3)
        imgr=imresize(img,[fr cr/3]);
        imgFus=imfuse(imgr,imgRot,'blend');
        figure()
        imshow(imgFus)
        title(['Suma de Original con Rotada ',num2str(i),'°'])
    end
end