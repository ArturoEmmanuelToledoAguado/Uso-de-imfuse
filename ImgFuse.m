clc; 
clear all;
close all;

%Extraccion de la imagen
img=imread('IMG/1.jpg');
[f c]=size(img);
figure()
imshow(img)
title('Imagen Original')

%Primera Rotación
imgRot=imrotate(img,1);
[fr cr]=size(imgRot);

imgFus=Comp(f,c,fr,cr,imgRot,img);
figure()
imshow(imgFus)
title('Original y Rotada 1°')

%Segunda Rotación
imgRot=imrotate(img,2);
[fr cr]=size(imgRot);

imgFus1=Comp(f,c,fr,cr,imgRot,imgFus);
figure()
imshow(imgFus1)
title('Suma Anterior y Rotada 2°')

%Tercera Rotación
imgRot=imrotate(img,3);
[fr cr]=size(imgRot);

imgFus2=Comp(f,c,fr,cr,imgRot,imgFus1);
figure()
imshow(imgFus2)
title('Suma Anterior y Rotada 3°')

%Cuarta Rotación
imgRot=imrotate(img,4);
[fr cr]=size(imgRot);

imgFus3=Comp(f,c,fr,cr,imgRot,imgFus2);
figure()
imshow(imgFus3)
title('Suma Anterior y Rotada 4°')

%Quinta Rotación
imgRot=imrotate(img,5);
[fr cr]=size(imgRot);

imgFus4=Comp(f,c,fr,cr,imgRot,imgFus3);
figure()
imshow(imgFus4)
title('Suma Anterior y Rotada 5°')

function imgFus=Comp(f,c,fr,cr,imgRot,img)
    if (f<fr) || (c<cr/3)
        imgr=imresize(img,[fr cr/3]);
        imgFus=imfuse(imgr,imgRot,'blend');
    else
        imgr=imresize(img,[f c/3]);
        imgFus=imfuse(imgr,imgRot,'blend');
    end
end