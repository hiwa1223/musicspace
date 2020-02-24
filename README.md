# README

## Userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|name_kana|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|tel|integer|null: false|
|birthday|date|null: false|
|self-introduction|text||
### Association
- has_many :goods
  has_many :album
  has_many :musics
  has_many :comments

## Goodテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|music_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :music
  belongs_to :user

## Commentテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|music_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :music
  belongs_to :user
  has_many :good

## Musicテーブル
|Column|Type|Options|
|------|----|-------|
|music_title|string|null: false|
|music|string|null :false|
|album_id|string|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
  belongs_to :user
  belongs_to :album
  has_many :comments
  has_many :goods

## Albumテーブル
|Column|Type|Options|
|------|----|-------|
|album_title|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
  belongs_to :user
  has_many :album
  has_many :goods

## Imageテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|music_id|integer|null: false|
|album_id|integer|null: false|
### Association
  belongs_to :music
  belongs_to :album