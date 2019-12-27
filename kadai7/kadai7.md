# 課題7レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG = imread('img/cat.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって，原画像を読み込み，色をグレーにし、表示した結果を図2に示す．

![kadai7_1](https://user-images.githubusercontent.com/50776559/71507805-1d19f780-28c9-11ea-9573-5af017afd928.png)

図2 原画像をグレースケールした画像

## 濃度ヒストグラムを生成

```
imhist(ORG); % 濃度ヒストグラムを生成、表示
```

によって、濃度ヒストグラムを生成し表示した。結果を図3に示す。

![kadai7_2](https://user-images.githubusercontent.com/50776559/71507806-1db28e00-28c9-11ea-8d83-1fc66d7a2a5e.png)

図3 濃度ヒストグラム

## 濃度値の最小値を算出 濃度値の最大値を算出

```
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
```

によって、濃度値の最小値を算出と濃度値の最大値を算出し作成した画像を表示した。結果を図4に示す。

![kadai7_3](https://user-images.githubusercontent.com/50776559/71507808-1db28e00-28c9-11ea-9447-eecbb249f854.png)

図4 濃度値の最小値を算出 濃度値の最大値を算出

## 濃度ヒストグラムの表示

```
ORG = uint8(ORG);
imhist(ORG); % 濃度ヒストグラムを生成、表示
```

によって、濃度ヒストグラムを作成し表示した。結果を図5に示す。

![kadai7_4](https://user-images.githubusercontent.com/50776559/71507804-1d19f780-28c9-11ea-9dbe-de343d2cd00e.png)

図5 濃度ヒストグラムの作成

## 考察

ダイナミックレンジを拡大することで限定的であった濃度値の幅を拡大し、より広い濃度値で画像を表現できるようになることが分かる。本課題では絵画を用いてテストを行ったが、必ずしもダイナミックレンジを拡大することで良い表現となっているとは限らないと考えられる。写真を撮る際でもダイナミックレンジを拡大することで細部の表現がより改善されることが想定されるが、同時にコントラストは低下するためメリハリのない写真となる可能性があると考えられる。