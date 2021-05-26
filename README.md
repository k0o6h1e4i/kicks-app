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