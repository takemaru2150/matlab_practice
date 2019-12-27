# 課題5レポート

標準画像「cat」を原画像とする．この画像は縦1066画像，横1066画素による正方形のディジタルカラー画像である．

## 原画像の表示

![cat](https://user-images.githubusercontent.com/50776559/71508485-49cf0e80-28cb-11ea-87fc-ca4bfb64c480.jpg)

図1 原画像

## 原画像をグレースケール

```
ORG=imread('img/cat.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
```

によって，原画像を読み込み、カラー画像を白黒濃淡画像へ変換し表示した結果を図2に示す．

![kadai5_1](https://user-images.githubusercontent.com/50776559/71503441-847b7b80-28b8-11ea-9d74-ee0d322aabff.png)

図2 原画像をグレースケールした画像

## 2階調画像の作成

```
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;
```

によって、判別分析法を用いて画像二値化した。
次に、

```
IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
```

によって、画像を表示した。結果を図3に示す。

![kadai5_2](https://user-images.githubusercontent.com/50776559/71503446-880f0280-28b8-11ea-89f0-25fb01986c36.png)

図3 二値化した画像

## 考察

クラス間分散が大きく、クラス内分散が小さいという条件の下に閾値を定めると255という値が必然的に求まる。そもそもこうした画像に対して判別分析法を用いる必要が全くないが、背景や対象物が複雑な模様や色であったりする場合の判別分析法の適用には注意が必要であると考えられる。
