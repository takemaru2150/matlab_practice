# 課題6レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図2に示す．

![kadai6_1](https://user-images.githubusercontent.com/50776559/71507555-47b78080-28c8-11ea-81ae-e63240e492de.png)

図2 原画像をグレースケールした画像

## 128による二値化

```
IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
```

によって、128による二値化した画像を作成し表示した。結果を図3に示す。

![kadai6_2](https://user-images.githubusercontent.com/50776559/71507556-47b78080-28c8-11ea-9af3-44acfdbf6729.png)

図3 128による二値化した画像

## ディザ法による二値化

```
IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
```

によって、ディザ法による二値化した画像を作成し表示した。結果を図4に示す。

![kadai6_3](https://user-images.githubusercontent.com/50776559/71507553-47b78080-28c8-11ea-9d53-cb7a0a676ffd.png)

図4 ディザ法による二値化

## 考察

制限された色数でそれ以上の色調を表現することから、これにより生じる疑似的な濃淡を疑似濃淡表示と呼び、他の方法としてアベレージディザリング、ランダムディザリングといったディザリングの方法が存在する。GIF画像などの少ない色数制限が存在するフォーマットへの変換の際に、オリジナルに忠実に変換する手法としてこうしたディザリングが有効であると考えられる。