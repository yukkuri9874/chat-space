# README

##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|email|text|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :groups, through: :groups_users
- has_many :messages

####groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
|group_users_id|integer|null: false, foreign_key: true|
|messages_id|integer|null: false, foreign_key: true|

##### Association
- has_many :messages
- has_many :users, through: :groups_users


###### groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

####### Association
- belongs_to :group
- belongs_to :user


######## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

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
