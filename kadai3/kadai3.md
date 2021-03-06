# 課題3レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．
閾値を4パターン設定し,閾値処理をした画像を示す．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し、表示した結果を図２に示す．

![kadai3_1](https://user-images.githubusercontent.com/50776559/71319959-42cd8800-24e8-11ea-8f51-457627c55e88.png)

図２ 原画像を白黒濃淡画像に変換

## 輝度値が64以上の画素を1，その他を0に変換

```
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が64以上の画素を1，その他を0に変換）を作成し表示した。結果を図３に示す。

![kadai3_2](https://user-images.githubusercontent.com/50776559/71319960-43661e80-24e8-11ea-8684-3b5387cbf671.png)

図3 白黒濃淡画像（輝度値が64以上の画素を1，その他を0に変換）

## 輝度値が96以上の画素を1，その他を0に変換

```
IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が96以上の画素を1，その他を0に変換）を作成し表示した。結果を図4に示す。

![kadai3_3](https://user-images.githubusercontent.com/50776559/71320112-3c401000-24ea-11ea-809d-94eef40b0222.png)

図4 白黒濃淡画像（輝度値が96以上の画素を1，その他を0に変換）

## 輝度値が128以上の画素を1，その他を0に変換

```
IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が128以上の画素を1，その他を0に変換）を作成し表示した。結果を図5に示す。

![kadai3_4](https://user-images.githubusercontent.com/50776559/71320113-3c401000-24ea-11ea-94b0-132d672bb745.png)

図5 白黒濃淡画像（輝度値が128以上の画素を1，その他を0に変換）

## 輝度値が192以上の画素を1，その他を0に変換

```
IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が192以上の画素を1，その他を0に変換）を作成し表示した。結果を図6に示す。

![kadai3_5](https://user-images.githubusercontent.com/50776559/71320117-406c2d80-24ea-11ea-8e85-2b77a7d82bf1.png)

図6 白黒濃淡画像（輝度値が192以上の画素を1，その他を0に変換）

## 考察

本課題はディジタル画像に対して閾値処理を行う事であった。各閾値を設けた画像の生成は元画像をグレースケールにした後、閾値を設定、処理することで行う。グレースケール画像に対して閾値処理を行うということは画像の2値化をしていることに等しい。まず図3の閾値の輝度値が64の場合を例に取り、本課題で使用したプログラムで何を行っているのかを考察する。
　以下が閾値に輝度値64を設けた画像を生成するためのプログラムである。

IMG = ORG > 64;
imagesc(IMG); colormap(gray); colorbar;
pause;

ここでのORGは原画像をグレースケールにしたものが格納されている。閾値処理を行うには不等号を用いる。ここでは閾値に輝度値64を設けるため、
IMG = ORG > 64;
とする。これによりIMGにはグレースケールのORGに対して輝度値64で閾値処理を行った画像が格納される。輝度値64で閾値処理を行うということは、輝度値が64以上である画素を1(白)、64未満の画素には0(黒)を設定することになる。従って図2の画像で白い部分は輝度値が64以上、黒い部分は輝度値が64未満であることになる。以上の処理でmatlabを用いた閾値処理を行う。
　同様に、閾値に輝度値96を設けた画像を生成するプログラムを見る。

IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;
pause;

ここでもORGには同様に原画像をグレースケール化したものが格納されている。閾値に64を設けた場合と同様に、閾値の輝度値が96の場合には不等号を用いた
IMG = ORG > 96;
処理を行う。これにより閾値の輝度値が96の画像がIMGに格納される。

以下、閾値96,128,192の場合も同様の処理を行うことで図4,5,6の画像が生成された。

ここで、各画像の前後関係を見る。図3,4を比較すると閾値を64から96に変更した段階で生成画像に新しく黒い領域が増えていることが分かる。同様に図5,6を比較しても黒い領域が大幅に増えていることが分かる。これらの比較からこの画像においてどれくらいの値の輝度値を持つ画素が多いかが分かる。