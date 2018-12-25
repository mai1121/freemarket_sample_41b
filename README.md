# freemarket_sample_41b
# DB設計

## users table
|Column|Type|Options|excuse|
|------|----|-------|--------------------|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|nickname|string|null: false|
|postal_code|int|null: false|
|prefecture|int|null: false| 多分enum
|city|string|null: false|
|address|string|null: false|
|building_name|string||
|phone_number|int|null: false|
|phone_number_confirmed|boolean|null: false, default: false|
|credit_card_num|int||
|password|string|null: false|
|email|string|null: false, unique: true |
|profile|text||
|icon_image|string||


### Association
 - has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
 - has_many :saling_items, foreign_key: "saler_id", class_name: "Item"
 - has_many :likes
 - has_many :favorite_items, through: :likes, source: :item

## items table
|Column|Type|Options|excuse|
|------|----|-------|--------------------|
|name|string|null: false|
|description|text||
|size|int||多分enum
|status|int||多分enum
|delivery_fee_method|int||多分enum
|delivery_method|int||多分enum
|ships_from|int||多分enum
|days_to_ship|int||多分enum
|price|int|null: false|
|category|references|foreign_key: true|
|saler|references|foreign_key: true, class_name: "User"|
|buyer|references|foreign_key: true, class_name: "User"|
|brand|references|foreign_key: true|

### Association
- belongs_to :category
- belongs_to :saler_id, class_name: "User"
- belongs_to :buyer_id, class_name: "User"
- belongs_to :brand
- has_many :users, through: :likes
- has_many :item_images

## item_images table
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item|references|foreign_key: true|

### Association
- belongs_to :item


## likes table
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
 - has_many :items

## categories table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|path_to_root|string|null: false|

### Association
 - has_many :items
