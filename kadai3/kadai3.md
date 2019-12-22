# 課題3レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．
閾値を4パターン設定し,閾値処理をした画像を示す．

## 原画像の表示

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，カラー画像を白黒濃淡画像へ変換し、表示した結果を図１に示す．

![kadai3_1](https://user-images.githubusercontent.com/50776559/71319959-42cd8800-24e8-11ea-8f51-457627c55e88.png)
図1 原画像を白黒濃淡画像に変換

## 輝度値が64以上の画素を1，その他を0に変換

```
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が64以上の画素を1，その他を0に変換）を作成し表示した。結果を図2に示す。

![kadai3_2](https://user-images.githubusercontent.com/50776559/71319960-43661e80-24e8-11ea-8684-3b5387cbf671.png)
図2 白黒濃淡画像（輝度値が64以上の画素を1，その他を0に変換）

## 輝度値が96以上の画素を1，その他を0に変換

```
IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が96以上の画素を1，その他を0に変換）を作成し表示した。結果を図3に示す。

![kadai3_3](https://user-images.githubusercontent.com/50776559/71319962-43661e80-24e8-11ea-994f-a5f531a420e5.png)
図3 白黒濃淡画像（輝度値が96以上の画素を1，その他を0に変換）

## 輝度値が128以上の画素を1，その他を0に変換

```
IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が128以上の画素を1，その他を0に変換）を作成し表示した。結果を図4に示す。

![kadai3_4](https://user-images.githubusercontent.com/50776559/71319964-43feb500-24e8-11ea-9353-ca19aa5c59b0.png)
図4 白黒濃淡画像（輝度値が128以上の画素を1，その他を0に変換）

## 輝度値が192以上の画素を1，その他を0に変換

```
IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar;
```

によって、白黒濃淡画像（輝度値が192以上の画素を1，その他を0に変換）を作成し表示した。結果を図5に示す。

![kadai3_5](https://user-images.githubusercontent.com/50776559/71319965-43feb500-24e8-11ea-9a5a-1e793f10df0b.png)
図5 白黒濃淡画像（輝度値が192以上の画素を1，その他を0に変換）
