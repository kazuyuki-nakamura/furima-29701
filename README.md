# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column            Type   | Options     | 
| --------------- | ------ | ----------- |
| nickname        | string | null: false |
| email           | string | null: false | 
| password        | string | null: false |
| first_name      | string | null: false |
| last_name       | string | null: false |
| first_name_kana | string | null: false |
| last_name_kana  | string | null: false |
| birth_day       |  date  | null: false |

### Association

has_many :products
has_many :purchases






## products テーブル

| Column             | Type       | Options                        |
| ------------------ | --------   | -------------------------------|                    
| user               | references | null: false, foreign_key: true |
| name               | string     | null: false                    |
| explanation        | text       | null: false                    |
| category_id        | integer    | null: false                    |
| condition_id       | integer    | null: false                    |
| sipping_cost_id    | integer    | null: false                    |
| prefecture_id      | integer    | null: false                    |
| sipping_days_id    | integer    | null: false                    |
| price              | integer    | null: false                    |


### Association

belongs_to :user 
has_one :purchases








## purchases テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| product | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association

has_one : sipping_address
belongs_to :products
belongs_to :user






## sipping_address テーブル

| Column        | Type       | Options                        |
| ------------- | --------   | ------------------------------ |
| post_code     | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city_name     | string     | null: false                    |
| address_name  | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| purchases     | references | null: false                    |

### Association

belongs_to :purchases