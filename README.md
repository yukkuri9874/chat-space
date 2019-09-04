# README

##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, index: true|
|email|text|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :groups, through: :groups_users
- has_many :messages
- has_many :groups_users

####groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

##### Association
- has_many :messages
- has_many :users, through: :groups_users
- has_many :groups_users


###### groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

####### Association
- belongs_to :group
- belongs_to :user


######## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|

######### Association
- belongs_to :user
- belongs_to :group




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
