require 'rails_helper'

describe User do
  describe '#create' do

    it "is valid with all contents" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is valid without a profile, icon_image,postal_code, building_name, uid, provider" do
      user = build(:user, profile: "", icon_image: "", postal_code:"", building_name: "", uid:"", provider:"")
      expect(user).to be_valid
    end

    it "is invalid without a emali" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "is invalid without a password_confirmation although with a password" do
     user = build(:user, password_confirmation: "")
     user.valid?
     expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end


    it "is invalid without a first_name" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("を入力してください")
    end

    it "is invalid without a last_name" do
      user = build(:user, last_name: "")
      user.valid?
      expect(user.errors[:last_name]).to include("を入力してください")
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("を入力してください")
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, last_name_kana: "")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("を入力してください")
    end

    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "")
      user.valid?
      expect(user.errors[:phone_number]).to include("を入力してください")
    end

    it "is invalid without a credit_card_num" do
      user = build(:user, credit_card_num: "")
      user.valid?
      expect(user.errors[:credit_card_num]).to include("を入力してください")
    end

    it "is invalid without a credit_card_expiration_month" do
      user = build(:user, credit_card_expiration_month: "")
      user.valid?
      expect(user.errors[:credit_card_expiration_month]).to include("を入力してください")
    end

    it "is invalid without a credit_card_expiration_year" do
      user = build(:user, credit_card_expiration_year: "")
      user.valid?
      expect(user.errors[:credit_card_expiration_year]).to include("を入力してください")
    end

    it "is invalid without a credit_card_security_num" do
      user = build(:user, credit_card_security_num: "")
      user.valid?
      expect(user.errors[:credit_card_security_num]).to include("を入力してください")
    end

    it "is invalid without a prefecture" do
      user = build(:user, prefecture: "")
      user.valid?
      expect(user.errors[:prefecture]).to include("を入力してください")
    end

    it "is invalid without a city" do
      user = build(:user, city: "")
      user.valid?
      expect(user.errors[:city]).to include("を入力してください")
    end

    it "is invalid without a address" do
      user = build(:user, address: "")
      user.valid?
      expect(user.errors[:address]).to include("を入力してください")
    end

    it "is invalid without a birth_year" do
      user = build(:user, birth_year: "")
      user.valid?
      expect(user.errors[:birth_year]).to include("を入力してください")
    end

    it "is invalid without a birth_month" do
      user = build(:user, birth_month: "")
      user.valid?
      expect(user.errors[:birth_month]).to include("を入力してください")
    end

    it "is invalid without a birth_day" do
      user = build(:user, birth_day: "")
      user.valid?
      expect(user.errors[:birth_day]).to include("を入力してください")
    end

    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password][0]).to include("は6文字以上で入力してください")
    end

    it "is valid with a password that has more than 6 characters " do
      user = build(:user, password: "000000", password_confirmation:"000000")
      expect(user).to be_valid
    end

    it "is invalid with a phone_number that has less than 10 characters " do
      user = build(:user, phone_number: "0901111222")
      user.valid?
      expect(user.errors[:phone_number][1]).to include("は11文字で入力してください")
    end

    it "is invalid with a phone_number that has more than 11 characters " do
      user = build(:user, phone_number: "090111122223")
      user.valid?
      expect(user.errors[:phone_number][1]).to include("は11文字で入力してください")
    end

    it "is invalid with a credit_card_expiration_month that has less than 2 characters " do
      user = build(:user, credit_card_expiration_month: "1")
      user.valid?
      expect(user.errors[:credit_card_expiration_month][1]).to include("は2文字で入力してください")
    end

    it "is invalid with a credit_card_expiration_month that has more than 3 characters " do
      user = build(:user, credit_card_expiration_month: "111")
      user.valid?
      expect(user.errors[:credit_card_expiration_month][1]).to include("は2文字で入力してください")
    end

    it "is invalid with a credit_card_expiration_year that has less than 2 characters " do
      user = build(:user, credit_card_expiration_year: "1")
      user.valid?
      expect(user.errors[:credit_card_expiration_year][1]).to include("は2文字で入力してください")
    end

    it "is invalid with a credit_card_expiration_year that has more than 3 characters " do
      user = build(:user, credit_card_expiration_year: "111")
      user.valid?
      expect(user.errors[:credit_card_expiration_year][1]).to include("は2文字で入力してください")
    end

    it "is invalid with a postal_code that has less than 6 characters " do
      user = build(:user, postal_code: "000000")
      user.valid?
      expect(user.errors[:postal_code][1]).to include("は7文字で入力してください")
    end

    it "is invalid with a postal_code that has more than 8 characters " do
      user = build(:user, postal_code: "00000000")
      user.valid?
      expect(user.errors[:postal_code][1]).to include("は7文字で入力してください")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "is invalid with a first_name_kana that is not katakana" do
      user = build(:user, first_name_kana: "あああ")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("は不正な値です")
    end

    it "is invalid with a first_name_kana that is not katakana" do
      user = build(:user, first_name_kana: "亜亜亜")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("は不正な値です")
    end

    it "is invalid with a last_name_kana that is not katakana" do
      user = build(:user, last_name_kana: "あああ")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("は不正な値です")
    end

    it "is invalid with a last_name_kana that is not katakana" do
      user = build(:user, last_name_kana: "亜亜亜")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("は不正な値です")
    end

    it "is invalid with a phone_number that starts not 0" do
      user = build(:user, phone_number: "19000000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("は不正な値です")
    end
  end
end
