## アプリケーション名
BandApp

## アプリケーション概要


## URL
https://bandapp-62.herokuapp.com/

## テスト用アカウント
・Basic認証ID：aokkkky  
・Basic認証パスワード：aokkkky62  
・メールアドレス：test@com  
・パスワード：test123  

## 利用方法
# 練習報告投稿
1.トップページのヘッダーからユーザー新規登録を行う
2.ヘッダーの「練習報告」ボタンから、練習日を選択し、練習の内容（曲目、事務連絡、乾燥（任意））を入力し投稿する

# コメント機能
他人の報告内容についてコメントフォームからコメントをすることができる

## アプリケーションを作成した背景
練習した内容を手軽に振り返ることができる専用のサイトがあれば、誰でも手軽に復習ができる。練習を休んだ人も各自で練習の内容を把握することができる。

# 洗い出した要件
要件定義シート
https://docs.google.com/spreadsheets/d/1Sl9qy5ZAm2Ne_dxD9ttGRT_tvT0v0262p4tQGNAZGQs/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明


# 実装予定の機能
・忘れ物を写真で投稿おできる機能
・やりたい曲などについてのアンケート機能

# データベース設計


# 画面遷移図


# 開発環境
・HTML＆CSS
・Ruby、Ruby on Rails, JavaScript
・MySQL2
・VSCode

# ローカルでの作業方法


# 工夫したポイント





## users テーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :posts 
- has_many :comments


## posts テーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| date               | date       | null: false                    |
| program            | text       | null: false                    |
| information        | text       | null: false                    |
| feedback           | text       |                                |
| user_id            | references | null: false, foreign_key: true |

### Association
- belongs_to :user 
- has_many :comments


## comments テーブル

| Column   | Type    | Options |
|----------|---------|---------|
| text     | text    |         |
| user_id  | integer |         |
| post_id  | integer |         |

### Association
- belongs_to :user 
- belongs_to :post 