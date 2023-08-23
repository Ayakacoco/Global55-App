# テーブル設計

## users テーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| occupation         | string  | null: false               |
| prefecture_id      | integer | null: false               |
| age                | integer | null: false               |

### Association
- has_one :profile
- has_many :tweets
- has_many :bookings
- has_many :diagnoses


## mypages テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| introduction       | text   | null: false               |
| user      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :tweets
- has_many :bookings
- has_many :diagnoses


## tweets テーブル
| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| title          | string     | null: false                    |
| comment        | text       | null: false                    |

### Association
- belongs_to :user
- belongs_to :profile


## bookings テーブル
| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| profile        | references | null: false, foreign_key: true |
| booking_date   | date       | null: false                    |
| message        | text       | null: false                    |

### Association
- belongs_to :user
- belongs_to :profile


## diagnoses テーブル
| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| result         | text       | null: false                    |

### Association
- belongs_to :user
- belongs_to :profile
