% �W�{���Ԋu�Ƌ�ԉ𑜓x

clear; % �ϐ��̃I�[���N���A

ORG=imread('img/cat.jpg'); % ���摜�̓���

imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~


IMG = imresize(ORG,0.5); % �摜�̏k��

IMG2 = imresize(IMG,2,'box'); % �摜�̊g��

imagesc(IMG2); axis image; % �摜�̕\��

pause; % �ꎞ��~


IMG = imresize(IMG,0.5); % �摜�̏k��

IMG2 = imresize(IMG,4,'box'); % �摜�̊g��

imagesc(IMG2); axis image; % �摜�̕\��

pause; % �ꎞ��~



IMG = imresize(IMG,0.5); % �摜�̏k��

IMG2 = imresize(IMG,8,'box'); % �摜�̊g��

imagesc(IMG2); axis image; % �摜�̕\��

pause; % �ꎞ��~



IMG = imresize(IMG,0.5); % �摜�̏k��

IMG2 = imresize(IMG,16,'box'); % �摜�̊g��

imagesc(IMG2); axis image; % �摜�̕\��

pause; % �ꎞ��~



IMG = imresize(IMG,0.5); % �摜�̏k��

IMG2 = imresize(IMG,32,'box'); % �摜�̊g��

imagesc(IMG2); axis image; % �摜�̕\��

