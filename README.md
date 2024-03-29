# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email    | string |null: false,unique: true  |
| encrypted_password| string | null: false |
| username | string | null: false |
| profile  | string | null: false |


### Association

- has_many :items

## items テーブル

| Column    | Type       | Options     |
| ------    | ---------- | ----------- |
| title     | string     | null: false |
| body      | body       | null: false |
| user      | references | null:false, foreign_key: true |

- belongs_to :user

## favorites テーブル

| Column    | Type       | Options     |
| ------    | ---------- | ----------- |
| item      | references | null:false, foreign_key: true |
| user      | references | null:false, foreign_key: true |

- belongs_to :user
- belongs_to :item

# アプリケーション名
## KicksPics

# アプリケーションの概要
- ユーザー登録機能
- 写真投稿機能
- いいね機能

# URL
http://35.74.165.225:3000/

## テスト用アカウント
ID: ttt@ttt  password: ttt111

# 利用方法
## ユーザー登録機能
- 新規登録・ログインができる。
- ユーザーアイコンの設定は任意とする。
- ログインでしていないユーザーでも、アイテム一覧とユーザー一覧ページには遷移できる。
- ユーザー情報の編集と削除はマイページからできる。
## 写真投稿機能
- 写真とタイトルとテキストを投稿できる。
- テキストは空白でも投稿できる。
- 投稿詳細画面にて編集・削除ができる。
## いいね機能
- １つの投稿に1回のみいいね！を押す事ができる。

# 目指した課題解決
## 自分の好きな写真をジャンルで絞って投稿できる。

# 洗い出した要件

# 実装した機能について
- ユーザー登録機能
[![Image from Gyazo](https://i.gyazo.com/7c9aeeef96afe7369dd8e377c3bf9524.gif)](https://gyazo.com/7c9aeeef96afe7369dd8e377c3bf9524)

- 写真投稿機能
[![Image from Gyazo](https://i.gyazo.com/b80d257f125c33ef526af82690816134.gif)](https://gyazo.com/b80d257f125c33ef526af82690816134)

- 投稿編集・削除機能
[![Image from Gyazo](https://i.gyazo.com/c326e9156d5842169d43a34cb11840e9.gif)](https://gyazo.com/c326e9156d5842169d43a34cb11840e9)

- 投稿一覧表示機能
[![Image from Gyazo](https://i.gyazo.com/443da2bb180a6e7b950d5a16e03be655.gif)](https://gyazo.com/443da2bb180a6e7b950d5a16e03be655)

- 投稿詳細機能
[![Image from Gyazo](https://i.gyazo.com/5608d951cfebaf80c54b9133b24dc1a8.gif)](https://gyazo.com/5608d951cfebaf80c54b9133b24dc1a8)

- ユーザー一覧表示機能
[![Image from Gyazo](https://i.gyazo.com/6b79e11a3ef33915045c4d640da60844.gif)](https://gyazo.com/6b79e11a3ef33915045c4d640da60844)

- いいね機能
[![Image from Gyazo](https://i.gyazo.com/52c4dcd47738dc6fdfdaf63c45593b0f.gif)](https://gyazo.com/52c4dcd47738dc6fdfdaf63c45593b0f)

# 実装予定の機能
- 複数画像投稿機能
- コメント機能
- SNS認証機能

# データベース設計

# ローカルでの動作方法


