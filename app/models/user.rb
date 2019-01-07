class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name,:prefecture, :city, :address, :birth_year,:birth_month, :birth_day, presence: true
  validates :first_name_kana, :last_name_kana, presence: true, format: { with: /\A[\p{katakana}]+\z/}
  validates :phone_number, presence: true, format: { with: /\A0[5789]0\d{8}\z/ }, length: { is: 11}
  validates :nickname, presence: true
  validates :credit_card_num, presence: true, format: { with: /\A[0-9]+\z/}
  validates :credit_card_expiration_month, :credit_card_expiration_year, presence: true, format: { with: /\A[0-9]{2}\z/}, length: { is: 2}
  validates :credit_card_security_num, presence: true, format: { with: /\A[0-9]+\z/}
  validates :postal_code, format: {with: /\A\d{7}\z/}, allow_blank: true, length: { is: 7}
  validates :password, confirmation: true, length: { minimum: 6 }, presence: true
  validates :email, uniqueness: true, presence: true



  enum status: { 北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47}

  #アソシエーションは各テーブル作成時に追加

end
