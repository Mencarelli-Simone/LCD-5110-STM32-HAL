clc
clear all
clc
%%
a=.17;%light treshold, vary between 0 and 1 bigger= brighter final image
d=0.4;%dither, vary it between 0 and 0.5 to show up details in the final pic
b=4.62;%vary it between 4 and 5 4=only edges 5=Highpass filter only
B=mean(imread('Roberto_Sorrentino.png'),3)/255; %imput pic
IM=B;
figure(2)
imshow(IM);
title('ORIGINAL');
%%passa alto
fil=[-1/2 -1/2 -1/2;-1/2 b -1/2;-1/2 -1/2 -1/2];
IM=conv2(fil,IM);
figure(3)
imshow(IM)
title('HIGHPASS');
dit=rand(size(IM));
IM=round((IM+d*dit)/(1+d)+a);
figure(4)
imshow(IM)
title('after');
%downscale
A=imresize(IM,168/max(size(B)),'bilinear');
fil2=[0 -1/4 0;-1/4 2 -1/4;0 -1/4 0]; 

figure(5)
imshow(A);
siz=size(A);
A=(A+0.2*rand(siz))/1.2;
A=A(2:siz(1)-2,2:siz(2)-2);
A=imresize(A,[86,50],'bilinear');
A=(conv2(A,fil2))*3/4+(conv2(A,[0 0 0;0 1 0;0 0 0]))*1/4;
A=round(A(2:86-1,2:50-1));
imshow(A);
%%
for j=0:5
    n=0;
    for i=1:84
        fprintf('0x');
        str=sprintf('%g',abs(1-A(i,8*(5-j)+1:8*(5-j)+8)));
        hex_str = dec2hex(bin2dec(str),2);
        fprintf('%s',hex_str);
        fprintf(', ')
        n=n+1;
    end
    fprintf('\n')
    
end
