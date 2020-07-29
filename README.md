# README

## app name
アプリ名:  
努力可視化メーター

## overview
概要:  
毎日の努力を可視化することができるアプリ。

## production environment
本番環境:  
https://doryokame.herokuapp.com/  
表示されるまで時間がかかります。30秒ほどお見積もりいただけると幸いです。  

## production background
制作背景(意図):  
努力は時間で語るものではないと思いますが、少なくとも自分で自分を褒めることは必要だと思っていました。
普段見えない努力した時間を可視化することによって、努力を積み上げた実感を感じたり、モチベーションアップに繋がるようにしたかったので作成しました。

## DEMO
DEMO:  
 ![](https://i.gyazo.com/16155085885d7b6bda860c12301010de.png)
↑トップページになります。  
赤帯の歯車アイコンからマイページに移動します。  
画面中央部の新規成果入力ボタンから入力ページに移動します。  
吹き出しの編集・削除から編集ページ・削除ページに移動します。
![](https://i.gyazo.com/f576658136431a4497c7adf1b2de76af.png)
↑マイページになります。  
努力の積み立てが棒グラフとして表示されます。  
画面中央部の努力ポイントは積み立てた努力の時間です。（１ポイント=1時間）  
画面中央部のアイテム交換は努力ポイントをアイテムと交換するページに飛びます。【未実装】
![](https://i.gyazo.com/3281e1ead38bb17ee0ee6f074a001467.png)
↑新規成果入力ページになります。  
心技体として、努力の時間を入力します。（心：家事など、技：勉強など、体：運動など）

## points devised
工夫したポイント:  
グラフを表示するために「chart.js」というgemを導入しました

## technology used
使用技術(開発環境):  
vscode  
haml/scss  
javascript  
ruby on rails  

## issues and functions to be implemented in the future
課題や今後実装したい機能:  
ログイン・ログアウトを実装したい。  
ユーザーを複数登録できるようにしたい。  
努力の時間をポイントに変換（1時間=1ポイント）し、ポイントでアイテムなどを交換できるようにしたい。  
色々障害はあると思いますが、将来的にポイントで現実の買い物ができるようになれば努力する人が増えて、社会全体が良い方向に向かうのではないかと妄想しています。

## DB design
DB設計:  
## postsテーブル
|Column|Type|
|------|----|
|spirit|string|
|technique|string|
|body|string|

