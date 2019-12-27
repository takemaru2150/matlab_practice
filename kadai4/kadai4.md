# 課題4レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図１に示す．

![kadai4_1](https://user-images.githubusercontent.com/50776559/71503248-c1933e00-28b7-11ea-93e0-f8fe6b3db114.png)
図1 原画像

## ヒストグラムの表示

```
imhist(ORG); % ヒストグラムの表示
```

によって、ヒストグラムを作成し表示した。結果を図2に示す。

![kadai4_2](https://user-images.githubusercontent.com/50776559/71503251-c526c500-28b7-11ea-9507-c6fc7031e31f.png)
図2 ヒストグラム
