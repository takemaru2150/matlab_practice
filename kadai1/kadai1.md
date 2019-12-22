# 課題１レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

ORG=imread('img/cat.jpg'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込み，表示した結果を図１に示す．

![kadai1_1](https://user-images.githubusercontent.com/50776559/71319186-40663080-24de-11ea-85a6-c313518f1a4f.png)
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．

![kadai1_2](https://user-images.githubusercontent.com/50776559/71319187-40fec700-24de-11ea-8c40-bad3cbbc249b.png)
図2 1/2サンプリング

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

とする．1/4サンプリングの結果を図３に示す．

![kadai1_3](https://user-images.githubusercontent.com/50776559/71319188-40fec700-24de-11ea-96d4-c10286c44f88.png) 
図3 1/4サンプリング

1/8から1/32サンプリングは，

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を繰り返す．サンプリングの結果を図４～６に示す．

![kadai1_4](https://user-images.githubusercontent.com/50776559/71319189-40fec700-24de-11ea-9ecd-9b7949cfff88.png)
図4 1/8サンプリング

![kadai1_5](https://user-images.githubusercontent.com/50776559/71319190-40fec700-24de-11ea-8a4a-d239651a99d2.png)  
図5 1/16サンプリング

![kadai1_6](https://user-images.githubusercontent.com/50776559/71319191-422ff400-24de-11ea-802a-5100a167df8a.png)
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
