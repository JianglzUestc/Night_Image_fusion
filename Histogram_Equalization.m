function [img1_histo,img2_histo] = Histogram_Equalization(img1,img2)
img1_histo = histeq(img1);
img2_histo = histeq(img2);
% [R, C] = size(I);
% % ͳ��ÿ������ֵ���ִ���
% cnt = zeros(1, 256);
% for i = 1 : R
%     for j = 1 : C
%         cnt(1, I(i, j) + 1) = cnt(1, I(i, j) + 1) + 1;
%     end
% end
% f = zeros(1, 256);
% f = double(f); cnt = double(cnt);
% % ͳ��ÿ������ֵ���ֵĸ��ʣ� �õ�����ֱ��ͼ
% for i = 1 : 256
%     f(1, i) = cnt(1, i) / (R * C);
% end
% % ���ۼƸ��ʣ��õ��ۼ�ֱ��ͼ
% for i = 2 : 256
%     f(1, i) = f(1, i - 1) + f(1, i);
% end
% % ��f����ʵ������ֵ[0, 255]��ӳ�䡣 
% for i = 1 : 256
%     f(1, i) = f(1, i) * 255;
% end
% % ���ÿ�����ص��ӳ��
% I = double(I);
% for i = 1 : R
%     for j = 1 : C
%         I(i, j) = f(1, I(i, j) + 1);
%     end
% end
% % ���
% I = uint8(I);