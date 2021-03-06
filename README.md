# README

## アプリ名:  
努力可視化メーター

## 概要:  
毎日の努力を可視化することができるアプリ。

## 本番環境:  
https://doryokame.herokuapp.com/  
表示されるまで時間がかかります。30秒ほどお見積もりいただけると幸いです。  
nickname: イチロー  
email: a@a.com  
password: 123456

## 制作背景(意図):  
努力は時間で語るものではないと思いますが、少なくとも自分で自分を褒めることは必要だと思っていました。
普段見えない努力した時間を可視化することによって、努力を積み上げた実感を感じたり、モチベーションアップに繋がるようにしたかったので作成しました。

## DEMO:  
 ![](https://i.gyazo.com/16155085885d7b6bda860c12301010de.png)
↑トップページになります。  
赤帯の歯車アイコンからマイページに移動できます。（ログインしている場合）  
画面中央部の新規成果入力ボタンから入力ページに移動します。  
吹き出しの編集・削除から編集ページ・削除ページに移動します。
![image](https://user-images.githubusercontent.com/66244738/89706245-cae09f00-d99e-11ea-8eb4-f697197a9c6f.png)
↑新規登録ページになります。  
![image](https://user-images.githubusercontent.com/66244738/89706451-ba312880-d9a0-11ea-8cca-68e23d2e2411.png)
↑ログインページになります。  
email: a@a.com  
password: 123456  
を入力してください。
![image](https://user-images.githubusercontent.com/66244738/89706486-257afa80-d9a1-11ea-97d7-e6b22e33d41b.png)
↑マイページになります。  
努力の積み立てが棒グラフとして表示されます。  
画面中央部の努力ポイントは積み立てた努力の時間です。（１ポイント=1時間）  
画面中央部のアイテムショップボタンを押すとアイテムを買えるページに移動します。
![image](https://user-images.githubusercontent.com/66244738/89706514-65da7880-d9a1-11ea-9a3b-c0c1daee3767.png)
↑アイテムショップページになります。  
努力ポイントが一定の値を超えるとアイテムが買えるようになります。（１００ポイント、２００ポイント、３００ポイント）    
![](https://i.gyazo.com/3281e1ead38bb17ee0ee6f074a001467.png)
↑新規成果入力ページになります。  
心技体として、努力の時間を入力します。（心：家事など、技：勉強など、体：運動など）

## 工夫したポイント:  
グラフを表示するために「chart.js」というgemを導入しました

## 使用技術(開発環境):  
vscode  
haml/scss  
javascript  
ruby on rails  

## 課題や今後実装したい機能:    
アイテムショップのアイテムを増やしたい。  
色々障害はあると思いますが、将来的にポイントで現実の買い物ができるようになれば努力する人が増えて、社会全体が良い方向に向かうのではないかと妄想しています。

## DB設計:  
### postsテーブル
|Column|Type|option|
|------|----|------|
|id|integer|null: false|
|spirit|string|null: false|
|technique|string|null: false|
|body|string|null: false|
|user_id|reference|null: false, foreign_key: true|
### association
belongs_to :user
### usersテーブル
|Column|Type|option|
|------|----|------|
|id|integer|null: false|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
### association
has_many :posts
has_many :items
# itemsテーブル
|Column|Type|option|
|------|----|------|
|id|integer|null: false|
|name|string|null: false|
|price|integer|null: false|
|explanation|string|null: false|
|status|integer|null: false|
|count|integer|null: false|
|user_id|reference|null: false, foreign_key: true|
### association
belongs_to :user

## 作者:  
twitter: https://twitter.com/XaIaQcuik2BbLGw
