# 課題8レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図2に示す．

![kadai8_1](https://user-images.githubusercontent.com/50776559/71508216-63238b00-28ca-11ea-8db8-f0b5ac593dd6.png)

図2 原画像をグレースケールした画像

## 閾値128で二値化

```
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
```

によって、閾値128で二値化した画像を作成し表示した。結果を図3に示す。

![kadai8_2](https://user-images.githubusercontent.com/50776559/71508217-63238b00-28ca-11ea-8f20-82c2f6355148.png)

図3 閾値128で二値化した画像

## 図3をラベリングした画像

```
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示
```

によって、画像を作成し表示した。結果を図4に示す。

![kadai8_3](https://user-images.githubusercontent.com/50776559/71508215-63238b00-28ca-11ea-87cf-fcb58d59bc31.png)

図4 図3をラベリングした画像

## 考察

本課題は画像を二値化した後、ラベリングを行うことであった。
ラベリングとは二値化画像において0(黒)ないし255(白)が連続した画素に対して番号を割り当てる処理のことを指す。本課題のプログラムではカラーマップにjetを指定することで割り当てた値に色をつけ表示している。
本課題においてラベリングはbwlabelnを用いて実現している。以下がその処理である。

IMG = bwlabeln(IMG);

IMGには閾値128で二値化した画像が格納されている。今回のラベリングでは画素値が1である画素にラベル付けを行うため、あらかじめ0(黒)は0のラベルが付けられる。通常ラベリング処理はラスタ走査を用いて行われる。基本的なアルゴリズムとしては以下のような手順である。

1. ラスタ走査を行い、ラベルの付いていない画素を見つけ注目画素とする
2. 最初に見つかった白画素に対して番号1を振る
3. 再び走査を開始する
4. 次に見つかる白画素に対しては以下のaもしくはbの処理を行う

    a.隣接している画素に既にラベルが付いた画素があればその内最小の値を振る

    b.隣接している画素値が全て0であれば新たに番号(最後の値+1)を振る

5. 3および4を繰り返して走査を最後の画素まで行う