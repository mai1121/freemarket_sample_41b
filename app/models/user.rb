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


  def purchase(item,token)
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']

    @purchase = Payjp::Charge.create(currency: 'jpy', amount: item.price, card: token )
    item.update(buyer_id: id)
  end



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

  enum prefecture: { 北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47}



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
