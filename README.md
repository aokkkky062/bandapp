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