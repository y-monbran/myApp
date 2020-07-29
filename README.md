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
表示されるまで時間がかかります。30秒ほど見積もっていだだきたく存じます。

## production background
制作背景(意図):
努力した時間を可視化することによって、モチベーションアップに繋がるようにしたかったので作成しました。

## DEMO
DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます):
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。

## points devised
工夫したポイント:
グラフを表示するために「chart.js」というgemを導入しました

## technology used
使用技術(開発環境):
vscode
haml/scss
ruby on rails

## issues and functions to be implemented in the future
課題や今後実装したい機能:
ユーザーを複数登録できるようにしたい。
努力の時間をポイントに変換（1時間=1ポイント）し、ポイントでアイテムなどを交換できるようにしたい。
色々障害はあると思いますが、将来的にポイントで現実の買い物ができルようになれば努力する人が増えて、社会全体が良い方向に向かうのではないかと妄想しています。

## DB design
DB設計:
## postsテーブル
|Column|Type|
|------|----|
|spirit|string|
|technique|string|
|body|string|

