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
|gender     |char  |null: false|
|birth1     |string|null: false|
|birth2     |string|null: false|
|birth3     |string|null: false|
|grand_prix |string|null: false|
|height     |integer|null: false|
|weight     |integer|null: false|
|weight     |integer|null: false|
|salary     |integer|null: false|
|password   |integer|null: false|
|tip        |string|null: false|

### Association
- belongs_to :user
