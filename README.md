# freemarket_sample_41b
# DB設計

## user table
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|postal_code|int|null: false|
|prefecture|int|null: false| 多分enum
|city|string|null: false|
|address|string|null: false|
|building_name|string|null: false|
|phone_number|int|null: false|
|phone_number_confirmed|boolean|null: false, default: false|
|credit_card_num|int||
|password|string|null: false|
|email|string|null: false, unique: true |
|profile|text||
|icon_image|string||


### Association
 - has_many :items, through: :nices
 - has_many :items

## item table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|buyer_id|string||
|description|text||
|status|int||多分enum
|配送料の負担|int||多分enum
|発送元の地域|int||多分enum
|発送までの日数|int||多分enum
|price|int|null: false|

### Association
- belongs_to :category
- belongs_to :user
- belongs_to :brand
- has_many :users, through: :nices
- has_many :item_image

## item_image table
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|

### Association
- belongs_to :item


## nices table
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|item|references|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

## brands table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
 - has_many :item

## category table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|path_to_root|string|null: false|

### Association
 - has_many :item
