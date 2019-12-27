# 課題4レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図２に示す．

![kadai4_1](https://user-images.githubusercontent.com/50776559/71503248-c1933e00-28b7-11ea-93e0-f8fe6b3db114.png)

図2 原画像をグレースケールした画像

## ヒストグラムの表示

```
imhist(ORG); % ヒストグラムの表示
```

によって、ヒストグラムを作成し表示した。結果を図3に示す。

![kadai4_2](https://user-images.githubusercontent.com/50776559/71503251-c526c500-28b7-11ea-9507-c6fc7031e31f.png)

図3 ヒストグラム

## 考察

同一濃度が含まれる領域を発見したり、特定の濃度が含まれる領域に対して何らかの処理を行いたい場合など、その前段階として画像を濃度で分析する手段としてヒストグラムは非常に有効であると考えられる。