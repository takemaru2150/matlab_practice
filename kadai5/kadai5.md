# 課題2レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図１に示す．

![kadai2_1](https://user-images.githubusercontent.com/50776559/71319562-5f1af600-24e3-11ea-9b30-12e2d9335d12.png)
図1 原画像

## 2階調画像の作成

```
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```

によって、2階調画像を作成し表示した。結果を図2に示す。

![kadai2_2](https://user-images.githubusercontent.com/50776559/71319563-5f1af600-24e3-11ea-916f-f7315baf96d7.png)
図2 2階調画像

## 4階調画像の作成

```
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```

によって、4階調画像を作成し表示した。結果を図3に示す。

![kadai2_3](https://user-images.githubusercontent.com/50776559/71319564-5fb38c80-24e3-11ea-8509-972fbb27439a.png)
図3 4階調画像の作成

## 8階調画像の作成

```
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>128;
IMG3 = ORG>192;
IMG = IMG0 + IMG1 + IMG2 + IMG3;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```

によって、8階調画像を作成し表示した。結果を図4に示す。

![kadai2_4](https://user-images.githubusercontent.com/50776559/71319565-5fb38c80-24e3-11ea-8148-02f5f36ec4f7.png)
図4 8階調画像の作成

