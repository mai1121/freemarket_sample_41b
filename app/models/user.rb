class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook google_oauth2]
  validates :first_name, :last_name,:prefecture, :city, :address, :birth_year,:birth_month, :birth_day, presence: true
  validates :first_name_kana, :last_name_kana, presence: true, format: { with: /\A[\p{katakana}]+\z/}
  validates :phone_number, presence: true, format: { with: /\A0[5789]0\d{8}\z/ }, length: { is: 11}
  validates :nickname, presence: true
  validates :credit_card_num, presence: true, format: { with: /\A[0-9]+\z/}
  validates :credit_card_expiration_month, :credit_card_expiration_year, presence: true, format: { with: /\A[0-9]{2}\z/}, length: { is: 2}
  validates :credit_card_security_num, presence: true, format: { with: /\A[0-9]+\z/}
  validates :postal_code, format: {with: /\A\d{7}\z/}, allow_blank: true, length: { is: 7}
  validates :password, confirmation: true, length: { minimum: 6 }, presence: true, on: :create
  validates :email, uniqueness: true, presence: true

  has_many :salling_items, class_name: "Item"
  has_many :bought_items, class_name: "Item"

  def self.find_for_omniauth(auth)
    user = User.where(email: auth.info.email, provider: auth.provider).first
    unless user
      user = User.new(nickname:auth.info.name,
                       provider: auth.provider,
                       uid:      auth.uid,
                       email:    auth.info.email,
                       password: Devise.friendly_token[0,20],)
    end
    user
  end


  enum prefecture:{
    hokkaido: 1, aomori: 2, iwate: 3, miyagi: 4, akita: 5, yamagata: 6, fukushima: 7, ibaraki: 8,
    tochigi: 9, gunnma: 10, saitama: 11, chiba: 12, tokyo: 13, kanagawa: 14, nigata: 15, toyama: 16,
    ishikawa: 17, fukui: 18, yamanashi: 19, nagano: 20, gifu: 21, sizuoka: 22, aichi: 23 ,mie: 24,
    shiga: 25, kyoto: 26 ,osaka: 27 , hyogo: 28 ,nara: 29 ,wakayama: 30 ,tottori: 31,shimane: 32,
    okayama: 33, hiroshima: 34, yamaguchi: 35 , tokushima: 36, kagawa: 37 ,ehime: 38 ,kochi: 39, fukuoka: 40,
    saga: 41,nagasaki: 42, kumamoto: 43, oita: 44, miyazaki: 45, kagoshima: 46, okinawa: 47
  }



  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end

end
