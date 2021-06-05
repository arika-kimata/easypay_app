# テーブル設計

## userモデル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |

### Association
 - has_many :items
 - has_many :buys

## itemモデル
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| name                | string     | null: false                    |
| text                | string     | null: false                    |
| shipping_charges_id | integer    | null: false                    |
| prefectures_id      | integer    | null: false                    |
| shipping_date_id    | integer    | null: false                    |
| price               | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
 - belongs_to :user
 - has_one :buy

 ## buy テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
 - belongs_to :item
 - belongs_to :user
 - has_one :address
 
## address テーブル

| Column           | Type    | Options                            |
| ---------------- | ------- | ---------------------------------- |
| postcode         | string  | null: false                        |
| prefectures_id   | integer | null: false                        |
| municipality     | string  | null: false                        |
| address          | string  | null: false                        |
| building         | string  |                                    |
| phone_number     | string  | null: false                        |
| user_id          | string  | null: false, foreign_key: true     |

### Association
 - belongs_to :buy

## messageテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | nill:false                     |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
 - belongs_to :user
 - belongs_to :item