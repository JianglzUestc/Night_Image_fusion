function [img_yuv] = rgb2yuv(img) 
img=mat2gray(img);  %��������ӳ�䵽[0,1];
[m n dim]=size(img);
%%ͼ���RGB
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);
%%RGB2YUV
Y=zeros(m,n);   %����
U=zeros(m,n);   %�ʶ�
V=zeros(m,n);   %Ũ��
matrix=[0.299 0.587 0.114;
        -0.14713 -0.28886 0.436;
        0.615 -0.51498 -0.10001];
for i=1:m
   for j=1:n 
        tmp=matrix*[R(i,j) G(i,j) B(i,j)]';
        Y(i,j)=tmp(1);
        U(i,j)=tmp(2);
        V(i,j)=tmp(3);
   end
end
Y = uint8(Y);
U = uint8(U);
V = uint8(V);
img_yuv = cat(3,Y,U,V);