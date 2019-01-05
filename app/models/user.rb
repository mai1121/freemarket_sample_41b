class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true
  validates :first_name_kana, :last_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/}
  validates :phone_number, presence: true, format: { with: /\A0[5789]0[-(]?\d{4}[-)]?\d{4}\z/}
  validates :nickname, presence: true
  validates :credit_card_num, presence: true, format: { with: /\A[0-9]+\z/}
  validates :credit_card_expiration_month, :credit_card_expiration_year, presence: true
  validates :password, confirmation: true, length: { minimum: 6 }, presence: true
  validates :email, uniqueness: true, presence: true

  #アソシエーションは各テーブル作成時に追加
end
