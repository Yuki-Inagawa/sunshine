# README

https://sunshine-inagawa.herokuapp.com/ 

*アプリ名

今日からお前もサンシャイン

＊概要

ワタナベエンターテイメント所属の人気お笑い芸人「サンシャイン池崎」さんのネタを自動で生成しするサービスです。
お名前や職業などをフォームに入力するだけで簡単にユーザーオリジナルのネタを生成することが出来ます。

また、ネタの詳細ページの読み上げボタンを押すと、生成したネタをお使いのデバイスから読み上げることも可能です。


*アプリ製作者の思い

芸人さんのネタをプログラムに落とし込んでみたい！
と思い作り始めました。

サンシャイン池崎さんのネタはとても完成度が高くシステム化されており、
ボケの部分を変数に置き換えることが可能でした。

ぜひ今日からサンシャインになって下さい！！

＊今後実装予定の機能

編集、削除

マイページ

ランキング

コメント

男性用ボイス、女性用ボイスの実装


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :ikezakis

## ikezakisテーブル
|Column|Type|Options|
|------|----|-------|
|name       |string|null: false|
|occupation |string|null: false|
|love       |string|null: false|
|birth1     |string|null: false|
|birth2     |string|null: false|
|birth3     |string|null: false|
|grand_prix |string|null: false|
|height     |integer|null: false|
|weight     |integer|null: false|
|salary     |integer|null: false|
|balance    |integer|null: false|
|password   |integer|null: false|
|tip        |string|null: false|

### Association
- belongs_to :user
